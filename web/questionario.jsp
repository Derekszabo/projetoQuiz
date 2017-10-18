<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.projetoQuiz.Questao"%>
<%@page import="br.com.fatecpg.projetoQuiz.Quiz"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        
        <%if(session.getAttribute("nomeSessao") == null || session.getAttribute("nomeSessao").equals("")) {
            response.sendRedirect("home.jsp?user=deslogado");
        }
        if(request.getParameter("add") != null){
            int acertos=0;
            for (Questao q: Quiz.getQuestoes()){
                String resposta=request.getParameter(q.getResposta());
                if(resposta!=null){
                    if(resposta.equals(q.getResposta()))
                        acertos++;
                }
            }
            Quiz.quantidade++;
            Quiz.soma+=(100.0*((double)acertos/10.0));
            response.sendRedirect(request.getContextPath()+"home.jsp");
        }%>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="#">POO</a>
                <ul class="nav">
                    <li class="active"><a href="home.jsp"><i class="icon-home"></i>Home</a></li>
                    <li><a href="questionario.jsp"><i class="icon-user icon-white"></i>Questionário</a></li>
                </ul>
            </div>
        </div>
        
        
       
        
        <!--questionario--> 
       <br> <br>
       <h2 class="text-center"> Questionário: <h2>
          
    <div class="container" style="text-align: center">
        <%for (Questao q: Quiz.getQuestoes()){%>
  <h4><%=q.getPergunta()%></h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[0]%>"><%=q.getAlternativas()[0]%>
    </label>
    <label class="radio-inline">
      <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[1]%>"><%=q.getAlternativas()[1]%>
    </label>
    <label class="radio-inline">
      <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[2]%>"><%=q.getAlternativas()[2]%>
    </label>
    <%}%>
    <input type="submit" name="add" value="Finalizar teste" />
  </form> 
               
               
     <hr>
     
     <%@include file="WEB-INF/jspf/footer.jspf" %>
     
    </body>
</html>
