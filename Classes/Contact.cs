using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using zachswogger.Classes;
using static zachswogger.Classes.General;

namespace zachswogger.Classes
{
    public class Contact
    {
        public static ajaxResponse contactMe(string body, string contactInfo)
        {
            ajaxResponse response = new ajaxResponse();

            if (body.IsNullOrWhiteSpace() || contactInfo.IsNullOrWhiteSpace())
            {
                response.success = false;
                response.message = contactInfo.IsNullOrWhiteSpace() ? "Contact information cannot be empty." : "Contact form must contain a message.";
                return response;
            }

            if (!IsValidEmail(contactInfo))
            {
                response.success = false;
                response.message = "You must enter a valid email address";
                return response;
            }

            try
            {
                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient("zachswogger.com");
                mailMessage.From = new MailAddress("contactZach@zachswogger.com");
                mailMessage.To.Add("Zachswogger@gmail.com");
                mailMessage.Subject = "New contact request from zachswogger.com";
                mailMessage.Body = "Message:\n" + body + "\n\nContact Info:\n" + contactInfo;
                smtpClient.Port = 25;
                smtpClient.Credentials = new System.Net.NetworkCredential("contactZach@zachswogger.com", "ie*9Tv725");
                smtpClient.Send(mailMessage);

                response.success = true;
                response.message = "Successfully sent a contact request!";
                return response;
            }
            catch (Exception ex)
            {
                response.success = false;
                response.message = ex.InnerException.ToString();
                return response;
            }
        }

        public static bool IsValidEmail(string email)
        {
            if (string.IsNullOrWhiteSpace(email))
                return false;

            try
            {
                // Normalize the domain
                email = Regex.Replace(email, @"(@)(.+)$", DomainMapper,
                                      RegexOptions.None, TimeSpan.FromMilliseconds(200));

                // Examines the domain part of the email and normalizes it.
                string DomainMapper(Match match)
                {
                    // Use IdnMapping class to convert Unicode domain names.
                    var idn = new IdnMapping();

                    // Pull out and process domain name (throws ArgumentException on invalid)
                    string domainName = idn.GetAscii(match.Groups[2].Value);

                    return match.Groups[1].Value + domainName;
                }
            }
            catch (RegexMatchTimeoutException e)
            {
                return false;
            }
            catch (ArgumentException e)
            {
                return false;
            }

            try
            {
                return Regex.IsMatch(email,
                    @"^[^@\s]+@[^@\s]+\.[^@\s]+$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }
    }
}