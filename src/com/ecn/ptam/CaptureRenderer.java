package com.ecn.ptam;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.util.Log;

/*
 * The draw() and init() methods are called by the BatchRenderer when the GLSurfaceView has to
 * be redrawn.
 * Sends a frame from the camera to PTAM to update its tracking state and allows PTAM
 * to render OpenGL data into the GLSurfaceView.
 */
public class CaptureRenderer extends GLRenderer {
	
	private VideoSource _vs;
//	private CaptureViewer _viewer;
	int flag = 0;
//	Runnable fd = null;
//	FeatureDetecter detecter = null;
	
	public CaptureRenderer(VideoSource vs, CaptureViewer viewer) {
		_vs = vs;
//		_viewer = viewer;
	}
	
	@Override
	public void draw() {
		byte[] frame = _vs.getFrame();
		
		if (frame != null) {
			
//			fd = new FeatureDetection(frame);
//			new Thread(fd).start();
			
			/*
			if(_viewer.getState()==3){
				Log.v("STATE", "ended");
				if(flag==10){
					fd = new FeatureDetection(frame);
					new Thread(fd).start();
				}
				
				detecter = new FeatureDetecter(frame);
				detecter.Detecting();
				flag++;
			}
			*/
			
			PTAM.update(frame);
//			_viewer.update();
		}
		else{}
//			Log.d("ptam has no draw", "ptam has no draw");
	}
	
	@Override
	public void init() {
		//getSize() return an array include preview width and height.
		PTAM.init(_vs.getSize());
		
		ByteBuffer bb = ByteBuffer.allocateDirect(8);
		bb.order(ByteOrder.nativeOrder());
	}
	
}
