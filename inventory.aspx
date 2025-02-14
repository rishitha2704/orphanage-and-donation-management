<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="inventory.aspx.cs" Inherits="inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 144px;
    }
    .auto-style4 {
        height: 30px;
    }
    .auto-style5 {
        width: 146px;
    }
    .auto-style6 {
        width: 378px;
    }
    .auto-style7 {
        height: 144px;
        width: 378px;
    }
    .auto-style8 {
        width: 197px;
    }
    .auto-style9 {
        height: 144px;
        width: 197px;
    }
    .auto-style10 {
        width: 121px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 116px; width: 923px">
        <tr>
            <td style="vertical-align: top" class="auto-style6">
                <table style="height: 155px; width: 364px">
                    <tr>
                        <td style="color: #CC0000; text-decoration: underline" class="auto-style10">
                            INVENTORY:
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" Text="Create Inventory"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtcreateinvent" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcreateinvent" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button1" runat="server" Text="Save" Font-Bold="True" Font-Names="Cambria" Width="63px" OnClick="Button1_Click" ValidationGroup="orp" />
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" Width="64px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style8">
                <asp:Image ID="Image1" runat="server" Height="143px" ImageUrl="~/Projimage/addinvent.png" Width="181px" />
            </td>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="130px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="invname" HeaderText="Inventory Name" SortExpression="invname" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [invname] FROM [inventorymas] WHERE ([invid] &lt;&gt; @invid)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="invid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 923px">
        <tr>
            <td class="auto-style7" style="vertical-align: top">
                <table style="width: 370px; height: 183px">
                    <tr>
                        <td style="color: #CC0000; text-decoration: underline">
                            ADD INVENTORY:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Add Inventory"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropinventory" runat="server" DataSourceID="SqlDataSource2" DataTextField="invname" DataValueField="invname" Font-Bold="True" Font-Names="Cambria" AutoPostBack="True" OnSelectedIndexChanged="dropinventory_SelectedIndexChanged"></asp:DropDownList>
                         
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [invname] FROM [inventorymas]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Available Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtavailnum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Wanted Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtwantednum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button3" runat="server" Text="Update" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="Button4" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style9">
                <asp:Image ID="Image2" runat="server" Height="170px" ImageUrl="~/Projimage/inventory.png" Width="181px" />
            </td>
            <td class="auto-style3" style="vertical-align: top">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="invname" HeaderText="Inventory Name" SortExpression="invname" />
                        <asp:BoundField DataField="availnum" HeaderText="Available No." SortExpression="availnum" />
                        <asp:BoundField DataField="wannum" HeaderText="Wanted No." SortExpression="wannum" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [invname], [availnum], [wannum] FROM [inventstock]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

