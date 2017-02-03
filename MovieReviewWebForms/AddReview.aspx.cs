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
    public partial class AddReview : System.Web.UI.Page
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
                    var review = new Review
                    {
                        ReviewerName = Request.Form["reviewername"],
                        Movie = movieInstance,
                        Rating = int.Parse(Request.Form["rating"]),
                        ReviewerAge = int.Parse(Request.Form["reviewerage"]),
                        ReviewerOccupation = Request.Form["revieweroccupation"]
                    };
                    db.Reviews.Add(review);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");

                }

     

            }
        }
    }
}