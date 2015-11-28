package com.uit.sharingvideo.storage;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;

public class SaveThread extends Thread implements Serializable {
	/**
	 * 
	 */
private static final long serialVersionUID = 1L;
byte[] in;
String name;
String path;
public SaveThread(byte[] _in, String _file, String _path) {
	in = _in;
	name = _file;
	path =_path;
}

@Override
public void run() {
	String Localbatfile = "E:\\WorkSpace\\VideoStorageServer\\datatest\\" + path + "\\";
	File folder = new File(Localbatfile);
	if (!folder.exists()) {
		folder.mkdir();
	}
	// if file doesn't exists, then create it
	File file = new File(Localbatfile+name);
	if (!file.exists()) {
		try {
			file.createNewFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	InputStream input = new ByteArrayInputStream(in);
	try (FileOutputStream fop = new FileOutputStream(Localbatfile+name)) {
	
		
		// get the content in bytes
		byte[] buffer = new byte[1024];
		int len = input.read(buffer);
		while (len != -1) {
			fop.write(buffer, 0, len);
			len = input.read(buffer);
		}
	} catch (IOException e) {
		e.printStackTrace();
	}
}
}
