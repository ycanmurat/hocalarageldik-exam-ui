<!DOCTYPE html>
<html lang="tr">
<head>
    <title>{{ Title }}</title>

    <meta charset="utf-8"/>
    <meta name="description" content="{{ Description }}">

    <meta name="keywords" content="{{ Keywords }}">

    <meta name="author" content="Hocalara Geldik Ekibi">

    <link rel="apple-touch-icon" sizes="57x57" href="/assets/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/assets/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/assets/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/assets/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/assets/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/assets/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/assets/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/assets/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/assets/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/assets/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon/favicon-16x16.png">
    <!-- <link rel="manifest" href="/assets/favicon/manifest.json">-->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/assets/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>

    <!-- <link rel="manifest" href="/manifest.json">-->

    {% if mode %}
        <!-- OneSignal -->
        <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async='async'></script>
        <script>
            var OneSignal = window.OneSignal || [];
            OneSignal.push(["init", {
                appId: "a24b6bf5-71c1-4a2e-a5fe-861f81684da7",
                autoRegister: false,
                notifyButton: {
                    enable: false /* Set to false to hide */
                },
                promptOptions: {
                    siteName: 'Hocalara Geldik',
                    actionMessage: "Sitemizden güncel duyuruları almak ister misiniz?",
                    exampleNotificationTitle: 'Örnek Bildirim',
                    exampleNotificationMessage: 'Örnek Bildirim Mesajıdır.',
                    exampleNotificationCaption: 'You can unsubscribe anytime',
                    acceptButtonText: "Evet, İstiyorum",
                    cancelButtonText: "Hayır, Teşekkürler"
                }
            }]);
            OneSignal.push(function () {
                OneSignal.showHttpPrompt();
            });
        </script>
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-60438650-2"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <!-- Global site tag (gtag.js) - Google Ads: 864300826 -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864300826"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }

            gtag('js', new Date());

            gtag('config', 'AW-864300826');
        </script>
    {% endif %} {% if User is not defined %}
        <!-- Adsense
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <script>
              (adsbygoogle = window.adsbygoogle || []).push({
                google_ad_client: "ca-pub-8573101854235264",
                enable_page_level_ads: true
              });
            </script>
            Adsense -->
    {% endif %}

    <!-- Twitter -->
    <meta name="twitter:site" content="@HocalaraGeldik">
    <meta name="twitter:creator" content="@HocalaraGeldik">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="{{ _Title }}">
    <meta name="twitter:description" content="{{ _Description }}">
    <meta name="twitter:image" content="https://www.hocalarageldik.com/assets/favicon/twitter.png">

    <!-- Facebook -->
    <meta property="og:url" content="https://wwww.hocalarageldik.com<?php echo $_SERVER['REQUEST_URI']; ?>">
    <meta property="og:title" content="{{ Title }}">
    <meta property="og:description" content="{{ Description }}">
    <meta property="og:type" content="website">

    <meta property="og:image" content="http://www.hocalarageldik.com/assets/favicon/facebook.png">
    <meta property="og:image:secure_url" content="https://www.hocalarageldik.com/assets/favicon/facebook.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">


    <!-- Boostrap & jQuery -->

    <link rel="stylesheet" type="text/css" href="/assets/semantic/semantic.min.css?v=0.0.2">

    <link rel="stylesheet" type="text/css" href="/assets/player/global.css?v=0.0.2"/>

    <link rel="stylesheet" href="/assets/css/font-awesome.min.css?v=0.0.2">

    <link rel="stylesheet" href="/content/bootstrap/css/bootstrap.min.css?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"/>
    <link rel="stylesheet" href="/content/css/site.css?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"/>
    <link rel="stylesheet" href="/content/css/animate.min.css?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"/>
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,500,500i,700&display=swap" rel="stylesheet"/>

    <script src="/assets/js/jquery-3.2.1.min.js?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"></script>
    <script src="/assets/semantic/semantic.min.js?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"></script>
    <script src="/assets/js/jquery.validate.min.js?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"></script>
    <script src="/assets/js/jquery.maskedinput.min.js?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"></script>
    <script src="/assets/js/main.js?v=<?php echo md5(date('Y-m-d H:i:s')); ?>"></script>

    <script type="text/javascript" src="/assets/js/FWDUVPlayer.js?v=0.0.2"></script>
    <link rel="stylesheet" href="content/plugins/owl/assets/owl.carousel.min.css">

    {% if Duyurum is defined %} {% if Duyurum['title'] is defined %}
        <script>
            $('document').ready(function () {
                $('#alert-bar').html('<div id="alert-top" class="shadow {{ Duyurum['
                color '] }}"> <div class="container-fluid"> <div class="row"> <div class="col-12"> <div class="icon"> <i class="fa fa-exclamation" aria-hidden="true"></i> </div><a href="{{ Duyurum['
                url '] }}"> <p>İNDEX.VOLT DOSYASINDAYIM BENİ BUL VE DÜZELT DUYURULARIN BURADA GÖZÜKMESİ GEREKİYOR{{ Duyurum[' 
                title '] }}</p></a> </div><a href="javascript:close_x();" class="close-x" onclick="$(\'#alert-top\').hide();"> <i class="fa fa-close"></i> </a> </div></div></div>');
                $('#sidebar').css('padding-top', '50px');
            });
        </script>
    {% endif %} {% endif %}

