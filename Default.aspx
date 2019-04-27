<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="techfetchin._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="ucl" TagName="ucFooterCtrl" Src="/ucFooterCtrl.ascx" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>TechFetch.com | Job - Submit Resume, Recruiter - Search Candidate</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="Tech Talent, Candidates, Job Seekers, Recruiters, Job Portal, Job Site, Newest jobs from India, India IT Jobs"
        name="keywords" />
    <meta content="Serving 2.5+ Million users and 300,000+ Jobs annually. Top Jobs for smart talent within 30 seconds. Upload resume and get your employability demand index."
        name="description" />
  <link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico"/>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/css/tfnew-custom-style.css" rel="stylesheet" />
    <link href="/css/tfnew-style.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/footer-style.css" />
<%--<link href="/fonts/font-awesome.min.css" rel="stylesheet"/>--%>
    <link href="/css/home-style.css" rel="stylesheet"/>
    <style type="text/css">
        .popcont{ display:none; position:fixed; _position:absolute; /* hack for internet explorer 6*/ background:#FFFFFF; z-index:2; -webkit-border-radius: 6px;border-radius: 6px; } 
          #backgroundpop{ display:none; position:fixed; _position:absolute; /* hack for internet explorer 6*/ height:100%; width:100%; top:0; left:0; background:#000000; z-index:1; } .popcont{ display:none; position:fixed; _position:absolute; /* hack for internet explorer 6*/ background:#FFFFFF; z-index:2; -webkit-border-radius: 6px;border-radius: 6px; }
    </style>
    <style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 600px;
width: 900px;
min-height: 400px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 15px 35px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
padding-top:30px;
}
.cnt223 p{
clear: both;
    color: #555555;
    /* text-align: justify; */
    font-size: 20px;
    font-family: sans-serif;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
.btnlau{background-color:#337ab7;height:70px;
    font-size: 26px;
    border-radius: 6px;
    padding: 20px;
    border: 1px solid #2e6da4;
    color:#ffffff;
    font-weight:400;float: none !important;
}
.close{opacity:1 !important;}
.close:focus, .close:hover{color:#ffffff !important;}
.lantitle{/*padding-top: 45px;*/
    text-align: center;
    font-size:50px;
    color: #123459;
    margin-top:10px;
}
     .launchtxt{
     
  width:220px;height:34px;
    /*border-color: #acacac;
    color: #666666;
    position: relative;
        border-radius: 0;
    background: #ffffff;
    -webkit-appearance: none;
    -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075);*/

     }
  hr { 
  display: block;
  margin-top: 0.1em;
  margin-bottom: 0.5em;
  margin-left: 0px;
  margin-right: auto;
  /*border-style: inset;*/
  border-width: 1px;
  width :670px;
  border-top:1px solid #123459;
 }
  .vrline{
      color: #B0AFAF;width: 1px;border-left: 1px solid #B0AFAF;padding-left: 8px;
  }
</style>

    <script type="text/javascript" src="/javascript/jquery.js"></script>
<script type="text/javascript" src="/javascript/bootstrap.min.js"></script>
    <script type="text/javascript" src="/javascript/modernizr.js"></script>

     <script type='text/javascript'>
         function showpopup()
         {
              if ($('#hdnshowpop').val() == 'true') {
                 var overlay = $('<div id="overlay"></div>');
                 overlay.show();
                 overlay.appendTo(document.body);
                 $('.popup').show();
             }
         }
         function hidepop()
         {
             if ($('#txtpromo').val().length > 0) {
                 var promocode = $('#txtpromo').val();
                 if (promocode.toLowerCase() == 'mvs') {
                      $('.popup').hide();
                     overlay.appendTo(document.body).remove();
                     return true;
                 }
                 else {
                     return false;
                 }
             }
             else {
                 return false;
             }
         }
       
</script>
    
</head>
<body class="home front no-trans">
  
    <form id="form1" runat="server" method="post">
      <div id="homepagecontent" runat="server" style="display:none;">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 homebackground" id="homepage">

            <asp:HiddenField runat="server" ID="hdnshowpop" Value="false" />
            <div class="headcontainer">
                <div class="row">                    
                    <div class="col-sm-3 col-lg-3 col-md-3">                     
                        <div class="header-left clearfix"  >
                            <div runat="server" class="logo">
                              <div id="tfheaderdiv" runat="server">
                                 <a href="#" target="_self"><img id="TFHeader" src="/img/tfin.png" title="techfetch.in" runat="server" alt="TechFetch"/></a>
                                </div></div>
                  
                        </div>
                          <!-- ================ -->
                     </div>
                       <div class="col-md-9 col-sm-9 ">
                        <!-- header-right start -->
                        <!-- ================ -->
                        <div class="header-right clearfix">
                            <!-- main-navigation start -->
                            <!-- ================ -->
                            <div class="main-navigation animated">
                                <!-- navbar start -->
                                <!-- ================ -->
                                <nav class="navbar navbar-default" role="navigation">
                                    <div class="container-fluid">
                                        <!-- Toggle get grouped for better mobile display -->
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-home">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                        </div>
                                           <div class="collapse navbar-collapse" id="navbar-collapse-home">
                                            <ul id="notloggedin" runat="server" class="nav navbar-nav navbar-right">
                                                  <li id="jobchannelhome" runat="server" class="menuitem hidden-sm" style="background-color:#E2E7EA;display:none">
                                                    <a id="anchjobchannelhome" runat="server" target="_blank" style="margin-top:-10px; background-color:#e2e7ea;padding:18px !important;"></a>
                                                </li>
                                                <li class="menuitem">
                                                     <a class="hometoplink"  target="_self" href="#" title="Home">Home</a>
                                                </li>
                                                  <li class="menuitem">
                                                        <a class="toplink"  href="#" target="_self"    style="cursor:pointer;" title="Candidate">Candidate</a>
                                                </li>
                                                  <li class="menuitem">
                                                     <a class="toplink"  href="#" style="cursor:pointer;" id="emploginpop" data-toggle="modal" data-target="#empsignup" title="Recruiter" data-backdrop="static">Recruiter</a>
                                                </li>
                                                  <li class="menuitem">
                                                     <a class="toplink" target="_self" href="#" title="Contact Us">Contact Us</a>
                                                </li>
                                            </ul>
                </div>
                    </div>
                       </nav>
             <!-- navbar end -->
                     </div>
                            <!-- main-navigation end -->
                    </div>
                        <!-- header-right end -->
                  </div>
                 </div>              
            </div>
            <div class="row" style="padding-top:40px;">
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padbottom15">
                    <div class="col-lg-8 col-md-7 col-sm-12 col-xs-12 xsalign padtoplar">
                        <div class="headertitle">On Demand <font style="font-size:47px;">TECH</font> Workforce</div>
                        <hr />
                       <div class="subtitle">Validated <span class="vrline"> </span> Verified <span class="vrline"> </span> Vetted <font>-</font> Eco System</div>
                        <div class="srchrow">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-right: 0px;">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-10 col-xs-10 mrgtop10" style="padding-right: 30px;">
                                        <div class="row">
                                            <input type="text" tabindex="1" name="txtkeyword" id="jwtxtKeywords" maxlength="250" placeholder="Job Title, Keywords" class="form-control pad-left20 txtclass txtbox keywordtxtbox txtborder" data-toggle="tooltip" data-placement="top" autocomplete="off" value="" runat="server" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-5 col-sm-10 col-xs-10 mrgtop10" style="padding-right: 30px;">
                                        <div class="row" id="jwtxtLocationdiv" >
                                            <input type="text" tabindex="2" name="txtlocation" id="jwtxtLocation" maxlength="250" placeholder="Zipcode (OR) City, State" data-provide="typeahead" autocomplete="off" class="form-control pad-left20 txtclass txtbox keywordtxtbox txtborder" value="" />
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-3 col-sm-12 col-xs-12 mrgtop10">
                                        <div class="row">
                                            <span>
                                                <a id="searchlink">
                                                    <input type="submit" id="btnsearchjob" tabindex="3" class="btn btn-default searchbtn" value="" onclick="return false;" />
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 rightalg smalign padtop10">
                        <img src="img/tfnhome.png" class="homeimgalign" alt="tfhome" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 recruiters-block">
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                       <div class="row" style="margin-right: 0px;">
                 
                         <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 row">
                         <div class="rectext">As a recruiter, with Techfetch you can..</div>
                             
                             <div class="mrgtop10">
                         <p class="font16"><img class="bullet" src="/img/tfnclock-small.png" />&nbsp;&nbsp;&nbsp;Get top ten candidates in 30 seconds with our "unstructured data machine engine"</p>
                         <p class="font16"><img class="bullet" src="/img/tfntop-talent.png" />&nbsp;&nbsp;&nbsp;Top talent not found anywhere else</p>
                             </div>
                         </div>
                           </div>
                              </div>
            
                     </div>
            <ucl:ucFooterCtrl ID="ucFooterCtrl" runat="server" />
      </div>
      <div class='popup'>
<div class='cnt223'>

    <div style="width:100%;text-align:center; padding-top:30px; padding-bottom:30px;">
        <%--<table style="width:40%;text-align:center; margin-left:30%;">
            <tr>
                <td style="width:180px;">
                     <img src="/img/tfin.png" title="techfetch.in" runat="server" alt="TechFetch"/>
                </td>
                <td style=" text-align: left; padding-left: 20px;padding-top:5px;">
                     <div class="lantitle">Ready!</div>
                </td>
            </tr>
        </table>--%>
        <div style="display:inline-block;">
           <img src="/img/tfin.png" title="techfetch.in" runat="server" alt="TechFetch"/>
        </div>
          <%--<div style="display:inline-block;">
       <div class="lantitle">Ready!</div> </div>--%>
    </div>
    <div style="width:100%;text-align:center; padding-top:10px; padding-bottom:40px;"> <asp:TextBox TabIndex="1" runat="server" ID="txtpromo" CssClass="launchtxt" TextMode="Password" onkeydown="if (event.keyCode == 13) return false;"></asp:TextBox> </div>
   
    <div style="width:100%;text-align:center;">
        <asp:Button runat="server" TabIndex="2" ID="btnlaunch" OnClientClick="return hidepop();"  OnClick="btnlaunch_Click" class='btnlau close' Text="Launch"/>
     </div>
</div></div>
      
     
     </form>
   
</body>
</html>

    