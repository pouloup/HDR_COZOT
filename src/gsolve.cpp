#include <gsolve.h>
#inclde <opencv/opencv2>

int Zmin = 0;
int Zmax = 255;

/*
 * Z() : valeur du pixel i correspondant dans l'image j;
 * B : log shutter speed de l'image j;
 * l : lambda, constante qui détermine l'onctuosité de la courbe;
 * w() : fonction d'influence pour le pixel de valeur val;
 * g : log de l'exposition correspondant au pixel de valeur val;
 * lE : log film irradiance au pixel de location i.
 */

void gsolve(int Z(int i, int j), double B, double l, double w(int val), double *g, double *lE){
	int n = 256;
	
}