</head>

<body>
<div id="alert-bar"></div>
<section class="header">

    <div class="headerTop">
        <div class="container">
            <div class="fl headSocial">
                <a href="https://www.facebook.com/hocalarageldik"><span class="facebook">facebook</span></a>
                <a href="https://twitter.com/hocalarageldik"><span class="twitter">twitter</span></a>
                <a href="https://www.instagram.com/hocalarageldik/"><span class="instagram">instagram</span></a>
                <a href="https://www.youtube.com/hocalarageldik"><span class="youtube">youtube</span></a>
                <span class="lbl">Bizi Takip Edin...</span>
            </div>
            <div class="fr">
                <div class="dsktp">
                    <a href="/s/sikca-sorulan-sorular">Sıkça Sorulan Sorular</a>
                    <a href="/bize-ulasin">Bize Ulaşın</a>
                </div>

                <div class="mbl">
                    <div class="dropdown userMobilMenu">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {% if User is not defined %}
                                ÜYELİK İŞLEMLERİ
                            {% endif %} {% if User is defined %}
                                <div class="adsoyad">{{ User['name'] }} {{ User['lastname'] }}</div>
                                <div class="bolum">{{ Group['title'] }}</div>
                            {% endif %}
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            {% if User is not defined %}
                                <a href="/giris" class="dropdown-item" href="#">GİRİŞ YAP</a>
                                <div class="dropdown-divider"></div>
                                <a href="/uye-ol" class="dropdown-item" href="#">KAYIT OL</a>
                            {% endif %} {% if User is defined %}

                                <!--<a class="dropdown-item" class="item" href="/arama"> Arama</a>-->
                                <a class="dropdown-item" href="/hesabim">Hesabım</a>
                                <a class="dropdown-item" href="/bilgilerim">Bilgilerim</a>
                                <!--<a class="dropdown-item" href="/sifre-degistir">Parola
                                    Değiştir</a>

                                                            <a class="dropdown-item" href="/karnem">Karnem</a>
        <a class="dropdown-item" href="/giris-kayitlari">Giriş
                                    Kayıtları</a>

                                    <div class="item" onclick="window.location.href='/mesajlarim/yeni?odeme=true'">
                                    <a class="dropdown-item" href="/mesajlarim/yeni?odeme=true">Ödeme
                                        Bildirimi</a>
                                </div>
                                <div class="item" onclick="window.location.href='/siparis-gecmisim'">
                                    <a class="dropdown-item" href="/siparis-gecmisim">Sipariş
                                        Geçmişim</a>
                                </div>
                                    -->
                                <a class="dropdown-item" href="/son-islemlerim">Kaldığım
                                    Yer</a>

                                <a class="dropdown-item" href="/calisma-kilavuzu">Çalışma
                                    Kılavuzu</a>
                                <a class="dropdown-item" href="/mesajlarim">
                                    <i class="fa fa-commenting-o"></i> Mesajlarım {% if MessageCount is defined %}
                                        {% if MessageCount != 0 %}
                                            <span class="badge badge-danger">{{ MessageCount }}</span> {% endif %} {% endif %}
                                </a>
                                <div class="item" onclick="window.location.href='/duyurular'">
                                    <a class="dropdown-item" href="/duyurular">
                                        Duyurular {% if Duyuru > 0 %}<span
                                                class="badge badge-danger">{{ Duyuru }}</span>{% endif %}</a>
                                </div>
                                <div class="item" onclick="window.location.href='/uyelik-paketleri'">
                                    <a class="dropdown-item" href="/uyelik-paketleri"> Üyelik
                                        Paketleri</a>
                                </div>


                                <div class="item sign-out-btn">
                                    <a class="dropdown-item" href="javascript:;"> Çıkış</a>
                                </div>

                            {% endif %}
                        </div>
                    </div>
                </div>

            </div>
            <div class="sil"></div>
        </div>
    </div>
    <div class="container headMiddle">
        <a href="/"><img src="/content/images/logo.png" alt="Hocalara Geldik" class="fl logo"/></a>
        <div class="fr userLink">
            <form class="search-area" action="">
                <input type="text" placeholder="Arama Yap..." required>
                <button><img src="/content/images/search.png" alt="Arama Yap"></button>
            </form>
            <!--<a href="#" class="searchBtn"><img src="content/images/search.png" alt="" class=""/></a>-->
            {% if User is not defined %}
                <a href="/giris" class="loginLink">ÜYE GİRİŞİ</a>
                <a href="/uye-ol" class="registerLink">ÜYE OL</a> {% endif %} {% if User is defined %}
                <div class="dropdown userMenu">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        <div class="adsoyad">{{ User['name'] }} {{ User['lastname'] }}</div>
                        <div class="bolum">{{ Group['title'] }}</div>
                    </button> 
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


                        <!--<a class="dropdown-item" class="item" href="/arama"> Arama</a>-->
                        <a class="dropdown-item" href="/hesabim">Hesabım</a>
                        <a class="dropdown-item" href="/bilgilerim">Bilgilerim</a>
                        <!--<a class="dropdown-item" href="/sifre-degistir">Parola
                            Değiştir</a>

                                                    <a class="dropdown-item" href="/karnem">Karnem</a>
