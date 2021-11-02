<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update_student.aspx.cs" Inherits="insert_new.update_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="#FF5050" Text="Update Student Detail"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Narrow" Text="Enter the rollno"></asp:Label>
            <asp:TextBox ID="rollno" runat="server" style="width: 128px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="search" />
            <br />
            <asp:Label ID="Label3" runat="server" BackColor="#FF3399" Font-Bold="True" Font-Names="Arial Narrow" Text="The student details are:"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="Roll No:"></asp:Label>
            <asp:TextBox ID="rollno_edit" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="Name:"></asp:Label>
            <asp:TextBox ID="sname" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="update" />
        </div>
    </form>
</body>
</html>
