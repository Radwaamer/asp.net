<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="form.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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
        /* start video */
.video{
    position: relative;
}
.video video{
    width: 100%;
}
.video .layout{
    background-color: rgb(0 0 0/ 40%);
    position: absolute;
    width: 100%;
    height: 100%;
}
.video .vid-txt{
    width: 100%;
    background-color: rgb(15 116 143 / 70%);
    padding: 50px;
    text-align: center;
    position: absolute;
    top: 50%;
    transform: translatey(-50%);
    color: white;
}
.video .vid-txt h2{
    font-weight: normal;
    margin: 0;
}
.video .vid-txt p{
    margin: 20px 0;
}
.video .vid-txt button{
    padding: 10px 15px;
    background-color: black;
    color: white;
    text-transform: uppercase;
}
/* end video */

    </style>
</head>
<body>
    <form runat="server" id="form_vid">
        <div class="video">
        <div class="layout">
            </div>
                <video src="images/awesome-video.mp4" autoplay loop muted></video>
                <div class="vid-txt">
                    <h2>Feel Free With Us</h2>
                    <p>Let’s take a journey</p>
                    <asp:Button ID="btn_journey" Text="SEE MORE" runat="server" BackColor="Black" ForeColor="White" Height="55px" Width="155px" OnClick="btn_journey_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
