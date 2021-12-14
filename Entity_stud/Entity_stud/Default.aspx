<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Entity_stud.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="gvstudent" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" 
                OnRowCommand="GVStudent_RowCommand" ShowFooter="True" AllowPaging="True"
                    OnRowEditing="GVStudent_RowEditing"   OnRowUpdating="GVStudent_RowUpdating"  OnRowDeleting="GVStudent_RowDeleting" 
                OnRowCancelingEdit="GVStudent_RowCancelingEdit">

                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField  HeaderText="Student Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="sname" runat="server" Text='<%# Bind("sname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="sname1" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblsname" runat="server" Text='<%# Bind("sname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Gender">
                        <EditItemTemplate>
                            <asp:TextBox ID="gender" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="gender1" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblgender" runat="server" Text='<%# Bind("gender") %>'>></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Blood Group">
                        <EditItemTemplate>
                            <asp:TextBox ID="bgroup" runat="server" Text='<%# Bind("bgroup") %>'>></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="bgroup1" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblbgroup" runat="server" Text='<%# Bind("bgroup") %>'>></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField  HeaderText="address">
                        <EditItemTemplate>
                            <asp:TextBox ID="address" runat="server" Text='<%# Bind("address") %>'>></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="address1" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbladdress" runat="server" Text='<%# Bind("address") %>'>></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="">  
                                    <ItemTemplate>  
                                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" >  
                                        </asp:LinkButton>  
                                        <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Delete"  
                                            ToolTip="Delete" OnClientClick='return confirm("Are you sure you want to delete Student Details?");'>  
                                            
                                        </asp:LinkButton>  
                                    </ItemTemplate>  
  
                                    <EditItemTemplate>  
                                        <asp:LinkButton ID="lnkInsert" runat="server" Text="Update" ValidationGroup="vldEditRecord"   
                                            CommandName="Update" ToolTip="Save"  
                                            OnClientClick='return confirm("Student Detail Saved Successfully.");'>  
                                                 
                                        </asp:LinkButton>  
                                        <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel">  
                                        </asp:LinkButton>  
                                    </EditItemTemplate>  
  
                                    <FooterTemplate>  
                                        <asp:LinkButton ID="lnkInsert" runat="server" Text="Insert" ValidationGroup="vldNewRecord"   
                                            CommandName="InsertNew" ToolTip="Add New Employee"  
                                            OnClientClick='return confirm("Employee Record addedd Successfully.");'>  
                                             
                                        </asp:LinkButton>  
                                        <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="CancelNew" ToolTip="Cancel">  
                                            
                                        </asp:LinkButton>  
                                    </FooterTemplate>  
  
                                </asp:TemplateField>

                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
