<section class="register">
<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="warning sign icon"></i>
                  <div class="content">
                    Şifremi Unuttum
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/sifremi-unuttum"> Şifremi Unuttum</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>

<form method="post" action="/sifremi-unuttum" method="post" id="loginForm">
    <div class="container">
        <div class="row row-eq-height mbBot">
           
           
            {% if Uyumsuz is defined %}
            <div class="col-12 mbBot">
               <div class="ui negative icon  message mbBot">
                    <i class="warning sign icon"></i>
                    <div class="header">
                        Üzgünüm, girmiş olduğunuz bilgiler ile eşleşen bir kullanıcı tespit edemedik.
                    </div>
                </div>
            </div>
            {% endif %}
            
            {% if Data is defined %}
            <div class="col-12 mbBot">
                <div class="ui positive icon  message">
                    <i class="check circle outline icon"></i>
                    <div class="header">
                        <p>Merhaba <b>{{Data['Name']}}</b> ({{Data['Username']}}), yeni şifreni <b>{{Data['Email']}}</b> adresine ve <b>{{Data['Phone']}}</b> cep telefonu numarasına gönderdik.</p>
                    </div>
                </div> 
            </div>
            {% endif %}

           
           <div class="col-12 mbBot mb-4">
               <div class="ui info icon  message mbBot">
                    <i class="question icon"></i>
                    <div class="header">
                        E-Posta adresinizi, kullanıcı adınızı veya cep telefonunu numaranızı girerek yeni şifre oluşturabilirsiniz.
                    </div>
                </div>
           </div>

            <div class="col-sm-6">

                <div class="row">

                    <div class="col-12">
                        <div class="form-group">
                            <label>E-Posta Adresiniz, Kullanıcı Adınız veya Cep Telefonunuz</label>
                            <input type="text" name="email" class="form-control form-control-lg" placeholder="E-Posta Adresiniz, Kullanıcı Adınız veya Cep Telefonunuz">
                        </div>
                    </div>

                    <div class="col-12 text-left">
                        <br/>
                        <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Gönder</button>
                        
                        
                    </div>
                    
                    
                    
                </div>

            </div>
            
            <div class="col-sm-6 vcenter text-center black min-height150 left-b">
               <h3>Şifrenizi hatırlıyor musunuz?</h3>
               <p>Şifrenizi hatırlıyorsanız hemen sistemimize giriş yapın.</p>
               <a href="/giris" class="btn btn-sm btn-primary btn-lg flexBtn"> <i class="sign in icon"></i> Hemen Giriş Yap</a>
           </div>

        </div>
    </div>

</form>

</section>