package com.uit.sharingvideo.encode;

import java.io.File;
import java.io.Serializable;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;


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
	public void UploadVideo(byte[] in, String name) throws RemoteException {
		SaveVideoThread a = new SaveVideoThread(in,name);
		a.start();
	}

}
