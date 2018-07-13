<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/bilgilerim"> Bilgilerim</a></li>
            </ol>
        </div>
    </div>
</div>

<section class="register profile">
    <div class="container">
        <div class="row mbBot">

            <?php $this->partial("layouts/RightMenu"); ?>

            <div class="col-12 col-sm-12 col-md-8">


                <div class="ui form">
                    <div class="grouped fields">
                        <h5 class="main-title">
                            <i class="edit outline icon"></i> Bilgilerim
                        </h5>
                        <hr>
                    </div>
                </div>

                <form action="/bilgilerim" method="post" id="BilgilerimForm">
                    <div class="row">

                        {% if Message is defined %}
                        {% if Message == 1 %}
                        <div class="ui positive icon  message mbBot">
                            <i class="checkmark icon"></i>
                            <div class="header">
                                Tebrikler! Bilgileriniz başarıyla güncellendi.
                            </div>
                        </div>

                        {% if TeyitEdildi is defined %}
                        <div class="ui positive icon  message mbBot">
                            <i class="checkmark icon"></i>
                            <div class="header">
                                Bilgilerinizi teyit ettiğiniz için teşekkür ederiz, çalışma kılavuzunuz belirttiğiniz
                                adrese gönderilecektir.
                            </div>
                        </div>
                        {% endif %}

                        {% else %}
                        <div class="ui negative icon  message mbBot">
                            <i class="warning sign icon"></i>
                            <div class="header">
                                Oops! Üzügünüm, birşeyler ters gitti.
                            </div>
                        </div>
                        {% endif %}
                        {% endif %}



                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">Adınız</label>
                                <input type="text" class="form-control form-control-lg name" value="{{User['name']}}"
                                    name="name">
                            </div>
                        </div>

                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">Soyadınız</label>
                                <input type="text" class="form-control form-control-lg lastname"
                                    value="{{User['lastname']}}" name="lastname">
                            </div>
                        </div>


                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">Telefon</label>
                                <input type="tel" class="form-control form-control-lg phone"
                                    value="{% if Teyit == 1 %}{{Phone}}{% endif %}" name="phone">
                            </div>
                        </div>

                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">Cinsiyet</label>
                                <select class="custom-select form-control-lg" name="gender">
                                    <option value="">Cinsiyet</option>
                                    <option {% if User['gender'] == 'Bay' %} selected {% endif %} value="Bay">Bay
                                    </option>
                                    <option {% if User['gender'] == 'Bayan' %} selected {% endif %} value="Bayan">Bayan
                                    </option>
                                    <option {% if User['gender'] == 'Diğer' %} selected {% endif %} value="Diğer">Diğer
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label class="text-bld block">İl</label>
                                <select class="custom-select form-control-lg ilss" name="city">
                                    <option value="">İl</option>
                                    {% for City in Cities %}
                                    <option value="{{City['plaka']}}" data-id="{{City['plaka']}}"
                                        {% if Teyit == 1 %}{% if User['city'] == City['plaka'] %}
                                        selected{% endif %}{% endif %}>{{City['il']}}</option>
                                    {% endfor %}
                                </select>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>İlçe</label>
                                <select class="custom-select form-control-lg ilcess" name="state">
                                    <option value="">İlçe</option>
                                    {% if Teyit == 1 %}
                                    {% if User['state'] is defined and User['state'] != '' %}
                                    <option selected value="{{User['state']}}">{{User['state']}}</option>
                                    {% endif %}
                                    {% endif %}
                                    {% for State in states %}
                                    <option value="{{State['ilce']}}">{{State['ilce']}}</option>
                                    {% endfor %}
                                </select>
                            </div>
                        </div>

                        <div class="col-12 col-sm-12">
                            <div class="form-group">
                                <label class="text-bld block">Adresiniz</label>
                                <textarea class="form-control form-control-lg " name="address" cols="30"
                                    rows="5">{% if Teyit == 1 %}{{User['address']}}{% endif %}</textarea>
                            </div>
                        </div>

                        <!--div class="col-12">
                        <label class="custom-control custom-checkbox">
                          <input type="checkbox" name="sozlesme" checked class="custom-control-input">
                          <span class="custom-control-indicator"></span>
                          <span class="custom-control-description"> Bilgilerimi teyit ediyor, onaylıyorum ve çalışma kılavuzunun bu adrese gönderilmesini talep ediyorum.</span>
                        </label>
                    </div-->

                        <div class="col-12 text-xl-right text-center mb-center">
                            <button class="btn btn-xs btn-sm btn-lg btn-success"><i class="fa fa-send"></i> Bilgilerimi
                                Güncelle</button>
                        </div>

                    </div>
                </form>


            </div>

        </div>
    </div>

</section>