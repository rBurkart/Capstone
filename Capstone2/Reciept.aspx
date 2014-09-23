<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reciept.aspx.cs" Inherits="Reciept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="menu">
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="340px" 
                ImageUrl="~/App_Themes/thankyoushopping.jpg" Width="346px" />
      

       <br />

            <br />
            <br />
            <span style="font-family: 'Lucida Calligraphy'">
            <span style="font-size: x-large; color: #006600">Your order number</span><span 
                style="color: #006600"> is: </span></span><span style="color: #006600">&nbsp;#11038<br />
            <br />
            <span style="font-family: 'Lucida Calligraphy'">
            <span style="font-size: x-large">Item number: </span>&nbsp;</span>4110<br />
            <br />
            <span style="font-family: 'Lucida Calligraphy'; font-size: x-large">Subtotal</span>: 
            $53.99<br />
            <span style="font-family: 'Lucida Calligraphy'; font-size: x-large">Tax</span>: 
            $1.00</span><br />
            <br />
            <span style="font-family: 'Lucida Calligraphy'; font-size: xx-large; color: #660066">
            Total sale: $54.99<br />
            </span>
            <br />
            <asp:Button ID="btnBackToHome" runat="server" Font-Bold="True" 
                Font-Size="X-Large" ForeColor="Red" Height="50px" onclick="btnBackToHome_Click" 
                Text="Back to Home Page" />
            <br />




        </div>

</asp:Content>

