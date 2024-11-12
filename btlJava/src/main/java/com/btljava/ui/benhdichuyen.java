/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btljava.ui;

import com.btljava.controller.BenhNhanController;
import com.btljava.dao.impl.benhnhanDao;
import com.btljava.helper.MessageDialog;
import com.btljava.helper.ShereData;
import com.btljava.model.benhnhan;
import java.awt.Color;
import java.util.List;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ASUS
 */
public class benhdichuyen extends javax.swing.JDialog {
    private DefaultTableModel model;
    int ids = 0;
    private BenhNhanController dao = new BenhNhanController();
    /**
     * Creates new form benhdichuyen
     */
    public benhdichuyen(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }
    
    private void initTable(){
        model = new DefaultTableModel();
        model.setColumnIdentifiers(new String[] {"ID", "Mã bệnh nhân", "Họ tên", "Ngày sinh", "Địa chỉ", "Giới tính", "Nhóm máu", "Tình trạng", "Chức vụ", "Đối tượng", "Ngày vào"});
        tblTable.setModel(model);
        
    }
    
    private void loadDatatable(){
        try{
//            benhnhanDao dao = new benhnhanDao();
            List<benhnhan> list = dao.benhdichuyen();
            model.setRowCount(0);
            for(benhnhan bv : list){
                model.addRow(new Object[] {
                    bv.getId(), bv.getMabenhnhan(), bv.getHoten(), bv.getNgaysinh(), bv.getDiachi(), bv.getGioitinh() == 1 ? "Nam" : "Nữ",
                    bv.getNhommau(), bv.getTinhtrang(), bv.getChucvu_id(), bv.getDoituong_id(), bv.getNgayvao()
                });
            }
            
            model.fireTableDataChanged();
        }catch(Exception e){
            e.printStackTrace();
            MessageDialog.showMessageError(this, e.getMessage(), "Lỗi");
        }
    }
    
