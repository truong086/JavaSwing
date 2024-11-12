/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btljava.daos;

import com.btljava.helper.DatabaseHelper;
import com.btljava.model.yta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface IYta {
    public boolean insert(yta nv) throws Exception;
    
    public boolean update(yta nv) throws Exception;
    
    public boolean updates(yta nv) throws Exception;
    
    public boolean delete(String nv) throws Exception;
    
    public boolean deletes(String nv) throws Exception;
    
    public List<yta> fiindAll() throws Exception;
    
    public List<yta> timkiem(String s) throws Exception;
    
    public yta findby(String id) throws Exception;
    
    public yta finbyid(int id) throws Exception;
}
