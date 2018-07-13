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
	
	<link rel="apple-touch-icon" sizes="76x76" href="/old/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="/old/assets/img/favicon.png">
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:600">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <link rel="stylesheet" href="/old/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/old/assets/css/material-kit.css" />

	<link rel="stylesheet" href="/assets/css/style.css?v=2" />
	<script src="/old/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="/old/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/old/assets/js/material.min.js"></script>

	<script src="/old/assets/js/material-kit.js" type="text/javascript"></script>

	
	<style>
        body{
            padding-bottom: 100px;
            background: #fff;
        }
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
            background:#656567;
            border-color:#656567;
            color: #fff;
        }
        .soru.active{
            background: #e463e1;
            border: 1px solid #e463e1;
        }
        
        .soru.active_bak{
            background: #ffa812;
            border: 1px solid #ffa812;
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
        .siklar,.siklar_{
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
        
        .siklar_.dogru,.soru.dogru{
            background: #2ecc71;
            border-color: #27ae60;
            color: #fff;
        }
        
        .siklar_.yanlis,.soru.yanlis{
            background: #e74c3c;
            border-color: #c0392b;
            color: #fff;
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
                    
                    $('.say_'+oncekiId).removeClass('active_bak');
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
            
            
            /* Prev */
            $('.s_prev').click(function(){
                var id = $('.soru.active').prev('.soru').data('id');
                if(id){
                    $('.soruimg').hide();
                    $('.soru_'+id).show();
                    $('.soru').removeClass('active');
                    $('.say_'+id).addClass('active');


                    $('.sikla').hide();
                    $('.siklar_'+id).show();

                    $('.soru.active').closest('.Dersler').find('.SoruSaydir').show();
                }else{
                    var id = $('.soru.active').closest('.Dersler').prev().find('.soru').last().data('id');
                    if(id){
                        $('.soruimg').hide();
                        $('.soru_'+id).show();
                        $('.soru').removeClass('active');
                        $('.say_'+id).addClass('active');

                        $('.sikla').hide();
                        $('.siklar_'+id).show();

                        $('.soru.active').closest('.Dersler').find('.SoruSaydir').show();
                    }else{
                        $('#MessageModal').modal('show');
                    }
                }
            });
            
            /* Next */ 
            
            $('.s_next').click(function(){
                var id = $('.soru.active').next('.soru').data('id');
                if(id){
                    $('.soruimg').hide();
                    $('.soru_'+id).show();
                    $('.soru').removeClass('active');
                    $('.say_'+id).addClass('active');
                    

                    $('.sikla').hide();
                    $('.siklar_'+id).show();
                    $('.soru.active').closest('.Dersler').find('.SoruSaydir').show();
                }else{
                    var id = $('.soru.active').closest('.Dersler').next().find('.soru').data('id');
                    if(id){
                        $('.soruimg').hide();
                        $('.soru_'+id).show();
                        $('.soru').removeClass('active');
                        $('.say_'+id).addClass('active');

                        $('.sikla').hide();
                        $('.siklar_'+id).show();
                        $('.soru.active').closest('.Dersler').find('.SoruSaydir').show();
                    }else{
                        $('#MessageModal').modal('show');
                    }
                }
            });
            
            /* Look Next */
            $('.s_next_bak').click(function(){
                var id = $('.soru.active').data('id');
                var id_next = $('.soru.active').next('.soru').data('id');
                $('.say_'+id).addClass('active_bak');
                
                if(id_next){
                    $('.soruimg').hide();
                    $('.soru_'+id_next).show();
                    $('.soru').removeClass('active');
                    $('.say_'+id_next).addClass('active');
                    
                    $('.sikla').hide();
                    $('.siklar_'+id_next).show();
                    $('.soru.active').closest('.Dersler').find('.SoruSaydir').show();
                }
                
            });
            
            
            /* Minute */
            var minute = 0;
            setInterval(function(){
                minute = minute + 1;
                $('#minute').val(minute);
            },1000);
            /* Minute */
            
            
            
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
            
            <div id="quizHeader" class="col-xs-12 hidden-xs navbar-fixed-top shadowBt">
                 <div class="col-xs-12"><h3 class="titlem">&nbsp;</h3></div>
            </div>
            
            <div class="col-xs-12 hidden-xs"><br/><br/><br/><br/></div>
            
            <div class="col-xs-12 col-sm-9">
                <?php
                    $b = 1;
                    foreach($Sinav as $Data){
                    ?>
                    <div class="Dersler_Soru">
                        <div class="SoruBas">
                            <?php
                                $a = 1;
                                foreach($Data['Sorular'] as $Soru){
                                   $cls ="";
                                   if($b != 1 || $a != 1){
                                       $cls = ' style="display:none;"';
                                   }
                                   
                                   
                                   echo '<img src="/Uploads/questions/'.$Soru['questions'].'" class="img-responsive soruimg soru_'.$Soru['ID'].'" alt=""'.$cls.'>';
                                   $a++;
                                }
                            ?>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <?php
                        $b++;
                    }
                ?>
            </div>
            <div class="col-sm-3 hidden-xs" id="Sorular">
            <?php
                $b = 1;
                foreach($Sinav as $Data){
                    ?>
                    <div class="Dersler">
                        <a href="javascript:;" class="Ders"><?php echo $Data['Sinav']['exam_name'] ?></a>
                        <div class="SoruSaydir Dersler_<?php echo $Data['Sinav']['ID'] ?>" <?php if($b != 1) echo ' style="display:none;"'; ?> >
                            <?php
                                $a = 1;
                                foreach($Data['Sorular'] as $Soru){
                                   $cls ='';
                                    if($a == 1){

                                    $cls = " active";

                                    }
                                    
                                       $Sonucum['A'] = 0;
                                       $Sonucum['B'] = 0;
                                       $Sonucum['C'] = 0;
                                       $Sonucum['D'] = 0;
                                       $Sonucum['E'] = 0;
                                       
                                       $cls .= '';

                                       if(isset($Soru['Cevap'])){
                                           if($Soru['result'] == $Soru['Cevap']['result']){
                                               $cls .= ' dogru ';
                                           }else{
                                               $cls .= ' yanlis ';
                                           }
                                        }
                                    
                                    echo '<a href="javascript:;" class="soru say_'.$Soru['ID'].$cls.'" data-id="'.$Soru['ID'].'">'.$a.'</a>';
                                    $a++;
                                }
                            ?>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <?php
                    $b++;
                }
            ?>
            </div>
            
            <div id="quizFooter" class="col-xs-12 navbar-fixed-bottom">
                
                <form action="" method="post">
                   <input type="hidden" name="minute" id="minute" value="0">
                    <div class="col-xs-6">
                    <?php
                        $b = 1;
                        foreach($Sinav as $Data) {
                            $sinav_ID = $Data['Sinav']['ID'];
                            foreach($Data['Sorular'] as $Soru){
                               $cls ="";
                               if($b != 1){
                                   $cls = ' style="display:none;"';
                               }
                               $b++;
                               
                               $Sonucum['A'] = 0;
                               $Sonucum['B'] = 0;
                               $Sonucum['C'] = 0;
                               $Sonucum['D'] = 0;
                               $Sonucum['E'] = 0;
                               
                               if(isset($Soru['Cevap'])){
                                   if($Soru['result'] == $Soru['Cevap']['result']){
                                       $Sonucum[$Soru['Cevap']['result']] = 1;
                                   }else{
                                       $Sonucum[$Soru['result']] = 1;
                                       $Sonucum[$Soru['Cevap']['result']] = 2;
                                   }
                                }
                                
                               ?>
                               <div class="col-xs-12 sikla siklar_<?php echo $Soru['ID'] ?>" data-id="<?php echo $Soru['ID'] ?>" data-sinav="<?php echo $sinav_ID ?>"<?php echo $cls; ?>>
                                    <input type="hidden" name="cevap[<?php echo $Soru['ID'] ?>]" value="">
                                    <a href="javascript:;" class="siklar<?php if(isset($_GET['qDate'])){ echo "_"; } if($Sonucum['A'] != 0){ if($Sonucum['A'] == 1) echo ' dogru '; if($Sonucum['A'] == 2) echo ' yanlis '; } ?>" data-val="A">A</a>
                                    <a href="javascript:;" class="siklar<?php if(isset($_GET['qDate'])){ echo "_"; } if($Sonucum['B'] != 0){ if($Sonucum['B'] == 1) echo ' dogru '; if($Sonucum['B'] == 2) echo ' yanlis '; } ?>" data-val="B">B</a>
                                    <a href="javascript:;" class="siklar<?php if(isset($_GET['qDate'])){ echo "_"; } if($Sonucum['C'] != 0){ if($Sonucum['C'] == 1) echo ' dogru '; if($Sonucum['C'] == 2) echo ' yanlis '; } ?>" data-val="C">C</a>
                                    <a href="javascript:;" class="siklar<?php if(isset($_GET['qDate'])){ echo "_"; } if($Sonucum['D'] != 0){ if($Sonucum['D'] == 1) echo ' dogru '; if($Sonucum['D'] == 2) echo ' yanlis '; } ?>" data-val="D">D</a>
                                    <a href="javascript:;" class="siklar<?php if(isset($_GET['qDate'])){ echo "_"; } if($Sonucum['E'] != 0){ if($Sonucum['E'] == 1) echo ' dogru '; if($Sonucum['E'] == 2) echo ' yanlis '; }  ?>" data-val="E">E</a>
                                </div>
                               <?php
                            }

                        }
                    ?>
                    </div>

                    <div class="col-xs-6 text-right">
                        
                        <button type="button" class="s_prev btn-sm btn btn-warning">
                             <i class="material-icons">navigate_before</i>
                        </button>
                        <button type="button" class="s_next btn-sm btn btn-warning">
                            <i class="material-icons">navigate_next</i>
                        </button>
                        
                        
                        
                        <?php
                            if(!isset($_GET['qDate'])){
                            ?>
                            <button type="button"  class="s_next_bak btn btn-sm btn-primary">Sonra Tekrar Bak</button>
                            <button class="btn btn-sm btn-danger">Testi Tamamla</button>
                            <?php
                            }
                        ?>
                        
                    </div>
                </form>
                
            </div>
            
        </div>
        
    </div>
    
    <!-- Mesaj Modal -->
    <div class="modal modal-danger fade" id="MessageModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header modal-header-danger">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title" id="exampleModalLabel">Sınav Bilgilendirme</h4>
          </div>
          <form method="post" action="/giris" id="loginForm">
              <div class="modal-body text-center">
                  <p>Son veya ilk sorudasınız ve devam edebileceğiniz başka bir soru yok.</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger modalBtn" data-dismiss="modal" >Anladım</button>
              </div>
          </form>
        </div>
      </div>
    </div>
    
</body>
</html>