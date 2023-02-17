<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" 
    Inherits="PartyInvites.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="PartyStyles.css" />
</head>
<body>
    <form id="rsvpform" runat="server">
      <!--  <div>
            <h1>New Year's Eve at Jacqui's!</h1>
            <p>We're going to have an exciting party. And you're invited!</p>
        </div>  -->

        <div> <h1>Приглашаем на семинар</h1> <p></p> </div>

        <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
        <div><label>Ваше имя:</label><input type="text" id="name" runat="server"/></div>
        <div><label>Ваш email:</label><input type="text" id="email" runat="server" /></div>
        <div><label>Ваш телефон:</label><input type="text" id="phone" runat="server" /></div>
        <div>
            <label>Вы будете делать доклад?</label>
           <!-- <asp:CheckBox ID="CheckBoxYN" runat="server" /> -->
            <select id="willattend" runat="server">
                <option value="">Choose an Option</option>
                <option value="true">Yes</option>
                <option value="false">No</option>
            </select> 
            
        </div>
        <div>
            <button type="submit">Отправить ответ на приглашение RSVP</button>
        </div>
    </form>
</body>
</html>