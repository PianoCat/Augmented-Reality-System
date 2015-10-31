package com.ecn.ptam;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

/*
 * Manages the state of the application, calls PTAM to update its state.
 * Sends KeyPress events to PTAM to simulate a user interaction.
 * Manages the Logger to save information on the disk.
 * Emits the beep sound to synchronize the video with the logged positions.
 */
public class CaptureViewer extends GLSurfaceView implements View.OnClickListener {
	public int pressCount, count;
	private BatchRenderer _renderer;
//	private Logger _logger;

	private enum State {INIT, STEREO_STARTED, STEREO_ENDED, READY, RUNNING};
	private enum Intro {FIRST, SECOND, THIRD, FOURTH, FIFTH, SIXTH};
	private State _state;
	private Intro _intro;
	
	public CaptureViewer(Context ctx, VideoSource vs) {
		super(ctx);
		pressCount=0;
		count = 0;
		_state = State.INIT;
		_intro = Intro.FIRST;
//		_logger = new Logger(ctx, "positions.log");
		
		_renderer = new BatchRenderer();
		
		_renderer.add(new CameraRenderer(vs));
		_renderer.add(new CaptureRenderer(vs, this));
//		_renderer.add(new ModelRender(ctx, vs));
		setRenderer(_renderer);
	}
	
	public void update() {
//		if (_state == State.RUNNING) {
//			_logger.write(PTAM.getModelView());
//		}
	}
	
	public void start() {
//		_player.start();
//		_logger.log_beep();
		PTAM.start();
	}
	
	public void stop() {
		PTAM.stop();
//		_logger.flush();
	}
	
	@Override
	public void onClick(View v) {
		Button btn = (Button)v;
		
		if(v.getId()==1){
			switch (_state) {
			case INIT:
				PTAM.send("Space");
				btn.setText("Finish stereo init");
				_state = State.STEREO_STARTED;
				pressCount+=1;
				break;
			case STEREO_STARTED:
				PTAM.send("Space");
				btn.setText("Finish");
				_state = State.STEREO_ENDED;
				pressCount+=1;
				//PTAM.keyPressed(pressCount);
				break;
			case STEREO_ENDED:
				PTAM.send("Enter");
				if (PTAM.objectIsGood()) {
	//				_logger.write_mat(PTAM.getCorners());
					_state = State.READY;
					btn.setText("Start");
				}
				break;
			case READY:
				start();
				btn.setText("Stop");
				_state = State.RUNNING;
				break;
			case RUNNING:
				stop();
				btn.setText("Start");
				_state = State.READY;
			default:
				break;
			}
		}
		else if(v.getId()==2){
			switch(_intro){
			case FIRST:
/*				AlertDialog dialog = new AlertDialog.Builder(this.getContext()).setTitle("大南门").setMessage("这是大南门").create();
                Window window = dialog.getWindow();
                window.setGravity(Gravity.TOP);
                WindowManager.LayoutParams lp = window.getAttributes();
                lp.alpha = 0.5f;
                window.setAttributes(lp);
                dialog.show();*/
                count += 1;
				break;
			case SECOND:
				count += 1;
				break;
			case THIRD:
                count += 1;
				break;
			case FOURTH:
				count += 1;
				break;
			case FIFTH:
                count += 1;
				break;
			case SIXTH:
				count += 1;
				break;
			default:
				break;
			}
		}
	}
	
	public int getState(){
		switch(_state){
		case INIT:
			return 1;
		case STEREO_STARTED:
			return 2;
		case STEREO_ENDED:
			return 3;
		case READY:
			return 4;
		case RUNNING:
			return 5;
		}
		return 0;
	}
	
	public void onPause() {
//		_logger.flush();
//		_logger.close();
	}
}
