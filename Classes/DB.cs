using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace zachswogger.Classes
{
    public class DB
    {
        private DB()
        {
        }

        public string Server { get; set; } = "127.0.0.1";
        public string Port = "3306";
        public string DatabaseName { get; set; } = "zachswogger";
        public string UserName { get; set; } = "root";
        public string Password { get; set; } = "root";

        public MySqlConnection Connection { get; set; }

        private static DB _instance = null;
        public static DB Instance()
        {
            if (_instance == null)
                _instance = new DB();
            return _instance;
        }

        public bool IsConnect()
        {
            if (Connection == null ||Connection.State == System.Data.ConnectionState.Closed)
            {
                if (String.IsNullOrEmpty(DatabaseName))
                {
                    return false;
                }    

                string connstring = string.Format("Server={0}; Port= {4}; database={1}; UID={2}; password={3}", Server, DatabaseName, UserName, Password, Port);
                Connection = new MySqlConnection(connstring);
                Connection.Open();
            }

            return true;
        }

        public void Close()
        {
            Connection.Close();
        }

        public static bool insert(string tableName, List<Tuple<string, string>> parameters)
        {
            if (parameters == null || tableName == null)
            {
                return false;
            }

            string command = "INSERT INTO " + tableName + " ";
            string columns = "(";
            string arguments = "VALUES (";

            Tuple<string, string> last = parameters[parameters.Count - 1];
            foreach(Tuple<string, string> parameter in parameters)
            {
                columns += parameter.Item1;
                arguments += "'" + parameter.Item2 + "'";

                if (parameter != last)
                {
                    columns += ", ";
                    arguments += ", ";
                }
            }

            columns += ") ";
            arguments+= "); ";

            var dbCon = DB.Instance();
            if (dbCon.IsConnect())
            {
                string query = command + columns + arguments;
                var cmd = new MySqlCommand(query, dbCon.Connection);
                if (cmd.ExecuteNonQuery() == 0)
                {
                    return false;
                }
                dbCon.Close();
                return true;
            }

            return false;
        }

        public static bool ifExists(string tableName, string param1, string likeOrEqual, string param2)
        {
            if (tableName == null || likeOrEqual == null || param1 == null || param2 == null)
            {
                return false;
            }
            
            var dbCon = DB.Instance();
            if (dbCon.IsConnect())
            {
                string query = string.Format("SELECT  * FROM {0} WHERE {1} {2} '{3}' LIMIT 1", tableName, param1, likeOrEqual, param2);
                var cmd = new MySqlCommand(query, dbCon.Connection);

                using (DbDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        return true;
                    }
                }
                dbCon.Close();
            }
            return false;
        }
    }
}