<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true"
  CodeFile="Product.aspx.cs" Inherits="Product" Title="Untitled Page" %>

<%@ Register Src="UserControls/ProductRecommendations.ascx" TagName="ProductRecommendations"
  TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProductReviews.ascx" TagPrefix="uc1" TagName="ProductReviews" %>

<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
  <br />
  <asp:Label CssClass="ProductTitle" ID="titleLabel" runat="server" Text="Label"></asp:Label>
  <br />
  <br />
  <asp:Image ID="productImage" runat="server" />
  <br />
  <asp:Label CssClass="ProductDescription" ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
  <br />
  <br />
  <span class="ProductDescription">Price:</span>&nbsp;
  <asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server" Text="Label" />
  <br />
  <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" CssClass="SmallButtonText" OnClick="addToCartButton_Click" />
  <asp:Button ID="continueShoppingButton" CssClass="SmallButtonText" runat="server" Text="Continue Shopping" OnClick="continueShoppingButton_Click" />
   
    <uc1:ProductReviews runat="server" ID="ProductReviews1" />

  <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BalloonShopConnection %>" SelectCommand="SELECT [ProductID], [Review], [DateCreated], [ReviewID] FROM [Review] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  <br />
  <uc1:ProductRecommendations id="ProductRecommendations1" runat="server">
  </uc1:ProductRecommendations>
  </asp:Content>
