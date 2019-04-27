using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text.RegularExpressions;
using System.Xml.XPath;
using System.IO;

namespace techfetchin
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strFileName = Request.PhysicalApplicationPath + @"launch.txt";
                using (StreamReader sr = new StreamReader(strFileName))
                {
                    string line;
                    bool isread = false;
                    while ((line = sr.ReadLine()) != null)
                    {
                        if (!string.IsNullOrEmpty(line))
                        {
                            hdnshowpop.Value = "false";
                            homepagecontent.Style["display"] = "block";
                        }
                        else
                        {
                            hdnshowpop.Value = "true";
                            homepagecontent.Style["display"] = "none";
                        }
                        isread = true;
                    }
                    if (!isread)
                    {
                        if (!string.IsNullOrEmpty(line))
                        {
                            homepagecontent.Style["display"] = "block";
                            hdnshowpop.Value = "false";
                        }
                        else
                        {
                            hdnshowpop.Value = "true";
                            homepagecontent.Style["display"] = "none";
                        }
                    }
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "pop", "javascript:showpopup();", true);
            }
        }

        protected void btnlaunch_Click(object sender, EventArgs e)
        {
            string strFileName = Request.PhysicalApplicationPath + @"launch.txt";
            using (System.IO.StreamWriter sw = new System.IO.StreamWriter(strFileName, false))
            {
                string strErrorString = txtpromo.Text.Trim();
                sw.Write(strErrorString);
                sw.Flush();
                sw.Close();
            }
            homepagecontent.Style["display"] = "block";
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        //private void textBoxTest_KeyDown(object sender, KeyEventArgs e)
        //{
        //    if (e.KeyCode == Keys.Enter)
        //    {
        //        btnlaunch_Click(this, new EventArgs());
        //    }
        //}
    }
}
