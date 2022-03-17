<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Default3" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="wrapper">
        
        <div class="form-w3layouts">
            <!-- page start-->
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Users
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Full Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>


                                    </div>   

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                                         <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>

                                    </div>
                                   
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Password"></asp:TextBox>

                                    </div>
                                    <div>
                                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                    </div>
                                    <div>
                                    <%--<button type="submit" class="btn btn-info">Submit</button>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-info" OnClick="Button1_Click" />
                                    </div>
                                <div class="checkbox">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </div>
                                    <div class="checkbox">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="3" Font-Size="Medium" Height="80px" Width="650px" 
                                            GridLines="Horizontal">
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="ID">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("fullname") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Email">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Password">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                            onclick="Button2_Click" Text="Edit" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                            onclick="Button3_Click" Text="Delete" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" BorderWidth="10px" />
                                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
                                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                        </asp:GridView>
                                    </div>
                                    <div class="checkbox">
                                        

                                    </div>
                                
                            </div>

                        </div>
                    </section>

                </div>
            </div>
            

            <!-- page end-->
        </div>
            
    </section>




    <%--<br><br><br><br><br><br><br><br>
  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="id">
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("fullname") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <ItemTemplate>
                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="delete" onclick="Button1_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>--%>
   
</asp:Content>

