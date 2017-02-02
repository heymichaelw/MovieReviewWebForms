<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="MovieReviewWebForms.AddMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add A Movie</title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <input class="form-control" type="text" name="title" placeholder="Title" />
                <input class="form-control" type="text" name="genre" placeholder="Genre" />
                <input class="form-control" type="text" name="imdburl" placeholder="IMDB Url" />
                <input class="form-control" type="text" name="releasedate" placeholder="Release Date" />
              
                <input type="submit" class="btn btn-success" />
            </div>
        </form>

    </div>
</body>
</html>
