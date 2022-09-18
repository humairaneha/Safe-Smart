<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Smart_and_safe.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <container-fluid class="">

        <div class="text-center ">
         
            <h2 class=" mt-4">
                Sign Up Form
            </h2>
            

        </div>

       <br />
       
    </container-fluid>


    <div class="container m-auto w-50 h-50 mb-3">

        <div class="row ">

            <div class="col-md-12">

                <div class="card" >
                    <div class="card-body ">

                        <div class="row mb-1">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-6">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                     
                   <div class="row mb-1">
                       <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Dob" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                        </div> </div>
                            <div class="col-md-6">
                        <label>NID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="National Id"></asp:TextBox>
                        </div>
                     </div>
                   </div> 
                  <div class="row mb-1">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Contact No"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Email ID"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row mb-2">    

            <div class="col-md-12">
                <label for="Password">Password<span class="text-danger">*</span></label>
        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
           
          </div> 

                        <div class="row mt-4 mb-3" style="margin-left:10%;margin-right:10%;">
                            
                            <asp:Button ID="Button1" CssClass="btn btn-md btn-primary" runat="server" Text="Sign Up" OnClick="Button1_Click" CausesValidation="False" UseSubmitBehavior="False" />
       
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>

    <br />

</asp:Content>
