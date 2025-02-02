package com.ecn.ptam;

import org.opencv.android.BaseLoaderCallback;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;

import android.app.ActionBar;
import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

public class PTAMActivity extends Activity {

	private VideoSource _vs;
	private CaptureViewer _viewer;
	
	//绘制3d模型
	private MySurfaceView mGLSurfaceView;
	//绘制地图中的关键建筑
//	private DrawPositions drawPositionsView;
	
	private BaseLoaderCallback mLoaderCallback = new BaseLoaderCallback(this) {
		@Override
		public void onManagerConnected(int status){
			switch (status){
            case LoaderCallbackInterface.SUCCESS:
            {
                Log.i("Success", "OpenCV loaded successfully");
                
            } break;
            default:
            {
            	Log.i("Fail", "OpenCV loaded failed");
                super.onManagerConnected(status);
            } break;
        }
		}
	};
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		_vs = new VideoSource();

		// hide system UI
		View decorView = getWindow().getDecorView();
		int uiOptions = View.SYSTEM_UI_FLAG_FULLSCREEN;
		decorView.setSystemUiVisibility(uiOptions);
		ActionBar actionBar = getActionBar();
		actionBar.hide();
		
		_viewer = new CaptureViewer(this, _vs);
	
		Button btn_action = new Button(this);
		btn_action.setId(1);
		btn_action.setText("Start stereo init");
		btn_action.setOnClickListener(_viewer);
		
		Button btn_intro = new Button(this);
		btn_intro.setId(2);
		btn_intro.setText("Introduction");
		btn_intro.setOnClickListener(_viewer);
		
		Button btn_go = new Button(this);
		btn_go.setId(3);
		btn_go.setText("Go");
		btn_go.setOnClickListener(_viewer);
		
		LinearLayout layout = new LinearLayout(this);
		layout.addView(btn_action);
		layout.addView(btn_intro);
		layout.addView(btn_go);
		
		mGLSurfaceView = new MySurfaceView(getApplicationContext(),_viewer);
		mGLSurfaceView.requestFocus();//获取焦点
		mGLSurfaceView.setFocusableInTouchMode(true);
//		mGLSurfaceView.setOnClickListener(mGLSurfaceView);
		
		FrameLayout fl = new FrameLayout(this);
		fl.setForegroundGravity(Gravity.BOTTOM | Gravity.START);
		fl.addView(_viewer);
		fl.addView(mGLSurfaceView);
//		fl.addView(drawPositionsView);
		fl.addView(layout);
		
		setContentView(fl);
	}
	
	@Override
	public void onResume() {
		super.onResume();
		_viewer.onResume();
		OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION_2_4_10, this, mLoaderCallback);
	}


	@Override
	public void onPause() {
		_viewer.onPause();
		_vs.camera_release();
		super.onPause();
	}

	
	@Override
	public void onStop() {
		super.onStop();
	}


	@Override
	public void onDestroy() {
		super.onDestroy();
	}

}