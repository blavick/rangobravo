<%-- 
    Document   : cadCliente
    Created on : 15/04/2020, 15:58:28
    Author     : carlos.sousa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rango Bravo</title>
    </head>
    <style>


        #head img{
            width: 40px;
            position: absolute;
            left: 10%;

        }

        #acesso{
            border-radius: 10px;
            width: 740px;
            height: 270px;
            background: white;
            position:relative;
            left: 5%;
            right: 5%;
            top:25%;

        }

        .texto{

            color: grey;
            height: 40px;
            font-weight: bold;
            font:25px Arial, Sans-serif;
            text-align: center;


        }

        #head{
            border: none;
            width: 100%;
            height: 30px;	  
            background-color: #FF6711;


        }
        body{
            margin: 0px;
        }

        #acesso2{
            color: black;
            position: relative;
            top: 30%;
            font-weight: bold;
            font:15px;



        }
        #form td{
            display:inline-block;
            text-decoration:none;
            padding:6px 4px;
            border:1px solid #ccc;
            background-color:#f2f2f2;
            color:#333;
            font:15px arial, sans-serif;
        }
        #rodape{
            border: none;
            width: 100%;
            height: 30px;
            position: absolute;
            background-color: #FF6711;
            top:95%;

        }

        #menu {
            text-align: center;
            width: 20%;
            margin: 0; 
            padding: 0;
            float: left;
        }
        #menu ul li {
            margin: 0; padding: 0px;
            border-bottom: 1px solid #CCC;
            text-align: left;
            list-style-type: none;
        }
        #menu a:link {
            background: #F5F5F5;
            color: #666;
            font-weight: bold;
            text-decoration: none;
            padding: 8px;
            display: block;
        }
        #menu a:hover {
            background: #E5F0FF;
            color: #039;
        }
        #cadastro{
            background-color: #FF6711;
            margin-top: 5%;	
            margin-left: 30%;	
            margin-right: 20%;
            height: 400px;	 
            border-radius: 10px;
            background-color:#B0B4B8;


        }
        #cadastro h4{
            text-align: center;
        }
        #cadastro form{
            position: absolute;
            margin-left: 2%;

        }
        #botao{
            margin-top: 5%;
        }




    </style>

    <body>
        <div id = "head">
            <img src = "img\logo.png">


        </div>

        <div id="menu">
            <h1>Menu</h1>
            <ul>
                <li><a href="link1.htm">Inicío</a></li>
                <li><a href="link2.htm">Cadastro Produto</a></li>
                <li><a href="link3.htm">Cadastro Cliente</a></li>
                <li><a href="link4.htm">Relatório Análitico</a></li>
                <li><a href="link5.htm">Relatório Síntetico</a></li>
            </ul>

        </div>

        <div id ="cadastro">
            <br>
            <h4>CADASTRO DE CLIENTE</h4>
            
            <form method="POST">
                <div align = "left">
                    ID: <input type="text"  size="5" maxlength="100" name="id">
                </div>
                <br>
                <br>

                <div align = "left">
                    Nome: <input type="text" placeholder="Nome do cliente" size="35" maxlength="256" name="nome">
                    Data de nascimento: <input type="date" size="20" maxlength="100" name="data">
                </div>
                <br>

                <br>
                <div align = "left">
                    CPF: <input type="text"   size="15" placeholder="Ex: 000.000.000-00" maxlength="11" name="cpf">

                    Sexo: <input type="radio"    name="sexo" value="feminino">Feminino
                    <input type="radio"    name="sexo" value="feminino">Masculino
                    Telefone: <input type="text"   size="15" placeholder="Ex: (00) 00000-0000" maxlength="12" name="Telefone">
                </div>
                <br>
                <br>
                <div align = "left">
                    Endereço: <input type="text" placeholder="Digite o Endereço" size="35" maxlength="256" name="endereco">
                    Cidade: <input type="text" placeholder="Digite a Cidade" size="25" maxlength="256" name="cidade">

                </div>
                <br>
                <br>
                <div align ="left ">
                    Estado:
                    <select name="estados">
                        <option> -  </option>
                        <option> AC </option>
                        <option> AL  </option>
                        <option> AP  </option>
                        <option> AM </option>
                        <option> BA </option>
                        <option> CE </option>
                        <option> DF </option>
                        <option> ES </option>
                        <option> GO </option>
                        <option> MA </option>
                        <option> MT </option>
                        <option> MS </option>
                        <option> MG </option>
                        <option> PA </option>
                        <option> PB </option>
                        <option> PR </option>
                        <option> PE </option>
                        <option> PI </option>
                        <option> RJ </option>
                        <option> RN </option>
                        <option> RS </option>
                        <option> RO </option>
                        <option> RR </option>
                        <option> SC </option>
                        <option> SP </option>
                        <option> SE </option>
                        <option> TO </option>

                    </select>
                    CEP: <input type="text"   size="15" placeholder="Ex: 00000-000" maxlength="8" name="cep">
                    Bairro: <input type="text"   size="35" placeholder="Digite o nome do Bairro" maxlength="300" name="bairro">
                </div>
               
                <div id ="botao" align="center">
                    <input type="submit" value="Concluir" name="concluir">
                    <input type="submit" value="Alterar" name="alterar" >
                    <input type="submit" value="Excluir" name="excluir" >
                    <input type="submit" value="Cancelar" name="cancelar" >
                </div>


            </form>

        </div>
        <div id = "rodape">

        </div>







    </body>
</html>
