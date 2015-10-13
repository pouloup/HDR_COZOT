#include <gsolve.h>
#inclde <opencv/opencv2>

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

void gsolve(cv::Mat& Z, double l, double *g, double *lE){
	int n = 256;
	int height = Z.height, width = Z.width;
	cv::Mat A(height*width+n+1,n+height);
	cv::Mat b(A.height,1);
	
	int k = 1;
	for(int i = 0; i < height; ++i)
		for(int i = 0; i < width; ++i){
			int wij = w(Z(i,j)+1);
			
			A(k, Z(i,j)+1) = wij;
			A(k, n+i) = -wij;
			b(k,1) = wij * B(i,j);
			++k;
		}
		
	A(k,129) = 1;
	++k;
	
	for(int i = 0; i < n - 2; ++i){
		A(k,i) = l * w(i+1);
		A(k,i+1) = -2 * l * w(i+1);
		A(k,i+2) = l * w(i+1);
		++k;
	}
	
	cv::Mat x = A\b; //SVD
	
	g = x.rows(0);
	lE = x.submat(n+1,x.width);
}