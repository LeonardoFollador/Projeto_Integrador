/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import controller.MenuAdmController;
import java.awt.Toolkit;
import model.Utilitarios;

/**
 *
 * @author Th3Br
 */
public class AdmView extends javax.swing.JFrame {
    
    

    private final MenuAdmController controller;
    UsuarioPanel usuarioPane = new UsuarioPanel();
    PrincipalMenuPane menuPrincipal = new PrincipalMenuPane();
    ProdutoPane produtoPane = new ProdutoPane();
    ClientePane clientePane = new ClientePane();
    HistoricoPane historicoPane = new HistoricoPane();
    VendaPane vendaPane = new VendaPane();
    
    public AdmView() {
      
        initComponents();
        this.setExtendedState(AdmView.MAXIMIZED_BOTH);//resolução do monitor
        
        MainPane.add(usuarioPane);
        MainPane.add(menuPrincipal);
        MainPane.add(produtoPane);
        MainPane.add(clientePane);
        MainPane.add(historicoPane);
        MainPane.add(vendaPane);
        
        controller = new MenuAdmController(this);
        controller.menuPrincipal();    
        Utilitarios u = new Utilitarios();
        u.InserirIcone(this);
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        BotaoAbrirPaneUsuario = new javax.swing.JButton();
        CampoAbrirPaneProduto = new javax.swing.JButton();
        BotaoAbrirPaneClientes = new javax.swing.JButton();
        BotaoAbrirPaneHistorico = new javax.swing.JButton();
        BotaoAbrirPaneVenda = new javax.swing.JButton();
        MainPane = new javax.swing.JLayeredPane();
        BotaoAbrirPaneHome = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        BotaoAbrirPaneUsuario.setText("Usuarios");
        BotaoAbrirPaneUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAbrirPaneUsuarioActionPerformed(evt);
            }
        });

        CampoAbrirPaneProduto.setText("Produtos");
        CampoAbrirPaneProduto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoAbrirPaneProdutoActionPerformed(evt);
            }
        });

        BotaoAbrirPaneClientes.setText("Clientes");
        BotaoAbrirPaneClientes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAbrirPaneClientesActionPerformed(evt);
            }
        });

        BotaoAbrirPaneHistorico.setText("Histórico de vendas");
        BotaoAbrirPaneHistorico.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAbrirPaneHistoricoActionPerformed(evt);
            }
        });

        BotaoAbrirPaneVenda.setText("Iniciar uma venda");
        BotaoAbrirPaneVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAbrirPaneVendaActionPerformed(evt);
            }
        });

        MainPane.setLayout(new java.awt.CardLayout());

        BotaoAbrirPaneHome.setText("Home");
        BotaoAbrirPaneHome.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAbrirPaneHomeActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(45, 45, 45)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(BotaoAbrirPaneUsuario, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(CampoAbrirPaneProduto, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(BotaoAbrirPaneClientes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(BotaoAbrirPaneHistorico, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(BotaoAbrirPaneVenda, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(BotaoAbrirPaneHome, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(106, 106, 106)
                .addComponent(MainPane, javax.swing.GroupLayout.DEFAULT_SIZE, 490, Short.MAX_VALUE)
                .addGap(170, 170, 170))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(BotaoAbrirPaneHome, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(BotaoAbrirPaneVenda, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(BotaoAbrirPaneUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(CampoAbrirPaneProduto, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(BotaoAbrirPaneClientes, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(BotaoAbrirPaneHistorico, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(MainPane))
                .addGap(188, 188, 188))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public ClientePane getClientePane() {
        return clientePane;
    }

    public void setClientePane(ClientePane clientePane) {
        this.clientePane = clientePane;
    }

    public UsuarioPanel getUsuarioPane() {
        return usuarioPane;
    }

    public void setUsuarioPane(UsuarioPanel usuarioPane) {
        this.usuarioPane = usuarioPane;
    }

    public PrincipalMenuPane getMenuPrincipal() {
        return menuPrincipal;
    }

    public void setMenuPrincipal(PrincipalMenuPane menuPrincipal) {
        this.menuPrincipal = menuPrincipal;
    }

    public ProdutoPane getProdutoPane() {
        return produtoPane;
    }

    public void setProdutoPane(ProdutoPane produtoPane) {
        this.produtoPane = produtoPane;
    }
    
    public HistoricoPane getHistoricoPane() {
        return historicoPane;
    }

    public void setHistoricoPane(HistoricoPane HistoricoPane) {
        this.historicoPane = historicoPane;
    }
    
    public VendaPane getVendaPane() {
        return vendaPane;
    }

    public void setVendaPane(VendaPane vendaPane) {
        this.vendaPane = vendaPane;
    }

    private void BotaoAbrirPaneUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAbrirPaneUsuarioActionPerformed
        controller.usuarioPane();
    }//GEN-LAST:event_BotaoAbrirPaneUsuarioActionPerformed

    private void CampoAbrirPaneProdutoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoAbrirPaneProdutoActionPerformed
        controller.produtoPane();
    }//GEN-LAST:event_CampoAbrirPaneProdutoActionPerformed

    private void BotaoAbrirPaneHomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAbrirPaneHomeActionPerformed
        controller.menuPrincipal();
    }//GEN-LAST:event_BotaoAbrirPaneHomeActionPerformed

    private void BotaoAbrirPaneClientesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAbrirPaneClientesActionPerformed
        controller.clientePane();
    }//GEN-LAST:event_BotaoAbrirPaneClientesActionPerformed

    private void BotaoAbrirPaneVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAbrirPaneVendaActionPerformed
        controller.vendaPane();
    }//GEN-LAST:event_BotaoAbrirPaneVendaActionPerformed

    private void BotaoAbrirPaneHistoricoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAbrirPaneHistoricoActionPerformed
        controller.historicoPane();
    }//GEN-LAST:event_BotaoAbrirPaneHistoricoActionPerformed

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
            java.util.logging.Logger.getLogger(AdmView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AdmView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AdmView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AdmView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AdmView().setVisible(true);
            }
        });
    } 
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotaoAbrirPaneClientes;
    private javax.swing.JButton BotaoAbrirPaneHistorico;
    private javax.swing.JButton BotaoAbrirPaneHome;
    private javax.swing.JButton BotaoAbrirPaneUsuario;
    private javax.swing.JButton BotaoAbrirPaneVenda;
    private javax.swing.JButton CampoAbrirPaneProduto;
    private javax.swing.JLayeredPane MainPane;
    // End of variables declaration//GEN-END:variables

   
}