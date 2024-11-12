/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btljava.Service;

import com.btljava.model.nhanvien;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface INhanVienService {
    public boolean insert(nhanvien nv) throws Exception;
    
    public boolean update(nhanvien nv) throws Exception;
    
    public boolean updates(nhanvien nv) throws Exception;
    
    public boolean delete(String nv) throws Exception;
    
    public boolean deletes(String nv) throws Exception;
    
    public List<nhanvien> fiindAll() throws Exception;
    
    public List<nhanvien> timkiem(String s) throws Exception;
    
    public nhanvien findby(String id) throws Exception;
    
    public nhanvien finbyid(int id) throws Exception;
    
    public List<nhanvien> chucvu(int chucvu) throws Exception;
}
