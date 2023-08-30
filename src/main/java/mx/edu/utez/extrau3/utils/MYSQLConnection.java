package mx.edu.utez.extrau3.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MYSQLConnection {
    final String DBNAME = "ExtraU3";
    final String USER = "root";
    final String PASSWORD = "Voluntari_App0123";
    final String TIMEZONE = "America/Mexico_City";
    final String USESSL = "false";
    final String PUBLICKEY = "true";
    final String DDLAUTO = "true";
    final String HOST = "44.218.217.202";

    public Connection connect() {
        String dataSource = String.format("jdbc:mysql://%s:3306/%s?user=%s&password=%s&serverTimezone=%s&useSSL=%s&allowPublicKeyRetrieval=%s&createDatabaseIfNotExist=%s", HOST, DBNAME, USER, PASSWORD, TIMEZONE, USESSL, PUBLICKEY, DDLAUTO);
        try {
            return DriverManager.getConnection(dataSource);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
