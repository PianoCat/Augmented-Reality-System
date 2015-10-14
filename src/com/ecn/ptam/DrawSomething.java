package com.ecn.ptam;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PixelFormat;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

public class DrawSomething extends SurfaceView {

	protected SurfaceHolder sh;
	
	public DrawSomething(Context context, AttributeSet attrs) {
		super(context, attrs);
		sh = getHolder();  
        sh.setFormat(PixelFormat.TRANSPARENT); // 设置为透明 
        setZOrderOnTop(true);// 设置为顶端
        
	}
	
	public void doDraw(int[][] midPoints) {
		
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

}