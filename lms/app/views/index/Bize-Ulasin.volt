
<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="chat outline icon"></i>
                  <div class="content">
                    Bize Ulaşın
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/bize-ulasin"> Bize Ulaşın</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>


<form action="" method="post" id="contactForm">
    <div class="container">
        <div class="row row-eq-height mbBot">
            {% if Gonderildi is defined %}
            <div class="col-12 mbBot">
                <div class="ui positive icon  message">
                    <i class="check circle outline icon"></i>
                    <div class="header">
                        Mesajınız başarıyla bize ulaştı, size en kısa süre içerisinde dönüş yapacağız. Bizi tercih ettiğiniz için teşekkür ederiz.
                    </div>
                </div>
            </div>
            {% endif %}
           <div class="col-sm-4 vcenter">
               <img src="assets/img/iletisim_icin.jpg" class="img-fluid">
           </div>

            <div class="col-sm-8">

                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Adınız</label>
                            <input type="text" name="name" class="form-control form-control-lg name" placeholder="Adınız">
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Soyadınız</label>
                            <input type="text" name="lastname" class="form-control form-control-lg lastname" placeholder="Soyadınız">
                        </div>
                    </div>
                    
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Telefon Numaranız</label>
                            <input type="tel" name="phone" class="form-control form-control-lg phone" placeholder="Telefon Numaranız">
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>E-Posta Adresiniz</label>
                            <input type="email" name="email" class="form-control form-control-lg email" placeholder="E-Posta Adresiniz">
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Konu</label>
                            <input type="text" name="subject" class="form-control form-control-lg name" placeholder="Konu">
                        </div>
                    </div>


                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Mesajınız</label>
                            <textarea name="message" class="form-control form-control-lg "  cols="30" rows="5"></textarea>
                        </div>
                    </div>
                    
                    <div class="col-12">

                        <div class="g-recaptcha" data-sitekey="{{Google_reCAPTCHA_Site_Key}}"></div>
                        <input type="hidden" name="{{ security.getTokenKey() }}" value="{{ security.getToken() }}">

                    </div>

                    <div class="col-sm-12 text-right">
                        <button class="btn btn-success btn-lg"><i class="fa fa-send"></i> Gönder</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

</form>
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>