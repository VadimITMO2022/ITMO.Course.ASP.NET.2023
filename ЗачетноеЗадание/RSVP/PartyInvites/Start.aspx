<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="PartyInvites.Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <div class="rek"> <h1>Списки студентов</h1> 
                <p>Списки студентов, обучающихся в группах 1 и 2,</p> 
                <p>и их оценки по математике, физике и информатике</p> 
            </div> 
            <div class="info"> 
          </div>
       </div>
       

   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Перейти к заполнению формы" />  
     
</form>
   
 

</body>
</html>
