<section class="register">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h2 class="ui header">
                        <i class="add user icon"></i>
                        <div class="content">
                            {% if Ostim is defined %}
                            Ostim Türkiye Geneli Online Deneme Sınavı Üyelik Formu
                            {% else %}
                            Üye Ol
                            {% endif %}
                        </div>
                    </h2>
                </div>
                <div class="col-sm-4 text-right">
                    <ol class="breadcrumb no-border pull-right">
                        <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI']; ?>">
                                {% if Ostim is defined %}
                                Ostim Deneme Sınavı Üyelik Formu
                                {% else %}
                                Üye Ol
                                {% endif %}
                            </a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <style>
        .blue {
            background: rgba(126, 214, 223, 0.1)
        }

        .select2-container--bootstrap .select2-selection {
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            color: #555;
            font-size: 14px;
            outline: 0;
            padding: 25px !important;
        }

        .select2-container .select2-selection--single .select2-selection__rendered {
            display: block;
            padding-left: 8px;
            padding-right: 20px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: -10px;
        }

        .select2-container .select2-selection--single {
            box-sizing: border-box;
            cursor: pointer;
            display: block;
            height: 28px;
            user-select: none;
            padding: 25px !important;
            -webkit-user-select: none;
        }
    </style>
    <!-- 
        █▀▀▄ █░░█   █▀▀▄ █▀▀   █▀▀█ █▀▀█ █░█ █▀▀█ █▀▀▄ █▀▀█ █▀▀
        █▀▀▄ █░░█   █░░█ █▀▀   █▄▄█ █▄▄▀ █▀▄ █▄▄█ █░░█ █▄▄█ ▀▀█
        ▀▀▀░ ░▀▀▀   ▀░░▀ ▀▀▀   ▀░░▀ ▀░▀▀ ▀░▀ ▀░░▀ ▀▀▀░ ▀░░▀ ▀▀▀
    -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
    <form action="{% if Ostim is defined %}?Ostim=1{% endif %}" method="post" id="registerForm">
        <div class="container">
            <div class="row mbBot">

                {% if Ostim is not defined %}
                <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600,700,900&subset=latin-ext"
                    rel="stylesheet">

                <style>
                    .tit {
                        font-family: 'Titillium Web', sans-serif !important;
                        font-weight: 700;
                        font-size: 1.2rem;
                    }
                </style>

                {% endif %}

                {% if Error is defined %}
                <div class="col-12 mbBot">
                    <div class="ui negative icon  message">
                        <i class="warning sign icon"></i>
                        <div class="header">
                            {{Error}}
                        </div>
                    </div>
                </div>
                {% endif %}

                {% if Ostim is defined %}

                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Adınız</label>
                        <input type="text" name="name" class="form-control form-control-lg name" placeholder="Adınız"
                            {% if Name is defined %} value="{{Name}}" {% endif %}>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Soyadınız</label>
                        <input type="text" name="lastname" class="form-control form-control-lg lastname"
                            placeholder="Soyadınız" {% if Lastname is defined %} value="{{Lastname}}" {% endif %}>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Kullanıcı Adınız</label>
                        <input type="text" name="username" class="form-control form-control-lg username"
                            placeholder="Kullanıcı Adınız" {% if username is defined %} value="{{username}}"
                            {% endif %}>
                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="form-group">
                        <label>Cep Telefonu</label>
                        <input type="text" placeholder="Telefon Numaranız" id="phonnn" required name="phone"
                            value="<?php if($_POST && isset($_POST['phone'])) echo $_POST['phone']; ?>"
                            class="form-control form-control-lg phone">
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="form-group">
                        <label for=""> </label>
                        <button type="button" onclick="Code($('#phonnn').val());"
                            class="btn btn-lg btn-block btn-primary">Doğrulama Kodu Gönder</button>
                    </div>
                </div>

                <div class="col-12 smsGonderdik" style="display: none;">
                    <div class="form-group alert alert-info">
                        * Cep telefonu numaranıza bir doğrumala kodu gönderdik, birazdan senden bu onay kodunu girmeni
                        isteyeceğiz :)
                    </div>
                </div>


                <input type="hidden" id="kodGonder" value="0">


                {% else %}

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Adınız</label>
                        <input type="text" name="name" class="form-control form-control-lg name" placeholder="Adınız"
                            {% if Name is defined %} value="{{Name}}" {% endif %}>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Soyadınız</label>
                        <input type="text" name="lastname" class="form-control form-control-lg lastname"
                            placeholder="Soyadınız" {% if Lastname is defined %} value="{{Lastname}}" {% endif %}>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="form-group">
                        <label>Kullanıcı Adınız</label>
                        <input type="text" name="username" class="form-control form-control-lg username"
                            placeholder="Kullanıcı Adınız" {% if username is defined %} value="{{username}}"
                            {% endif %}>
                    </div>
                </div>

                {% endif %}

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>E-Posta Adresiniz</label>
                        <input type="email" name="email" class="form-control form-control-lg" id="email"
                            placeholder="E-Posta Adresiniz" {% if Email is defined %} value="{{Email}}" {% endif %}>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>E-Posta Adresinizi Doğrulayın</label>
                        <input type="email" name="email_eq" class="form-control form-control-lg" id="email_eq"
                            placeholder="E-Posta Adresinizi Doğrulayın" {% if Email_Eq is defined %}
                            value="{{Email_Eq}}" {% endif %}>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Parolanız</label>
                        <input type="password" name="pass" class="form-control form-control-lg" id="pass"
                            placeholder="Parolanız">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Parolanızı Doğrulayın</label>
                        <input type="password" name="pass_eq" class="form-control form-control-lg" id="pass_eq"
                            placeholder="Parolanızı Doğrulayın">
                    </div>
                </div>

                {% if Ostim is defined %}
                <div class="col-sm-12" id="Code" style="display: none;">
                    <div class="form-group">
                        <label>SMS Doğrulama Kodu</label>
                        <input type="text" name="code" id="codem"
                            placeholder="Cep telefonunuza gönderilen onay kodunu giriniz."
                            value="<?php if($_POST && isset($_POST['code'])) echo $_POST['code']; ?>"
                            class="form-control form-control-lg blue">
                        <small class="form-text text-muted" style="display: block;">Cep telefonunuza gönderilen onay
                            kodunu
                            giriniz.</small>
                    </div>
                </div>


                <div class="col-12">
                    <br>
                    <h4>Üniversite Hedefleriniz</h4>
                    <br>
                </div>
                <?php
                for($a = 1; $a <= 3; $a++){
                ?>
                <div class="col-sm-12 col-md-4">
                    <div class="form-group">
                        <label><?php echo $a ?>. Üniversite</label>
                        <select name="universite[universite][]"
                            class="universite universite_<?php echo $a ?> custom-select form-control-lg select2"
                            data-id="<?php echo $a ?>">
                            <option value=""> - Üniversite Seçiniz - </option>
                            <?php
                                foreach($Universiteler as $Universite){
                                    echo '<option value="'. $Universite['universite_id'] .'">'. $Universite['name'] .'</option>';
                                }
                            ?>
                        </select>
                    </div>
                </div>

                <script>
                    $(".universite_<?php echo $a ?>").change(function () {

                        var id = $(this).val();
                        var dataString = id;

                        $('.fakulte_<?php echo $a ?>').select2({

                            placeholder: ' - Fakülte Seçiniz - ',
                            ajax: {
                                url: '/uye-ol?universite_id=' + dataString,
                                dataType: 'json',
                                delay: 250,
                                processResults: function (data) {
                                    return {
                                        results: data
                                    };
                                },
                                cache: false
                            }
                        }).val(null).trigger('change');
                    });
                </script>

                <div class="col-sm-12 col-md-4">
                    <div class="form-group">
                        <label>Fakülte</label>
                        <select name="universite[fakulte][]"
                            class="fakulte fakulte_<?php echo $a ?> custom-select form-control-lg select2"
                            data-id="<?php echo $a ?>">
                            <option value=""> - Fakülte Seçiniz - </option>

                        </select>
                    </div>
                </div>

                <script>
                    $(".fakulte_<?php echo $a ?>").change(function () {
                        var id = $(this).val();
                        var dataString = id;
                        $('.bolum_<?php echo $a ?>').select2({

                            placeholder: ' - Bölüm Seçiniz - ',
                            ajax: {
                                url: '/uye-ol?fakulte_id=' + dataString,
                                dataType: 'json',
                                delay: 250,
                                processResults: function (data) {
                                    return {
                                        results: data
                                    };
                                },
                                cache: false
                            }
                        }).val(null).trigger('change');
                    });
                </script>

                <div class="col-sm-12 col-md-4">
                    <div class="form-group">
                        <label>Bölüm</label>
                        <select name="universite[bolum][]"
                            class="bolum bolum_<?php echo $a ?> custom-select form-control-lg select2"
                            data-id="<?php echo $a ?>">
                            <option value=""> - Bölüm Seçiniz - </option>
                        </select>
                    </div>
                </div>

                <div class="col-12">

                    <hr>

                </div>
                <?php
                }
            ?>
                {% endif %}

                <div class="col-12">
                    <label class="custom-control custom-checkbox">
                        <input type="checkbox" name="sozlesme" checked class="custom-control-input">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description"> <a href="#" data-toggle="modal"
                                data-target=".sozlesmeModal">Üyelik sözleşmesini</a> okudum, onaylıyorum.</span>
                    </label>
                </div>

                <div class="col-12 text-right">
                    <button type="submit" class="btn btn-success btn-lg"><i class="fa fa-send"></i> Üye Ol</button>
                </div>

            </div>
        </div>
    </form>


    <div class="modal fade sozlesmeModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{Sayfa['title']}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-justify" style="max-height:450px; overflow-y:scroll;">
                    {{Sayfa['content']}}
                </div>
            </div>
        </div>
    </div>
