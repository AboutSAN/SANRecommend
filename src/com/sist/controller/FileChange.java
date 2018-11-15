package com.sist.controller;
import java.util.*;
import java.io.*;
/*
 * 	com.sist.music.model.ListModel
 * 	com.sist.music.model.UpdateModel
 * 	com.sist.music.model.DeleteModel
 */
public class FileChange {
	ArrayList<String> list=new ArrayList<String>();
	public ArrayList<String> componentScan(ArrayList<String> pList)
	{
		try
		{
			String path="C:\\Users\\sohee\\git\\san\\Mountain2\\src\\";
			for(String pack:pList)
			{
				String s=pack.replace(".", "\\");
				// com.sist ==> com\\sist
				s=path+s;
				File dir=new File(s);
				File[] files=dir.listFiles();
				for(File f:files)
				{
					String ext=f.getName();
					ext=ext.substring(ext.lastIndexOf(".")+1);
					/*
					 *  A.java
					 *  B.java
					 *  C.xml
					 */
					// 파일의 확장자
					if(ext.equals("java"))
					{
						String model=pack+"."+f.getName().substring(0,f.getName().lastIndexOf("."));
						list.add(model);
					}
				}
			}
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return list;
	}
}
