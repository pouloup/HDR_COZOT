#include <vector>
#include <iostream>
#include <fstream>

#include <opencv2/photo.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

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
    float val;
    
	while(list_file >> name >> val) {
        Mat img = imread(path + name);
        images.push_back(img);
        times.push_back(1 / val);
    }
    
	list_file.close();
    
    if(images.empty())
        cerr << "Loading failure" << endl;
//    else{
//        namedWindow( "Display window", WINDOW_AUTOSIZE );// Create a window for display.
//        imshow( "Display window", images[0] );
//        waitKey(0); 
//    }
    
    /*
     * END PART 1
     */
}