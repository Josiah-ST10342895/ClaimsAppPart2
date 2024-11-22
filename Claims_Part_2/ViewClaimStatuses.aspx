<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewClaimStatuses.aspx.cs" Inherits="Claims_Part_2.ViewClaimStatuses" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>View Claim Statuses</title>
    <style>
       
        body {
            background-color: #f8f9fa; 
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

       
        .navbar {
            background-color: #343a40;
            padding: 15px;
            text-align: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            display: inline-block;
        }

        .navbar a:hover {
            background-color: #495057;
            color: white;
        }

       
        .content {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #343a40;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #343a40;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
        .auto-style1 {
            margin-top: 12px;
        }
    </style>
</head>
<body>

   
    <div class="navbar">
        <a href="Home.aspx">HOME</a>
        <a href="About.aspx">ABOUT</a>
        <a href="Resources.aspx">RESOURCES</a>
    </div>

    
    <form id="form1" runat="server">
        <div class="content" style="background-color: #DDAF55">
        <h2>   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Lecturer_ID">
    <Columns>
        <asp:BoundField DataField="Lecturer_ID" HeaderText="Lecturer ID" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="Button2" runat="server" Text="Approve" OnClick="Button2_Click" />
                <asp:Button ID="Button1" runat="server" Text="Decline" OnClick="Button1_Click" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            </h2>
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [tblLecturer]"></asp:SqlDataSource>
    </form>

</body>
</html>
