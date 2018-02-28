package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.Ad;
import Model.Answer;
import Model.Question;
import Model.User;
import dao.DAO;

public class DataBase implements DAO {

	Connection con;
	Statement stm;
	
	public DataBase() throws SQLException, InstantiationException, IllegalAccessException 
	{
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		con = DriverManager.getConnection("jdbc:mysql://localhost/javaee?"+"user=root&password=");		
		stm = con.createStatement();
	}
	
	@Override
	public void addNewUser(User user) throws SQLException {
		String query = "INSERT INTO user (LOGIN,PASSWORD,PHONE,NAME) VALUES ('"+user.getLOGIN()+"','"+user.getPASSWORD()+"','"+user.getPHONE()+"','"+user.getNAME()+"')";
		System.out.println(query);
		stm.executeUpdate(query);
	}

	@Override
	public User getUserById(int id) throws SQLException {
		String query = "SELECT * from user WHERE ID = "+id;
		ResultSet result = stm.executeQuery(query);
		User u = new User();
		while(result.next()) 
		{
			u.setID(result.getInt("ID"));
			u.setLOGIN(result.getString("LOGIN"));
			u.setPASSWORD(result.getString("PASSWORD"));
			u.setPHONE(result.getInt("PHONE"));
			u.setNAME(result.getString("NAME"));
		}
		return u;
	}

	@Override
	public Boolean checkUserLogin(String login, String password) throws SQLException {
		String query = "SELECT * from user WHERE LOGIN = '"+login+"' AND Password = '"+password+"' ";
		ResultSet result = stm.executeQuery(query);
		return result.next();
	}

	@Override
	public Boolean checkUserExist(String login) throws SQLException {
		String query = "SELECT * from user WHERE LOGIN = '"+login+"' ";
		ResultSet result = stm.executeQuery(query);
		return result.next();
	}
	
	@Override
	public void addNewAd(Ad ad) throws SQLException {
		String query = "INSERT INTO ad (USER_ID, NAME, PICTURE, ADDRESS, DESCR, PRIZE) VALUES ('"+ad.getUSER_ID()+"','"+ad.getNAME()+"','"+ad.getPICTURE()+"','"+ad.getADDRESS()+"','"+ad.getDESCR()+"','"+ad.getPRIZE()+"')";
		System.out.println(query);
		stm.executeUpdate(query);

	}

	@Override
	public User getUserByLogin(String login) throws SQLException {
		String query = "SELECT * from user WHERE LOGIN = '"+login+"'";
		ResultSet result = stm.executeQuery(query);
		User u = new User();
		while(result.next()) 
		{
			u.setID(result.getInt("ID"));
			u.setLOGIN(result.getString("LOGIN"));
			u.setPASSWORD(result.getString("PASSWORD"));
			u.setPHONE(result.getInt("PHONE"));
			u.setNAME(result.getString("NAME"));
		}
		
		return u;
	}


	@Override
	public void deleteAd(int id) throws SQLException {
		String query = "DELETE FROM ad WHERE id = "+id;
		System.out.println(query);
		stm.executeUpdate(query);
	}

