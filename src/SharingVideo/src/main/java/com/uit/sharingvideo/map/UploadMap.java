package com.uit.sharingvideo.map;

import java.rmi.RemoteException;

public interface UploadMap {
	public void UploadVideo(byte[] in, String name)throws RemoteException; 
}
