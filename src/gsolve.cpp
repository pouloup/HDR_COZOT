#include <opencv2/core/core.hpp>
#include <iostream>

int Zmin = 0;
int Zmax = 255;

/*
* Z : valeur du pixel i correspondant dans l'image j;
* B : log shutter speed de l'image j;
* l : lambda, constante qui détermine l'onctuosité de la courbe;
* w() : fonction d'influence pour le pixel de valeur val;
* g : log de l'exposition correspondant au pixel de valeur val;
* lE : log film irradiance au pixel de location i.
*/

double w(int val){

}

double B(int val, int valBizarre){

}

void gsolve(cv::Mat& Z, double l, double *g, double *lE){
	int n = 256;
	int height = Z.rows, width = Z.cols;
	cv::Mat A(height*width + n + 1, n + height, CV_8UC4);
	cv::Mat b(A.rows, 1, CV_8UC1);

	int k = 1;
	for (int i = 0; i < height; ++i)
		for (int i = 0; i < width; ++i){
		int wij = w( Z.at(i, j) + 1 );

		A.at(k, Z.at(i, j) + 1) = wij;
		A.at(k, n + i) = -wij;
		b.at(k, 1) = wij * B(i, j);
		++k;
		}

	A.at(k, 129) = 1;
	++k;

	for (int i = 0; i < n - 2; ++i){
		A.at(k, i) = l * w(i + 1);
		A.at(k, i + 1) = -2 * l * w(i + 1);
		A.at(k, i + 2) = l * w(i + 1);
		++k;
	}

	cv::SVD x = cv::SVD(A, 0); //SVD A\b

	g = x.rows(0);
	lE = x(n + 1, x.cols);
}