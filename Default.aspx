<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SalonZaNokte._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
       <h3>Unos</h3>

        <table style="width: 100%;">
            <tr>
                <td style="width: 128px">&nbsp;Izaberite klijenta</asp:Label></td>
                <td>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Column1" DataValueField="Column1"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT ime+' '+prezime
                    FROM Klijent"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;Izaberite salon</asp:Label></td>
                <td>&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="nazivSalona" DataValueField="nazivSalona"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" SelectCommand="SELECT [nazivSalona] FROM [Salon]"></asp:SqlDataSource></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<asp:Label ID="Label1" runat="server" Text="Tehnika"></asp:Label></td>
                <td>&nbsp;<asp:TextBox ID="txtTehnika" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<asp:Label ID="Label2" runat="server" Text="Cena"></asp:Label></td>
                <td>&nbsp;<asp:TextBox ID="txtCena" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<asp:Label ID="Label3" runat="server" Text="Datum"></asp:Label></td>
                <td>&nbsp;<asp:TextBox ID="txtDatum" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<asp:Label ID="Label4" runat="server" Text="Vreme"></asp:Label></td>
                <td>&nbsp;<asp:TextBox ID="txtVreme" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;<asp:Button ID="btnUnesi" runat="server" Text="Unesi" OnClick="btnUnesi_Click" /></td>
            </tr>
        </table>
         <br /><br />
         <asp:Label ID="lblPrikaz" runat="server" Text=""></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NoktaonicaConnectionString %>" DeleteCommand="DELETE FROM [Klijent] WHERE [klijentID] = @klijentID" InsertCommand="INSERT INTO [Klijent] ([ime], [prezime], [kontakt]) VALUES (@ime, @prezime, @kontakt)" SelectCommand="SELECT * FROM [Klijent]" UpdateCommand="UPDATE [Klijent] SET [ime] = @ime, [prezime] = @prezime, [kontakt] = @kontakt WHERE [klijentID] = @klijentID">
        <DeleteParameters>
            <asp:Parameter Name="klijentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ime" Type="String" />
            <asp:Parameter Name="prezime" Type="String" />
            <asp:Parameter Name="kontakt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ime" Type="String" />
            <asp:Parameter Name="prezime" Type="String" />
            <asp:Parameter Name="kontakt" Type="String" />
            <asp:Parameter Name="klijentID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
