package com.centroestudios.factory;

import java.sql.Connection;

import com.centroestudios.dao.AlumnoDAO;
import com.centroestudios.dao.AsignaturaDAO;
import com.centroestudios.dao.DepartamentoDAO;
import com.centroestudios.dao.ProfesorDAO;


public abstract class DAOFactory {
    // List of DAO types supported by the factory
    public static final int MYSQL = 1;
    public static final int MARIADB = 2;

    public abstract Connection getConnection() throws Exception;

    // There will be a method for each DAO that can be
    // created. The concrete factories will have to
    // implement these methods.
    public abstract AlumnoDAO getAlumnoDAO();
    public abstract AsignaturaDAO getAsignaturaDAO();
    public abstract DepartamentoDAO getDepartamentoDAO();
    public abstract ProfesorDAO getProfesorDAO();
    
    public abstract boolean createDB();
    public abstract boolean clearDB();


    public static DAOFactory getDAOFactory(int whichFactory) {

        switch (whichFactory) {
        case MARIADB:
            return new MariaDBDAOFactory();
        default:
            return null;
        }
    }

    public boolean releaseConnection(Connection connection) {
        // TODO Auto-generated method stub
        return false;
    }

    public int getSize() {
        // TODO Auto-generated method stub
        return 0;
    }

    public void shutdown() throws Exception {
        // TODO Auto-generated method stub
    }
}