    private void timkiem(){
        try{
//            benhnhanDao dao = new benhnhanDao();
            List<benhnhan> list = dao.timkiem(timkiems.getText());
            model.setRowCount(0);
            for(benhnhan bv : list){
                model.addRow(new Object[] {
                    bv.getId(), bv.getMabenhnhan(), bv.getHoten(), bv.getNgaysinh(), bv.getDiachi(), bv.getGioitinh() == 1 ? "Nam" : "Nữ",
                    bv.getNhommau(), bv.getTinhtrang(), bv.getChucvu_id(), bv.getDoituong_id(), bv.getNgayvao()
                });
            }
            
            model.fireTableDataChanged();
        }catch(Exception e){
            e.printStackTrace();
            MessageDialog.showMessageError(this, e.getMessage(), "lỗi");
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        chucvus = new javax.swing.JTextField();
        doituongs = new javax.swing.JTextField();
        ngayvaos = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        timkiems = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        diachis = new javax.swing.JTextField();
        ngaysinhs = new javax.swing.JTextField();
        hotens = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        nams = new javax.swing.JRadioButton();
        nus = new javax.swing.JRadioButton();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblTable = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        mabenhnhans = new javax.swing.JTextField();
        nhommaus = new javax.swing.JTextField();
        tinhtrangs = new javax.swing.JTextField();
        quyen = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel2.setText("Mã bệnh nhân");

        jLabel3.setText("Họ tên");

        timkiems.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                timkiemsKeyReleased(evt);
            }
        });

        jLabel11.setText("Tìm kiếm");

        jLabel4.setText("Ngày sinh");

        jLabel5.setText("Địa chỉ");

        jLabel12.setText("Giới tính");

        jLabel6.setText("Ngày vào");

        nams.setText("Nam");

        nus.setText("Nữ");

        jLabel7.setText("Đối tượng");

        jLabel8.setText("Chức vụ");

        jLabel9.setText("Tình trạng");

        tblTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tblTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblTableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblTable);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 50)); // NOI18N
        jLabel1.setText("Bệnh nhân mắc bệnh di chuyền");

        jLabel10.setText("Nhóm máu");

        quyen.setText("jButton1");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(46, 46, 46)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 522, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel11)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(timkiems, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addComponent(jLabel12)
                                                .addGap(18, 18, 18)
                                                .addComponent(nams)
                                                .addGap(18, 18, 18)
                                                .addComponent(nus)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                .addComponent(jLabel6))
                                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addComponent(jLabel5)
                                                        .addGap(55, 55, 55)
                                                        .addComponent(diachis, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addComponent(jLabel4)
                                                        .addGap(39, 39, 39)
                                                        .addComponent(ngaysinhs, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addComponent(jLabel3)
                                                        .addGap(57, 57, 57)
                                                        .addComponent(hotens, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addComponent(jLabel2)
                                                        .addGap(18, 18, 18)
                                                        .addComponent(mabenhnhans, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addComponent(jLabel9, javax.swing.GroupLayout.Alignment.TRAILING)
                                                    .addComponent(jLabel8, javax.swing.GroupLayout.Alignment.TRAILING)
                                                    .addComponent(jLabel7, javax.swing.GroupLayout.Alignment.TRAILING)
                                                    .addComponent(jLabel10, javax.swing.GroupLayout.Alignment.TRAILING))))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(ngayvaos, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(doituongs, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(chucvus, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(tinhtrangs, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(nhommaus, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 59, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(103, 103, 103)
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short.MAX_VALUE)
                        .addComponent(quyen, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(65, 65, 65))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(quyen, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(34, 34, 34)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel10)
                    .addComponent(mabenhnhans, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(nhommaus, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jLabel9)
                    .addComponent(tinhtrangs, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(hotens, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jLabel8)
                    .addComponent(chucvus, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ngaysinhs, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(jLabel5)
                    .addComponent(doituongs, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(diachis, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jLabel12)
                    .addComponent(ngayvaos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(nams)
                    .addComponent(nus))
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11)
                    .addComponent(timkiems, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 69, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 341, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void timkiemsKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_timkiemsKeyReleased
        // TODO add your handling code here:
        String value = timkiems.getText();
        if(value.equals("")){
            loadDatatable();
        }else{
            timkiem();
        }
    }//GEN-LAST:event_timkiemsKeyReleased

    private void tblTableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblTableMouseClicked
        // TODO add your handling code here:
        try{
            int row = tblTable.getSelectedRow();
            if(row >= 0){
                ids = (int) tblTable.getValueAt(row, 0); // "0" nghĩa là lấy từ vị trí đầu tiên trong bảng database
//                benhnhanDao dao = new benhnhanDao();
                benhnhan list = dao.findbyid(ids);
                String mabenhnhan = String.valueOf(list.getMabenhnhan());
                String chucvu =  String.valueOf(list.getChucvu_id());
                String doituong = String.valueOf(list.getDoituong_id());
                if(list != null){
                    mabenhnhans.setText(mabenhnhan);
                    hotens.setText(list.getHoten());
                    ngaysinhs.setText(list.getNgaysinh());
                    diachis.setText(list.getDiachi());
                    nams.setSelected(list.getGioitinh() == 1 ? true:false);
                    nus.setSelected(list.getGioitinh() == 0 ? true:false);
                    nhommaus.setText(list.getNhommau());
                    tinhtrangs.setText(list.getTinhtrang());
                    chucvus.setText(chucvu);
                    doituongs.setText(doituong);
                    ngayvaos.setText(list.getNgayvao());
                }
            }
        }catch(Exception e){
            e.printStackTrace();
            MessageDialog.showMessageError(this, e.getMessage(), "Lỗi");
        }
    }//GEN-LAST:event_tblTableMouseClicked

    private void checkLogin(){
        int phanquyen = ShereData.dangnhapss.getPhanquyen();
        if(phanquyen == 1){
            quyen.setForeground(Color.red);
            quyen.setText("Admin");
        }
        if(phanquyen == 2){
            quyen.setForeground(Color.red);
            quyen.setText("Quản lý");
        }
        if(phanquyen == 3){
            quyen.setForeground(Color.red);
            quyen.setText("Bệnh nhân");
        }
    }
    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
        initTable();
        loadDatatable();
        checkLogin();
    }//GEN-LAST:event_formWindowOpened

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(benhdichuyen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(benhdichuyen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(benhdichuyen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(benhdichuyen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                benhdichuyen dialog = new benhdichuyen(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField chucvus;
    private javax.swing.JTextField diachis;
    private javax.swing.JTextField doituongs;
    private javax.swing.JTextField hotens;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField mabenhnhans;
    private javax.swing.JRadioButton nams;
    private javax.swing.JTextField ngaysinhs;
    private javax.swing.JTextField ngayvaos;
    private javax.swing.JTextField nhommaus;
    private javax.swing.JRadioButton nus;
    private javax.swing.JButton quyen;
    private javax.swing.JTable tblTable;
    private javax.swing.JTextField timkiems;
    private javax.swing.JTextField tinhtrangs;
    // End of variables declaration//GEN-END:variables
}
