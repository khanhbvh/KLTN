package com.uit.sharingvideo.services;

import java.io.File;
import java.rmi.RemoteException;

public interface UploadService {
	public void UploadVideo(byte[] in, File file)throws RemoteException;
}
