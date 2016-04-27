<%@ Page Title="" Language="C#" MasterPageFile="~/manyawar.master" AutoEventWireup="true" CodeFile="product_Detail.aspx.cs" Inherits="product_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin: 0 auto">
        <div style="padding: 121px">
            <asp:Repeater ID="productRepeat" runat="server" >
                <ItemTemplate>
                    <div style="width: 304px; float: left; margin-bottom: 35px;" class="imagebox">
                        <asp:Image ID="imgViewFile" runat="server" ImageUrl='<%# "Admin/data/"+Eval("Id")+Eval("image") %>' Style="width: 300px; height: 300px"></asp:Image>

                    </div>
                    <div class="display_info" style="padding-top: 85px; padding-left: 32px;">
                        <div style="width: 100%;">
                            <h1 itemprop="name">
                                <asp:Label runat="server" ID="lblproduct" Text='<%#Eval("productName") %>'></asp:Label></h1>
                        </div>
                        <div>

                            <div>

                                <div class="back">
                                    <a href="Default.aspx">
                                        <img title="Click here to go back to Home Page" alt="Click here to go back to Product Page" src="http://www.manyavar.com/skin/frontend/manyavar/default/images/Product-Detail/back.png"></a>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <div id="messages_product_view"></div>
                            <div class="clear"></div>


                            <div style="clear: both"></div>

                            <script type="text/javascript">decorateGeneric($$('#product-options-wrapper dl'), ['last']);</script>
                            <div class="color_size">
                                <div class="pro_price">
                                    <div class="text">Price:</div>
                                    <div class="price_product">


                                        <div class="price-box">


                                            <asp:Label ID="lblprise" runat="server" Text='<%#Eval("prise") %>'></asp:Label>
                                            <span class="pricenote">*</span>
                                        </div>

                                    </div>
                                    <div style="width: 167px">
                                        <div class="text">Description</div>
                                        <div class="price_product">
                                            <div class="price-box">

                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("description") %>'></asp:Label>

                                            </div>

                                        </div>
                                    </div>
                                </div>


                            </div>


                            <script src="http://www.manyavar.com/js/jquery.placeholder.js" type="text/javascript"></script>





                            <a style="display: none;" href="#customeremailcontainer" class="customerquoteemail"></a>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <br />
            <div class="qt_button">
                <asp:ImageButton runat="server" ID="Btn" src="images/product_add-cart.jpg" Style="margin-left: 111px" OnClick="Btn_Click1"/>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    
</asp:Content>

