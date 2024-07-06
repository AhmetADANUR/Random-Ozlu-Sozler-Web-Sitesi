<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="özlüsözler.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>özlü Sözler</title>
    <style type="text/css">
        .style3
        {
            height: 86px;
            text-align: center;
        }
        .style4
        {
            height: 113px;
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            height: 61px;
        }
        .style7
        {
            height: 30px;
            width: 355px;
        }
        .style8
        {
            height: 30px;
            width: 904px;
        }
        .style11
        {
            text-align: center;
        }
        .style12
        {
            text-align: center;
        }
    </style>
</head>
<body style="margin:0px; padding:0px; background-image:url(img/bg.jpg)">
    <form id="form1" runat="server">
     
     
      <div style="top:35%; height: 250px; background-color:white; border-style: solid; width: 900px; left:50%; position:absolute; margin-left:-450px; margin-top:-125px; border-radius:15px; text-align:center; padding-top:20px;">
                 <asp:Label ID="Label1" runat="server" 
                        style="font-weight: 700; font-family: 'Bahnschrift Light SemiCondensed'"></asp:Label>
                </div>
    <div style="height: 123px; text-align:center; top: 500px; width: 760px; left:50%; position:absolute; margin-left:-380px; border-radius:15px;">
                    <asp:Button ID="Button1" runat="server" Height="41px" onclick="Button1_Click" 
                        Text="Rastgele Özlü Söz Çek" Width="194px" 
                        style="background-color: #FFCC00" />   
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                    <asp:Button ID="Button2" runat="server" Height="41px" onclick="Button2_Click" 
                        Text="Özlü Söz Ekle" Width="194px" 
                        style="background-color: #00FF00" />   
                            </td>
                            <td>
                    <asp:Button ID="Button3" runat="server" Height="41px" onclick="Button3_Click" 
                        Text="Özlü Söz Sil" Width="194px" 
                        style="background-color: #FF0000" />   
                            </td>
                        </tr>
                    </table>
    </div>


  
    </form>
    
   
    
</body>
</html>
