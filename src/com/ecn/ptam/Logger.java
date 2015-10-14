package com.ecn.ptam;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import android.content.Context;
import android.os.Environment;


/*
 * Creates the log file and provides an interface to write positions, matrices and timestamp into it
 */
public class Logger {
	
	private BufferedWriter _buf;
	private Context _ctx;
	
	public Logger(Context context, String filename) {
		_ctx = context;
		_buf = new BufferedWriter(create_file(filename));
	}
	
	public FileWriter create_file(String filename) {
		File file = new File(_ctx.getExternalFilesDir(null), filename);
		if (file != null) {
			file.delete();
		}
//		file.mkdirs();
		FileWriter writer = null;
		try {
			writer = new FileWriter(file);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return writer;
	}
	
	public void log_beep() {
		long t = System.currentTimeMillis();
		String str = "" + t;
		write_line(str);
	}
	
	public void write(float mv[]) {
		long t = System.currentTimeMillis();
		
		String str = "" + t;
		for (float f : mv) {
			str += " " + f ;
		}
		
		write_line(str);
	}
	
	public void write_mat(float mat[]) {
		for (int i = 0; i < 3; ++i) {
			String str = "";
			for (int j = 0; j < 12; ++j) {
				str += mat[i*12+j]+" " ;
			}
			write_line(str);
		}
		flush();
	}
	
	public void write_line(String str) {
		try {
			_buf.write(str);
			_buf.newLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void flush() {
		try {
			_buf.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			_buf.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/* Checks if external storage is available for read and write */
	public boolean isExternalStorageWritable() {
	    String state = Environment.getExternalStorageState();
	    if (Environment.MEDIA_MOUNTED.equals(state)) {
	        return true;
	    }
	    return false;
	}
	
	/* Checks if external storage is available to at least read */
	public boolean isExternalStorageReadable() {
	    String state = Environment.getExternalStorageState();
	    if (Environment.MEDIA_MOUNTED.equals(state) ||
	        Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) {
	        return true;
	    }
	    return false;
	}
}