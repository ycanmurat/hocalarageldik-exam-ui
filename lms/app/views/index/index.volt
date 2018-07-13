<section class="main-slider">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="owl-carousel owl-theme owl-mainslider">
                    <div class="item">
                        <img src="/content/images/slideritem1.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="/content/images/slideritem2.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mini-banners">
                    <a href="#"><img src="/content/images/minibanner1.jpg" alt=""></a>
                    <a href="#"><img src="/content/images/minibanner2.jpg" alt=""></a>
                    <a href="#"><img src="/content/images/minibanner3.jpg" alt=""></a>
                </div>

            </div>
        </div>
    </div>
</section>

<!--
<div class="row" id="Slider">
    <div id="Slide" class="carousel slide shadow" data-ride="carousel">

        <div class="carousel-inner" role="listbox">
            {% for Slider in Sliders %}
                <div class="carousel-item {% if loop.first %}active{% endif %}">
                    {% if Slider['url'] is defined %}
                    <a href="{{ Slider['url'] }}"{% if Slider['blank'] == 1 %} target="_blank"{% endif %}>
                        {% endif %}
                        <img class="d-block img-fluid" src="/Uploads/Slider/{{ Slider['photo'] }}" width="100%">
                        {% if Slider['url'] is defined %}
                    </a>
                    {% endif %}
                </div>
            {% endfor %}
        </div>

        <a class="carousel-control-prev" href="#Slide" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#Slide" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>
</div>
-->
<section class="contents">
    <div class="container">
        <div class="text-center">
            <div class="contentTitle text-center">Neler Var</div>
        </div>
        <div class="row">

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img blue2"><img src="content/images/icon/video.svg" width="60" height="70"
                            class="svg" />
                    </div>
                    <div class="itemBg blue1"></div>
                    <img src="content/images/home/1.png" class="img2 im1" width="44" height="83" />
                    <div class="inner">
                        <div class="title"><a
                                href="https://www.hocalarageldik.com/ders/matematik/yeni-nesil-konu-anlatim/18914">
                                Yeni Nesil Konu Anlatım Videoları</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img pink2"><img src="content/images/icon/pdf.svg" width="60" height="70" class="svg" />
                    </div>
                    <img src="content/images/home/2.png" class="img2 im2" width="38" height="64" />
                    <div class="itemBg pink1"></div>
                    <div class="inner">
                        <div class="title"><a href="/assets/ornek-icerikler/01_VIDEO_DERS_PDF.pdf" target="_blank">Tüm
                                Videoların PDF Dokümanları</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img orange1"><img src="content/images/icon/kilavuz.svg" width="60" height="70"
                            class="svg" /></div>
                    <img src="content/images/home/3.png" class="img2 im3" width="56" height="158" />
                    <div class="itemBg orange2"></div>
                    <div class="inner">
                        <div class="title titleMin"><a href="/assets/ornek-icerikler/07_ORNEK_CALISMA_KILAVUZ.pdf"
                                target="_blank">Çalışma Kılavuzu</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img green2"><img src="content/images/icon/test.svg" width="52" height="70"
                            class="svg" />
                    </div>
                    <img src="content/images/home/4.png" class="img2 im4" width="38" height="75" />
                    <div class="itemBg green1"></div>
                    <div class="inner">
                        <div class="title"><a href="javascript:;" data-title="Deneme Sınavları ve Konu Testleri"
                                class="openPopup" data-href="{{ _QuizURL }}">Konu Testleri</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img pink3"><img src="content/images/icon/deneme-sinavi.svg" width="68" height="68"
                            class="svg" /></div>
                    <img src="content/images/home/5.png" class="img2 im5" width="55" height="147" />
                    <div class="itemBg pink4"></div>
                    <div class="inner">
                        <div class="title titleMin"><a href="javascript:;"
                                data-title="Deneme Sınavları ve Konu Testleri" class="openPopup"
                                data-href="{{ _QuizURL }}">Deneme Sınavları</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img purple1"><img src="content/images/icon/pdf.svg" width="60" height="70"
                            class="svg" />
                    </div>
                    <img src="content/images/home/6.png" class="img2 im6" width="64" height="70" />
                    <div class="itemBg purple2"></div>
                    <div class="inner">
                        <div class="title"><a href="javascript:;" data-title="3 Adımda Tam Tekrar..."
                                data-href="https://www.youtube.com/embed/kNEa3s2fjRc?rel=0&amp;showinfo=0">3
                                Adımda Tam Tekrar Serisi</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img green3"><img src="content/images/icon/yazili-sinav.svg" width="69" height="70"
                            class="svg" /></div>
                    <img src="content/images/home/7.png" class="img2 im7" width="46" height="100" />
                    <div class="itemBg green4"></div>
                    <div class="inner">
                        <div class="title"><a href="javascript:;" data-title="Yazılı Sınavlara Hazırlık..."
                                data-href="https://www.youtube.com/embed/K-JaM2jI_TM?rel=0&amp;showinfo=0">Yazılı
                                Sınavlara Hazırlık</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                    <div class="img blue3"><img src="content/images/icon/ogreten-sorular.svg" width="69" height="71"
                            class="svg" /></div>
                    <img src="content/images/home/8.png" class="img2 im8" width="26" height="83" />
                    <div class="itemBg blue4"></div>
                    <div class="inner">
                        <div class="title"><a href="https://www.hocalarageldik.com/ders/turkce/ogreten-sorular/18079"
                                target="_blank">Öğreten Sorular Serisi</a></div>
                        <div class="desc">
                            Yeni müfredata uygun konu anlatım videoları ile sınava hazırlanın...
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</section>

