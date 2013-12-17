﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master"
    AutoEventWireup="true" CodeBehind="AddVideo.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.AddVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Add Videos / Class
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <div id="content" class="span10">
        <!-- content starts -->
        <div class="row-fluid sortable">
            <div class="box span12" style="width: 70%">
                <div class="box-header well">
                    <h2>
                        <i class="icon-picture"></i>Add Videos / Class
                    </h2>
                </div>
                <div id="home" style="display: none" class="box-content">
                    <form id="Form1" class="form-horizontal" runat="server">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label">
                                Class</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlClass" class="input-large span10" AppendDataBoundItems="true"
                                    runat="server" OnChange="displayDivByValueOfDDL(this,'Create New Class','addClass','addVideo');enableText();"
                                    Style="width: auto;">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div id="addClass" style="display: none">
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Class Title</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_classTitle" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Class Descrption</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_classDescription" class="input-xlarge focused" TextMode="MultiLine"
                                        runat="server" Rows="6" Columns="15" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Courtesy</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_courtesy" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Associated to Semester</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_AssocSemester" runat="server" AppendDataBoundItems="true"
                                        data-rel="chosen">
                                        <asp:ListItem Value="">Select Semester</asp:ListItem>
                                        <asp:ListItem Value="1">Sem-1</asp:ListItem>
                                        <asp:ListItem Value="2">Sem-2</asp:ListItem>
                                        <asp:ListItem Value="3">Sem-3</asp:ListItem>
                                        <asp:ListItem Value="4">Sem-4</asp:ListItem>
                                        <asp:ListItem Value="5">Sem-5</asp:ListItem>
                                        <asp:ListItem Value="6">Sem-6</asp:ListItem>
                                        <asp:ListItem Value="7">Sem-7</asp:ListItem>
                                        <asp:ListItem Value="8">Sem-8</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    YouTube Key</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_CKey" class="input-xlarge focused" runat="server"></asp:TextBox>
                                    (e.g "http://www.youtube.com/watch?v=<span style="color: Blue">StphRCLkx6Q</span>"
                                    Enter the string in blue from your video URL)
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="add_Class" class="btn btn-inverse" runat="server" Text="Add Class"
                                    OnClick="addClass" />
                                <button class="btn">
                                    Cancel</button>
                            </div>
                        </div>
                        <div id="addVideo" style="display: block">
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    YouTube Key</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_key" class="input-xlarge focused" Enabled="false" runat="server"></asp:TextBox>
                                    (e.g "http://www.youtube.com/watch?v=<span style="color: Blue">StphRCLkx6Q</span>"
                                    Enter the string in blue from your video URL)
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Title</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_title" class="input-xlarge focused" Enabled="false" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Descrption</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_description" class="input-xlarge focused" Enabled="false" TextMode="MultiLine"
                                        runat="server" Rows="6" Columns="15" />
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="add_Video" class="btn btn-inverse" runat="server" Text="Add Video"
                                    OnClick="addVideo" />
                                <button class="btn">
                                    Cancel</button>
                            </div>
                        </div>
                    </fieldset>
                    <script type="text/javascript">
                        function enableText() {
                            if ($("#<%=ddlClass.ClientID%>").val() == "0") {
                                $("#<%=Text_description.ClientID%>").attr("value", "");
                                $("#<%=Text_title.ClientID%>").attr("value", "");
                                $("#<%=Text_key.ClientID%>").attr("value", "");
                                $("#<%=Text_description.ClientID%>").attr("disabled", "disabled");
                                $("#<%=Text_title.ClientID%>").attr("disabled", "disabled");
                                $("#<%=Text_key.ClientID%>").attr("disabled", "disabled");
                            }
                            else if ($("#<%=ddlClass.ClientID%>").val() == "1") {
                                $("#<%=Text_classTitle.ClientID%>").attr("value", "");
                                $("#<%=Text_classDescription.ClientID%>").attr("value", "");
                                $("#<%=Text_courtesy.ClientID%>").attr("value", "");
                                $("#<%=Text_CKey.ClientID%>").attr("value", "");
                                $("#<%=Text_description.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_title.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_key.ClientID%>").removeAttr("disabled");
                            }
                            else {
                                $("#<%=Text_description.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_title.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_key.ClientID%>").removeAttr("disabled");
                            }
                        }
                    </script>
                    </form>
                </div>
            </div>
            <!--/span-->
        </div>
        <!--/row-->
        <!-- content ends -->
    </div>
</asp:Content>
