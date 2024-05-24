/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package view;

import controller.ClienteController;
import controller.TextoController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;

/**
 *
 * @author luizf
 */
public class ClientePane extends javax.swing.JPanel {
    
    CadastroClienteView viewCadastro = new CadastroClienteView();
    AtualizarClienteView viewAtualizar = new AtualizarClienteView();
    ClienteController controller;
    TextoController controllerTexto = new TextoController();
    
    public ClientePane() {
        initComponents();
        controller = new ClienteController(viewCadastro, this);
        
        try {
            controller.readTabelaCliente();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro de conexão!", "Erro", JOptionPane.ERROR_MESSAGE);
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

        CampoPesquisaId = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        CampoPesquisaNome = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        CampoPesquisaCPF = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        TabelaCliente = new javax.swing.JTable();
        BotaoCadastrarCliente = new javax.swing.JButton();
        BotaoAtualizarCliente = new javax.swing.JButton();
        BotaoLimparCamposCliente = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));

        CampoPesquisaId.setEditable(false);
        CampoPesquisaId.setBackground(new java.awt.Color(220, 220, 220));
        CampoPesquisaId.setFocusable(false);

        jLabel1.setText("ID");

        CampoPesquisaNome.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoPesquisaNomeActionPerformed(evt);
            }
        });
        CampoPesquisaNome.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                CampoPesquisaNomeKeyReleased(evt);
            }
        });

        jLabel2.setText("Nome");

        CampoPesquisaCPF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoPesquisaCPFActionPerformed(evt);
            }
        });
        CampoPesquisaCPF.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                CampoPesquisaCPFKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                CampoPesquisaCPFKeyTyped(evt);
            }
        });

        jLabel4.setText("CPF");

        TabelaCliente.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

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

        BotaoCadastrarCliente.setText("Cadastrar");
        BotaoCadastrarCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoCadastrarClienteActionPerformed(evt);
            }
        });

        BotaoAtualizarCliente.setText("Alterar");
        BotaoAtualizarCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAtualizarClienteActionPerformed(evt);
            }
        });

        BotaoLimparCamposCliente.setText("Limpar Campos");
        BotaoLimparCamposCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoLimparCamposClienteActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(BotaoLimparCamposCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 858, Short.MAX_VALUE)
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel1)
                                        .addComponent(CampoPesquisaId, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGap(94, 94, 94)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(CampoPesquisaNome, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel2))
                                    .addGap(88, 88, 88)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(CampoPesquisaCPF, javax.swing.GroupLayout.PREFERRED_SIZE, 257, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel4))
                                    .addGap(0, 0, Short.MAX_VALUE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(BotaoCadastrarCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(BotaoAtualizarCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(50, 50, 50))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(CampoPesquisaId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(CampoPesquisaNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(CampoPesquisaCPF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(BotaoLimparCamposCliente)
                .addGap(31, 31, 31)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 153, Short.MAX_VALUE)
                .addGap(45, 45, 45)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(BotaoCadastrarCliente, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(BotaoAtualizarCliente, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(95, 95, 95))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void CampoPesquisaNomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoPesquisaNomeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoPesquisaNomeActionPerformed

    private void CampoPesquisaCPFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoPesquisaCPFActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoPesquisaCPFActionPerformed

    private void BotaoCadastrarClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoCadastrarClienteActionPerformed
        viewCadastro.setLocationRelativeTo(null);
        viewCadastro.setController(this.controller);
        controller.apagarTodosCampos();
        viewCadastro.setVisible(true);
    }//GEN-LAST:event_BotaoCadastrarClienteActionPerformed

    private void CampoPesquisaCPFKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoPesquisaCPFKeyReleased
        try {
            controller.buscarCliente();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro de conexão!", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_CampoPesquisaCPFKeyReleased

    private void CampoPesquisaCPFKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoPesquisaCPFKeyTyped
        if(controllerTexto.formatacaoCPF(evt, getCampoPesquisaCPF().getText())){
            getCampoPesquisaCPF().setText(controllerTexto.mascaraCPF(getCampoPesquisaCPF().getText()));
        }
        else{
            evt.consume();
        }
    }//GEN-LAST:event_CampoPesquisaCPFKeyTyped

    private void CampoPesquisaNomeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoPesquisaNomeKeyReleased
        try {
            controller.buscarCliente();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na conexão com o BD!", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_CampoPesquisaNomeKeyReleased

    private void BotaoLimparCamposClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoLimparCamposClienteActionPerformed
        try {
            controller.limparCamposPesquisa();
            controller.readTabelaCliente();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na conexão com o BD!", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BotaoLimparCamposClienteActionPerformed

    private void BotaoAtualizarClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAtualizarClienteActionPerformed
       
        if(getTabelaCliente().getSelectedRow()!=-1){ 
            viewAtualizar.setController(this.controller);
            viewAtualizar.setLocationRelativeTo(null);
            viewAtualizar.setVisible(true);
        }else{
            JOptionPane.showMessageDialog(null, "Nenhum cliente selecionado!", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BotaoAtualizarClienteActionPerformed

    public JTextField getCampoPesquisaCPF() {
        return CampoPesquisaCPF;
    }

    public void setCampoPesquisaCPF(JTextField CampoPesquisaCPF) {
        this.CampoPesquisaCPF = CampoPesquisaCPF;
    }

    public JTextField getCampoPesquisaId() {
        return CampoPesquisaId;
    }

    public void setCampoPesquisaId(JTextField CampoPesquisaId) {
        this.CampoPesquisaId = CampoPesquisaId;
    }

    public JTextField getCampoPesquisaNome() {
        return CampoPesquisaNome;
    }

    public void setCampoPesquisaNome(JTextField CampoPesquisaNome) {
        this.CampoPesquisaNome = CampoPesquisaNome;
    }

    public JTable getTabelaCliente() {
        return TabelaCliente;
    }

    public void setTabelaCliente(JTable TabelaCliente) {
        this.TabelaCliente = TabelaCliente;
    }

    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotaoAtualizarCliente;
    private javax.swing.JButton BotaoCadastrarCliente;
    private javax.swing.JButton BotaoLimparCamposCliente;
    private javax.swing.JTextField CampoPesquisaCPF;
    private javax.swing.JTextField CampoPesquisaId;
    private javax.swing.JTextField CampoPesquisaNome;
    private javax.swing.JTable TabelaCliente;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}
