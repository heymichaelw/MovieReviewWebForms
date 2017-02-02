<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieReviewWebForms.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
     <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
    <h1>Reviews!</h1>

        <table class="table">
            <thead>
                <tr>
                    <th>Reviewer Name</th>
                    <th>Movie</th>
                    <th>Rating</th>
                    <th>Reviewer Age</th>
                    <th>Reviewer Occupation</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var review in Reviews)
                    { %>
                <tr>
                    <td><%=review.ReviewerName %> </td>
                    <td><%=review.Movie.Title %></td>
                    <td><%=review.Rating %></td>
                    <td><%=review.ReviewerAge %></td>
                    <td><%=review.ReviewerOccupation %></td>
                </tr>
                <%} %>
            </tbody>
        </table>


    </div>
</body>
</html>
