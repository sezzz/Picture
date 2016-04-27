<%@ Page Title="" Language="C#" MasterPageFile="~/manyawar.master" AutoEventWireup="true" CodeFile="sign.aspx.cs" Inherits="sign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function valid() {
            var valureturn = false;
            if (document.getElementById("ContentPlaceHolder1_txtuser").value == "") {
                document.getElementById("ContentPlaceHolder1_txtuser").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtuser").style.border = "thin solid black";
                valureturn = true;
            }
            if (document.getElementById("ContentPlaceHolder1_txtpassword").value == "") {
                document.getElementById("ContentPlaceHolder1_txtpassword").style.border = "thin solid red";
                valureturn = false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtpassword").style.border = "thin solid black";
                valureturn = true;
            }
            return valureturn;
        }
        function user() {

            if (document.getElementById("ContentPlaceHolder1_txtuser").value == "") {
                document.getElementById("ContentPlaceHolder1_txtuser").style.border = "thin solid red";
            }
            else {
                document.getElementById("ContentPlaceHolder1_txtuser").style.border = "thin solid black";

            }
        }

        function psw() {
            if (document.getElementById("ContentPlaceHolder1_txtpassword").value == "") {
                document.getElementById("ContentPlaceHolder1_txtpassword").style.border = "thin solid red";

            }
            else {
                document.getElementById("ContentPlaceHolder1_txtpassword").style.border = "thin solid black";

            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <div class="loginDiv">
                <h3 class="loginH3">Sign in</h3>

                <table style="line-height: 34px; font-size: 18px; color: beige;">
                    <tr>
                        <td class="td">User Name
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ValidationGroup="Login" ID="txtuser" runat="server" CssClass="sf" placeholder="Name" Style="width: 225px; height: 28px; border: 1px solid black;" onblur="user()"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="Login" ID="RequiredFieldValidator6" ControlToValidate="txtuser" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="td">Password
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ValidationGroup="Login" ID="txtpassword" runat="server" CssClass="sf" TextMode="Password" placeholder="Password" onblur="psw()" Style="width: 225px; height: 28px; border: 1px solid black;"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="Login" ID="RequiredFieldValidator7" ControlToValidate="txtpassword" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <br />
                    <br />
                    <tr>
                        <td>
                            <asp:Button ValidationGroup="Login" ID="login" runat="server" Text="Login" CssClass="button" OnClick="login_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="clear"></div>
        <div class="signupDiv">
            <h3 class="signupH3">Sign up</h3>
            <table style="line-height: 22px; font-size: 18px; color: beige;">
                <tr>
                    <td class="td">User Name
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="sf" placeholder="Name" Style="width: 317px; height: 28px; border: 1px solid black;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="td">Email
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="sf" placeholder="Name" Style="width: 317px; height: 28px; border: 1px solid black;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="td">Password
                   
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPswd" MaxLength="10" runat="server" CssClass="sf" TextMode="Password" placeholder="Password" Style="width: 317px; height: 28px; border: 1px solid black;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPswd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <br />
                <br />
                <tr>
                    <td class="td">Password Again
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPswdAgain" runat="server" CssClass="sf" TextMode="Password" placeholder="Password Again" Style="width: 317px; height: 28px; border: 1px solid black;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPswdAgain" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match" ControlToCompare="txtPswd" ControlToValidate="txtPswdAgain"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="td">Mobile Number
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="sf" placeholder="mobile number" Style="width: 317px; height: 28px; border: 1px solid black;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="*" ForeColor="red"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button" OnClick="submit_Click" />
                    </td>
                </tr>
                <tr>

                    <td>
                        <asp:Label ID="lblM" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

