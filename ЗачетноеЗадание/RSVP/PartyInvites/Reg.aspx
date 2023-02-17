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

        <div> <h1>Внесите имя студента и его оценки в форму</h1> <p></p> </div>

        <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
         <div><label>Имя:</label><input type="text" id="firstName" runat="server"/></div>
        <div><label>Фамилия:</label><input type="text" id="lastName" runat="server"/></div>
        <div><label>Оценка по математике:</label><input type="text" id="gradeMath" runat="server"/></div>
        <div><label>Оценка по физике:</label><input type="text" id="gradePhys" runat="server"/></div>
        <div><label>Оценка по информатике:</label><input type="text" id="gradeProg" runat="server"/></div>

      
        <div>
            <label>Номер группы</label>
           <!-- <asp:CheckBox ID="CheckBoxYN" runat="server" /> -->
            <select id="willattend" runat="server">
                <option value=""></option>
                <option value="true">Группа 1</option>
                <option value="false">Группа 2</option>
            </select> 
            
        </div>
        <div>
            <button type="submit">Внести данные о студенте в список </button>
        </div>
       
       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cписки студентов" />

    </form>
     


</body>
</html>