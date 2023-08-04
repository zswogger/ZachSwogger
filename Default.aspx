<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zachswogger._Default" Async="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="split-page">
        <span style="opacity: 0;">|</span>
        <div class="follow">
            <h1>Zach Swogger</h1>
            <h4>Full Stack Developer</h4>
            <div class="list-item faded" style="width: 70%;">
                <div class="row">
                    Friendly, hard working full stack developer with a thirst for knowledge
                </div>
                <div class="row">
                    and growth within the software development field.
                </div>
            </div>
            <div class="row-md">
                <a href="https://www.linkedin.com/in/zachary-swogger-b5a143159/" target="_blank"><i class="fa-brands fa-linkedin fa-xl" style="color: #ffffff;"></i></a>
                <a href="https://www.github.com/zswogger" target="_blank"><i class="fa-brands fa-github fa-xl" style="color: white;"></i></a>
                <a href="mailto:contactZach@zachswogger.com"><i class="fa-solid fa-envelope fa-xl" style="color: #ffffff;"></i></a>
                <a href="tel:+17173801381"><i class="fa-solid fa-phone fa-xl" style="color: #ffffff;"></i></a>
            </div>
            <div class="col">
                <div class="row" style="justify-content: left;">
                    <div>
                        <button type="button" class="btn btn-link scroll" id="about-me"><i class="fa-solid fa-chevron-right fa-xs" style="color: #ffffff;"></i>About Me</button>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <button type="button" class="btn btn-link scroll" id="work-history"><i class="fa-solid fa-chevron-right fa-xs" style="color: #ffffff;"></i>Work History</button>
                    </div>
                </div>
                <div class="row">
                    <div id="projects-hover">
                        <button type="button" class="btn btn-link scroll" id="projects"><i class="fa-solid fa-chevron-right fa-xs" style="color: #ffffff;"></i>Projects</button>
                        <div id="projects-dropdown">
                            <ul>
                                <li><a href="/Projects/GotMoney" target="_blank" class="scroll">GabPay</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <button type="button" class="btn btn-link scroll" id="contact"><i class="fa-solid fa-chevron-right fa-xs" style="color: #ffffff;"></i>Contact</button>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <i class="fa-solid fa-chevron-right fa-xs" style="color: #ffffff;"></i>
                        <asp:Button ID="downloadResume" class="btn btn-link scroll" Text="Download Resume" OnClick="DownloadResume_Click" runat="server" />
                    </div>
                </div>
            </div>
            <div class="list-item faded" style="width: 50%;">
                <h4>Skills</h4>
                <div class="skill-pill">
                    C#
                </div>
                <div class="skill-pill">
                    Javascript
                </div>
                <div class="skill-pill">
                    HTML
                </div>
                <div class="skill-pill">
                    CSS
                </div>
                <div class="skill-pill">
                    SQL
                </div>
                <div class="skill-pill">
                    .NET
                </div>
                <div class="skill-pill">
                    Debugging
                </div>
            </div>

        </div>
    </div>

    <div class="split-page">
        <div class="list-item" id="about-me-div">
            <h2>About Me</h2>
            <div class="faded">
                <p>
                My name is Zach Swogger. I have an interesting background in information technology going all the way back to 2013.
                <br />
                <br />
                I joined the US Army as an information technology specialist. I spent the next 5 1/2 years travelling the world and honing my craft.
            I was responsible for hardware and software troubleshooting, account control, security compliance enforcement, and network stability in both garrison and tactical environmenets.
            This adventure took me to South Korea twice, Germany, Romania, and Poland.
                <br />
                <br />
                When I finally got out of the Army, I started school to become a software developer.
            At the same time, I was continuing to refine my skills by becoming a helpdesk technician for my local county government. After 2 short years there,
            I was offered a position as Head of IT at a small private boarding school.
                <br />
                <br />
                There, I oversaw all IT related operations for the entire school.
            This included everything from technical support for school productions and ceremonies, to coordinating with MSP's and 3rd party vendors on the schools needs and advising the Head of School on IT related matters.
                <br />
                <br />
                Finally, about 5 months before I graduated with my Bachelor's in Computer Programming, I was offered a job as a full stack developer for a payment processing company.
            Unfortunately in July 2023, I was part off of a team wide layoff due to a change in business strategy that required less development resources.
            I have loved being a developer and hope to continue to grow and learn as a developer and someday, make a real difference in the sustainable energy field.
            </p>
            </div>
        </div>

        <div class="list-item" id="work-history-start">
            <div class="row job-title">
                <div class="col-md-8">
                    <b>Full Stack Developer</b>
                </div>
                <div class="col-md-4">
                    Oct 2022 - July 2023
                </div>
            </div>
            <div class="row faded">
                <div class="col-md-12">
                    <h6>Green By Phone Inc.</h6>
                    <ul>
                        <li>Develop new features desired by management and users to increase application usability</li>
                        <li>Debug broken features reported by management and users to restore application functionality</li>
                        <li>Document testing plans, procedures, and results to ensure product quality</li>
                        <li>Learn new programming languages and skills as required to maintain current application structure</li>
                        <li>Perform quality assurance testing to validate changes before being deployed to production</li>
                        <li>Write code to meet corporate conventions</li>
                        <li>Refactor user controls to meet scalability and readability guidelines</li>
                        <li>Learn legacy systems and refactor user controls from Visual Basic to C# .NET user controls</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="list-item">
            <div class="row">
                <div class="col-md-8">
                    <b>Head of Information Technology</b>
                </div>
                <div class="col-md-4">
                    June 2021 - Oct 2022
                </div>
            </div>
            <div class="row faded">
                <div class="col-md-12">
                    <h6>Linden Hall School for Girls</h6>
                    <ul>
                        <li>Personally responsible for a 15% reduction in cost from MSP's for 3rd part support</li>
                        <li>Advise Head of School on all IT related matters</li>
                        <li>Teach basic Java and Python to students</li>
                        <li>Coordinate with MSP for network related matters</li>
                        <li>Ensure quality and timely service to all faculty, staff, and students</li>
                        <li>Developed new software used within the school</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="list-item">
            <div class="row">
                <div class="col-md-8">
                    <b>Help Desk Technician</b>
                </div>
                <div class="col-md-4">
                    June 2019 - June 2021
                </div>
            </div>
            <div class="row faded">
                <div class="col-md-12">
                    <h6>County of Lancaster</h6>
                    <ul>
                        <li>Broke down and evaluated user problems, using personal expertise and probing questions</li>
                        <li>Configured hardware, devices and software to set up workstations for employee.</li>
                        <li>Loaded software, granted permissions and configured hardware for new employees as part of onboarding process</li>
                        <li>Followed up with clients to verify optimal customer satisfaction following support engagement andproblem resolution</li>
                        <li>Coordinated with 3rd party vendors for hardware support on warranty eligible devices</li>
                        <li>Developed a help desk tool to assist staff in gathering information</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="list-item">
            <div class="row">
                <div class="col-md-8">
                    <b>Information Technology Specialist</b>
                </div>
                <div class="col-md-4">
                    May 2013 - Dec 2018
                </div>
            </div>
            <div class="row faded">
                <div class="col-md-12">
                    <h6>US Army</h6>
                    <ul>
                        <li>Configured, tested, and maintained garrison and tactical network equipment to achieve mission success</li>
                        <li>Removed malware, ransomware and other threats from laptops and desktop systems</li>
                        <li>Configured hardware, devices and software to set up workstations for employees</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="Default.aspx.js"></script>
    <link rel="stylesheet" href="Default.aspx.css">
</asp:Content>

