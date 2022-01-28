<%@ Page Language="C#" AutoEventWireup="true" EnableViewStateMac="false" Culture="en-gb" CodeFile="Default.aspx.cs" Debug="true"
    Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <link href="css/style.css" rel="stylesheet" />

    <script type="text/javascript" src="js/modernizr.custom.29473.js"></script>
    <title></title>
    <style type="text/css">
        .black_overlay {
            display: none;
            position: fixed;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index: 1001;
            -moz-opacity: 0.8;
            opacity: .80;
            filter: alpha(opacity=80);
        }

        .white_content {
            display: none;
            position: fixed;
            top: 25%;
            left: 30%;
            width: 300px;
            height: 130px;
            text-align: center;
            background-color: white;
            z-index: 1002;
            overflow: auto;
            border-radius: 10px;
            overflow: auto;
        }

        .spann1 {
            display: block;
            background: linear-gradient(to bottom, #000 0%, #808080 100%);
            color: #fff;
            padding: 10px;
            width: 80px;
            text-align: center;
        }

            .spann1:hover {
                background: linear-gradient(to bottom, #808080 0%, #000 100%);
            }
    </style>
    <script type="text/javascript">
        //Disable Back Button
        window.history.forward(1);
        function DisableEnterKey() {
            if (event.keyCode == 13) {
                return false;
            }
            else {
                return true;
            }
        }

    </script>



    <style type="text/css" media="print">
        * .page-break-after {
            page-break-after: always;
        }
    </style>
</head>
<body onkeydown="return DisableEnterKey()">
    <form id="atplfrm" runat="server" enctype="multipart/form-data">

        <div style="z-index: 999; width: 100%; background-color: white">
            <table width="100%">
                <tr>
                    <td style="width: 10%">
                        <asp:Image ID="Image1" Height="86px" Width="311px" SkinID="imgLogo" ImageUrl="~/Images/Logo.png" runat="server" />
                    </td>
                    <td style="width: 80%; text-align: center"><span style="font-size: x-large">Andurand Capital Management</span><br />
                        <b>
                            <asp:Label ID="Label1" runat="server" CssClass="heading"></asp:Label></b></td>
                    <td style="width: 10%; text-align: right">
                        <%--<asp:Image ID="Image2" Height="71px" Width="150px" SkinID="clientLogo" ImageUrl="~/Images/iigccmemberlogo.jpg" runat="server" />--%>
                    </td>
                </tr>
                <tr>
                    <td style="height: 5px;"></td>
                </tr>
            </table>
            <div style="height: 20px; background-color: #5a6c8e"></div>
            <div style="padding: 5px; border-bottom: 1px solid #808080; background-image: linear-gradient(to bottom, #ebebeb 0%, #c6cad0 100%); color: #000000;">
                <table width="100%">
                    <tr>
                        <td style="width: 70%"></td>
                        <td style="width: 350px; text-align: right">
                            <asp:Label ID="UserLbl" runat="server" Text="Welcome to Andurand Capital Management" CssClass="txtUserLogin"></asp:Label>
                            <span class="txtUserLogin"></span></td>
                        <td></td>
                    </tr>
                </table>
            </div>



            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <%--<div style="height: 150px"></div>--%>
            <div style="min-height: 300px; position: relative">
                <div style="float: left; width: 15%">
                    <table>
                        <tr>
                            <td id="tdLeft" runat="server" style="background-color: #c9cdd6;" colspan="2">
                                <div class="container" style="opacity: 10">
                                    <section class="ac-container">
                                        <div>
                                            <input id="ac-0" name="accordion-1" type="checkbox" />
                                            <label for="ac-0" style="font-family: Tahoma; font-size: larger;">COT</label>
                                            <article class="ac-admin" style="padding-left: 20px;">
                                                <asp:Menu ID="QuickLinkMenu" runat="server" CssClass="txtLeftLink" OnMenuItemClick="QuickLinkMenu_MenuItemClick">
                                                    <Items>
                                                        <asp:MenuItem Text="Energy" Value="1001"></asp:MenuItem>
                                                        <asp:MenuItem Text="Gas" Value="1002"></asp:MenuItem>
                                                        <asp:MenuItem Text="Emmision" Value="1003"></asp:MenuItem>
                                                        <asp:MenuItem Text="Oil" Value="1004"></asp:MenuItem>
                                                    </Items>
                                                </asp:Menu>
                                            </article>
                                        </div>
                                    </section>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td id="td1" runat="server" style="background-color: #c9cdd6;" colspan="2">
                                <div class="container" style="opacity: 10">
                                    <section class="ac-container">
                                        <div>
                                            <input id="ac-1" name="accordion-1" type="checkbox" />
                                            <label for="ac-1" style="font-family: Tahoma; font-size: larger;">Weather</label>
                                            <article class="ac-admin" style="padding-left: 20px;">
                                                <asp:Menu ID="Menu1" runat="server" CssClass="txtLeftLink" OnMenuItemClick="QuickLinkMenu_MenuItemClick">
                                                    <Items>
                                                        <asp:MenuItem Text="Temperature" Value="2001"></asp:MenuItem>
                                                    </Items>
                                                </asp:Menu>
                                            </article>
                                        </div>
                                    </section>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="divmain" runat="server" style="float: right; width: 85%">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr class="tdTop">
                            <td class="tdTop" width="100%">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="100%" class="tdTop">
                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <span class="req">
                                                            <%=_errorMessage%></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Draft" CssClass="txtSubHead" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <hr />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%" border="0" cellpadding="1" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div id="divHTML" runat="server"></div>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">
                                                        <asp:Repeater ID="RepeaterImages" runat="server" OnItemDataBound="RepeaterImages_ItemDataBound">
                                                            <ItemTemplate>
                                                                <table  style="text-align:center">
                                                                    <tr>
                                                                        <td style="text-align:center">
                                                                            <br />
                                                                            <%--<asp:Label ID="headerComodity" CssClass="txtSubHead" runat="server" Text=""></asp:Label>--%>
                                                                            <%--<div id="headerComodity" runat="server" CssClass="txtSubHead"></div>--%>
                                                                            <asp:Image ID="imgComodity" runat="server" ImageUrl='<%# Container.DataItem %>' />
                                                                            <div id="divComodity" runat="server"></div>
                                                                            <br />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="float: none; position: relative">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <%--<hr />--%>
                    <tr>
                        <td align="CENTER" class="txtFooterLink">
                            <%--<asp:LinkButton ID="HomeLnk" runat="server" OnClick="HomeLnk_Click" CausesValidation="false">Home</asp:LinkButton>
                            |
                <asp:LinkButton ID="SitemapLnk" runat="server" CausesValidation="false">Sitemap</asp:LinkButton>
                            |
                <asp:LinkButton ID="HelpLnk" runat="server" CausesValidation="false">Help</asp:LinkButton>
                            |
                <asp:LinkButton ID="DisclaimerLnk" runat="server" CausesValidation="false">Disclaimer</asp:LinkButton>
                            |
                <asp:LinkButton ID="ThemesLnk" runat="server" CausesValidation="false">Themes</asp:LinkButton>--%>
                            <br />
                            Copyright &copy; 2022 Andurand Capital Management. All rights reserved. Design &amp; Developed
                by <b>Dr. Divakar Kumar</b>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>

</html>
