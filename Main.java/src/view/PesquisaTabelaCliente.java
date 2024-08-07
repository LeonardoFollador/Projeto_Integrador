/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import controller.ClienteController;
import controller.ProdutoController;
import controller.TextoController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;

/**
 *
 * @author luizf
 */
public class PesquisaTabelaCliente extends javax.swing.JFrame {

    private ClienteController controller;
    private ProdutoController produtoController;
    private TextoController textoController = new TextoController();
    
    public PesquisaTabelaCliente() {
        initComponents();
    }
    
    public void refreshTable(){
        try {
            controller.readTabelaCliente(getTabelaCliente());
        } catch (SQLException ex) {
            Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(Level.SEVERE, null, ex);
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

        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        TabelaCliente = new javax.swing.JTable();
        BotaoSelecionar = new javax.swing.JButton();
        CampoTextoPesquisaNome = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        CampoTextoPesquisaCPF = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        BotaoLimparCampos = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(989, 603));

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel1.setText("Pesquisa de cliente");

        TabelaCliente.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null}
            },
            new String [] {
                "ID", "Nome", "CPF", "Telefone", "Endereço"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(TabelaCliente);

        BotaoSelecionar.setText("Selecionar");
        BotaoSelecionar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoSelecionarActionPerformed(evt);
            }
        });

        CampoTextoPesquisaNome.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                CampoTextoPesquisaNomeKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                CampoTextoPesquisaNomeKeyTyped(evt);
            }
        });

        jLabel2.setText("Nome");

        CampoTextoPesquisaCPF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoTextoPesquisaCPFActionPerformed(evt);
            }
        });
        CampoTextoPesquisaCPF.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                CampoTextoPesquisaCPFKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                CampoTextoPesquisaCPFKeyTyped(evt);
            }
        });

        jLabel3.setText("CPF");

        BotaoLimparCampos.setText("Limpar Campos");
        BotaoLimparCampos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoLimparCamposActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(51, 51, 51)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 872, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BotaoSelecionar, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(CampoTextoPesquisaNome, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2))
                        .addGap(40, 40, 40)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(CampoTextoPesquisaCPF, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(33, 33, 33)
                                .addComponent(BotaoLimparCampos, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(66, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(jLabel1)
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(CampoTextoPesquisaNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(CampoTextoPesquisaCPF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BotaoLimparCampos))
                .addGap(36, 36, 36)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 253, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(BotaoSelecionar)
                .addContainerGap(143, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BotaoSelecionarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoSelecionarActionPerformed
        if(getTabelaCliente().getSelectedRow()!=-1){
            String cpf = (String) getTabelaCliente().getValueAt(getTabelaCliente().getSelectedRow(), 2);
            produtoController.preencherCampoCPFemVendaPane(cpf);
            this.dispose();
        }else{
             JOptionPane.showMessageDialog(null, "Selecione um cliente!", "Aviso", JOptionPane.INFORMATION_MESSAGE);
        }
    }//GEN-LAST:event_BotaoSelecionarActionPerformed

    private void CampoTextoPesquisaNomeKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoTextoPesquisaNomeKeyTyped

    }//GEN-LAST:event_CampoTextoPesquisaNomeKeyTyped

    private void CampoTextoPesquisaCPFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoTextoPesquisaCPFActionPerformed

    }//GEN-LAST:event_CampoTextoPesquisaCPFActionPerformed

    private void BotaoLimparCamposActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoLimparCamposActionPerformed
        getCampoTextoPesquisaNome().setText("");
        getCampoTextoPesquisaCPF().setText("");
        refreshTable();
    }//GEN-LAST:event_BotaoLimparCamposActionPerformed

    private void CampoTextoPesquisaCPFKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoTextoPesquisaCPFKeyTyped
        if(textoController.formatacaoCPF(evt, getCampoTextoPesquisaCPF().getText())){
            getCampoTextoPesquisaCPF().setText(textoController.mascaraCPF(getCampoTextoPesquisaCPF().getText()));
        }
        else{
            evt.consume();
        }
    }//GEN-LAST:event_CampoTextoPesquisaCPFKeyTyped

    private void CampoTextoPesquisaCPFKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoTextoPesquisaCPFKeyReleased
        try {
            controller.buscarCliente(CampoTextoPesquisaNome, CampoTextoPesquisaCPF, TabelaCliente);
        } catch (SQLException ex) {
            Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_CampoTextoPesquisaCPFKeyReleased

    private void CampoTextoPesquisaNomeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoTextoPesquisaNomeKeyReleased
        try {
            controller.buscarCliente(CampoTextoPesquisaNome, CampoTextoPesquisaCPF, TabelaCliente);
        } catch (SQLException ex) {
            Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_CampoTextoPesquisaNomeKeyReleased

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
            java.util.logging.Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(PesquisaTabelaCliente.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new PesquisaTabelaCliente().setVisible(true);
            }
        });
    }

    public JTable getTabelaCliente() {
        return TabelaCliente;
    }

    public void setTabelaCliente(JTable TabelaCliente) {
        this.TabelaCliente = TabelaCliente;
    }

    public ClienteController getController() {
        return controller;
    }

    public void setController(ClienteController controller) {
        this.controller = controller;
    }

    public ProdutoController getProdutoController() {
        return produtoController;
    }

    public void setProdutoController(ProdutoController produtoController) {
        this.produtoController = produtoController;
    }

    public JButton getBotaoLimparCampos() {
        return BotaoLimparCampos;
    }

    public void setBotaoLimparCampos(JButton BotaoLimparCampos) {
        this.BotaoLimparCampos = BotaoLimparCampos;
    }

    public JButton getBotaoSelecionar() {
        return BotaoSelecionar;
    }

    public void setBotaoSelecionar(JButton BotaoSelecionar) {
        this.BotaoSelecionar = BotaoSelecionar;
    }

    public JTextField getCampoTextoPesquisaCPF() {
        return CampoTextoPesquisaCPF;
    }

    public void setCampoTextoPesquisaCPF(JTextField CampoTextoPesquisaCPF) {
        this.CampoTextoPesquisaCPF = CampoTextoPesquisaCPF;
    }

    public JTextField getCampoTextoPesquisaNome() {
        return CampoTextoPesquisaNome;
    }

    public void setCampoTextoPesquisaNome(JTextField CampoTextoPesquisaNome) {
        this.CampoTextoPesquisaNome = CampoTextoPesquisaNome;
    }
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotaoLimparCampos;
    private javax.swing.JButton BotaoSelecionar;
    private javax.swing.JTextField CampoTextoPesquisaCPF;
    private javax.swing.JTextField CampoTextoPesquisaNome;
    private javax.swing.JTable TabelaCliente;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}
