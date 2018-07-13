<section class="payment-area">
    {% if AktifEt == 0 and token is not defined %}

    <div class="container">

        <div class="row ">

            <div class="col-12">
                <div class="alert alert-dark">
                    <b>Kargo bilgisi istenen siparişler için lütfen bu maddelere dikkat ediniz.</b>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="alert alert-info text-center">
                    <b>Adres ve telefon bilgilerinizi doğru yazmaya dikkat ediniz.</b>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="alert alert-warning text-center">
                    <b>Adresinizde olmayabileceğiniz durumlar için adreste bulunan bir yakınınızı bilgilendiriniz.</b>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="alert alert-danger text-center">
                    <b>Kargonuz OPTIMUS DANIŞMANLIK - Hocalara Geldik tarafından gönderilecektir.</b>
                </div>
            </div>

        </div>

    </div>
    {% endif %}

    <div class="container">
        <div class="row mbBot">
            <div class="col-12 ">

                {% if token is not defined %}
                <div class="ui three attached steps">
                    <div class="step">
                        <i class="block layout icon"></i>
                        <div class="content">
                            <div class="title">Üyelik Paketleri</div>
                            <div class="description">Üyelik Paketi Seçiniz</div>
                        </div>
                    </div>
                    <div class="active step">
                        <i class="payment icon"></i>
                        <div class="content">
                            <div class="title">Ödeme</div>
                            <div class="description">Ödeme Bilgilerinizi Giriniz</div>
                        </div>
                    </div>
                    <div class="disabled step">
                        <i class="info icon"></i>
                        <div class="content">
                            <div class="title">Sipariş Durumu</div>
                            <div class="description">Sipariş Durumu Hakkında Bilgi</div>
                        </div>
                    </div>
                </div>
                {% endif %}
                <div class="ui attached segment">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-4 odeme_selector"
                            {% if okey is defined or noBuy is defined %} style="display: none !important" {% endif %}>
                            <div class="ui form">
                                <div class="grouped fields">
                                    <h5 style="margin-bottom:20px;">Ödeme Yöntemi</h5>
                                    <hr>

                                    {% if AktifEt == 0 %}
                                    <div class="field">
                                        <div class="ui slider checkbox">
                                            <input type="radio" name="odeme_sec" value="odeme_kart" checked="checked">
                                            <label style="color:#1a1a1a;">Kredi Kartı ile Ödeme</label>
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui slider checkbox">
                                            <input type="radio" name="odeme_sec" value="odeme_havale">
                                            <label style="color:#1a1a1a;">Havale / EFT ile Ödeme</label>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="ui slider checkbox">
                                            <input type="radio" name="odeme_sec" value="odeme_kapida">
                                            <label style="color:#1a1a1a;">Kapıda Ödeme</label>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="ui slider checkbox checked">
                                            <input type="radio" name="odeme_sec" value="odeme_uyelik">
                                            <label style="color:#1a1a1a;">Üyelik Kartı ile Ödeme </label>
                                        </div>
                                    </div>
                                    {% else %}
                                    <div class="field">
                                        <div class="ui slider checkbox checked">
                                            <input type="radio" name="odeme_sec" value="odeme_uyelik" checked="">
                                            <label style="color:#1a1a1a;">Üyelik Kartı ile Ödeme </label>
                                        </div>
                                    </div>
                                    {% endif %}


                                </div>
                            </div>

                            {% if Paketcik['indirim_kodu'] == 1 and AktifEt == 0 and token is not defined %}
                            <form class="ui form" method="get" id="discount">
                                <div class="grouped fields">
                                    <h5 style="margin-bottom:20px; margin-top:20px;">İndirim Kodu</h5>
                                    <hr>
                                    {% if bilgi is defined %}
                                    <div class="alert alert-{{ bilgi['cls'] }}">{{ bilgi['message'] }}</div>
                                    {% endif %}

                                    <div class="form-group">
                                        {% if bilgi is defined %}
                                        <input type="text" name="code" disabled class="form-control form-control-lg"
                                            placeholder="İndirim Kodu" value="BIREYSEL">
                                        {% else %}
                                        <input type="text" name="code" class="form-control form-control-lg"
                                            placeholder="İndirim Kodu"
                                            value="{% if code is defined %}{{ code }}{% endif %}">

                                        {% endif %}
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn btn-block btn-lg btn-primary">İndirimi Uygula</button>
                                    </div>
                                </div>
                            </form>

                            {% endif %}


                        </div>
                        <div
                            class="col-12 col-sm-12 {% if okey is defined or noBuy is defined %} col-md-12 {% else %} col-md-8 {% endif %} left-b">
                            {% if okey is not defined %}
                            {% if noBuy is not defined %}
                            <form action="" method="post" id="ccForm_1">
                                <div class="row odeme" id="odeme_kart" {% if AktifEt == 1 %} style="display: none"
                                    {% endif %}>

                                    <input type="hidden" name="odeme" value="1">

                                    <div class="col-sm-12">
                                        <h5 style="margin-bottom:20px;">Kredi Kartı ile Ödeme</h5>
                                        <hr>
                                    </div>


                                    <div class="col-sm-12" {% if Paketcik['taksit'] <= 1 %} style="display: none;"
                                        {% endif %}>
                                        <div class="form-group">
                                            <label>Taksit Seçenekleri</label>
                                            <select class="custom-select form-control-lg" name="Taksit">
                                                <option selected value="1">Tek Çekim ({{ Price }} TL)</option>
                                                {% if Paketcik['taksit'] == 2 or Paketcik['taksit'] == 3 or Paketcik['taksit'] == 6 or Paketcik['taksit'] == 9 or Paketcik['taksit'] == 12 %}
                                                <option value="2">2 Taksit ({{ Price }} TL)</option>
                                                {% endif %}

                                                {% if Paketcik['taksit'] == 3 or Paketcik['taksit'] == 6 or Paketcik['taksit'] == 9 or Paketcik['taksit'] == 12 %}
                                                <option value="3">3 Taksit ({{ Price }} TL)</option>
                                                {% endif %}

                                                {% if Paketcik['taksit'] == 6 or Paketcik['taksit'] == 9 or Paketcik['taksit'] == 12 %}
                                                <option value="6">6 Taksit ({{ Price }} TL)</option>
                                                {% endif %}

                                                {% if Paketcik['taksit'] == 9 or Paketcik['taksit'] == 12 %}
                                                <option value="9">9 Taksit ({{ Price }} TL)</option>
                                                {% endif %}

                                                {% if Paketcik['taksit'] == 12 %}
                                                <option value="12">12 Taksit ({{ Price }} TL)</option>
                                                {% endif %}

                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Türkiye Cumhuriyeti Kimlik Numarası</label>
                                            <input type="text" name="TCNo" maxlength="11"
                                                class="tcno form-control form-control-lg onlyNumber"
                                                placeholder="Türkiye Cumhuriyeti Kimlik Numarası">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Telefon Numarası</label>
                                            <input type="text" name="Telefon" class="form-control form-control-lg phone"
                                                placeholder="Telefon Numarası">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Kart Sahibinin Adı
                                            </label>
                                            <input type="text" name="Ad" class="form-control form-control-lg name"
                                                placeholder="Adınız">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Kart Sahibinin SoyAdı</label>
                                            <input type="text" name="Soyad"
                                                class="form-control form-control-lg lastname" placeholder="Soyadınız">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Kredi Kartı Numarası</label>
                                            <input type="text" name="CCNo" maxlength="19"
                                                class="form-control form-control-lg ccno"
                                                placeholder="Kredi Kartı Numarası">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Güvenlik Kodu CVV2</label>
                                            <input type="text" name="CVV" maxlength="3"
                                                class="form-control form-control-lg onlyNumber"
                                                placeholder="Güvenlik Kodu CVV2">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Son Kullanma Tarihi / Ay</label>
                                            <select class="custom-select form-control-lg" name="CCM">
                                                <option selected value="">Son Kullanma Tarihi / Ay</option>
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Son Kullanma Tarihi / Yıl</label>
                                            <select class="custom-select form-control-lg" name="CCY">
                                                <option selected value="">Son Kullanma Tarihi / Yıl</option>
                                                <?php
                                                        for($a = date("y"); $a <= intval(date("y")+10); $a++){
                                                            echo '<option value="'.$a.'">20'.$a.'</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>

                                    {% if Paketcik['herturlu_kargo'] == 1 %}
                                    <div class="col-sm-12">
                                        <h5 style="margin:20px 0;">Kargo Bilgileriniz</h5>
                                        <hr>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İl</label>
                                            <select class="custom-select form-control-lg ils" name="order_city">
                                                <option value="" data-id="">İl</option>
                                                {% for City in Cities %}
                                                <option value="{{ City['il'] }}"
                                                    {% if City['plaka'] == User['city'] %}selected="" {% endif %}
                                                    data-id="{{ City['plaka'] }}">{{ City['il'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İlçe</label>
                                            <select class="custom-select form-control-lg ilces" name="order_state">
                                                <option value="">İlçe</option>
                                                {% if User['state'] is defined %}
                                                <option selected>{{ User['state'] }}</option>
                                                {% endif %}
                                                {% for State in states %}
                                                <option value="{{ State['ilce'] }}">{{ State['ilce'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Adres</label>
                                            <textarea name="order_address" onkeyup="$('#Fatura').val($(this).val());"
                                                class="form-control form-control-lg " cols="30"
                                                rows="5">{{ User['address'] }}</textarea>
                                        </div>
                                    </div>
                                    {% endif %}

                                    <div class="col-sm-12">
                                        <h5 style="margin:20px 0;">Fatura Bilgileriniz</h5>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="customRadio1" onclick="kurumsal();"
                                                name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio1">Kurumsal
                                                Müşteri</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="customRadio2" onclick="bireysel();"
                                                name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio2">Bireysel
                                                Müşteri</label>
                                        </div>
                                        <hr>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="unvan_ad">Ad Soyad veya Firma Ünvanı</label>
                                            <input type="text" name="invoice_name"
                                                class="invoice_name form-control form-control-lg"
                                                value="{{ User['name'] }} {{ User['lastname'] }}"
                                                placeholder="Ad Soyad veya Firma Ünvanı">
                                        </div>
                                    </div>


                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="tc_vergi">T.C. Kimlik Nu. veya Vergi Nu.</label>
                                            <input type="text" name="tax_no_tc"
                                                class="tcnoCopy form-control form-control-lg"
                                                placeholder="T.C. Kimlik Nu. veya Vergi Nu.">
                                            <small class="form-text text-muted">Zorunlu Değildir.</small>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 vergi_dairesi">
                                        <div class="form-group">
                                            <label>Vergi Dairesi</label>
                                            <input type="text" name="tax_admin" class="form-control form-control-lg"
                                                placeholder="Vergi Dairesi">
                                            <small class="form-text text-muted">Vergi Numarası Girilmişse Zorunludur.
                                            </small>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İl</label>
                                            <select class="custom-select form-control-lg il" name="il">
                                                <option value="" data-id="">İl</option>
                                                {% for City in Cities %}
                                                <option value="{{ City['il'] }}"
                                                    {% if City['plaka'] == User['city'] %}selected="" {% endif %}
                                                    data-id="{{ City['plaka'] }}">{{ City['il'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İlçe</label>
                                            <select class="custom-select form-control-lg ilce" name="ilce">
                                                <option value="">İlçe</option>
                                                {% if User['state'] is defined %}
                                                <option selected>{{ User['state'] }}</option>
                                                {% endif %}
                                                {% for State in states %}
                                                <option value="{{ State['ilce'] }}">{{ State['ilce'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Adres</label>
                                            <textarea name="Fatura" class="form-control form-control-lg " cols="30"
                                                rows="5">{{ User['address'] }}</textarea>
                                        </div>
                                    </div>


                                    <div class="col-12">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" name="sozlesme" checked class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description"> <a href="#" data-toggle="modal"
                                                    data-target=".sozlesmeModal">Üyelik sözleşmesini</a>, <a href="#"
                                                    data-toggle="modal" data-target=".MesafeliModal">Mesafeli Satış
                                                    Sözleşmesini</a>, <a href="#" data-toggle="modal"
                                                    data-target=".GizlilikModal">Gizlilik ve Güvenlik Politikası</a>
                                                okudum, onaylıyorum.</span>
                                        </label>
                                    </div>

                                    <div class="col-12 total-count">
                                        <h4 class="ui header" style="font-size:16px !important;">Sipariş Tutarı : <b
                                                id="tutar" style="color:#c00000;">{{ TotalPrice }} ₺</b></h4><br />
                                    </div>

                                    <div class="col-12 pay-btn">
                                        <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Hemen
                                            Öde
                                        </button>
                                    </div>


                                </div>
                            </form>


                            <form action="" method="post" id="havaleForm">
                                <div class="row odeme" id="odeme_havale" style="display:none;">

                                    <div class="col-sm-12">
                                        <h5 style="margin-bottom:20px;">Havale / EFT ile Ödeme</h5>
                                        <hr>
                                    </div>

                                    <input type="hidden" name="odeme" value="2">


                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Adınız</label>
                                            <input type="text" disabled class="form-control form-control-lg name"
                                                placeholder="Adınız" value="{{ User['name'] }}">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Soyadınız</label>
                                            <input type="text" disabled class="form-control form-control-lg lastname"
                                                placeholder="Soyadınız" value="{{ User['lastname'] }}">
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Telefon Numarası</label>
                                            <input type="text" name="Telefon" class="form-control form-control-lg phone"
                                                placeholder="Telefon Numarası">
                                        </div>
                                    </div>

                                    {% if Paketcik['herturlu_kargo'] == 1 %}
                                    <div class="col-sm-12">
                                        <h5 style="margin:20px 0;">Kargo Bilgileriniz</h5>
                                        <hr>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İl</label>
                                            <select class="custom-select form-control-lg ils" name="order_city">
                                                <option value="" data-id="">İl</option>
                                                {% for City in Cities %}
                                                <option value="{{ City['il'] }}"
                                                    {% if City['plaka'] == User['city'] %}selected="" {% endif %}
                                                    data-id="{{ City['plaka'] }}">{{ City['il'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İlçe</label>
                                            <select class="custom-select form-control-lg ilces" name="order_state">
                                                <option value="">İlçe</option>
                                                {% if User['state'] is defined %}
                                                <option selected>{{ User['state'] }}</option>
                                                {% endif %}
                                                {% for State in states %}
                                                <option value="{{ State['ilce'] }}">{{ State['ilce'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Adres</label>
                                            <textarea name="order_address" onkeyup="$('#Fatura').val($(this).val());"
                                                class="form-control form-control-lg " cols="30"
                                                rows="5">{{ User['address'] }}</textarea>
                                        </div>
                                    </div>
                                    {% endif %}

                                    <div class="col-sm-12">
                                        <h5 style="margin:20px 0;">Fatura Bilgileriniz</h5>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="customRadio1" onclick="kurumsal();"
                                                name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio1">Kurumsal
                                                Müşteri</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="customRadio2" onclick="bireysel();"
                                                name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio2">Bireysel
                                                Müşteri</label>
                                        </div>
                                        <hr>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="unvan_ad">Ad Soyad veya Firma Ünvanı</label>
                                            <input type="text" name="invoice_name"
                                                class="invoice_name form-control form-control-lg"
                                                value="{{ User['name'] }} {{ User['lastname'] }}"
                                                placeholder="Ad Soyad veya Firma Ünvanı">
                                        </div>
                                    </div>


                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="tc_vergi">T.C. Kimlik Nu. veya Vergi Nu.</label>
                                            <input type="text" name="tax_no_tc"
                                                class="tcnoCopy form-control form-control-lg"
                                                placeholder="T.C. Kimlik Nu. veya Vergi Nu.">
                                            <small class="form-text text-muted">Zorunlu Değildir.</small>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 vergi_dairesi">
                                        <div class="form-group">
                                            <label>Vergi Dairesi</label>
                                            <input type="text" name="tax_admin" class="form-control form-control-lg"
                                                placeholder="Vergi Dairesi">
                                            <small class="form-text text-muted">Vergi Numarası Girilmişse Zorunludur.
                                            </small>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İl</label>
                                            <select class="custom-select form-control-lg il" name="il">
                                                <option value="" data-id="">İl</option>
                                                {% for City in Cities %}
                                                <option value="{{ City['il'] }}"
                                                    {% if City['plaka'] == User['city'] %}selected="" {% endif %}
                                                    data-id="{{ City['plaka'] }}">{{ City['il'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İlçe</label>
                                            <select class="custom-select form-control-lg ilce" name="ilce">
                                                <option value="">İlçe</option>
                                                {% if User['state'] is defined %}
                                                <option selected>{{ User['state'] }}</option>
                                                {% endif %}
                                                {% for State in states %}
                                                <option value="{{ State['ilce'] }}">{{ State['ilce'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Adres</label>
                                            <textarea name="Fatura" class="form-control form-control-lg " cols="30"
                                                rows="5">{{ User['address'] }}</textarea>
                                            <textarea name="Siparis" style="display: none;"
                                                class="form-control form-control-lg " cols="30"
                                                rows="5">{{ User['address'] }}</textarea>
                                        </div>
                                    </div>


                                    <div class="col-12">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" name="sozlesme" checked class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description"> <a href="#" data-toggle="modal"
                                                    data-target=".sozlesmeModal">Üyelik sözleşmesini</a>, <a href="#"
                                                    data-toggle="modal" data-target=".MesafeliModal">Mesafeli Satış
                                                    Sözleşmesini</a>, <a href="#" data-toggle="modal"
                                                    data-target=".GizlilikModal">Gizlilik ve Güvenlik Politikası</a>
                                                okudum, onaylıyorum.</span>
                                        </label>
                                    </div>

                                    <div class="col-12 text-right">
                                        <h4 class="ui header" style="font-size:16px !important;">Sipariş Tutarı : <b
                                                id="tutar" style="color:#c00000;">{{ TotalPrice }} ₺</b></h4><br />
                                    </div>

                                    <div class="col-12 text-right">
                                        <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Hemen
                                            Sipariş Ver
                                        </button>
                                    </div>


                                </div>
                            </form>


                            <form action="" method="post" id="odeme_kapida_form">
                                <div class="row odeme" id="odeme_kapida" style="display:none;">


                                    <div class="col-sm-12">
                                        <h5 style="margin-bottom:20px;">Kapıda Ödeme</h5>
                                        <hr>
                                    </div>


                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Adınız</label>
                                            <input type="text" name="name" disabled value="{{ User['name'] }}"
                                                class="form-control form-control-lg name" placeholder="Adınız">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Soyadınız</label>
                                            <input type="text" name="lastname" disabled value="{{ User['lastname'] }}"
                                                class="form-control form-control-lg lastname" placeholder="Soyadınız">
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Cep Telefonu Numaranız</label>
                                            <input type="text" name="phone" class="form-control form-control-lg phone"
                                                placeholder="Telefon Numaranız">
                                        </div>
                                    </div>

                                    <div class="col-sm-12" style="display: none;">
                                        <div class="form-group">
                                            <label>Ödeme Türü</label>
                                            <select class="custom-select form-control-lg " name="odeme">
                                                <option selected value="3">Kapıda Nakit Ödeme</option>
                                                <option value="5">Kapıda Kredi Kartı ile Ödeme</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <h5 style="margin:20px 0;">Kargo Bilgileriniz</h5>
                                        <hr>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İl</label>
                                            <select class="custom-select form-control-lg ils" name="order_city">
                                                <option value="" data-id="">İl</option>
                                                {% for City in Cities %}
                                                <option value="{{ City['il'] }}"
                                                    {% if City['plaka'] == User['city'] %}selected="" {% endif %}
                                                    data-id="{{ City['plaka'] }}">{{ City['il'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İlçe</label>
                                            <select class="custom-select form-control-lg ilces" name="order_state">
                                                <option value="">İlçe</option>
                                                {% if User['state'] is defined %}
                                                <option selected>{{ User['state'] }}</option>
                                                {% endif %}
                                                {% for State in states %}
                                                <option value="{{ State['ilce'] }}">{{ State['ilce'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Adres</label>
                                            <textarea name="order_address" onkeyup="$('#Fatura').val($(this).val());"
                                                class="form-control form-control-lg " cols="30"
                                                rows="5">{{ User['address'] }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <h5 style="margin:20px 0;">Fatura Bilgileriniz</h5>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="customRadio1" onclick="kurumsal();"
                                                name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio1">Kurumsal
                                                Müşteri</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="customRadio2" onclick="bireysel();"
                                                name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio2">Bireysel
                                                Müşteri</label>
                                        </div>
                                        <hr>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="unvan_ad">Ad Soyad veya Firma Ünvanı</label>
                                            <input type="text" name="invoice_name"
                                                class="invoice_name form-control form-control-lg"
                                                value="{{ User['name'] }} {{ User['lastname'] }}"
                                                placeholder="Ad Soyad veya Firma Ünvanı">
                                        </div>
                                    </div>


                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="tc_vergi">T.C. Kimlik Nu. veya Vergi Nu.</label>
                                            <input type="text" name="tax_no_tc"
                                                class="tcnoCopy form-control form-control-lg"
                                                placeholder="T.C. Kimlik Nu. veya Vergi Nu.">
                                            <small class="form-text text-muted">Zorunlu Değildir.</small>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 vergi_dairesi">
                                        <div class="form-group">
                                            <label>Vergi Dairesi</label>
                                            <input type="text" name="tax_admin" class="form-control form-control-lg"
                                                placeholder="Vergi Dairesi">
                                            <small class="form-text text-muted">Vergi Numarası Girilmişse Zorunludur.
                                            </small>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İl</label>
                                            <select class="custom-select form-control-lg il" name="il">
                                                <option value="" data-id="">İl</option>
                                                {% for City in Cities %}
                                                <option value="{{ City['il'] }}"
                                                    {% if City['plaka'] == User['city'] %}selected="" {% endif %}
                                                    data-id="{{ City['plaka'] }}">{{ City['il'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>İlçe</label>
                                            <select class="custom-select form-control-lg ilce" name="ilce">
                                                <option value="">İlçe</option>
                                                {% if User['state'] is defined %}
                                                <option selected>{{ User['state'] }}</option>
                                                {% endif %}
                                                {% for State in states %}
                                                <option value="{{ State['ilce'] }}">{{ State['ilce'] }}</option>
                                                {% endfor %}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Adres</label>
                                            <textarea name="Fatura" id="Fatura" class="form-control form-control-lg "
                                                cols="30" rows="5">{{ User['address'] }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" name="sozlesme" checked class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description"> <a href="#" data-toggle="modal"
                                                    data-target=".sozlesmeModal">Üyelik sözleşmesini</a>, <a href="#"
                                                    data-toggle="modal" data-target=".MesafeliModal">Mesafeli Satış
                                                    Sözleşmesini</a>, <a href="#" data-toggle="modal"
                                                    data-target=".GizlilikModal">Gizlilik ve Güvenlik Politikası</a>
                                                okudum, onaylıyorum.</span>
                                        </label>
                                    </div>

                                    <div class="col-12 text-right">

                                        {% if kapida_odeme_ucreti > 0 %}
                                        <h4 class="ui header" style="font-size:16px !important;">Kapıda Ödeme Ücreti
                                            : <b id="tutar" style="color:#c00000;">{{ kapida_odeme_ucreti }} ₺</b>
                                        </h4>
                                        {% endif %}
                                        <h4 class="ui header" style="font-size:16px !important;">Sipariş Tutarı : <b
                                                id="tutar" style="color:#c00000;">{{ TotalPrice }} ₺</b></h4>
                                        {% if kapida_odeme_ucreti < 1 %} <br /> {% endif %}
                                        {% if kapida_odeme_ucreti > 0 %}
                                        <h4 class="ui header" style="font-size:16px !important;">Toplam Tutar : <b
                                                id="tutar" style="color:#c00000;">{{ toplamUcret }} ₺</b></h4>
                                        <br />
                                        {% endif %}

                                    </div>

                                    <div class="col-12 text-right">
                                        <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Hemen
                                            Sipariş Ver
                                        </button>
                                    </div>


                                </div>
                            </form>


                            <form action="" method="post" id="odeme_uyelik_form">
                                <div class="row odeme" id="odeme_uyelik" {% if AktifEt == 0 %} style="display: none"
                                    {% endif %}>

                                    <input type="hidden" name="odeme" value="4">

                                    <div class="col-sm-12">
                                        <h5 style="margin-bottom:20px;">Üyelik Kartı ile Üyelik Aktifleştirme</h5>
                                        <hr>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="alert alert-info">Satın almış olduğunuz <b>Hocalara Geldik Üyelik
                                                Kartı</b> üzerindeki üyelik kodunu giriniz.
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="alert alert-warning">Eğer <b>Hocalara Geldik Üyelik Kartınız</b>
                                            yoksa <b>Kapıda Ödeme</b> seçeneği ile sipariş verebilirsiniz.
                                        </div>
                                    </div>


                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Üyelik Kodunuz
                                                <small class="form-text text-muted">Üyelik kodunuzdaki harfleri büyük
                                                    harf ile giriniz.
                                                </small>
                                            </label>
                                            <input type="text" name="uyelik_kodu"
                                                class="uyelik_kodu form-control form-control-lg "
                                                placeholder="Üyelik Kodunuz">

                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" name="sozlesme" checked class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description"> <a href="#" data-toggle="modal"
                                                    data-target=".sozlesmeModal">Üyelik sözleşmesini</a>, <a href="#"
                                                    data-toggle="modal" data-target=".MesafeliModal">Mesafeli Satış
                                                    Sözleşmesini</a>, <a href="#" data-toggle="modal"
                                                    data-target=".GizlilikModal">Gizlilik ve Güvenlik Politikası</a>
                                                okudum, onaylıyorum.</span>
                                        </label>
                                    </div>

                                    <div class="col-12 text-right">
                                        <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Hemen
                                            Üyeliğimi Aktif Et
                                        </button>
                                    </div>


                                </div>
                            </form>
                            <script>
                                fbq('track', 'AddToCart');
                            </script>
                            <script>
                                fbq('track', 'InitiateCheckout');
                            </script>

                            <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

                            <script type="text/javascript">

                                window.criteo_q = window.criteo_q || [];
                                var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
                                window.criteo_q.push(
                                    { event: "setAccount", account: 49986 },

                                    {% if User is defined %}
                                { event: "setEmail", email: "{{ User['email'] }}" },
                                {% endif %}

                                { event: "setSiteType", type: deviceType },

                                {
                                    event: "viewBasket", item: [

                                        { id: "HG{{ PID }}", price: {{ TotalPrice }}, quantity: 1}

                                        ]
                                    }
                                );

                            </script>

                            {% else %}

                            <div class="ui negative icon message mbBot">

                                <i class="warning icon"></i>

                                <div class="header">
                                    Üzgünüm, siz bu paketi satın alamazsınız. Bu paket sadece "{{ Parents }}" paketini
                                    satın alanlara ozeldir.
                                </div>
                            </div>
                            {% endif %}
                            {% else %}

                            <script>
                                fbq('track', 'Purchase', { value: '{{ TotalPrice }}', currency: 'TRY' });
                            </script>

                            <!-- Event snippet for Satın Alma Takibi conversion page
                            In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button. -->
                            <script>
                                function gtag_report_conversion(url) {
                                    var callback = function () {
                                        if (typeof (url) != 'undefined') {
                                            window.location = url;
                                        }
                                    };
                                    gtag('event', 'conversion', {
                                        'send_to': 'AW-864300826/MCYrCPC_5X4Qmt6QnAM',
                                        'value': {{ TotalPrice }},
                                'currency': 'TRY',
                                    'transaction_id': '{{ BillingID }}',
                                        'event_callback': callback
                                    });
                                return false;
                                }
                            </script>

                            <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

                            {% if BillingID is defined %}
                            <script type="text/javascript">

                                window.criteo_q = window.criteo_q || [];

                                var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
                                window.criteo_q.push(
                                    { event: "setAccount", account: 49986 },

                                    {% if User is defined %}
                                { event: "setEmail", email: "{{ User['email'] }}" },
                                {% endif %}

                                { event: "setSiteType", type: deviceType },

                                {
                                    event: "trackTransaction", id: "{{ BillingID }}", item: [
                                        { id: "HG{{ PID }}", price: {{ TotalPrice }}, quantity: 1}
                                        ]
                                    }
                                );

                            </script>
                            {% endif %}
                            <div class="ui {{ sipMessage['class'] }} icon message mbBot">

                                <i class="{{ sipMessage['icon'] }} icon"></i>

                                <div class="header">
                                    {{ sipMessage['message'] }}
                                    {% if Nokey is defined %}
                                    <pre>
                                       <?php //print_r($Gonderilenler); ?>
                                            <?php //print_r($resultJson); ?>
                                   </pre>
                                    {% endif %}
                                </div>
                            </div>

                            {% if Kapida is defined %}
                            <div class="row">
                                <div class="col-6 mb-center text-left">
                                    <h4 class="ui header">Sipariş Numarası : <b id="tutaras"
                                            style="color:#c00000;">{{ sipNu }}</b>
                                    </h4><br />
                                </div>

                                <div class="col-6 mb-center text-right">
                                    {% if kapida_odeme_ucreti > 0 %}
                                    <h4 class="ui header" style="font-size:16px !important;">Kapıda Ödeme Ücreti :
                                        <b id="tutar" style="color:#c00000;">{{ kapida_odeme_ucreti }} ₺</b></h4>
                                    {% endif %}
                                    <h4 class="ui header" style="font-size:16px !important;">Sipariş Tutarı : <b
                                            id="tutar" style="color:#c00000;">{{ TotalPrice }} ₺</b></h4>
                                    {% if kapida_odeme_ucreti < 1 %} <br /> {% endif %}
                                    {% if kapida_odeme_ucreti > 0 %}
                                    <h4 class="ui header" style="font-size:16px !important;">Toplam Tutar : <b
                                            id="tutar" style="color:#c00000;">{{ toplamUcret }} ₺</b></h4><br />
                                    {% endif %}
                                </div>
                            </div>
                            {% endif %}


                            {% if Havale is defined %}
                            <div class="col-sm-12">
                                <h5 style="margin-bottom:20px;">Banka Havale/EFT ile Ödeme</h5>
                                <hr>
                            </div>


                            <div class="col-sm-12">
                                <table class="ui celled table">
                                    <tr>
                                        <th colspan="3" class="text-center">
                                            <center><img src="/assets/img/yapi.png" alt="" class="img-fluid"></center>
                                            <br />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>Hesap İsmi</th>
                                        <td>OPTİMUS DANIŞMANLIK EĞİTİM VE TEKNOLOJİ HİZ. LTD. ŞTİ</td>
                                    </tr>
                                    <tr>
                                        <th>Şube</th>
                                        <td>İstanbul, Bağcılar</td>
                                    </tr>
                                    <tr>
                                        <th>Şube Kodu</th>
                                        <td>860</td>
                                    </tr>
                                    <tr>
                                        <th>Hesap Numarası</th>
                                        <td>45577922</td>
                                    </tr>
                                    <tr>
                                        <th>IBAN</th>
                                        <td>TR19 0006 7010 0000 0045 5779 22</td>
                                    </tr>
                                </table>

                                <div class="row">
                                    <div class="col-6 mb-center text-left">
                                        <h4 class="ui header">Sipariş Numarası : <b id="tutaras"
                                                style="color:#c00000;">{{ sipNu }}</b>
                                        </h4><br />
                                    </div>

                                    <div class="col-6 mb-center text-right">
                                        {% if discount >0 %}
                                        <h4 class="ui header">Paket Tutarı : <b id="tutar"
                                                style="color:#c00000;">{{ PaketTutari }}
                                                ₺</b></h4><br />
                                        <h4 class="ui header">İndirim Tutarı : <b id="tutar"
                                                style="color:#c00000;">{{ discount }}
                                                ₺</b></h4><br />
                                        {% endif %}
                                        <h4 class="ui header">Sipariş Tutarı : <b id="tutar"
                                                style="color:#c00000;">{{ TotalPrice }}
                                                ₺</b></h4><br />
                                    </div>
                                </div>

                                <br />
                                <p>Bu bilgilerle bankadan, ATM den veya online bankacılık -internet bankacılığı-
                                    kullanarak hesabımıza para yatırabilirsiniz.</p>

                                <ul>
                                    <li>Aynı bankanın şubeleri arasında yapılan işlemlere Havale,</li>
                                    <li>Farklı 2 bankanın şubeleri arasında yapılan para transferlerine Eft işlemi
                                        denir.
                                    </li>
                                </ul>

                                <p>EFT/Havale yaparken açıklama kısmına size gelen epostadaki sipariş numarasını
                                    yazmalısınız.</p>

                                <p>Dekontun fotoğrafını <a href="mailto:bilgi@hocalarageldik.com"></a> e-posta
                                    adresimize veya <a href="/mesajlarim/yeni?odeme=true">ödeme bildirimi</a>
                                    sayfamızdan gönderebilirsiniz.</p><br /><br /><br />
                            </div>

                            {% endif %}
                            {% endif %}


                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="modal fade sozlesmeModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Üyelik Sözleşmesi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="max-height:450px; overflow-y:scroll;">
                    {{ Sayfa1['content'] }}
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade MesafeliModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Mesafeli Satış Sözleşmesi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="max-height:450px; overflow-y:scroll;">
                    {{ Sayfa2['content'] }}
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade GizlilikModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Gizlilik ve Güvenlik Politikası</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="max-height:450px; overflow-y:scroll;">
                    {{ Sayfa3['content'] }}
                </div>
            </div>
        </div>
    </div>

</section>