/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StorageStreaming;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.ObjectInputStream.GetField;
import java.io.Serializable;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Thien
 */
public class MovieStreamingServer {
//     public interface Server extends Remote {
//        public String sayHello() throws RemoteException;
//    }
	
    public static class ServerImpl extends UnicastRemoteObject
            implements ServerInterf, Serializable {

        /**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		Registry rmiRegistry;
		public static  int priority=0;
		
        public ServerImpl() throws RemoteException {
            super();
        }

        public void start() throws Exception {
            rmiRegistry = LocateRegistry.createRegistry(1099);
            rmiRegistry.bind("server", this);
            System.out.println("Server started");
        }

        public void stop() throws Exception {
            rmiRegistry.unbind("server");
            unexportObject(this, true);
            unexportObject(rmiRegistry, true);
            System.out.println("Server stopped");
        }
        
        //@Override
        @Override
        public String sayHello() {
            return "The Client has connected....";
        }
        
        @Override
        public int getSize() throws RemoteException {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }


		@Override
		public String GetLink(int ID) throws RemoteException {
			if(ID == 1)
			{
				InetAddress addr;
				try {
					addr = InetAddress.getLocalHost();
					priority = priority+ 1;
					return "http://"+addr.getHostAddress()+":47/video/movie.mp4";
				} catch (UnknownHostException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			return "error";
		}

		@Override
		public int GetPriority() throws RemoteException {
			return priority;
		}
		@Override
		public void SetPriority() throws RemoteException {
			
			priority = priority-1;
		}

		@Override
		public void UploadVideo(byte[] in, File file) throws RemoteException {
			System.out.println("==============vao Upload===========");
			UploadVideo a = new UploadVideo(in,file);
			a.start();
			
		}
    }

    public static void main(String[] args) throws Exception {
        ServerImpl server = new ServerImpl();
        server.start();
        System.out.println(server.GetPriority());
        System.out.println("OK da qua Server Upload- MovieStreamingServer StorageStreaming -------------: ");
       // Thread.sleep(40 * 1000); // run for 5 minutes
       // server.stop();
    }
    
    
}
