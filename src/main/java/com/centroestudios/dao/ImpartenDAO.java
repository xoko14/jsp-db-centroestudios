package com.centroestudios.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.centroestudios.dao.ImpartenDAO.Imparten;

public class ImpartenDAO implements Dao<Imparten> {

    @Override
    public Imparten get(Connection conn, int id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Imparten> getAll(Connection conn) {
        List<Imparten> lista = new ArrayList<>();
        try {
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("select * from imparten");
            while (rs.next()) {
                Imparten item = new Imparten();
                item.setProfesor(rs.getInt(1));
                item.setAsignatura(rs.getInt(2));
                item.setAlumno(rs.getInt(3));
                item.setCurso(rs.getInt(4));
                lista.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }

    @Override
    public void batchInsert(Connection conn, List<Imparten> list) {
        try {
            PreparedStatement s = conn.prepareStatement("insert into imparten values (?, ?, ?, ?)");
            for (Imparten item : list) {
                s.setInt(1, item.getProfesor());
                s.setInt(2, item.getAsignatura());
                s.setInt(3, item.getAlumno());
                s.setInt(4, item.getCurso());
                s.addBatch();
            }
            s.executeBatch();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    class Imparten {
        private int profesor;
        private int asignatura;
        private int alumno;
        private int curso;

        public int getProfesor() {
            return this.profesor;
        }

        public void setProfesor(int profesor) {
            this.profesor = profesor;
        }

        public int getAsignatura() {
            return this.asignatura;
        }

        public void setAsignatura(int asignatura) {
            this.asignatura = asignatura;
        }

        public int getAlumno() {
            return this.alumno;
        }

        public void setAlumno(int alumno) {
            this.alumno = alumno;
        }

        public int getCurso() {
            return this.curso;
        }

        public void setCurso(int curso) {
            this.curso = curso;
        }

        public Imparten() {
        }
    }
}
