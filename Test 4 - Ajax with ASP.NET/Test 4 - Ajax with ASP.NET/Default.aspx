<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test_4___Ajax_with_ASP.NET.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family:'Times New Roman', Times, serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <%-- Script manager have all the scripts that are executed with the ajax --%>
            <Scripts>
                <asp:ScriptReference Path="~/CustomScripts.js" />
            </Scripts>
        </asp:ScriptManager>

        <h1>ASP.NET with Ajax</h1>
        <div>
            <h2>Q a</h2>
            <span id="qa"></span>
        </div>
        <br />

        <div>
            <h2>Q b</h2>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <%-- controls that requires ajax goes inside the Content Template --%>
               <ContentTemplate>
                    <asp:Button ID="TriggerAjax" runat="server" Text="Click for Ajax Call" OnClick="TriggerAjax_Click" />
                    <br />
                   <asp:Label ID="TimeLabel" runat="server" Text=""></asp:Label>                   
               </ContentTemplate>
                <%--when TriggerAjax2 button is clicked contents inside update panel will be updated with ajax--%>
                <Triggers>                    
                    <asp:AsyncPostBackTrigger ControlID="TriggerAjax2" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>

        </div>
        <br />

        <div>
            <h2>Q c</h2>
            <%-- TriggerAjax2 button click changes update panel controls via ajax, this is done with a trigger inside the update panel --%>
            <asp:Button ID="TriggerAjax2" runat="server" Text="Click for Ajax Call 2" OnClick="TriggerAjax2_Click" />
        </div>
        <br />

        <div>
            <h2>Q d</h2>
            <%-- Below update progress control is connected to UpdatePanel1 by AssociatedUpdatePanelID --%>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <img src="ajax-loader.gif" />
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
