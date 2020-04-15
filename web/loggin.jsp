<%-- 
    Document   : cadCliente
    Created on : 15/04/2020, 15:58:28
    Author     : victoria.sousa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

    <title>Rango Bravo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


</head>

<style>

    #logo{

        background-color: #FF6711;
        margin-top: 5%;	
        margin-left: 20%;	
        margin-right: 20%;
        height: 400px;	 
        border-radius: 10px;



    }
    #logo img{
        width: 100px;
        position: absolute;
        left: 70%;

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
        height: 5%;	  
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
        height: 5%;
        position: relative;
        background-color: #FF6711;
        top:17%;

    }



</style>

<body>
    <div id = "head">

    </div>


    <div id = "logo">

        <img src = "img\logo.png">

        <div id = "acesso">

            <div class = "texto">Digite os dados de acesso!</div>

            <div id = "acesso2">
                <form method="POST">

                    <div align = "center">
                        Usuario: <input type="text" placeholder="Entre com seu login" size="35" maxlength="256" name="nome">
                    </div>
                    <br>
                    <div align = "center">
                        Senha: <input type="password" size="35" maxlength="256" name="nome">
                    </div>
                    <br>
                    <div align="center">
                        <input type="submit" value="Entrar" name="enviar">
                    </div>

                    <br>
                    <div align="center">
                        <input type="submit" value="Esqueci a senha" name="esqueci" >
                    </div>
                </form>
            </div>

        </div>


    </div>
    <div id = "rodape">

    </div>







</body>


