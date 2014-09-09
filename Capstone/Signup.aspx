<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblSignup" runat="server" Text="Signup"></asp:Label>

    <asp:Label ID="lblFname" runat="server" Text="Enter your First Name:"></asp:Label>
    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>

    <asp:Label ID="lblLname" runat="server" Text="Enter your Last Name:"></asp:Label>
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>

    <asp:Label ID="lblAdd1" runat="server" Text="Address 1:"></asp:Label>
    <asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox>

    <asp:Label ID="lblAdd2" runat="server" Text="Address 2:"></asp:Label>
    <asp:TextBox ID="txtAdd2" runat="server"></asp:TextBox>

    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>

    <asp:Label ID="lblState" runat="server" Text="State:"></asp:Label>
    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>

    <asp:Label ID="lblZip" runat="server" Text="Zip:"></asp:Label>
    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>

    <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>

    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>


    <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>

    <asp:Button ID="btnCreate" runat="server" Text="Submit" OnClick="AddUser" />

    <asp:Label ID="lblFeedback" runat="server"></asp:Label>

    <script runat="server">
        void AddUser(Object s, EventArgs e)
        {
            Jersey temp = new Jersey();
            temp.UserFName = txtFname.Text;
            temp.UserLName = txtLname.Text;
            temp.UserAdd1 = txtAdd1.Text;
            temp.UserAdd2 = txtAdd2.Text;
            temp.UserCity = txtCity.Text;
            temp.UserState = txtState.Text;
            temp.UserZip = txtZip.Text;
            temp.UserName = txtUsername.Text;
            temp.UserPassword = txtPassword.Text;
            temp.UserEmail = txtEmail.Text;
            temp.UserPhone = txtPhone.Text;
            if (temp.feedback != "")
            {
                lblFeedback.Text = temp.feedback;
            }
            else
            {
                temp.AddUser();
                Response.Redirect("Home.aspx");
            }
        }
    </script>

   <%-- <asp:Label ID="lblLogin" runat="server" Text="Already a member?"></asp:Label>
    <asp:Button ID="btnLogin" runat="server" Text="Login" />
    <asp:LoginName ID="LoginName1" runat="server" />
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    <asp:LoginView ID="LoginView1" runat="server"></asp:LoginView>
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server"></asp:PasswordRecovery>--%>
</asp:Content>

