
<section class="pageNav">
    <div class="container">
        <a href="/">Anasayfa</a>
        <span>{{ Paket['title'] }}</span>
    </div>
</section>

<section class="paketWallpaper paketWidget">
    <div class="paketShadow"></div>

    <div class="container position-relative">
        <img src="/content/images/desktopbg.png" alt="" class="bgImg dsktp" />
        <img src="/content/images/mobilBg.png" alt="" class="bgImg2 mbl" />

        <div class="paketWeb dsktp">
            <div class="paketBaslik">{{ Paket['title'] }}
            </div>
            <div class="paketIcerigi">
                <div class="item">
                     <img src="/content/upload/desktop.png" />
                    <div class="itemTitle"><a href="#">Benzersiz <span>Dijital</span> İçeriklerimiz</a></div>
                </div>

                <img src="/content/images/plus.png" class="plus" />

                <div class="item">
                    <img src="/content/upload/books.png" />
                    <div class="itemTitle"><a href="#"><span>6 Adet</span> Yeni Nesil Soru Bankası</a></div>
                </div>

                <div class="sil"></div>
            </div>
            <div class="fiyatlar">
                <div class="normalFiyat">{{ Paket['OldPrice'] -0 }} TL</div>
                <div class="indirimliFiyat">{{ Paket['Price'] -0 }}<span> TL</span> </div>
            </div>

            {{ PaketSatinAlButon }}
        </div>

        <div class="mbl" style="padding-top:50px">
            <div class="paketMobil mbl" >
                <div class="paketBaslik">TYT–AYT 2020  <span>FULL  PAKET</span></div>
                <div class="paketIcerigi">
                    <div class="item">
                        <a href="#"><img src="/content/upload/desktop.png" /></a>
                        <div class="itemTitle"><a href="#">Benzersiz <span>Dijital</span> İçeriklerimiz</a></div>
                    </div>

                    <img src="/content/images/plus.png" class="plus" />

                    <div class="item">
                        <a href="#"><img src="/content/upload/books.png" /></a>
                        <div class="itemTitle"><a href="#"><span>6 Adet</span> Yeni Nesil Soru Bankası</a></div>
                    </div>

                    <div class="sil"></div>
                </div>

                <div class="fiyatlar">
                    <div class="normalFiyat">{{ Paket['OldPrice'] -0 }} TL</div>
                    <div class="indirimliFiyat">{{ Paket['Price'] -0 }}<span> TL</span> </div>
                </div>
                {{ PaketSatinAlMobilButon }}
            </div>
        </div><!-- paketMobil end -->

    </div>
</section>

