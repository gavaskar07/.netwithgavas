<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="insert_new.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" BackColor="Red" BorderColor="#CC0066" Font-Bold="True" Text="Student Detail"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Overline="True" Font-Size="Medium" Text="Roll No"></asp:Label>
            <asp:TextBox ID="rollno" runat="server" Height="18px" Width="225px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Text="Name"></asp:Label>
            <asp:TextBox ID="sname" runat="server" Width="262px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="click to save" />

        </div>
    </form>
</body>
</html>
