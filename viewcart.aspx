<%@ Page Title="" Language="C#" MasterPageFile="~/manyawar.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <meta name="viewport" content="width=device-width, minimum-scale=1, initial-scale=1" />
    <script>
        $(document).ready(function () {
            $('#ContentPlaceHolder1_btnCart').click(function (e) {
                var counter = $('.QTY').val();
                counter = eval($('.QTY').val()) + eval(1);
                Subtotal = eval($('.PriceLbl').text()) * counter;
                $('.QTY').val(counter);
                $('.lblSubtotal').text(Subtotal);
                e.preventDefault();
            });
        });
    </script>
    <script>
        function valid() {
            var valureturn = false;
            if (document.getElementById("ContentPlaceHolder1_txtName").value == "") {
                document.getElementById("ContentPlaceHolder1_txtName").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtName").style.border = "thin solid black";
                valureturn = true;
            }

            if (document.getElementById("ContentPlaceHolder1_txtEmail").value == "") {
                document.getElementById("ContentPlaceHolder1_txtEmail").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtEmail").style.border = "thin solid black";
                valureturn = true;
            }
            if (document.getElementById("ContentPlaceHolder1_txtAdress").value == "") {
                document.getElementById("ContentPlaceHolder1_txtAdress").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtAdress").style.border = "thin solid black";
                valureturn = true;
            }
            if (document.getElementById("ContentPlaceHolder1_txtLandmark").value == "") {
                document.getElementById("ContentPlaceHolder1_txtLandmark").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtLandmark").style.border = "thin solid black";
                valureturn = true;
            }
            if (document.getElementById("ContentPlaceHolder1_txtPhone").value == "") {
                document.getElementById("ContentPlaceHolder1_txtPhone").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtPhone").style.border = "thin solid black";
                valureturn = true;
            }
            if (document.getElementById("ContentPlaceHolder1_txtpincode").value == "") {
                document.getElementById("ContentPlaceHolder1_txtpincode").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtpincode").style.border = "thin solid black";
                valureturn = true;
            }
            return valureturn;
        }
        function name() {

            if (document.getElementById("ContentPlaceHolder1_txtName").value == "") {
                document.getElementById("ContentPlaceHolder1_txtName").style.border = "thin solid red";
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtName").style.border = "thin solid black";

            }
        }
        function pincode() {
            if (document.getElementById("ContentPlaceHolder1_txtpincode").value == "") {
                document.getElementById("ContentPlaceHolder1_txtpincode").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtpincode").style.border = "thin solid black";
                valureturn = true;
            }

        }
        function name() {
            if (document.getElementById("ContentPlaceHolder1_txtName").value == "") {
                document.getElementById("ContentPlaceHolder1_txtName").style.border = "thin solid red";
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtName").style.border = "thin solid black";

            }
        }

        function Email() {
            if (document.getElementById("ContentPlaceHolder1_txtEmail").value == "") {
                document.getElementById("ContentPlaceHolder1_txtEmail").style.border = "thin solid red";

            }
            else {
                document.getElementById("ContentPlaceHolder1_txtEmail").style.border = "thin solid black";

            }
        }
        function landmark() {
            if (document.getElementById("ContentPlaceHolder1_txtLandmark").value == "") {
                document.getElementById("ContentPlaceHolder1_txtLandmark").style.border = "thin solid red";
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtLandmark").style.border = "thin solid black";
            }
        }
        function phone() {
            if (document.getElementById("ContentPlaceHolder1_txtPhone").value == "") {
                document.getElementById("ContentPlaceHolder1_txtPhone").style.border = "thin solid red";
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtPhone").style.border = "thin solid black";
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 91px">
        <div style="background-color: #f37a1f; margin: 0 auto; width: 1000px; height: 40px;">
            <h3>Cart Item:</h3>
        </div>


        <asp:Repeater ID="gvProducts" runat="server">
            <ItemTemplate>
                <div>

                    <table style="padding: 20px; margin: 0 auto">
                        <tr style="background-color: #f37a1f; color: #fffffd; text-align: center">
                            <td style="width: 150px">ITEM</td>
                            <td style="width: 150px">QTY
                            </td>
                            <td style="width: 150px">PRODUCT
                            </td>
                            <td style="width: 134px">PRICE
                            </td>

                            <td>DETAIL
                            </td>
                            <td style="width: 200px">SUBTOTAL
                            </td>
                        </tr>
                        <tr style="text-align: center">
                            <td>
                                <asp:Image ID="imgViewFile" runat="server" ImageUrl='<%# "Admin/data/"+Eval("Id")+Eval("image") %>' Style="width: 200px; height: 200px"></asp:Image>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtQty" CssClass="QTY" value="1" Style="width: 23px; height: 23px"></asp:TextBox>
                            </td>
                            <td style="color: #0ca7d3; font-family: Blazed; font-size: 20px;">
                                <%#Eval("productName") %>
                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="PriceLbl" Text='<%#Eval("prise") %>'></asp:Label>
                            </td>

                            <td style="color: #400040; font-family: 'Max Rhodes'; font-size: 30px;">
                                <%#Eval("description") %>
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" CssClass="lblSubtotal" Text='<%#Eval("prise") %>'></asp:Label>
                            </td>
                        </tr>

                    </table>

                </div>

            </ItemTemplate>
            <FooterTemplate>
                <div style="text-align: -moz-center; background-color: #f2f2f2; font-size: 20px">
                    <div>
                        <h2 style="color: #999999;">Estimated Total:  </h2>

                        <asp:Label ID="Label1" runat="server" CssClass="lblSubtotal" Text='<%#Eval("prise") %>' Style="color: black;"></asp:Label>
                    </div>
                </div>
            </FooterTemplate>
        </asp:Repeater>
        <div>
            <table style="margin: 0 auto">
                <tr>

                    <td>
                        <asp:Button runat="server" ID="BtnCtnShopping" Text="< Continous Shopping" CssClass="continousbtn" OnClick="BtnCtnShopping_Click" />
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btnCart" Text="Add Cart" CssClass="plceodrbtn" />
                    </td>
                    <td>
                        <%-- <asp:Button runat="server"  Text="Place Order" CssClass="plceodrbtn" />--%>
                        <button class="plceodrbtn" type="button" id="modal_open">Place Order</button>
                    </td>
                </tr>
            </table>


            <%-- //popup tab///--%>
            <link href="css/modal.css" rel="stylesheet" />
            <div id="page">
            </div>
            <div class="modal-overlay" id="modal_window">

                <div class="modal-content" id="modal_holder">
                    <table class="form">
                        <tr>
                            <th>
                                <asp:Label runat="server" ID="lblName"><strong> Name</strong></asp:Label></th>
                            <td>
                                <asp:TextBox ID="txtName" runat="server" onblur="name()"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <asp:Label runat="server" ID="lblEmail"><strong>E-mail</strong> </asp:Label>
                            </th>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" onblur="Email()"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <asp:Label runat="server" ID="lblPincode"><strong>Pincode</strong></asp:Label></th>

                            <td>
                                <asp:TextBox ID="txtpincode" runat="server" onblur="pincode()"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <th class="message-up">
                                <asp:Label ID="lblAdress" runat="server"><strong>Adress:</strong></asp:Label></th>
                            <td>
                                <textarea name="message" id="message" cols="30" rows="5"></textarea>

                            </td>
                        </tr>
                        <tr>
                            <th>
                                <asp:Label runat="server" ID="lblLandmark"><strong>Landmark</strong></asp:Label></th>

                            <td>
                                <asp:TextBox ID="txtLandmark" runat="server" onblur="landmark()"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <asp:Label runat="server" ID="lblPhone"><strong>Phone</strong></asp:Label></th>

                            <td>
                                <asp:TextBox ID="txtPhone" runat="server" onblur="phone()"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <asp:Button runat="server" ID="Button1" Text="Save & Continue" CssClass="plceodrbtn" OnClientClick="valid()" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    <button class="btn-close" id="modal_close" type="button" aria-label="close">
                        &times;
       
                    </button>

                </div>

            </div>
            <script src="js/modal.js"></script>





















        </div>
    </div>
</asp:Content>

