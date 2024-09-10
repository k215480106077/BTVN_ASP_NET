<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tính thể tích hình trụ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Tính thể tích hình trụ</h2>

            <label for="txtA">Nhập giá trị bán kính đáy (a): </label>
            <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
            <br /><br />
            <label for="txtH">Nhập giá trị chiều cao (h): </label>
            <asp:TextBox ID="txtH" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnCalculate" runat="server" Text="Tính Toán" OnClick="btnCalculate_Click" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
