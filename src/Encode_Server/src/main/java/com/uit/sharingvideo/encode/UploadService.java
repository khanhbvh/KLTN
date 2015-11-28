package com.uit.sharingvideo.encode;

import java.rmi.RemoteException;

public interface UploadService {
	public void UploadVideo(byte[] in, String name)throws RemoteException;
}
