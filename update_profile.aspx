<%@ Page Title="" Language="C#" MasterPageFile="~/manyawar.master" AutoEventWireup="true" CodeFile="update_profile.aspx.cs" Inherits="update_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

    <script>
        $(document).ready(function () {
            var placeholder = null;
            $('input[type=text]').focus(function () {
                placeholder = $(this).attr("placeholder");
                $(this).attr("placeholder", "");
            });
            $('input[type=text]').blur(function () {
                $(this).attr("placeholder", placeholder);
            });
        });
</script>
   </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <div class="col-main">

            <div class="row">
                <div class="twelvecol">

                    <div class="nav_main clearfix">
                        <ul class="flexy-menu flexy-menu-safe">
                            <li class="showhide" style="display: none;"><span class="title">MENU</span><span class="icon"><em></em><em></em><em></em><em></em></span></li>
                            <li ><a href="index.aspx">Home</a></li>

                            <li><a href="#">Sherwani</a></li>

                            <li><a href="#">Kurta Set</a></li>

                            <li><a href="#">Indo-Westerns</a></li>

                            <li><a href="#">Jacket</a></li>

                            <li><a href="#">Kids</a></li>

                            <li><a href="#">Accessories</a></li>
                        </ul>

                    </div>

                    <div class="Category-Name">
                        <h1>Update Profile</h1>
                    </div>

                    <div class="clear"></div>
                </div>
            </div>

            <div class="clear"></div>
            <div class="row">

                <div class="twelvecol">
                    <div class="Account_main">

                        <div class="main-left">
                            <div class="side-block">
                                <ul style=" list-style-type: none;">

                                    <li><a href="myaccount.aspx">Account Dashboard</a></li>
                                    <li class="current"> Update Profile</li>
                                    <li><a href="#">My favourite</a></li>
                                    <li><a href="#">My Adress</a></li>
                                    <li><a href="ChangePassword.aspx">Change Password</a></li>
                                    <li class="last"><a href="#">Terms & Condition</a></li>
                                </ul>
                            </div>
                          
                            
                            

                        </div>

                          <div class="main-right">

                               <div class="main">
      
      
      <div class="two">
        <div class="register">
          <h3>Update your Profile</h3>
          
            <div>
              <label for="name1">Name</label>
            
                <asp:TextBox runat="server" ID="txtName" placeholder="krishna" class="sf" style="border: 1px solid burlywood;"></asp:TextBox><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill the box" ControlToValidate="txtName" style=" padding-left: 156px;color:red" ></asp:RequiredFieldValidator>
            </div>
            <div>
              <label for="email1" >Email</label>
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="krishna@xyz.com" class="sf"  style="border: 1px solid burlywood; "></asp:TextBox><br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Fill the box" style=" padding-left: 156px;color:red"></asp:RequiredFieldValidator>
            </div>
            <div>
              <label for="username1"  >Mobile Number</label>
                  <asp:TextBox runat="server" ID="txtMobile" placeholder="Mobile Number" class="sf"  style="border: 1px solid burlywood;"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="fill the box" ControlToValidate="txtMobile" style=" padding-left: 156px;color:red"></asp:RequiredFieldValidator>
            </div>
          
            <div>
              <label></label>
              
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button" style="margin-left: 96px;" OnClick="btnUpdate_Click" />
            </div>
        </div>
      </div>
    </div>

                              </div>


                                <div class="clear"></div>
                            </div>
                            <script type="text/javascript">
                                //<![CDATA[
                                var dataForm = new VarienForm('form-validate', true);
                                function setPasswordForm(arg) {
                                    if (arg) {
                                        $('current_password').up(3).show();
                                        $('current_password').addClassName('required-entry');
                                        $('password').addClassName('required-entry');
                                        $('confirmation').addClassName('required-entry');

                                    } else {
                                        $('current_password').up(3).hide();
                                        $('current_password').removeClassName('required-entry');
                                        $('password').removeClassName('required-entry');
                                        $('confirmation').removeClassName('required-entry');
                                    }
                                }
                                j(document).ready(function () {
                                    j("#fnameblock").css("width", "600px");
                                    //j("#fnameblock .Input-Txt").css("width","160px");
                                    j("#firstname").css("width", "430px");
                                    j("#lastname").css("width", "430px");
                                    j("#lnameblock").css("width", "600px");
                                    j("#fnameblock").css("float", "left");
                                    j("#lnameblock").css("float", "left");


                                    j("#lnameeditinput").css("float", "left");
                                    j("#lnameeditlbl").css("float", "left");
                                    j("#lnameeditinput").css("width", "430px");
                                    j("#lnameeditlbl").css("width", "140px");

                                    j("#fnameeditlbl").css("width", "140px");
                                    j("#fnameeditlbl").css("float", "left");
                                    j("#fnameeditinput").css("float", "left");
                                    j("#fnameeditinput").css("width", "430px");
                                });
                                //]]>

                            </script>
                        </div>
                    </div>
                   
                </div>
            </div>




</asp:Content>