<section class="paketler">
    <div class="container text-center">
        <div class="text-center">
            <div class="contentTitle text-center">Paketler</div>
        </div>
        <div class="lbl" style="color:#888888; font-size:16px; margin-top:25px; padding-bottom:105px ">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo con
        </div>

        <div class="row">
            <div class="col-md-3 offset-1">
                <div class="paket mini">

                    <div class="baslik">

                        <div class="fiyat">
                            <div class="text-center">
                                <div class="inner">
                                    <img src="content/images/fiyat2.png" alt="" />
                                    <div class="span">
                                        <div class="fiyatlar">
                                            <div class="normalFiyat">229 TL</div>
                                            <div class="indirimliFiyat">209<span> TL</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="paketBaslik1">TYT–AYT 2020</div>
                        <div class="paketBaslik2">BAŞLANGIÇ PAKETİ</div>
                    </div><!-- baslik bitti -->

                    <div class="govde">
                        <div class="item">
                            <a href="#"><img src="content/upload/desktop.png"></a>
                            <div class="itemTitle"><a href="#">Benzersiz <span>Dijital</span> İçeriklerimiz</a></div>
                        </div>

                        <img src="content/images/plus.png" class="plus">

                        <div class="item">
                            <a href="#"><img src="content/upload/books12.png"></a>
                            <div class="itemTitle"><a href="#"><span>6 Adet</span> Yeni Nesil Soru Bankası</a></div>
                        </div>

                        <div class="box satinAl text-center">
                            <a
                                href="https://www.hocalarageldik.net/uyelik-paketi/63/tyt-ayt-2020-baslangic-paketi">İNCELE</a>

                            <div
                                style="padding-top:20px; font-size:15px;font-style:italic; font-weight:400;color:#828282">
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-4">
                <div class="paket big">

                    <div class="baslik">

                        <div class="fiyat">
                            <div class="text-center">
                                <div class="inner">
                                    <img src="content/images/fiyat2.png" alt="">
                                    <div class="span">
                                        <div class="fiyatlar">
                                            <div class="normalFiyat">360 TL</div>
                                            <div class="indirimliFiyat">299<span> TL</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="paketBaslik1">TYT–AYT 2020</div>
                        <div class="paketBaslik2">FULL PAKET</div>
                    </div><!-- baslik bitti -->

                    <div class="govde">
                        <div class="item">
                            <a href="#"><img src="content/upload/desktop.png"></a>
                            <div class="itemTitle"><a href="#">Benzersiz <span>Dijital</span> İçeriklerimiz</a></div>


                        </div>

                        <img src="content/images/plus.png" class="plus">

                        <div class="item">
                            <a href="#"><img src="content/upload/books12.png"></a>
                            <div class="itemTitle"><a href="#"><span>6 Adet</span> Yeni Nesil Soru Bankası</a></div>
                        </div>

                        <div class="box satinAl text-center">
                            <a href="https://www.hocalarageldik.net/uyelik-paketi/64/tyt-ayt-2020-full-paket">İNCELE</a>

                            <div
                                style="padding-top:20px; font-size:15px;font-style:italic; font-weight:400;color:#828282">
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="paket mini">

                    <div class="baslik">

                        <div class="fiyat">
                            <div class="text-center">
                                <div class="inner">
                                    <img src="content/images/fiyat2.png" alt="">
                                    <div class="span">
                                        <div class="fiyatlar">
                                            <div class="normalFiyat">189 TL</div>
                                            <div class="indirimliFiyat">149<span> TL</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="paketBaslik1">TYT–AYT 2020</div>
                        <div class="paketBaslik2">FULL ÜYELİK PAKETİ</div>
                    </div><!-- baslik bitti -->

                    <div class="govde">
                        <div class="item">
                            <a href="#"><img src="content/upload/desktop.png"></a>
                            <div class="itemTitle"><a href="#">Benzersiz <span>Dijital</span> İçeriklerimiz</a></div>

                            <img src="content/images/plus.png" class="plus">

                            <div class="item">
                                <a href="#"><img src="content/upload/books12.png"></a>
                                <div class="itemTitle"><a href="#"><span>6 Adet</span> Yeni Nesil Soru Bankası</a></div>
                            </div>

                            <div class="box satinAl text-center">
                                <a
                                    href="https://www.hocalarageldik.net/uyelik-paketi/65/tyt-ayt-2020-baslangic-paketi">İNCELE</a>

                                <div
                                    style="padding-top:20px; font-size:15px;font-style:italic; font-weight:400;color:#828282">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="paketlerLbl"><span>NOT:</span> Site üyeleri, tüm paketlerde TYT ve AYT site içeriklerinin tümüne
            sahip olurlar.
        </div>


    </div>