<a class="dropdown-item" href="/giris-kayitlari">Giriş
                            Kayıtları</a>

                            <div class="item" onclick="window.location.href='/mesajlarim/yeni?odeme=true'">
                            <a class="dropdown-item" href="/mesajlarim/yeni?odeme=true">Ödeme
                                Bildirimi</a>
                        </div>
                        <div class="item" onclick="window.location.href='/siparis-gecmisim'">
                            <a class="dropdown-item" href="/siparis-gecmisim">Sipariş
                                Geçmişim</a>
                        </div>
                            -->
                        <a class="dropdown-item" href="/son-islemlerim">Kaldığım
                            Yer</a>

                        <a class="dropdown-item" href="/calisma-kilavuzu">Çalışma
                            Kılavuzu</a>
                        <a class="dropdown-item" href="/mesajlarim">
                            <i class="fa fa-commenting-o"></i> Mesajlarım {% if MessageCount is defined %}
                                {% if MessageCount != 0 %}
                                    <span class="badge badge-danger">{{ MessageCount }}</span> {% endif %} {% endif %}
                        </a>
                        <div class="item" onclick="window.location.href='/duyurular'">
                            <a class="dropdown-item" href="/duyurular">
                                Duyurular {% if Duyuru > 0 %}<span
                                        class="badge badge-danger">{{ Duyuru }}</span>{% endif %}</a>
                        </div>
                        <div class="item" onclick="window.location.href='/uyelik-paketleri'">
                            <a class="dropdown-item" href="/uyelik-paketleri"> Üyelik
                                Paketleri</a>
                        </div>


                        <div class="item sign-out-btn">
                            <a class="dropdown-item" href="javascript:;"> Çıkış</a>
                        </div>
                    </div>
                </div>
            {% endif %}
            <a href="https://magaza.hocalarageldik.com" class="storeLink">MAĞAZA</a>
            <button class="navbar-toggler mMenuToggle mbl" type="button" data-toggle="collapse"
                    data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="sil"></div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mainMenu">
        <div class="container">
            <div class="collapse navbar-collapse" id="navbarsExample07">

                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/"><img src="/content/images/home.png" alt=""
                                                          class="homeLink"/></a>
                    </li>
                    <?php $sayac=0;$sayac1=0;$sayac2=0;$sayac3=0;$sayac4=0; ?> {% for Cat in Menu %}
                        <?php $sayac++; ?>
                        <li class="nav-item <?=$sayac; ?> {% if Cat['Gosterim'] == 1 %}dropdown{% endif %}">
                            <a class="nav-link 0 {% if Cat['Gosterim'] == 1 %} dropdown-toggle {% endif %}{{ Cat['Renk'] }}"
                                    {% if Cat[ 'Gosterim']==0 %} href="{{ Cat['URL'] }}"
                                    {% endif %}{% if Cat[ 'YeniPencere']==1 %} target="_blank"
                            {% endif %}{% if Cat[ 'Gosterim']==1 %} data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false" {% endif %}>{{ Cat['menuName'] }}</a>
                            {% if Cat['Gosterim'] == 1 %}
                                <ul class="dropdown-menu <?=$sayac;?>_dd">
                                    {% for Ders in Cat['Dersler'] %}
                                        <?php $sayac1++; ?>
                                        <li class="nav-item <?=$sayac;?>_<?=$sayac1;?> dropdown">
                                            {% if Ders['Dropdown'] == 0 or Ders['Konular']|length == 0 %}
                                                <a class="dropdown-item 1_1 "
                                                   href="{% if Ders['LinkMenu'] == 1 %}{{ Ders['Link'] }}{% else %}/ders/{{ Ders['permaLink'] }}/{{ Ders['ID'] }}{% endif %}">{{ Ders['categoryName'] }}</a>
                                            {% else %}
                                                <a class="nav-link 1_2 dropdown-item">{{ Ders['categoryName'] }} <i
                                                            class="fa fa-chevron-right" aria-hidden="true"></i></a>
                                                <ul class="dropdown-menu 2">
                                                    {% for Konular in Ders['Konular'] %}
                                                        <?php $sayac2++; ?>
                                                        <li class="nav-item dropdown <?=$sayac;?>_<?=$sayac1;?>_<?=$sayac2;?>">
                                                            {% if Konular['Dropdown'] == 0 or Konular['AltKonular']|length == 0 %}
                                                                <a class="dropdown-item 2"
                                                                   href="{% if Konular['LinkMenu'] == 1 %}{{ Konular['Link'] }}{% else %}{{ Konular['_URL'] }}{% endif %}">
                                                                    {{ Konular['categoryName'] }}
                                                                </a> {% else %}
                                                                <a class="dropdown-item 2 dropdown-toggle" href="#" id="navbarDropdown2"
                                                                   role="button" data-toggle="dropdown" aria-haspopup="true"
                                                                   aria-expanded="false">
                                                                    {{ Konular['categoryName'] }}
                                                                </a>

                                                                <ul class="dropdown-menu 2">
                                                                    {% for AltKonular in Konular['AltKonular'] %}
                                                                        <?php $sayac3++; ?>
                                                                        <li class="nav-item dropdown 3">
                                                                            {% if AltKonular['Dropdown'] == 0 or AltKonular['AltAltKonular']|length == 0 %}
                                                                                <a class="dropdown-item"
                                                                                   href="{% if AltKonular['LinkMenu'] == 1 %}{{ AltKonular['Link'] }}{% else %}{{ AltKonular['_URL'] }}{% endif %}">
                                                                                    {{ AltKonular['categoryName'] }}
                                                                                </a> {% else %}
                                                                                <a class="dropdown-item 3 dropdown-toggle" href="#"
                                                                                   id="navbarDropdown2" role="button" data-toggle="dropdown"
                                                                                   aria-haspopup="true" aria-expanded="false">
                                                                                    {{ AltKonular['categoryName'] }}
                                                                                </a>
                                                                                <ul class="dropdown-menu 3 ">
                                                                                    {% for AltAltKonular in AltKonular['AltAltKonular'] %}
                                                                                        <?php $sayac4++; ?>
                                                                                        <li>
                                                                                            <a class="dropdown-item"
                                                                                               href="{% if AltAltKonular['LinkMenu'] == 1 %}{{ AltAltKonular['Link'] }}{% else %}{{ AltAltKonular['_URL'] }}{% endif %}">
                                                                                                {{ AltAltKonular['categoryName'] }}
                                                                                            </a>
                                                                                        </li>
                                                                                    {% endfor %}
                                                                                </ul>
                                                                            {% endif %}
                                                                        </li>
                                                                    {% endfor %}
                                                                </ul>
                                                            {% endif %}
                                                        </li>
                                                    {% endfor %}
                                                </ul>
                                            {% endif %}
                                        </li>
                                    {% endfor %}
                                </ul>
                            {% endif %}
                        </li>
                    {% endfor %}
                </ul>
                <form class="form-inline my-2 my-lg-0">

                    {% for Right in RightMenu %}

                        <a class="menuFill {% if loop.last %}last-right{% endif %} {{ Right['Renk'] }}"
                           href="{{ Right['URL'] }}" {% if Right[ 'YeniPencere']==1 %} target="_blank"
                                {% endif %}>{{ Right['menuName'] }}</a> {% endfor %}
                </form>
            </div>
        </div>
    </nav>
