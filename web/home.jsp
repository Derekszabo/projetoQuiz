<%-- 
    Document   : home
    Created on : 13/10/2017, 05:01:32
    Author     : Derek
--%>
<%@page import="br.com.fatecpg.projetoQuiz.DB"%>
<%@page import="br.com.fatecpg.projetoQuiz.Usuario"%>
<%@page import="br.com.fatecpg.projetoQuiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="WEB-INF/jspf/head.jspf" %>
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
        
        <%String name="";
        if (request.getParameter("usuario") == "deslogado"){%><script>alert("Para acessar o questionário é necessário estar logado!");</script><%}%>
        <!--tela de login--> 
        <br> <br>
       
        <div class="container">
            
           
            </div>
       
       <%try {
           if(request.getParameter("btnUsuario") != null){
               String nomeUsuario = request.getParameter("inputUsuario");
               
               //Usuario usuario = new Usuario();
               
               //usuario.setNome(nomeUsuario);
               
               //DB.getUsuarios().add (usuario);
               
               session.setAttribute("nomeSessao", nomeUsuario);
               
           } else {
              
           }
           
       } catch(Exception ex) {
           %><script>alert("Digite um valor válido!");</script><%
       }      
       %>
       
       <%if(session.getAttribute("nomeSessao") == null || session.getAttribute("nomeSessao").equals("")) {%>
     
       
        <form class="form-horizontal">
                                      
               <div class="control-group">
               <div class ="container">
                       
                       <h4 class="text-left"> Login: <h4>
                       </div>  
                        
                       
                       <label class="control-label" for="inputUsuario">Email:</label>
                   <div class="controls">
                       <input type="email" id="inputEmail" placeholder="Usuario@email.com" name="inputUsuario" required>
                   </div>
               </div>
               
               
                       
               <div class="control-group">
                   <div class="controls">
                       <button type="submit" name="btnUsuario" class="btn">Logar</button>
                   </div>
               </div>
                 
           </form>
        <%} else {
        name=(String)session.getAttribute("nomeSessao"); %>
           <div class = "container">      
           <p>Olá, <%=name%></p>
        <br>
        <FORM NAME="form1" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="buttonName">
        <INPUT TYPE="BUTTON" VALUE="Deslogar" ONCLICK="button1()" class="btn">
    </FORM>
        </div>
        <%}%>
            
            <% 
        if(request.getParameter("buttonName") != null) {
               session.invalidate();
               response.sendRedirect("home.jsp");
        }
    %>

    

    <SCRIPT LANGUAGE="JavaScript">
        
        function button1()
        {
            document.form1.buttonName.value = "yes";
            form1.submit();
        } 
        
    </SCRIPT>
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
                        <th>Nome</th>
                        <th>Resultado</th>
                    </tr>
                </thead>
                <%int listar=5;
                if (DB.getUsuarios().size()<5)
                    listar=DB.getUsuarios().size();
                for (int i=DB.getUsuarios().size(); i>DB.getUsuarios().size()-listar;i--){
                    Usuario c = DB.getUsuarios().get(i-1);%>
                    <tr>
                        <td><%=c.getNome()%></td>
                        <td><%=c.getResultadoTeste()%></td>
                    </tr>
                <%}%>
                
                
            </table>  
                
           
            
            
       
        </div>
        
        
        <div class="span6">
            <table class="table table-condensed table-bordered">
                <caption><strong>Melhores Testes Realizados</strong></caption>
                
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Resultado</th>
                    </tr>
                </thead>
                <%for (Usuario r: DB.getUsuarios()){%>
                    <tr>
                        <td><%=r.getNome()%></td>
                        <td><%=r.getResultadoTeste()%></td>
                    </tr>
                <%}%>
                
                
            </table>
        
        </div>
    </div>
       </div>
    
    <br> <br> <br>
    <%if (name!=""){%>
    <!--resultados do usuario--> 
    
    <div class="container">
    <h4>Resultados do Usuário: <%=name%></h4>
    <br> 
    <%int media=0;
    int testes=0;
    for (int i=DB.getUsuarios().size(); i>0;i--){
        Usuario c = DB.getUsuarios().get(i-1);
        if (c.getNome().equals(name)){
            testes++;
            media+=c.getResultadoTeste();
        }
    }
    media=media/testes;%>
    <h5>Média: <%=media%><h5>
    </div>
    
    <br> <br>
    
   <div class="container">
    <h4>Últimos Testes: </h4> 
    <br>
    <table class="table table-condensed table-bordered">
                <caption><strong>Últimos Testes Realizados</strong></caption>
                
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Resultado</th>
                    </tr>
                </thead>
                <%listar=0;
                for (int i=DB.getUsuarios().size(); i>0;i--){
                    Usuario c = DB.getUsuarios().get(i-1);
                    if (c.getNome().equals(name)){%>
                        <tr>
                            <td><%=c.getNome()%></td>
                            <td><%=c.getResultadoTeste()%></td>
                        </tr>
                    <%listar++;
                    if (listar>=5)
                        break;
                    }
                }%>
                
                
            </table>
    </div>
    <%}%>
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
     
     <%@include file="WEB-INF/jspf/footer.jspf" %>
     
     </body>
</html>
