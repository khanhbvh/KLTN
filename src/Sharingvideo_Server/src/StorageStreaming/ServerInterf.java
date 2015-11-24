/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StorageStreaming;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.rmi.Remote;
import java.rmi.RemoteException;

/**
 *
 * @author Thien
 */
public interface ServerInterf extends Remote {
    
    public String sayHello() throws RemoteException;
    
    public int getSize()  throws RemoteException;
    
    public String GetLink(int ID) throws RemoteException;
    
    public int GetPriority() throws RemoteException;
    
    public void SetPriority() throws RemoteException;
    
    public void UploadVideo(byte[]in, File file)throws RemoteException;
}
