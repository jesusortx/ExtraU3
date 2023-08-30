package mx.edu.utez.extrau3.models;

import mx.edu.utez.extrau3.models.Role;
import mx.edu.utez.extrau3.models.User;
import mx.edu.utez.extrau3.utils.MYSQLConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DaoUser {

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;
    private CallableStatement cs;

    //completo
    //select u.*, a.*, r.*  from users u
    //    join addresses a on u.id_address = a.id_address
    //    join roles r on u.id_role = r.id_role;

    public User loadUserByUsernameAndPasswordUser(String correo,
                                                  String contrasena) {
        System.out.println(correo + contrasena);
        try {
            conn = new MYSQLConnection().connect();
            String query = "select usuarios.id_user, usuarios.username, Role.role from usuarios  join Roles r on usuarios.id_role = r.id_role where username=? and password=?;";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, correo);
            pstm.setString(2, contrasena);
            rs = pstm.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setCorreo(rs.getString("correo"));

                Role role = new Role();
                role.setRole(rs.getString("role"));
                user.setRole(role);
                return user;
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoUser.class.getName())
                    .log(Level.SEVERE,
                            "Credentials mismatch: " + e.getMessage());
        } finally {
            close();
        }
        return null;
    }

    public void close() {
        try {
            if (conn != null) conn.close();
            if (pstm != null) pstm.close();
            if (rs != null) rs.close();
        } catch (SQLException e) {

        }

    }
}
