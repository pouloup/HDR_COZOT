#include <vector>
#include <iostream>
#include <fstream>

#include <opencv2/photo.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

#include "exif.h"

using namespace cv;
using namespace std;

void load_im_expo(vector<Mat>& images, vector<float>& times){

    String path = std::string("../");
    ifstream list_file((path + "list_photos.txt").c_str());
	
    string name;
    
	while(list_file >> name) {
        Mat img = imread(path + name);
        images.push_back(img);
    
        cout << path+name+" loaded, ";
    
        FILE *fp = fopen(std::string(path+name).c_str(), "rb");
        if (!fp) { 
            printf("Can't open file.\n"); 
            return ; 
        }
        
        fseek(fp, 0, SEEK_END);
        unsigned long fsize = ftell(fp);
        rewind(fp);
        unsigned char *buf = new unsigned char[fsize];
        
        if (fread(buf, 1, fsize, fp) != fsize) {
            printf("Can't read file.\n");
            delete[] buf;
            return ;
        }
        
        fclose(fp);
        
        easyexif::EXIFInfo result;
        result.parseFrom(buf, fsize);
        times.push_back(result.ExposureTime);
        
        cout << "exposure time : " << result.ExposureTime << "s." << endl;
        
        delete[] buf;
    }
    
	list_file.close();
    
    if(images.empty() || times.empty())
        cerr << "Loading failure" << endl;    
}

void estimate_camera_response(Mat& response, vector<Mat>& images, vector<float>& times){
    
    Ptr<CalibrateDebevec> calibrate = createCalibrateDebevec();
    calibrate->process(images, response, times);
}

void construct_hdr(Mat& hdr, Mat& response, vector<Mat>& images, vector<float>& times){
    
    Ptr<MergeDebevec> merge_debevec = createMergeDebevec();
    merge_debevec->process(images, hdr, times, response);
}

void construct_tonemap(Mat& ldr, Mat& hdr){
    
    Ptr<TonemapDurand> tonemap = createTonemapDurand(2.2f);
    tonemap->process(hdr, ldr);
}

void construct_fusion(Mat& fusion, vector<Mat>& images){

    Ptr<MergeMertens> merge_mertens = createMergeMertens();
    merge_mertens->process(images, fusion);
}

int main(int, char**argv){
    
    vector<Mat> images;
    vector<float> times;
    Mat response, hdr, ldr, fusion;
    
    load_im_expo(images, times);
    estimate_camera_response(response, images, times);
    construct_hdr(hdr, response, images, times);
    construct_tonemap(ldr, hdr);
    construct_fusion(fusion, images);
    
    imwrite("fusion.png", fusion * 255);
    cout << "fusion write success." << endl;
    imwrite("ldr.png", ldr * 255);
    cout << "ldr write success." << endl;
    imwrite("hdr.hdr", hdr);
    cout << "hdr write success." << endl;
	
    return 0;
}