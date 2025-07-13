<%@ Page Title="" Language="C#" MasterPageFile="~/Application.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="UserApplication.RegistrationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table>
        <tbody>

            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="uName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="uEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="Ugender" runat="server"></asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="Upassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>DateOfBirth</td>
                <td>
                    <asp:TextBox ID="Udob" runat="server" TextMode="Date"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Status</td>
                <td>
                    <asp:TextBox ID="Ustatus" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button Text="Register" ID="btnRegister" OnClick="btnRegister_Click" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:GridView runat="server" ID="gvData" AutoGenerateColumns="false" OnRowCommand="gvData_RowCommand">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%#Eval("") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                </td>
            </tr>

        </tbody>
    </table>

</asp:Content>
