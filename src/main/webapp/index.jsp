<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <style>
            h1 {
                text-align: center;
                color: blue
            }    
            form {
                width: 50vw;
                margin: 0 auto;
                padding: 20px;
                text-align: center;
                justify-content: center;
                color:blueviolet;
                background: black;
            }
              
        </style>
    </head>
    <body>
         <h1>Datos del usuario</h1>
         <br>
         
         <form action="NewServlet" method="POST">
          
             
           <div class="mb-3">
                <label for="nombre" class="form-label"> Primer Nombre</label>
                <input type="text" class="form-control" name="nombre" placeholder="Digite su nombre" required>
           </div>
             <div class="mb-3">
                <label for="apellido" class="form-label"> Primer Apellido</label>
                <input type="text" class="form-control" name="apellido" placeholder="Digite su apellido" required>
           </div>
           
           <div class="col-12">
              <button class="btn btn-primary" type="submit">Enviar</button>
           </div>
           
        </form>     

         

         
         
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script> 
    </body>
</html>