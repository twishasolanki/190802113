<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageService.aspx.cs" Inherits="_Default" EnableEventValidation="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section class="wrapper">
        
        <div class="form-w3layouts">
            <!-- page start-->
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Service
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Title</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>


                                    </div>   

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Description</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                                         <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>

                                    
                                    </div>
                                    <div class="form-group">
                                     <label for="exampleInputEmail1">Status</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">Active</asp:ListItem>
                                            <asp:ListItem Value="0">Deactive</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div>
                                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                    </div>
                                    <div>
                                    <%--<button type="submit" class="btn btn-info">Submit</button>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-info" 
                                            onclick="Button1_Click" />
                                    </div>
                                <div class="checkbox">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </div>
                                    <div class="checkbox">
                                    </div>
                                    <div class="checkbox">
                                        
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:TemplateField HeaderText="id">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Title">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("title") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal10" runat="server" Text='<%# Eval("description") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="status">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal11" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="edit">
                                                    <ItemTemplate>
                                                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                            Text="Edit" onclick="Button2_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="delete">
                                                    <ItemTemplate>
                                                        <asp:Button ID="Button3" runat="server" Text="Delete" 
                                                            CommandArgument='<%# Eval("id") %>' onclick="Button3_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                
                            </div>

                        </div>
                    </section>

                </div>
            </div>
            

            <!-- page end-->
        </div>
            
    </section>




</asp:Content>

