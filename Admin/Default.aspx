<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login into Admin Page</title>
    <link href="../css/StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-image:url(../images/demo_login.jpg)">
    <form id="form1" runat="server">
        <div style="margin-top:168px">
    <div class="register">
        
          <h3>Log in to Admin Panel</h3>
          
            
            <div>
              <label for="email1" >Email</label>
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="krishna@xyz.com" class="sf"  style="border: 1px solid burlywood; "></asp:TextBox><br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Fill the box" style=" padding-left: 156px;color:red"></asp:RequiredFieldValidator>
            </div>
            
            <div>
              <label for="password1" >Password</label>
                  <asp:TextBox runat="server" ID="txtPswd" placeholder="Password" class="sf"  style="border: 1px solid burlywood; " TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblmsg" runat="server" Text="" style="color:red"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill the box" ControlToValidate="txtPswd" style=" padding-left: 156px;color:red"></asp:RequiredFieldValidator>
            </div>
            
            <div>
              <label style="width:26%"><a href="forgetpassword.aspx" style="text-decoration:none">Forget Password?</a></label>
              
                <asp:Button ID="loginBtn" runat="server" Text="LOGIN" CssClass="btn" style="margin-left: 96px;" OnClick="loginBtn_Click" />
            </div>
        </div>
            </div>
    </form>
</body>
</html>
