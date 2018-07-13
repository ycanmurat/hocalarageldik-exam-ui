<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <ol class="breadcrumb no-border">
                    <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/siparis-gecmisim"> Sipariş Geçmişim</a></li>
                    <li class="breadcrumb-item"><a href="#">{{ IDID }}. Sipariş</a></li>
                </ol>
            </div>
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
                            <i class="shopping bag outline icon"></i>{{ IDID }} Numaralı Sipariş Detayları
                        </h5>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    {% for Siparis in Gecmis %}
                    <pre>
                   <?php //print_r($Siparis); ?>
               </pre>

                    <div class="container">
                        <div class="card">
                            <div class="card-header">
                                Sipariş Tarihi
                                <strong><?php echo date("d.m.Y H:i", strtotime($Siparis['date'])); ?></strong>
                                <span class="float-right"> <strong>Ödeme Durumu:</strong>
                                    {% if Siparis['Odeme']['ID'] == 1 %}
                                    {% if Siparis['iyzico_return'] is empty %}
                                    Ödeme gerçekleştirilemedi.
                                    {% else %}
                                    {{ Siparis['iyzico_return'] }}
                                    {% endif %}
                                    {% elseif Siparis['Odeme']['ID'] == 3 or Siparis['Odeme']['ID'] == 5 %}
                                    {% if Siparis['kargo_nerde'] is empty %}
                                    Kargo Bekleniyor.
                                    {% else %}
                                    {{ Siparis['kargo_nerde'] }}
                                    {% endif %}
                                    {% else %}
                                    {% if Siparis['return'] is empty or Siparis['return'] == 'Beklemede' %}
                                    {{ Siparis['Mes'] }}
                                    {% else %}
                                    {{ Siparis['return'] }}
                                    {% endif %}
                                    {% endif %}</span>

                            </div>
                            <div class="card-body">
                                <div class="row mb-4">

                                    <div class="col-sm-6">
                                        <h6 class="mb-3">Kargo Bilgileri:</h6>
                                        <div>
                                            <strong> {{ Siparis['invoice_name'] }}</strong>
                                        </div>
                                        <div>{{ Siparis['order_address'] }}</div>

                                        <div>Telefon: {{ Siparis['phone'] }}</div>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="mb-3"></h6>
                                        <div>
                                            <strong> Kargo Takip Numarası: </strong>
                                            {% if Siparis['kargo_takip_no'] != '' %}
                                            {{ Siparis['kargo_takip_no'] }}
                                            {% else %}
                                            Henüz kargo bilgisi girilmemiştir.
                                            {% endif %}

                                        </div>
                                        {% if Siparis['kargo_takip_no'] != '' %}
                                        <div> <a href="https://www.yurticikargo.com/tr/online-servisler/gonderi-sorgula?code={{ Siparis['kargo_takip_no'] }}"
                                                target="_blank"><strong>Takip Et</strong></a></div>
                                        {% endif %}

                                    </div>


                                </div>

                                <div class="table-responsive-sm">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th class="center">#</th>
                                                <th>Ürün</th>

                                                <th class="right">Birim Fiyatı</th>
                                                <th class="center">Adet</th>
                                                <th class="right">Toplam</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="center">1</td>
                                                <td class="left strong">{{ Siparis['title'] }}</td>

                                                <td class="right">{{ Siparis['price'] }} ₺</td>
                                                <td class="center">1</td>
                                                <td class="right">{{ Siparis['price'] }} ₺</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-sm-5">

                                    </div>

                                    <div class="col-lg-4 col-sm-5 ml-auto">
                                        <table class="table table-clear">
                                            <tbody>

                                                <tr>
                                                    <td class="left">
                                                        <strong>Toplam</strong>
                                                    </td>
                                                    <td class="right">
                                                        <strong>{{ Siparis['price'] }} ₺</strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>

                                </div>

                            </div>
                            {% endfor %}
                        </div>
                    </div>


                </div>


            </div>


        </div>
    </div>

</section>