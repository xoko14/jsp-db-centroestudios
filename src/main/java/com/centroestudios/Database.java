package com.centroestudios;

import com.centroestudios.factory.DAOFactory;
import com.centroestudios.factory.MariaDBDAOFactory;

public class Database {
    private static MariaDBDAOFactory mariaDBDAOFactory = new MariaDBDAOFactory();

    public static MariaDBDAOFactory getMariaDBDAOFactory(){
        return mariaDBDAOFactory;
    }
}
