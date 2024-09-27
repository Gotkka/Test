<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="CT_TranDau.aspx.cs" Inherits="Test1.CT_TranDau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTD" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            MaTD:
            <asp:Label ID="MaTDLabel" runat="server" Text='<%# Eval("MaTD") %>' />
            <br />
            MaDoi:
            <asp:Label ID="MaDoiLabel" runat="server" Text='<%# Eval("MaDoi") %>' />
            <br />
            SoBanThang:
            <asp:Label ID="SoBanThangLabel" runat="server" Text='<%# Eval("SoBanThang") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBDConnectionString %>" ProviderName="<%$ ConnectionStrings:QLBDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CT_TranDau]"></asp:SqlDataSource>
</asp:Content>
