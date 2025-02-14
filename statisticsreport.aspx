<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="statisticsreport.aspx.cs" Inherits="statisticsreport" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 833px">
        <tr>
            <td>
                Inventory Chart
            </td>
            <td></td>
            <td>
                Donation Chart
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Palette="Bright" BackColor="PeachPuff">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="invname" YValueMembers="availnum"></asp:Series>
                        <asp:Series ChartArea="ChartArea1" Name="Series2" XValueMember="invname" YValueMembers="wannum">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisY Title="Number Of Inventory" TitleFont="Cambria, 11.25pt, style=Bold">
                            </AxisY>
                            <AxisX Title="Inventory" TitleFont="Cambria, 11.25pt, style=Bold">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [invname], [availnum], [wannum] FROM [inventstock]"></asp:SqlDataSource>
            </td>
             <td>
                 <asp:Button ID="Button1" runat="server" BackColor="Green" BorderStyle="None" Width="25px" />
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Available Number"></asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderStyle="None" Width="25px" />
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Wanted Number"></asp:Label>
           </td>
            <td>
                <asp:Chart ID="Chart2" runat="server" BackColor="LightGray" DataSourceID="SqlDataSource2" Palette="Chocolate">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="cdate" YValueMembers="amt"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisY Title="Donated Amount" TitleFont="Cambria, 11.25pt, style=Bold">
                            </AxisY>
                            <AxisX Title="Donation Date" TitleFont="Cambria, 11.25pt, style=Bold">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [cdate], [amt] FROM [accdet]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Donorwise Donation
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart3" runat="server" BackColor="LightBlue" DataSourceID="SqlDataSource3" Palette="EarthTones">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="dname" YValueMembers="c_damt"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisY Title="Donation Amount" TitleFont="Cambria, 11.25pt, style=Bold">
                            </AxisY>
                            <AxisX Title="Donor Name" TitleFont="Cambria, 11.25pt, style=Bold">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [dname], [c_damt] FROM [accountsdetails] WHERE ([c_damt] &lt;&gt; @c_damt)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="c_damt" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

