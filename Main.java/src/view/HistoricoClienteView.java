/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import controller.ClienteController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;

/**
 *
 * @author luizf
 */
public class HistoricoClienteView extends javax.swing.JFrame {
    ClienteController controller;
    private int id_cliente;
   
    public HistoricoClienteView() {
        initComponents();
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
        jScrollPane1 = new javax.swing.JScrollPane();
        TabelaHistoricoCompras = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        TabelaProdutosDeUmaCompra = new javax.swing.JTable();
        jLabe2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabe1.setFont(new java.awt.Font("Verdana", 1, 24)); // NOI18N
        jLabe1.setText("Histórico de compras ");

        TabelaHistoricoCompras.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID_Compra", "Preço Total", "Método de pagamento"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        TabelaHistoricoCompras.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                TabelaHistoricoComprasMouseReleased(evt);
            }
        });
        jScrollPane1.setViewportView(TabelaHistoricoCompras);

        TabelaProdutosDeUmaCompra.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Nome", "Unidade", "Preço", "Quantidade"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane2.setViewportView(TabelaProdutosDeUmaCompra);

        jLabe2.setFont(new java.awt.Font("Verdana", 1, 24)); // NOI18N
        jLabe2.setText("Itens da venda:");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(60, 60, 60)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabe1)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 431, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 25, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabe2, javax.swing.GroupLayout.DEFAULT_SIZE, 756, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 642, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 114, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(54, 54, 54)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabe2)
                    .addComponent(jLabe1))
                .addGap(37, 37, 37)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 347, Short.MAX_VALUE))
                .addContainerGap(166, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void TabelaHistoricoComprasMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TabelaHistoricoComprasMouseReleased
        int id_historico = 0;
        id_historico = (int) getTabelaHistoricoCompras().getValueAt(getTabelaHistoricoCompras().getSelectedRow(), 0);
        
        if(id_historico != 0){
            try {
                controller.readTabelaComprasPorIdHistorico(getTabelaProdutosDeUmaCompra(), id_historico);
            } catch (SQLException ex) {
                Logger.getLogger(HistoricoClienteView.class.getName()).log(Level.SEVERE, null, ex);
                JOptionPane.showMessageDialog(null, "Erro ao ler a tablea de itens da compra!", "Erro", JOptionPane.ERROR_MESSAGE);
            }
        }
        
    }//GEN-LAST:event_TabelaHistoricoComprasMouseReleased

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
            java.util.logging.Logger.getLogger(HistoricoClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(HistoricoClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(HistoricoClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(HistoricoClienteView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new HistoricoClienteView().setVisible(true);
            }
        });
    }
    
    public void readTabelaHistorico(){
        try {
            controller.readTabelaHistoricoDeComprasCliente(getTabelaHistoricoCompras(), getId_cliente());
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler a tablea do cliente", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }

    public ClienteController getController() {
        return controller;
    }

    public void setController(ClienteController controller) {
        this.controller = controller;
    }

    public JTable getTabelaHistoricoCompras() {
        return TabelaHistoricoCompras;
    }

    public void setTabelaHistoricoCompras(JTable TabelaHistoricoCompras) {
        this.TabelaHistoricoCompras = TabelaHistoricoCompras;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public JTable getTabelaProdutosDeUmaCompra() {
        return TabelaProdutosDeUmaCompra;
    }

    public void setTabelaProdutosDeUmaCompra(JTable TabelaProdutosDeUmaCompra) {
        this.TabelaProdutosDeUmaCompra = TabelaProdutosDeUmaCompra;
    }
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable TabelaHistoricoCompras;
    private javax.swing.JTable TabelaProdutosDeUmaCompra;
    private javax.swing.JLabel jLabe1;
    private javax.swing.JLabel jLabe2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    // End of variables declaration//GEN-END:variables
}
