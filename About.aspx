<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SalonZaNokte.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
        <h3>Prikazivanje podataka o klijentu</h3><br /><br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="Column1" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT Ime+' '+Prezime FROM Klijent "></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br /><br />
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="klijentID" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="klijentID" HeaderText="klijentID" InsertVisible="False" ReadOnly="True" SortExpression="klijentID" />
                <asp:BoundField DataField="ime" HeaderText="ime" SortExpression="ime" />
                <asp:BoundField DataField="prezime" HeaderText="prezime" SortExpression="prezime" />
                <asp:BoundField DataField="kontakt" HeaderText="kontakt" SortExpression="kontakt" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT * FROM [Klijent] WHERE ([ime] = @ime)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="ime" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
