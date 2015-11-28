package com.uit.sharingvideo.encode;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.uit.sharingvideo.storage.StorageService;

public class Encode extends Thread {
	int i = 1;
	private String command;
	private String filePathString;
	private String name;
	Encode(String command, String filePathString, String name) {
		this.command = command;
		this.filePathString = filePathString;
		this.name = name;
	}

	public void run() {
		try {
			Runtime.getRuntime().exec(command).getInputStream();
			Path path2 = Paths.get(filePathString + "file.txt");

			while (!isCompletelyEncode(path2)) {
			}
			Files.delete(path2);
			File folder = new File(filePathString);
			File[] lstFile = folder.listFiles();
			for (int i = 0; i < lstFile.length; i++) {
				StorageService storageservice = Connect_StorageService();
				Path path = Paths.get(lstFile[i].getPath());
				storageservice.SaveEncodeVideo(Files.readAllBytes(path), lstFile[i].getName(),name);
			}
			System.out.println("finish encode ");
			System.out.println("xong " + i);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setCommand(String command) {
		this.command = command;
	}

	public void setFilePathString(String filePathString) {
		this.filePathString = filePathString;
	}

	public String CONFIG_FILE = "spring-config-server.xml";

	/**
	 * @return type type of server's service
	 */
	public StorageService Connect_StorageService() {
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		StorageService storageService = (StorageService) context.getBean("storageService");
		return storageService;
	}

	private boolean isCompletelyEncode(Path path) {
		if (Files.exists(path, new LinkOption[] { LinkOption.NOFOLLOW_LINKS })) {
			RandomAccessFile stream = null;
			try {
				stream = new RandomAccessFile(new File(filePathString + "file.txt"), "rw");
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (stream != null) {
					try {
						stream.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return false;
	}

}
