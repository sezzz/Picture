<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
    <link href="../css/StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-image:url(../images/demo_login.jpg)">
    <form id="form1" runat="server">
        <div style="margin-top:168px">
    <div class="register">
        
          <h3>Forgot your user name or password?</h3>
          
            
            <div>
              <label for="email1" >Email</label>
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="krishna@xyz.com" class="sf"  style="border: 1px solid burlywood; "></asp:TextBox><br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Fill the box" style=" padding-left: 156px;color:red"></asp:RequiredFieldValidator>
            </div>
            <div>
            <label style="width:26%"><a href="Default.aspx"  style="text-decoration:none">Back</a></label>
              
              
                <asp:Button ID="forgetBtn" runat="server" Text="RETRIEVE PASSWORD" CssClass="btn" style="margin-left: 96px;" OnClick="forgetBtn_Click"  />
                  <asp:Label ID="lblMessage" runat="server" Text="" style="color:red"></asp:Label>
            </div>
        </div>
            </div>
    </form>
</body>
</html>
