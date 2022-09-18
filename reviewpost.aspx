<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reviewpost.aspx.cs" Inherits="Smart_and_safe.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="reviewpost.css" rel="stylesheet" />
    
       <script type="text/javascript">
           function mouseOver() {
               document.getElementById("mydiv").classList.add("hover");
               document.getElementById("mydiv").classList.remove("shadow-lg");
           }

           function mouseOut() {
               document.getElementById("mydiv").classList.remove("hover");
               document.getElementById("mydiv").classList.add("shadow-lg");
           }
       </script>  
     

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class=" m-4 mb-2">
       

             <asp:Label ID="Label3" class="label" runat="server" Text="Filter:"></asp:Label>
            <asp:CheckBox ID="CheckBox1" class="checkbox mr-2" runat="server" Text="Approved Post" />
            <asp:CheckBox ID="CheckBox2" class="checkbox" runat="server" Text="Pending Post"  />
            <asp:Button ID="Button1" class="button" runat="server" Text="Go" UseSubmitBehavior="False" CausesValidation="false" OnClick="Button1_Click" />
            


    </div>
    
    


    <asp:DataList ID="DataList1" runat="server" class="m-5 mt-1" RepeatColumns="4" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" Height="320px" Width="320px" OnItemCommand="DataList1_ItemCommand1" OnEditCommand="DataList1_ItemCommand1" OnItemDataBound="DataList1_ItemDataBound"  >
        <ItemTemplate>

            <div id="mydiv" class=" card text-center m-4 shadow-lg  "    >

                 
                <div class="card-body p-0 ">
                   
                

                            <div class="row row-style p-0">

                        <div class="col-md-12 p-0">
                            <asp:ImageButton ID="ImageButton1" CommandName="viewdetail" 
                                CommandArgument='<%# Eval("id") %>'   runat="server" AlternateText="h" OnCommand="ImageButton1_Command" EnableViewState="true" Height="260px" Width="300px" ImageUrl='<%# Eval("thumbnail") %>' />
                        </div>

                           </div>
                    
                         <!--  <div class="row row-style">

                        <div class="col-md-6 border-right">

                            <asp:Label ID="Label3" runat="server" Text="Buying Price:"></asp:Label>
                            <asp:Label ID="Label20"  runat="server" Text='<%# Eval("buying_price") %>' ></asp:Label>


                        </div>
                           <div class="col-md-6">

                            <asp:Label ID="Label4" runat="server" Text="Asking Price:"></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("asking_price") %>'></asp:Label>


                        </div>
                           </div> -->
                        <div class="row row-style">

                        <div class="col-md-12" >

                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("brand")%>'></asp:Label>


                        </div>
                        </div>
                            <div class="row row-style">

                        <div class="col-md-12">

                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("model") %>'></asp:Label>


                        </div>

                           </div>
                      <div class="row p-0">

                        <div class="col-md-12 p-0">
                            <asp:Button class="btn btn-primary " ID="Button2" CausesValidation="false" UseSubmitBehavior="false" runat="server" CommandName="viewdetail" CommandArgument='<%# Eval("id") %>' Width="300px"  Text="View Details" />
                     </div>

                           </div>

                           <div class="row row-style">

                        <div class="col-md-12">

                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("status") %>'></asp:Label>


                        </div>

                           </div>

                           
                    </div>

                  
                </div>




            </div>



        </ItemTemplate>




    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sell_post] ORDER BY [id]"></asp:SqlDataSource>

  
</asp:Content>
