<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SalonZaNokte.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <div class="jumbotron">
        <h3>Prikazivanje podataka o klijentu</h3><br /><br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="Column1" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT Ime+' '+Prezime FROM Klijent "></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br /><br />
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="klijentID" CellPadding="3" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="klijentID" HeaderText="klijentID" InsertVisible="False" ReadOnly="True" SortExpression="klijentID" />
                <asp:BoundField DataField="ime" HeaderText="ime" SortExpression="ime" />
                <asp:BoundField DataField="prezime" HeaderText="prezime" SortExpression="prezime" />
                <asp:BoundField DataField="kontakt" HeaderText="kontakt" SortExpression="kontakt" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT * FROM [Klijent] WHERE ([ime] = @ime)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="ime" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
