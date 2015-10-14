package com.ecn.ptam;

import javax.microedition.khronos.opengles.GL10;

/*
 * Base class to all Renderers, defines three functions that are called by the BatchRenderer
 */
public abstract class GLRenderer {
	public void draw() {}
	public void changed() {}
	public void init() {}
	
//	public void draw(GL10 gl){}
	public void changed(GL10 gl, int w, int h) {}
//	public void init(GL10 gl, EGLConfig config) {}
}