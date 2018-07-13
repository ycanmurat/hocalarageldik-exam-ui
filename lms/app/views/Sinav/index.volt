<script src="/assets/js/jquery.countdown.min.js"></script>
<script>
    $(document).ready(function () {
        $('#clock').countdown('2018/05/19 10:00:00')
            .on('update.countdown', function (event) {
                var format = '%H Saat %M Dakika %S Saniye Kaldı!';
                if (event.offset.totalDays > 0) {
                    format = '%-d Gün ' + format;
                }
                if (event.offset.weeks > 0) {
                    format = '%-w Hafta ' + format;
                }
                $(this).html(event.strftime(format));
            })
            .on('finish.countdown', function (event) {
                $(this).html('Sınav Başladı!')
                    .parent().addClass('disabled');

            });


        $('#clocks').countdown('2018/05/20 10:00:00')
            .on('update.countdown', function (event) {
                var format = '%H Saat %M Dakika %S Saniye Kaldı!';
                if (event.offset.totalDays > 0) {
                    format = '%-d Gün ' + format;
                }
                if (event.offset.weeks > 0) {
                    format = '%-w Hafta ' + format;
                }
                $(this).html(event.strftime(format));
            })
            .on('finish.countdown', function (event) {
                $(this).html('Sınav Başladı!')
                    .parent().addClass('disabled');

            });

    });
</script>


<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-12 text-left">
                <ol class="breadcrumb no-border pull-left">
                    <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>">Sınavlar</a></li>
                    {% if Sinav is defined %}
                    <li class="breadcrumb-item"><a href="/sinav/{{URL}}">{{Page2['title']}}</a></li>
                    {% endif %}
                    <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>">
                            {{Page['title']}}</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<section class="register aboutus">

    <div id="entries">
        <div class="container">

            <div class="row mbBot info-line">
                <div class="col-12">
                    <h2 class="main-title"> <i class="checkmark box icon"></i>
                        {{Page['title']}}
                    </h2>
                </div>
                <div class="col-12 mbBot">

                    <div class="row">
                        <!--
                        <div class="col-sm-9 text-left" style="border-radius: 4px; margin-top: 35px;  ">
                            <h1 class="ui huge header countdown text-center"
                                style=" display: none;background:#e84118; font-size: 1.1rem !important; color:#fff; padding:10px 20px; border-radius:70px;">
                                19 Mayıs TYT Deneme Sınavına <span id="clock"></span>
                            </h1>
                        </div>
