<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" 
    Inherits="PartyInvites.Summary" %>
<%@ Import Namespace="PartyInvites" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Участники семинара</title>
    <link rel="stylesheet" href="PartyStyles.css" />
</head>
<body>
    <form id="form1" runat="server">

    <h2>Списки студентов</h2>

    <h3>Группа 1:</h3>
    <table>
        <thead>
            <tr>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Оценка по математике</th>
                <th>Оценка по физике</th>
                <th>Оценка по информатике</th>
                <th>Средняя оценка студента</th>
             </tr>
        </thead>
        <tbody>
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses()
                             .Where(r => r.WillAttend.Value);

                double i = 0;
                double a1 = 0;
                double a2 = 0;
                double a3 = 0;

                foreach (var rsvp in yesData) {

                    double d1 = (Convert.ToDouble(rsvp.GradeMath) + Convert.ToDouble(rsvp.GradePhys)
                        + Convert.ToDouble(rsvp.GradeProg)) / (double)3;

                    double d = Math.Round(d1, 2);
                    string str = Convert.ToString(d);

                    i = i + Convert.ToDouble(1);
                    a1 = a1 + Convert.ToDouble(rsvp.GradeMath);
                    a2 = a2 + Convert.ToDouble(rsvp.GradePhys);
                    a3 = a3 + Convert.ToDouble(rsvp.GradeProg);

                    string htmlString = String.Format(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>",
                    rsvp.FirstName, rsvp.LastName, rsvp.GradeMath, rsvp.GradePhys, rsvp.GradeProg,str));
                    Response.Write(htmlString);
                }

                double aa1 = Math.Round(a1 / i, 2);
                double aa2 = Math.Round(a2 / i, 2);
                double aa3 = Math.Round(a3 / i, 2);

                string sa1 = Convert.ToString(aa1);
                string sa2 = Convert.ToString(aa2);
                string sa3 = Convert.ToString(aa3);

                string av1String = String.Format(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>","|","","","","",""));
                string av2String = String.Format(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>",  "Средняя оценка по предмету", "", sa1,sa2,sa3,""));


                Response.Write(av1String);
                Response.Write(av2String);
                /*  Response.Write(av3String); */

                %>
        </tbody>
    </table>

    <h3>Группа 2:</h3>
    <table>
        <thead>
              <tr>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Оценка по математике</th>
                <th>Оценка по физике</th>
                <th>Оценка по информатике</th>
                <th>Средняя оценка студента</th>
             </tr>
        </thead>
        <tbody>
            <%= GetNoShowHtml()%>
        </tbody>
    </table>

    
   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Вернуться к заполнению формы" /> 

</form>
</body>
</html>
