package com.uit.sharingvideo.services;

import java.rmi.RemoteException;

public interface UploadService {
	public void UploadVideo(byte[] in, String name)throws RemoteException;
}
