<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Konu Testleri - Deneme Sınavları - Hocalara Geldik</title>
    
    <meta charset="utf-8" />
    <meta name="author" content="Yadigar Onur FIÇICI ve Hocalara Geldik Ekibi">

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
    <link rel="manifest" href="/assets/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/assets/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-60438650-2"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Twitter -->
    <meta name="twitter:site" content="@HocalaraGeldik">
    <meta name="twitter:creator" content="@HocalaraGeldik">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="Konu Testleri - Deneme Sınavları - Hocalara Geldik">
    <meta name="twitter:description" content="Konu Testleri - Deneme Sınavları - Hocalara Geldik">
    <meta name="twitter:image" content="https://www.hocalarageldik.com/assets/favicon/twitter.png">
    
    <!-- Facebook -->
    <meta property="og:url" content="https://wwww.hocalarageldik.com<?php echo $_SERVER['REQUEST_URI']; ?>">
    <meta property="og:title" content="Konu Testleri - Deneme Sınavları - Hocalara Geldik">
    <meta property="og:description" content="Konu Testleri - Deneme Sınavları - Hocalara Geldik">
    <meta property="og:type" content="website">
     
    <meta property="og:image" content="http://www.hocalarageldik.com/assets/favicon/facebook.png">
    <meta property="og:image:secure_url" content="https://www.hocalarageldik.com/assets/favicon/facebook.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    
    <!-- Boostrap & jQuery -->
    <link rel="stylesheet" type="text/css" href="/assets/semantic/semantic.min.css?v=0.0.2">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css?v=0.0.2">
    <link rel="stylesheet" href="/assets/css/style.css?v=0.0.2">
    <link rel="stylesheet" href="/assets/css/font-awesome.min.css?v=0.0.2">
    
    <script src="/assets/js/jquery-3.2.1.min.js?v=0.0.2"></script>
    <script src="/assets/js/popper.min.js?v=0.0.2"></script>
    <script src="/assets/js/bootstrap.js?v=0.0.2"></script>
    <script src="/assets/semantic/semantic.min.js?v=0.0.2"></script>
    <script src="/assets/js/jquery.validate.min.js?v=0.0.2"></script>
    <script src="/assets/js/jquery.maskedinput.min.js?v=0.0.2"></script>
    <script src="/assets/js/main.js?v=0.0.4"></script>
    
    
    <script>
        $(document).ready(function(){
            
            /* Sidebar */
            $('.SidebarBtn, .RightMenu').click(function(){
                var Sidebar = $('#Sidebar');
                var SidebarWidth = parseInt($('#Sidebar').width())+30;
                if(Sidebar.hasClass('active')){
                    $('.SidebarBtn').find('i').addClass('sidebar').removeClass('remove');
                    Sidebar.stop().animate({
                        right: "-"+SidebarWidth
                      }, 150, function() {
                        Sidebar.removeClass('active');
                        Sidebar.css('display',"none");
                    });
                    $('main .col-md-8').stop().animate({ opacity: 1}, 150, function() {});
                    $('footer').stop().animate({ opacity: 1}, 150, function() {});
                }else{
                    $('.SidebarBtn').find('i').removeClass('sidebar').addClass('remove');
                    Sidebar.css('right','-'+SidebarWidth+"px");
                    Sidebar.css('display',"block");
                    Sidebar.stop().animate({
                        right: "0"
                      }, 150, function() {
                        Sidebar.addClass('active');
                    });
                    $('main .col-md-8').stop().animate({ opacity: 0.2}, 150, function() {});
                    $('footer').stop().animate({ opacity: 0}, 150, function() {});
                }
            });
            /* Sidebar */
            
            
            /* Sidebar Items A */
            $('.items a').click(function(){
                var winSize = parseInt($(document).width());
                if(winSize < 767){
                    var Sidebar = $('#Sidebar');
                    var SidebarWidth = parseInt($('#Sidebar').width())+30;
                    if(Sidebar.hasClass('active')){
                        $('.SidebarBtn').find('i').addClass('sidebar').removeClass('remove');
                        Sidebar.stop().animate({
                            right: "-"+SidebarWidth
                          }, 150, function() {
                            Sidebar.removeClass('active');
                            Sidebar.css('display',"none");
                        });
                        $('main .col-md-8').stop().animate({ opacity: 1}, 150, function() {});
                        $('footer').stop().animate({ opacity: 1}, 150, function() {});
                    }else{
                        $('.SidebarBtn').find('i').removeClass('sidebar').addClass('remove');
                        Sidebar.css('right','-'+SidebarWidth+"px");
                        Sidebar.css('display',"block");
                        Sidebar.stop().animate({
                            right: "0"
                          }, 150, function() {
                            Sidebar.addClass('active');
                        });
                        $('main .col-md-8').stop().animate({ opacity: 0.2}, 150, function() {});
                        $('footer').stop().animate({ opacity: 0}, 150, function() {});
                    }
                }
            });
            /* Sidebar Items A */
            
            
            
            
            /* İtem Click */
            $('.item .header').click(function(){
                $('.items.active').stop().animate({ height: 'toggle'}, 150, function() { $(this).removeClass('active'); });
                $(this).next().stop().animate({ height: 'toggle'}, 150, function() { $(this).addClass('active'); });
            });
            /* İtem Click */
            
            
            /* İtem Click A */
            $('.items a').click(function(){
                
                var dataID = $(this).data('id');
                
                /* Test Başlığı */
                var val = $(this).closest('.items').prev().html();
                $('.ui.tiny.header.text-left.white').html(val + " / "+ $(this).html() +". Soru");
                
                /* Soru Butonu İşlemleri */
                $('.items a.active').removeClass('active');
                $(this).addClass('active');
                
                /* Soru İşlemleri */
                $('.Soru').hide();
                $('.Soru.active').removeClass('active');
                $('#Soru_'+dataID).show().addClass('active');
                isaretliMi();
                
            });
            /* İtem Click A */
            
            /* Next */
            $('.next').click(function(){
                if($('.items a.active').next().next().index() > -1){
                    var activeSoru = $('.items a.active').next();
                    var dataID = activeSoru.data('id');

                    /* Test Başlığı */
                    var val = activeSoru.closest('.items').prev().html();
                    $('.ui.tiny.header.text-left.white').html(val + " / "+ activeSoru.html() +". Soru");

                    /* Soru Butonu İşlemleri */
                    $('.items a.active').removeClass('active');
                    activeSoru.addClass('active');

                    /* Soru İşlemleri */
                    $('.Soru').hide();
                    $('.Soru.active').removeClass('active');
                    $('#Soru_'+dataID).show().addClass('active');
                }else{
                    
                    if($('.items a.active').closest('.items').next().index() > -1){
                        $('.items a.active').closest('.items').next().trigger( "click" );
                        var activeSoru = $('.items a.active').closest('.items').next().next().find('a').first().first();
                        var dataID = activeSoru.data('id');

                        /* Test Başlığı */
                        var val = activeSoru.closest('.items').prev().html();
                        $('.ui.tiny.header.text-left.white').html(val + " / "+ activeSoru.html() +". Soru");

                        /* Soru Butonu İşlemleri */
                        $('.items a.active').removeClass('active');
                        activeSoru.addClass('active');

                        /* Soru İşlemleri */
                        $('.Soru').hide();
                        $('.Soru.active').removeClass('active');
                        $('#Soru_'+dataID).show().addClass('active');
                        
                        var val = $('.items a.active').closest('.items').prev().html();
                        $('#UyariMessages').html(" Yeni teste geçildi. <b>"+ val + "</b> testinin <b>ilk</b> sorusundasınız!");
                        $('#UyariMessage').modal('show');
                        checkEt(val);
                        
                    }else{
                        var val = $('.items a.active').closest('.items').prev().html();
                        $('#UyariMessages').html("<b>"+ val + "</b> testinin <b>son</b> sorusundasınız!");
                        $('#UyariMessage').modal('show');
                        checkEt(val);
                    }
                }
                
                isaretliMi();
                
            });
            /* Next */
            
            /* Prev */
            $('.prev').click(function(){
                if(parseInt($('.items a.active').html()) > 1){
                    var activeSoru = $('.items a.active').prev();
                    var dataID = activeSoru.data('id');

                    /* Test Başlığı */
                    var val = activeSoru.closest('.items').prev().html();
                    $('.ui.tiny.header.text-left.white').html(val + " / "+ activeSoru.html() +". Soru");

                    /* Soru Butonu İşlemleri */
                    $('.items a.active').removeClass('active');
                    activeSoru.addClass('active');

                    /* Soru İşlemleri */
                    $('.Soru').hide();
                    $('.Soru.active').removeClass('active');
                    $('#Soru_'+dataID).show().addClass('active');
                }else{
                    if($('.items a.active').closest('.items').prev().index() > 0){
                        
                        $('.items a.active').closest('.items').prev().prev().prev().trigger( "click" );
                        var activeSoru = $('.items a.active').closest('.items').prev().prev().find('a').last().first();
                        var dataID = activeSoru.data('id');

                        /* Test Başlığı */
                        var val = activeSoru.closest('.items').prev().html();
                        $('.ui.tiny.header.text-left.white').html(val + " / "+ activeSoru.html() +". Soru");

                        /* Soru Butonu İşlemleri */
                        $('.items a.active').removeClass('active');
                        activeSoru.addClass('active');

                        /* Soru İşlemleri */
                        $('.Soru').hide();
                        $('.Soru.active').removeClass('active');
                        $('#Soru_'+dataID).show().addClass('active');
                        
                        var val = $('.items a.active').closest('.items').prev().html();
                        $('#UyariMessages').html("Yeni teste geçildi. <b>"+ val + "</b> testinin <b>son</b> sorusundasınız!");
                        $('#UyariMessage').modal('show');
                        checkEt(val);
                    }else{
                        var val = $('.items a.active').closest('.items').prev().html();
                        $('#UyariMessages').html("<b>"+val + "</b> testinin <b>ilk</b> sorusundasınız!");
                        $('#UyariMessage').modal('show');
                        checkEt(val);
                    }
                }
                isaretliMi();
            });
            /* Prev */
            
            
            /* Sonra Bak */
            $('.ques').click(function(){
                $('.items a.active').addClass('bak');
                /* Next */
                $( ".next" ).trigger( "click" );
                
                isaretliMi();
            });
            /* Sonra Bak */
            
            <?php
                if(empty($ResultKey)){
                    ?>
            $('.siklar button').click(function(){
                var Cevap = $(this).html();
                $(this).addClass('active');
                $('.Soru.active').find('.Cevap').val(Cevap);
                $('.items a.active').removeClass('bak').addClass('isaretli');
                
                /* Next */
                $( ".next" ).trigger( "click" );
                
                isaretliMi();
            });
                    <?php
                }    
            ?>
            
            
            $('.checkBtn').click(function(){
                var Message = '';
                if($('.items').length > 0){
                    var testSay = $('.items').length;
                    var soruSay = $('.items a').length;
                    Message = Message+" Bu sınav içerisinde <b>"+testSay+"</b> test ve <b>"+soruSay+"</b> soru bulunuyor.<br />";
                }
                
                var bakSay = $('.items a.bak').length;
                var bosSay = 0;
                console.log(bakSay + " Bakılacak Soru!");
                $('input.Cevap').each(function(){
                    if($(this).val() == ''){
                        bosSay = bosSay + 1;
                    }
                });
                console.log(bosSay + " Boş Soru!");
                Message = Message + "<b>" + bakSay + "</b> Soruyu sonradan tekrar bakmak üzere işaretlediniz ve <b>"+bosSay+"</b> soruyu boş bıraktınız.";
                
                $('#UyariMessagea').find('.message').html(Message);
                $('#UyariMessagea').find('.header').html("Testi tamamlamak istediğinize emin misiniz?");
                $('#UyariMessagea').modal('show');
                
                
                $('#UyariMessagea').find('.Submit').html('<i class="checkmark icon"></i> Sınavı Bitir');
                $('#UyariMessagea').find('.red').html('<i class="remove icon"></i> Sınava Dön');
                
            });
            
            var Sayd = 0;
            var DakikaSubmit = Math.floor($('.items a').length / 4.5);
            var DakikaSubmit = Math.floor($('.items a').length / 1240);
            
            var SaniyeSubmit = DakikaSubmit * 60;
            var HesapLa = Math.ceil((SaniyeSubmit - Sayd) / 60);
            
            
            
            
            
            <?php
                if(empty($ResultKey)){
            ?>
            setInterval(function(){
                Sayd = Sayd + 1;
                HesapLa = Math.ceil((SaniyeSubmit - Sayd) / 60);
                console.log(Sayd + " - " + Math.ceil(Sayd / 60) + " - "+ HesapLa);
            },1000);
            <?php
                }
            ?>
                
                
                
                
            $('.Submit').click(function(){
                
                if($(this).html() == '<i class="checkmark icon"></i> Buna Rağmen Çık'){
                    window.location.href = '/';
                    window.close();
                    
                }
                
                if(Sayd >= SaniyeSubmit){
                    $('#UyariMessagea').find('.header').html('Lütfen bekleyiniz...');
                    $('#UyariMessagea').find('.message').html('Test tamamlanıyor, lütfen bekleyiniz...');
                    $(this).attr('disable','true');
                    $('#UyariMessagea').find('.actions').hide();
                    
                    setTimeout(function(){
                        $('form').submit();
                    },3000);
                }else{
                    $('#UyariMessagea').find('.header').html('UYARI');
                    $('#UyariMessagea').find('.message').html(DakikaSubmit+' dakika içerisinde sınavı tamamlamayı seçerseniz sınavınız değerlendirmeye alınmayacaktır!<br/> Sınavı minimum <b>'+HesapLa+' dakika</b> sonra tamamlayabilirsiniz.');
                    
                    $('#UyariMessagea').find('.Submit').html('<i class="checkmark icon"></i> Buna Rağmen Çık');
                    $('#UyariMessagea').find('.red').html('<i class="remove icon"></i> Devam Et');

                }
                
            });
            
            <?php
                if(empty($ResultKey)){
                ?>
                setInterval(function(){
                    var Sure = parseInt($('.Soru.active').find('.Sure').val());
                    if($('.Soru.active').find('.Cevap').val() == ''){
                        $('.Soru.active').find('.Sure').val(Sure + 1);
                    }
                },1000);
                <?php
                }    
            ?>
            
            $('.siklar button').focus(function(event) {
                $(this).focusout();
                console.log('Blur');
                event.target.blur();
            });
            
        });
        /* document ready */
        
        function convertSecond(s){
            if(s == 0 || s < 1 || typeof(s) == "undefined" || isNaN(s)){
                var ho =  "0:00";
            }else{
                var ho = (s-(s%=60))/60+(9<s?':':':0')+s
            }
            return ho;
        }
        
        
        
        
        function Baslat(){
            $('#Baslat').animate({ opacity: 0
                                 }, 250, function() {
                $('#Baslat').remove();
                $('.Sure').val('0');
                $('.Cevap').val('');
            });
        }
        
        function checkEt(testBaslik){
            if($('.items').length > 1){
                var testSay = $('.items').length;
                var soruSay = $('.items a').length;
                var html    = $('#UyariMessages').html();
                
                var winSize = parseInt($(document).width());
                if(winSize < 767){
                    $('.RightMenu').show();
                }
                var Message = "Bu sınav içerisinde <b>"+testSay+"</b> test ve <b>"+soruSay+"</b> soru bulunuyor.";
                 $('#UyariMessages').html(html + "<br/>" + Message);
            }
        }
        
        
        function isaretliMi(){
            $('.siklar button').removeClass('active');
            var Cevap = $('.Soru.active').find('.Cevap').val();
            if(Cevap != ''){
                $('.Sik_'+Cevap).addClass('active');
            }
            
            <?php
            if(!empty($ResultKey)){
                ?>
            var Cevap = $('.Soru.active').find('.Cevap').val();
            var DogruCevap = $('.Soru.active').find('.DogruCevap').val();
            var Sure = $('.Soru.active').find('.Sure').val();
            $('.siklar button').removeClass('active').removeClass('yanlis').removeClass('bos2').removeClass('dogru');
            if(Cevap == ''){
                $('.siklar button.Sik_'+DogruCevap).addClass('bos2');
            }else if(DogruCevap == Cevap){
                $('.siklar button.Sik_'+DogruCevap).addClass('dogru');
                console.log('Doğru : '+DogruCevap);
            }else{
                $('.siklar button.Sik_'+DogruCevap).addClass('dogru');
                $('.siklar button.Sik_'+Cevap).addClass('yanlis');
                console.log('Yanlış : '+Cevap);
            }
                $('#surems').html(convertSecond(Sure).toString());
                <?php
            }    
            ?>
        }
        
    </script>
    
    <style>
        html,body,div,a,img,span,b,p {
              -webkit-touch-callout: none;
                -webkit-user-select: none;
                 -khtml-user-select: none;
                   -moz-user-select: none;
                    -ms-user-select: none;
                        user-select: none;
        }
        .quiz{
            height: 100% !important;
            width: 100% !important;
            padding-top: 30px;
        }
        .quiz  header, .quiz  footer{
            padding: 0 !important;
            margin: 0 !important;
            border: none !important;
        }
        .quiz  footer > nav {
            margin-top: 0;
        }
        .ui.tiny.header{
            font-size: 1em !important;
        }
        .navbar-dark {
            padding: 6px 3px;
        }
        .left{
            text-align: left !important;
        }
        .SidebarBtn{
            font-size: 1.5rem;
            position: absolute;
            top:-7px;
            right: 12px !important;
            padding: 0 0px 0 3px;
        }
        .btn-secondary{
            background: #fff;
            color:#1a1a1a;
            font-weight: 900;
            border-radius: 50%;
            padding: 5px 10.8px;
            margin: 0 5px 0 0 !important;

        }
        .btn-secondary.active{
            background: #656567;
            color:#fff;
            
        }
        .siklar > .btn-secondary{
            cursor: pointer !important;
        }
        .siklar > .btn-secondary:focus,
        .siklar > .btn-secondary:hover
        {
            background: #fff !important;
            color:#1a1a1a !important;
            box-shadow: none !important;
            text-shadow: none !important;
            outline: none !important;
        }
        .btn-secondary:last-child{
            margin: 0 !important;
        }
        .btn-icon{
            background: #fff;
            color:#1a1a1a;
            width: 31px;
            height: 31px;
            text-align: center;
            font-weight: 900;
            border-radius: 50%;
            padding: 0 !important;;
            margin: 0 5px;
            font-size:1.1rem;
        }
        .btn-icon i.mleft{
            margin-left: -2px !important;
        }
        .btn-icon i.right{
            margin-left: 1px !important;
        }
        .prevBtn{
            background: #ff9900;
            border-color: #ff9900;
            color:#fff;
        }
        .ques,.quesa{
            background: #ff0094;
            border-color: #ff0094;
            color:#fff;
        }
        .checkBtn,.checkBtns{
            background: #0fc646;
            border-color: #0fc646;
            color:#fff;
        }
        
        .prevBtn:hover{
            background: #ff5d00;
            border-color: #ff5d00;
            color:#fff;
        }
        .ques:hover{
            background: #c40b74;
            border-color: #c40b74;
            color:#fff;
        }
        .checkBtn:hover{
            background: #118e36;
            border-color: #118e36;
            color:#fff;
        }
        .fixed-bottoms{
            position: fixed;
            bottom:0;
            left: 0;
            right: 0;
            z-index: 99;
        }
        .fixed-tops{
            position: fixed;
            top:0;
            left: 0;
            right: 0;
            z-index: 99999999;
        }
        .Soru{
            display: none;
        }
        .Soru.active{
            display: block !important;
        }
        .Soru img{
            width: 100%;
        }
        .clear{
            clear: both;
        }
        .item .header{
            background: #111;
            color:#fff;
            padding-left:15px;
            padding-right: 15px;
            border-radius: 4px;
            margin-bottom: 10px;
            clear: both;
            cursor: pointer;
        }
        
        .item .items{
            display: none; 
        }
        
        .item .items.active{
            display: block !important;
        }
        
        .item .items > a {
            width: 31px;
            height: 31px;
            line-height: 27px;
            text-align: center;
            display: block;
            font-size: .875rem;
            float:left;
            border-radius: 50%;
            margin: 0 3px 10px 3px;
            font-weight: 900;
            background: #5087f4;
            color:#fff;
            border:2px solid transparent;
        }

        .item .items > a:hover,
        .item .items > a:focus,
        .item .items a.isaretli{
            background: #656567;
        }
        
        .item .items > a.active{
            background: #111 !important;
        }
        
        .item .items > a.bak{
            
            background: #ff0094 !important;
        }
        
        .dogru{
            color:#fff !important;
            background: #0fc646 !important;
            border-color: #0fc646 !important;
        }
        
        .yanlis{
            color:#fff !important;
            background: #e30613 !important;
            border-color: #e30613 !important;
        }
        
        .bos{
            background: #fff;
            border-color: #2D5EA8;
            color: #2D5EA8;
        }
        
        .bos2{
            background: #5087f4 !important;
            border-color:  #0fc646 !important;
            color: #fff;
        }
        
        .btn-datas{
            background: #111 !important;
            border-color:  #111 !important;
            color: #fff;
        }
        
        .btn-datam{
            background: #707070 !important;
            border-color:  #707070 !important;
            color: #fff;
        }
        
        .tap-logo{
            position: absolute;
            top:0;
            left: 0;
            right: 0;
            bottom: 0;
            padding: 80px;
        }
        .tap-logo img {
            margin-top: -60px;
        }

        
        @media only screen and (max-width: 768px) {

            .Soru img{
                width: 96% !important;
            }
        }
        
        .Soru{
            padding-bottom: 33px;
        }
        
        #Sidebar {
            position: fixed;
            right: 0;
            height: 100%;
            word-wrap: break-word;
            overflow-y: scroll;
            border-left: 5px solid #2D5EA8;
            background: #fff;
        }
        
        #Sidebar .Sidebar{
            padding: 20px 0 80px 0;
            word-wrap: break-word;
            text-align: justify;
        }
        
        #UyariMessage{
            z-index: 999999999999999999;
        }
        #UyariMessages {
            line-height: 30px;
        }
        
        .ui.button{
            cursor: pointer;
        }
        


        @media only screen and (max-width: 767px) {
            #Sidebar{
                display: none;
            }
            #Sidebar {
                z-index: 9999;
            }

            #UyariMessage{
                z-index: 999999999999999999;
            }
        }
        
        @media only screen and (min-width: 768px) {
            .hide{ display: none; }

        }
        
        
        @media only screen and (min-width: 500px) {
            #Baslat > .container-fluid{
                padding: 0 50px;
            }
        }
        
        @media only screen and (max-width: 500px) {

            .Soru img{
                width: 95% !important;
            }
        }
        
        @media only screen and (min-width: 446px) {
            .xcol-12{
                -ms-flex: 0 0 50% !important;
                flex: 0 0 50% !important;
                max-width: 50% !important;
            }
            .btn-secondary, .btn-icon{
                margin: 0 5px 0 0 !important;
            }
            .xcol-12:nth-child(1){
                text-align: left !important;
            }
            .xcol-12:nth-child(2){
                text-align: right !important;
            }
           
        }
        
        @media only screen and (max-width: 446px){
            .btn-secondary, .btn-icon{
                margin: 5px 5px !important;
            }
        }

        @media only screen and (max-width: 576px) {
            .mb-cen{
                text-align: center !important;
            }
            .mb-left{
                text-align: left !important;
            }
            .mb-right{
                text-align: right !important;
            }
            .btn-secondary{
                margin: 5px 5px 10px 5px;
            }
        }
        .Baslat{
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: white;
            color:#111 !important;
            z-index: 2;
            line-height: 35px;
            font-weight: 900;
            overflow-y: scroll;
            z-index: 9999999;
        }
        
        #Baslat > .container-fluid{
            padding-top: 90px;
            padding-bottom: 50px;
        }
        
        .black { color:#111 !important; }
        
        @media screen and (orientation:portrait) {
           #Uyar{
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: #000;
                color:#111 !important;
                z-index: 2;
                line-height: 35px;
                font-weight: 900;
                overflow-y: scroll;
                z-index: 9999999999999999;
                display: block;
                overflow: hidden;
            }
        }
        @media screen and (orientation:landscape) {
           #Uyar{
                display: none !important;
            }
        }
    </style>
    
