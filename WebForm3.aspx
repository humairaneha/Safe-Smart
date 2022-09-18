<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Smart_and_safe.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="detailspost.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sell_post] WHERE ([id] = @id)" >
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" Width="100%" OnItemDataBound="DataList1_ItemDataBound" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            
  <div class="container mt-5 p-info contain " style="margin-left:100px; margin-right:100px"  >

      <div class="header" >

          <h1 class="d-inline"> <asp:Label ID="Label11" runat="server" Text='<%#Eval("brand") %>'></asp:Label></h1>
          <h3 class="">
 <asp:Label ID="Label12" runat="server" Text='<%#Eval("model") %>'></asp:Label>
          </h3>

      </div>
      <hr class="hrow" />
         <div class="section">

               <div class="slideshow mt-0 h-50 half-width slide-div " >
    <div id="carouselExampleIndicators1" class="carousel carousel-dark carousel-fade slide mt-0 myslide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner ">
    <div class="carousel-item active">
      <asp:image src='<%#Eval("thumbnail") %>'  class="d-block w-100" runat="server" alt="..."/>
    </div>
    <div class="carousel-item" >
      <asp:image src='<%#Eval("pic1") %>'  class="d-block w-100" runat="server" alt="..."/>
    </div>
    <div class="carousel-item" >
       <asp:image src='<%#Eval("pic2") %>'  class="d-block w-100" runat="server" alt="..."/>
    </div>
      <div class="carousel-item" >
       <asp:image src='<%#Eval("memo") %>'  class="d-block w-100" runat="server" alt="..."/>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div> 

        </div>



          

      <div class="align-right">
                    <p class="d-inline"> For Sale By</p>
                     <asp:Label ID="Label10" CssClass="d-inline fw-bold"  runat="server" Text='<%# Eval("fname") + " " + Eval("lname")%>'></asp:Label> 
                </div>
             <div class="align">
                    <p  > Contact no</p>
                     <asp:Label ID="Label1" CssClass="d-inline fw-bold" runat="server" Text='<%# Eval("contact_no")%>'></asp:Label> 
                </div>
              <div class="info" >
                    <table>
          
            <tr visible= '<%# string.Equals(Session["role"],"admin")%>' runat="server">
             <th>
               Imei1
             </th>
                <td>
                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("imei1") %>'></asp:Label>
                </td>

            </tr>
             <tr visible= '<%# string.Equals(Session["role"],"admin")%>' runat="server">
             <th>
               Imei2
             </th>
                <td>
                    <asp:Label ID="Label14" runat="server" Text='<%#Eval("imei2") %>'></asp:Label>
                </td>

            </tr>

             <tr>
             <th>
               Buying Year
             </th>
                <td>
                    <asp:Label ID="Label15" runat="server" Text='<%#Eval("buying_year") %>'></asp:Label>
                </td>

            </tr>


             <tr>
             <th>
               Buying Price
             </th>
                <td>
                    <asp:Label ID="Label16" runat="server" Text='<%#Eval("buying_price") +" Tk" %>'></asp:Label>
                </td>

            </tr>

             <tr>
             <th>
              Asking Price
             </th>
                <td>
                    <asp:Label ID="Label17" runat="server" Text='<%#Eval("asking_price") +" Tk" %>'></asp:Label>
                </td>

            </tr>

            


        </table>
                </div>

       </div>
      <hr />
        <div class="extra-info">

      <h3 style="color:#565656">
          Other Information
      </h3>
      <p style="color:#3c3c3c"><asp:Label ID="Label19" runat="server" Text='<%#Eval("description") %>'></asp:Label> </p>

  </div>
                
         </div>   



<section class="container contain section nid " visible= '<%# string.Equals(Session["role"],"admin")%>' runat="server">
   
    <div class="half-width ">  <asp:image src='<%#Eval("nid1") %>' class="d-block image " alt="..." runat="server" height="300" width="500" />   </div>
     <div class="half-width">  <img src='<%#Eval("nid2") %>'  class="d-block image " alt="..."height="300" width="500" >   </div>
       
