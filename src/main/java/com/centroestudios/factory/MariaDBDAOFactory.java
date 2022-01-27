package com.centroestudios.factory;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;

import com.centroestudios.dao.AlumnoDAO;
import com.centroestudios.dao.AsignaturaDAO;
import com.centroestudios.dao.DepartamentoDAO;
import com.centroestudios.dao.ImpartenDAO;
import com.centroestudios.dao.ProfesorDAO;
import com.centroestudios.pool.BasicConnectionPool;

import org.apache.ibatis.jdbc.ScriptRunner;

public class MariaDBDAOFactory extends DAOFactory{
    final static String url = "jdbc:mariadb://localhost/centro_estudios";
    final static String user = "admin";
    final static String password = "1234";
    static BasicConnectionPool bcp;

    private ImpartenDAO impartenDAO = new ImpartenDAO();

    public MariaDBDAOFactory() {
        try {
            bcp = BasicConnectionPool.create(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Connection getConnection() throws SQLException {
        return bcp.getConnection();
    }

    @Override
    public boolean releaseConnection(Connection connection) {
        return bcp.releaseConnection(connection);
    }

    @Override
    public int getSize() {
        return bcp.getSize();
    }

    // add getUser, getURL....
    @Override
    public void shutdown() throws SQLException {
        bcp.shutdown();
    }

    @Override
    public AlumnoDAO getAlumnoDAO() {
        return new AlumnoDAO();
    }

    @Override
    public AsignaturaDAO getAsignaturaDAO() {
        return new AsignaturaDAO();
    }

    @Override
    public DepartamentoDAO getDepartamentoDAO() {
        return new DepartamentoDAO();
    }

    @Override
    public ProfesorDAO getProfesorDAO() {
        return new ProfesorDAO();
    }

    /**
     * Crea as táboas da base de datos.
     */
    @Override
    public boolean createDB() {
        try {
            ScriptRunner sr = new ScriptRunner(getConnection());
            Reader reader = new BufferedReader(new InputStreamReader(getClass().getResourceAsStream("/sql/init_db.sql")));
            sr.runScript(reader);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Borra as táboas da base de datos.
     */
    @Override
    public boolean clearDB() {
        try {
            ScriptRunner sr = new ScriptRunner(getConnection());
            Reader reader = new BufferedReader(new InputStreamReader(getClass().getResourceAsStream("/sql/clear_db.sql")));
            sr.runScript(reader);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