<section class="anlatim text-center">
    <div class="container position-relative">
        <img src="/content/images/anlatim.png" class="lineImg dsktp" />

        <div class="item matematik-turkce leftItem wow slideInRight" >
            <div class="inner">
                <p>Matematik ve Türkçe derslerine ait üyelere özel yeni nesil konu anlatım videoları</p>
                <img src="/content/images/anlatim/matematik-turkce.png" alt="" class="img" />
            </div>
        </div>

        <div class="pdfMain">
            <div class="item itemPdf rightItem wow slideInLeft" >
                <div class="inner ">
                    <p>Tüm Videoların İndirilebilir <span>PDF Notları</span></p>
                    <img src="/content/images/anlatim/pdf.png" alt="" class="img" />
                </div>
            </div>
            <div class="sil"></div>
            <img src="/content/images/anlatim/pdf2.png" alt="" class="itemPdf2" />
        </div>


        <div class="item soru-cozum leftItem wow slideInRight" data-wow-delay="0.1s">
            <div class="inner">
                <p><span>5000 Adet</span> Online Soru ve Çözüm Videosu İçeriği (<span>3 Adımda Tam Tekrar</span>)</p>
                <img src="/content/images/anlatim/soru-cozum.png" alt="" class="img" />
            </div>
        </div>

        <div class="item fizik rightItem wow slideInLeft" data-wow-delay="0.1s">
            <div class="inner">
                <p><span>5000 Soruluk</span> Online Fizik, Kimya ve Biyoloji Konu Testi İçeriği,
                    <br /><span>3000 Soruluk</span> Online Matematik ve Geometri Konu Testi İçeriği</p>
            </div>
            <img src="/content/images/anlatim/fizik.png" alt="" class="img" />
        </div>

        <div class="item sorubus leftItem wow slideInRight" data-wow-delay="0.1s">
            <div class="inner">
                <p><span>5000'e Yakın Sorubüs</span> Soru ve Çözüm Videosu İçeriği (9, 10,11. Sınıf Yazılı ve Sınav Soruları, Çözüm Videoları)</p>
                <img src="/content/images/anlatim/sorubus.png" alt="" class="img" />
            </div>
        </div>

        <div class="item deneme rightItem wow slideInLeft" data-wow-delay="0.2s">
            <div class="inner">
                <p>Online Deneme Sınavları:<br />
                    <span style="color:#067a88">15 Deneme</span>, <span style="color:#f74d5c">İndirilebilir PDF</span> <span>Döküman</span></p>
            </div>
            <img src="/content/images/anlatim/deneme.png" alt="" class="img" />
        </div>

        <div class="item video leftItem wow slideInRight" data-wow-delay="0.1s">
            <div class="inner">
                <p>Tüm denemelerin tamamı <span>video</span> çözümlü.
                    İster bilgisayarından çöz, istersen
                    çıkış al çöz.</p>
            </div>
            <img src="/content/images/anlatim/video.png" alt="" class="img" />
        </div>


        <div class="analizMain">
            <div class="item analiz rightItem wow slideInLeft" data-wow-delay="0.1s">
                <div class="inner">
                    <p>Detaylı Sınav Sonuçları ile Durumunu <span>Analiz Edebilme</span>, Hangi Soruyu <span>Ne Kadar Sürede</span> Çözdüğünü Görebilme, Çözdüğün Sorunun Ortalama <span>Cevaplama Süresi</span> Ne Kadar? Karşılaştırabilme</p>
                </div>
                <img src="/content/images/anlatim/analiz.png" alt="" class="img" />
            </div>
            <div class="sil"></div>
            <img src="/content/images/anlatim/analiz2.png" alt="" class="analizImg2" />
        </div>


        <div class="item klavuz leftItem wow slideInRight" data-wow-delay="0.0s">
            <div class="inner">
                <p>Hocaların <span>Çalışma Kılavuzu</span><br class="dsktp" /> (Hafta-Hafta Hangi Derse Nasıl Çalışmalı)</p>
            </div>
            <img src="/content/images/anlatim/klavuz.png" alt="" class="img" />
        </div>

        <div class="item mobil rightItem wow slideInRight" data-wow-delay="0.1s">
            <div class="inner">
                <p><span>Dicikoç</span> Mobil Uygulamasıyla Uyumlu Çalışma Kılavuzu</p>
            </div>
            <img src="/content/images/anlatim/mobil.png" alt="" class="img" />
        </div>

        <div class="item karnem leftItem wow slideInRight" data-wow-delay="0.0s">
            <div class="inner">
                <p><span>Karnem</span> (Genel Durumunu Değerlendirme)</p>
            </div>
            <img src="/content/images/anlatim/karnem.png" alt="" class="img" />
        </div>

        <div class="item store rightItem wow slideInLeft" data-wow-delay="0.2s">
            <div class="inner">
                <p>Mağazamız Üzerinden Kitap <br class="dsktp" />Alımlarında Ekstra <br class="dsktp" /><span>%5 İndirim</span></p>
            </div>
            <img src="/content/images/anlatim/shop.png" alt="" class="img" />
        </div>

        <div class="item erisim leftItem wow slideInRight" data-wow-delay="0.1s">
            <div class="inner">
                <p>Yıl Boyunca Eklenecek İçeriklere <span>Ücretsiz</span> Erişim.</p>
            </div>
            <img src="/content/images/anlatim/erisim.png" alt="" class="img" />
        </div>

    </div>

</section>

<section>
    <div class="container position-relative text-center">
        <div class="fWidget">
            <div class="box box1">
                <div class="inner">
                    <img src="/content/images/fullpaket.png" alt="" />
                    <div class="span">{{ Paket['BottomTittle']}}</div>
                </div>
            </div>
            <div class="box satinAl text-center">
                <a href="#">HEMEN SATIN AL</a>

                <div style="padding-top:20px; font-size:15px;font-style:italic; font-weight:400;color:#828282">
                    <i style="font-weight:500;color:#292929">Temmuz 2019'a kadar sınırsız kullan</i>
                    <br />(2020 Paketlerimiz henüz satışta değildir)
                </div>
            </div>
            <div class="box box2">
                <div class="inner">
                    <img src="/content/images/fiyat2.png" alt="" />
                    <div class="span">
                        <div class="fiyatlar">
                            <div class="normalFiyat">{{ Paket['OldPrice'] -0 }} TL</div>
                            <div class="indirimliFiyat">{{ Paket['Price'] -0 }}<span> TL</span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- fWidget end -->

        <div class="fbook">
            <div class="lbl">Paket Bitiş Tarihi : <div>01 Temmuz 2021</div></div>
            <img src="/content/images/book.png" alt="" class="img" />

        </div>

    </div>
</section>
<script>
    site.paket();
</script>