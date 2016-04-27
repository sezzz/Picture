<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

                    <ul class="current">
                        <li><a href="#nogo"><b>Dashboard</b><!--[if IE 7]><!--></a><!--<![endif]-->
                        </li>
                    </ul>

                    <div class="nav-divider">&nbsp;</div>

                    <ul class="select">
                        <li><a href="view_product.aspx"><b>Products</b><!--[if IE 7]><!--></a><!--<![endif]-->

                            <div class="select_sub show">
                                <ul class="sub">
                                    <li><a href="javascript:void(0)">View all products</a></li>
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
    <div style="height: 400px">
        <h1 style="text-align: center; padding-top: 190px">Welcome To Manyawar Admin Pannel
        </h1>
    </div>



</asp:Content>

