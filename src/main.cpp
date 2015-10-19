#include <vector>
#include <iostream>
#include <fstream>

#include <opencv2/photo.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

#include "exif.h"

using namespace cv;
using namespace std;

int main(int, char**argv){
    
    /*
     * PART 1 : Load Images
     * Pictures (.png) & Exposure time
     */
	vector<Mat> images;
    vector<float> times;
    
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
            return -1; 
        }
        
        fseek(fp, 0, SEEK_END);
        unsigned long fsize = ftell(fp);
        rewind(fp);
        unsigned char *buf = new unsigned char[fsize];
        
        if (fread(buf, 1, fsize, fp) != fsize) {
            printf("Can't read file.\n");
            delete[] buf;
            return -2;
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
    
    /*
     * END PART 1
     */
	
    return 0;
}