<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieReviewWebForms.EditMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="contaier">
        <form id="form1" runat="server">
            <div class="form-group">
                <input class="form-control" type="text" value="<%=movieInstance.Title %>" name="title" />
                <input class="form-control" type="text" value="<%=movieInstance.Genre %>" name="genre"/>
                <input class="form-control" type="text" value="<%=movieInstance.IMDBUrl %>" name="imdburl"/>
                <input class="form-control" type="text" value="<%=movieInstance.ReleaseDate %>" name="releasedate"/>
                <input type="submit" class="btn btn-success" />
            </div>
        </form>
    </div>
</body>
</html>
