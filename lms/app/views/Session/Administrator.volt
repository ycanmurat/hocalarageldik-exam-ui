<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    {{ get_title() }}
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="Yadigar Onur FIÇICI">

    <!--[if IE]>
    {{ javascript_include('https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js') }}
    {{ javascript_include('https://oss.maxcdn.com/respond/1.4.2/respond.min.js') }}
    <![endif]-->

    {{ javascript_include('Admin/assets/plugins/lib/modernizr.js') }}
    
    {{ stylesheet_link('Admin/assets/plugins/bootstrap/bootstrap.css') }}
    {{ stylesheet_link('Admin/assets/plugins/animate-it/animate.min.css') }}
    {{ stylesheet_link('Admin/assets/css/lib/cmp-bs-checkbox.css') }}
    {{ stylesheet_link('Admin/assets/css/lib/page-login.css') }}
    {{ stylesheet_link('Admin/assets/css/style-default.css') }}
    {{ stylesheet_link('Admin/assets/plugins/validationEngine/validationEngine.jquery.css') }}
    {{ javascript_include('https://www.google.com/recaptcha/api.js') }}
    
</head>

<body>

    <div class="container">
        
        <div class="animatedParent">
            <div class="row">
                <div class="col-md-12">
                    {{ flash.output() }}
                </div>
                {% if secure is defined %} {% endif %}
                <div class="col-md-6 col-sm-6 hidden-xs">
                    <br/><br/><br/>
                    <h3 class="sign animated flipInX">Learning Management System</h3>
                    <p class="small animated flipInX">Kullanıcı Adı ve Parolanız ile Giriş Yapınız.</p>
                    
                    <div class='slider'>
                        <img src="{{ url("Admin/assets/images/lms.png") }}" alt="Learning Management System" class="img-rounded">
                    </div>
                    
                </div>
                
                
                <div class="col-xs-12 col-md-4 col-sm-6 col-lg-4">
                    
                    <div class="blue-line sm normal"></div>
                    
                    <div class="signup-box">
                        <div class="logo"><h3>Yönetim Paneli</h3></div>
                        
                        
                            
                            {% if SMS is defined %}
                        <form method="post" action="?verified=true">
                           <div class="form-group">
                               ******{{Phones}} nolu telefona doğrulama kodu gönderilmiştir.
                           </div>
                           <div class="form-group">
                                <input type="text" name="sms_verified" class="form-control" placeholder="Doğrulama Kodu" {% if secure is defined %} disabled="" {% endif %}>
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </div>
                            {% else %}
                        <form method="post" action="">
                            <div class="form-group">
                                <input type="text" maxlength="20" name="username" class="form-control" placeholder="Kullanıcı Adı" autocomplete="off"  value="{{username}}"{% if secure is defined %} disabled="" {% endif %}>
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </div>
                            
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" placeholder="Parola" autocomplete="off"  value="{{password}}"{% if secure is defined %} disabled="" {% endif %}>
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </div>
                            
                            <div class="form-group">
                                <input type="text" name="security" class="form-control" autocomplete="off" placeholder="{{security}}"{% if secure is defined %} disabled="" {% endif %}>
                                <i class="fa fa-key" aria-hidden="true"></i>
                            </div>
                            
                            <input type="hidden" name="{{ security.getTokenKey() }}" value="{{ security.getToken() }}">
                            
                            {% if Google_reCAPTCHA_Site_Key is defined %}
                            <div class="g-recaptcha" data-sitekey="{{Google_reCAPTCHA_Site_Key}}"></div>
                            {% endif %}
                            <div class="checkbox checkbox-primary">
                                <input id="rememberMe" name="rememberMe" class="styled" type="checkbox" checked{% if secure is defined %} disabled="" {% endif %}>
                                <label for="rememberMe"> Beni Hatırla</label>
                            </div>
                            {% endif %}
                            
                            <button type="submit" class="btn btn-primary btn-block"{% if secure is defined %} disabled="" {% endif %}>Giriş</button>
                        </form>
                    </div>
                    

                    
                    <div class="blue-line lg normal"></div>
                </div>
            </div>
        </div>
        <footer class="footer text-center hidden-xs"> <!-- START: Footer -->
            &copy; 2017 <b>Learning Management System</b> <a href="http://www.onurficici.com.tr">Yadigar Onur FIÇICI</a>
        </footer>   <!-- END: Footer -->
    </div>  <!-- Container End --> 
    
    
    {{ javascript_include('Admin/assets/plugins/lib/jquery-2.2.4.min.js') }}
    {{ javascript_include('Admin/assets/plugins/lib/jquery-ui.min.js') }}
    {{ javascript_include('Admin/assets/plugins/bootstrap/bootstrap.min.js') }}
    {{ javascript_include('Admin/assets/plugins/animate-it/animate-it.js') }}
    {{ javascript_include('Admin/assets/plugins/animate-it/arrow-line.js') }}
</body>
</html>