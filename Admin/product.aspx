<%@ Page Title="Product" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="nav-outer-repeat">
        <div class="nav-outer">
            <div id="nav-right">
                <a href="Default.aspx" id="logout">
                    <img src="../images/nav_logout.gif" width="64" height="14" alt="" /></a>
                <div class="clear">&nbsp;</div>
            </div>
            <div class="nav">
                <div class="table">
                    <ul class="select">
                        <li><a href="Dashboard.aspx"><b>Dashboard</b><!--[if IE 7]><!--></a><!--<![endif]-->
                        </li>
                    </ul>
                    <div class="nav-divider">&nbsp;</div>
                    <ul class="current">
                        <li><a href="product.aspx"><b>Products</b><!--[if IE 7]><!--></a><!--<![endif]-->

                            <div class="select_sub show">
                                <ul class="sub">
                                    <li><a href="view_product.aspx">View all products</a></li>
                                    <li class="sub_show"><a href="product.aspx">Add product</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <div class="nav-divider">&nbsp;</div>
                    <ul class="select">
                        <li><a href="view_Category.aspx"><b>Categories</b><!--[if IE 7]><!--></a><!--<![endif]-->
                        </li>
                    </ul>
                    <div class="nav-divider">&nbsp;</div>

                    <ul class="select">
                        <li><a href="#nogo"><b>Change password</b><!--[if IE 7]><!--></a><!--<![endif]-->
                            <!--[if lte IE 6]><table><tr><td><![endif]-->

                            <!--[if lte IE 6]></td></tr></table></a><![endif]-->
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <!--  start nav -->

        </div>
        <div class="clear"></div>
        <!--  start nav-outer -->
    </div>

    <div id="content-outer">
        <!-- start content -->
        <div id="content">
            <div id="page-heading">
                <h1>Add product</h1>
            </div>
            <table border="0" id="content-table">
                <tr>
                    <th rowspan="3" class="sized">
                        <img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
                    <th class="topleft"></th>
                    <td id="tbl-border-top">&nbsp;</td>
                    <th class="topright"></th>
                    <th rowspan="3" class="sized">
                        <img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
                </tr>
                <tr>
                    <td id="tbl-border-left"></td>
                    <td>
                        <!--  start content-table-inner -->
                        <div id="content-table-inner">

                            <table border="0">
                                <tr>
                                    <td>
                                        <!--  start step-holder -->
                                        <div id="step-holder">
                                            <div class="step-no">1</div>
                                            <div class="step-dark-left"><a href="#">Add product details</a></div>
                                        </div>
                                        <!--  end step-holder -->

                                        <!-- start id-form -->
                                        <table border="0" id="id-form">
                                            <tr>
                                                <th>Product name:</th>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="inp-form" ID="txtProductName"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ControlToValidate="txtProductName" ErrorMessage="plaese fill"></asp:RequiredFieldValidator>
                                                </td>

                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th>Category:</th>
                                                <td>
                                                    <asp:DropDownList ID="ddlCategory" runat="server" Height="31px" Width="197px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <%--<tr>
                                                <th valign="top">Sub Category:</th>
                                                <td>
                                                    <select class="styledselect_form_1">
                                                        <option value="">All</option>
                                                        <option value="">Products</option>
                                                        <option value="">Categories</option>
                                                        <option value="">Clients</option>
                                                        <option value="">News</option>
                                                    </select>
                                                </td>
                                                <td></td>
                                            </tr>--%>
                                            <tr>
                                                <th valign="top">Price:</th>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="inp-form" ID="txtPrise" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ControlToValidate="txtPrise" ErrorMessage="please fill"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="noheight">

                                                    <table border="0">
                                                        <tr>

                                                            <%-- <td><a href="javascript:void(0)" id="date-pick">
                                                                <img src="../images/icon_calendar.jpg" alt="" /></a></td>--%>
                                                        </tr>
                                                    </table>

                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Description:</th>
                                                <td>
                                                    <asp:TextBox ID="txtArea" TextMode="multiline" Columns="50" Rows="5" class="form-textarea" runat="server" />

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ControlToValidate="txtArea" ErrorMessage="please fill"></asp:RequiredFieldValidator>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Image:</th>
                                                <td>
                                                    <asp:FileUpload runat="server" ID="fileupload1"></asp:FileUpload><div style="float: right; padding-right: 72px;">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="bubble-left"></div>
                                                    <div class="bubble-inner">JPEG, GIF 5MB max per image</div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>&nbsp;</th>
                                                <td valign="top">
                                                    <asp:Button ID="btnupdate" runat="server" Text="Update" class="form-update" Visible="false" OnClick="btnupdate_Click"></asp:Button>
                                                    <asp:Button runat="server" Text="Submit" class="form-submit" ID="btnSave" OnClick="btnSave_Click"></asp:Button>
                                                    <asp:Button runat="server" Text="Reset" class="form-reset"></asp:Button>

                                                </td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <!-- end id-form  -->

                                    </td>
                                    <td></td>
                                </tr>

                            </table>

                            <div class="clear"></div>


                        </div>
                        <!--  end content-table-inner  -->
                    </td>
                    <td id="tbl-border-right"></td>
                </tr>
                <tr>
                    <th class="sized bottomleft"></th>
                    <td id="tbl-border-bottom">&nbsp;</td>
                    <th class="sized bottomright"></th>
                </tr>
            </table>
            <div class="clear">&nbsp;</div>

        </div>
        <!--  end content -->
        <div class="clear">&nbsp;</div>
    </div>

</asp:Content>

