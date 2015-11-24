package StorageStreaming;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.rmi.RemoteException;

public class UploadVideo extends Thread implements Serializable{
byte[] in;
File file;
	public UploadVideo( byte[] _in, File _file ){
		in=_in;
		file = _file;
		
	}
	@Override
	public void run()
	{
		System.out.println("in--------"+ in);
		InputStream input = new ByteArrayInputStream(in);
		try (FileOutputStream fop = new FileOutputStream(file)) {
 
			// if file doesn't exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
 
			// get the content in bytes
			byte[] buffer = new byte[1024];
			int len = input.read(buffer);
			while (len != -1) {
			    fop.write(buffer, 0, len);
			    len = input.read(buffer);
			    System.out.println("len--------"+len);
			}
 
			System.out.println("Done");
 
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
