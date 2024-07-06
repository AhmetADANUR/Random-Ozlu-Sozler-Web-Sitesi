<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ekle.aspx.cs" Inherits="özlüsözler.ekle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>özlü Sözler ekle</title>
    <style>
      .orta
      {
          position:absolute;
          background-color:orange;
          width: 700px;
          height: 300px;
          left: 50%;
          top: 50%;
          margin-left:-350px;
          margin-top:-150px;
          border-style: solid;
          border-radius:10px;
       }
        .style1
        {
            font-size: x-large;
            font-family: "Cascadia Mono";
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            height: 32px;
        }
        .style4
        {
            width: 71px;
        }
    </style>
</head>
<body style="background-image:url(img/sd.webp)">
    <form id="form1" runat="server">
      <div class="orta">
         
          <table style="width: 100%; height: 295px;">
              <tr>
                  <td class="style1" colspan="2" style="text-align: center; font-weight: 700">
                      Özlü Söz Ekle</td>
              </tr>
              <tr>
                  <td class="style4" 
                      
                      style="font-family: 'Cascadia Mono'; font-size: small; font-weight: 700; text-align: center">
                      <asp:Label ID="Label1" runat="server" 
                          style="font-size: x-large; text-align: center" Text="SÖZ :"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" Height="121px" TextMode="MultiLine" 
                          Width="597px"></asp:TextBox>
                      <br />
                  </td>
              </tr>
              <tr>
                  <td class="style3" 
                      
                      style="font-family: 'Cascadia Mono'; font-size: small; font-weight: 700; text-align: center" 
                      colspan="2">
                      <asp:Label ID="Label2" runat="server" style="font-size: large; color: #FF0000"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style2" colspan="2">
                      <asp:Button ID="Button1" runat="server" Text="SÖZÜ EKLE" Width="135px" 
                          Height="43px" onclick="Button1_Click" />
                  </td>
              </tr>
          </table>
         
      </div>
    </form>
</body>
</html>
