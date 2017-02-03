<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieReviewWebForms.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="app.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>


                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="MovieList.aspx">Movies</a></li>
                        <li><a href="AddMovie.aspx">Add A New Movie</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="btn btn-default" href="Default.aspx" role="button">
                            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home
                        </a></li>
                    </ul>
                </div>

            </div>

        </nav>
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
