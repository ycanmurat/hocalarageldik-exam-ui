<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/siparis-gecmisim"> Sipariş Geçmişim</a></li>
            </ol>
        </div>
    </div>
</div>

<section class="profile register">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="ui header">
                        <i class="user outline icon"></i>
                        <div class="content">
                            Sipariş Geçmişim
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
                            <i class="shopping bag outline icon"></i> Sipariş Geçmişim
                        </h5>
                        <hr>
                    </div>
                </div>

                <div class="row">


                    <div class="col-12 col-sm-12">
                        <table class="ui celled table profile-table">
                            <thead class="hidden-mb2">
                                <tr>
                                    <th class="text-center">Sipariş Tarihi</th>
                                    <th class="text-center">Sipariş No</th>
                                    <th class="text-center">Ödeme Türü</th>
                                    <th class="text-center">Paket</th>
                                </tr>
                            </thead>
                            <tbody>

                                {% if Gecmis|length == 0 %}
                                <tr>
                                    <td colspan="4" class="text-center">
                                        -- hiç siparişiniz yok --<br /><br />
                                        <a href="/uyelik-paketleri"
                                            class="btn btn-round btn-lg btn-outline-primary">Üyelik
                                            Paketlerimizi İnceleyin</a>
                                    </td>
                                </tr>
                                {% else %} {% for Siparis in Gecmis %}


                                <tr class="{{ Siparis['cls'] }}">
                                    <td class="text-center"><b class="block-mb2">Sipariş
                                            Tarihi:</b>
                                        <?php echo date("d.m.Y H:i", strtotime($Siparis['date'])); ?>
                                    </td>
                                    <td class="text-center"><b class="block-mb2">Sipariş
                                            No:</b> {{ Siparis['order_number'] }}</td>
                                    <td class="text-center"><b class="block-mb2">Ödeme
                                            Türü:</b> {{ Siparis['Odeme']['Odeme'] }}</td>
                                    <td class="text-center">
                                        <b class="block-mb2">Üyelik Paketi:</b> {{ Siparis['title'] }}
                                        ({{ Siparis['price'] }} TL)
                                    </td>
                                </tr>
                                <tr class="hidden-mb2 {{ Siparis['cls'] }}">
                                    <td colspan="4" class="text-center">

                                        <b>#{{ Siparis['order_number'] }}</b> {% if Siparis['Odeme']['ID'] == 1 %}
                                        {% if Siparis['iyzico_return'] is empty %} Ödeme gerçekleştirilemedi. {% else %}
                                        {{ Siparis['iyzico_return'] }} {% endif %} {% elseif Siparis['Odeme']['ID']
                                        == 3 or Siparis['Odeme']['ID'] == 5 %} {% if Siparis['kargo_nerde'] is empty %}
                                        Kargo Bekleniyor. {% else %} {{ Siparis['kargo_nerde'] }} {% endif %} {% else %} {% if Siparis['return'] is empty or Siparis['return']
                                        == 'Beklemede' %} {{ Siparis['Mes'] }} {% else %} {{ Siparis['return'] }}
                                        {% endif %} {% endif %}
                                        <a class="detail-btn" href="siparis-detay/{{ Siparis['order_number'] }}">İncele</a>
                                    </td>
                                </tr>
                                {% endfor %} {% endif %}


                            </tbody>
                        </table>

                    </div>


                </div>


            </div>


        </div>
    </div>

</section>