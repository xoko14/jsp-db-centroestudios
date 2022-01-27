package com.centroestudios.dao;

import java.sql.Connection;
import java.util.List;

public interface Dao<T> {
    T get(Connection conn, int id);
   
    List<T> getAll(Connection conn);

    void batchInsert(Connection conn, List<T> list);
   }
