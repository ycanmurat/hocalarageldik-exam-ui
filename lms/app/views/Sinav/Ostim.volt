<!--<script src="/assets/js/jquery.countdown.min.js"></script>
<script>
$(document).ready(function(){
    $('#clock').countdown('2019/04/27 10:00:00')
    .on('update.countdown', function(event) {
      var format = '%H Saat %M Dakika %S Saniye Kaldı!';
      if(event.offset.totalDays > 0) {
        format = '%-d Gün ' + format;
      }
      if(event.offset.weeks > 0) {
        format = '%-w Hafta ' + format;
      }
      $(this).html(event.strftime(format));
    })
    .on('finish.countdown', function(event) {
      $(this).html('Sınav tamamlandı!')
        .parent().addClass('disabled');

    });
    
        
    $('#clocks').countdown('2019/04/28 10:00:00')
    .on('update.countdown', function(event) {
      var format = '%H Saat %M Dakika %S Saniye Kaldı!';
      if(event.offset.totalDays > 0) {
        format = '%-d Gün ' + format;
      }
      if(event.offset.weeks > 0) {
        format = '%-w Hafta ' + format;
      }
      $(this).html(event.strftime(format));
    })
    .on('finish.countdown', function(event) {
      $(this).html('Sınav Bitti!')
        .parent().addClass('disabled');

    });
    
});
</script>
<link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600,700,900&subset=latin-ext" rel="stylesheet">

<style>
    .tit{
        font-family: 'Titillium Web', sans-serif !important;
    }
    .uyar{
        background: #ff3838;
        color:#fff !important;
    }
    #clock{
        padding: 20px;
        display: block;
    }
</style>-->

<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="checkmark box icon"></i>
                  <div class="content">
                    Türkiye Geneli Deneme Sınavı
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> Türkiye Geneli Deneme Sınavı</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>



<div id="entries">
    <div class="container">
        
        <div class="row mbBot info-line">
            <div class="col-12 mbBot">
                
                
                <div class="text-center">
                    <div class="ui huge header countdown text-center tit uyar">
                        <span id="clock"></span>
                    </div>
                </div>
                
                <div class="text-center">
                    <br>
                    <!--p class="text-center">Ostim Türkiye Geneli Online Deneme Sınavına katılmak için öncelikle katılım formunu doldurmanız gerekiyor. Aşağıdaki butona tıklayıp katılım formunu doldurabilirsiniz.</p-->
                    <!--<a href="/index/Ostim" class="btn btn-lg btn-danger">Ostim Türkiye Geneli Online Deneme Sınavı Katılım Formu</a>-->
                   
                    <br>
                    <br>
                    <a href="https://www.hocalarageldik.com/sinav/ostim-deneme-sinavi/ostim-turkiye-geneli-tyt-deneme/53" class="btn btn-lg btn-success" disabled>TYT Deneme Sınavına Katıl</a>
                    <a href="https://www.hocalarageldik.com/sinav/ostim-deneme-sinavi/ostim-turkiye-geneli-ayt-deneme/54" class="btn btn-lg btn-info" disabled>AYT Deneme Sınavına Katıl</a>
                    
                    
                    
                </div>

                
            </div>
        
        
       <div class="col-sm-7 vcenter black">
            <h2 class="ui  aligned header">Türkiye Geneli Ücretsiz  Online Deneme Sınavı</h2>
            
            <p class="text-justify p-size"><span>2019 YKS öncesi etkili bir ölçme-değerlendirme yapabileceğiniz Deneme sınavını büyük bir özenle hazırladık. Ostim Teknik üniversitesinin katkılarıyla hazırlanan
            TYT-AYT denemelerindeki sorular ÖSYM’nin yeni nesil soru tarzları dikkate alınarak her bir branş için birden fazla hocamızla yazıldı. Amacımız, 
            Sınavlara kısa bir süre kala sağlıklı analizler yapabileceğiniz denemeleri sizlerle buluşturmak. Ücretsiz olarak girebileceğiniz bu denemeler,
            Ostim Teknik Üniversitesinin katkılarıyla ödüllü ve sürpriz hediyeleri ile sizlerle buluşuyor.</span></p>
            
             
        </div>
        
        
        
        
        <div class="col-sm-5 mbBot">
            <img src="/assets/img/ostim_logo.png" class="img-fluid" alt="">
            <h5 class="text-right" style="font-weight: 900">KATKILARIYLA</h5>
        </div>
        
        <div class="col-sm-12 mbBot">
           
            <h2 class="ui  aligned header">Türkiye Geneli Online Deneme Sınavlarına ait genel bilgi ve koşullar; </h2>
            
            <!--<p class="text-justify p-size">  Vero aliquid voluptas expedita ex ducimus maiores, maxime.</p>-->
            
            <ul class="text-justify">
                <li>TYT deneme sınavı <b>27 Nisan Cumartesi saat 10.00</b></li>
                <li>AYT deneme sınavı <b>28 Nisan Pazar saat 10.00</b>’da Tüm Türkiye’den katılan öğrenciler arasında aynı anda yapılacaktır.</li>                
                <li>Sınav sonuçları sınavlardan 2 gün sonra site üzerinden yayınlanacak, öğrenciler kendi hesaplarıyla giriş yaparak sonuçlarını ve sıralamalarını görebileceklerdir.</li>
                <li>Deneme sınavlarına ait soruların tamamının çözümleri Hocalara Geldik YouTube Kanalında yayınlanacak.</li>
                <li>Sınavda ilk üç sırayı alan öğrencilere Ostim Teknik üniversitesini tercih etmeleri durumunda ek %25 burs verilecektir.</li>
                <li>İlk 50 öğrenciye TYT-AYT denemeleri, Ostim Teknik üniversitesinin hazırladığı kitap ve paketler hediye edilecektir. </li>
                <li>Ayrıca aynı hediyeler çekilişle belirlenecek 50 öğrenci arkadaşımıza da verilecektir.</li>
                <li>Sınav puanını, hedef girdiyse karşılaştırmasını, sınav süresini ( genel, ders bazlı, soru bazlı ) görüntüleyebilecektir.</li>
            </ul>
            
        </div>
        
        </div>
        
        
    </div>
</div>