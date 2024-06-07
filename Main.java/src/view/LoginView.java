
package view;

import controller.LoginController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFormattedTextField;
import javax.swing.JPasswordField;
import model.Utilitarios;



public class LoginView extends javax.swing.JFrame {
    

    private final LoginController controller;
    
    public LoginView() {
        initComponents();
        this.setLocationRelativeTo(null);  //centraliza tela do login
        
        controller = new LoginController(this); //variável controller para LoginController, ela envia a classe LoginView
        Utilitarios u = new Utilitarios();
        u.InserirIcone(this);
        
    }

    public JPasswordField getCampoSenhaLogin() {
        return CampoSenhaLogin;
    }

    public void setCampoSenhaLogin(JPasswordField CampoSenhaLogin) {
        this.CampoSenhaLogin = CampoSenhaLogin;
    }

    public JFormattedTextField getCampoCPFLogin() {
        return CampoCPFLogin;
    }

    public void setCampoCPFLogin(JFormattedTextField CampoCPFLogin) {
        this.CampoCPFLogin = CampoCPFLogin;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        CampoSenhaLogin = new javax.swing.JPasswordField();
        BotaoLoginEntrar = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        CampoCPFLogin = new javax.swing.JFormattedTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1920, 1080));
        setSize(new java.awt.Dimension(1920, 1080));
        getContentPane().setLayout(null);

        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("CPF");
        jLabel1.setMaximumSize(null);
        getContentPane().add(jLabel1);
        jLabel1.setBounds(900, 440, 40, 16);

        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("Senha");
        jLabel2.setMaximumSize(null);
        jLabel2.setMinimumSize(null);
        getContentPane().add(jLabel2);
        jLabel2.setBounds(900, 490, 60, 16);
        getContentPane().add(CampoSenhaLogin);
        CampoSenhaLogin.setBounds(900, 510, 124, 22);

        BotaoLoginEntrar.setText("Entrar");
        BotaoLoginEntrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoLoginEntrarActionPerformed(evt);
            }
        });
        getContentPane().add(BotaoLoginEntrar);
        BotaoLoginEntrar.setBounds(900, 560, 124, 23);

        jLabel4.setFont(new java.awt.Font("Verdana", 0, 40)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Portal de Vendas");
        getContentPane().add(jLabel4);
        jLabel4.setBounds(0, 340, 1920, 50);

        try {
            CampoCPFLogin.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("###.###.###-##")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        CampoCPFLogin.setCaretColor(new java.awt.Color(204, 204, 204));
        CampoCPFLogin.setDisabledTextColor(new java.awt.Color(204, 204, 204));
        CampoCPFLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoCPFLoginActionPerformed(evt);
            }
        });
        getContentPane().add(CampoCPFLogin);
        CampoCPFLogin.setBounds(900, 460, 124, 22);

        jLabel3.setForeground(new java.awt.Color(204, 204, 204));
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Caso esteja com problemas no login contate um administrador");
        jLabel3.setMaximumSize(null);
        jLabel3.setMinimumSize(null);
        getContentPane().add(jLabel3);
        jLabel3.setBounds(0, 620, 1920, 16);

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/img2.jpg"))); // NOI18N
        jLabel5.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        getContentPane().add(jLabel5);
        jLabel5.setBounds(710, 280, 500, 430);

        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/img2.jpg"))); // NOI18N
        jLabel6.setOpaque(true);
        getContentPane().add(jLabel6);
        jLabel6.setBounds(0, 0, 1920, 1080);
        jLabel6.getAccessibleContext().setAccessibleName("");
        jLabel6.getAccessibleContext().setAccessibleDescription("");

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BotaoLoginEntrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoLoginEntrarActionPerformed
      
        //Chama a classe LoginController pela váriavel controller
        try {
            controller.autenticarUsuario();
        } catch (SQLException ex) {
            Logger.getLogger(LoginView.class.getName()).log(Level.SEVERE, null, ex);
        }



   
    }//GEN-LAST:event_BotaoLoginEntrarActionPerformed

    private void CampoCPFLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoCPFLoginActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoCPFLoginActionPerformed

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
            java.util.logging.Logger.getLogger(LoginView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(LoginView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(LoginView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LoginView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LoginView().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotaoLoginEntrar;
    private javax.swing.JFormattedTextField CampoCPFLogin;
    private javax.swing.JPasswordField CampoSenhaLogin;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    // End of variables declaration//GEN-END:variables

}
