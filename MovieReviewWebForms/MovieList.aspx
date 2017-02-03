<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieList.aspx.cs" Inherits="MovieReviewWebForms.MovieList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
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
        <h1>Movies</h1>
        <table class="table">
            <thead>
                <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>IMDB URL</th>
                    <th>Release Date</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var movie in Movies)
                    { %>
                <tr>
                    <td>
                        <a class="btn btn-default" href="EditMovie.aspx?id=<%=movie.Id %>" role="button">
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit
                        </a>
                    </td>
                    <td><%=movie.Title %> </td>
                    <td><%=movie.Genre %></td>
                    <td><a href="<%=movie.IMDBUrl %>"><%=movie.IMDBUrl %></a></td>
                    <td><%=movie.ReleaseDate %></td>
                    <td>
                        <a class="btn btn-default" href="AddReview.aspx?id=<%=movie.Id %>" role="button">
                            <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Rate
                        </a>
                    </td>
                </tr>
                <%} %>
            </tbody>
        </table>

    </div>
</body>
</html>
