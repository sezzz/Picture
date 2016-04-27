<%@ Page Title="Category" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="nav-outer-repeat">

        <div class="nav-outer">


            <div id="nav-right">

                <a href="Default.aspx" id="logout" title="log">
                    <img src="../images/nav_logout.gif" width="64" height="14" alt="" /></a>
                <div class="clear">&nbsp;</div>



            </div>

            <div class="nav">
                <div class="table">

                    <ul class="select">
                        <li><a href="Dashboard.aspx"><b>Dashboard</b><!--[if IE 7]><!--></a><!--<![endif]-->

                            <%--<div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">Dashboard Details 1</a></li>
				<li><a href="#nogo">Dashboard Details 2</a></li>
				<li><a href="#nogo">Dashboard Details 3</a></li>
			</ul>
		</div>--%>
                            <!--[if lte IE 6]></td></tr></table></a><![endif]-->
                        </li>
                    </ul>

                    <div class="nav-divider">&nbsp;</div>

                    <ul class="select">
                        <li><a href="product.aspx"><b>Products</b><!--[if IE 7]><!--></a><!--<![endif]-->


                        </li>
                    </ul>

                    <div class="nav-divider">&nbsp;</div>

                    <ul class="current">
                        <li><a href="#nogo"><b>Categories</b><!--[if IE 7]><!--></a><!--<![endif]-->
                            <div class="select_sub show">
                                <ul class="sub">
                                    <li><a href="view_Category.aspx">View all Category</a></li>
                                    <li class="sub_show"><a href="AddCategory.aspx">Add Category</a></li>

                                </ul>
                            </div>


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
                <h1>Add category</h1>
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
                                            <div class="step-dark-left"><a href="#">Add category details</a></div>
                                            <div class="step-dark-right">&nbsp;</div>
                                        </div>
                                        <!--  end step-holder -->

                                        <!-- start id-form -->
                                        <table border="0" id="id-form">
                                            <tr>
                                                <th>Category:</th>
                                                <td>
                                                    <asp:DropDownList ID="ddlCategory" runat="server" Height="31px" Width="197px" >
                                                    </asp:DropDownList>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Category Name:</th>
                                                <td>

                                                    <asp:TextBox ID="txtCategory" runat="server" class="inp-form"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill The Category" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                                <td></td>
                                            </tr>


                                            <tr>
                                                <th>&nbsp;</th>
                                                <td valign="top">
                                                      <asp:Button ID="btnupdate" runat="server" Text="Update" class="form-update" Visible="false" OnClick="btnupdate_Click"></asp:Button>
                                                    <asp:Button ID="btnSave" runat="server" Text="Submit" class="form-submit" OnClick="btnSave_Click" Visible="true"></asp:Button>
                                                    <asp:Button ID="BtnReset" runat="server" Text="Reset" class="form-reset"></asp:Button>

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

