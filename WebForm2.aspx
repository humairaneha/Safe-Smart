<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Smart_and_safe.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="SellStyle.css" rel="stylesheet" />

   
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <container-fluid class="mb-3">

        <div class="text-center ">
         
            <h2 class=" mt-4">
                Tired of your old phone?
            </h2>

            <h3 > SELL IT NOW! It's hassle free! </h3>
            <h2 class="mb-5"> Fill the form below,Hurry!!</h2>
            

        </div>


    </container-fluid>


    <div class="container m-auto w-50 h-50 ">

        <div class="row ">

            <div class="col-md-12">

                <div class="card" >
                    <div class="card-body ">

                        <div class="row">
                            <div class="col-md-6">
                                 <label for="validationCustom02" class="form-label">First name</label>
    <asp:TextBox class="form-control" id="TextBox1" runat="server" placeholder="eg:John" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ValidationGroup="submit" ControlToValidate="TextBox1" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-md-6">
                             <label for="validationCustom02" class="form-label">Last name</label>
    <asp:TextBox class="form-control" id="TextBox2" runat="server" placeholder="eg:Doe" ></asp:TextBox></div>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  ValidationGroup="submit" ControlToValidate="TextBox2" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                          <div class="row">
                            <div class="col-md-10">
                                 <label for="validationCustom02" class="form-label">Contact no</label>
    <asp:TextBox class="form-control" id="TextBox10" runat="server" placeholder="01XXXXXXXXX" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15"  ValidationGroup="submit" ControlToValidate="TextBox10" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <asp:TextBox class="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ValidationGroup="submit" ControlToValidate="TextBox3" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
      
      
        <div class="invalid-feedback">
        Please choose a Brand.
      </div></div>
                        </div>
                                                       <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon1">Model</span>
      <asp:TextBox class="form-control" ID="TextBoxModel" runat="server" aria-describedby="basic-addon1" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ValidationGroup="submit" ControlToValidate="TextBoxModel" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <div class="invalid-feedback">
      Please provide a valid model.
    </div></div>
                                   </div>
                    </div>
                       

                                                                              <div class="row mt-3">
                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon2">Imei1</span>
      <asp:TextBox class="form-control" ID="TextBox6" runat="server" aria-describedby="basic-addon2" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator8"  ValidationGroup="submit" ControlToValidate="TextBox6" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
                                   </div>
                                                                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon3">Imei2</span>
      <asp:TextBox class="form-control" ID="TextBox7" runat="server" aria-describedby="basic-addon3" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator9"  ValidationGroup="submit" ControlToValidate="TextBox7" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
                                   </div>

                        </div>
                                                        <div class="row mt-3">
                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon4">Buying Year</span>
      <asp:TextBox class="form-control" ID="TextBox4" runat="server" aria-describedby="basic-addon4" TextMode="Date" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator10"  ValidationGroup="submit" ControlToValidate="TextBox4" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
                                   </div>
                                                                                                        <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon5">Buying Price</span>
      <asp:TextBox class="form-control" ID="TextBox5" runat="server" aria-describedby="basic-addon5" TextMode="Number" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator11"  ValidationGroup="submit" ControlToValidate="TextBox5" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
                                   </div>

                        </div>

                        <div class="row mt-3">

                                                                <div class=" col-md-6">
                                                           <div class="input-group m-auto">
                                <span class="input-group-text" id="basic-addon6">Asking Price</span>
      <asp:TextBox class="form-control" ID="TextBox8" runat="server" aria-describedby="basic-addon4" TextMode="Number" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12"  ValidationGroup="submit" ControlToValidate="TextBox8" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
                                   </div>


                        </div>
                                                                     <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class="input-group"> 
                                   <label for="TextBox9" class="form-label" >Other Description</label> 

                                   
           <div class="input-group">
 
           <asp:TextBox Class="form-control" ID="TextBox9" runat="server" area-label="With Textarea" TextMode="MultiLine" > </asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator13"  ValidationGroup="submit" ControlToValidate="TextBox9" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
 
                                  

          </div>
                                   </div>


                        </div>
                                                      <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload2" ID="Label2" class="form-label" >Upload Photo(front and back) of your Nid </label> 
                                   <div class="input-group">
                                       
   <asp:FileUpload  class="form-control" ID="FileUpload2" AllowMultiple="true"   runat="server" />
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="submit" ControlToValidate="FileUpload1" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ValidationGroup="submit" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload1" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                              
     
 
 

                         
                                       
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
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload"  ValidationGroup="submit" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="submit" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                              
     
</div>
                                   </div>


                        </div>
                                     <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload1" class="form-label" > Two photos of your Smartphone </label> 
                                   <div class="input-group">
   <asp:FileUpload  class="form-control" ID="FileUpload1" AllowMultiple="true"   runat="server" /> </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ValidationGroup="submit" ControlToValidate="FileUpload1" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationGroup="submit" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload1" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                              
     
   
</div>
                                   </div>


                        </div>
                                     <div class="row mt-3">

                                                                <div class=" col-md-12">
                               <div class=" input-group  "> 
                                   <label for="FileUpload3" class="form-label" >Upload Clear picture of Cash Memo</label> 
                                   <div class="input-group">
   <asp:FileUpload  class="form-control" ID="FileUpload3"   runat="server" /> </div>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="FileUpload3"  ValidationGroup="submit" runat="server"  Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationGroup="submit" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ControlToValidate="FileUpload3" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file." Display="Dynamic" />                         
</div>
                                   </div>


                        </div>

                        <div class="row mt-4" style="margin-left:10%;margin-right:10%;">
                            
                             <asp:Button class="btn btn-md btn-primary" ID="Button"  CausesValidation="true" ValidationGroup="submit" runat="server" Text="Submit Ad" OnClick="Button_Click"   />
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>


    
   <br >

    <br >
 
</asp:Content>
