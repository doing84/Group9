<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Welcome to SIAB!" %>

<%@ Register Src="UserControls/ProductsList.ascx" TagName="ProductsList" TagPrefix="uc1" %>
<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder" Runat="server">
    <span class="CatalogTitle">Welcome to RC Car Online Store! </span>
  <br />
  <br />
  <uc1:ProductsList ID="ProductsList1" runat="server" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BalloonShopConnection %>" SelectCommand="SELECT [Name], [Price], [Thumbnail] FROM [Product] WHERE ([PromoFront] = @PromoFront)">
        <SelectParameters>
            <asp:Parameter Name="PromoFront" />
        </SelectParameters>
       
    </asp:SqlDataSource>

    </asp:Content>

