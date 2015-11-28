package com.uit.sharingvideo.storage;


public class StorageServiceImpl implements StorageService {
	public final static String LOCAL = "E:\\KLTN\\doan\\src\\SharingVideo\\src\\main\\webapp\\resources\\video\\";
	@SuppressWarnings("deprecation")
	@Override
	public void SaveEncodeVideo(byte[] file,String name, String path) {
		SaveThread a = new SaveThread(file, name, path);
		a.start();
		try {
			a.join();
			a.stop();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