</section>
{% if PBreadCrumb is defined %}
    <section class="pageNav">
        <div class="container">
            <a href="/">Anasayfa</a><?php $i=0; $countcuk=count($PageInfo['Breadcrumb']) ?> {% for Bread in PageInfo['Breadcrumb'] %}
                <?php $i++; ?>
                {% if countcuk!=i %} <a href="{{ Bread[0] }}">{{ Bread[1] }}</a>{% else %}{{ Bread[1] }}{% endif %}

            {% endfor %}

        </div>
    </section>
{% endif %}
<div class="opacityBg"></div>

{{ content() }}

<section class="footer">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-3">
                <a href="#"><img src="/content/images/flogo.png" alt="" class="flogo"/></a>
                <p class="lbl">Hocalara Geldik, videolar ve sosyal medyası ile öğrencilere kılavuzluk etmeye
                    çalışır.
                </p>
                <div class="fSocial">
                    <a href="https://www.facebook.com/hocalarageldik"><span class="facebook">facebook</span></a>
                    <a href="https://twitter.com/hocalarageldik"><span class="twitter">twitter</span></a>
                    <a href="https://www.instagram.com/hocalarageldik/"><span class="instagram">instagram</span></a>
                    <a href="https://www.youtube.com/hocalarageldik"><span class="youtube">youtube</span></a>
                </div>
            </div>

            <div class="col-6 col-md-3">
                <div class="fTitle">Hocalara Geldik</div>
                <ul>
                    <li><a href="/s/hakkimizda">Hocalara Geldik Hakkında</a></li>
                    <li><a href="/s/hocalara-geldik-nedir">Hocalara Geldik Nedir?</a></li>
                    <li><a href="/s/ornek-icerikler">Hocalara Geldik'de Neler Var?</a></li>
                    <li><a href="/s/nasil-uye-olurum">Nasıl Üye Olurum?</a></li>
                    <li><a href="/s/sikca-sorulan-sorular">Sıkça Sorulan Sorular</a></li>
                    <li><a href="/bize-ulasin">Bize Ulaşın</a></li>
                </ul>
                <!-- <ul>
                 <li><a href="#">Hocalara Geldik Hakkında</a></li>
                 <li><a href="#">Hocalara Geldik Nedir?</a></li>
                 <li><a href="#">Hocalara Geldik'de Neler Var?</a></li>
                 <li><a href="#">Nasıl Üye Olurum?</a></li>
                 <li><a href="#">Sıkça Sorulan Sorular</a></li>
                 <li><a href="#">Bize Ulaşın</a></li>
                 <li><a href="#">Ortaokul Çekiliş</a></li>
                 <li><a href="#">Çekiliş</a></li>
             </ul>
