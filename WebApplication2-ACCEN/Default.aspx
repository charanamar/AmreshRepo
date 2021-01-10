﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2_ACCEN._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
<%--<div>--%>

 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AllowPaging="true"  >
     <Columns>
         <asp:BoundField DataField="EmpID" HeaderText="EmpID" SortExpression="EmpID" />
         <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
         <asp:BoundField DataField="Company" HeaderText="Company" 
             SortExpression="Company" />
         <asp:BoundField DataField="Country" HeaderText="Country" 
             SortExpression="Country" />
     </Columns>
    </asp:GridView>
 <%--   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AmreshDatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
<table>
   

</table>
<%--</div--%>>
    <table>
    <tr>
    <td>
    <asp:Label ID="lblName" Text="Name" runat="server" />
    
     </td>
     <td><asp:TextBox ID="txtName" runat="server" /></td>
    </tr>

     <tr>
    <td>
    <asp:Label ID="Label1" Text="EmployeeID" runat="server" />
    
     </td>
     <td><asp:TextBox ID="TextBox1" runat="server" /></td>
    </tr>

     <tr>
    <td>
    <asp:Label ID="Label2" Text="Designation" runat="server" />
    
     </td>
     <td><asp:TextBox ID="TextBox2" runat="server" /></td>
    </tr>


     <tr>
    <td>
    <asp:Label ID="Label3" Text="Address" runat="server" />
    
     </td>
     <td><asp:TextBox ID="TextBox3" runat="server" /></td>
    </tr>
    
    </table>
</asp:Content>
