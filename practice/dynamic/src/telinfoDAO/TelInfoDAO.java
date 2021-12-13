package telinfoDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import telinfoDBConn.TelInfoDBConn;

import telinfoVO.TelInfoVO;

public class TelInfoDAO {
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException{
		con= new TelInfoDBConn().getConnection();
	}
	public void pstmtClose() throws SQLException{
		if(pstmt != null){ pstmt.close(); }
	}
	public void getAllInfoClose() throws SQLException{;
		if(rs != null){ rs.close(); }
		if(pstmt != null){ pstmt.close(); }
		if(con != null){ con.close(); }
	}
	public boolean insert_nametel(int id, String name, String tel, String sDate){
		String sql = "insert into TelTable5 values(?,?,?,?)";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, tel);
			int year = Integer.parseInt(sDate.substring(0,4))-1900;
			int month=Integer.parseInt(sDate.substring(4,6))-1;
			int day = Integer.parseInt(sDate.substring(6,8));
			Date d = new Date(year,month,day);
			pstmt.setDate(4, d);
			pstmt.executeUpdate();/////////
		}catch(SQLException e){
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	
	
	
	
	
	public ArrayList <TelInfoVO> getAllInfo() 
			throws SQLException{
		ArrayList<TelInfoVO> tiarray = new ArrayList<TelInfoVO>();
		String sql = "SELECT * FROM TelTable5 ORDER BY id";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String tel = rs.getString("tel");
			Date d = rs.getDate("d");
			
			TelInfoVO tv = new TelInfoVO(id,name,tel,d);
			tiarray.add(tv);
		}
		return tiarray;
	}
	
	////////////// 원하는 한사람 찾는 메소드 만들기  ////////////
	public TelInfoVO search_nametel(String oriName)//홍길동
	                              		throws SQLException{
		TelInfoVO tv=null;
		String sql = "SELECT * FROM TelTable5 where name=?";
		//? : 원하는 사람 이름 
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, oriName);
		rs = pstmt.executeQuery();//
		if(rs.next()){//찾았으면 rs종이박스에 홍길동정보가 있다
			int id=rs.getInt("id");
			String name=rs.getString("name");
			String tel=rs.getString("tel");
			Date d=rs.getDate("d");//여기까지의 홍길동정보 전부꺼내서 
			tv=new TelInfoVO(id,name,tel,d);//생성자 사용하여 vo 그릇에 넣자 
			                 
	}else { //그런 이름이 없으면 
		tv=null; //tv객체참조변수에 null 
	}
	return tv;// tv리턴 
	}//search_nametel()-end
	
	
	
	
	
	public boolean update_nametel(String tel2,String name2){
		    //name->tel2  
		String sql = "update TelTable5 set tel=? where name=?";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, tel2);//////
			pstmt.setString(2, name2);/////////
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("update Exception");
			return false;
		}
		return true;
	}
	//id->name2
	public boolean delete_nametel(String name2){
		String sql = "delete from TelTable5 where name=?";/////
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name2);
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("delete Exception");
			return false;
		}
		return true;
	}
}
