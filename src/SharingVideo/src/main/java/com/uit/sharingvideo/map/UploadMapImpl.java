package com.uit.sharingvideo.map;

import java.rmi.RemoteException;


public class UploadMapImpl implements UploadMap {

	@Override
	public void UploadVideo(byte[] in, String name) throws RemoteException {
		Connect con = new Connect();
		con.Connect_UploadService().UploadVideo(in, name);
	}
	
}