-->
                        <!---div class="col-sm-3 text-right">
                        <a href="/karnem/deneme-sinavlari" style="margin-top:25px; margin-left:10px;" data-href="/karnem/deneme-sinavlari" class=" btn btn-sm btn-block btn-primary btn-round pull-right">Sınav Sonuçları</a><br/><br/><br/>
                    </div--->
                    </div>

                    <div class="ui divided items">

                        {% if Sinavlar|length == 0 %}
                        <div class="row mbBot">
                            <div class="col-12">
                                <div class="ui negative icon message"> <i class="warning sign icon"></i>
                                    <div class="header"> Üzgünüm, bu içeriği görüntüleyemiyorsunuz, ücretli veya üyelere
                                        özel bir içerik <a href="/uyelik-paketleri">buradan</a> üyelik paketlerimizi
                                        inceleyebilirsiniz. </div>
                                </div>
                            </div>
                        </div>
                        {% else %}

                        {% for Sinav in Sinavlar %}
                        <div class="item" style="padding-top:60px; margin-bottom: 25px;">


                            <div class="content">
                                <div>

                                    <a href="javascript:;" data-href="{{Sinav['_url']}}"
                                        class="{{Sinav['class']}} ui header  pull-left"
                                        style="margin-top: 15px;">{{Sinav['Name']}}</a>

                                    {% if Sinav['other_Practice'] != 0  %}
                                    <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;"
                                        data-href="{{Sinav['_url_yedek']}}"
                                        class="{{Sinav['class']}} btn hidden-mb btn-sm btn-block btn-danger btn-round pull-right">Sınavı
                                        Başlat</a>
                                    {% else %}
                                    <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;"
                                        data-href="{{Sinav['_url']}}"
                                        class="{{Sinav['class']}} btn hidden-mb btn-block btn-sm btn-danger btn-round pull-right">Sınavı
                                        Başlat</a>

                                    {% endif %}

                                    <?php
                                        /*
                                        {% if Sinav['other'] == 1 and Sinav['ID'] != 40 %}
                                    
                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;" data-href="{{Sinav['_url']}}" class="{{Sinav['class']}} btn hidden-mb btn-sm btn-danger btn-round pull-right">Sınavı Başlat</a>


                                        {% if Sinav['other_Practice'] != 0  %}
                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;" data-href="{{Sinav['_url_yedek']}}" class="{{Sinav['class']}} btn hidden-mb btn-sm btn-danger btn-round pull-right">Sınavı Başlat</a>
                                        {% endif %}

                                        {% elseif Sinav['other'] == 1 and Sinav['ID'] == 40 %}
                                        
                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;" data-href="{{Sinav['_url']}}" class="{{Sinav['class']}} btn hidden-mb btn-sm btn-default btn-round pull-right">Sınav Tamamlanmıştır.</a>
                                            

                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;" data-href="{{Sinav['_url_yedek']}}" class="{{Sinav['class']}} btn hidden-mb btn-sm btn-danger btn-round pull-right">Sınavı Başlat</a>

                                        {% else %}
                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;" data-href="{{Sinav['_url']}}" class="{{Sinav['class']}} btn hidden-mb btn-sm btn-danger btn-round pull-right">Sınavı Başlat</a>
                                        {% endif %}
                                        */
                                    
                                    ?>


                                    <div style="clear: both"></div>
                                </div>
                                <div class="description text-justify"
                                    style="width: 100%; margin-top: 15px; clear:both;">



                                    {{Sinav['Text']}}

                                    {% if Sinav['StartDate'] != '' and Sinav['Dakika'] != '' and Sinav['FinishDate'] != '' %}
                                    <!--div class="row" style="margin-top: 20px;">
                                        <div class="col-6 col-sm-4 text-center bbt">
                                            <b>Sınav Tarihi</b>{{Sinav['StartDate']}}
                                        </div>
                                        <div class="col-6 col-sm-4 text-center bbt">
                                            <b>Sınav Süresi</b>{{Sinav['Dakika']}}
                                        </div>
                                        <div class="col-12 col-sm-4 text-center bbt">
                                            <b>Sonuç İlan Tarihi</b>{{Sinav['Aciklanma']}}
                                        </div>
                                    </div-->
                                    {% endif %}

                                    <div class="row">
                                        <div class="col-12" style="line-height: 30px; padding-top: 30px;">

                                            <div>
                                                {{Sinav['TextAciklama']}}
                                            </div>



                                            {% for Documents in Sinav['Documents'] %}

                                            <a href="{% if Sinav['DokumanDurum'] == 1 %} {{Documents['url']}} {% else %} javascript:; {% endif %}"
                                                target="_blank" style="margin-left:10px;"
                                                class="{% if Sinav['DokumanDurum'] != 1 %} {{Sinav['class']}} {% endif %}btn  btn-sm btn-default btn-block btn-round">{{Documents['name']}}</a>

                                            {% endfor %}



                                        </div>
                                    </div>

                                    <div class="text-center showMobile">
                                        {% if Sinav['other'] == 1 %}

                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;"
                                            data-href="{{Sinav['_url']}}"
                                            class="{{Sinav['class']}} btn  btn-sm btn-default btn-round">Ödüllü Sınav
                                            Tamamlanmıştır.</a>

                                        <br />
                                        <br />

                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;"
                                            data-href="{{Sinav['_url_yedek']}}"
                                            class="{{Sinav['class']}} btn  btn-sm btn-danger btn-round">Sınavı
                                            Başlat</a>

                                        {% else %}
                                        <a href="javascript:hgOpenPop('{{Sinav['_url']}}');" style="margin-left:10px;"
                                            data-href="{{Sinav['_url']}}"
                                            class="{{Sinav['class']}} btn  btn-sm btn-danger btn-round">Sınavı
                                            Başlat</a>
                                        {% endif %}
                                    </div>



                                </div>
                            </div>
                        </div>
                        {% endfor %}

                        {% endif %}






                    </div>

                </div>
            </div>

        </div>
    </div>
</section>