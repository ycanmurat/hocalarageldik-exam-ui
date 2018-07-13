<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/sifre-degistir"> Parola Değiştir</a></li>
            </ol>
        </div>
    </div>
</div>
<section class="register profile">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="ui header">
                        <i class="user outline icon"></i>
                        <div class="content">
                            Parola Değiştir
                        </div>
                    </h2>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="row mbBot">
            <?php $this->partial("layouts/RightMenu"); ?>
            <div class="col-12 col-sm-12 col-md-8">
                <div class="ui form">
                    <div class="grouped fields">
                        <h5 class="main-title">
                            <i class="edit outline icon"></i> Parola Değiştir
                        </h5>
                        <hr>
                    </div>
                </div>

                <form action="/sifre-degistir" method="post" id="sifredegistir">
                    <div class="row">

                        {% if Message is defined %} {% if Message > 0 %}
                        <div class="ui positive icon  message mbBot">
                            <i class="checkmark icon"></i>
                            <div class="header">
                                {{Messages}}
                            </div>
                        </div>
                        {% else %}
                        <div class="ui negative icon  message mbBot">
                            <i class="warning sign icon"></i>
                            <div class="header">
                                {{Messages}}
                            </div>
                        </div>
                        {% endif %} {% endif %}

                        <div class="col-12 col-sm-12" style="display: none;">
                            <div class="form-group">
                                <label class="text-bld block">Mevcut Parolanız</label>
                                <input type="password" class="form-control form-control-lg name" value="112233" placeholder="Mevcut Parolanız" name="pass_ex" id="pass_ex">
                            </div>
                        </div>

                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">Parolanız</label>
                                <input type="password" class="form-control form-control-lg" placeholder="Parolanız" name="pass" id="pass">
                            </div>
                        </div>

                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">Parolanızı Doğrulayın</label>
                                <input type="password" class="form-control form-control-lg" placeholder="Parolanızı Doğrulayın" name="pass_eq" id="pass_eq">
                            </div>
                        </div>

                        <div class="col-12">
                            <button class="send-button"><i class="fa fa-send"></i> Parolamı Güncelle</button>
                        </div>


                    </div>
                </form>


            </div>

        </div>
    </div>
</section>