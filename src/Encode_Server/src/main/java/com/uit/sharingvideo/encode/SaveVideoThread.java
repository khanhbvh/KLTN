package com.uit.sharingvideo.encode;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;

public class SaveVideoThread extends Thread implements Serializable {
	/**
		 * 
		 */
	private static final long serialVersionUID = 1L;
	byte[] in;
	String name;

	public SaveVideoThread(byte[] _in, String _name) {
		in = _in;
		name = _name;

	}

	@Override
	public void run() {
		String Localbatfile = ExecuteComandToFormatVideo.LOCAL + name + "\\";
		InputStream input = new ByteArrayInputStream(in);
		File folder = new File(Localbatfile);
		
		if (!folder.exists()) {
			folder.mkdir();
		}
		// if file doesn't exists, then create it
		File file = new File(Localbatfile + name);
		// get the content in bytes
		if (!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try (FileOutputStream fop = new FileOutputStream(Localbatfile+name)) {
		
			byte[] buffer = new byte[1024];
			int len = input.read(buffer);
			while (len != -1) {
				fop.write(buffer, 0, len);
				len = input.read(buffer);
			}

			ExecuteComandToFormatVideo excmd = new ExecuteComandToFormatVideo();
			excmd.getMpd(file.getName());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
