<!DOCTYPE html>
<html lang="en">
<head>
  <style>
/*
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
*/

/*--reset--*/

html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
dl,
dt,
dd,
ol,
nav ul,
nav li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
    display: block;
}

ol,
ul {
    list-style: none;
    margin: 0px;
    padding: 0px;
}

blockquote,
q {
    quotes: none;
}

blockquote:before,
blockquote:after,
q:before,
q:after {
    content: '';
    content: none;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

/*--start editing from here--*/

a {
    text-decoration: none;
}

.txt-rt {
    text-align: right;
}

/* text align right */

.txt-lt {
    text-align: left;
}

/* text align left */

.txt-center {
    text-align: center;
}

/* text align center */

.float-rt {
    float: right;
}

/* float right */

.float-lt {
    float: left;
}

/* float left */

.clearfix {
    clear: both;
}

/* clear float */

.pos-relative {
    position: relative;
}

/* Position Relative */

.pos-absolute {
    position: absolute;
}

/* Position Absolute */

.vertical-base {
    vertical-align: baseline;
}

/* vertical align baseline */

.vertical-top {
    vertical-align: top;
}

/* vertical align top */

nav.vertical ul li {
    display: block;
}

/* vertical menu */

nav.horizontal ul li {
    display: inline-block;
}

/* horizontal menu */

img {
    max-width: 100%;
}

/*--end reset--*/

button.w3l-cart {
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    text-decoration: none;
    outline: none;
}

body a:hover {
    text-decoration: none;
}

.clearfix {
    clear: both;
}

/* content */

body {
    background: url(./images2/banner.jpg) no-repeat center;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    -ms-background-size: cover;
    background-attachment: fixed;
    font-family: 'Mukta Mahee', sans-serif;
}

.text-center {
    text-align: center;
}

.content-w3ls {
    display: -webkit-flex;
    display: -webkit-box;
    display: -moz-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    justify-content: center;
    align-items: center;
    -webkit-box-pack: center;
    -moz-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
}

.agileits-grid {
    max-width: 500px;
    margin: 0 5vw;
    padding: 3.5vw;
    box-sizing: border-box;
    display: flex;
    display: -webkit-flex;
    flex-wrap: wrap;
    background: rgba(249, 249, 249, 0.24);
    box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.49);
}

.content-top-agile,
.content-bottom,
.wthree-field {
    flex-basis: 100%;
    -webkit-flex-basis: 100%;
}

.content-top-agile {
    padding: 1em;
    background: #073374;
    border-radius: 20px;
}

.content-top-agile h2 {
    color: #ffffff;
    font-weight: 400;
    font-size: 1.3em;
    text-transform: uppercase;
}

.field_w3ls {
    background: #fff;
}

h1.title-agile {
    font-size: 2.8em;
    font-weight: 600;
    text-transform: uppercase;
    color: #ffffff;
    letter-spacing: 3px;
    word-spacing: 3px;
    margin: 1em 1vw 1em;
    text-align: center;
    font-family: 'Mukta Mahee', sans-serif;
}

.content-w3ls ul li {
    display: inline-block;
}

li.switch-agileits {
    float: left;
}

ul.list-login li:nth-child(2) {
    float: right;
}

li:nth-child(2) a {
    color: #000;
}

/* form style  */

form .field-group {
    display: flex;
    display: -webkit-box;
    /* OLD - iOS 6-, Safari 3.1-6 */
    display: -moz-box;
    /* OLD - Firefox 19- (buggy but mostly works) */
    display: -ms-flexbox;
    /* TWEENER - IE 10 */
    display: -webkit-flex;
    /* NEW - Chrome */
}

.field-icon {
    float: right;
    margin-left: -30px;
    margin-top: 25px;
    position: relative;
    z-index: 2;
}

ul.list-login {
    margin: 2em 0 0;
}

.field_w3ls {
    background: #ffffff;
    border-radius: 15px;
    margin: 2em 0;
}

.field-group input:last-child {
    border-bottom: 1px solid #c2c5ca;
}

.field-group input {
    padding: 18px 15px;
    font-size: 16px;
    border: none;
    background: transparent;
    box-sizing: border-box;
    width: 100%;
    font-family: 'Mukta Mahee', sans-serif;
    outline: none;
}

.wthree-field input[type="submit"] {
    background: #073374;
    width: 100%;
    border: none;
    color: #fff;
    padding: 12px 15px;
    border-radius: 20px;
    text-transform: uppercase;
    font-size: 16px;
    font-weight: 600;
    font-family: 'Mukta Mahee', sans-serif;
    cursor: pointer;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
}

.wthree-field input[type="submit"]:hover {
    background: #000;
    color: #fff;
    letter-spacing: 2px;
}

/* switch */

label.switch {
    position: relative;
    display: inline-block;
    height: 23px;
    padding-left: 5em;
    cursor: pointer;
    color: #000;
}

li:nth-child(2) a,
label.switch {
    text-transform: uppercase;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 1px;
}

.switch input {
    display: none;
}

.slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 26%;
    background-color: #777;
    -webkit-transition: .4s;
    transition: .4s;
}

.slider:before {
    position: absolute;
    content: "";
    height: 15px;
    width: 15px;
    left: 4px;
    bottom: 4px;
    background-color: white;
    -webkit-transition: .4s;
    transition: .4s;
}

