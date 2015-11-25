package com.uit.reformatvideo;

import java.io.IOException;

public class Encode extends Thread{
	int i =1;
	private String command;
	Encode( String command){
	      this.command = command;
	   }
	
	public void run()
	{
		try {
			
			Runtime.getRuntime().exec(command);
			System.out.println("xong "+i);
			i++;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void setCommand(String command)
	{
		this.command =command;
	}
	
}
