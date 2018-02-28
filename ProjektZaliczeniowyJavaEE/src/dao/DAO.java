package dao;

import java.sql.SQLException;
import java.util.List;
import Model.Ad;
import Model.Answer;
import Model.Question;
import Model.User;

public interface DAO {

	void addNewUser(User user) 	throws SQLException;		//dodawanie u�ytkownika
	User getUserById(int id) 	throws SQLException;		//user po id
	
	Boolean checkUserLogin(String login, String password) throws SQLException;	//logowanie
	Boolean checkUserExist(String login) 			throws SQLException;	//sprawdzanie czy u�ytkownik o 
											//okre�lonym loginie jest ju� w bazie
	User getUserByLogin(String login) 	throws SQLException;		//user po loginie do logowania
	void addNewAd(Ad ad) 			throws SQLException;		//dodawanie og�oszenia do bazy
	void deleteAd(int id) 			throws SQLException;		//usuwanie og�oszenia z bazy
	List<Ad> getAllAd() 			throws SQLException;		//wszystkie og�oszenia 
	List<Ad> getAdByUserID(int id) 		throws SQLException;		//wszystkie og�oszenia u�ytkownika
	Ad getAdById(int id) 			throws SQLException;		//og�oszenie  po id
	void UpdateAdByID(Ad ad) 		throws SQLException;		//update og�oszenia po id
	void UpdateQuestdByID(Question q) 		throws SQLException;		//update og�oszenia po id

	void addNewQuest(Question q) 			throws SQLException;		//dodawanie og�oszenia do bazy
	void addNewAnswer(Answer a) 			throws SQLException;		//usuwanie og�oszenia z bazy
	List<Question> getAllQuestByUserID(int id) 			throws SQLException;
	List<Question> getAllQuestByAdID(int id) 			throws SQLException;
	List<Question> getAllQuestToUserID(int id) 			throws SQLException;

	Question getQuestById(int id) 			throws SQLException;
	Answer getAnswerById(int id) 			throws SQLException;
}
