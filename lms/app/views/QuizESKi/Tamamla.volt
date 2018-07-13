<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    
    <meta name="author" content="Yadigar Onur FIÇICI"> 
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
        
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
	
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="/old/assets/img/favicon.png">
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:600">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <link rel="stylesheet" href="/old/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/old/assets/css/material-kit.css" />

	<link rel="stylesheet" href="/old/assets/css/style.css?v=2" />
	<script src="/old/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="/old/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/old/assets/js/material.min.js"></script>

	<script src="/old/assets/js/material-kit.js" type="text/javascript"></script>

	
	<style>
        body.quiz a,body.quiz a:hover,body.quiz a:focus{
            text-decoration: none !important;
        }
        #quizHeader {
            background: #2D5EA8;
            color:#fff;
        }
        #quizHeader > .text-right{
            padding-top: 17px;
        }
        
        #quizFooter{
            background: #5091F5;
            padding: 5px 0;
        }
        .soru{
            width: 31px;
            height: 31px;
            line-height: 31px;
            text-align: center;
            margin:2px 2px 10px 2px;
            display: block;
            float:left;
            border: 1px solid #5091F5;
            background: #5091F5;
            color:#fff;
            font-size:12px;
            font-weight: 600;
            border-radius: 50%;
        }
        .soru:hover,.soru:focus,.soru.ok{
            background:#1a1a1a;
            border-color:#1a1a1a;
            color: #fff;
        }
        .soru.active{
            background: #DC2328;
            border: 1px solid #BF1619;
        }
        #Sorular{
            border-left:1px solid #ddd;
            padding-top:90px;
            padding-bottom:90px;
            position: fixed;
            height: 100%;
            right: 0;
            overflow: hidden;
            overflow-y: scroll;
        }
        #Sorular::-webkit-scrollbar-track
        {
            background-color: #fff;
        }

        #Sorular::-webkit-scrollbar
        {
            width: 6px;
            background-color: #fff;
        }

        #Sorular::-webkit-scrollbar-thumb
        {
            background-color: #2D5EA8;
            border-radius: 5px;
        }
        .siklar{
            margin-top: 5px;
            width: 35px;
            height: 35px;
            line-height: 35px;
            float:left;
            text-align: center;
            border-radius: 50%;
            margin-right: 10px;
            background: #fff;
            border:1px solid #ddd;
            font-weight: 600;
            font-size:13px;
        }
        .siklar:hover,.siklar.active,.siklar:focus{
            background: #FF9800;
            border-color: #FF9800;
            color: #1a1a1a;
        }
        .Ders{
            display: block;
            background: #1a1a1a;
            color:#fff;
            padding: 10px;
            font-size:12px;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        .Ders:hover,.Ders:focus{
            background: #ddd;
            color: #1a1a1a;
            text-decoration: none;
        }
    </style>
    
    <script>
        $(document).ready(function(){

            $('.Ders').click(function(){
               $('.SoruSaydir').stop().slideUp('slow');
               $(this).next('.SoruSaydir').stop().toggle('slow');
               Title();
            });
            
            $('.soru').click(function(){
                var id = $(this).data('id');
                $('.soruimg').hide();
                $('.soru_'+id).show();
                $('.soru').removeClass('active');
                $(this).addClass('active');
                
                $('.sikla').hide();
                $('.siklar_'+id).show();
                Title();
            });
            
            $('.siklar').click(function(){
               
                var th = $(this);
                var thParent = $(this).closest('.col-xs-12');
                
                thParent.find('.siklar').removeClass('active');
                
                th.addClass('active');
                
                thParent.find('input').val(th.data('val'));
                
                var oncekiId = thParent.data('id');
                
                var id = thParent.next().data('id');
                if(id){
                    $('.soruimg').hide();
                    $('.soru_'+id).show();
                    $('.soru').removeClass('active');
                    $('.say_'+id).addClass('active');
                    $('.say_'+oncekiId).addClass('ok');

                    $('.sikla').hide();
                    $('.siklar_'+id).show();

                    $(".Dersler_"+thParent.next().data('sinav')).show();
                }else{
                    $('.say_'+oncekiId).addClass('ok');
                    $('#MessageModal').modal('show');
                }
                Title();
                
            });
            
           Title();
            
        });
        
        function Title(){
            var title = $('.soru.active').closest('.SoruSaydir').closest('.Dersler').find('a').html();
            $('.titlem').html(title);
        }
        
    </script>
	
</head>
<body class="quiz">
    
    <div class="container-fluid">
        
        <div class="row">
            
            <div id="quizHeader" class="col-xs-12 navbar-fixed-top shadowBt">
                 <div class="col-xs-12"><h3 class="titlem">Sınavı Tamamladınız!</h3></div>
            </div>
            
            <div class="col-xs-12"><br/><br/><br/><br/></div>
            
            <h2 style="margin-bottom:20px;" class="text-center">Sınav başarılı bir şekilde tamamlandı!</h2>
            
            <div class="col-xs-offset-3 col-xs-6 text-center">
                
                
                
                
                <table class="table">
                    <tr>
                        <th class="col-xs-8">Toplam Soru</th>
                        <th class="col-xs-1">:</th>
                        <td class="col-xs-3">
                            <?php echo ($True + $False + $Empty); ?>
                        </td>
                    </tr>
                    <tr>
                        <th>Doğru Cevap</th>
                        <th>:</th>
                        <td><?php echo $True; ?></td>
                    </tr>
                    <tr>
                        <th>Yanlış Cevap</th>
                        <th>:</th>
                        <td><?php echo $False; ?></td>
                    </tr>
                    <tr>
                        <th>Boş Bırakılan</th>
                        <th>:</th>
                        <td><?php echo $Empty; ?></td>
                    </tr>
                    <?php
                        if(isset($User)){
                    ?>
                    <tr>
                        <td colspan="3">
                            <a href="<?php echo $_SERVER['REQUEST_URI']?>&qDate=<?php echo $Tarih ?>" class="btn btn-lg btn-success">Sonuçları İncele</a>
                        </td>
                    </tr>
                    <?php
                    }
                    ?>
                </table>
                
            </div>
                
                <div class="clearfix"></div>
                
                <?php
                    foreach($Sonuclar as $Sonuc){
                        
                        ?>
                            <div class="container">
                                <div class="col-xs-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                        <tr>
                                            <th colspan="6" class="text-center success" style="padding:10px;">
                                                <?php echo $Sonuc[0]['exam_name'] ?>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th class="text-center">Sıra</th>
                                            <th class="text-center">Kullanıcı Adı</th>
                                            <th class="text-center">Doğru</th>
                                            <th class="text-center">Yanlış</th>
                                            <th class="text-center">Boş</th>
                                            <th class="text-center">Çözme Süresi</th>
                                        </tr>
                                        <?php
                                            $a = 0;
                                            foreach($Sonuc as $List){
                                            $a++;
                                            
                                             $So = json_decode($List['exam_data']);
                                             
                                            
                                            ?>
                                            <tr>
                                                <td class="text-center"> <?php echo $a; ?></td>
                                                <td class="text-center"><?php echo $List['username'] ?></td>
                                                <td class="text-center"><?php echo $So[0]; ?></td>
                                                <td class="text-center"><?php echo $So[1]; ?></td>
                                                <td class="text-center"><?php echo $So[2]; ?></td>
                                                <td class="text-center"><?php echo gmdate("H:i:s", $List['minute']); ?></td>
                                            </tr>
                                            <?php
                                            }
                                        ?>
                                    </table>
                                    </div>
                                </div>
                            </div>
                        <?php
                        
                    }
                ?>
                <div class="clearfix"></div>
                
                
            

        </div>
        
    </div>
    

    
</body>
</html>