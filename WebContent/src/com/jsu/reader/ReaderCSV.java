package com.jsu.reader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import com.csvreader.CsvReader;
import com.csvreader.CsvWriter;

public class ReaderCSV {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String filePath = "D:\\Êý¾Ý¼¯\\ctrip_aim_inf0.csv";
		File file = new File(filePath);
		Connection connection = null;
		PreparedStatement pStatement = null;
		try {
			FileInputStream fileInputStream = new FileInputStream(file);
			CsvReader csvReader = new CsvReader(fileInputStream,Charset.forName("gbk"));
			
//			csvReader.readHeaders();
			connection = BaseDao.getConnection();

			int result,i=1,j=1;
			
			System.out.println(connection);
			StringBuffer sBuffer = new StringBuffer();
			while(csvReader.readRecord()) {
				
				String str = csvReader.getRawRecord();
				String []strs = str.split(",",2);
				System.out.println(strs[0]);
				System.out.println(strs[1]);
//				System.out.println(sBuffer.length());
				if(strs[0].contains("2017")) {
					sBuffer.append(strs[0]);
					sBuffer.append(',');
					System.out.println(sBuffer.toString());
				}else {
					String sql = "insert into scenery values(?,?,?,?,?)";
					pStatement = connection.prepareStatement(sql);
					System.out.println(i);
					pStatement.setObject(1,i++);
					pStatement.setObject(2,strs[0]);
					pStatement.setObject(3,strs[1]);
					pStatement.setObject(4, 0);	
					if (sBuffer.length()!=0) {
						pStatement.setObject(5, sBuffer.toString());
						int sb_length=sBuffer.length();
						sBuffer.delete(0, sb_length);
					}else {
						pStatement.setObject(5, null);
					}
					result = pStatement.executeUpdate();
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			BaseDao.closeAll(connection, pStatement, null);
		}
		
	}

}
