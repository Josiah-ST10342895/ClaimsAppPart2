<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="Claims_Part_2.HR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #DDAF55">
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
            
            
            
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
<div></div>
