package com.ecn.ptam;
import java.io.IOException;
import java.io.InputStream;

import android.opengl.GLSurfaceView;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PixelFormat;

class MySurfaceView extends GLSurfaceView{
//	private final float TOUCH_SCALE_FACTOR = 180.0f/320;//角度缩放比例
    private SceneRenderer mRenderer;//场景渲染器    
    
    private CaptureViewer capViewer;
    int textureId;//系统分配的纹理id
//	int textureId2;
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
    	//从指定的obj文件中加载对象
//		LoadedObjectVertexNormalTexture lovo;
		LoadedObjectVertexNormalTexture lovo2;
//		LoadedObjectVertexNormalTexture lovo3;
//		LoadedObjectVertexNormalTexture lovo4;
        public void onDrawFrame(GL10 gl){
        	//清除深度缓冲与颜色缓冲
            GLES20.glClear( GLES20.GL_DEPTH_BUFFER_BIT | GLES20.GL_COLOR_BUFFER_BIT);
/*
            MatrixState.pushMatrix();
            MatrixState.translate(0, 0, -40f);  
            MatrixState.rotate(0, 0, 1, 0);
            MatrixState.rotate(0, 1, 0, 0);
            MatrixState.rotate(0, 0, 0, 1);
//            float frustumMatrix[]=PTAM.getFrustumMatrix();
//            MatrixState.setFrustumMatrix(frustumMatrix);
//            float modelView[]=PTAM.getModelView();
//        	MatrixState.setModelViewMatrix(modelView);
            if(lovo!=null){
            	if(capViewer.pressCount==2 && PTAM.drawGrid()){
            		lovo.drawSelf();
            	}
            }   
            MatrixState.popMatrix();*/
            
            MatrixState.pushMatrix();
            MatrixState.translate(0, 0, -25f);
            MatrixState.rotate(270, 0, 1, 0);
            MatrixState.rotate(180, 1, 0, 0);
//            MatrixState.rotate(0, 0, 0, 1);
//            float frustumMatrix1[]=PTAM.getFrustumMatrix();
//            MatrixState.setFrustumMatrix(frustumMatrix1);
//            float modelView1[]=PTAM.getModelView();
//         	MatrixState.setModelViewMatrix(modelView1);
            if(lovo2!=null){
            	if(capViewer.pressCount==2){
            		lovo2.drawSelf();
            	}
            }
            MatrixState.popMatrix();
            /*
            MatrixState.pushMatrix();
            MatrixState.translate(0, 0, -56f);  
            MatrixState.rotate(180, 0, 0, 1);
            MatrixState.rotate(0, 0, 1, 0);
            MatrixState.rotate(0, 1, 0, 0);  
            MatrixState.rotate(0, 0, 0, 1);
            if(lovo3!=null){
            	if(capViewer.pressCount==2 && PTAM.drawGrid()){
            		lovo3.drawSelf();
            	}
            }
            MatrixState.popMatrix();
            
            MatrixState.pushMatrix();
            MatrixState.translate(0, 0, -25f);  
            MatrixState.rotate(0, 0, 1, 0);
            MatrixState.rotate(0, 1, 0, 0);
            MatrixState.rotate(0, 0, 0, 1);
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
            MatrixState.setCamera(0,0,0,0f,0f,-1f,0f,1.0f,0.0f);
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
            //加载要绘制的物体
//            lovo=LoadUtil.loadFromFile("southdoor.obj", MySurfaceView.this.getResources(),MySurfaceView.this,7f,-2f,5f);
            lovo2=LoadUtil.loadFromFile("xrd.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
//            lovo3=LoadUtil.loadFromFile("luxun.obj",MySurfaceView.this.getResources(),MySurfaceView.this,-2f,3f,20f);
//            lovo4=LoadUtil.loadFromFile("jxg.obj",MySurfaceView.this.getResources(),MySurfaceView.this,6.5f,2,1.3f);
            //加载纹理
//            textureId=initTexture(R.drawable.ghxp);
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
