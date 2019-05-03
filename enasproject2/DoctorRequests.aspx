<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorRequests.aspx.cs" Inherits="enasproject2.DoctorRequests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
      

        <div>
            <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No request "></asp:GridView>
           <br />
            
            <asp:Button ID="Button1" runat="server" Text="Accept" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