input:checked+.slider {
    background-color: #073374;
}

input:focus+.slider {
    box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
    -webkit-transform: translateX(26px);
    -ms-transform: translateX(26px);
    transform: translateX(26px);
}

/* Rounded sliders */

.slider.round {
    border-radius: 34px;
}

.slider.round:before {
    border-radius: 50%;
}

/* //switch */

.copyright {
    margin: 4em 0 2em;
}

.copyright p {
    color: #000;
    letter-spacing: 1px;
    margin: 0 1em 1em;
    font-weight: 600;
    font-size: 1em;
}

.copyright p a {
    color: #000;
}

/* //content */

@media (max-width: 1920px) {
    h1 {
        font-size: 3.5vw;
    }
}

@media screen and (max-width: 768px) {
    .content-top-agile {
        padding: 2em;
    }
}

@media screen and (max-width: 480px) {
    .content-w3ls {
        margin: 3em 1em;
    }
    h1.title-agile {
        font-size: 2.3em;
        letter-spacing: 3px;
    }
    label.switch {
        padding-left: 4em;
    }
    .content-top-agile {
        padding: 1.5em;
    }
}

@media screen and (max-width: 414px) {
    h1.title-agile {
        font-size: 2.2em;
    }
    ul.list-login li:nth-child(2),
    li.switch-agileits {
        float: none;
    }
    ul.list-login li:nth-child(2) {
        margin-top: 1em;
    }
    form .field-group .wthree-field {
        flex: 3 40%;
    }
}

@media screen and (max-width: 384px) {
    h1.title-agile {
        font-size: 2.1em;
    }
    .content-w3ls {
        margin: 2em 1em;
    }
    .wthree-field input[type="submit"] {
        padding: 7px 15px;
    }
    .content-top-agile {
        padding: 1.3em;
    }
}

@media screen and (max-width: 375px) {
    h1.title-agile {
        font-size: 2em;
    }
    .content-bottom {
        padding: 1em;
    }
    .field_w3ls {
        margin: 1em 0;
    }
    .copyright p {
        letter-spacing: 0.5px;
    }
}

@media screen and (max-width: 320px) {
    h1.title-agile {
        font-size: 1.7em;
    }
    .content-bottom {
        padding: 2em 1.5em;
    }
    .content-top-agile h2 {
        font-size: 1.2em;
    }
    .content-bottom {
        padding: 1em 0em;
    }
    .content-top-agile {
        padding: 1em;
    }
}

/* -- //Responsive code -- */


  </style>
  <meta charset="UTF-8" />
  <title>Dashboard | By Code Info</title>
  <link rel="stylesheet" href="./style2.css" />
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>
<body>
	<div class="o"></div>
  <div class="container">
    <nav>
      <ul>
        <li><a href="#" class="logo"><br><br><br>
        
          <span class="nav-item">Company</span>
        </a></li>
        <li><a href="add.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">Add product Idea</span>
        </a></li>
        <li><a href="View.jsp">
          <i class="fas fa-user"></i>
          <span class="nav-item">View product</span>
        </a></li>
		
        
        <li><a href="ad.jsp">
          <i class="fas fa-tasks"></i>
          <span class="nav-item">Appplied Invester List</span>
        </a></li>
		
      </ul>
    </nav>


      

     
   
        
          <h1 class="title-agile text-center"></h1>
          <div class="content-w3ls">
              <div class="agileits-grid">
                  <div class="content-top-agile">
                      <h2>Add Product</h2>
                  </div>
                  <div class="content-bottom">
                      <form action="FileUpload2" method="post" enctype="multipart/form-data">
                          <div class="field_w3ls">
                              <div class="field-group">
                                  <input name="pname" id="text1" type="text"  placeholder="product_name" required>
                              </div>
                              <div class="field-group">
                                <input name="desc" id="text1" type="text"  placeholder="Description" required>
                            </div>
                            <div class="field-group">
                              <input name="category" id="text1" type="text"  placeholder="category" required>
                          </div>
                              <div class="field-group">
                                  <input id="password-field" type="text" class="form-control" name="FA"  placeholder="Funding Amount">
                                  <span toggle="#password-field" ></span>
                              </div>
                              <div class="field-group">
                                  <input  type="file" class="form-control" name="File"  placeholder="File">
                                 
                              </div>
                          </div>
                          <div class="wthree-field">
                              <input id="saveForm" name="saveForm" type="submit" value="Login" />
                          </div>
                          <ul class="list-login">
                              <li class="switch-agileits">
                                  
                              </li>
                              <li>
                                  
                              </li>
                              <li class="clearfix"></li>
                          </ul>
                      </form>
                 
    <div class="copyright text-center">
        
    </div>
    <!--//copyright-->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- script for show password -->
    <script>
        $(".toggle-password").click(function () {

            $(this).toggleClass("fa-eye fa-eye-slash");
            var input = $($(this).attr("toggle"));
            if (input.attr("type") == "password") {
                input.attr("type", "text");
            } else {
                input.attr("type", "password");
            }
        });
    </script>
    <!-- /script for show password -->

      </section>
    </section>
  </div>
</body>
</html>