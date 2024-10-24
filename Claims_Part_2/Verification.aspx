
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="Claims_Part_2.Verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style12 {
            text-align: center;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style15 {
            margin-left: 301px;
        }
        .auto-style16 {
            text-align: left;
            margin-top: 0px;
        }
        .auto-style17 {
            margin-left: 136px;
        }
        .auto-style18 {
            margin-left: 300px;
        }
        </style>
</head>
<body>


    <form id="form2" runat="server">
<nav class="navbar navbar-expand-sm navbar-light" style="background-color: #DDAF55;">
    <div class="container">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" runat="server" href="~/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" runat="server" href="Claim_Sub">Submit your Claims</a>
                </li>
             
                <li class="nav-item">
                    <a class="nav-link" runat="server" href="~/About">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" runat="server" href="~/Contact">Contact</a>
                <div class="auto-style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Verify Claims" BorderStyle="None" CssClass="auto-style14" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <br />
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style15" DataKeyNames="Lecturer_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="306px" Width="971px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Lecturer_ID" HeaderText="Lecturer_ID" ReadOnly="True" SortExpression="Lecturer_ID" />
                        <asp:BoundField DataField="Program_Code" HeaderText="Program_Code" SortExpression="Program_Code" />
                        <asp:BoundField DataField="Module_Code" HeaderText="Module_Code" SortExpression="Module_Code" />
                        <asp:BoundField DataField="Submission_Date" HeaderText="Submission_Date" SortExpression="Submission_Date" />
                        <asp:BoundField DataField="Hours_Worked" HeaderText="Hours_Worked" SortExpression="Hours_Worked" />
                        <asp:BoundField DataField="Salary_Rate" HeaderText="Salary_Rate" SortExpression="Salary_Rate" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        <asp:BoundField DataField="File_Name " HeaderText="File_Name " SortExpression="File_Name " />
                        <asp:BoundField DataField="File_Location" HeaderText="File_Location" SortExpression="File_Location" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Font-Bold="True" ForeColor="#00CC00" Height="34px" Text="Approve" Width="114px" OnClick="Button2_Click" />
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Font-Bold="True" ForeColor="#FF3300" Height="34px" Text="Decline" Width="115px" />
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [tblLecturer]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
                </li>
            </ul>
        </div>
    </div>
</nav>


        <div class="auto-style12" style="background-color: #DDAF55">
        </div>
    </form>
</body>
</html>
