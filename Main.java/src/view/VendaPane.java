package view;

import controller.ProdutoController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;

public class VendaPane extends javax.swing.JPanel {

    private final ProdutoController controller;

    public VendaPane() {
        initComponents();

        this.controller = new ProdutoController(this); // Inicializa o controller

        try { //Realiza a leitura da tabela
            controller.readTabelaProduto(); // Realiza a leitura dos produtos
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioPanel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }


    public JTable getTabelaProduto() {
        return TabelaProduto;
    }

    public void setTabelaProduto(JTable TabelaProduto) {
        this.TabelaProduto = TabelaProduto;
    }

    public JTable getTabelaCarrinho() {
        return TabelaProduto;
    }

    public void setTabelaCarrinho(JTable TabelaCarrinho) {
        this.TabelaProduto = TabelaCarrinho;
    }

    public JTextField getCampoValorTotalCarrinho() {
        return CampoValorTotalCarrinho;
    }

    public void setCampoValorTotalCarrinho(JTextField CampoValorTotalCarrinho) {
        this.CampoValorTotalCarrinho = CampoValorTotalCarrinho;
    }

    public JTextField getCampoProduto() {
        return CampoProduto;
    }

    public void setCampoProduto(JTextField CampoProduto) {
        this.CampoProduto = CampoProduto;
    }

    public JTextField getCampoQuantidade() {
        return CampoQuantidade;
    }

    public void setCampoQuantidade(JTextField CampoQuantidade) {
        this.CampoQuantidade = CampoQuantidade;
    }

    public JTextField getCampoValorTotal() {
        return CampoValorTotal;
    }

    public void setCampoValorTotal(JTextField CampoValorTotal) {
        this.CampoValorTotal = CampoValorTotal;
    }

    public JTextField getCampoValorUnitario() {
        return CampoValorUnitario;
    }

    public void setCampoValorUnitario(JTextField CampoValorUnitario) {
        this.CampoValorUnitario = CampoValorUnitario;
    }


    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFrame1 = new javax.swing.JFrame();
        txtProdutoVenda = new javax.swing.JTextField();
        txtQuantidadeVenda = new javax.swing.JTextField();
        btRemoverItemCarrinho = new javax.swing.JButton();
        btAdicionarCarrinho1 = new javax.swing.JButton();
        btFecharVenda = new javax.swing.JButton();
        txtValorUnitario = new javax.swing.JTextField();
        txtValorTotal = new javax.swing.JTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        jlistListarProdutos = new javax.swing.JList<>();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTableCarrinho = new javax.swing.JTable();
        btVoltar = new javax.swing.JButton();
        LabelProduto = new javax.swing.JLabel();
        LabelQuantidade = new javax.swing.JLabel();
        LabelValorUnitario = new javax.swing.JLabel();
        LabelValorTotal = new javax.swing.JLabel();
        CampoProduto = new javax.swing.JTextField();
        CampoQuantidade = new javax.swing.JTextField();
        CampoValorUnitario = new javax.swing.JTextField();
        BotaoAddCarrinho = new javax.swing.JButton();
        LabelTituloProdutos = new javax.swing.JLabel();
        LabelTituloCarrinho = new javax.swing.JLabel();
        BotaoRemoverItem = new javax.swing.JButton();
        BotaoConcluirVenda = new javax.swing.JButton();
        jScrollPane4 = new javax.swing.JScrollPane();
        TabelaProduto = new javax.swing.JTable();
        CampoValorTotal = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        CampoValorTotalCarrinho = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        CampoBuscarProdutos = new javax.swing.JTextField();
        BotaoCancelarCompra = new javax.swing.JButton();
        jScrollPane5 = new javax.swing.JScrollPane();
        TabelaCarrinho = new javax.swing.JTable();

        jFrame1.setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        jFrame1.addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowActivated(java.awt.event.WindowEvent evt) {
                jFrame1formWindowActivated(evt);
            }
        });

        txtProdutoVenda.setText("Produto");
        txtProdutoVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtProdutoVendaActionPerformed(evt);
            }
        });

        txtQuantidadeVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtQuantidadeVendaActionPerformed(evt);
            }
        });

        btRemoverItemCarrinho.setText("Remover Item");
        btRemoverItemCarrinho.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btRemoverItemCarrinhoActionPerformed(evt);
            }
        });

        btAdicionarCarrinho1.setText("Adicionar ao Carrinho");
        btAdicionarCarrinho1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btAdicionarCarrinho1ActionPerformed(evt);
            }
        });

        btFecharVenda.setText("Fechar Venda");
        btFecharVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btFecharVendaActionPerformed(evt);
            }
        });

        txtValorUnitario.setText("Valor Unitario");
        txtValorUnitario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtValorUnitarioActionPerformed(evt);
            }
        });

        txtValorTotal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtValorTotalActionPerformed(evt);
            }
        });

        jlistListarProdutos.setModel(new javax.swing.AbstractListModel<String>() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public String getElementAt(int i) { return strings[i]; }
        });
        jScrollPane2.setViewportView(jlistListarProdutos);

        jLabel2.setText("Produto:");

        jLabel3.setText("Quantidade");

        jLabel4.setText("Valor Unitario");

        jLabel5.setText("Valor Total");

        jTableCarrinho.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane3.setViewportView(jTableCarrinho);

        btVoltar.setText("Voltar");
        btVoltar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btVoltarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jFrame1Layout = new javax.swing.GroupLayout(jFrame1.getContentPane());
        jFrame1.getContentPane().setLayout(jFrame1Layout);
        jFrame1Layout.setHorizontalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jFrame1Layout.createSequentialGroup()
                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 338, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jFrame1Layout.createSequentialGroup()
                        .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jFrame1Layout.createSequentialGroup()
                                .addGap(16, 16, 16)
                                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jFrame1Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtProdutoVenda, javax.swing.GroupLayout.PREFERRED_SIZE, 253, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtQuantidadeVenda, javax.swing.GroupLayout.PREFERRED_SIZE, 253, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtValorUnitario, javax.swing.GroupLayout.PREFERRED_SIZE, 253, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtValorTotal, javax.swing.GroupLayout.PREFERRED_SIZE, 253, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jFrame1Layout.createSequentialGroup()
                        .addGap(152, 152, 152)
                        .addComponent(btAdicionarCarrinho1)))
                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jFrame1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 49, Short.MAX_VALUE)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 581, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btVoltar)
                        .addGap(197, 197, 197))
                    .addGroup(jFrame1Layout.createSequentialGroup()
                        .addGap(170, 170, 170)
                        .addComponent(btRemoverItemCarrinho)
                        .addGap(129, 129, 129)
                        .addComponent(btFecharVenda)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        jFrame1Layout.setVerticalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jFrame1Layout.createSequentialGroup()
                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jFrame1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 133, Short.MAX_VALUE)
                        .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtProdutoVenda, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)))
                    .addGroup(jFrame1Layout.createSequentialGroup()
                        .addGap(38, 38, 38)
                        .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btVoltar)
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtQuantidadeVenda, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtValorUnitario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4)
                    .addComponent(btRemoverItemCarrinho)
                    .addComponent(btFecharVenda))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtValorTotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btAdicionarCarrinho1)
                .addGap(58, 58, 58))
        );

        setBackground(new java.awt.Color(255, 255, 255));

        LabelProduto.setText("Produto");

        LabelQuantidade.setText("Quantidade");

        LabelValorUnitario.setText("Valor Unitário");

        LabelValorTotal.setText("Valor total");

        CampoProduto.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        CampoProduto.setEnabled(false);
        CampoProduto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoProdutoActionPerformed(evt);
            }
        });
        CampoProduto.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                CampoProdutoKeyPressed(evt);
            }
        });

        CampoQuantidade.setText("1");
        CampoQuantidade.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoQuantidadeActionPerformed(evt);
            }
        });
        CampoQuantidade.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                CampoQuantidadeKeyReleased(evt);
            }
        });

        CampoValorUnitario.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        CampoValorUnitario.setEnabled(false);
        CampoValorUnitario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoValorUnitarioActionPerformed(evt);
            }
        });

        BotaoAddCarrinho.setText("Adicionar ao Carrinho");
        BotaoAddCarrinho.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoAddCarrinhoActionPerformed(evt);
            }
        });

        LabelTituloProdutos.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        LabelTituloProdutos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        LabelTituloProdutos.setText("Produtos");
        LabelTituloProdutos.setToolTipText("");

        LabelTituloCarrinho.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        LabelTituloCarrinho.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        LabelTituloCarrinho.setText("Carrinho");
        LabelTituloCarrinho.setToolTipText("");

        BotaoRemoverItem.setText("Remover Item");
        BotaoRemoverItem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoRemoverItemActionPerformed(evt);
            }
        });

        BotaoConcluirVenda.setText("Concluir Venda");
        BotaoConcluirVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoConcluirVendaActionPerformed(evt);
            }
        });

        TabelaProduto.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Nome", "Categoria", "Descrição", "Quantidade", "Unidade", "Preço"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Float.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        TabelaProduto.getTableHeader().setReorderingAllowed(false);
        TabelaProduto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TabelaProdutoMouseClicked(evt);
            }
        });
        jScrollPane4.setViewportView(TabelaProduto);
        if (TabelaProduto.getColumnModel().getColumnCount() > 0) {
            TabelaProduto.getColumnModel().getColumn(0).setResizable(false);
            TabelaProduto.getColumnModel().getColumn(1).setResizable(false);
            TabelaProduto.getColumnModel().getColumn(2).setResizable(false);
            TabelaProduto.getColumnModel().getColumn(3).setResizable(false);
            TabelaProduto.getColumnModel().getColumn(3).setPreferredWidth(35);
            TabelaProduto.getColumnModel().getColumn(4).setResizable(false);
            TabelaProduto.getColumnModel().getColumn(4).setPreferredWidth(30);
            TabelaProduto.getColumnModel().getColumn(5).setResizable(false);
            TabelaProduto.getColumnModel().getColumn(5).setPreferredWidth(35);
        }

        CampoValorTotal.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        CampoValorTotal.setEnabled(false);
        CampoValorTotal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoValorTotalActionPerformed(evt);
            }
        });

        jLabel1.setText("Valor Total:");

        CampoValorTotalCarrinho.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        CampoValorTotalCarrinho.setEnabled(false);
        CampoValorTotalCarrinho.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoValorTotalCarrinhoActionPerformed(evt);
            }
        });

        jLabel7.setText("Buscar Produto(os)");

        CampoBuscarProdutos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CampoBuscarProdutosActionPerformed(evt);
            }
        });
        CampoBuscarProdutos.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                CampoBuscarProdutosKeyReleased(evt);
            }
        });

        BotaoCancelarCompra.setText("Cancelar compra");
        BotaoCancelarCompra.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotaoCancelarCompraActionPerformed(evt);
            }
        });

        TabelaCarrinho.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Nome", "Categoria", "Descrição", "Quantidade", "Unidade", "Preço"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Float.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        TabelaCarrinho.getTableHeader().setReorderingAllowed(false);
        jScrollPane5.setViewportView(TabelaCarrinho);
        if (TabelaCarrinho.getColumnModel().getColumnCount() > 0) {
            TabelaCarrinho.getColumnModel().getColumn(0).setResizable(false);
            TabelaCarrinho.getColumnModel().getColumn(1).setResizable(false);
            TabelaCarrinho.getColumnModel().getColumn(2).setResizable(false);
            TabelaCarrinho.getColumnModel().getColumn(3).setResizable(false);
            TabelaCarrinho.getColumnModel().getColumn(3).setPreferredWidth(35);
            TabelaCarrinho.getColumnModel().getColumn(4).setResizable(false);
            TabelaCarrinho.getColumnModel().getColumn(4).setPreferredWidth(30);
            TabelaCarrinho.getColumnModel().getColumn(5).setResizable(false);
            TabelaCarrinho.getColumnModel().getColumn(5).setPreferredWidth(35);
        }

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(454, 454, 454)
                        .addComponent(BotaoAddCarrinho))
                    .addComponent(jScrollPane4)
                    .addComponent(LabelTituloProdutos, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(CampoBuscarProdutos, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(LabelQuantidade)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(CampoQuantidade, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(LabelValorTotal)
                            .addComponent(LabelValorUnitario))
                        .addGap(382, 382, 382)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(CampoValorUnitario, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(CampoValorTotal, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(LabelProduto)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(CampoProduto, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 44, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(BotaoCancelarCompra)
                        .addGap(369, 369, 369)
                        .addComponent(BotaoConcluirVenda))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(BotaoRemoverItem)
                        .addGap(308, 308, 308)
                        .addComponent(jLabel1)
                        .addGap(18, 18, 18)
                        .addComponent(CampoValorTotalCarrinho, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jScrollPane5)
                    .addComponent(LabelTituloCarrinho, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(LabelTituloProdutos)
                    .addComponent(LabelTituloCarrinho, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 285, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(CampoBuscarProdutos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel7))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(LabelProduto)
                            .addComponent(CampoProduto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(LabelQuantidade)
                            .addComponent(CampoQuantidade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(LabelValorUnitario)
                            .addComponent(CampoValorUnitario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jScrollPane5, javax.swing.GroupLayout.PREFERRED_SIZE, 437, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(CampoValorTotalCarrinho, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel1))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(BotaoRemoverItem)
                        .addComponent(CampoValorTotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(LabelValorTotal)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(BotaoConcluirVenda)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(BotaoCancelarCompra)
                        .addComponent(BotaoAddCarrinho)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void txtProdutoVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtProdutoVendaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtProdutoVendaActionPerformed

    private void txtQuantidadeVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtQuantidadeVendaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtQuantidadeVendaActionPerformed

    private void btRemoverItemCarrinhoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btRemoverItemCarrinhoActionPerformed

    }//GEN-LAST:event_btRemoverItemCarrinhoActionPerformed

    private void btAdicionarCarrinho1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btAdicionarCarrinho1ActionPerformed

    }//GEN-LAST:event_btAdicionarCarrinho1ActionPerformed

    private void btFecharVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btFecharVendaActionPerformed

    }//GEN-LAST:event_btFecharVendaActionPerformed

    private void txtValorUnitarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtValorUnitarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtValorUnitarioActionPerformed

    private void txtValorTotalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtValorTotalActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtValorTotalActionPerformed

    private void btVoltarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btVoltarActionPerformed

    }//GEN-LAST:event_btVoltarActionPerformed

    private void jFrame1formWindowActivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_jFrame1formWindowActivated

    }//GEN-LAST:event_jFrame1formWindowActivated

    private void BotaoConcluirVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoConcluirVendaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_BotaoConcluirVendaActionPerformed

    private void CampoQuantidadeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoQuantidadeKeyReleased
        try {
            controller.alteraQuantidadeProduto();
        } catch (SQLException ex) {
            Logger.getLogger(VendaPane.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_CampoQuantidadeKeyReleased

    private void BotaoAddCarrinhoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoAddCarrinhoActionPerformed
        if (TabelaProduto.getSelectedRow() != -1) {
            try {
                controller.adicionaProdutoCarrinho();
            } catch (SQLException ex) {
                Logger.getLogger(VendaPane.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            // Se nenhum produto estiver selecionado, exiba uma mensagem de alerta
            JOptionPane.showMessageDialog(null, "Selecione um produto para adicionar ao carrinho.");
        }
    }//GEN-LAST:event_BotaoAddCarrinhoActionPerformed

    private void BotaoRemoverItemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoRemoverItemActionPerformed
        try {
            controller.removerProdutoCarrinho();
        } catch (SQLException ex) {
            Logger.getLogger(VendaPane.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_BotaoRemoverItemActionPerformed

    private void CampoValorTotalCarrinhoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoValorTotalCarrinhoActionPerformed

    }//GEN-LAST:event_CampoValorTotalCarrinhoActionPerformed

    private void CampoBuscarProdutosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoBuscarProdutosActionPerformed

    }//GEN-LAST:event_CampoBuscarProdutosActionPerformed

    private void CampoBuscarProdutosKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoBuscarProdutosKeyReleased
        if (CampoBuscarProdutos != null) {
            try {
                controller.buscarProduto(CampoBuscarProdutos.getText());
            } catch (SQLException ex) {
                Logger.getLogger(VendaPane.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_CampoBuscarProdutosKeyReleased

    private void CampoQuantidadeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoQuantidadeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoQuantidadeActionPerformed

    private void CampoValorTotalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoValorTotalActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoValorTotalActionPerformed

    private void BotaoCancelarCompraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotaoCancelarCompraActionPerformed
        try {
            controller.cancelarCompra();
        } catch (SQLException ex) {
            Logger.getLogger(VendaPane.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_BotaoCancelarCompraActionPerformed

    private void CampoValorUnitarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoValorUnitarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoValorUnitarioActionPerformed

    private void CampoProdutoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_CampoProdutoKeyPressed

    }//GEN-LAST:event_CampoProdutoKeyPressed

    private void CampoProdutoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CampoProdutoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CampoProdutoActionPerformed

    private void TabelaProdutoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TabelaProdutoMouseClicked
        try {
            controller.pegaValoresProdutoSelecionado();
        } catch (SQLException ex) {
            Logger.getLogger(VendaPane.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_TabelaProdutoMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotaoAddCarrinho;
    private javax.swing.JButton BotaoCancelarCompra;
    private javax.swing.JButton BotaoConcluirVenda;
    private javax.swing.JButton BotaoRemoverItem;
    private javax.swing.JTextField CampoBuscarProdutos;
    private javax.swing.JTextField CampoProduto;
    private javax.swing.JTextField CampoQuantidade;
    private javax.swing.JTextField CampoValorTotal;
    private javax.swing.JTextField CampoValorTotalCarrinho;
    private javax.swing.JTextField CampoValorUnitario;
    private javax.swing.JLabel LabelProduto;
    private javax.swing.JLabel LabelQuantidade;
    private javax.swing.JLabel LabelTituloCarrinho;
    private javax.swing.JLabel LabelTituloProdutos;
    private javax.swing.JLabel LabelValorTotal;
    private javax.swing.JLabel LabelValorUnitario;
    private javax.swing.JTable TabelaCarrinho;
    private javax.swing.JTable TabelaProduto;
    private javax.swing.JButton btAdicionarCarrinho1;
    private javax.swing.JButton btFecharVenda;
    private javax.swing.JButton btRemoverItemCarrinho;
    private javax.swing.JButton btVoltar;
    private javax.swing.JFrame jFrame1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTable jTableCarrinho;
    private javax.swing.JList<String> jlistListarProdutos;
    private javax.swing.JTextField txtProdutoVenda;
    private javax.swing.JTextField txtQuantidadeVenda;
    private javax.swing.JTextField txtValorTotal;
    private javax.swing.JTextField txtValorUnitario;
    // End of variables declaration//GEN-END:variables
}
