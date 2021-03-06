#include "CommonCurveWithPlotRange.h"

namespace nV {
	namespace Graphics {
		CommonCurveWithPlotRange::CommonCurveWithPlotRange(F1P *f1, double xmin, double xmax, double ymin, double ymax) {
			f = f1;
			this->xmin = xmin;
			this->xmax = xmax;
			this->ymin = ymin;
			this->ymax = ymax;
			spx = xmax - xmin;
			spy = ymax - ymin;
			makePoints();
		}

		CommonCurveWithPlotRange::CommonCurveWithPlotRange(F1P *f1, double xmin, double xmax, double ymin, double ymax, F1P *cf1) {
			f = f1;
			this->xmin = xmin;
			this->xmax = xmax;
			this->ymin = ymin;
			this->ymax = ymax;
			spx = xmax - xmin;
			spy = ymax - ymin;
			makePoints();
			isColorfulCurve = true;
			cf = cf1;
			useColorFunction();
		}

		CommonCurveWithPlotRange::CommonCurveWithPlotRange(F1P *f1, double xmin, double xmax) {
			f = f1;
			this->xmin = xmin;
			this->xmax = xmax;
			spx = xmax - xmin;
			makePlotRange();
			makePoints();
		}

		CommonCurveWithPlotRange::CommonCurveWithPlotRange(F1P *f1, double xmin, double xmax, F1P *cf1) {
			f = f1;
			this->xmin = xmin;
			this->xmax = xmax;
			spx = xmax - xmin;
			makePlotRange();
			makePoints();
			isColorfulCurve = true;
			cf = cf1;
			useColorFunction();
		}

        CommonCurveWithPlotRange::CommonCurveWithPlotRange(F1P *f1, double xmin, double xmax, double ymin, double ymax, 
            std::vector<singularitynode *> singularityset) {
                f = f1;
                this->xmin = xmin;
                this->xmax = xmax;
                this->ymin = ymin;
                this->ymax = ymax;
                spx = xmax - xmin;
                spy = ymax - ymin;
                this->singularity = true;
                this->singularityset = singularityset;

                makePoints();
        }

         CommonCurveWithPlotRange::CommonCurveWithPlotRange(F1P *f1, double xmin, double xmax, double ymin,
            double ymax, std::vector<singularitynode *> singularityset, F1P *cf1) {
                f = f1;
                this->xmin = xmin;
                this->xmax = xmax;
                this->ymin = ymin;
                this->ymax = ymax;
                spx = xmax - xmin;
                spy = ymax - ymin;
                this->singularity = true;
                this->singularityset = singularityset;
                makePoints();
                isColorfulCurve = true;
                cf = cf1;
                useColorFunction();

        }

		CommonCurveWithPlotRange::~CommonCurveWithPlotRange() {
		}

		void CommonCurveWithPlotRange::makePoints() {
			dataNum = getBaseNum();
			double *x = new double[dataNum];
			double *y = new double[dataNum];
			for (int z = 0; z < dataNum; z++) {
				x[z] = xmin + (xmax - xmin) * z / (dataNum - 1);
			}
			f->getArrayData(x, y, dataNum);
			LineStrip* lineStrip;
			//add the first in-range point
			int i = 0;
			while (((y[i] < ymin) || (y[i] > ymax) || isNaN(y[i])) && i < dataNum)
				i++;
            if (i == dataNum) {
                return;
            }
			lineStrip = new LineStrip;
			lineStrips.add(lineStrip);
			if (i == 0) {
				lineStrip->vert.add(new Point2d(x[i], y[i]));
			} else { //xmin point was excluded
				double newx = getPointOnRangeFromLeft(x[i-1], x[i], 1);
				double newy = f->getSingleData(newx);
				lineStrip->vert.add(new Point2d(newx, newy));
				lineStrip->vert.add(new Point2d(x[i], y[i]));
			}
			i++;
			int state = 0;
			while (i < dataNum) {
				if ((y[i] > ymin) && (y[i] < ymax) && !isNaN(y[i])) {
					if (state == 0) {
						//line strip still going
						lineStrip->vert.add(new Point2d(x[i], y[i]));
					} else {
						//make a new line strip
						lineStrip = new LineStrip;
						lineStrips.add(lineStrip);
						double newx = getPointOnRangeFromLeft(x[i-1], x[i], 1);
						double newy = f->getSingleData(newx);
						lineStrip->vert.add(new Point2d(newx, newy));
						lineStrip->vert.add(new Point2d(x[i], y[i]));
						state = 0;
					}
				} else {
					if (state == 0) {
						//a line strip ends
						double newx = getPointOnRangeFromRight(x[i-1], x[i], 1);
						double newy = f->getSingleData(newx);
						lineStrip->vert.add(new Point2d(newx, newy));
						state = 1;
					} else {
						//do nothing
					}
				}
				i++;
			}
			delete []x;
			delete []y;
			spx = xmax - xmin;
			spy = ymax - ymin;
			graphScale = spy / spx;
			dx = spx / LARGE;
			for (unsigned int i = 0; i < lineStrips.size(); i++)
				addVerts(lineStrips[i]);
		}