-->
            </div>

            <div class="col-6 col-md-3">
                <div class="fTitle">Üyelik Paketleri</div>
                <ul>
                    <li><a href="/uye-ol">Ücretsiz Üyelik</a></li>
                    {% for Paket in FooterPaketler %}
                        <li><a href="/uyelik-paketleri">{{ Paket['title'] }}</a></li>
                    {% endfor %}
                </ul>
            </div>

            <div class="col-6 col-md-3">
                <div class="fTitle">Bilgilendirme</div>
                <ul>
                    <li><a href="/s/uyelik-sozlesmesi">Üyelik Sözleşmesi</a></li>
                    <li><a href="/s/gizlilik-ve-guvenlik-politikasi">Gizlilik ve Güvenlik Politikası</a></li>
                    <li><a href="/s/mesafeli-satis-sozlesmesi">Mesafeli Satış Sözleşmesi</a></li>
                    <li><a href="/s/kisisel-veriler-politikasi">Kişisel Veriler Politikası</a></li>
                    <li><a href="/s/cerez-politikasi">Çerez Politikası</a></li>
                    <li><a href="/s/banka-hesap-numaralarimiz">Banka Hesap Numaralarımız</a></li>
                </ul>

            </div>
        </div>

    </div>

    <div class="footerBottom text-center">
            <span>
                Copyright 2015 - 2019 © <a href="http://www.optimusdanismanlik.com/" target="_blank">Optimus Danışmanlık
                    Eğitim ve Teknoloji Hiz. Ltd. Şti.</a>
            </span>
        <span class="ml-2">
                <img src="/content/images/comodo.png" alt=""/>
                <img src="/content/images/visa.png" alt=""/>
            </span>
        <div class="sil"></div>
        <hr/>
        <p>Sitemizde gezinmeye devam ederek <a href="/s/kisisel-veriler-politikasi">Kişisel Veriler Politikamızı</a>
            kabul etmiş olursunuz. <a href="/s/cerez-politikasi">Çerezler</a> mevzuata uygun olarak
            kullanılmaktadır.
        </p>
    </div>

