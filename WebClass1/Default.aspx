<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebClass1.Default" %>

<!DOCTYPE html>
<script runat="server">

    protected void clientDetailsView_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #0C1874;
            font-size: xx-large;
            background-color: #BAE4E9;
        }
        .auto-style2 {
            width: 100%;
            position: relative;
        }
        .auto-style3 {
            width: 447px;
        }
        .auto-style4 {
            width: 447px;
            height: 28px;
        }
        .auto-style5 {
            height: 28px;
        }
        .auto-style6 {
            text-align: center;
            width: 455px;
        }
        .auto-style7 {
            width: 455px;
            height: 23px;
        }
        .auto-style8 {
            width: 455px;
            height: 28px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 447px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            height: 30px;
            text-align: center;
        }
    </style>
</head>
<body style="background-position: center center;background-size:cover; background-image: url('Background.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            歡迎來到一隻小老貓的領地</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style7"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style9" style="position: relative; top: 0px; left: 0px">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style14">
                    <asp:Label ID="account" runat="server" Text="帳號:"></asp:Label>
                    <asp:TextBox ID="accountTB" runat="server" OnTextChanged="accountTB_TextChanged" style="margin-left: 14px"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="password" runat="server" Text="密碼:"></asp:Label>
                    <asp:TextBox ID="passwordTB" runat="server" style="margin-left: 20px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="loginBT" runat="server" style="margin-top: 10px; margin-bottom: 0px" Text="登入" OnClick="loginBT_Click" />
                    <asp:LinkButton ID="entry" runat="server" Visible="False">進入領地</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:DetailsView ID="clientDetailView" runat="server" AutoGenerateRows="False" DataSourceID="clientDetail" EmptyDataText="帳號密碼錯誤" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="clientDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_money FROM userData WHERE (user_name = @user_name) AND (user_password = @user_password)">
            <SelectParameters>
                <asp:ControlParameter ControlID="accountTB" Name="user_name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="passwordTB" Name="user_password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
