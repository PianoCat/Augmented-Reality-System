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
//	private final float TOUCH_SCALE_FACTOR = 180.0f/320;//�Ƕ����ű���
    private SceneRenderer mRenderer;//������Ⱦ��
    
    static int count = 1;
    static float flag1 = 1.0f;
    static float flag2 = 1.0f;
    static float flag3 = 1.0f;
//    private RotateThread1 mRotateThread1;
//    private RotateThread2 mRotateThread2;
//    private RotateThread3 mRotateThread3;
    
    private CaptureViewer capViewer;
    int textureId;//ϵͳ���������id
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
		
//		float yAngle = 0;
//		float yAngle1 = 0;
//		float yAngle2 = 0;
		
    	//��ָ����obj�ļ��м��ض���
		LoadedObjectVertexNormalTexture lovo;
//		LoadedObjectVertexNormalTexture lovo2;
//		LoadedObjectVertexNormalTexture lovo3;
//		LoadedObjectVertexNormalTexture lovo4;
        public void onDrawFrame(GL10 gl){
        	//�����Ȼ�������ɫ����
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
            //�����Ӵ���С��λ�� 
        	GLES20.glViewport(0, 0, width, height);
        	//����GLSurfaceView�Ŀ�߱�
            float ratio = (float) width / height;
            //���ô˷����������͸��ͶӰ����
            MatrixState.setProjectFrustum(-ratio, ratio, -1, 1, 2, 100);
            //���ô˷������������9����λ�þ���
            MatrixState.setCamera(0,0,5,0f,0f,-1f,0f,1.0f,0.0f);
//            MatrixState.setCamera(0,0,0,0f,0f,-1f,0f,1.0f,0.0f);
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
            
            lovo=LoadUtil.loadFromFile("luxun_texture.obj", MySurfaceView.this.getResources(),MySurfaceView.this);
//            lovo2=LoadUtil.loadFromFile("jgx.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
//            lovo3=LoadUtil.loadFromFile("luxun.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
//            lovo4=LoadUtil.loadFromFile("jxg.obj",MySurfaceView.this.getResources(),MySurfaceView.this,0,0,0);
            textureId=initTexture(R.drawable.texture_luxun);
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
