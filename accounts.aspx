<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 150px; width: 493px">
          <tr>
                        <td style="color: #CC0000; text-decoration: underline">
                            CREATE ACCOUNTS:
                        </td>
                    </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Donor Id"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropdonar" runat="server" DataSourceID="SqlDataSource1" DataTextField="donid" DataValueField="donid" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
            &nbsp;<asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" Text="View" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [donid] FROM [donardet]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname" runat="server" Text="....."></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbldate" runat="server" Text="......"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Donation Type"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash" GroupName="dtype" Checked="true" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Product" AutoPostBack="True" GroupName="dtype" OnCheckedChanged="RadioButton2_CheckedChanged" />
            </td>
        </tr>
       <tr>
           <td>
               
           </td>
           <td>
               <asp:Panel ID="Panel1" runat="server">
                   <table>
                       <tr>
                           <td>
                               <asp:Label ID="Label6" runat="server" Text="Donation Amount"></asp:Label>
                           </td>
                           <td>
                               Rs.
                               <asp:TextBox ID="txtdonamt" runat="server" Width="92px">0</asp:TextBox>
                           </td>
                       </tr>
                         <tr>
                           <td>
                               <asp:Label ID="Label7" runat="server" Text="Cheque No"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtchequenum" runat="server">0</asp:TextBox>
                           </td>
                       </tr>
                         <tr>
                           <td>
                               <asp:Label ID="Label8" runat="server" Text="Bank Details"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtbank" runat="server">no</asp:TextBox>
                           </td>
                       </tr>
                   </table>
               </asp:Panel>
               <asp:Panel ID="Panel2" runat="server" Visible="false">
                   <table>
                       <tr>
                           <td>
                               <asp:Label ID="Label5" runat="server" Text="Inventory"></asp:Label>
                           </td>
                           <td>
                               <asp:DropDownList ID="dropinv" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="invname" DataValueField="invname" Font-Bold="True" Font-Names="Cambria" OnSelectedIndexChanged="dropinv_SelectedIndexChanged"></asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [invname] FROM [inventorymas]"></asp:SqlDataSource>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label9" runat="server" Text="Wanted No"></asp:Label>
                           </td>
                           <td>
                               <asp:Label ID="lblwantednum" runat="server">0</asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label10" runat="server" Text="No of Donation"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtnodonation" runat="server">0</asp:TextBox>
                           </td>
                       </tr>
                   </table>
               </asp:Panel>
           </td>
       </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" Width="63px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" Width="69px" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="247px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cdate" HeaderText="Donated Date" SortExpression="cdate" />
                        <asp:BoundField DataField="amt" HeaderText="Donated Amount" SortExpression="amt" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [cdate], [amt] FROM [accdet]"></asp:SqlDataSource>
            </td>
            <td>

            </td>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" ForeColor="Black" Width="862px">
                    <Columns>
                        <asp:BoundField DataField="donid" HeaderText="Donor ID" SortExpression="donid" />
                        <asp:BoundField DataField="dname" HeaderText="Donor Name" SortExpression="dname" />
                        <asp:BoundField DataField="cdate" HeaderText="Date" SortExpression="cdate" />
                        <asp:BoundField DataField="dtype" HeaderText="Donation Type" SortExpression="dtype" />
                        <asp:BoundField DataField="c_damt" HeaderText="Cash Amount" SortExpression="c_damt">
                        <ItemStyle BackColor="#CCCCFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="c_cheqno" HeaderText="Cheque No" SortExpression="c_cheqno">
                        <ItemStyle BackColor="#CCCCFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="c_bankdet" HeaderText="Bank details" SortExpression="c_bankdet">
                        <ItemStyle BackColor="#CCCCFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="p_invname" HeaderText="Inventory Name" SortExpression="p_invname">
                        <ItemStyle BackColor="#FFCC99" />
                        </asp:BoundField>
                        <asp:BoundField DataField="p_wannum" HeaderText="Wanted Number" SortExpression="p_wannum">
                        <ItemStyle BackColor="#FFCC99" />
                        </asp:BoundField>
                        <asp:BoundField DataField="p_donum" HeaderText="Donated Number" SortExpression="p_donum">
                        <ItemStyle BackColor="#FFCC99" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [donid], [dname], [cdate], [dtype], [c_damt], [c_cheqno], [c_bankdet], [p_invname], [p_wannum], [p_donum] FROM [accountsdetails]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

