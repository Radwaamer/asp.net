<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="form.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style>
        *{
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    padding: 0;
    margin: 0;
}
html{
    scroll-behavior: smooth;
}
body{
    font-family: 'Open Sans', sans-serif;
    font-family: 'Work Sans', sans-serif;
}
        .container{
    margin-left: auto;
    margin-right: auto;
    padding-left: 15px;
    padding-right: 15px;
}
/* small screen */
@media (min-width: 768px) {
    .container{
        width: 750px;
    }
}

/* medium screen */
@media (min-width: 992px) {
    .container{
        width: 970px;
    }
}

/* large screen */
@media (min-width: 1200px) {
    .container{
        width: 1170px;
    }
}

.compot{
    padding-top: 100px;
    padding-bottom: 100px;
}
.compot-text{
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    max-width: 600px;
}
.compot-text h2{
    font-weight: normal;
    font-size: 40px;
    margin: 0;
    position: relative;
}
.compot-text p{
    margin-top: 70px;
    color: rgb(131 124 124);;
    line-height: 1.8;
    font-size: 17px;
}
.compot-text h2::after{
    content: "";
    width: 130px;
    height: 2px;
    background-color: #777;
    bottom: -30px;
    position: absolute;
    left: 50%;
    transform: translate(-50%,-50%);
}
.compot-text h2::before{
    content: "";
    width: 15px;
    height: 15px;
    border: solid black 2px;
    background-color: white;
    border-radius: 50%;
    position: absolute;
    bottom: -45px;
    left: 50%;
    transform: translate(-50%,-50%);
    z-index: 2;
}

/* start contact */
.contact{
    padding-bottom: 100px;
    background-image:url("images/owl.jpg");
    background-size:cover;
    position:relative;
    color: white;
}
.contact .layout{
    background-color: rgb(0 0 0 /75%);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
.contact .container{
    position:relative;
    z-index:4;
}
.contact .contact-info{
    display: flex;
    justify-content: space-between;
}
.contact .contact-info form{
    flex-basis: 70%;
}

/* small screen */
@media (max-width: 767px) {
    .contact .contact-info{
        flex-direction: column-reverse;
    }
}
/* end contact */

        .auto-style1 {
            width: 100%;
            height: 746px;
        }
        .auto-style2 {
            width: 288px;
            height: 67px;
        }

        .auto-style3 {
            width: 288px;
            height: 60px;
        }
        .auto-style4 {
            height: 60px;
        }

        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 53px;
        }
        

    </style>
</head>
<body>
    
    <div class="contact" id="contact">
        <div class="layout"></div>
        <div class="container">
            <div class="compot">
                <div class="compot-text">
                    <h2>Register</h2>
                    <p>Complete Data To Show Your Process</p>
                </div>
            </div>
            <div class="contact-info">
                <form id="form1" runat="server">
                    
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">First Name :</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Last Name :</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Age :</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="direction: ltr">City :</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">E-mail :</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="100%" TextMode="Email"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Password :</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Height="35px" Width="100%" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Phone :</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server" Height="35px" Width="100%" TextMode="Phone"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Native Language :</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">ADOBE :</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                           <td class="auto-style2">HTML & CSS :</td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">JAVASCRIPT :</td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">PHP :</td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" Height="35px" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style3" style="direction: ltr">Gender :</td>
                            <td class="auto-style4">
                                <center>
                                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" />
                                    </center>
                            </td>
                                </tr>
                        <tr>
                            <td class="auto-style5" colspan="2">
                                <center style="width: 783px; margin-bottom: 40px">
                                    <asp:Button ID="btn_reg" runat="server" Height="60px" Text="Register" Width="220px" BackColor="#19C8FA" ForeColor="White" style="margin-top: 40px" OnClick="btn_reg_Click"/>
                                    <asp:Button ID="btn_fill" runat="server" Height="60px" Text="Fill" Width="220px" BackColor="#19C8FA" ForeColor="White" style="margin-top: 40px; margin-left: 15px" OnClick="btn_fill_Click"/>
                                    <asp:Button ID="btn_update" runat="server" Height="60px" Text="Update" Width="220px" BackColor="#19C8FA" ForeColor="White" style="margin-top: 40px; margin-left: 15px" OnClick="btn_update_Click"/>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2">
                                Note: If You Already Have An Account And Want To Update Your Data , Just Type Your E-mail And Password And Click Fill.</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2">
                                Update Your Data And Click <b>Update</b></td>
                        <tr>
                            <td class="auto-style6" colspan="2">
                                Already have account? <a href="Log in.aspx" style="color:#19C8FA">Click Here</a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
