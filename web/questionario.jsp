<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.projetoQuiz.Questao"%>
<%@page import="br.com.fatecpg.projetoQuiz.Quiz"%>
<%@page import="br.com.fatecpg.projetoQuiz.DB"%>
<%@page import="br.com.fatecpg.projetoQuiz.Usuario"%>
<%@page import="java.util.Date"%>
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
            int quest=1;
            for (Questao q: Quiz.getQuestoes()){
                String resposta=request.getParameter(""+quest);
                if(resposta!=null){                    
                    if(Integer.parseInt(resposta)==q.getResposta()){
                        acertos++;
                    }
                }
                quest++;
            }
            
            Date d = new Date();

            String dStr = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
            
            Usuario r = new Usuario();
            r.setNome((String)session.getAttribute("nomeSessao"));
            r.setDataTeste(dStr);
            r.setResultadoTeste((100.0*((double)acertos/10.0)));
            DB.getUsuarios().add (r);
            
            response.sendRedirect("home.jsp");
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
        <%int quest=1;
        for (Questao q: Quiz.getQuestoes()){%>
  <h4><%=q.getPergunta()%></h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="<%=quest%>" value="1"><%=q.getAlternativas()[0]%>
    </label>
    <label class="radio-inline">
      <input type="radio" name="<%=quest%>" value="2"><%=q.getAlternativas()[1]%>
    </label>
    <label class="radio-inline">
      <input type="radio" name="<%=quest%>" value="3"><%=q.getAlternativas()[2]%>
    </label>
    <label class="radio-inline">
      <input type="radio" name="<%=quest%>" value="4"><%=q.getAlternativas()[3]%>
    </label>
    <label class="radio-inline">
      <input type="radio" name="<%=quest%>" value="5"><%=q.getAlternativas()[4]%>
    </label><br/>
    <%quest++;
    }%>
    <input type="submit" name="add" value="Finalizar teste" />
  </form> 
               
               
     <hr>
     
     <%@include file="WEB-INF/jspf/footer.jspf" %>
     
    </body>
</html>
