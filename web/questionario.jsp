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
        
        
       
        
        <!--questionario--> 
       <br> <br>
       
       <h2 class="text-center"> Questionário: <h2>
          
    <div class="container" style="text-align: center">
  <h4>Questão 1: </h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 3
    </label>
  </form>
   
 

  <h4>Questão 2: </h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 3
    </label>
  </form>
  
 
  

<h4>Questão 3: </h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 3
    </label>
  </form>


<h4>Questão 4: </h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 3
    </label>
  </form>


<h4>Questão 5: </h4>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Option 3
    </label>
  </form>
</div>  
               
               
     <hr>
     
     <%@include file="WEB-INF/jspf/footer.jspf" %>
     
    </body>
</html>
