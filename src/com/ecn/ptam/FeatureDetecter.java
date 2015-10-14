package com.ecn.ptam;

import java.io.File;
import java.io.FileOutputStream;

import org.opencv.core.CvType;
import org.opencv.core.Mat;

import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;

public class FeatureDetecter {

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
	
	public FeatureDetecter(byte[] frame){
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
	
	public void Detecting(){
		mYuv = new Mat(480+480/2,640,CvType.CV_8UC1);
		/*
		 * 
		 */
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
				int flag = 2;//flag应该在这里重置吧
				
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
