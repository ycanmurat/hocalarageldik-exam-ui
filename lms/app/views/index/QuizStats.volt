<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="warning sign icon"></i>
                  <div class="content">
                    {% if _data['Practice']['Name'] is defined %}
                        {{_data['Practice']['Name']}}
                    {% else %}
                        {% for Sinav in _ozet['Data'] %}
                            {{Sinav['Sinav']}}
                        {% endfor %}
                    {% endif %}
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/karnem"> Karnem</a></li>
              {% if _data['Practice']['Name'] is defined %}
                    <li class="breadcrumb-item"><a href="/karnem/deneme-sinavlari"> Deneme Sınavları</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> {{_data['Practice']['Name']}}</a></li>
              {% else %}
                    <li class="breadcrumb-item"><a href="/karnem/konu-testleri"> Konu Testleri</a></li>
                    {% for Sinav in _ozet['Data'] %}
                    <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> {{Sinav['Sinav']}}</a></li>
                    {% endfor %}
              {% endif %}
            </ol>
        </div>
        </div>
    </div>
</div>

<!-- cdnjs -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.6/jquery.lazy.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.6/jquery.lazy.plugins.min.js"></script>
<script>
$(function() {
    $('.lazy').Lazy();
});
</script>

<div class="container">
    <div class="row row-eq-height mbBot">

        <div class="col-12">
            {% if _data['Type'] == 2 %}
            <div class="row mbBot">
              <div class="col-12">
                  <div class="mbBot">
                      <table class="ui celled table ">
                          <thead>
                              <tr>
                                  <th class="text-center">Sınav Giriş Saati</th>
                                  <th class="text-center">Sınav Çıkış Saati</th>
                                  <th class="text-center">Katılımcı</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="text-center"><?php echo date("d.m.Y H:i:s", strtotime($_ozet['Start'])); ?></td>
                                  <td class="text-center"><?php echo date("d.m.Y H:i:s", strtotime($_ozet['End'])); ?></td>
                                  <td class="text-center">{{Katilimci['Toplam']}}</td>
                              </tr>
                          </tbody>
                      </table>
                  </div>

                  <table class="ui celled table">
                    <thead>
                        <tr>
                            <th>Test</th>
                            <th class="text-center">Doğru</th>
                            <th class="text-center">Yanlış</th>
                            <th class="text-center">Boş</th>
                            <th class="text-center">Net</th>
                            {% if _data['Practice']['ayt'] == 1 %}
                            <th class="text-center">Sayısal Puan</th>
                            <th class="text-center">Sözel Puan</th>
                            <th class="text-center"> Eşit Ağırlık Puan</th>
                            {% else %}
                            <th class="text-center">Puan</th>
                            {% endif %}
                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                           
                           
                            foreach($_ozet['Data'] as $test){
                               if(!empty($test['Sinav'])){
                                   echo '<tr>';
                                   echo '<th>'.@$test['Sinav'].'</th>';
                                   echo '<td class="text-center">'.@$test['Dogru'].'</td>';
                                   echo '<td class="text-center">'.@$test['Yanlis'].'</td>';
                                   echo '<td class="text-center">'.@$test['Bos'].'</td>';
                                   echo '<td class="text-center">'.@$test['Net'].'</td>';
                                   
                                   if($_data['Practice']['ayt'] == 1){
                                       echo '<td class="text-center">'.@$test['Sayisal_Puan'].'</td>';
                                       echo '<td class="text-center">'.@$test['Sozel_Puan'].'</td>';
                                       echo '<td class="text-center">'.@$test['Esit_Puan'].'</td>';
                                   }else{
                                       echo '<td class="text-center">'.@$test['Puan'].'</td>';
                                   }
                                   echo '</tr>';
                               }
                            }
                        ?>
                    </tbody>
                    <tfoot>
                        <?php
                            if($_data['Practice']['ayt'] == 0){
                                echo '<tr>';
                                echo '<th colspan="5" class="text-right"><b>Taban Puan:</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_data['Practice']['taban_puan'],3).'</b></th>';
                                echo '</tr>';


                                echo '<tr>';
                                echo '<th colspan="5" class="text-right"><b>Toplam Puan:</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['Puan'],3).'</b></th>';
                                echo '</tr>';
                                if($_data['Practice']['true_false'] == '1'){
                                    echo '<tr>';
                                    echo '<th colspan="6" class="text-right text-upper">'.$_data['Practice']['false'].' Yanlış '.$_data['Practice']['true'].' Doğruyu Götürmüştür.</th>';
                                    echo '</tr>';
                                }
                            }else{

                                echo '<tr>';
                                echo '<th colspan="5" class="text-right"><b>Toplam Puan :</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['SayisalPuan'],3).'</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['SozelPuan'],3).'</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['EsitPuan'],3).'</b></th>';
                                echo '</tr>';
                                
                                
                                echo '<tr>';
                                echo '<th colspan="5" class="text-right"><b>TYT Puanı ( '.$TYT['Puan'].' ) :</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$TYT['Puan40'],3).'</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$TYT['Puan40'],3).'</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$TYT['Puan40'],3).'</b></th>';
                                echo '</tr>';
                                
                                echo '<tr>';
                                echo '<th colspan="5" class="text-right"><b>OBP :</b></th>';
                                echo '<th colspan="3" class="text-center">Yerleştirme Puanınız ile <b>OBP</b> Puanınızı Toplayınız.</th>';
                                echo '</tr>';
                                
                                echo '<tr>';
                                echo '<th colspan="5" class="text-right"><b>Yerleştirme Puanı :</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['SayisalPuan'] + @$TYT['Puan40'],3).'</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['SozelPuan'] + @$TYT['Puan40'],3).'</b></th>';
                                echo '<th class="text-center"><b>'.number_format(@$_ozet['EsitPuan'] + @$TYT['Puan40'],3).'</b></th>';
                                echo '</tr>';
                                
                                
                                echo '<tr>';
                                echo '<th colspan="8" class="text-right text-upper">TYT Puanının %40\'ı baz alınmıştır.</th>';
                                echo '</tr>';
                                
                                if($_data['Practice']['true_false'] == '1'){
                                    echo '<tr>';
                                    echo '<th colspan="8" class="text-right text-upper">'.$_data['Practice']['false'].' Yanlış '.$_data['Practice']['true'].' Doğruyu Götürmüştür.</th>';
                                    echo '</tr>';
                                }
                            }



                        ?>
                    </tfoot>
                </table>
              </div>
          </div>
            
            <div class="row">
               
               <?php
               
                   if($_data['Practice']['ayt'] != 0){
                   ?>
                   <div class="col-12 col-sm-12 mbBot">
                        <div class="ui negative icon message mbBot">
                            <i class="warning icon"></i>
                            <div class="header text-center">
                                TYT Sınavına girmeyen öğrencilerimizin TYT puanları 0 olarak girilmiştir. Her iki sınavada giren (TYT - AYT) öğrencilerimizin sonuçları TYT sınavının %40'ı baz alınarak hesaplanmıştır. 
                            </div>
                        </div>
                    </div>
                   <?php
                   }
               
               ?>
               
                <div class="col-12 col-sm-12 mbBot">
                    <div class="ui positive icon message mbBot">
                        <i class="checkmark icon"></i>
                        <div class="header">
                            <?php
                                if($_data['Practice']['ayt'] == 1){
                                   
                                   echo "Bu sonuçlara göre ";
                                   
                                    $b = 1;
                                    for($a = 0; $a < count($SayisalSiram); $a++){
                                        if($SayisalSiram[$a]['user_ID'] == $User['ID']){
                                            echo "Sayısal sıranız ( ".$b." ) ";
                                            $a = count($SayisalSiram)+1;
                                        }
                                        $b++;
                                    }
                                    
                                    $b = 1;
                                    for($a = 0; $a < count($SozelSiram); $a++){
                                        if($SozelSiram[$a]['user_ID'] == $User['ID']){
                                            echo "Sözel sıranız ( ".$b." ) ";
                                            $a = count($SozelSiram)+1;
                                        }
                                        $b++;
                                    }
                                    
                                    $b = 1;
                                    for($a = 0; $a < count($EsitSiram); $a++){
                                        if($EsitSiram[$a]['user_ID'] == $User['ID']){
                                            echo "Eşit Ağırlık sıranız ( ".$b." ) ";
                                            $a = count($EsitSiram)+1;
                                        }
                                        $b++;
                                    }
                                    
                                    
                                }else{
                                    $b = 1;
                                    for($a = 0; $a < count($Siram); $a++){
                                        if($Siram[$a]['user_ID'] == $User['ID']){
                                            echo "Bu sonuçlara göre sıranız: ".$b.".";
                                            $a = count($Siram)+1;
                                        }
                                        $b++;
                                    }
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
           
            {% endif %}
           
            <div class="row">
                <div class="col-12 col-sm-8 mbBot">
                    <h1 class="ui huge header">
                        Detaylı İstatistikler
                    </h1>
                </div>
            </div>
           
            <ul class="nav nav-tabs" role="tablist" style="border-bottom-color:#ddd;">
                <?php $b = 0; ?>
                
                {% if  _quiz|length > 4 %}
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1rem !important; padding:15px 10px; font-weight: bold;">
                            Dersler
                        </a>
                        <div class="dropdown-menu">
                            {% for Quiz in _quiz %} 
                            <a class="dropdown-item <?php if($b == 0) echo 'active' ?>" data-toggle="tab" href="#quiz_{{Quiz['ID']}}" role="tab">
                                {{Quiz['exam_name']}}
                            </a>
                            <?php $b++; ?>
                            {% endfor %}
                        </div>
                    </li>
                {% else %}
                    {% for Quiz in _quiz %} 
                    <li class="nav-item">
                        <a class="nav-link <?php if($b == 0) echo 'active' ?>" data-toggle="tab" href="#quiz_{{Quiz['ID']}}" role="tab">
                            <h1 class="ui huge header" style="font-size: 1rem !important; padding:10px;">{{Quiz['exam_name']}}</h1>
                        </a>
                    </li>
                    <?php $b++; ?>
                    {% endfor %}
                {% endif %}
                
                {% if _data['Type'] == 2 %}
                    {% if _data['Practice']['ayt'] == 0 %}
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#top20" role="tab">
                                <h1 class="ui huge header" style="font-size: 1rem !important; padding:10px; color:#BD0D13 !important;">İlk 20 Sıralaması</h1>
                            </a>
                        </li>
                    {% else %}
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1rem !important; padding:15px 10px; font-weight: bold;">
                            Sıralamalar
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" data-toggle="tab" href="#satop20" role="tab">
                                Sayısal İlk 20 Sıralaması
                            </a>
                            <a class="dropdown-item" data-toggle="tab" href="#sotop20" role="tab">
                                Sözel İlk 20 Sıralaması
                            </a>
                            <a class="dropdown-item" data-toggle="tab" href="#estop20" role="tab">
                                Eşit Ağırlık İlk 20 Sıralaması
                            </a>
                        </div>
                    </li>
                    
                    {% endif %}
                {% endif %}
                
            </ul>
            
            <div class="tab-content">
            <?php
               
                $b = 0;
                
                function DurumGel($Durumlar = array(),$Durum = 0){

                    if(count($Durumlar) == 3){
                        return $Durumlar[$Durum];
                    }else{
                        foreach($Durumlar as $Durums){
                            if($Durums['Status'] == $Durum){
                                return $Durums;
                            }
                        }
                    }

                }
                
            ?>
            {% for Quiz in _quiz %}   
                <?php
                    $a = 1;
                ?>
                <div class="tab-pane <?php if($b == 0) echo 'active' ?>" id="quiz_{{Quiz['ID']}}" role="tabpanel" style="background: transparent !important; box-shadow: none !important;    border-color: #ddd ;">
                {% for Sorular in Quiz['Sorular'] %}
                <div class="col-12 ">
                    <div class="row row-eq-height">
                        <div class="col-12 col-sm-6">
                            <h2 class="ui huge header" style="font-size: 1.2rem !important;"><?php echo $a; ?>.) Soru</h2>
                            
                        </div>
                        <div class="col-12 col-sm-6" style="display: none;">
                            <h4 class="ui huge header text-right" style="margin-top: 2px; font-size: 1rem !important;">
                                <?php
                                //Soru Zorluk Seviyesi: <b>{{Sorular['Zorluk']['name']}}</b>
                                ?>
                            </h4>
                        </div>
                        <div class="col-12">
                            <hr>
                        </div>
                        <div class="col-sm-12 col-md-6 vcenter">
                            <img  class="lazy" src="/assets/img/eclipse.gif" data-src="{{Sorular['base64_img']}}" alt="Hocalara Geldik" width="100%">
                            <br/>
                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    <div class="alert alert-info text-center">
                                        Doğru Cevap: <b>{{Sorular['result']}}</b>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="alert alert-{% if Sorular['result'] == Sorular['cevap']['Result'] %}success{% else %}{% if Sorular['cevap']['Result'] is empty %}primary {% else %}danger {% endif %} {% endif %} text-center">
                                        Sizin Cevabınız : <b>{% if Sorular['cevap']['Result'] is empty %} Boş {% else %} {{Sorular['cevap']['Result']}} {% endif %}</b>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>
                        <div class="col-sm-12 col-md-6 vcenter">

                            <div class="row row-eq-height" style="margin-left:0; margin-right: 0px;">
                                <div class="col-6 vcenter text-center" style="min-height: 150px;">
                                    <div class="ui statistics">
                                        <div class="purple small statistic" style="margin:0 auto;">
                                            <div class="label">
                                                Ortalama
                                            </div>
                                            <div class="value">
                                                <?php echo gmdate("i:s", $Sorular['OrtalamaCozum']['Ortalama']) ?>
                                            </div>
                                            <div class="label">
                                                Sürede Çözüldü
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 vcenter text-center" style="min-height: 150px;">
                                    <div class="ui statistics">
                                        <div class="olive small statistic" style="margin:0 auto;">
                                            <div class="label">
                                                Siz Bu Soruyu
                                            </div>
                                            <div class="value">
                                                <?php echo gmdate("i:s", $Sorular['cevap']['Time']) ?>
                                            </div>
                                            <div class="label">
                                                Sürede Çözdünüz
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <hr>
                                </div>
                                <div class="col-4 vcenter text-center" style="min-height: 150px;">
                                    <div class="ui statistics">
                                        <div class="green small statistic" style="margin:0 auto;">
                                            <div class="value">
                                                <?php
                                                    //echo empty($Sorular['DurumDogru']['KacKisi']) ? 0 : $Sorular['DurumDogru']['KacKisi'];
                                                    $Durum = DurumGel($Sorular['Durum'], 1);
                                                    echo empty($Durum['KacKisi']) ? 0 : $Durum['KacKisi'];
                                                ?>
                                            </div>
                                            <div class="label">
                                                Kişi Doğru Cevapladı
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-4 vcenter text-center" style="min-height: 150px;">
                                    <div class="ui statistics">
                                        <div class="red small statistic" style="margin:0 auto;">
                                            <div class="value">
                                                <?php
                                                    //echo empty($Sorular['DurumYanlis']['KacKisi']) ? 0 : $Sorular['DurumYanlis']['KacKisi'];
                                                    $Durum = DurumGel($Sorular['Durum'], 2);
                                                    echo empty($Durum['KacKisi']) ? 0 : $Durum['KacKisi'];
                                                ?>
                                            </div>
                                            <div class="label">
                                                Kişi Yanlış Cevapladı
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-4 vcenter text-center" style="min-height: 150px;">
                                    <div class="ui statistics">
                                        <div class="blue small statistic" style="margin:0 auto;">
                                            <div class="value">
                                                <?php
                                                    //echo empty($Sorular['DurumBos']['KacKisi']) ? 0 : $Sorular['DurumBos']['KacKisi'];
                                                    $Durum = DurumGel($Sorular['Durum'], 0);
                                                    echo empty($Durum['KacKisi']) ? 0 : $Durum['KacKisi'];
                                                ?>
                                            </div>
                                            <div class="label">
                                                Kişi Boş Bıraktı
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <hr>
                </div>
                <?php
                    $a++;
                ?>
                {% endfor %}
                </div>
                
                <?php $b++; ?>
                
            {% endfor %}
            
            
            {% if _data['Type'] == 2 %}
                {% if _data['Practice']['ayt'] == 0 %}
                <div class="tab-pane" id="top20" role="tabpanel" style="background: transparent !important; box-shadow: none !important;    border-color: #ddd ;">
                    

                    <div class="table-responsive">
                        <table class="ui celled table">
                          <thead>
                              <tr>
                                  <th class="text-center" rowspan="1">Sıra</th>
                                  <th class="text-center" rowspan="1">Adı Soyadı</th>
                                  <th class="text-center" rowspan="1">Çözüm Süresi</th>
                                  <?php

                                  /*
                                  {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th colspan="4" class="text-center">{{Dersler['Sinav']}}</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}
                                  */

                                  ?>
                                  <th class="text-center" rowspan="1">Puan</th>
                              </tr>
                              <?php
                                  /*
                                  <tr>
                                 {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th class="text-center">D</th>
                                              <th class="text-center">Y</th>
                                              <th class="text-center">B</th>
                                              <th class="text-center">NET</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}       
                              </tr>
                              */
                              ?>
                          </thead>

                          <tbody>
                              <?php
                                  $b = 1;
                              ?>
                              {% for Top in Top20 %}
                              <tr>
                                  <td class="text-center"><?php echo $b; $b++; ?></td>
                                  <td class="text-center">{{Top['name']}} {{Top['lastname']}}</td>
                                  <td class="text-center"><?php echo gmdate("H:i:s", $Top['Suresi']); ?></td>
                                  <?php
                                      $c = 1;
                                      /*
                                      {% for Dersler in Top['Data'] %}
                                      {% if Dersler['Sinav'] is defined %}
                                      <?php
                                          if(($c % 2) == 0){
                                              $ccs = ' style="background:#F9FAFB !important; font-weight:bold;"';
                                          }else{
                                              $ccs = ' style="font-weight:bold;"';
                                          }
                                          $c++;
                                      ?>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Dogru']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Yanlis']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Bos']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Net']}}</td>
                                      {% endif %}
                                  {% endfor %}
                                  */
                                  ?>

                                  <td class="text-center">{{Top['Puan']}}</td>
                              </tr>
                              {% endfor %}
                          </tbody>

                      </table>
                    </div>


                </div>
                {% else %}
                <div class="tab-pane" id="satop20" role="tabpanel" style="background: transparent !important; box-shadow: none !important;    border-color: #ddd ;">
                    
                    <div class="col-12 col-sm-12 mbBot">
                        <div class="ui negative icon message mbBot">
                            <i class="warning icon"></i>
                            <div class="header text-center">
                                Sıralamalar ham puanlar üzerinden yapılmıştır. 
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="ui celled table">
                          <thead>
                              <tr>
                                  <th class="text-center" rowspan="1">Sıra</th>
                                  <th class="text-center" rowspan="1">Adı Soyadı</th>
                                  <th class="text-center" rowspan="1">Çözüm Süresi</th>
                                  <?php

                                  /*
                                  {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th colspan="4" class="text-center">{{Dersler['Sinav']}}</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}
                                  */

                                  ?>
                                  <th class="text-center" rowspan="1">Puan</th>
                              </tr>
                              <?php
                                  /*
                                  <tr>
                                 {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th class="text-center">D</th>
                                              <th class="text-center">Y</th>
                                              <th class="text-center">B</th>
                                              <th class="text-center">NET</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}       
                              </tr>
                              */
                              ?>
                          </thead>

                          <tbody>
                              <?php
                                  $b = 1;
                              ?>
                              {% for Top in SayisalTop20 %}
                              <tr>
                                  <td class="text-center"><?php echo $b; $b++; ?></td>
                                  <td class="text-center">{{Top['name']}} {{Top['lastname']}}</td>
                                  <td class="text-center"><?php echo gmdate("H:i:s", $Top['Suresi']); ?></td>
                                  <?php
                                      $c = 1;
                                      /*
                                      {% for Dersler in Top['Data'] %}
                                      {% if Dersler['Sinav'] is defined %}
                                      <?php
                                          if(($c % 2) == 0){
                                              $ccs = ' style="background:#F9FAFB !important; font-weight:bold;"';
                                          }else{
                                              $ccs = ' style="font-weight:bold;"';
                                          }
                                          $c++;
                                      ?>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Dogru']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Yanlis']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Bos']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Net']}}</td>
                                      {% endif %}
                                  {% endfor %}
                                  */
                                  ?>

                                  <td class="text-center">{{Top['Puan']}}</td>
                              </tr>
                              {% endfor %}
                          </tbody>

                      </table>
                    </div>


                </div>
                <!-------------------------- Sayısal Bitti---------------------------------------------->
                <div class="tab-pane" id="sotop20" role="tabpanel" style="background: transparent !important; box-shadow: none !important;    border-color: #ddd ;">
                    
                    <div class="col-12 col-sm-12 mbBot">
                        <div class="ui negative icon message mbBot">
                            <i class="warning icon"></i>
                            <div class="header text-center">
                                Sıralamalar ham puanlar üzerinden yapılmıştır. 
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="ui celled table">
                          <thead>
                              <tr>
                                  <th class="text-center" rowspan="1">Sıra</th>
                                  <th class="text-center" rowspan="1">Adı Soyadı</th>
                                  <th class="text-center" rowspan="1">Çözüm Süresi</th>
                                  <?php

                                  /*
                                  {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th colspan="4" class="text-center">{{Dersler['Sinav']}}</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}
                                  */

                                  ?>
                                  <th class="text-center" rowspan="1">Puan</th>
                              </tr>
                              <?php
                                  /*
                                  <tr>
                                 {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th class="text-center">D</th>
                                              <th class="text-center">Y</th>
                                              <th class="text-center">B</th>
                                              <th class="text-center">NET</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}       
                              </tr>
                              */
                              ?>
                          </thead>

                          <tbody>
                              <?php
                                  $b = 1;
                              ?>
                              {% for Top in SozelTop20 %}
                              <tr>
                                  <td class="text-center"><?php echo $b; $b++; ?></td>
                                  <td class="text-center">{{Top['name']}} {{Top['lastname']}}</td>
                                  <td class="text-center"><?php echo gmdate("H:i:s", $Top['Suresi']); ?></td>
                                  <?php
                                      $c = 1;
                                      /*
                                      {% for Dersler in Top['Data'] %}
                                      {% if Dersler['Sinav'] is defined %}
                                      <?php
                                          if(($c % 2) == 0){
                                              $ccs = ' style="background:#F9FAFB !important; font-weight:bold;"';
                                          }else{
                                              $ccs = ' style="font-weight:bold;"';
                                          }
                                          $c++;
                                      ?>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Dogru']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Yanlis']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Bos']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Net']}}</td>
                                      {% endif %}
                                  {% endfor %}
                                  */
                                  ?>

                                  <td class="text-center">{{Top['Puan']}}</td>
                              </tr>
                              {% endfor %}
                          </tbody>

                      </table>
                    </div>


                </div>
                <!---------------------------- Sozel Bitti -------------------------------------------->
                <div class="tab-pane" id="estop20" role="tabpanel" style="background: transparent !important; box-shadow: none !important;    border-color: #ddd ;">
                   
                   <div class="col-12 col-sm-12 mbBot">
                        <div class="ui negative icon message mbBot">
                            <i class="warning icon"></i>
                            <div class="header text-center">
                                Sıralamalar ham puanlar üzerinden yapılmıştır. 
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="table-responsive">
                        <table class="ui celled table">
                          <thead>
                              <tr>
                                  <th class="text-center" rowspan="1">Sıra</th>
                                  <th class="text-center" rowspan="1">Adı Soyadı</th>
                                  <th class="text-center" rowspan="1">Çözüm Süresi</th>
                                  <?php

                                  /*
                                  {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th colspan="4" class="text-center">{{Dersler['Sinav']}}</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}
                                  */

                                  ?>
                                  <th class="text-center" rowspan="1">Puan</th>
                              </tr>
                              <?php
                                  /*
                                  <tr>
                                 {% for Ders in Top20 %}
                                      {% if loop.first %}
                                          {% for Dersler in Ders['Data'] %}
                                              {% if Dersler['Sinav'] is defined %}
                                              <th class="text-center">D</th>
                                              <th class="text-center">Y</th>
                                              <th class="text-center">B</th>
                                              <th class="text-center">NET</th>
                                              {% endif %}
                                          {% endfor %}
                                      {% endif %}
                                  {% endfor %}       
                              </tr>
                              */
                              ?>
                          </thead>

                          <tbody>
                              <?php
                                  $b = 1;
                              ?>
                              {% for Top in EsitTop20 %}
                              <tr>
                                  <td class="text-center"><?php echo $b; $b++; ?></td>
                                  <td class="text-center">{{Top['name']}} {{Top['lastname']}}</td>
                                  <td class="text-center"><?php echo gmdate("H:i:s", $Top['Suresi']); ?></td>
                                  <?php
                                      $c = 1;
                                      /*
                                      {% for Dersler in Top['Data'] %}
                                      {% if Dersler['Sinav'] is defined %}
                                      <?php
                                          if(($c % 2) == 0){
                                              $ccs = ' style="background:#F9FAFB !important; font-weight:bold;"';
                                          }else{
                                              $ccs = ' style="font-weight:bold;"';
                                          }
                                          $c++;
                                      ?>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Dogru']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Yanlis']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Bos']}}</td>
                                      <td class="text-center"<?php echo $ccs ?>>{{Dersler['Net']}}</td>
                                      {% endif %}
                                  {% endfor %}
                                  */
                                  ?>

                                  <td class="text-center">{{Top['Puan']}}</td>
                              </tr>
                              {% endfor %}
                          </tbody>

                      </table>
                    </div>


                </div>
                <!------------------------- Eşit Bitti ----------------------------------------------->
                {% endif %}
            {% endif %}
            
            </div>
            
            
        </div>
        
    
    </div>
</div>
