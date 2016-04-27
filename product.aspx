<%@ Page Title="" Language="C#" MasterPageFile="~/manyawar.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <script type="text/javascript">
       $(document).ready(function () {
           $('#ContentPlaceHolder1_Cartbtn').click(function (e) {
               var counter = $('.cartlbl').val();
               counter = eval($('.cartlbl').val()) + eval(1);
               $.session.set("CartValue", eval($('.cartlbl').val()) + eval(1));
               alert( $.session.set("CartValue", eval($('.cartlbl').val()) + eval(1)))
               e.preventDefault();
           });
       });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-main">

        <div class="row">
            <div class="twelvecol">

                <div class="nav_main clearfix">
                </div>
            </div>
            <div class="clear"></div>

        </div>
        <div class="clear"></div>
    </div>

    <div class="clear"></div>
    <div class="row">

        <div class="twelvecol">

            <div class="clear"></div>
        </div>

        <div class="custom_product_list">
            <style type="text/css">
                span #like_img {
                    cursor: pointer;
                }

                .pricenote {
                    display: none;
                }
            </style>

            <script src="http://www.manyavar.com/skin/frontend/manyavar/default/js/jquery.tipsy.js" type="text/javascript"></script>
            <script src="http://www.manyavar.com/skin/frontend/manyavar/default/js/jquery.lazyload.js" type="text/javascript"></script>
            <script type="text/javascript">

                

                j('.main_box').tipsy({ gravity: 'nw' });

            </script>




            <div class="middle">


                <asp:Repeater ID="rptCategories" runat="server">
                    <ItemTemplate>

                        <div class="Category-Name">
                            <h1>
                                <asp:Label ID="lblCategoryName" runat="server" Text='<%#Eval("CategoryName") %>'></asp:Label></h1>
                        </div>

                    </ItemTemplate>

                </asp:Repeater>

                <br />
                <br />
                <div id="product_list">

                    <asp:Repeater ID="productRepeat" runat="server">
                        <ItemTemplate>
                            <div class="product_img2">

                                <div title="Manyavar Trendy Indo Western" id="mainbox3828" class="main_box">
                                    <div style="height: 349px;" class="view view-ninth">
                                        <a href="product_Detail.aspx?id=<%#Eval("Id") %> ">
                                            <asp:Image ID="imgViewFile" runat="server" ImageUrl='<%# "Admin/data/"+Eval("Id")+Eval("image") %>' Style="width: 224px; height: 224px"></asp:Image>
                                        </a>

                                    </div>
                                </div>
                                <div class="product_code">
                                   
                                    <asp:Label runat="server" ID="lblproduct" Text='<%#Eval("productName") %>'></asp:Label>
                                </div>

                                <div class="product_price">
                                    <div class="price-box">
                                        <asp:Label runat="server" ID="Label1" Text='<%#Eval("prise") %>' Style="font-size: 18px;"></asp:Label>
                                    </div>

                                </div>
                                <div class="product_views">
                                    <a  href="viewcart.aspx?id=<%#Eval("Id") %>">
                                        <img title="Purchased by Others" alt="Purchased by Others" id="Cartbtn" src="images/product_add-cart.jpg"></a>   
                                    <a  href="product_Detail.aspx?id=<%#Eval("Id") %>">
                                        <img title="Purchased by Others" alt="Purchased by Others"  src="images/button.png"></a>      		       
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                    <div class="clear"></div>
                    <div>
                        <asp:HiddenField id="cartvalue" runat="server"/>
                        <asp:Label CssClass="cartlbl" runat="server"></asp:Label>
                    </div>
                </div>
            </div>







        </div>
    </div>

</asp:Content>

