<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieReviewWebForms.EditMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="contaier">
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
        <form id="form1" runat="server">
            <div class="form-group">
                <input class="form-control" type="text" value="<%=movieInstance.Title %>" name="title" />
                <input class="form-control" type="text" value="<%=movieInstance.Genre %>" name="genre" />
                <input class="form-control" type="text" value="<%=movieInstance.IMDBUrl %>" name="imdburl" />
                <input class="form-control" type="text" value="<%=movieInstance.ReleaseDate %>" name="releasedate" />
                <input type="submit" class="btn btn-success" />
            </div>
        </form>
    </div>
</body>
</html>