</section>
       
            <section class="section container  " visible= '<%# string.Equals(Session["role"],"admin")%>' runat="server">
            <div class="d-inline text-center " style="margin-right:30px">
                <asp:Button ID="Buttom1" class="btn btn-lg btn-primary" width="500px" Text="Approve" CausesValidation="false" UseSubmitBehavior="false" OnClick="Buttom1_Click" runat="server" /> 
            </div>
            <div class="mr">
                <asp:Button ID="Button2" class="btn btn-lg btn-warning" width="500px" Text="Decline" CausesValidation="false" UseSubmitBehavior="false" OnClick="Button2_Click" runat="server" /> 
            </div>
                 <div class="mr">
                <asp:Button ID="Button12" class="btn btn-lg btn-warning" width="200px" CommandName="check" CommandArgument='<%#Eval("imei1") + ";" +Eval("imei2") %>' Text="Check" CausesValidation="false" UseSubmitBehavior="false"  runat="server" /> 
            </div>
       
</section>
            <div class="container m-auto" >
                <asp:Image ID="Image1"  Visible="false" runat="server" ImageUrl="~/image/Matched.png" />
                
                </div>

                    <section class="section container" visible= '<%# string.Equals(Session["username"],Eval("username")) & (!string.Equals(Session["role"],"admin")) %>' runat="server">
            <div  class="d-inline text-center " style="margin-right:30px">
                <asp:LinkButton href="#exampleModalCenter7" data-bs-toggle="modal" data-bs-target="#exampleModalCenter7" ID="Button1" class="btn btn-lg btn-primary  "   width="500px" Text="Update" UseSubmitBehavior="false" OnClick="Buttom1_Click" runat="server" /> 
            </div>
                        <br />
            <div class=""   runat="server">
                <asp:LinkButton ID="Button3" href="#Modal" data-bs-toggle="modal" data-bs-target="#Modal" class="btn btn-lg btn-warning " Width="500px" Text="Delete" UseSubmitBehavior="false" OnClick="Button2_Click" runat="server" /> 
            </div>
       
</section>

            
            
             <asp:Label ID="Label20" visible="false" runat="server" Text='<%#Eval("status")%>'></asp:Label> </h5>
  
   <!--updatemodal-->
 <div class="modal mymodal fade" id="exampleModalCenter7" tabindex="-1" aria-hidden="true" width="900px">

  <div class="modal-dialog modal-dialog-centered">
             

    <div class="modal-content">

     
          <div class="modal-header">
            <h5 class="modal-title">Edit Form</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <div class="mb-2">
                <div class="container">
      <div class="row ">

            <div class="col-md-12">

                <div class="card" >
                    <div class="card-body ">

                        <div class="row">
                            <div class="col-md-6">
                                 <label for="validationCustom02" class="form-label">First name</label>
    <asp:TextBox class="form-control" id="TextBox1" runat="server" Text='<%#Eval("fname")%>' placeholder="eg:John" ></asp:TextBox>
           
                            </div>

                            <div class="col-md-6">
                             <label for="validationCustom02" class="form-label">Last name</label>
    <asp:TextBox class="form-control" id="TextBox2" Text='<%#Eval("lname")%>' runat="server" placeholder="eg:Doe" ></asp:TextBox></div>
                             
                        </div>
                          <div class="row">
                            <div class="col-md-10">
                                 <label for="validationCustom02" class="form-label">Contact no</label>
    <asp:TextBox class="form-control" id="TextBox10" runat="server" Text='<%#Eval("contact_no")%>' placeholder="01XXXXXXXXX" ></asp:TextBox>
            
                            </div>

                           
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <br >
                               <label for="smartphone"> Smartphone Details </label>
                                <hr >
                            </div>
                        </div>
                                    <div class="row" id="smartphone">
                            <div class="col-md-6">
                                    
                                
            <div class="input-group has-validation">
          <span class="input-group-text" id="inputGroupPrepend">Brand</span>
        <asp:TextBox class="form-control" ID="TextBox3" Text='<%#Eval("brand")%>' runat="server" ></asp:TextBox>
                 
      
      
        <div class="invalid-feedback">
        Please choose a Brand.
      </div></div>
                        </div>
                                                       <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon1">Model</span>
      <asp:TextBox class="form-control" ID="TextBoxModel" Text='<%#Eval("model")%>'  runat="server" aria-describedby="basic-addon1" ></asp:TextBox>
       
    <div class="invalid-feedback">
      Please provide a valid model.
    </div></div>
                                   </div>
                    </div>
                       

                                                                              <div class="row mt-3">
                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon2">Imei1</span>
      <asp:TextBox class="form-control" ID="TextBox6" runat="server" Text='<%#Eval("imei1")%>' aria-describedby="basic-addon2" ></asp:TextBox>
     
