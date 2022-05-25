<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Process.aspx.cs" Inherits="form.Process" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Process..</title>
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
:root{
    --main-color: #19c8fa;
    --transparent-color: rgb(15 116 143 / 70%);
    --paragraph-color: rgb(131 124 124);
    --layout:rgb(0 0 0 /60%);
    --main-transiton: 0.3s;
    --padding: 100px;
}
.container{
    margin-left: auto;
    margin-right: auto;
    padding-left: 15px;
    padding-right: 15px;
}
ul{
    list-style: none;
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
/* start test-skills */
.test-skills .container{
    display: grid;
    grid-template-columns: repeat(auto-fill , minmax(45% , 1fr));
    gap: 10%;
    padding-top: var(--padding);
    padding-bottom: var(--padding);
}
.skills-header, .test-header{
    text-align: center;
}
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
.test-skills .circls{
    text-align: center;
    margin-top: 20px;
}
.test-skills .circls span{
    display: inline-block;
    height: 15px;
    width: 15px;
    border: 1px solid #ddd;
    border-radius: 50%;
}
.test-skills .circls .circle-active{
    background-color: var(--main-color);
    border-color: var(--main-color);
    margin: 0px 5px;
}
/* end testimonials */

/* start skills */
.test-skills .skills .skill div{
    width: 100%;
    height: 30px;
    background-color: #ddd;
    margin-bottom: 40px;
    margin-top: 15px;
}
.test-skills .skills .skill div span{
    display: block;
    background-color: var(--main-color);
    height: 100%;
    position: relative;
}
.test-skills .skills .skill div span::before{
    content: attr(data-skill);
    position: absolute;
    right: -20px;
    top: -40px;
    background-color: black;
    color: white;
    padding: 5px;
    border-radius: 7px;
}
.test-skills .skills .skill div span::after{
    content:"";
    position: absolute;
    right: -8px;
    top: -13px;
    border-color: black transparent transparent;
    border-style: solid;
    border-width: 8px;
}
/* end skills */

/* small screen */
@media (max-width: 991px) {
    .test-skills .container{
        grid-template-columns: repeat(auto-fill , minmax(100% , 1fr));
        gap: 50px;
    }
}
/* end test-skills */

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- start test-skills -->
    <div class="test-skills">
        <div class="container">
            <!-- start testimonials-->
            <div class="testimonials">
                <div class="test-header">
                    <h3>INFO</h3>
                    <p>Your Personal Information Display Here.</p>
                </div>
                <div class="tests">
                    <div class="test">
                        <img src="images/person.jpg" alt="test">
                        <div class="test-txt">
                            <p>Welcome To Our Community <span id="fname"></span>, Just Keep In Your Mind You Doing Great In Evrey Step.</p>
                            <asp:GridView ID="GridView1" runat="server" Height="219px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="484px">
                            </asp:GridView>
                            <br />
                            <span>With All Love,</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end testimonials-->

            <!-- start skills -->
            <div class="skills">
                <div class="skills-header">
                    <h3>SKILLS</h3>
                    <p>Your Wonderfull Skills.</p>
                </div>
                <div class="skills-txt">
                    <div class="skill">
                        <p>ADOBE</p>
                        <div><span style="width: 90%;" data-skill="90%"></span></div>
                    </div>
                    <div class="skill">
                        <p>HTML & CSS</p>
                        <div><span style="width: 85%;" data-skill="85%"></span></div>
                    </div>
                    <div class="skill">
                        <p>JAVASCRIPT</p>
                        <div><span style="width: 80%;" data-skill="80%"></span></div>
                    </div>
                    <div class="skill">
                        <p>PHP</p>
                        <div><span style="width: 90%;" data-skill="90%"></span></div>
                    </div>
                </div>
            </div>
            <!-- end skills -->
        </div>
    </div>
    <!-- end test-skills -->
    </form>
</body>
</html>
