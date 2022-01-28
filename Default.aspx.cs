using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections.Generic;
using System.Web.Security;
using System.Web.UI.HtmlControls;

public partial class _Default : Page
{
    private System.Data.DataSet _dataSet;
    protected string _errorMessage;
    private string _itemName;

    protected void Page_PreInit(object sender, EventArgs e)
    {
        Theme = "Gray";
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        //_home = new Home();
        _dataSet = new System.Data.DataSet();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterClientScriptInclude("somescript", ResolveUrl("JS/Common.js"));
        if (!Page.IsPostBack)
        {
            try
            {
                BindData("Oil");
                Draft.Text = "Oil";
            }
            catch (Exception Ex)
            {
                _errorMessage = Ex.Message;
            }
        }
    }

    private void BindData(string itemName)
    {
        try
        {
            _itemName = itemName;
            Draft.Text = _itemName;
            string[] filesindirectory = Directory.GetFiles(Server.MapPath("~/ReportImages/" + _itemName));
            List<String> images = new List<string>(filesindirectory.Length);

            foreach (string item in filesindirectory)
            {
                //if (System.IO.Path.GetExtension(item) != ".txt")
                //{
                //images.Add(String.Format("~/ReportImages/" + itemName + "/{0}", System.IO.Path.GetFileName(item)));
                //images.Add(System.IO.Path.GetFullPath(item));
                images.Add(item);
                //}
                //else
                //{
                //    using (System.IO.StreamReader reader = new System.IO.StreamReader(String.Format("~/ReportImages/" + itemName + "/{0}", System.IO.Path.GetFileName(item))))
                //    {
                //        images.Add(reader.ReadToEnd());
                //    }
                //}
            }
            images.Sort((a, b) => a.CompareTo(b));
            RepeaterImages.DataSource = images;
            RepeaterImages.DataBind();

            //string body = string.Empty;
            //if (File.Exists(3
            //{
            //    divHTML.Attributes.Add("style", "block");
            //    using (System.IO.StreamReader reader = new System.IO.StreamReader(Server.MapPath("~/ReportImages/" + itemName + "/" + itemName + ".txt")))
            //    {
            //        divHTML.InnerHtml = reader.ReadToEnd();
            //    }
            //}
            //else
            //{
            //    divHTML.InnerHtml = "";
            //    divHTML.Attributes.Add("style", "none");
            //}
        }
        catch
        {
            throw;
        }
    }

    public void OpenNewWindow(string url)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "newWindow", String.Format("<script>window.open('{0}');</script>", url));
    }

    protected void HomeLnk_Click(object sender, EventArgs e)
    {
        Response.Redirect(FormsAuthentication.DefaultUrl);
    }
    protected void QuickLinkMenu_MenuItemClick(object sender, MenuEventArgs e)
    {
        BindData(e.Item.Text);
    }
    protected void RepeaterImages_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Image imgComodity = (Image)e.Item.FindControl("imgComodity");
            HtmlGenericControl divComodity = (HtmlGenericControl)e.Item.FindControl("divComodity");
            //HtmlGenericControl headerComodity = (HtmlGenericControl)e.Item.FindControl("headerComodity");
            if (System.IO.Path.GetExtension(e.Item.DataItem.ToString()) != ".txt")
            {
                imgComodity.ImageUrl = String.Format("~/ReportImages/" + _itemName + "/{0}", System.IO.Path.GetFileName(e.Item.DataItem.ToString()));
                imgComodity.Visible = true;
                divComodity.Visible = false;
                //headerComodity.Visible = false;
            }
            else
            {
                using (System.IO.StreamReader reader = new System.IO.StreamReader(e.Item.DataItem.ToString()))
                {
                    imgComodity.Visible = false;
                    divComodity.Visible = true;
                    divComodity.InnerHtml = reader.ReadToEnd();
                    //if (e.Item.DataItem.ToString().ToUpper().Contains("HEADER"))
                    //{
                    //    imgComodity.Visible = false;
                    //    divComodity.Visible = false;
                    //    headerComodity.Visible = true;
                    //    headerComodity.InnerHtml = reader.ReadToEnd();
                    //}
                    //else
                    //{
                    //    imgComodity.Visible = false;
                    //    divComodity.Visible = true;
                    //    headerComodity.Visible = false;
                    //    divComodity.InnerHtml = reader.ReadToEnd();
                    //}
                }
            }
        }
    }
}