</section>

<section class="comments">

    <div class="container">

        <div class="owl-carousel commentSlider text-center">

            <div>
                <div class="inner">
                    <div class="img"><img src="content/upload/profil2.jpg" alt=""></div>
                    <div class="content">
                        İyi günler hocalarım ve Editörlerimiz her şey için teşekkür
                        ederiz okulda geçen sene 6. oldum ve sizi herkese tavsiye ettim artık herkes
                        Hocalara Geldik 'i izliyor teşekkür ederim.
                    </div>
                    <div class="name">Oğuzcan</div>
                </div>
            </div>

            <div>
                <div class="inner">
                    <div class="img"><img src="content/upload/profil2.jpg" alt=""></div>
                    <div class="content">
                        Endustri muhendisliği mezunuyum. Sizınle beraber bu sefer de hukuk fakültesıne hazırlanıyorum.
                        Bir de küçük bebeğim var o uyuduğunda gece izliyorum videolarınızı. Şahanesiniz bilin istedim :)
                    </div>
                    <div class="name">Canan</div>
                </div>
            </div>

            <div>
                <div class="inner">
                    <div class="img"><img src="content/upload/profil2.jpg" alt=""></div>
                    <div class="content">
                        Hocam sizler ne güzel bir iş yapıyorsunuz. Her şeyimizi
                        etkiliyor, psikolojimizi, hayatımızı, her şeyi. Allah hepinizden razı olsun.
                        Kazanırsam da, bir yerlere gelirsem de sayenizde olacak...
                    </div>
                    <div class="name">Ece</div>
                </div>
            </div>

            <div>
                <div class="inner">
                    <div class="img"><img src="content/upload/profil2.jpg" alt=""></div>
                    <div class="content">
                        19.. doğumluyum .. yaşındayım videolarınızı çok dikkatli
                        dinliyorum liseden 80 yılında mezun olmama rağmen çok faydalı oldu inanın 2019
                        yılında ünüversite sınavına girmeyi düşünüyorum sayenızde çok iyi bir puan alacağımı
                        tahmin ediyorum çok çok teşekkür eder çocuklarımıza iyi bir gelecek vatanımıza
                        faydalı birey yetiştireceğiniz için size minnatım başarılarınızın devamını
                        dilerim.
                    </div>
                    <div class="name">Ece</div>
                </div>
            </div>

        </div>

    </div>

