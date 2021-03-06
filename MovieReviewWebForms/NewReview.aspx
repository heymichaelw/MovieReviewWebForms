﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewReview.aspx.cs" Inherits="MovieReviewWebForms.NewReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="app.css" rel="stylesheet" type="text/css"/>
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
                        <li><a href="NewReview.aspx">Add A New Review</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="btn btn-default" href="Default.aspx" role="button">
                            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home
                        </a></li>
                    </ul>
                </div>

            </div>

        </nav>
        <h3>Which movie would you like to review?</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Title</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var movie in Movies)
                    { %>
                <tr>
                    <td><a href="AddReview.aspx?id=<%=movie.Id %>"><%=movie.Title %></a></td>
                </tr>
                <%} %>
            </tbody>
        </table>
    </div>
</body>
</html>
