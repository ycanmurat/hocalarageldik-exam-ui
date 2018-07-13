<section class="register">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-12">
                    <h2 class="ui header">
                        <i class="sign in icon"></i>
                        <div class="content">
                            Üye Girişi
                        </div>
                    </h2>
                </div>
                <div class="col-sm-6 text-right">
                    <ol class="breadcrumb no-border pull-right">
                        <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="/giris"> Giriş</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>



    <form action="/giris" method="post" id="loginForm">
        <div class="container">
            <div class="row row-eq-height mbBot">

                {% if message is defined %}
                <div class="col-12 mbBot">
                    <div class="ui negative icon  message">
                        <i class="warning sign icon"></i>
                        <div class="header">
                            {{message['message']}}
                        </div>
                    </div>
                </div>
                {% endif %}

                <div class="col-lg-6 col-sm-12">

                    <div class="row">


                        <div class="col-12">
                            <div class="form-group">
                                <label>E-Posta Adresiniz veya Kullanıcı Adınız</label>
                                <input type="text" name="email" class="form-control form-control-lg"
                                    placeholder="E-Posta Adresiniz veya Kullanıcı Adınız">
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Parolanız</label>
                                <input type="password" name="pass" class="form-control form-control-lg"
                                    placeholder="Parolanız">
                            </div>
                        </div>

                        <div class="col-12 mb-5 text-sm-left text-center">
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" name="optionsCheckboxes" checked class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description"> Beni Hatırla</span>
                            </label>
                            <a href="/sifremi-unuttum" class="forgotPassword"><i class="fa fa-question"></i> Şifremi
                                Unuttum</a>
                            <button class="btn btn-sm btn-success btn-lg float-right"><i class="fa fa-send"></i> Giriş</button>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-12 vcenter text-center black min-height150 left-b">
                    <h3>Üye değil misiniz?</h3>
                    <p>Üyelerimize özel hizmetlerimizden faydalanabilmek için üye olun.</p>
                    <a href="/uye-ol" class="btn btn-sm btn-primary btn-lg flexBtn"> <i class="fa fa-user-plus"></i>
                        Hemen Üye Ol</a>
                </div>

            </div>
        </div>

    </form>

    {% if check is defined %}
    <div class="ui basic modal" id="userCheck">
        <div class="ui icon header">
            <i class="spy icon"></i>
        </div>
        <div class="content text-center">
            <p>Oops! Dikkat et birileri şifreni biliyor olabilir, şuanda hesabına başka bir cihazdan giriş yapıldı!</p>
            <p>Bir hesabı aynı anda birden çok cihazdan kullanamazsınız.</p>
        </div>
        <div class="actions text-center">
            <div data-dismiss="modal" aria-label="Close" class="ui red basic cancel inverted button">
                <i class="remove icon"></i> Tamam
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('.ui.basic.modal#userCheck').modal('show');
        });
    </script>
    {% endif %}

</section>