	@Override
	public List<Ad> getAllAd() throws SQLException {
		List<Ad> ads = new ArrayList<Ad>();
		String query = "SELECT * FROM ad";
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Ad a = new Ad();
			a.setID(result.getInt("ID"));
			a.setUSER_ID(result.getInt("USER_ID"));
			a.setNAME(result.getString("NAME"));
			a.setPICTURE(result.getString("PICTURE"));
			a.setADDRESS(result.getString("ADDRESS"));
			a.setDESCR(result.getString("DESCR"));
			a.setPRIZE(result.getInt("PRIZE"));
			ads.add(a);
		}
		return ads;
	}

	@Override
	public List<Ad> getAdByUserID(int id) throws SQLException {
		List<Ad> ads = new ArrayList<Ad>();
		String query = "SELECT * FROM ad WHERE USER_ID = "+id;
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Ad a = new Ad();
			a.setID(result.getInt("ID"));
			a.setUSER_ID(result.getInt("USER_ID"));
			a.setNAME(result.getString("NAME"));
			a.setPICTURE(result.getString("PICTURE"));
			a.setADDRESS(result.getString("ADDRESS"));
			a.setDESCR(result.getString("DESCR"));
			a.setPRIZE(result.getInt("PRIZE"));
			ads.add(a);
		}
		return ads;
	}

	@Override
	public Ad getAdById(int ID) throws SQLException {
		String query = "SELECT * from ad WHERE ID = "+ ID;
		ResultSet result = stm.executeQuery(query);
		Ad a = new Ad();
		while(result.next()) 
		{
			a.setID(result.getInt("ID"));
			a.setUSER_ID(result.getInt("USER_ID"));
			a.setNAME(result.getString("NAME"));
			a.setPICTURE(result.getString("PICTURE"));
			a.setADDRESS(result.getString("ADDRESS"));
			a.setDESCR(result.getString("DESCR"));
			a.setPRIZE(result.getInt("PRIZE"));
		}	
		return a;
	}

	@Override
	public void UpdateAdByID(Ad ad) throws SQLException {
		String query = "UPDATE ad\r\n" + 
				"		SET NAME = '"+ad.getNAME()+"', PICTURE = '"+ad.getPICTURE()+"', DESCR = '"+ad.getDESCR()+"', PRIZE = '"+ad.getPRIZE()+"', ADDRESS = '"+ad.getADDRESS()+"'  \r\n" + 
				"		WHERE ID = "+ ad.getID();
		
		//"', DESCR = '"+ad.getDESCR()+"', PRIZE = '"+ad.getPRIZE()+
		System.out.println(query);
		stm.executeUpdate(query);
	}

	@Override
	public void addNewQuest(Question q) throws SQLException {
		String query = "INSERT INTO question (USER_ID, AD_ID, TEXT, STATUS) VALUES  ('"+q.getUSER_ID()+"','"+q.getAD_ID()+"','"+q.getTEXT()+"', 0)";
		System.out.println(query);
		stm.executeUpdate(query);
	}

	@Override
	public void addNewAnswer(Answer a) throws SQLException {
		String query = "INSERT INTO answer (USER_ID, QUEST_ID, TEXT) VALUES  ('"+a.getUSER_ID()+"','"+a.getQUEST_ID()+"','"+a.getTEXT()+"')";
		System.out.println(query);
		stm.executeUpdate(query);
		
	}



	@Override
	public Question getQuestById(int ID) throws SQLException {
		String query = "SELECT * from question WHERE ID = "+ ID;
		ResultSet result = stm.executeQuery(query);
		Question q = new Question();
		while(result.next()) 
		{
			q.setID(result.getInt("ID"));
			q.setUSER_ID(result.getInt("USER_ID"));
			q.setAD_ID(result.getInt("AD_ID"));
			q.setTEXT(result.getString("TEXT"));
			q.setSTATUS(result.getInt("STATUS"));
		}	
		return q;
	}

	@Override
	public Answer getAnswerById(int ID) throws SQLException {
		String query = "SELECT * from answer WHERE QUEST_ID = "+ ID;
		ResultSet result = stm.executeQuery(query);
		Answer an = new Answer();
		while(result.next()) 
		{
			an.setID(result.getInt("ID"));
			an.setUSER_ID(result.getInt("USER_ID"));
			an.setQUEST_ID(result.getInt("QUEST_ID"));
			an.setTEXT(result.getString("TEXT"));
		}	
		return an;
	}

	@Override
	public List<Question> getAllQuestByUserID(int id) throws SQLException {
		List<Question> quests = new ArrayList<Question>();
		String query = "SELECT * FROM question WHERE USER_ID = "+id;
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Question q = new Question();
			q.setID(result.getInt("ID"));
			q.setUSER_ID(result.getInt("USER_ID"));
			q.setAD_ID(result.getInt("AD_ID"));
			q.setTEXT(result.getString("TEXT"));
			q.setSTATUS(result.getInt("STATUS"));
			quests.add(q);
		}
		return quests;
	}

	@Override
	public List<Question> getAllQuestByAdID(int id) throws SQLException {
		List<Question> quests = new ArrayList<Question>();
		String query = "SELECT * FROM question WHERE AD_ID = "+id;
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Question q = new Question();
			q.setID(result.getInt("ID"));
			q.setUSER_ID(result.getInt("USER_ID"));
			q.setAD_ID(result.getInt("AD_ID"));
			q.setTEXT(result.getString("TEXT"));
			q.setSTATUS(result.getInt("STATUS"));
			quests.add(q);
		}
		return quests;
	}

	@Override
	public List<Question> getAllQuestToUserID(int id) throws SQLException {
		List<Question> quests = new ArrayList<Question>();
		String query = "SELECT *\r\n" + 
				"FROM question\r\n" + 
				"LEFT JOIN ad ON ad.ID=question.AD_ID\r\n" + 
				"LEFT JOIN User ON user.ID=ad.USER_ID\r\n" + 
				"WHERE user.ID = \r\n" + 
				""+id;
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Question q = new Question();
			q.setID(result.getInt("ID"));
			q.setUSER_ID(result.getInt("USER_ID"));
			q.setAD_ID(result.getInt("AD_ID"));
			q.setTEXT(result.getString("TEXT"));
			q.setSTATUS(result.getInt("STATUS"));
			quests.add(q);
		}
		return quests;
	}

	@Override
	public void UpdateQuestdByID(Question q) throws SQLException {
		String query = "UPDATE question\r\n" + 
				"		SET STATUS = '"+q.getSTATUS()+"'  \r\n" + 
				"		WHERE ID = "+ q.getID();
		
		System.out.println(query);
		stm.executeUpdate(query);
	}

}
