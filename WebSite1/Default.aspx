<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" style="width: 59%; margin-left: 49px;">
            <tr>
                <td align="center" colspan="2">
                    CRUD OPERATION</td>
            </tr>
            <tr>
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    City</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="id">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("mobile") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("city") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                        onclick="Button2_Click" Text="Delete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("id") %>' 
                                        Text="Edit" onclick="Button3_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
