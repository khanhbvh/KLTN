package com.uit.sharingvideo.map;

import java.io.File;
import java.rmi.RemoteException;
import java.util.List;

import com.uit.sharingvideo.domain.Comment;

public interface UploadMap {
	public void UploadVideo(byte[] in, File file)throws RemoteException; 
}
