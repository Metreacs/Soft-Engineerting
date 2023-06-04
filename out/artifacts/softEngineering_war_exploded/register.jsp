<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">

    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
    <link href="static/css/css2.css" rel="stylesheet">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="static/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="static/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="static/css/style.css">
    <link rel="stylesheet" href="static/css/flaticon.css">
    <link rel="stylesheet" href="static/css/aos.css">
    <link rel="stylesheet" href="static/css/style1.css">
    <title>注册</title>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="100">
<jsp:include page="top.jsp"/>
<div class="untree_co-login-register">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
                    <h2 class="heading">注册</h2>
                    <form action="register-do.jsp" name="registerForm">
                        <div class="form-field">
                            <label for="name">姓名</label>
                            <input type="text" class="form-control" name="name" id="name">
                        </div>
                        <div class="form-field">
                            <label for="phone">电话</label>
                            <input type="text" class="form-control" name="phone" id="phone">
                        </div>
                        <div class="form-field">
                            <label for="email">邮箱</label>
                            <input type="email" class="form-control" name="email" id="email">
                        </div>
                        <div class="form-field">
                            <label for="password">密码</label>
                            <input type="password" class="form-control" name="password" id="password">
                        </div>
                        <div class="form-field">
                            <label for="repassword">确认密码</label>
                            <input type="password" class="form-control" name="repassword" id="repassword">
                        </div>
                        <div class="form-field">
                            <input type="submit" class="btn btn-primary btn-block" value="注册" onclick="return checkForm()">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="site-footer">
    <div class="footer-dots"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="widget">
                    <h3>About Launch<span class="text-primary">.</span></h3>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                        live the blind texts.</p>
                </div>
                <div class="widget">
                    <h3>Follow Us</h3>
                    <ul class="list-unstyled social">
                        <li><a href="#"><span class="icon-instagram"></span></a></li>
                        <li><a href="#"><span class="icon-twitter"></span></a></li>
                        <li><a href="#"><span class="icon-facebook"></span></a></li>
                        <li><a href="#"><span class="icon-linkedin"></span></a></li>
                        <li><a href="#"><span class="icon-pinterest"></span></a></li>
                        <li><a href="#"><span class="icon-dribbble"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 ml-auto">
                <div class="widget">
                    <h3>Projects</h3>
                    <ul class="list-unstyled float-left links">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Features</a></li>
                        <li><a href="#">Pricing</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="widget">
                    <h3>Services</h3>
                    <ul class="list-unstyled float-left links">
                        <li><a href="#">Built for Developers</a></li>
                        <li><a href="#">Modern Design</a></li>
                        <li><a href="#">Building Stunning Websites</a></li>
                        <li><a href="#">Bring Ideas To Life</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget">
                    <h3>Quick Contact</h3>
                    <address>43 Raymouth Rd. Baltemoer, London 3910</address>
                    <ul class="list-unstyled links mb-4">
                        <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                        <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                        <li><a href="email-protection.jsp#0e676068614e63776a61636f6760206d6163"><span
                                class="__cf_email__" data-cfemail="d8b1b6beb798b5a1bcb7b5b9b1b6f6bbb7b5">[email&#160;protected]</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-12 text-center">
                <p class="copyright">Copyright &copy; 2022.Company name All rights reserved.<a target="_blank"
                                                                                               href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                </p>
            </div>
        </div>
    </div>
</div>
<div id="overlayer"></div>
<div class="loader">
    <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<script src="static/js/jquery-3.4.1.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/jquery-migrate-3.0.1.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/popper.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/bootstrap.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/owl.carousel.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/jquery.easing.1.3.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/jquery.animateNumber.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/jquery.waypoints.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/jquery.fancybox.min.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/aos.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script src="static/js/custom.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script async="" src="static/js/js.js" type="ff78cc5bcbc6755a5150144f-text/javascript"></script>
<script type="ff78cc5bcbc6755a5150144f-text/javascript">
    window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag("js", new Date()); gtag("config", "UA-166033648-1");
</script>
<script src="static/js/rocket-loader.min.js" data-cf-settings="ff78cc5bcbc6755a5150144f-|49" defer=""></script>
<script type="text/javascript">
    function checkForm() {
        var name = registerForm.name.value;
        var pwd = registerForm.password.value;
        var repwd = registerForm.repassword.value;
        var email = registerForm.email.value;
        //alert(name + pwd + repwd);
        if (name == "" || name == null){
            alert("请输入姓名");//弹出提示
            registerForm.name.focus();//把鼠标焦点移到name里
            return false;
        }else if (email == "" || email == null) {
            alert("请输入邮箱");
            registerForm.email.focus();
            return false;
        }else if (pwd == "" || pwd == null) {
            alert("请输入密码");
            registerForm.password.focus();
            return false;
        } else if (repwd == "" || repwd == null) {
            alert("请输入确认密码");
            registerForm.repassword.focus();
            return false;
        } else if (pwd != repwd) {
            alert("两次密码输入不一致，请重新输入!");
            registerForm.repassword.focus();
            return false;
        }
        return true;
    }
</script>
</body>
</html>
