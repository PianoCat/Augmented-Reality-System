package com.ecn.ptam;
import java.io.IOException;
import java.io.InputStream;

import android.opengl.GLSurfaceView;
import android.opengl.GLES20;
import android.opengl.GLUtils;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PixelFormat;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

class MySurfaceView extends GLSurfaceView{
//	private final float TOUCH_SCALE_FACTOR = 180.0f/320;//角度缩放比例
    private SceneRenderer mRenderer;//场景渲染器
    
    static int count = 1;
    static float flag1 = 1.0f;
    static float flag2 = 1.0f;
    static float flag3 = 1.0f;
//    private RotateThread1 mRotateThread1;
//    private RotateThread2 mRotateThread2;
//    private RotateThread3 mRotateThread3;
    
    private CaptureViewer capViewer;
    int textureId;//系统分配的纹理id
	public MySurfaceView(Context context,CaptureViewer cap) {
        super(context);
        this.setEGLContextClientVersion(2); //设置使用OPENGL ES2.0
        capViewer=cap;
        setZOrderOnTop(true);
		getHolder().setFormat(PixelFormat.TRANSLUCENT);
		setEGLConfigChooser(8,8,8,8,16,0);
        mRenderer = new SceneRenderer();	//创建场景渲染器
        setRenderer(mRenderer);				//设置渲染器
        //setRenderMode(GLSurfaceView.RENDERMODE_CONTINUOUSLY);//设置渲染模式为主动渲染 
    }
	
	private class SceneRenderer implements GLSurfaceView.Renderer{
		
//		float yAngle = 0;
//		float yAngle1 = 0;
//		float yAngle2 = 0;
		
    	//从指定的obj文件中加载对象
		LoadedObjectVertexNormalTexture lovo;
//		LoadedObjectVertexNormalTexture lovo2;
//		LoadedObjectVertexNormalTexture lovo3;
//		LoadedObjectVertexNormalTexture lovo4;
        public void onDrawFrame(GL10 gl){
        	//清除深度缓冲与颜色缓冲
            GLES20.glClear( GLES20.GL_DEPTH_BUFFER_BIT | GLES20.GL_COLOR_BUFFER_BIT);

            MatrixState.pushMatrix();

            float frustumMatrix[]=PTAM.getFrustumMatrix();
            MatrixState.setFrustumMatrix(frustumMatrix);
            float modelView[]=PTAM.getModelView();
        	MatrixState.setModelViewMatrix(modelView);
        	if(lovo != null){
        		if(capViewer.pressCount==2){
        			if(PTAM.drawGrid()){
                		lovo.drawSelf(textureId);
//                		lovo.drawSelf();
        			}
                }
        	}
            MatrixState.popMatrix();
            /*
            MatrixState.pushMatrix();
            MatrixState.rotate(yAngle1, 0, 1, 0);
            if(flag2<=1.8){
            	MatrixState.scale(flag2, flag2, flag2);
            }
        	if(count==4){
        		lovo2.drawSelf();
        		mRotateThread2 = new RotateThread2();
                mRotateThread2.start();
        	}
            MatrixState.popMatrix();
            
            MatrixState.pushMatrix();
            MatrixState.rotate(yAngle2, 0, 1, 0);
            if(flag3<=1.8){
            	MatrixState.scale(flag3, flag3, flag3);
            }
        	if(count==6){
        		lovo3.drawSelf();
        		mRotateThread3 = new RotateThread3();
        		mRotateThread3.start();
        	}
            MatrixState.popMatrix();
            
            MatrixState.pushMatrix();
            float frustumMatrix[]=PTAM.getFrustumMatrix();
            MatrixState.setFrustumMatrix(frustumMatrix);
            float modelView[]=PTAM.getModelView();
        	MatrixState.setModelViewMatrix(modelView);
            if(lovo4!=null){
            	if(capViewer.pressCount==2 && PTAM.drawGrid()){
            		lovo4.drawSelf();
            	}
            }
            MatrixState.popMatrix();*/
            
        }

        public void onSurfaceChanged(GL10 gl, int width, int height) {
            //设置视窗大小及位置 
        	GLES20.glViewport(0, 0, width, height);
        	//计算GLSurfaceView的宽高比
            float ratio = (float) width / height;
            //调用此方法计算产生透视投影矩阵
            MatrixState.setProjectFrustum(-ratio, ratio, -1, 1, 2, 100);
            //调用此方法产生摄像机9参数位置矩阵
            MatrixState.setCamera(0,0,5,0f,0f,-1f,0f,1.0f,0.0f);
//            MatrixState.setCamera(0,0,0,0f,0f,-1f,0f,1.0f,0.0f);
        }

        public void onSurfaceCreated(GL10 gl, EGLConfig config){
            //设置屏幕背景色RGBA
            GLES20.glClearColor(0.0f,0.0f,0.0f,0.0f);
            //打开深度检测
            GLES20.glEnable(GLES20.GL_DEPTH_TEST);
            //打开背面剪裁
            GLES20.glEnable(GLES20.GL_CULL_FACE);
            //初始化变换矩阵
            MatrixState.setInitStack();
            //初始化光源位置
            MatrixState.setLightLocation(40, 10, 20);
            
            lovo=LoadUtil.loadFromFile("luxun_texture.obj", MySurfaceView.this.getResources(),MySurfaceView.this);
//            lovo2=LoadUtil.loadFromFile("jgx.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
//            lovo3=LoadUtil.loadFromFile("luxun.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
//            lovo4=LoadUtil.loadFromFile("jxg.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
            textureId=initTexture(R.drawable.texture_luxun);
        }
    }
	
  	public int initTexture(int drawableId){//textureId
		//生成纹理ID
		int[] textures = new int[1];
		GLES20.glGenTextures
		(
				1,          //产生的纹理id的数量
				textures,   //纹理id的数组
				0           //偏移量
		);
		int textureId=textures[0];
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, textureId);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER,GLES20.GL_NEAREST);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D,GLES20.GL_TEXTURE_MAG_FILTER,GLES20.GL_LINEAR);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_S,GLES20.GL_REPEAT);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_T,GLES20.GL_REPEAT);
        
        //通过输入流加载图片===============begin===================
        InputStream is = this.getResources().openRawResource(drawableId);
        Bitmap bitmapTmp;
        try{
        	bitmapTmp = BitmapFactory.decodeStream(is);
        }
        finally{
            try{
                is.close();
            } 
            catch(IOException e){
                e.printStackTrace();
            }
        }
        //通过输入流加载图片===============end===================== 
	   	GLUtils.texImage2D(
	    		GLES20.GL_TEXTURE_2D, //纹理类型
	     		0, 
	     		GLUtils.getInternalFormat(bitmapTmp),
	     		bitmapTmp, //纹理图像
	     		GLUtils.getType(bitmapTmp),
	     		0 //纹理边框尺寸
	     );
	    bitmapTmp.recycle(); 		  //纹理加载成功后释放图片
        return textureId;
	}

}
