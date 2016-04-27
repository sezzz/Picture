<%@ Page Title="View Category" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="view_Category.aspx.cs" Inherits="Admin_view_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript">
        function ConfirmOnDelete(item) {
            if (confirm("Are you sure to delete: " + item + "?") == true) {
                return true;
            }
            else
                return false;
        }
    </script>
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
                        <li><a href="view_product.aspx"><b>Products</b><!--[if IE 7]><!--></a><!--<![endif]-->
                        </li>
                    </ul>
                    <div class="nav-divider">&nbsp;</div>
                    <ul class="current">
                        <li><a href="#nogo"><b>Categories</b><!--[if IE 7]><!--></a><!--<![endif]-->
                            <div class="select_sub show">
                                <ul class="sub">
                                    <li class="sub_show"><a href="view_Category.aspx">View all Category</a></li>
                                    <li><a href="AddCategory.aspx">Add Category</a></li>
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
                <h1>View All category</h1>
                <asp:HiddenField ID="categoryname" runat="server" />
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
                        <div id="content-table-inner" style="padding: 17px 339px 34px 69px;">

                            <table border="0">
                                <tr>
                                    <td>
                                        <!--  start step-holder -->
                                        <div id="step-holder">
                                            <div class="step-no">1</div>
                                            <div class="step-dark-left"><a href="#">Show All Category</a></div>
                                            <div class="step-dark-right">&nbsp;</div>
                                        </div>
                                        <!--  end step-holder -->
                                        <asp:GridView ID="gvCategory" runat="server"  AutoGenerateColumns="False" OnRowCommand="gvCategory_RowCommand"  DataKeyNames="Id" CssClass="EU_DataTable" AllowPaging="true" PageSize="8" OnPageIndexChanging="GridView1_PageIndexChanging" >
                                            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField HeaderText="S.No">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                    </asp:TemplateField>
                                                <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                                                <asp:TemplateField HeaderText="Action">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="ImageEdit" runat="server" ImageUrl="../images/edit2.png" ToolTip="edit" CommandName="edt" CommandArgument='<%#Eval("Id") %>'  />&nbsp;&nbsp;&nbsp;&nbsp;
                                                         <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="../images/delete.png"  CommandArgument='<%#Eval("Id") %>' ToolTip="delete" CommandName="del"/>
                                                        &nbsp;&nbsp;&nbsp; 
                                                    </ItemTemplate>
                                                    <ControlStyle ForeColor="#6600FF" />

                                                </asp:TemplateField>
                                            </Columns>
                                            <PagerStyle CssClass="pgr"></PagerStyle>
                                        </asp:GridView>
                                        <!-- end id-form  -->
                                    </td>
                                   
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

