/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Th3Br
 */
public class Usuario extends Endereco{
    private int id;
    private String nome;
    private String senha;
    private String cpf;
    private String telefone;
    private boolean admin;
    private String observacao;

    public Usuario(int id, String nome, String cpf, String telefone, boolean admin, String observacao) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.admin = admin;
        this.observacao = observacao;
    }

    public Usuario(String nome, String cpf, boolean admin) {
        this.nome = nome;
        this.cpf = cpf;
        this.admin = admin;
    }

    public Usuario(String cpf, String senha) {
        this.cpf = cpf;
        this.senha = senha;
    }

    public Usuario(int id) {
        this.id = id;
    }

    public Usuario(String nome, String senha, String cpf, String telefone, boolean admin, String observacao) {
        this.nome = nome;
        this.senha = senha;
        this.cpf = cpf;
        this.telefone = telefone;
        this.admin = admin;
        this.observacao = observacao;
    }

    public Usuario(String nome, String cpf, String telefone, boolean admin, String observacao) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.admin = admin;
        this.observacao = observacao;
    }

    public Usuario(int id, String nome, String cpf, String telefone, boolean admin) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.admin = admin;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
    public Usuario(String cpf) {
        this.cpf = cpf;
    }

    public Usuario() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }
}
