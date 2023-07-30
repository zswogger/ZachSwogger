using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Net.Http.Headers;
using IPGeolocation;
using System.Net.Sockets;
using System.Net;
using MySql.Data.MySqlClient;

namespace zachswogger.Classes
{
    public class GeoLocator
    {
        private static string apiKey = "a9e472beb9f14d959202d2b36dabf8f9";

        private static string getIpAddress()
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    if(!checkUnique(ip.ToString()))
                    {
                        return ip.ToString();
                    }
                    return null;
                }
            }
            throw new Exception("No network adapters with an IPv4 address in the system!");
        }
        
        private static bool checkUnique(string ip)
        {
            return DB.ifExists("visitorInfo", "ipAddress", "=", ip);
        }

        public static void getLocation()
        {
            string ip = getIpAddress();

            if(ip == null)
            {
                return;
            }

            IPGeolocationAPI api = new IPGeolocationAPI(apiKey);
            GeolocationParams geoParams = new GeolocationParams();
            geoParams.SetIPAddress(ip);

            Dictionary<string, object> geolocation = api.GetGeolocation(geoParams);


            if (geolocation.TryGetValue("response", out object nullCheck) != false)
            {
                Geolocation location = (Geolocation)geolocation["response"];

                List<Tuple<string, string>> parameters = new List<Tuple<string, string>>();

                Tuple<string, string> ipAddress = new Tuple<string, string>("ipAddress", ip.ToString());
                Tuple<string, string> date = new Tuple<string, string>("date", DateTime.Now.ToString());
                Tuple<string, string> country = new Tuple<string,string>("country", location.GetCountryName());
                Tuple<string, string> city = new Tuple<string, string>("city", location.GetCity());
                Tuple<string, string> state = new Tuple<string, string>("state", location.GetStateProvince());
                

                parameters.Add(ipAddress);
                parameters.Add(date);
                parameters.Add(country);
                parameters.Add(city);
                parameters.Add(state);

                if (!DB.insert("visitorInfo", parameters))
                {
                    // Do Something
                }
            }
        }

        public class GeoLocatorResponse
        {
            
        }
    }
}