</section>

<div class="ui basic modal" id="SignOut">
    <div class="ui icon header">
        <i class="sign out icon"></i>
    </div>
    <div class="content text-center">
        <p>Çıkış yapmak istediğiniz emin misiniz?</p>
    </div>
    <div class="actions text-center">
        <div data-dismiss="modal" class="ui red basic cancel inverted button">
            <i class="remove icon"></i> Hayır
        </div>
        <div class="ui green ok inverted button" onclick="window.location.href='/cikis'">
            <i class="checkmark icon"></i> Evet
        </div>
    </div>
</div>


<div class="ui basic modal" id="UyariModal">
    <div class="ui icon header">
        <i class="warning sign icon"></i> Bu mesajı neden alıyorsunuz?
    </div>
    <div class="content text-center">
        <p>Üye girişi yapmamış olabilirsiniz,</p>
        <p>Sitemize üye olmayabilirsiniz,</p>
        <p>Üye olduğunuz halde paketinizin süresi dolmuş ya da paketinizin bu içeriğe erişimi olmayabilir,</p>
        <p>Üyelik paketinizi banka Havale/EFT ile almışsanız üyeliğiniz henüz onaylanmamış olabilir,</p>
        <p>Bu mesajı almamak için, üye işlemleriniz tamamlandığında lütfen bir kez çıkış/giriş yapınız.</p>
    </div>
    <div class="actions text-center">
        <div class="ui blue inverted button" onclick="window.location.href='/uyelik-paketleri'">
            <i class="mastercard icon"></i> Üyelik Paketleri
        </div>
        {% if User is not defined %}
            <div class="ui green ok inverted button" onclick="window.location.href='/giris'">
                <i class="checkmark icon"></i> Giriş
            </div>
            <div class="ui orange ok inverted button" onclick="window.location.href='/uye-ol'">
                <i class="checkmark icon"></i> Üye Ol
            </div>
        {% endif %}
        <div data-dismiss="modal" class="ui red ok inverted button">
            <i class="remove icon"></i> Kapat
        </div>
    </div>
