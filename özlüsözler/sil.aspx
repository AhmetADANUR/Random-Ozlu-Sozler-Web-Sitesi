<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sil.aspx.cs" Inherits="özlüsözler.sil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>özlü sözler sil</title>
    <style>
      .orta
      {
          position:absolute;
          width: 1200px;
          height: 750px;
          left: 50%;
          top: 50%;
          margin-left:-600px;
          margin-top:-375px;
          border-style: solid;
       }
       </style>
</head>
<body style="margin:0px; padding:0px; background-image:url(img/bg.jpg)">
    <form id="form1" runat="server">
     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
         ConflictDetection="CompareAllValues" DataFile="~/App_Data/vt.mdb" 
         DeleteCommand="DELETE FROM [sozler] WHERE [Kimlik] = ? AND (([soz] = ?) OR ([soz] IS NULL AND ? IS NULL))" 
         InsertCommand="INSERT INTO [sozler] ([soz], [Kimlik]) VALUES (?, ?)" 
         OldValuesParameterFormatString="original_{0}" 
         SelectCommand="SELECT [soz], [Kimlik] FROM [sozler] ORDER BY [Kimlik]" 
         UpdateCommand="UPDATE [sozler] SET [soz] = ? WHERE [Kimlik] = ? AND (([soz] = ?) OR ([soz] IS NULL AND ? IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_Kimlik" Type="Int32" />
             <asp:Parameter Name="original_soz" Type="String" />
             <asp:Parameter Name="original_soz" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="soz" Type="String" />
             <asp:Parameter Name="Kimlik" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="soz" Type="String" />
             <asp:Parameter Name="original_Kimlik" Type="Int32" />
             <asp:Parameter Name="original_soz" Type="String" />
             <asp:Parameter Name="original_soz" Type="String" />
         </UpdateParameters>
           </asp:AccessDataSource>
    
       <div >
    
          
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               CellPadding="4" DataKeyNames="Kimlik" DataSourceID="AccessDataSource1" 
               ForeColor="#333333" GridLines="None" Height="748px" Width="1199px" 
               AllowPaging="True" class="orta">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                   <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" 
                       ReadOnly="True" SortExpression="Kimlik" />
                   <asp:BoundField DataField="soz" HeaderText="Sözler" SortExpression="soz" />
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
    
          
       </div>
    </form>
</body>
</html>
