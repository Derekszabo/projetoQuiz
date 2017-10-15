<%-- 
    Document   : home
    Created on : 13/10/2017, 05:01:32
    Author     : Derek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <title>JSP</title>
    </head>
    <body>
        
        <!--menu-->
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="#">POO</a>
                <ul class="nav">
                    <li class="active"><a href="home.jsp"><i class="icon-home"></i>Home</a></li>
                    <li><a href="questionario.jsp"><i class="icon-user icon-white"></i>Questionário</a></li>
                </ul>
            </div>
        </div>
        
        <% 
            String name=(String)session.getAttribute("sessname"); 
            out.print("Hello User: You have entered the name: "+name); 
        %> 
    
       <% 
        if(request.getParameter("buttonName") != null) {
               session.invalidate();
        }
    %>
       
    <FORM NAME="form1" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="buttonName">
        <INPUT TYPE="BUTTON" VALUE="Button 1" ONCLICK="button1()">
    </FORM>
    
    <SCRIPT LANGUAGE="JavaScript">
        
        function button1()
        {
            document.form1.buttonName.value = "yes";
            form1.submit();
        } 
       
    </SCRIPT>
       
       <!--tela de login--> 
       <br> <br>
       
        <div class="container">
            
           <form action="questionario.jsp" class="form-horizontal">
                                      
               <div class="control-group">
                   <h4 class="text-left"> Login: <h4>
                   <label class="control-label" for="inputEmail">Email</label>
                   <div class="controls">
                       <input type="text" id="inputEmail" placeholder="Email" name="inputEmail">
                   </div>
               </div>
               <div class="control-group">
                   <label class="control-label" for="inputPassword">Password</label>
                   <div class="controls">
                       <input type="password" id="inputPassword" placeholder="Password" name="inputPassword">
                   </div>
               </div>
               <div class="control-group">
                   <div class="controls">
                      
                       <button type="submit" class="btn">Sign in</button>
                   </div>
               </div>
           </form>
            </div>         
       
       <br> <br> <br>
       
    <!--tabela 10 ultimos testes e tabela 10 melhores notas--> 
       <div class="container"> 
           
          <h4>Resultados Obtidos: </h4>
          <br>
          
    <div class="row-fluid">
        <div class="span6">
            
              <table class="table table-condensed table-bordered">
                <caption><strong>Últimos Testes Realizados</strong></caption>
                <thead>
                    <tr>
                        <th>Índice</th>
                        <th>Teste</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>teste A</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>2</td>
                        <td>teste B</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>3</td>
                        <td>teste C</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>4</td>
                        <td>teste D</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>5</td>
                        <td>teste E</td>
                    </tr>
                </tbody>
            </table>  
                
           
            
            
       
        </div>
        
        
        <div class="span6">
            <table class="table table-condensed table-bordered">
                <caption><strong>Melhores Testes Realizados</strong></caption>
                <thead>
                    <tr>
                        <th>Índice</th>
                        <th>Teste</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>teste A</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>2</td>
                        <td>teste B</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>3</td>
                        <td>teste C</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>4</td>
                        <td>teste D</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>5</td>
                        <td>teste E</td>
                    </tr>
                </tbody>
            </table>
        
        </div>
    </div>
       </div>
    
    <br> <br> <br>
    
    <!--resultados do usuario--> 
    
    <div class="container">
    <h4>Resultados do Usuário: </h4>
    <br> 
    
    <h5>Média: xxx<h5>
    </div>
    
    <br> <br>
    
   <div class="container">
    <h4>Últimos Testes do Usuário: </h4> 
    <br>
    <div>
        <center>
            <table class="table table-condensed table-bordered" style="width: 50%">
                <caption><strong>Últimos Testes Realizados</strong></caption>
                <thead>
                    <tr>
                        <th>Índice</th>
                        <th>Teste</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>teste A</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>2</td>
                        <td>teste B</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>3</td>
                        <td>teste C</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>4</td>
                        <td>teste D</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>5</td>
                        <td>teste E</td>
                    </tr>
                </tbody>
            </table>  
            
        </center>
       
        
    </div>
    
    </div>
    
    <!--about us--> 
    <br> <br>
    <hr>
    
    <h4 class="text-center">Sobre Nós</h4>
    <br>
    <h5 class="text-center">4° Ciclo ADS Noturno </h5>
     <br> <br>
    <div class="container">
    <div class="row">
        <div class="span3">
            <center>
             <img src="derek.jpg" style="width:150px; height:150px" class="img-rounded">   
            </center>
         
          <center> <p style="margin-top: 10px">Derek Szabó </p> </center>  
        </div>
        <div class="span3">
            <center>
            <img src="marjorie.jpg" style="width:150px; height:150px" class="img-rounded"> 
            </center>
          
          <center> <p style="margin-top: 10px">Marjorie Ribeiro </p> </center>
        </div>
        <div class="span3">
            <center>
            <img src="rodrigo6.jpg"  style="width:150px; height:150px" class="img-rounded">
            </center>
            <center><p style="margin-top: 10px">Rodrigo Figueiredo </p> </center>
        </div>
        <div class="span3">
            <center>
           <img src="vinicius.jpg" style="width:150px; height:150px" class="img-rounded"> 
            </center>
           <center><p style="margin-top: 10px">Vinícius Lima </p> </center> 
        </div>
</div>
    
        </div>
   
     
     <hr>
     <div class="container">
         <h6 class="text-center"> Análisee e Desenvolvimento de Sistemas - 4° Ciclo Noturno</h6>
     </div>
    </body>
</html>
