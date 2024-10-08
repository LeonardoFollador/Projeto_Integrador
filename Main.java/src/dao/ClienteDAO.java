package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Cliente;
import model.Compra;
import model.Historico;

public class ClienteDAO {

    private final Connection connection;

    public ClienteDAO(Connection connection) {
        this.connection = connection;
    }

    //Novo cliente com endereço
    public void insertComEndereco(Cliente cliente, int id_endereco) throws SQLException {
        String sql = "CALL InserirClienteComEndereco (?,?,?,?,?)";

        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cliente.getNome());
        statement.setString(2, cliente.getCpf());
        statement.setString(3, cliente.getTelefone());
        statement.setString(4, cliente.getObservacao());
        statement.setInt(5, id_endereco);
        statement.execute();
        statement.close();
        
    }
    
    //Realiza a leitura de todos os clientes da tabela e retorna um array
    public ArrayList<Cliente> readCliente() throws SQLException{
        String sql = "SELECT id_cliente, nome_cliente, cpf, telefone, cep FROM view_cliente";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.execute();
        ResultSet resultSet = statement.getResultSet();
        
        ArrayList<Cliente> clientes = new ArrayList<>();//Array de clientes
        
        while(resultSet.next()){
            int id_cliente = resultSet.getInt("id_cliente");
            String nome = resultSet.getString("nome_cliente");
            String cpf = resultSet.getString("cpf");
            String telefone = resultSet.getString("telefone");
            String cep = resultSet.getString("cep");
            
            Cliente clienteComDados = new Cliente();
            clienteComDados.setId(id_cliente);
            clienteComDados.setNome(nome);
            clienteComDados.setCpf(cpf);
            clienteComDados.setTelefone(telefone);
            clienteComDados.setCep(cep);
            
            
           clientes.add(clienteComDados);
        }
        statement.close();
        return clientes;
    }
    

    //Novo cliente sem endereço
    public void insert(Cliente cliente) throws SQLException {
        String sql = "CALL InserirCliente(?, ?, ?, ?)";

        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cliente.getNome());
        statement.setString(2, cliente.getCpf());
        statement.setString(3, cliente.getTelefone());
        statement.setString(4, cliente.getObservacao());
        statement.execute();
        statement.close();
    }

    public void update(Cliente cliente) throws SQLException{
        String sql = "UPDATE cliente SET nome = ?, cpf = ?, telefone = ?, observacao = ? WHERE id_cliente = ?";

        PreparedStatement statement = connection.prepareStatement(sql);

        //Evita SQL Injection 
        statement.setString(1, cliente.getNome());
        statement.setString(2, cliente.getCpf());
        statement.setString(3, cliente.getTelefone());
        statement.setString(4, cliente.getObservacao());
        statement.setInt(5, cliente.getId());

        statement.execute();
        statement.close();
    }

    public int buscarIdClienteCPF(String cpf) throws SQLException {
        String sql = "SELECT * FROM cliente WHERE cpf = ?";

        // Conexao com o bds
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cpf);

        // Executando a consulta
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            // Se houver resultados, retorna o valor do campo "id_cliente" da primeira linha
            return resultSet.getInt("id_cliente");
        } else {
            return -1;
        }
    }
    
    public boolean existeClientePorCPF(String cpf) throws SQLException{
        String sql = "SELECT * FROM cliente WHERE cpf = ?";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cpf);
        statement.execute();
        
        ResultSet resultSet = statement.getResultSet();
        
        return resultSet.next();

    }
    
    public ArrayList<Cliente> buscarClienteCPFeNome(Cliente cliente) throws SQLException{
        String sql = "SELECT id_cliente, nome_cliente, cpf, telefone, cep FROM view_cliente WHERE nome_cliente LIKE ? and cpf LIKE ?";

        // Conexao com o bd
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cliente.getNome() + "%");
        statement.setString(2, cliente.getCpf() + "%");

        // Executando a consulta
        ResultSet resultSet = statement.executeQuery();

        ArrayList<Cliente> clientes = new ArrayList<>();

        // Iterando sobre os resultados
        while (resultSet.next()) {
            int id_cliente = resultSet.getInt("id_cliente");
            String nome = resultSet.getString("nome_cliente");
            String cpf = resultSet.getString("cpf");
            String telefone = resultSet.getString("telefone");
            String cep = resultSet.getString("cep");
            
            Cliente clienteEncontrado = new Cliente();

            clienteEncontrado.setId(id_cliente);
            clienteEncontrado.setNome(nome);
            clienteEncontrado.setCpf(cpf);
            clienteEncontrado.setTelefone(telefone);
            clienteEncontrado.setCep(cep);
            
            clientes.add(clienteEncontrado);
        }
        statement.close();

        return clientes;
    }
    
    public Cliente selectClientePorID(int id) throws SQLException{
        String sql = "SELECT * FROM cliente WHERE id_cliente = ?";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        
        ResultSet resultSet = statement.executeQuery();
        Cliente clienteComDados = new Cliente();
        
        while(resultSet.next()){
            String nome = resultSet.getString("nome");
            String cpf = resultSet.getString("cpf");
            String telefone = resultSet.getString("telefone");
            String observacao = resultSet.getString("observacao");
            int idEndereco = resultSet.getInt("fk_id_endereco");
            
            clienteComDados = new Cliente(id, nome, cpf, telefone, observacao);
            clienteComDados.setId_endereco(idEndereco);
        }
        statement.close();
        return clienteComDados;         
    }
    
    public void deleteEndereco(int id_cliente) throws SQLException{
         String sql = "UPDATE cliente SET fk_id_endereco = null WHERE id_cliente = ?";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_cliente);
        statement.execute();
        statement.close();
    }
    
    public void updateEndereco (int id_endereco, int id_cliente) throws SQLException{
        String sql = "UPDATE cliente SET fk_id_endereco = ? WHERE id_cliente = ?";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_endereco);
        statement.setInt(2, id_cliente);
        statement.execute();
        statement.close();
    }
    
    public void delete(int id) throws SQLException{
        String sql = "DELETE FROM cliente WHERE id_cliente = ?";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        statement.execute();
        statement.close();
    }
    
    public ArrayList<Historico> readHistoricoPorIdCliente(int id_cliente) throws SQLException{
        String sql = "SELECT * FROM listarComprasPorIdCliente(?)";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_cliente);
        
        ResultSet resultSet = statement.executeQuery();
        
        ArrayList<Historico> historicos = new ArrayList<>();

        while(resultSet.next()){
            int id_compra = resultSet.getInt("id_compra");
            float preco = resultSet.getFloat("total_compra");
            String metodo_pagamento = resultSet.getString("pagamento");
            
            Historico historicoComDados = new Historico(id_compra, preco);
            historicoComDados.setMetodo_pagamento(metodo_pagamento);

            historicos.add(historicoComDados);
        }
        statement.close();
        return historicos;
    }
    
    public ArrayList<Compra> readCompraPorIdHistorico(int id_historico) throws SQLException{
        String sql = "SELECT * FROM listarProdutosCompradosPorIdHistorico(?)";
        
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_historico);
        
        ResultSet resultSet = statement.executeQuery();
        
        ArrayList<Compra> compras = new ArrayList<>();
        
        while(resultSet.next()){
            int id_item = resultSet.getInt("id_itemCompra");
            String nome = resultSet.getString("nome");
            float preco = resultSet.getFloat("preco_total");
            String unidade = resultSet.getString("unidade");
            int quantidade = resultSet.getInt("qtd");
            
            Compra compra = new Compra(id_item, preco, unidade, nome, quantidade);
            
            compras.add(compra);
        }
        
        return compras;
    }

}
