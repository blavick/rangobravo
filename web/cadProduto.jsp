<%-- 
    Document   : cadProduto
    Created on : 16/04/2020, 16:11:33
    Author     : carlos.sousa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rango Bravo</title>
        <script type="text/javascript">
            function mascara(o, f) {
                v_obj = o
                v_fun = f
                setTimeout("execmascara()", 1)
            }
            function execmascara() {
                v_obj.value = v_fun(v_obj.value)
            }
            function mtel(v) {
                v = v.replace(/D/g, "");             //Remove tudo o que não é dígito
                v = v.replace(/^(d{2})(d)/g, "($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
                v = v.replace(/(d)(d{4})$/, "$1-$2");    //Coloca hífen entre o quarto e o quinto dígitos
                return v;
            }
            function id(el) {
                return document.getElementById(el);
            }
            window.onload = function () {
                id('telefone').onkeypress = function () {
                    mascara(this, mtel);
                }
            }

            function BlockKeybord()
            {
                if (window.event) // IE
                {
                    if ((event.keyCode < 48) || (event.keyCode > 57))
                    {
                        event.returnValue = false;
                    }
                } else if (e.which) // Netscape/Firefox/Opera
                {
                    if ((event.which < 48) || (event.which > 57))
                    {
                        event.returnValue = false;
                    }
                }


            }

            function troca(str, strsai, strentra)
            {
                while (str.indexOf(strsai) > -1)
                {
                    str = str.replace(strsai, strentra);
                }
                return str;
            }

            function FormataMoeda(campo, tammax, teclapres, caracter)
            {
                if (teclapres == null || teclapres == "undefined")
                {
                    var tecla = -1;
                } else
                {
                    var tecla = teclapres.keyCode;
                }

                if (caracter == null || caracter == "undefined")
                {
                    caracter = ".";
                }

                vr = campo.value;
                if (caracter != "")
                {
                    vr = troca(vr, caracter, "");
                }
                vr = troca(vr, "/", "");
                vr = troca(vr, ",", "");
                vr = troca(vr, ".", "");

                tam = vr.length;
                if (tecla > 0)
                {
                    if (tam < tammax && tecla != 8)
                    {
                        tam = vr.length + 1;
                    }

                    if (tecla == 8)
                    {
                        tam = tam - 1;
                    }
                }
                if (tecla == -1 || tecla == 8 || tecla >= 48 && tecla <= 57 || tecla >= 96 && tecla <= 105)
                {
                    if (tam <= 2)
                    {
                        campo.value = vr;
                    }
                    if ((tam > 2) && (tam <= 5))
                    {
                        campo.value = vr.substr(0, tam - 2) + ',' + vr.substr(tam - 2, tam);
                    }
                    if ((tam >= 6) && (tam <= 8))
                    {
                        campo.value = vr.substr(0, tam - 5) + caracter + vr.substr(tam - 5, 3) + ',' + vr.substr(tam - 2, tam);
                    }
                    if ((tam >= 9) && (tam <= 11))
                    {
                        campo.value = vr.substr(0, tam - 8) + caracter + vr.substr(tam - 8, 3) + caracter + vr.substr(tam - 5, 3) + ',' + vr.substr(tam - 2, tam);
                    }
                    if ((tam >= 12) && (tam <= 14))
                    {
                        campo.value = vr.substr(0, tam - 11) + caracter + vr.substr(tam - 11, 3) + caracter + vr.substr(tam - 8, 3) + caracter + vr.substr(tam - 5, 3) + ',' + vr.substr(tam - 2, tam);
                    }
                    if ((tam >= 15) && (tam <= 17))
                    {
                        campo.value = vr.substr(0, tam - 14) + caracter + vr.substr(tam - 14, 3) + caracter + vr.substr(tam - 11, 3) + caracter + vr.substr(tam - 8, 3) + caracter + vr.substr(tam - 5, 3) + ',' + vr.substr(tam - 2, tam);
                    }
                }
            }

            function maskKeyPress(objEvent)
            {
                var iKeyCode;

                if (window.event) // IE
                {
                    iKeyCode = objEvent.keyCode;
                    if (iKeyCode >= 48 && iKeyCode <= 57)
                        return true;
                    return false;
                } else if (e.which) // Netscape/Firefox/Opera
                {
                    iKeyCode = objEvent.which;
                    if (iKeyCode >= 48 && iKeyCode <= 57)
                        return true;
                    return false;
                }


            }
        </script>
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
            margin-right: 15%;
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
                <li><a href="cadProduto.jsp">Cadastro Produto</a></li>
                <li><a href="cadCliente.jsp">Cadastro Cliente</a></li>
                <li><a href="link4.htm">Relatório Análitico</a></li>
                <li><a href="link5.htm">Relatório Síntetico</a></li>
            </ul>

        </div>

        <div id ="cadastro">
            <br>
            <h4>CADASTRO DE PRODUTO</h4>

            <form method="POST">
                <div align = "left">
                    ID: <input type="text"  size="5" maxlength="100" name="id">
                </div>
                <br>
                <br>

                <div align = "left">
                    Nome: <input type="text" placeholder="Nome do Produto" size="35" maxlength="256" name="nome">
                    Preço custo: <input type="text" name="texto" size="10" maxlength="10" onkeydown="FormataMoeda(this, 10, event)" onkeypress="return maskKeyPress(event)" />
                    Preço Venda: <input type="text" name="texto" size="10" maxlength="10" onkeydown="FormataMoeda(this, 10, event)" onkeypress="return maskKeyPress(event)" />
                </div>
                <br>

                <br>
                <div align = "left">
                    CPF: <input type="text"   size="15" placeholder="Ex: 000.000.000-00" maxlength="11" name="cpf">

                    Sexo: <input type="radio"    name="sexo" value="feminino">Feminino
                    <input type="radio"    name="sexo" value="feminino">Masculino
                    Telefone: <input type="text"  id="telefone" size="15" placeholder="Ex: (00) 00000-0000" maxlength="12" name="Telefone">
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
