using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace zachswogger.Classes
{
    public static class General
    {
        public class ajaxResponse
        {
            public bool success { get; set; } = false;
            public string message { get; set; } = "";
        }
    }
}