package com.ecn.ptam;

import java.util.ArrayList;
import java.util.List;

import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.MatOfPoint;
import org.opencv.core.Scalar;
import org.opencv.highgui.Highgui;
import org.opencv.imgproc.Imgproc;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.view.SurfaceHolder;

import com.ecn.ptam.DrawPositions;

public class FeatureDetection1 implements Runnable{
	
	byte[] _frame = null;
	Mat mYuv = null;
	Mat mRgba = null;
	Mat bm_dst = null;
	Mat new_bm = null;
	int returnNum;
	int[][] midPoints;
	float[] distance;
	float[] rate;
	int[] result;
	SurfaceHolder sh;
	
	double[][] mapDistance = {
			{0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,2.3088448,0,1.4508718,2.7697058},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0},
			{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1}
	};//这里的数据不是很准确。
	
	public FeatureDetection1(byte[] frame,SurfaceHolder holder){
		sh = holder;
		
		_frame = frame;
		mYuv = new Mat();
		mRgba = new Mat();
		bm_dst = new Mat();
		new_bm = new Mat();
		
		returnNum = 0;
		midPoints = new int[19][2];
		distance = new float[20];
		rate = new float[20];
		result = new int[19];
		
	}

	@Override
	public void run() {
		//convert frame to rgb
		mYuv = new Mat(480+480/2,640,CvType.CV_8UC1);
		mYuv.put(0, 0, _frame);
		Imgproc.cvtColor(mYuv, mRgba, Imgproc.COLOR_YUV2BGR_NV21, 4);
		//
		Imgproc.cvtColor(mRgba, new_bm, Imgproc.COLOR_BGR2GRAY);
		Imgproc.cvtColor(mRgba,bm_dst,Imgproc.COLOR_BGR2HSV_FULL);
		Core.inRange(bm_dst, new Scalar(35,43,46), new Scalar(77,255,255), bm_dst);
		
		Imgproc.erode(bm_dst, bm_dst, Imgproc.getStructuringElement(Imgproc.MORPH_RECT, new org.opencv.core.Size(8,8)));
		//这里的a_result_two.jpg是形态学处理之后的圆角矩形。
//		Highgui.imwrite("/storage/external_SD/images/a_result_two.jpg", bm_dst);
		List<MatOfPoint> contours = new ArrayList<MatOfPoint>();
		Imgproc.findContours(bm_dst, contours, new Mat(), Imgproc.RETR_EXTERNAL, Imgproc.CHAIN_APPROX_SIMPLE);

		int first_x=0, first_y=0;
		int left = 0, right = 0, top = 0, bottom = 0;
		for(int i=0;i<contours.size();i++){
			double area = Imgproc.contourArea(contours.get(i));
			if(area>900){
				System.out.println("轮廓面积："+area);
				org.opencv.core.Rect rect = Imgproc.boundingRect(contours.get(i));
				int c_width = (rect.x+(rect.width/2));
				int c_height = (rect.y+(rect.height/2));
				
				System.out.println("矩形中心点坐标："+c_width+" , "+c_height);
				midPoints[returnNum][0] = c_width;
				midPoints[returnNum][1] = c_height;
				if(returnNum == 0){
					
					left = c_width;
					right = c_width;
					top = c_height;
					bottom = c_height;
					
					distance[returnNum] = 0;
					first_x = c_width;
					first_y = c_height;
					rate[returnNum] = 0;
					
//					System.out.println("两点距离："+distance[count]);
//					System.out.println("两点距离的比例："+rate[count]);
				}else{
					
					if(returnNum == 1){
					
						if(left>=c_width)
							left = c_width;
						if(right<=c_width)
							right = c_width;
						if(top<=c_height)
							top = c_height;
						if(bottom>=c_height)
							bottom = c_height;
					}
					
					distance[returnNum] = (c_width-first_x)*(c_width-first_x)+(c_height-first_y)*(c_height-first_y);
					
					if(returnNum == 1){
						rate[returnNum] = (float) 1.0;
					}
					else{
						rate[returnNum] = distance[returnNum]/distance[1];
					}
				}
				++returnNum;
			}
		}
		result = findTheSame(rate);
		
		for(int i=0;i<returnNum;i++){
			System.out.println("匹配到的点："+result[i]);
			switch(result[i]){
			case 12:
				System.out.println("当前建筑： 演武场");
				break;
			case 13:
				System.out.println("当前建筑： 嘉庚铜像");
				break;
			case 15:
				System.out.println("当前建筑： 游泳馆");
				break;
			case 17:
				System.out.println("当前建筑： 体育馆");
				break;
			case 18:
				System.out.println("当前建筑： 西校门");
				break;
			default:
				System.out.println("当前建筑：无");
				break;
			}
		}
		
		Canvas canvas = sh.lockCanvas();
		canvas.drawColor(Color.TRANSPARENT);
		Paint p = new Paint();
		p.setAntiAlias(true);
		p.setColor(Color.MAGENTA);
		p.setStyle(Style.FILL_AND_STROKE);
		for(int i=0;i<midPoints.length;++i){
			if(midPoints[i][0] != 0){
				canvas.drawCircle((float) (480 - midPoints[i][1]), midPoints[i][0], 20, p);
			}
		}
		sh.unlockCanvasAndPost(canvas);
		
	}
	
	int[] findTheSame(float[] rate){
		int[] returnId = new int[19];
		for(int i=0;i<returnId.length;i++)
			returnId[i] = 0;
		
		//遍历矩阵的第i行
		for(int i=0;i<18;i++){
			//设第i行的第j个元素为单位1
			for(int j=i+1;j<19;j++){
				
				returnId[0] = j-1;
				returnId[1] = j;//这里return的id是从1开始计算的
				int flag = 2;//flag应该在这里重置吧？
				
				if(mapDistance[i][j]==0)
					continue;
				
				//从第k个开始匹配
				for(int k=j+1;k<19;k++){
					float ratio = (float) (mapDistance[i][k]/mapDistance[i][j]);
					//找到相同比例
					if(approximate(ratio, rate[flag])&&(flag<returnNum)){
						//匹配成功，则结束算法
						if(flag == returnNum-1){
							returnId[flag] = k;
							return returnId;
						}
						//比例匹配
						returnId[flag] = k;
						++flag;
					}
				}
			}
		}
		
		return returnId;
	}
	
	boolean approximate(float a, float b){
		if(Math.abs(a-b)<1.0)
			return true;
		else
			return false;
	}
	
}
