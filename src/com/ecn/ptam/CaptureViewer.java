package com.ecn.ptam;

import java.io.IOException;

import android.content.Context;
import android.media.MediaPlayer;
import android.opengl.GLSurfaceView;
import android.view.View;
import android.widget.Button;

/*
 * Manages the state of the application, calls PTAM to update its state.
 * Sends KeyPress events to PTAM to simulate a user interaction.
 * Manages the Logger to save information on the disk.
 * Emits the beep sound to synchronize the video with the logged positions.
 */
public class CaptureViewer extends GLSurfaceView implements View.OnClickListener {
	public int pressCount;
	private BatchRenderer _renderer;
//	private Logger _logger;
//	private MediaPlayer _player;

	private enum State {INIT, STEREO_STARTED, STEREO_ENDED, READY, RUNNING};
	private State _state;
	
	public CaptureViewer(Context ctx, VideoSource vs) {
		super(ctx);
		pressCount=0;
		_state = State.INIT;
//		_logger = new Logger(ctx, "positions.log");
//		load_beep(ctx);
		
		_renderer = new BatchRenderer();
		
		_renderer.add(new CameraRenderer(vs));
		_renderer.add(new CaptureRenderer(vs, this));
//		_renderer.add(new ModelRender(ctx, vs));
		setRenderer(_renderer);
	}
	
/*	
	public void load_beep(Context ctx) {
		_player = MediaPlayer.create(ctx, R.raw.beep);
		try {
			_player.prepare();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
*/	
	
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
				
		switch (_state) {
		case INIT:
			PTAM.send("Space");
			btn.setText("Finish stereo init");
			_state = State.STEREO_STARTED;
			pressCount+=1;
			break;
		case STEREO_STARTED:
			PTAM.send("Space");
			btn.setText("Store");
			_state = State.STEREO_ENDED;
			pressCount+=1;
			//PTAM.keyPressed(pressCount);
			
			//add the building feature detection.
			
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
