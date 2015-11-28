package com.uit.sharingvideo.encode;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ExecuteComandToFormatVideo {
	public final static String EXECUTE_FORMAT_WITH_FFPEG = " -c:v libx264 -r 24 -g 48 -an";
/*	public final static String LINK_FFMPEG = "C:\\ffmpeg\\bin\\nffmpeg.exe";*/
	public final static String LINK_FFMPEG = "\nffmpeg.exe";
	public final static String LOCAL = "E:\\KLTN\\doan\\src\\SharingVideo\\src\\main\\webapp\\resources\\video\\";
	public final static String MSYS = "C:/msys/1.0/msys.bat ";
	/*public final static String LINK_MP4BOX = "C:/MP4Box/Tools/\nMP4Box.exe";*/
	public final static String LINK_MP4BOX = "\nMP4Box.exe";
	public final static String CREATE_MPD_ECLIPSE = "mp4box -dash 10000 -frag 1000 -rap -bs-switching no";
	public final static String CREATE_MPD_IE = "MP4Box -dash 10000 -dash-profile live -segment-name output-seg -rap -bs-switching no";
	public final static String CREATE_MPD_CHR_IE_FF = "MP4Box -dash 10000 -profile onDemand -rap -out";
	public final static String ADMIN_CMD = "@echo off\n" + ":: BatchGotAdmin\n"
			+ ":-------------------------------------\n" + "REM  --> Check for permissions\n"
			+ ">nul 2>&1 \"%SYSTEMROOT%\\system32\\cacls.exe\" \"%SYSTEMROOT%\\system32\\config\\system\"\n"
			+ "REM --> If error flag set, we do not have admin.\n" + "if \'%errorlevel%\' NEQ \'0\' (\n"
			+ "    echo Requesting administrative privileges...\n" + "    goto UACPrompt\n"
			+ ") else ( goto gotAdmin )\n" + ":UACPrompt\n"
			+ "    echo Set UAC = CreateObject^(\"Shell.Application\"^) > \"%temp%\\getadmin.vbs\"\n"
			+ "    echo UAC.ShellExecute \"%~s0\", \"\", \"\", \"runas\", 1 >> \"%temp%\\getadmin.vbs\"\n"

	        + "    \"%temp%\\getadmin.vbs\"\n" + "    exit /B\n" + ":gotAdmin\n"
			+ "    if exist \"%temp%\\getadmin.vbs\" ( del \"%temp%\\getadmin.vbs\" )\n" + "    pushd \"%CD%\"\n"
			+ "    CD /D \"%~dp0\"\n" + ":--------------------------------------\"\n";

	public void getMpd(String name) throws IOException {
		  try {
			CreateBat(name);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 // String s = null;
			String url = LOCAL + name + "\\";
			// Process p = Runtime.getRuntime().exec(url+"test.bat");
			
			
			//Process p = Runtime.getRuntime().exec(url + name + ".bat");
			System.out.println(url + name + ".bat");
		    Encode e = new Encode((url + name + ".bat"),url,name);
		    e.start();
			
			//Process p =	Runtime.getRuntime().exec(url + name + ".bat");
			
			/*BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));
			BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
			System.out.println("Here is the standard output of the command:\n");
			while ((s = stdInput.readLine()) != null) {
				System.out.println(s);
			}System.out.println("Here is the standard error of the command:\n");
			while ((s = stdError.readLine()) != null) {
				System.out.println(s);
			}*/
		/*	Encode e2 = new Encode(url + name + "an_input.mp4" + ".bat");
			e2.start();
			e2.join();
			
			Encode e3 = new Encode(url + name + "audio.mp4" + ".bat");
			e3.start();
			e3.join();
			
			Encode e4 = new Encode(url + name + "_output_chrffie" + ".bat");
			e4.start();
			e4.join();*/
			//Process p1 = Runtime.getRuntime().exec(url + name + "an_input.mp4" + ".bat");
		    /*p1.waitFor();
			p1.destroy();*/
			/*Process p2= Runtime.getRuntime().exec(url + name + "audio.mp4" + ".bat");
			p2.waitFor();
			p2.destroy();
			Process p3= Runtime.getRuntime().exec(url + name + "_output_chrffie" + ".bat");
			p3.waitFor();
			p3.destroy();*/
			
			
			
			/*Process p1 = Runtime.getRuntime().exec(url + name + "an_input.mp4" + ".bat");
			p1.waitFor();
			p1.destroy();
			Process p = Runtime.getRuntime().exec(url + name + ".bat");
			p.waitFor();
			p.destroy();
			Process p2= Runtime.getRuntime().exec(url + name + "audio.mp4" + ".bat");
			p2.waitFor();
			p2.destroy();
			Process p3= Runtime.getRuntime().exec(url + name + "_output_chrffie" + ".bat");
			p3.waitFor();
			p3.destroy();*/
			/*BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));

			BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));
			BufferedReader stdInput1 = new BufferedReader(new InputStreamReader(p1.getInputStream()));
			BufferedReader stdInput2 = new BufferedReader(new InputStreamReader(p2.getInputStream()));
			BufferedReader stdError1 = new BufferedReader(new InputStreamReader(p1.getErrorStream()));
			BufferedReader stdError2 = new BufferedReader(new InputStreamReader(p2.getErrorStream()));
			BufferedReader stdInput3 = new BufferedReader(new InputStreamReader(p3.getInputStream()));
			BufferedReader stdError3 = new BufferedReader(new InputStreamReader(p3.getErrorStream()));
			// read the output from the command
			System.out.println("Here is the standard output of the command:\n");
			while ((s = stdInput.readLine()) != null) {
				System.out.println(s);
			}
			while ((s = stdInput1.readLine()) != null) {
				System.out.println(s);
			}
			while ((s = stdInput2.readLine()) != null) {
				System.out.println(s);
			}
			while ((s = stdInput3.readLine()) != null) {
				System.out.println(s);
			}

			// read any errors from the attempted command
			System.out.println("Here is the standard error of the command (if any):\n");
			while ((s = stdError.readLine()) != null) {
				System.out.println(s);
			}
			while ((s = stdError1.readLine()) != null) {
				System.out.println(s);
			}
			while ((s = stdError2.readLine()) != null) {
				System.out.println(s);
			}
			while ((s = stdError3.readLine()) != null) {
				System.out.println(s);
			}
			stdInput.close();
			stdError.close();
			stdInput1.close();
			stdError1.close();
			stdInput2.close();
			stdError2.close();
			stdInput3.close();
			stdError3.close();*/
	}

	/**
	 * param : name:name of video (shouldn't not have space character). local:
	 * local to save file. ex: "D:/videofolder/" (file .bat, video output, .mpd
	 * file ...) convertType: create file bat for encode(run
	 * EXECUTE_FORMAT_WITH_FFPEG) or create .mpd file (LINK_MP4BOX) command:
	 * command to execute. ex:CREATE_MPD_IE create a .bat file to convert video,
	 * create .MPD file return: .bat + mpd file or video file...
	 */
	public String CreateBatFileForFFMPEG(String name, String local, String convertType, String command) {
		// String a="ffmpeg -i \"C:/ffmpeg_fdk_aac/datatest/input.mp4\" -c:v
		// libx264 -r 24 -g 48 -an
		// \"C:\ffmpeg_fdk_aac\datatest\input_an.mp4"";
		String CMDvideo =ADMIN_CMD+ convertType + "\n" + "ffmpeg -i" + " \"" + local + name + "\\"+name+"\"" + command+" \"" + local
				+ name + "\\" + name + "an_input.mp4\"";
	/*	String namevideo = name + "an_input.mp4";*/
		String CMDaudio =  convertType + "\n" + "ffmpeg -i" + " \"" + local + name + "\\"+name+"\"" + " "
				+ "-vn -acodec copy " + "\""+local + name + "\\" + name + "audio.mp4\"";
		/*String nameaudio = name + "audio.mp4";*/
		//System.out.println("cmd= " + CMDvideo);
		/*String Localbatfile = local + name + "\\";
		File folder = new File(Localbatfile);
		if (!folder.exists()) {
			folder.mkdir();
		}
		File filevideo = new File(Localbatfile + namevideo + ".bat");
		File fileaudio = new File(Localbatfile + nameaudio + ".bat");
		System.out.println(Localbatfile);
		// if file doesn't exists, then create it
		if (!filevideo.exists()) {
			filevideo.createNewFile();
		}
		FileWriter fw1 = new FileWriter(filevideo.getAbsoluteFile());
		BufferedWriter bw1 = new BufferedWriter(fw1);
		bw1.write(CMDvideo);
		bw1.close();
		
		if (!fileaudio.exists()) {
			fileaudio.createNewFile();
		}
		FileWriter fw2 = new FileWriter(fileaudio.getAbsoluteFile());
		BufferedWriter bw2 = new BufferedWriter(fw2);
		bw2.write(CMDaudio);
		bw2.close();*/
		
		
		//CreateBatFileForMP4BoxForIE_CHR_FF(nameaudio, Localbatfile, convertType, command);
		//System.out.println("Done");
		return CMDvideo +"\n"+CMDaudio;
	}

	/**
	 * param : name:name of video (shouldn't not have space character). local:
	 * local to save file. ex: "D:/videofolder/" (file .bat, video output, .mpd
	 * file ...) convertType: create file bat for encode(run
	 * EXECUTE_FORMAT_WITH_FFPEG) or create .mpd file (LINK_MP4BOX) command:
	 * command to execute. ex:CREATE_MPD_IE create a .bat file to convert video,
	 * create .MPD file return: .bat + mpd file or video file...
	 */
	public String CreateBatFileForMP4BoxForIE_CHR_FF(String name, String local, String convertType, String command) {
		String CMD = convertType + "\n" + command + " \"" + local + name + "\\" + name + "_output_chrffie.mpd\" "
				+"\""+ local + name + "\\" + name + "an_input.mp4#video:id=video_3Mb\" "
				+"\""+ local + name + "\\" + name + "audio.mp4#audio:id=audio\"";
		//System.out.println("cmd= " + CMD);
		/*String Localbatfile = local + name + "\\";
		File folder = new File(Localbatfile);
		if (!folder.exists()) {
			folder.mkdir();
		}
		File file = new File(Localbatfile + name + "_output_chrffie.bat");
		System.out.println(Localbatfile);
		// if file doesn't exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}
		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(CMD);
		bw.close();
*/
		return CMD;
	}

	public String CreateBatFileForMP4Box(String name, String local, String convertType, String command) {
		String CMD =convertType + "\n" + command + " \"" + local + name + "\\" + name + "\" " + "-out \""
				+ local + name + "\\" + name + "_output.mpd\"";
		
		String check = "\n cd " +"\""+ local + name+ "\"\n" + "copy nul file.txt > nul";
				
		System.out.println("cmd= " + CMD);
		/*String Localbatfile = local + name + "\\";
		File folder = new File(Localbatfile);
		if (!folder.exists()) {
			folder.mkdir();
		}
		File file = new File(Localbatfile + name + ".bat");
		// System.out.println(Localbatfile);
		// if file doesn't exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}
		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(CMD);
		bw.close();*/

		return CMD + check;
		// System.out.println("Done");
	}

	public List<String> getFileMpd(String name) {
		List <String> link = new ArrayList<String>();
		link.add("/resources/video/" + name + "/" + name + "_output.mpd");
		link.add("/resources/video/" + name + "/" + name + "_output_chrffie.mpd");
		return link;
	}
	
	public void CreateBat(String name) throws IOException
	{
		ExecuteComandToFormatVideo createbatfile = new ExecuteComandToFormatVideo();
		ExecuteComandToFormatVideo createbatfile1 = new ExecuteComandToFormatVideo();
		ExecuteComandToFormatVideo createbatfile2 = new ExecuteComandToFormatVideo();
		String a = createbatfile.CreateBatFileForFFMPEG(name, LOCAL, LINK_FFMPEG, EXECUTE_FORMAT_WITH_FFPEG);
		String b = createbatfile1.CreateBatFileForMP4BoxForIE_CHR_FF(name, LOCAL, LINK_MP4BOX,CREATE_MPD_CHR_IE_FF);
		String c = createbatfile2.CreateBatFileForMP4Box(name, LOCAL, LINK_MP4BOX, CREATE_MPD_IE);
		
		String cmd = a+"\n"+b+"\n"+c;
		String Localbatfile = LOCAL + name + "\\";
		File folder = new File(Localbatfile);
		if (!folder.exists()) {
			folder.mkdir();
		}
		File file = new File(Localbatfile + name + ".bat");
		System.out.println(Localbatfile);
		// if file doesn't exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}
		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(cmd);
		bw.close();
	}

}