		double CommonCurveWithPlotRange::getPointOnRangeFromLeft(double x1, double x2, int depth) {
			if (depth > MAX_GET_POINT_ON_RANGE_DEPTH)
				return x2;
			double x = (x1 + x2) / 2;
			double y = f->getSingleData(x);
			if (y < ymin || y > ymax || isNaN(y))
				return getPointOnRangeFromLeft(x, x2, depth + 1);
			else
				return getPointOnRangeFromLeft(x1, x, depth + 1);
		}

		double CommonCurveWithPlotRange::getPointOnRangeFromRight(double x1, double x2, int depth) {
			if (depth > MAX_GET_POINT_ON_RANGE_DEPTH)
				return x1;
			double x = (x1 + x2) / 2;
			double y = f->getSingleData(x);
			if (y < ymin || y > ymax || isNaN(y))
				return getPointOnRangeFromRight(x1, x, depth + 1);
			else
				return getPointOnRangeFromRight(x, x2, depth + 1);
		}

		int CommonCurveWithPlotRange::getBaseNum() {
			//return 54; //54-1 is a prime number
            //return 150;
            if(xmax - xmin <= 10) {
                return 55;
            } else {
                return (xmax - xmin) * 5;
            }
		}

		void CommonCurveWithPlotRange::makePlotRange() {
			int bigDataNum = 500;
			double *x = new double[bigDataNum];
			double *y = new double[bigDataNum];
			for (int i = 0; i < bigDataNum; i++) {
				x[i] = xmin + (xmax - xmin) * i / (bigDataNum - 1);
			}
			f->getArrayData(x, y, bigDataNum);
			ArrayList<Point2d*> vert;
			ArrayList<double> d;
			for (int i = 0; i < bigDataNum; i++) {
				vert.add(new Point2d(x[i], y[i]));
			}
			delete x;
			delete y;
			ymin = vert[0]->y;
			ymax = vert[0]->y;
			for (uint i = 0; i < vert.size(); i++) {
				if (vert[i]->y > ymax) ymax = vert[i]->y;
				if (vert[i]->y < ymin) ymin = vert[i]->y;
			}
			spx = xmax - xmin;
			spy = ymax - ymin;
			graphScale = spy / spx;
            if(graphScale > MAX_GRAPHSCALE) {
                double y_temp = (ymax + ymin) / 2.0;
                spy = MAX_GRAPHSCALE * spx;
                ymax = y_temp + std::abs(spy / 2);
                ymin = y_temp - std::abs(spy / 2);
            } else if(graphScale < MIN_GRAPHSCALE) {
                double y_temp = (ymax + ymin) / 2.0;
                spy = MIN_GRAPHSCALE * spx;
                ymax = y_temp + std::abs(spy / 2);
                ymin = y_temp - std::abs(spy / 2);
            }
		}
	}
}