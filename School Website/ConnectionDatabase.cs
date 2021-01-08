using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace School_Website
{
    public class ConnectionDatabase
    {
     
      
     public SqlConnection DatabaseString = new SqlConnection("Data Source=DESKTOP-OEL3PAV\\SQLEXPRESS;Initial Catalog=USERSDATA;Integrated Security=True");
       public string FIRSTNAME, PASSWORD,USERTYPE;

        public void typeAccount(string typeAcc)
        {
            
            DatabaseString.Close();
            DatabaseString.Open();
            SqlCommand cmd = new SqlCommand("SELECT FIRSTNAME FROM ACCOUNTSDATA WHERE USERTYPE =@dataTYPE", DatabaseString); //SQL COMMAND
            cmd.Parameters.AddWithValue("@dataType",typeAcc.Trim());
            SqlDataReader DataReader = cmd.ExecuteReader(); //EXECUTION OF COMMAND
            if (DataReader.HasRows == true)
            {
                DataReader.Read(); // checking columns name if exist
                FIRSTNAME = DataReader["FIRSTNAME"].ToString();
                PASSWORD = DataReader["PASSWORD"].ToString();
                USERTYPE = DataReader["USERTYPE"].ToString();
            }
            else
            {
                FIRSTNAME =""; //CLEAR VARIABLE FIELDS
                PASSWORD = "";
                USERTYPE = "";

            }
            DataReader.Close();
        }
        public Boolean IslogIn(string username, string password) {
            DatabaseString.Close();
            DatabaseString.Open();
            string student = "STUDENT";
            Boolean Islog = false;
            SqlCommand cmd = new SqlCommand("SELECT FIRSTNAME,PASSWORD FROM ACCOUNTSDATA WHERE FIRSTNAME=@USERDATA AND USERTYPE=@STUDENT  AND  PASSWORD=@USERPASSWORD  ", DatabaseString);
            cmd.Parameters.AddWithValue("@USERDATA",username.Trim());
            cmd.Parameters.AddWithValue("@USERPASSWORD", password.Trim());
            cmd.Parameters.AddWithValue("@STUDENT",student.Trim());

            SqlDataReader DataReader = cmd.ExecuteReader();

            if (DataReader.HasRows==true) {
                Islog = true;
                goto RESULT; // custome method without accessmodifier
            }
            DataReader.Close();

        RESULT:
            return Islog;
            
        }

        public Boolean Isadmin(string username, string password)
        {
            DatabaseString.Close();
            DatabaseString.Open();
            string ADMIN = "ADMIN";

            Boolean Islog = false;
            SqlCommand cmd = new SqlCommand("SELECT FIRSTNAME,PASSWORD FROM ACCOUNTSDATA WHERE FIRSTNAME=@USERDATA AND USERTYPE=@ADMIN  AND  PASSWORD=@USERPASSWORD", DatabaseString);
            cmd.Parameters.AddWithValue("@USERDATA", username.Trim());
            cmd.Parameters.AddWithValue("@USERPASSWORD", password.Trim());
            cmd.Parameters.AddWithValue("@ADMIN", ADMIN.Trim());
            SqlDataReader DataReader = cmd.ExecuteReader();

            if (DataReader.HasRows == true)
            {
                Islog = true;
                goto RESULT; // custome method without accessmodifier
            }
            DataReader.Close();

        RESULT:
            return Islog;

        }
    }
    
}