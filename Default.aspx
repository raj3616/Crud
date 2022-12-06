<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_Operation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div  style="text-align:center; font-size:x-large"  >
            Student Crud Operation
        </div>
    </div>
    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 142px">&nbsp;</td>
            <td class="modal-lg" style="width: 167px">Student Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="189px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">&nbsp;</td>
            <td class="modal-lg" style="width: 167px">Student Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="189px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">&nbsp;</td>
            <td class="modal-lg" style="width: 167px">Address</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>kandivali</asp:ListItem>
                    <asp:ListItem>borivali</asp:ListItem>
                    <asp:ListItem>Ram Mandir</asp:ListItem>
                    <asp:ListItem>Goregoan</asp:ListItem>
                    <asp:ListItem>Dahisar</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">&nbsp;</td>
            <td class="modal-lg" style="width: 167px">Age</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="189px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px; height: 22px;"></td>
            <td class="modal-lg" style="width: 167px; height: 22px;">Contact </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox4" runat="server" Width="189px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 142px; height: 32px;"></td>
            <td class="modal-lg" style="width: 167px; height: 32px;"></td>
            <td style="height: 32px">
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#993399" ForeColor="Black" Height="32px" OnClick="Button1_Click" Text="Insert" Width="73px" Font-Size="Medium" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#993399" ForeColor="Black" Height="32px" OnClick="Button2_Click" Text="Update" Width="73px" Font-Size="Medium" />
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#993399" ForeColor="Black" Height="32px" OnClick="Button3_Click" Text="Load" Width="73px" Font-Size="Medium" />
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#993399" ForeColor="Black" Height="32px" OnClick="Button4_Click" Text="Delete" Width="73px" Font-Size="Medium" />
            &nbsp;&nbsp;&nbsp;
                </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 142px">&nbsp;</td>
            <td class="modal-lg" style="width: 167px">&nbsp;</td>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" Width="474px">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">&nbsp;</td>
            <td class="modal-lg" style="width: 167px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
