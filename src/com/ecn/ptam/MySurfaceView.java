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
//	private final float TOUCH_SCALE_FACTOR = 180.0f/320;//�Ƕ����ű���
    private SceneRenderer mRenderer;//������Ⱦ��    
    
    private CaptureViewer capViewer;
    int textureId;//ϵͳ���������id
//	int textureId2;
	public MySurfaceView(Context context,CaptureViewer cap) {
        super(context);
        this.setEGLContextClientVersion(2); //����ʹ��OPENGL ES2.0
        capViewer=cap;
        setZOrderOnTop(true);
		getHolder().setFormat(PixelFormat.TRANSLUCENT);
		setEGLConfigChooser(8,8,8,8,16,0);
        mRenderer = new SceneRenderer();	//����������Ⱦ��
        setRenderer(mRenderer);				//������Ⱦ��		        
        //setRenderMode(GLSurfaceView.RENDERMODE_CONTINUOUSLY);//������ȾģʽΪ������Ⱦ 
    }
	
	private class SceneRenderer implements GLSurfaceView.Renderer{
    	//��ָ����obj�ļ��м��ض���
//		LoadedObjectVertexNormalTexture lovo;
		LoadedObjectVertexNormalTexture lovo2;
//		LoadedObjectVertexNormalTexture lovo3;
//		LoadedObjectVertexNormalTexture lovo4;
        public void onDrawFrame(GL10 gl){
        	//�����Ȼ�������ɫ����
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
            //�����Ӵ���С��λ�� 
        	GLES20.glViewport(0, 0, width, height); 
        	//����GLSurfaceView�Ŀ�߱�
            float ratio = (float) width / height;
            //���ô˷����������͸��ͶӰ����
            MatrixState.setProjectFrustum(-ratio, ratio, -1, 1, 2, 100);
            //���ô˷������������9����λ�þ���
            MatrixState.setCamera(0,0,0,0f,0f,-1f,0f,1.0f,0.0f);
        }

        public void onSurfaceCreated(GL10 gl, EGLConfig config){
            //������Ļ����ɫRGBA
            GLES20.glClearColor(0.0f,0.0f,0.0f,0.0f);
            //����ȼ��
            GLES20.glEnable(GLES20.GL_DEPTH_TEST);
            //�򿪱������
            GLES20.glEnable(GLES20.GL_CULL_FACE);
            //��ʼ���任����
            MatrixState.setInitStack();
            //��ʼ����Դλ��
            MatrixState.setLightLocation(40, 10, 20);
            //����Ҫ���Ƶ�����
//            lovo=LoadUtil.loadFromFile("southdoor.obj", MySurfaceView.this.getResources(),MySurfaceView.this,7f,-2f,5f);
            lovo2=LoadUtil.loadFromFile("xrd.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
//            lovo3=LoadUtil.loadFromFile("luxun.obj",MySurfaceView.this.getResources(),MySurfaceView.this,-2f,3f,20f);
//            lovo4=LoadUtil.loadFromFile("jxg.obj",MySurfaceView.this.getResources(),MySurfaceView.this,6.5f,2,1.3f);
            //��������
//            textureId=initTexture(R.drawable.ghxp);
        }
    }
  	public int initTexture(int drawableId){//textureId
		//��������ID
		int[] textures = new int[1];
		GLES20.glGenTextures
		(
				1,          //����������id������
				textures,   //����id������
				0           //ƫ����
		);    
		int textureId=textures[0];    
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, textureId);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER,GLES20.GL_NEAREST);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D,GLES20.GL_TEXTURE_MAG_FILTER,GLES20.GL_LINEAR);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_S,GLES20.GL_REPEAT);
		GLES20.glTexParameterf(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_T,GLES20.GL_REPEAT);
        
        //ͨ������������ͼƬ===============begin===================
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
        //ͨ������������ͼƬ===============end===================== 
	   	GLUtils.texImage2D(
	    		GLES20.GL_TEXTURE_2D, //��������
	     		0, 
	     		GLUtils.getInternalFormat(bitmapTmp), 
	     		bitmapTmp, //����ͼ��
	     		GLUtils.getType(bitmapTmp), 
	     		0 //����߿�ߴ�
	     );
	    bitmapTmp.recycle(); 		  //������سɹ����ͷ�ͼƬ
        return textureId;
	}
}
