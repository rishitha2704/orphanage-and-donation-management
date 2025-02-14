<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="specialoccasion.aspx.cs" Inherits="specialoccasion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 128px;
        }
        .auto-style4 {
            width: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 117px; width: 565px">
        <tr>
            <td style="vertical-align: top">
                <table style="height: 151px; width: 345px">
                    <tr>
                       <td style="color: #CC0000; text-decoration: underline" class="auto-style4">
                            SPECIAL OCCASION:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Create Occasion"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtcreateoccasion" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcreateoccasion" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" Text="Create" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="orp" />
                        </td>
                        <td class="auto-style3">
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="occname" HeaderText="Occasion Name" SortExpression="occname" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [occname] FROM [occasiondet]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table style="width: 763px">
        <tr>
            <td style="vertical-align: top">
                <table>
                    <tr>
                        <td style="color: #CC0000; text-decoration: underline">
                            ADD OCCASION DETAILS:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Select Occasion"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Names="Cambria" DataSourceID="SqlDataSource3" DataTextField="occname" DataValueField="occname"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [occname] FROM [occasiondet]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Requirements"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtrequirements" runat="server" Height="72px" TextMode="MultiLine" Width="186px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrequirements" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button3" runat="server" Text="Add Details" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" ValidationGroup="orp1" />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="362px" DataKeyNames="occdet" OnRowDeleting="GridView2_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="occname" HeaderText="Occasion Name" SortExpression="occname" />
                        <asp:BoundField DataField="occdet" HeaderText="Occasion Details" SortExpression="occdet" />
                        <asp:BoundField DataField="cdate" HeaderText="Created Date" SortExpression="cdate" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [occname], [occdet], [cdate] FROM [occneed]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

