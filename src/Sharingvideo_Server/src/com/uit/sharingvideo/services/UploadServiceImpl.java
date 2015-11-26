package com.uit.sharingvideo.services;

import java.io.File;
import java.io.Serializable;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import StorageStreaming.UploadVideo;

public class UploadServiceImpl extends UnicastRemoteObject implements UploadService,Serializable {

	protected UploadServiceImpl() throws RemoteException {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void UploadVideo(byte[] in, File file) throws RemoteException {
		UploadVideo a = new UploadVideo(in,file);
		a.start();
	}

}