</div>


<div class="ui basic modal" id="KilavuzModal">
    <div class="ui icon header" id="KilavuzText">
    </div>
    <div class="actions text-center">
        <div data-dismiss="modal" class="ui red ok inverted button">
            <i class="remove icon"></i> Kapat
        </div>
    </div>
</div>


<div class="ui basic modal boxPopup">
    <div class="ui icon header appleberry" style="font-size:30px !important;">
    </div>
    <div class="content text-center">
        <div class="embed-responsive embed-responsive-16by9 shadow">
            <iframe class="embed-responsive-item" src="" allowfullscreen></iframe>
        </div>
    </div>
</div>


{% if User is defined %}
    <div class="ui basic modal AvatarPopup">
        <div class="ui icon header">
            <i class="image icon"></i> Profil Resmini Güncelle
        </div>
        <div class="content text-center">
            <img src="{% if User['photo'] is defined and User['photo'] != '' %}/Uploads/Avatar/{{ User['photo'] }}{% else %}/assets/img/image.png{% endif %}"
                 data-src="{% if User['photo'] is defined and User['photo'] != '' %}/Uploads/Avatar/{{ User['photo'] }}{% else %}/assets/img/image.png{% endif %}"
                 id="avatarImg" class="rounded-circle" width="150" height="150" alt="">
            <div>
                <form action="/hesabim" method="post" enctype="multipart/form-data">
                    <br/>

                    <div class="actions text-center">
                        <div class="ui green inverted button" id="inputfile">
                            Profil Resmi Seçin
                        </div>
                        <button type="submit" class="ui green inverted button yukle" style="display: none;">Yükle
                        </button>
                        <div data-dismiss="modal" class="ui red ok inverted button">
                            <i class="remove icon"></i> Kapat
                        </div>
                    </div>

                    <input type="hidden" name="avatar" value="1">
                    <input type="file" id="imgInp" class="inputfile" name="inputfile">
                </form>
            </div>
        </div>
    </div>
{% endif %} {% if Uyar is defined %}
    <div class="ui basic modal" id="Uyarimmm">
        <div class="ui icon header">
            <i class="warning sign icon"></i> Üzgünüm bu içerik sadece üyelerimize özel bir içeriktir.
        </div>
        <div class="actions text-center">
            <div data-dismiss="modal" class="ui red ok inverted button">
                <i class="remove icon"></i> Kapat
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('.ui.basic.modal#Uyarimmm').modal('show');
        });
    </script>
{% endif %} {% if User is defined and Teyit == 0 and teyyi == 1 %}
    <div class="ui basic modal" id="teyitet">
        <div class="ui icon header">
            <i class="warning sign icon"></i>
            <div class="col-sm-12" style="font-size:14px;">
                <p style="text-align:justify">Yoğun bir adres değişikliği talebi aldığımız için Çalışma Kılavuzu'na hak
                    kazanmış arkadaşlarımızın tamamından adreslerini güncellemelerini istemek durumundayız. </p>
                <p style="text-align:justify"><br><strong>Adres beyan formunda yer alan bilgileri eksiksiz (Mahalle,
                        Cadde - sokak, Bina no, daire no, ilçe, il) olarak doldurmanızı rica ediyoruz.</strong></p>
                <p style="text-align:justify"><br><strong>1- </strong>Kargo takip numaraları sms ile telefonuza
                    iletilecektir. Üye girişi yaparak, siparişlerim bölümünden de kargo takibini yapabilirsiniz.
                    (Gönderiniz yola çıktıktan sonra takibini yapmanızı önemle tavsiye ediyoruz!
                    Siz evdeyken bile kargo firmasının "Geldik ama sizi bulamadık" notu ile karşılabilirsiniz :)
                    <br><strong>2- </strong>Kargo şubelerine doğrudan gönderim yapılamamaktadır. Kargo şubesinden teslim
                    almak isteyen arkadaşlarımız güncel teslimat adreslerini girip; paketi yola çıktıktan sonra kargo
                    firması ile irtibata geçerek gönderilerini
                    şubeden teslim almak istediklerini belirtebilirler.
                    <br><strong>3- </strong>Kargonuz, 25 Temmuz ile 10 Ağustos tarihleri arasında, Aras kargo firması
                    tarafından beyan edeceğiniz adrese teslim edilecektir.
                    <br><strong>4- </strong>Adres güncellemesinin en geç 25 Temmuz saat 17:00'a kadar yapılması
                    gerekmektedir. <br><strong>5- </strong>Belirtilen tarihten sonra adres değişikliği yapılamayacak
                    olup; kargonun ulaşmaması durumunda sorumluluk
                    alıcıya aittir.
                    <br><strong>6- </strong>Üye, ibraz ettiği bilgilerin doğruluğundan sorumludur. Bilgilerde hata
                    olması durumunda sorumluluk üyeye aittir. <br><strong>7- </strong>Kargonuzu teslim almamanız
                    durumunda yeniden gönderim yapılmayacaktır.</p>
                <div class="text-center"><a href="/bilgilerim" style="padding:15px;"
                                            class="btn btn-lg btn-success">Bilgilerimi
                        Teyit Etmek İstiyorum</a></div>
            </div>
        </div>
        <div class="actions text-center">
            <div data-dismiss="modal" class="ui red ok inverted button">
                <i class="remove icon"></i> Kapat
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('.ui.basic.modal#teyitet').modal('show');
        });
    </script>
{% endif %}

<script src="/content/plugins/owl/owl.carousel.min.js"></script>
<script src="/content/plugins/wow/wow.min.js"></script>
<script src="/content/plugins/chart/Chart.min.js"></script>

<script src="/content/js/site.js?v1.2"></script>
<script src="/content/js/popper.min.js"></script>
<script src="/content/bootstrap/js/bootstrap.min.js"></script>
{% if FooterJS is defined %} {{ FooterJS }} {% endif %}
<noscript>
    <div><img src="https://mc.yandex.ru/watch/45966846" style="position:absolute; left:-9999px;" alt=""/></div>
</noscript>


</body>

</html>