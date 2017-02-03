using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MovieReviewWebForms.Models;
using System.Data.Entity;

namespace MovieReviewWebForms
{
    public partial class EditMovie : System.Web.UI.Page
    {
        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            int movieId = int.Parse(Request.QueryString["id"]);
            using (var db = new ReviewContext())
            {
                movieInstance = db.Movies.First(n => n.Id == movieId);
                if (IsPostBack)
                {
                    movieInstance.Title = Request.Form["title"];
                    movieInstance.Genre = Request.Form["genre"];
                    movieInstance.IMDBUrl = Request.Form["imdburl"];
                    movieInstance.ReleaseDate = Request.Form["releasedate"];
                    db.Entry(movieInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("MovieList.aspx");
                }


            }
        }
    }
}