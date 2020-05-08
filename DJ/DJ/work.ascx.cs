using System;

public partial class work : System.Web.UI.UserControl
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
           
    }
    
    public void wwor()
    {
        string scriptstrs = "";
        scriptstrs += "{ function openDialog() {document.getElementById('light').style.display = 'block';}function closeDialog(){document.getElementById('light').style.display = 'none'; }}";
        if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "key"))
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "key", scriptstrs, true);
        
    }
}