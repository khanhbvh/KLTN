package com.uit.sharingvideo.map;

import java.io.File;
import java.rmi.RemoteException;


public class UploadMapImpl implements UploadMap {

	@Override
	public void UploadVideo(byte[] in, File file) throws RemoteException {
		Connect con = new Connect();
		con.Connect_UploadService().UploadVideo(in, file);
	}
	
}
