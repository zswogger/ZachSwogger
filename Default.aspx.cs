using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using zachswogger.Classes;
using Microsoft.Ajax.Utilities;
using static zachswogger.Classes.General;

namespace zachswogger
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void DownloadResume_Click(Object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachement; filename=Zachary Swogger Resume.pdf");
            Response.TransmitFile(Server.MapPath("~/Files/Zachary Swogger Resume.pdf"));
            Response.End();
        }

        [WebMethod]
        public static ajaxResponse contactMe(string message, string contact) => zachswogger.Classes.Contact.contactMe(message, contact);
    }
}