</section>

<script>

    // In your Javascript (external .js resource or <script> tag)
    $(document).ready(function () {
        $('.select2').select2({
            theme: "bootstrap"
        });
    });


    function Code(num) {

        var kodGonder = parseInt($('#kodGonder').val());
        if (kodGonder == 0) {
            var gsm = num;
            var randCode = Math.floor(Math.random() * 999999) + 100000;
            gsm = gsm.replace('(', '');
            gsm = gsm.replace(')', '');
            for (var a = 0; a < 5; a++) {
                gsm = gsm.replace(' ', '');
            }
            gsm = gsm.trim();

            $.get("/cekilis-formu?phone=" + gsm + "&code=" + randCode, function (data) {
                if (data != "00") {
                    $('.phone').html('');
                    alert("Lütfen geçerli bir telefon numarası giriniz!");
                } else {
                    $('#kodGonder').val(1);
                    $('#codem').val('');
                    $('#Code').show();
                    $('.smsGonderdik').show();
                    Calistir();
                }
            });
        }

    }

    function Calistir() {
        setTimeout(function () {
            $('#kodGonder').val(0);
        }, 60000);
    }

    function epostaCheck(mail) {
        $.get("/cekilis-formu?email=" + mail, function (data) {
            if (data == "1") {
                $('input').removeAttr('disabled');
                $('button').removeAttr('disabled');
                $('textarea').removeAttr('disabled');
            } else {
                alert("Üzgünüm, çekilişi kazananlar listesinde e-posta adresiniz bulunmuyor.");
            }
        });
    }

    function epostaChecks(mail) {
        $.get("/cekilis-formu?email=" + mail, function (data) {
            if (data == "1") {
                $('input').removeAttr('disabled');
                $('button').removeAttr('disabled');
                $('textarea').removeAttr('disabled');
            }
        });
    }
</script>