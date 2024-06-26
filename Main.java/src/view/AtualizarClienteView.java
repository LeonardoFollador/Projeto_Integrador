/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import controller.ClienteController;
import controller.TextoController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JTextPane;
import model.Cliente;
import org.jdesktop.swingx.autocomplete.AutoCompleteDecorator;

/**
 *
 * @author luizf
 */
public class AtualizarClienteView extends javax.swing.JFrame {

    ClienteController controller;
    TextoController textoController = new TextoController();
    Cliente cliente;
    int estadoSelecionado = -1;
    int cidadeSelecionada = -1;
    int bairroSelecionado = -1;
    
    public AtualizarClienteView() {
        initComponents();
        
        this.setLocationRelativeTo(null); //Centraliza o frame na tela
        AutoCompleteDecorator.decorate(cbEstado);
        AutoCompleteDecorator.decorate(cbCidade);
        AutoCompleteDecorator.decorate(cbBairro);
        AutoCompleteDecorator.decorate(cbLogradouro);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabe1 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        txNome = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txCPF = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txTelefone = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        txaObservacao = new javax.swing.JTextArea();
        jLabel5 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txCEP = new javax.swing.JTextPane();
        jLabel7 = new javax.swing.JLabel();
        btPesquisarEndereco = new javax.swing.JButton();
        cbEstado = new javax.swing.JComboBox();
        cbUF = new javax.swing.JComboBox();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        cbCidade = new javax.swing.JComboBox();
        cbBairro = new javax.swing.JComboBox();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        cbLogradouro = new javax.swing.JComboBox();
        jLabel12 = new javax.swing.JLabel();
        txNumero = new javax.swing.JTextField();
        txComplemento = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        btSalvarAlteracao = new javax.swing.JButton();
        btDesfazerAlteracao = new javax.swing.JButton();
        checkEndereco = new javax.swing.JCheckBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabe1.setFont(new java.awt.Font("Verdana", 1, 24)); // NOI18N
        jLabe1.setText("Informações do Cliente");

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel1.setText("Dados de identificação");

        txNome.setEditable(false);
        txNome.setEnabled(false);

        jLabel2.setText("Nome Completo");

        jLabel3.setText("CPF");

        txCPF.setEditable(false);
        txCPF.setEnabled(false);

        jLabel4.setText("Telefone");

        txTelefone.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txTelefoneKeyTyped(evt);
            }
        });

        txaObservacao.setColumns(20);
        txaObservacao.setRows(5);
        jScrollPane1.setViewportView(txaObservacao);

        jLabel5.setText("Observação");

        txCEP.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txCEPKeyTyped(evt);
            }
        });
        jScrollPane2.setViewportView(txCEP);

        jLabel7.setText("CEP");

        btPesquisarEndereco.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/lupa.png"))); // NOI18N
        btPesquisarEndereco.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btPesquisarEnderecoActionPerformed(evt);
            }
        });

        cbEstado.setEditable(true);
        cbEstado.addAncestorListener(new javax.swing.event.AncestorListener() {
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                cbEstadoAncestorAdded(evt);
            }
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        cbEstado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbEstadoActionPerformed(evt);
            }
        });

        cbUF.setEditable(true);
        cbUF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbUFActionPerformed(evt);
            }
        });

        jLabel8.setText("Estado");

        jLabel9.setText("UF");

        cbCidade.setEditable(true);
        cbCidade.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbCidadeActionPerformed(evt);
            }
        });

        cbBairro.setEditable(true);
        cbBairro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbBairroActionPerformed(evt);
            }
        });

        jLabel10.setText("Cidade");

        jLabel11.setText("Bairro");

        cbLogradouro.setEditable(true);

        jLabel12.setText("Logradouro");

        txComplemento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txComplementoActionPerformed(evt);
            }
        });

        jLabel13.setText("Número");

        jLabel14.setText("Complemento");

        btSalvarAlteracao.setText("Salvar");
        btSalvarAlteracao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btSalvarAlteracaoActionPerformed(evt);
            }
        });

        btDesfazerAlteracao.setText("Desfazer Alterações");
        btDesfazerAlteracao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btDesfazerAlteracaoActionPerformed(evt);
            }
        });

        checkEndereco.setText("Endereço");
        checkEndereco.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                checkEnderecoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(90, 90, 90)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(checkEndereco)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addComponent(jLabel7)
                                                        .addGap(60, 60, 60))
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                        .addComponent(btPesquisarEndereco, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addGroup(layout.createSequentialGroup()
                                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                        .addComponent(jLabel8))
                                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                        .addComponent(cbEstado, javax.swing.GroupLayout.PREFERRED_SIZE, 196, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                            .addComponent(cbLogradouro, javax.swing.GroupLayout.PREFERRED_SIZE, 336, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addComponent(jLabel9)
                                                .addGap(0, 0, Short.MAX_VALUE))
                                            .addComponent(txNumero)
                                            .addComponent(cbUF, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                            .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 290, Short.MAX_VALUE)
                                            .addComponent(txNome, javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.LEADING))
                                        .addGap(60, 60, 60)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel3)
                                            .addComponent(txCPF, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel12)
                                        .addGap(292, 292, 292)
                                        .addComponent(jLabel13)))
                                .addGap(0, 18, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(60, 60, 60)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel4)
                                            .addComponent(txTelefone, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(cbCidade, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel10))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel11)
                                            .addComponent(cbBairro, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(txComplemento, javax.swing.GroupLayout.PREFERRED_SIZE, 319, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel14)
                                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                            .addComponent(btDesfazerAlteracao, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(btSalvarAlteracao, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel5)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabe1))
                                .addGap(0, 0, Short.MAX_VALUE)))
                        .addGap(105, 105, 105))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jLabe1)
                .addGap(48, 48, 48)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txCPF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txTelefone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jLabel5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(45, 45, 45)
                .addComponent(checkEndereco)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jLabel9)
                                .addComponent(jLabel10)
                                .addComponent(jLabel11))
                            .addComponent(jLabel8, javax.swing.GroupLayout.Alignment.TRAILING))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btPesquisarEndereco, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(cbUF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(cbCidade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(cbBairro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(cbEstado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(jLabel13)
                    .addComponent(jLabel14))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cbLogradouro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txNumero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txComplemento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(61, 61, 61)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btSalvarAlteracao)
                    .addComponent(btDesfazerAlteracao))
                .addGap(60, 60, 60))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txComplementoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txComplementoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txComplementoActionPerformed

    @SuppressWarnings("unchecked")
    private void cbEstadoAncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_cbEstadoAncestorAdded

    }//GEN-LAST:event_cbEstadoAncestorAdded

    @SuppressWarnings("unchecked")
    private void cbEstadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbEstadoActionPerformed
        if(getCbEstado().getSelectedIndex()>=0 && this.estadoSelecionado != getCbEstado().getSelectedIndex() && getCbEstado().getItemCount()>=26){
            this.estadoSelecionado = getCbEstado().getSelectedIndex();    
            controller.atualizaComboBoxEstado(cbEstado, cbUF, cbCidade, this.estadoSelecionado);
            cbLogradouro.removeAllItems();
            this.cidadeSelecionada = -1;
            this.bairroSelecionado = -1;
            cbBairro.removeAllItems();
        }
    }//GEN-LAST:event_cbEstadoActionPerformed

    @SuppressWarnings("unchecked")
    private void cbUFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbUFActionPerformed
        if(getCbUF().getSelectedIndex()>=0 && this.estadoSelecionado != getCbUF().getSelectedIndex() && getCbUF().getItemCount()>=26){
            this.estadoSelecionado = getCbUF().getSelectedIndex();    
            controller.atualizaComboBoxEstado(cbEstado, cbUF, cbCidade, this.estadoSelecionado);
            cbLogradouro.removeAllItems();
            this.cidadeSelecionada = -1;
            this.bairroSelecionado = -1;
        }
    }//GEN-LAST:event_cbUFActionPerformed

    @SuppressWarnings("unchecked")
    private void cbCidadeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbCidadeActionPerformed
        if(this.cidadeSelecionada != getCbCidade().getSelectedIndex() && getCbCidade().getSelectedIndex()>=0){
            this.cidadeSelecionada = getCbCidade().getSelectedIndex();
            try {
                controller.comboBoxBairros(cbUF, cbCidade, cbBairro);
            } catch (SQLException ex) {
                Logger.getLogger(CadastroClienteView.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_cbCidadeActionPerformed

    @SuppressWarnings("unchecked")
    private void cbBairroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbBairroActionPerformed
        if(this.bairroSelecionado != getCbBairro().getSelectedIndex() && getCbBairro().getSelectedIndex()>=0){
            this.bairroSelecionado = getCbBairro().getSelectedIndex();
            try {
                controller.comboBoxLogradouros(cbUF, cbCidade, cbBairro, cbLogradouro);
            } catch (SQLException ex) {
                Logger.getLogger(CadastroClienteView.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_cbBairroActionPerformed

    private void checkEnderecoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_checkEnderecoActionPerformed
        controller.habilitarEnderecoAtualizar(getCheckEndereco().isSelected());
    }//GEN-LAST:event_checkEnderecoActionPerformed

    private void btDesfazerAlteracaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btDesfazerAlteracaoActionPerformed
        controller.desfazerAlteracao();
    }//GEN-LAST:event_btDesfazerAlteracaoActionPerformed

    private void btSalvarAlteracaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btSalvarAlteracaoActionPerformed
        try {
            controller.salvarAlteracao(cliente);
        } catch (SQLException ex) {
            Logger.getLogger(AtualizarClienteView.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btSalvarAlteracaoActionPerformed

    private void txTelefoneKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txTelefoneKeyTyped
       if(textoController.formatacaoTelefone(evt, getTxTelefone().getText())){
           getTxTelefone().setText(textoController.mascaraTelefone(getTxTelefone().getText()));
       }
       else{
           evt.consume();
       }
    }//GEN-LAST:event_txTelefoneKeyTyped

    private void txCEPKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txCEPKeyTyped
        if(textoController.formatacaoCEP(evt, getTxCEP().getText())){
            getTxCEP().setText(textoController.mascaraCEP(getTxCEP().getText()));
        }
        else{
            evt.consume();
        }
    }//GEN-LAST:event_txCEPKeyTyped

    private void btPesquisarEnderecoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btPesquisarEnderecoActionPerformed
        String cep = getTxCEP().getText();
        
        String logradouro = (String) getCbLogradouro().getSelectedItem();
        String cidade = (String) getCbCidade().getSelectedItem();
        String uf = (String) getCbUF().getSelectedItem();
        
        if(!cep.isEmpty()){
            try {
                controller.preencherCamposEnderecoAtualizar(cep);
            } catch (SQLException ex) {
                Logger.getLogger(AtualizarUsuarioView.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else{
            if(!logradouro.isEmpty() && !cidade.isEmpty() && !uf.isEmpty()){
                controller.preencherCEPAtualizar();
                
            }
        }
    }//GEN-LAST:event_btPesquisarEnderecoActionPerformed

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
            java.util.logging.Logger.getLogger(AtualizarClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AtualizarClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AtualizarClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AtualizarClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AtualizarClienteView().setVisible(true);
            }
        });
    }

    public int getEstadoSelecionado() {
        return estadoSelecionado;
    }

    public void setEstadoSelecionado(int estadoSelecionado) {
        this.estadoSelecionado = estadoSelecionado;
    }

    public int getCidadeSelecionada() {
        return cidadeSelecionada;
    }

    public void setCidadeSelecionada(int cidadeSelecionada) {
        this.cidadeSelecionada = cidadeSelecionada;
    }

    public int getBairroSelecionado() {
        return bairroSelecionado;
    }

    public void setBairroSelecionado(int bairroSelecionado) {
        this.bairroSelecionado = bairroSelecionado;
    }

    public ClienteController getController() {
        return controller;
    }

    public void setController(ClienteController controller) {
        this.controller = controller;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public JComboBox getCbBairro() {
        return cbBairro;
    }

    public void setCbBairro(JComboBox cbBairro) {
        this.cbBairro = cbBairro;
    }

    public JComboBox getCbCidade() {
        return cbCidade;
    }

    public void setCbCidade(JComboBox cbCidade) {
        this.cbCidade = cbCidade;
    }

    public JComboBox getCbEstado() {
        return cbEstado;
    }

    public void setCbEstado(JComboBox cbEstado) {
        this.cbEstado = cbEstado;
    }

    public JComboBox getCbLogradouro() {
        return cbLogradouro;
    }

    public void setCbLogradouro(JComboBox cbLogradouro) {
        this.cbLogradouro = cbLogradouro;
    }

    public JComboBox getCbUF() {
        return cbUF;
    }

    public void setCbUF(JComboBox cbUF) {
        this.cbUF = cbUF;
    }

    public JTextPane getTxCEP() {
        return txCEP;
    }

    public void setTxCEP(JTextPane txCEP) {
        this.txCEP = txCEP;
    }

    public JTextField getTxCPF() {
        return txCPF;
    }

    public void setTxCPF(JTextField txCPF) {
        this.txCPF = txCPF;
    }

    public JTextField getTxComplemento() {
        return txComplemento;
    }

    public void setTxComplemento(JTextField txComplemento) {
        this.txComplemento = txComplemento;
    }

    public JTextField getTxNome() {
        return txNome;
    }

    public void setTxNome(JTextField txNome) {
        this.txNome = txNome;
    }

    public JTextField getTxNumero() {
        return txNumero;
    }

    public void setTxNumero(JTextField txNumero) {
        this.txNumero = txNumero;
    }

    public JTextField getTxTelefone() {
        return txTelefone;
    }

    public void setTxTelefone(JTextField txTelefone) {
        this.txTelefone = txTelefone;
    }

    public JTextArea getTxaObservacao() {
        return txaObservacao;
    }

    public void setTxaObservacao(JTextArea txaObservacao) {
        this.txaObservacao = txaObservacao;
    }

    public JCheckBox getCheckEndereco() {
        return checkEndereco;
    }

    public void setCheckEndereco(JCheckBox checkEndereco) {
        this.checkEndereco = checkEndereco;
    }

    public JButton getBtPesquisarEndereco() {
        return btPesquisarEndereco;
    }

    public void setBtPesquisarEndereco(JButton btPesquisarEndereco) {
        this.btPesquisarEndereco = btPesquisarEndereco;
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btDesfazerAlteracao;
    private javax.swing.JButton btPesquisarEndereco;
    private javax.swing.JButton btSalvarAlteracao;
    private javax.swing.JComboBox cbBairro;
    private javax.swing.JComboBox cbCidade;
    private javax.swing.JComboBox cbEstado;
    private javax.swing.JComboBox cbLogradouro;
    private javax.swing.JComboBox cbUF;
    private javax.swing.JCheckBox checkEndereco;
    private javax.swing.JLabel jLabe1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextPane txCEP;
    private javax.swing.JTextField txCPF;
    private javax.swing.JTextField txComplemento;
    private javax.swing.JTextField txNome;
    private javax.swing.JTextField txNumero;
    private javax.swing.JTextField txTelefone;
    private javax.swing.JTextArea txaObservacao;
    // End of variables declaration//GEN-END:variables
}
