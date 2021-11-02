<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="insert_new.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#FFCCCC" Font-Bold="True" Font-Size="Larger" Text="Delete Student detail"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter the Roll No"></asp:Label>
            <asp:TextBox ID="rollno" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
        </div>
    </form>
</body>
</html>
