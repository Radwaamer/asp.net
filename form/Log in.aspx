<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log in.aspx.cs" Inherits="form.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <style>
        *{
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    padding: 0;
    margin: 19 0 0 0;
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
    min-height:100vh;
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

/* start test-skills */
.test-skills h3{
    margin: 0 0 30px;
    font-weight: normal;
    font-size: 20px;
}
.skills-header p, .test-header p{
    color: var(--paragraph-color);
    line-height: 2;
    margin-bottom: 50px;
}

/* start testimonials */
.test-skills .testimonials .tests .test{
    display: flex;
    margin-bottom: 30px;
    align-items: center;
}
.test-skills .testimonials .tests .test img{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin-right: 50px;
}
.test-skills .testimonials .tests .test .test-txt{
    line-height: 1.8;
    border-bottom: #ddd 1px solid;
    padding-bottom: 10px;
}
.test-skills .testimonials .tests .test .test-txt span{
    color: var(--paragraph-color);
    display: block;
    text-align: right;
}
/* end testimonials */

/* small screen */
@media (max-width: 991px) {
    .test-skills .container{
        grid-template-columns: repeat(auto-fill , minmax(100% , 1fr));
        gap: 50px;
    }
}
/* end test-skills */



        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 288px;
            height: 67px;
        }

        GridView2{
            color: white;
            padding:5px;
        }
        </style>
</head>
<body>
    <div class="contact" id="contact">
        <div class="layout"></div>
        <div class="container">
            <div class="compot">
                <div class="compot-text">
                    <h2>Log In</h2>
                    <p>Complete Data To Show Your Process</p>
                </div>
            </div>
            <div class="contact-info">
        <form id="form1" runat="server">
        <table class="auto-style1">
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
            <td class="auto-style5" colspan="2">
                <center style="width: 783px; margin-bottom: 40px">
                    <asp:Button ID="btn_log" runat="server" Height="60px" Text="LOG IN" Width="220px" BackColor="#19C8FA" ForeColor="White" style="margin-top: 40px" OnClick="btn_log_Click"/>
                    </center>
            </td>
        </tr>
    </table>
            </div>
        </div>
    
    <!-- start test-skills -->
    <div class="test-skills" runat="server" id="test">
        <div class="container">
            <div class="container">
            <div class="compot">
                <div class="compot-text">
                    <h2>Information</h2>
                    <p>Your Progress Will Display here</p>
                </div>
            </div>
            <!-- start testimonials-->
            <div class="testimonials">
                <div class="tests">
                    <div class="test">
                        <img src="images/person.jpg" alt="test">
                        <div class="test-txt">
                            <p style="height: 53px">Welcome To Our Community, Just Keep In Your Mind You Doing Great In Evrey Step.</p>
                            <asp:GridView ID="GridView2" runat="server" Height="312px" Width="632px">
                            </asp:GridView>
                            <br />
                            <span>With All Love,</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end testimonials-->
        </div>
    </div>
    <!-- end test-skills -->
        </div>
    </form>
</body>
</html>
