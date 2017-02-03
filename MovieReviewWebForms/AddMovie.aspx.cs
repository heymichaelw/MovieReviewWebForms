using MovieReviewWebForms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewWebForms
{
    public partial class AddMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                if (IsPostBack)
                {
                    var movie = new Movie
                    {
                        Title = Request.Form["title"],
                        Genre = Request.Form["genre"],
                        IMDBUrl = Request.Form["imdburl"],
                        ReleaseDate = Request.Form["releasedate"]
                    };
                    db.Movies.Add(movie);
                    db.SaveChanges();
                    Response.Redirect("MovieList.aspx");
                }

            }
        }
    }
}