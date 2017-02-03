<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieList.aspx.cs" Inherits="MovieReviewWebForms.MovieList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <h1>Movies</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>IMDB URL</th>
                    <th>Release Date</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var movie in Movies)
                    { %>
                <tr>
                    <td>
                        <a class="btn btn-default" href="EditMovie.aspx?id=<%=movie.Id %>" role="button">
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Edit
                        </a>
                    </td>
                    <td><%=movie.Title %> </td>
                    <td><%=movie.Genre %></td>
                    <td><a href="<%=movie.IMDBUrl %>"><%=movie.IMDBUrl %></a></td>
                    <td><%=movie.ReleaseDate %></td>
                </tr>
                <%} %>
            </tbody>
        </table>

    </div>
</body>
</html>
