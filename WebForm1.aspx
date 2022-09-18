<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Smart_and_safe.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="slideshow mt-0">
    <div id="carouselExampleIndicators" class="carousel carousel-dark carousel-fade slide mt-0 myslide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner ">
    <div class="carousel-item active" data-bs-interval="2000">
      <img src="image/BUY1.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
     <img src="image/Sell1.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="image/Exhnage1.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div> 

        </section>

    <section class="mycards m-5 ">

        <div class="row row-cols-1 row-cols-md-3 g-5 d-flex justify-content-center ">
  <div class="col-4 h-25 "style="width:350px">
    <div class="card h-50">
        <a href="#" class="h-auto"><img src="image/Buylogo.png" class="card-img-top h-auto" alt="..."></a> 
    
    </div>
  </div>
  <div class="col-4 h-25" style="width:350px">
    <div class="card h-50">
        <a href="#" class="h-auto"><img src="image/Sell_logo.png" class="card-img-top h-auto" alt="..."></a> 
      
    </div>
  </div>
  <div class="col-4 h-25 " style="width:350px" >
    <div class="card h-50">
        <a href="#" class="h-auto"> <img src="image/Exlogo.png" class="card-img-top h-auto " width="200px" height="200px" alt="..."></a>
     
    </div>
  </div>
</div>
    </section>

    <section>


       <div class="container-fluid my-container">

           <div class="box">

               <img src="image/stolen.jpg" style="border-radius:100px; border:1px solid black; box-shadow:5px 5px 10px rgb(128 128 128 / 0.90);" height="200px" width="200px" >
                  <br />
               <div class="img-div"> 
                
                   <H3>  Using a stolen phone can get you into legal trouble </H3>
                   <p>In case you buy a second-hand phone and it turns out to be stolen, then you might handover the phone to its actual owner,and not get a penny back!.</p>

               </div>

           </div>
           <div class="box">

               <img src="image/verify.png" style="border-radius:100px; border:1px solid black; object-fit:fill; box-shadow:5px 5px 10px rgb(128 128 128 / 0.90);" height="200px" width="200px" >
                 <br />
               <div class="img-div"> 
                 
                   <h3> We maintain a record of the IMEI number of stolen and lost phones  </h3>
                   <p> We check the Imei number for you and make sure that you never end up buying a stolen one.</p>

               </div>

           </div >

              <div class="box">

               <img src="image/image.jpeg" style="border-radius:100px; border:1px solid black;  object-fit:fill; box-shadow:5px 5px 10px rgb(128 128 128 / 0.90);" height="200px" width="200px" >
                   <br />
               <div class="img-div"> 
                  <h3>The best place to sell your used phone.</h3>
                   <p> If you want to sell your used phone for cash ,this is the right place for you ! You just need to fill a form and wait for customer's call. </p>

               </div>

           </div>


       </div>



    </section>

</asp:Content>