</div>
                                   </div>
                                                                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon3">Imei2</span>
      <asp:TextBox class="form-control" ID="TextBox7" Text='<%#Eval("imei2")%>' runat="server" aria-describedby="basic-addon3" ></asp:TextBox>
      
</div>
                                   </div>

                        </div>
                                                        <div class="row mt-3">
                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon4">Buying Year</span>
      <asp:TextBox class="form-control" ID="TextBox4" Text='<%#Eval("buying_year")%>' runat="server" aria-describedby="basic-addon4" TextMode="Date" ></asp:TextBox>
      
</div>
                                   </div>
                                                                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon5">Buying Price</span>
      <asp:TextBox class="form-control" ID="TextBox5" runat="server" Text='<%#Eval("buying_price")%>' aria-describedby="basic-addon5" TextMode="Number" ></asp:TextBox>

</div>
                                   </div>

                        </div>

                        <div class="row mt-3">

                                                                <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon6">Asking Price</span>
      <asp:TextBox class="form-control" ID="TextBox8" runat="server" Text='<%#Eval("asking_price")%>' aria-describedby="basic-addon4" TextMode="Number" ></asp:TextBox>
   
</div>
                                   </div>


                        </div>
                                                                     <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class="input-group"> 
                                   <label for="TextBox9" class="form-label" >Other Description</label> 

                                   
           <div class="input-group">
 
           <asp:TextBox Class="form-control" ID="TextBox9" Text='<%#Eval("description")%>' runat="server" area-label="With Textarea" TextMode="MultiLine" > </asp:TextBox>
             
           </div>
 
                                  

          </div>
                                   </div>


                        </div>
                                                      <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload2" ID="Label2" class="form-label" > Upload Photo(front and back) of your Nid </label> 
                                   <div class="input-group">
                                       
   <asp:FileUpload  class="form-control" ID="FileUpload2" AllowMultiple="true"   runat="server" />
  
   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload1" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                              
     
 
 

                         
                                       
                                   </div>





   
</div>
                                   </div>


                        </div>

                                        <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload" class="form-label" >Upload a thumbnail photo(front view preferrable) of your Smartphone </label> 
                                   <div class="input-group">
   <asp:FileUpload  class="form-control" ID="FileUpload"   runat="server" /> </div>
    
   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                              
     
</div>
                                   </div>


                        </div>
                                     <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload1" class="form-label" > Two photos of your Smartphone </label> 
                                   <div class="input-group">
   <asp:FileUpload  class="form-control" ID="FileUpload1" AllowMultiple="true"   runat="server" /> </div>
                                   
   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload1" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                              
     
   
</div>
                                   </div>


                        </div>
                                     <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload3" class="form-label" >Upload Clear picture of Cash Memo</label> 
                                   <div class="input-group">
   <asp:FileUpload  class="form-control" ID="FileUpload3"   runat="server" /> </div>
    
   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload3" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                         
</div>
                                   </div>


                        </div>

                        <div class="row mt-4" style="margin-left:10%;margin-right:10%;">
                            
                             <asp:Button class="btn btn-md btn-primary" ID="Button" CommandName="update" runat="server" Text="Update"  UseSubmitBehavior="false" CausesValidation="false" />
                        </div>

                    </div>
                </div>

            </div>
                </div> </div> </div> </div> </div> </div>

       
 
    </div> 
     
   
  </div>

    </div>


            <div class="modal  fade" id="Modal"  tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

     
          <div class="modal-header">
            <h5 class="modal-title">Warning</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <div class="mb-2">
                <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="card ">
               <div class="card-body">
                   <div class="row">
                       <div class="col-md-12">
             <h2 style="font-family:monospace;color:dimgray;">Are you sure you want to delete your post?</h2>
           
           </div>

           
            
           
          </div>  
                </div> </div> </div> </div> </div> </div>

          <div class="modal-footer pt-4">                  
              <asp:Button class="btn btn-warning mx-auto w-100" ID="Button4" CommandName="delete" runat="server" Text="Yes,Proceed"  UseSubmitBehavior="False" CausesValidation="false"/>
          </div>

 
    </div> 
  </div>
</div>

        </ItemTemplate>
    </asp:DataList>








</asp:Content>
