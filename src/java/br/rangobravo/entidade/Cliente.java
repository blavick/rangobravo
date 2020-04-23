/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.rangobravo.entidade;

import java.util.Date;

/**
 *
 * @author victoria.sousa
 */
public class Cliente {
    private int id;
    private String name;
    private Date data;
    private int CPF;
    private String sexo;
    private int telefone;
    private String endereco;
    private String cidade;
    private String estado;
    private int CEP;
    private String bairro;
    
    public Cliente(int id, String name, Date data, int CPF, String sexo, int telefone,
            String endereco, String cidade, String estado, int CEP, String Bairro){
        this.name=name;
        this.id=id;
        this.data=data;
        this.CPF=CPF;
        this.sexo=sexo;
        this.telefone=telefone;
        this.endereco=endereco;
        this.cidade=cidade;
        this.estado=estado;
        this.CEP=CEP;
        this.bairro=Bairro;
        
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public int getCPF() {
        return CPF;
    }

    public void setCPF(int CPF) {
        this.CPF = CPF;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCEP() {
        return CEP;
    }

    public void setCEP(int CEP) {
        this.CEP = CEP;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    
    
    
    
}
