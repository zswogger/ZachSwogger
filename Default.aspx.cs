using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using zachswogger.Classes;

namespace zachswogger
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GeoLocator.getLocation();
        }

        public void DownloadResume_Click(Object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachement; filename=Zachary Swogger Resume.pdf");
            Response.TransmitFile(Server.MapPath("~/Files/Zachary Swogger Resume.pdf"));
            Response.End();
        }
    }
}