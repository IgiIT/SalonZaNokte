<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SalonZaNokte.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Naziv salona" HeaderText="Naziv salona" SortExpression="Naziv salona" />
                <asp:BoundField DataField="Lokacija salona" HeaderText="Lokacija salona" SortExpression="Lokacija salona" />
                <asp:BoundField DataField="Broj telefona" HeaderText="Broj telefona" SortExpression="Broj telefona" />
                <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" />
                <asp:BoundField DataField="Prezime" HeaderText="Prezime" SortExpression="Prezime" />
                <asp:BoundField DataField="Tehnika" HeaderText="Tehnika" SortExpression="Tehnika" />
                <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                <asp:BoundField DataField="Vreme" HeaderText="Vreme" SortExpression="Vreme" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT s.nazivSalona as 'Naziv salona',s.lokacijaSalona as 'Lokacija salona',s.brTelefona as 'Broj telefona',k.ime as 'Ime',k.prezime as 'Prezime',z.tehnika as 'Tehnika',z.cena as 'Cena',z.datum as 'Datum',z.vreme as 'Vreme'
FROM Salon s,Klijent k,ZakazanTermin z
where k.klijentID = z.klijentID and s.salonID = z.salonID
order by s.nazivSalona;
"></asp:SqlDataSource>
    </div>
</asp:Content>
