<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Claim_Sub.aspx.cs" Inherits="Claims_Part_2.Claim_Sub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ENjdO4Dr2bkBIFxQpeo4lhbPzrJgC1mHZ5i5qB0eZbZ9j6mFjd4z0tHK4p6F2h7X" crossorigin="anonymous"/>
    <title></title>
    <style type="text/css">
        .auto-style1 { margin-left: 145px; }
        .auto-style3 { margin-left: 134px; }
        .auto-style4 { margin-left: 115px; }
        .auto-style5 { margin-left: 125px; }
        .auto-style6 { margin-left: 147px; }
        .auto-style8 { margin-left: 130px; }
        .auto-style9 { margin-left: 238px; }
        .auto-style10 { margin-left: 844px; }
        .auto-style12 { text-align: center; }
        .auto-style14 { margin-left: 0px; }
        .auto-style15 { margin-left: 236px; }
        .auto-style16 { text-align: left; }
        .auto-style18 { left: 0px; top: 0px; height: 127px; }
        .auto-style19 { margin-left: 153px; }
    </style>
</head>

<body>
    <nav class="auto-style18" style="background-color: #DDAF55">
        <div class="container">
            <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="Claim_Sub">Submit your Claims</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Verification">Verify claims</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/About">About</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <form id="form1" runat="server">
        <div class="auto-style12" style="background-color: #DDAF55">
            <div class="auto-style16">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Claim Submission" BorderStyle="None" CssClass="auto-style14" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Large"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="View claim statuses" OnClick="Button3_Click" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style15" DataKeyNames="Lecturer_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="164px" Width="940px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
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
                
                <br />
                <asp:Label ID="Label3" runat="server" Text="Lecturer ID"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Program code"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Module code"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Submission date"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Hours worked"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style5"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Salary rate"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style6"></asp:TextBox>
                <br />
                <br />
                
                <!-- File upload and file name fields -->
                <asp:Label ID="Label9" runat="server" Text="Select file"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="False" CssClass="auto-style19" />
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="File name"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style19"></asp:TextBox>
                <br />
                <br />

                <!-- Submit Button -->
                <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style9" Text="Submit" Width="154px" OnClick="Button1_Click" Height="36px" />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [tblLecturer]"></asp:SqlDataSource>
                <br />
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeo4lhbPzrJgC1mHZ5i5qB0eZbZ9j6mFjd4z0tHK4p6F2h7X" crossorigin="anonymous"></script>
</body>
</html>
