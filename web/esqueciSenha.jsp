<%-- 
    Document   : esqueciSenhajsp
    Created on : 18/04/2020, 16:17:06
    Author     : aline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    }



</style>
    <body>
    <div id = "head">

    </div>


    <div id = "logo">

        <img src = "img\logo.png">

        <div id = "acesso">
            <div class = "texto">Esqueci a Senha</div>
            <div id = "acesso2">
                <form method="POST">
                    <div align = "center">
                        E-mail: <input type="text" placeholder="e-mail cadastrado" size="35" maxlength="256" name="nome">
                    </div>
                    <div align="center">
                        <br>
                        <input type="submit" value="Voltar" name="voltar">
                        <input type="submit" value="Enter" name="enter">
                    </div>
                </form>
            </div>

        </div>


    </div>
    <div id = "rodape">
    </div>
</body>
</html>