</head>
<body class="quiz" oncontextmenu="return false;">
    <div id="Uyar">
        <img src="/assets/img/mobil-cevir-dikey.jpg" width="100%" alt="">
    </div>
    
    <?php
    if(!empty($ResultKey)){
        ?>
        <script>
            $(document).ready(function(){
                $('#Ozet').modal('show');
            });
        </script>
        <?php
    }
    ?>
    
    <?php
        if(empty($ResultKey)){
        ?>
        <div id="Baslat" class="Baslat text-center vcenter">
            <div class="container-fluid black text-left">

                <div class="row" style="margin-top:-20px;">
                    <div class="col-12">
                        <div class="alert alert-danger text-center" style="line-height: 18px;">
                            <b>Dikkat:</b> İnternet bağlantınız kesilse bile pencereyi kapatmadan çözmeye devam edebilirsiniz. Sınav sonunda testi tamamla butonunana basmadan önce <b>internet bağlantınızın olduğundan emin olun.</b>
                        </div>
                    </div>
                    <div class="col-12">
                        İşaretler ne anlama geliyor?
                    </div>
                    <div class="col-12 col-sm-7 text-left">
                        <button type="button" class="btn btn-sm btn-icon prevBtn"><i class="mleft fa fa-angle-double-left"></i></button> Önceki Soruya Geç
                    </div>

                    <div class="col-12 col-sm-5 text-left ">
                        <button type="button" class="btn btn-sm btn-icon prevBtn"><i class="right fa fa-angle-double-right"></i></button> Sonraki Soruya Geç
                    </div>

                    <div class="col-12 col-sm-7 text-left ">
                        <button type="button" class="btn btn-sm btn-icon quesa"><i class="mleft fa fa-question"></i></button> Tekrar Bakmak İçin İşaretle
                    </div>

                    <div class="col-12 col-sm-5 text-left ">
                        <button type="button" class="btn btn-sm btn-icon checkBtns"><i class="fa fa-arrow-right"></i></button> Testi Tamamla
                    </div>

                    <div class="col-12 text-right">
                        <?php
                            if($Data['Type'] == 2)
                            {
                            ?>
                            <button class="btn btn-danger  " onclick="Baslat()"> Sınavı Başlat</button>
                            <?php
                            }else{
                            ?>
                            <button class="btn btn-danger  " onclick="Baslat()"> Testi Başlat</button>
                            <?php
                            }
                        ?>
                        
                    </div>

                </div>
            </div>

        </div>

    
    <form action="<?php echo $_SERVER['REQUEST_URI'] ?>&submit=true&Quiz_Key=<?php echo $Quiz_Key; ?>" method="post" id="quizForm">
         <?php
        }
    ?>      
        <input type="hidden" name="data" value="<?php echo $Crypt; ?>">
        <input type="hidden" name="UserID" value="<?php echo $UserID; ?>">
       
        <header>
            <nav class="fixed-tops navbar-dark white hg-menu bg-faded">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-11 text-left">
                            <span class="ui tiny header text-left white"><?php echo $Quiz[0]['exam_name']; ?> / 1. Soru</span>
                            <?php
                                if(isset($Data['Practice']) && (strtotime(date("Y-m-d H:i:s")) < strtotime($Data['Practice']['FinishDate'])) && empty($ResultKey)){
                                   echo '<span>/ Kalan Süre: <b id="surem">'.round($Data['Practice']['Time']/60).'</b> Dk.</span>';
                                    ?>
                                    
                                    <script>
                                        var sure = <?php echo round($Data['Practice']['Time']/60); ?>;
                                        setInterval(function(){
                                            sure = sure - 1;
                                            $('#surem').html(sure);
                                            if(sure <= 0){
                                                
                                                $('#UyariMessagea').find('.header').html('Sınav için verilen sürenin sonuna gelindi.');
                                                $('#UyariMessagea').find('.message').html('Test tamamlanıyor, lütfen bekleyiniz...');

                                                $('#UyariMessagea').find('.button').hide();
                                                $('#UyariMessagea').modal('show');

                                                setTimeout(function(){
                                                    $('form').submit();
                                                },6000);
                                                
                                            }
                                        },60000);
                                    </script>
                                    
                                    <?php
                                }
                                if(!empty($ResultKey)){
                                    echo '<span>/ Soru Çözüm Süresi: <b id="surems">0:00</b> </span>';
                                }
                            ?>
                        </div>
                        <div class="col-1 text-right hide">
                            <a href="javascript:;" class="SidebarBtn"><i class="sidebar icon"></i></a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <main class="container-fluid">
            <div class="row">

                <div class="col-12 col-sm-12 col-md-8">
                    <div class="text-center">


                        <?php
                            for($b = 0; $b < count($Quiz); $b++){
                                for($a = 0; $a < count($Quiz[$b]['Sorular']); $a++){
                                ?>
                                


                                <div class="Soru <?php if($b == 0 && $a == 0) echo 'active' ?>" id="Soru_<?php echo $Quiz[$b]['Sorular'][$a]['ID']; ?>">
                                    <img src="<?php echo $Quiz[$b]['Sorular'][$a]['base64_img']; ?>"><!-- Soru Resim -->


                                    <div class="tap-logo vcenter text-center">
                                        <img src="/assets/img/hg-opacity.png" class="img-fluid">
                                    </div><!---- Opcatiy ---->
                                    
                                    <?php
                                        $Sure = 0;
                                        $Cvp = '';
                                        if(!empty($ResultKey)){
                                            $Cvp = $Quiz[$b]['Sorular'][$a]['cevap']['Result'];
                                            $Sure = $Quiz[$b]['Sorular'][$a]['cevap']['Time'];
                                            ?>
                                            <input type="hidden" name="DogruCevap[<?php echo $Quiz[$b]['Sorular'][$a]['result']; ?>]" class="DogruCevap" value="<?php echo $Quiz[$b]['Sorular'][$a]['result']; ?>">
                                            
                                            <?php
                                            if($b == 0 && $a == 0){
                                            ?>
                                            <script type="text/javascript">
                                                $(document).ready(function(){
                                                    $('#surems').html(convertSecond(<?php echo $Sure; ?>).toString());
                                                });
                                            </script>
                                            <?php
                                            }
                                        }
                                        
                                    ?>
                                    
                                    
                                    <input type="hidden" name="Sure[<?php echo $Quiz[$b]['Sorular'][$a]['ID']; ?>]" class="Sure" value="<?php echo $Sure; ?>">
                                    
                                    <input type="hidden" name="Cevap[<?php echo $Quiz[$b]['Sorular'][$a]['ID']; ?>]" class="Cevap" value="<?php echo $Cvp; ?>">
                                    
                                    

                                </div><!---- Soru ---->
                                
                                <?php
                                }
                            }
                        ?>


                    </div><!-- Ortala -->
                </div><!---- Sorular ---->

                <div class="col-8 col-sm-6 col-md-4" id="Sidebar">
                    <div class="Sidebar">


                        <div class="item">



                            <?php
                                for($b = 0; $b < count($Quiz); $b++){
                                ?>
                                <div class="header"><?php echo $Quiz[$b]['exam_name']; ?></div>
                                <div class="items <?php if($b == 0) echo 'active'; ?>">
                                <?php
                                    for($a = 0; $a < count($Quiz[$b]['Sorular']); $a++){

                                        $cls = '';
                                        if($b == 0 && $a == 0) $cls = 'active';
                                        
                                        if(!empty($ResultKey)){
                                           
                                            if(empty($Quiz[$b]['Sorular'][$a]['cevap']['Result'])){
                                                $cls .= ' bos';
                                            }elseif($Quiz[$b]['Sorular'][$a]['cevap']['Result'] == $Quiz[$b]['Sorular'][$a]['result']){
                                                $cls .= ' dogru';
                                                
                                            }else{
                                                $cls .= ' yanlis';
                                            }
                                            if($a == 0 && $b == 0){
                                            ?>
                                            <script>
                                                $(document).ready(function(){
                                                    var Cevap = '<?php echo $Quiz[$b]['Sorular'][$a]['cevap']['Result'] ?>';
                                                    var DogruCevap = '<?php echo $Quiz[$b]['Sorular'][$a]['result']; ?>';
                                                    $('.siklar button').removeClass('active').removeClass('yanlis').removeClass('bos').removeClass('dogru');
                                                    
                                                    if(Cevap == ''){
                                                        $('.siklar button.Sik_'+DogruCevap).addClass('bos2');
                                                    }else if(DogruCevap == Cevap){
                                                        $('.siklar button.Sik_'+DogruCevap).addClass('dogru');
                                                        console.log('Doğru : '+DogruCevap);
                                                    }else{
                                                        $('.siklar button.Sik_'+DogruCevap).addClass('dogru');
                                                        $('.siklar button.Sik_'+Cevap).addClass('yanlis');
                                                        console.log('Yanlış : '+Cevap);
                                                    }
                                                    
                                                });
                                            </script>
                                            <?php
                                            }
                                        }                                        

                                    ?>
                                    <a href="#" class="<?php echo $cls; ?>" data-id="<?php echo $Quiz[$b]['Sorular'][$a]['ID']; ?>"><?php echo $a+1 ?></a>
                                    <?php
                                    }
                                ?>
                                    <div class="clear"></div>
                                </div><!-- .items -->
                                <?php
                                }
                            ?>



                        </div><!-- .item -->


                    </div><!-- .Sidebar -->
                </div><!-- #Sidebar -->

            </div><!-- .row -->
        </main><!-- .main -->

        <footer>
            <nav class="fixed-bottoms navbar-dark white hg-menu bg-faded">
                <div class="container-fluid">
                    <div class="row">
                        <div class="xcol-12 col-12 col-sm-6 text-left mb-cen siklar">
                            <button type="button" class="Sik_A btn btn-sm btn-secondary">A</button>
                            <button type="button" class="Sik_B btn btn-sm btn-secondary">B</button>
                            <button type="button" class="Sik_C btn btn-sm btn-secondary">C</button>
                            <button type="button" class="Sik_D btn btn-sm btn-secondary">D</button>
                            <button type="button" class="Sik_E btn btn-sm btn-secondary">E</button>
                        </div>
                        
                        <div class="xcol-12 col-12 col-sm-6 text-right mb-cen actionBtn">
                            
                            <?php
                                if(!empty($ResultKey)){
                                ?>
                                <a href="/" class="btn btn-sm btn-icon btn-datas"><i style="padding-top: 6px; !important" class="fa fa-home"></i></a>
                                <button type="button" class="btn btn-sm btn-icon btn-datam" onclick="$('#Ozet').modal('show');"><i class=" fa fa-file-text"></i></button>
                                <?php
                                }
                            ?>
                           
                            <button type="button" class="btn btn-sm btn-icon prevBtn prev"><i class="mleft fa fa-angle-double-left"></i></button>
                            <button type="button" class="btn btn-sm btn-icon prevBtn next"><i class="right fa fa-angle-double-right"></i></button>
                            <?php
                            if(empty($ResultKey)){
                            ?>
                            <button type="button" class="btn btn-sm btn-icon ques"><i class="mleft fa fa-question"></i></button>
                            <button type="button" class="btn btn-sm btn-icon checkBtn"><i class="fa fa-arrow-right"></i></button>
                             <?php
                            }
                            ?>
                        </div>
                       
                    </div>
                </div>
            </nav>
        </footer>
    <?php
        if(empty($ResultKey)){
        ?>
    </form>
    <?php
        }
    ?>
    
    <div class="ui basic modal" id="Ozet">
        <div class="ui text-center" id="Ozets">
            <?php
                if(!empty($ResultKey)){
                    if($Data['Type'] == 2){
                ?>
                
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th style="border-top: none; border-bottom: none;" >Test</th>
                                <th style="border-top: none; border-bottom: none;" class="text-center">Doğru</th>
                                <th style="border-top: none; border-bottom: none;"  class="text-center">Yanlış</th>
                                <th style="border-top: none; border-bottom: none;"  class="text-center">Boş</th>
                                <th style="border-top: none; border-bottom: none;"  class="text-center">Net</th>
                                <th style="border-top: none; border-bottom: none;"  class="text-center">Puan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                foreach($ozet as $test){
                                   if(!empty($test->Sinav)){
                                       echo '<tr>';
                                       echo '<th>'.@$test->Sinav.'</th>';
                                       echo '<td class="text-center">'.@$test->Dogru.'</td>';
                                       echo '<td class="text-center">'.@$test->Yanlis.'</td>';
                                       echo '<td class="text-center">'.@$test->Bos.'</td>';
                                       echo '<td class="text-center">'.@$test->Net.'</td>';
                                       echo '<td class="text-center">'.@$test->Puan.'</td>';
                                       echo '</tr>';
                                   }
                                }
                            ?>
                        </tbody>
                        <tfoot>
                            <?php
                                echo '<tr>';
                                echo '<td colspan="5" class="text-right">Toplam Puan:</td>';
                                echo '<th class="text-center">'.number_format(@$ozet->ToplamPuan,3).'</th>';
                                echo '</tr>';
                                if($Data['Practice']['true_false'] == '1'){
                                    echo '<tr>';
                                    echo '<td colspan="6" class="text-right text-upper">'.$Data['Practice']['false'].' Yanlış '.$Data['Practice']['true'].' Doğruyu Götürmüştür.</td>';
                                    echo '</tr>';
                                }



                            ?>
                        </tfoot>
                    </table>
                
                <?php
                    }else{
                    ?>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th style="border-top: none; border-bottom: none;" >Test</th>
                                <th style="border-top: none; border-bottom: none;" class="text-center">Doğru</th>
                                <th style="border-top: none; border-bottom: none;"  class="text-center">Yanlış</th>
                                <th style="border-top: none; border-bottom: none;"  class="text-center">Boş</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                foreach($ozet as $test){
                                   if(!empty($test->Sinav)){
                                       echo '<tr>';
                                       echo '<th>'.@$test->Sinav.'</th>';
                                       echo '<td class="text-center">'.@$test->Dogru.'</td>';
                                       echo '<td class="text-center">'.@$test->Yanlis.'</td>';
                                       echo '<td class="text-center">'.@$test->Bos.'</td>';
                                       echo '</tr>';
                                   }
                                }
                            ?>
                        </tbody>
                    </table>
                    <?php
                    }
                }
            ?>
        </div>
        <div class="actions text-right">
            <div class="ui red ok inverted button">
                <i class="remove icon"></i> Devam Et
            </div>
        </div>
    </div>
    
    <div class="ui basic modal" id="UyariMessage">
        <div class="ui icon text-center" id="UyariMessages">

        </div>
        <div class="actions text-center">
            <div class="RightMenu ui green ok inverted button" style="display: none;">
                <i class="checkmark icon"></i> Diğer Testleri Gör
            </div>
            <div class="ui red ok inverted button">
                <i class="remove icon"></i> Devam Et
            </div>
        </div>
    </div>
    
    <div class="ui basic modal" id="UyariMessagea">
        <div class="ui icon header text-center" id="UyariMessagesa">
            Testi tamamlamak istediğinize emin misiniz?
        </div>
        <div class="message text-center">
            
        </div>
        <div class="actions text-center">
            <div class="Submit ui green inverted button">
                <i class="checkmark icon"></i> Tamamla
            </div>
            <div class="ui red ok inverted button">
                <i class="remove icon"></i> Devam Et
            </div>
        </div>
    </div>
    <iframe src="/Sinav-Oluyorum" width="0" height="0" style="display: none;" frameborder="0"></iframe>
</body>
</html>