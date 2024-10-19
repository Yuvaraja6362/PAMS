<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PAMS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Parking Application Management System(PAMS)</title>
 <link href="StyleSheet1.css" rel="stylesheet" />
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />
</head>
<body>
        <form id="form1" runat="server">
                        <div id="Container">
            <div id="Title">

                <asp:Label ID="Label1" runat="server" Text="&lt;span id=&quot;Parking&quot;&gt;Parking Application&lt;/span&gt; Management System   &lt;i class=&quot;fa-solid fa-car&quot;&gt;&lt;/i&gt;" CssClass="headlabel" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

            &nbsp;

            </div>
            <div id="Block1">
                <div id="datafield">

                    <asp:Label ID="Label6" runat="server" CssClass="subheadlabels" Font-Bold="True" Font-Size="X-Large" Text="Park Field">Park Field     <i class="fa-solid fa-square-parking"></i></asp:Label>
                    <br />
                    &nbsp;<asp:Label ID="Label2" runat="server" CssClass="labels" Text="Vehicle Number"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="25px" Width="175px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;<asp:Label ID="Label3" runat="server" CssClass="labels" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="25px" Width="175px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;<asp:Label ID="Label4" runat="server" CssClass="labels" Text="Vehicle Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Bike" GroupName="Vtype" CssClass="radiobt" />   <i class="fa-solid fa-motorcycle"></i>
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Car" GroupName="Vtype" CssClass="radiobt"/>   <i class="fa-solid fa-car-side"></i>
                    &nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Other" GroupName="Vtype" CssClass="radiobt"/>   <i class="fa-solid fa-truck"></i>
                    <br />
                    <br />
                    <br />
<asp:Label ID="Label14" runat="server" CssClass="labels" Text="Parking Slot"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dd">
                        <asp:ListItem>Slot Area</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dd">
                        <asp:ListItem>Slot Number</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;<asp:Label ID="Label5" runat="server" CssClass="labels" Text="Date Time"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Height="25px" Width="175px"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="30px" Text="Show" Width="80px" OnClick="Button1_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" CssClass="button" Height="30px" Text="Refresh" Width="80px" OnClick="Button5_Click" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="button" Height="30px" Text="Park" Width="80px" OnClick="Button2_Click1" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="button" Height="30px" Text="Refresh" Width="80px" OnClick="Button3_Click" />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="|" CssClass="dislab"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" CssClass="subheadlabels" Font-Bold="True" Font-Size="X-Large" Text="Search Field">Search Field     <i class="fa-solid fa-magnifying-glass"></i></asp:Label>
                    <br />
                    &nbsp;<asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Height="25px" Width="175px"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button4" runat="server" CssClass="button" Height="30px" Text="Search" Width="80px" OnClick="Button4_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" CssClass="button" Height="30px" Text="Refresh" Width="80px" OnClick="Button6_Click" />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="|" CssClass="dislab"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" CssClass="subheadlabels" Font-Bold="True" Font-Size="X-Large" Text="Departing Field     &lt;i class=&quot;fa-solid fa-ban&quot;&gt;&lt;/i&gt;"></asp:Label>
                    <br />
                    &nbsp;<asp:Label ID="Label10" runat="server" CssClass="labels" Text="Vehicle Number"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Height="25px" Width="175px"></asp:TextBox>
                    <br />
&nbsp;<asp:Label ID="Label13" runat="server" CssClass="labels" Text="DateTime"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" Height="25px" Width="175px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button9" runat="server" CssClass="button" Height="30px" Text="Show" Width="80px" OnClick="Button9_Click" />
                    <asp:Button ID="Button10" runat="server" CssClass="button" Height="30px" Text="Refresh" Width="80px" OnClick="Button10_Click" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" CssClass="button" Height="30px" Text="Unpark" Width="80px" OnClick="Button7_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" CssClass="button" Height="30px" Text="Refresh" Width="80px" OnClick="Button8_Click" />
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="|" CssClass="dislab"></asp:Label>

                </div>
                <div id="tablefield">

                 
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Vehicle_Number" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Vehicle_Number" HeaderText="Vehicle_Number" ReadOnly="True" SortExpression="Vehicle_Number" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Vehicle_Type" HeaderText="Vehicle_Type" SortExpression="Vehicle_Type" />
                            <asp:BoundField DataField="Slot" HeaderText="Slot" SortExpression="Slot" />
                            <asp:BoundField DataField="Parking_DateTime" HeaderText="Parking_DateTime" SortExpression="Parking_DateTime" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [pat]"></asp:SqlDataSource>

                 
                </div>
            </div>
            
        </div>
    </form>
  
</body>
</html>
