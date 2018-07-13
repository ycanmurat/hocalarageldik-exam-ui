<section class="register">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="ui header">
                        <i class="mail outline icon"></i>
                        <div class="content">
                            E-Posta Adresinizi Doğrulayın
                        </div>
                    </h2>
                </div>
                <div class="col-sm-6 text-right">
                    <ol class="breadcrumb no-border pull-right">
                        <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="/Onay/EPosta">E-Posta Adresinizi Doğrulayın</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row mbBot">
            {% if code is defined %}
            <div class="col-12">
                <div class="ui negative icon  message">
                    <i class="warning sign icon"></i>
                    <div class="header">
                        {{code}}
                    </div>
                </div>
            </div>
            {% endif %}
            {% if repeat is defined %}
            <div class="col-12">
                <div class="ui positive icon  message">
                    <i class="check circle outline icon"></i>
                    <div class="header">
                        {{repeat}}
                    </div>
                </div>
            </div>
            {% endif %}
        </div>
        <div class="row mbBot">
            <div class="col-12">
                <div class="mycard2 rounded">
                    <h4 class="card-title">Merhaba, {{User['name']}}</h4>

                    <div class="form-group">
                        <input type="text" class="form-control" disabled value="{{User['email']}}">
                    </div>

                    <p class="card-text">E-Posta adresine bir doğrulama kodu gönderdik, lütfen e-posta adresine gelen
                        doğrulama kodunu girerek e-posta adresini onayla, gelen kutunda e-postayı bulamıyorsan lütfen
                        önemsiz kutusuna bakmayı unutma.</p>

                    <div class="alert alert-info">
                        <b>Bilgilendirme:</b> E-Posta adresinizi doğrulamadan site içerisinde gezinti yapamazsınız.
                    </div>
                </div>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-4">
                <form class="" method="get" action="/Onay/EPosta" id="codeForm">
                    <div class="mycard2 rounded">
                        <h5 class="card-title">Doğrulama Kodu</h5>
                        <div class="form-group">
                            <input type="text" name="code" class="form-control form-control-lg"
                                placeholder="Doğrulama Kodunuz">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-success btn-lg btn-block"><i class="fa fa-check"></i> E-Posta
                                Adresimi Doğrula</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-4">

                <div class="mycard2 rounded">
                    <h5 class="card-title">Yeni Onay Kodu İsteyin</h5>
                    <div class="form-group mb-1">
                        <p>Aşağıdaki butona tıklayarak yeni bir onay kodu talep edebilirsiniz.<br /><br /></p>
                    </div>
                    <div class="form-group xmar">
                        <button class="btn btn-sm btn-danger btn-lg btn-block"
                            onclick="window.location.href='/Onay/EPosta?repeat=true'"><i class="fa fa-refresh"></i>
                            Tekrar Gönder</button>
                    </div>
                </div>

            </div>

            <div class="col-sm-12 col-md-6 col-lg-4">
                <form class="" method="get" action="/Onay/EPosta" id="emailForm">
                    <div class="mycard2 rounded">
                        <h5 class="card-title">E-Posta Adresini Değiştir</h5>
                        <div class="form-group">
                            <input type="text" name="email" class="form-control form-control-lg"
                                placeholder="Yeni E-Posta Adresi">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary btn-lg btn-block"><i class="fa fa-save"></i>
                                Kaydet</button>
                        </div>
                    </div>
                </form>
            </div>



        </div>
    </div>
</section>