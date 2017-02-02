using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieReviewWebForms.Models
{
    public class Review
    {
        public int Id { get; set; }
        public string ReviewerName { get; set; }
        public Movie Movie { get; set; }
        public int Rating { get; set; }
        public int ReviewerAge { get; set; }
        public string ReviewerOccupation { get; set; }
    }
}