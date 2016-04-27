<%@ page title="" language="C#" masterpagefile="~/manyawar.master" autoeventwireup="true" codefile="myaccount.aspx.cs" inherits="myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="col-main">

            <div class="row">
                <div class="twelvecol">

                    <div class="nav_main clearfix">
                        <ul class="flexy-menu flexy-menu-safe">
                            <li class="showhide" style="display: none;"><span class="title">MENU</span><span class="icon"><em></em><em></em><em></em><em></em></span></li>
                            <li ><a href="Default.aspx">Home</a></li>

                            <li><a href="javascript:void(0)">Sherwani</a></li>

                            <li><a href="javascript:void(0)">Kurta Set</a></li>

                            <li><a href="javascript:void(0)">Indo-Westerns</a></li>

                            <li><a href="javascript:void(0)">Jacket</a></li>

                            <li><a href="javascript:void(0)">Kids</a></li>

                            <li><a href="javascript:void(0)">Accessories</a></li>
                        </ul>

                    </div>

                    <div class="Category-Name">
                        <h1>My Account</h1>
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

                                    <li  class="current">Account Dashboard</li>
                                    <li><a href="update_profile.aspx">Update Profile</a></li>
                                    <li><a href="javascript:void(0)">My favourite</a></li>
                                    <li><a href="javascript:void(0)">My Adress</a></li>
                                    <li><a href="ChangePassword.aspx">Change Password</a></li>
                                    <li class="last"><a href="javascript:void(0)">Terms & Condition</a></li>
                                </ul>
                            </div>
                          
                            
                            

                        </div>

                        <div class="main-right">
  <div class="my-account">
    <div>
      <div class="account-page">
        <h2>My Dashboard</h2>
      </div>
     <!-- <span>Thank you for registering with Manyavar.</span>-->  <div class="welcome-msg">
    <div id="fb-image" style="float:left; margin-right:10px;"></div><p class="hello"><strong>Hello, krishna soni!</strong></p>
    <p>From  My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</p>
</div>
<div class="clear"></div>       <div>
        <div class="account-title"> Account Information </div>
        <div class="account-box" style="width:770px;">  
		<div>			<div class="title_right">
                <h2>Contact Information</h2>
              
				<div class="clear"></div>
            </div>
             <%--user Name--%> 
            <div class="contact_info">
               <div style="font-size: 20px;">Name: <div  style="font-size: 20px;"></div></div>
             
               <div class="clear"></div> 
		   </div>
           
            <div class="contact_info">
                <%--user Adress--%> 
               <div style="font-size: 20px;" >Username:<div></div></div>
               <div>
                   <script cf-hash="f9e31" type="text/javascript">
                                                                /* <![CDATA[ */!function () { try { var t = "currentScript" in document ? document.currentScript : function () { for (var t = document.getElementsByTagName("script"), e = t.length; e--;) if (t[e].getAttribute("cf-hash")) return t[e] }(); if (t && t.previousSibling) { var e, r, n, i, c = t.previousSibling, a = c.getAttribute("data-cfemail"); if (a) { for (e = "", r = parseInt(a.substr(0, 2), 16), n = 2; a.length - n; n += 2) i = parseInt(a.substr(n, 2), 16) ^ r, e += String.fromCharCode(i); e = document.createTextNode(e), c.parentNode.replaceChild(e, c) } } } catch (u) { } }();/* ]]> */</script></div>
               <div class="clear"></div> 
		   </div>
            
            
		    
		     
             <div class="account-btn"> <a href="https://www.manyavar.com/customer/account/edit/">Edit</a></div>
  
 
</div>
         <div><br>
<div style="clear:both"></div>
<div class="title_right">
                <h2 style="float:none;">Address Book</h2>
               <!-- <div class="account-btn"><a href="https://www.manyavar.com/customer/address/">Manage Addresses</a></div>-->
				<div class="clear"></div>
            </div>
            



</div>
		  </div>
      </div>
    </div>
  </div>
  <div class="clear"></div>
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

