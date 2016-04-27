<%@ Page Title="View Product" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="view_product.aspx.cs" Inherits="Admin_view_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="nav-outer-repeat">

        <div class="nav-outer">


            <div id="nav-right">


                <a href="Default.aspx" id="logout">
                    <img src="../images/nav_logout.gif" width="64" height="14" alt="" /></a>
                <div class="clear">&nbsp;</div>


                <div class="account-content" style="display: none">
                </div>
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
                                    <li class="sub_show"><a href="view_product.aspx">View all products</a></li>
                                    <li><a href="product.aspx">Add product</a></li>
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
                <h1>View All product</h1>
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



                                        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" DataKeyNames="Id" CssClass="EU_DataTable" GridLines="None" PagerStyle-CssClass="pgr"
                                            AlternatingRowStyle-CssClass="alt" Style="height: 300px; width: 77%; overflow-y: scroll; margin-left: 138px; display: block; float: left" OnRowCommand="gvProducts_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="S.No">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="productName" HeaderText="Product Name" />
                                                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                                                <asp:BoundField DataField="prise" HeaderText="Price" />
                                                <asp:TemplateField HeaderText="Image">
                                                    <ItemTemplate>
                                                        <asp:Image ID="imgViewFile" runat="server" ImageUrl='<%# "../Admin/data/"+Eval("Id")+Eval("image") %>' Style="width: 50px; height: 50px"></asp:Image>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Action">
                                                    <ItemTemplate>
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <asp:ImageButton ID="ImageEdit" runat="server" ImageUrl="../images/edit2.png" ToolTip="Edit" CommandArgument='<%#Eval("Id") %>' CommandName="edt" />
                                                                </td>
                                                                <td>
                                                                    <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="../images/delete.png" ToolTip="Delete" CommandArgument='<%#Eval("Id") %>' CommandName="del" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>
                                        <!-- start id-form -->

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

