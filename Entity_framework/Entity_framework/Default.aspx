<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Entity_framework.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <h1>Student Detail CURD using Entity Framework</h1>
             <asp:GridView ID="GVStudent" runat="server"   
                            AutoGenerateColumns="False" ShowFooter="True" AllowPaging="True"  
                            OnRowCommand="GVStudent_RowCommand"  
                            DataKeyNames="id" CellPadding="4" ForeColor="#333333"  
                            GridLines="None" OnRowCancelingEdit="GVStudent_RowCancelingEdit"  
                            OnRowEditing="GVStudent_RowEditing"  
                            OnRowUpdating="GVStudent_RowUpdating"  
                            OnRowDeleting="GVStudent_RowDeleting"  
                            OnPageIndexChanging="GVStudent_OnPageIndexChanging">  
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />  
                            <Columns>                                
                                <asp:TemplateField HeaderText="Roll No" HeaderStyle-HorizontalAlign="Left">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="txtrollno" runat="server" Text='<%# Bind("rollno") %>'></asp:TextBox>  
                                        <asp:RequiredFieldValidator ID="valrollno" runat="server" ControlToValidate="txtrollno"  
                                            Display="Dynamic" ErrorMessage="Roll No is required." ForeColor="Red" SetFocusOnError="True"  
                                            ValidationGroup="vldEditRecord">*</asp:RequiredFieldValidator>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="lblrollno" runat="server" Text='<%# Bind("rollno") %>'></asp:Label>  
                                    </ItemTemplate>  
                                    <FooterTemplate>  
                                        <asp:TextBox ID="txtrollnonew" runat="server"></asp:TextBox>  
                                        <asp:RequiredFieldValidator ID="valrollNew" runat="server" ControlToValidate="txtrollnonew"  
                                            Display="Dynamic" ErrorMessage="Roll no is required." ForeColor="Red" SetFocusOnError="True"  
                                            ValidationGroup="vldNewRecord">*</asp:RequiredFieldValidator>  
                                    </FooterTemplate>  

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                </asp:TemplateField>

                                  <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Left">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="txtsname" runat="server" Text='<%# Bind("sname") %>'></asp:TextBox>  
                                        <asp:RequiredFieldValidator ID="valsname" runat="server" ControlToValidate="txtsname"  
                                            Display="Dynamic" ErrorMessage="Name is required." ForeColor="Red" SetFocusOnError="True"  
                                            ValidationGroup="vldEditRecord">*</asp:RequiredFieldValidator>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="lblsname" runat="server" Text='<%# Bind("sname") %>'></asp:Label>  
                                    </ItemTemplate>  
                                    <FooterTemplate>  
                                        <asp:TextBox ID="txtsnamenew" runat="server"></asp:TextBox>  
                                        <asp:RequiredFieldValidator ID="valsnameNew" runat="server" ControlToValidate="txtsnamenew"  
                                            Display="Dynamic" ErrorMessage="Name is required." ForeColor="Red" SetFocusOnError="True"  
                                            ValidationGroup="vldNewRecord">*</asp:RequiredFieldValidator>  
                                    </FooterTemplate>  

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
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
                            <EditRowStyle BackColor="#999999" />  
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />  
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />  
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />  
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />  
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />  
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />  
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />  
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />  
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />  
                        </asp:GridView> 
        </div>
    </form>
</body>
</html>