</section>
<!--
<div class="container">
    <div class="row mfl mbBot">

        <div class="col-sm-12 col-md-6 bxPopup">
            <div class="bx" style="border: none;">
                <a href="javascript:;" data-title="Çalışmaya, Öğrenmeye Devam..." data-href="https://www.youtube.com/embed/Yd7lsOHwhA4?rel=0&amp;showinfo=0">
                    <img src="/assets/img/tanitim-video.jpg" alt="" width="100%">
                </a>
                <a href="javascript:;" data-title="Kitaplarımız Yayımlandı!" data-href="https://www.youtube.com/embed/Yd7lsOHwhA4?rel=0&amp;showinfo=0" class="title white">
                    Çalışmaya, Öğrenmeye Devam...
                </a>
            </div>
        </div>

        <div class="col-sm-12 col-md-6 bxPopup">
            <div class="bx bxPopup" style="border: none;">
                <a href="javascript:;" data-title="Sorubüs Tanıtım" data-href="https://www.youtube.com/embed/zVXgRzXz_gg?rel=0&amp;showinfo=0">
                    <img src="/assets/img/sorubus-videos.jpg" alt="" width="100%">
                </a>
                <a href="javascript:;" data-title="Sorubüs Nedir?" data-href="https://www.youtube.com/embed/zVXgRzXz_gg?rel=0&amp;showinfo=0" class="title white">
                    Sorubüs Tanıtım
                </a>
            </div>
        </div>

        <div class="col-sm-12 col-md-6 bxPopup">
            <div class="bx bxPopup" style="border: none;">
                <a href="javascript:;" data-title="Dicikoç Mobil Marketlerde Yerini Aldı!" data-href="https://www.youtube.com/embed/WTNGbUzz1Gc?rel=0&amp;showinfo=0">
                    <img src="/assets/dicidici.png" alt="" width="100%">
                </a>
                <a href="javascript:;" data-title="Dicikoç Mobil Marketlerde Yerini Aldı!" data-href="https://www.youtube.com/embed/WTNGbUzz1Gc?rel=0&amp;showinfo=0" class="title white">
                    Dicikoç Mobil Marketlerde Yerini Aldı!
                </a>
            </div>
        </div>

        <div class="col-sm-12 col-md-6">
            <div class="bx bxPopup" style="border: none;">
                <a href="javascript:;"  data-title="Üyelere Özel Soru Çözüm Videolarımız" data-href="https://www.youtube.com/embed/ilkC-rI97kY?rel=0&amp;showinfo=0">
                    <img src="/assets/img/sorubus-tanitim.jpg" alt="" width="100%">
                </a>
                <a href="javascript:;" data-title="Üyelere Özel Soru Çözüm Videolarımız" data-href="https://www.youtube.com/embed/ilkC-rI97kY?rel=0&amp;showinfo=0" class="title white">
                    Üyelere Özel Soru Çözüm Videolarımız
                </a>
            </div>
        </div>

    </div>
</div>
-->


<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

<script src="/content/js/jquery-3.4.1.min.js"></script>
<script src="/content/plugins/wow/wow.min.js"></script>

<script src="/content/js/site.js"></script>
<script src="/content/js/popper.min.js"></script>
<script src="/content/bootstrap/js/bootstrap.min.js"></script>
<script>
    site.homepage();
</script>
<script type="text/javascript">

    window.criteo_q = window.criteo_q || [];
    var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
    window.criteo_q.push(
        { event: "setAccount", account: 49986 },

        {% if User is defined %}
    { event: "setEmail", email: "{{ User['email'] }}" },
    {% endif %}
    { event: "setSiteType", type: deviceType },

    { event: "viewHome" }
    );

</script>