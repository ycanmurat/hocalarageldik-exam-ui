<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/"><i class="fa fa-home"></i></a></li>
                <li><a href="/calisma-kilavuzu"> Çalışma Kılavuzu</a></li>
                {% if Kilavuzlar is defined and Haftas is defined %}
                <li><a href="<?php echo $_SERVER['REQUEST_URI'] ?>">{{Kilavuz['menuName']}}</a></li>
                <li><a href="<?php echo $_SERVER['REQUEST_URI'] ?>">{{Kilavuz['categoryName']}}</a></li>
                {% endif %}
            </ol>
        </div>

    </div>
</div>
<section class="register klavuz">
    <?php
  $Kilavuz_ID = explode('/',$_SERVER['REQUEST_URI']);
  $Kilavuz_ID = intval($Kilavuz_ID[count($Kilavuz_ID)-1]);
?>

    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5 class="main-title">Çalışma Kılavuzu</h5>
                </div>
            </div>
        </div>
    </div>


    {% if MenuPerm == 0 %}
    <div class="container">
        <div class="row mbBot">
            <div class="col-12">
                <div class="ui negative icon  message">
                    <i class="warning sign icon"></i>
                    <div class="header">
                        Üzgünüm, bu içeriği görüntüleyemiyorsunuz, ücretli bir içerik <a
                            href="/uyelik-paketleri">buradan</a> üyelik paketlerimizi inceleyebilirsiniz.
                    </div>
                </div>
            </div>
        </div>
    </div>
    {% else %}

    {% if Kilavuzlar is defined and Haftas is not defined %}

    <div class="container">
        <div class="row">
            <div class="col-12">
                {% for Title,Kilavuz in Kilavuzlarim %}
                <div class="item">
                    <h1 class="k-title">
                        {{Title}}
                    </h1>
                    <div class="links">
                        {% for Kila in Kilavuz %}
                        <a href="/calisma-kilavuzu/{{Kila['perma']}}/{{Kila['ID']}}"
                            class="ders <?php echo explode('/',$Kila['perma'])[1]; ?> ">
                            {{Kila['categoryName']}}
                        </a>
                        {% endfor %}
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>


        <div class="row mbBot d-none">
            {% for Title,Kilavuz in Kilavuzlarim %}

            <div class="col-12">
                <h1 class="hg-title">{{Title}}</h1>
            </div>
            {% for Kila in Kilavuz %}
            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 dataList">
                <a href="/calisma-kilavuzu/{{Kila['perma']}}/{{Kila['ID']}}"
                    class="ders <?php echo explode('/',$Kila['perma'])[1]; ?> rounded shadow">
                    <div class="text">{{Kila['categoryName']}}</div>
                </a>
            </div>
            {% endfor %}
            {% endfor %}
        </div>
    </div>





    {% else %}

    <!--------- Haftalar ----------->
    {% if Haftalar['Acik'] is defined %}
    {% for i,Hafta in Haftalar['Acik'] %}


    <div class="container">
        <div class="row mbBot">

            <div class="col-12">
                <div class="card kilavuz-card">
                    <div class="ders <?php echo explode('/',$_SERVER['REQUEST_URI'])[3]; ?>">

                        <div class="text">{{i}}. Hafta</div>
                    </div>
                    <?php
                                    $Say = 0;
                                    
                                    for($a = 0; $a < count($Haftalar['kategori'][$i]); $a++){
                                       if(!empty($Haftalar['kategori'][$i][$a][0]['categoryName'])){
                                           $Say++;
                                       }
                                    }
                                    
                                    if(isset($Haftalar['manuel'])){
                                        for($a = 0; $a < count($Haftalar['manuel'][$i]); $a++){
                                           if(!empty($Haftalar['manuel'][$i][$a])){
                                               $Say++;
                                           }
                                        }
                                    }
                                    
                                    
                                ?>

                    <div class="row kilavuz">
                        <?php
                                       $topSure = 0;
                                        if($Say != 0){
                                        ?>
                        <div
                            class="col-12 col-sm-12 col-md-4 pad white <?php echo explode('/',$_SERVER['REQUEST_URI'])[3]; ?>">

                            <?php
                                                
                                                for($a = 0; $a < count($Haftalar['kategori'][$i]); $a++){
                                                   if(!empty($Haftalar['kategori'][$i][$a][0]['categoryName'])){
                                                       $Say++;
                                                       if($Haftalar['kategori'][$i][$a]['Kilavuz'] == 1){
                                                           $check = ' checked=""';
                                                       }else{
                                                           $check = '';
                                                       }
                                                       $ID = explode('/',$Haftalar['kategori'][$i][$a][1]);
                                                       $ID = intval($ID[count($ID)-1]);


                                                       echo '<div>
                                                                <div class="ui toggle checkbox">
                                                                  <input type="checkbox" onclick="Kilavuz($(this),'.$Kilavuz_ID.','.$ID.');"'.$check.'>
                                                                  <label><a href="'.$Haftalar['kategori'][$i][$a][1].'">'.$Haftalar['kategori'][$i][$a][0]['categoryName'].' ('.gmdate("i:s", $Haftalar['kategori'][$i][$a]['Sure']).')</a></label>
                                                                </div>
                                                            </div>';
                                                            
                                                            
                                                        $topSure += $Haftalar['kategori'][$i][$a]['Sure'];


                                                   }
                                                }
                                                
                                                if(isset($Haftalar['manuel'])){
                                                    for($a = 0; $a < count($Haftalar['manuel'][$i]); $a++){
                                                       if(!empty($Haftalar['manuel'][$i])){
                                                          
                                                           echo '<div class="row row-eq-height" style="padding-bottom:5px">
                                                                      <div class="col-2 vcenter" style="color:#fff">
                                                                          <i class="fa fa-long-arrow-right"  style="line-height:17px; font-size:52px; " aria-hidden="true"></i>
                                                                      </div>
                                                                      <div class="col-10 vcenter" style="color:#fff; font-size:15.2px; line-height:26px;  font-style:normal; font-weight:400;">
                                                                          <div style="padding-left:5px;">
                                                                          '.$Haftalar['manuel'][$i][$a].'
                                                                          </div>
                                                                      </div>
                                                                 </div>';
                                                       }
                                                    }
                                                }
                                                


                                            ?>


                        </div>
                        <?php
                                        }
                                    ?>
                        <div
                            class="col-12 col-sm-12 <?php if($Say != 0){ echo 'col-md-8'; }else{ echo 'col-md-12'; } ?> pad">
                            <div>

                                <p class="text-justify">
                                    <?php echo str_replace('&nbsp;', '', trim(strip_tags($Haftalar['data'][$i],'<ul><ol><li>'))); ?>
                                </p>



                                <?php
                                               
                                                if($topSure > 0){
                                                ?>
                                <div class=" mbBot">
                                    <div class="ui positive icon  message mbBot">
                                        <i class="fa fa-clock-o fa-2x" style="margin-right: 10px;"></i>
                                        <div class="header">
                                            <?php
                                                                $Hour = gmdate("H", $topSure);
                                                                $Minute = gmdate("i", $topSure);
                                                                $Seconds = gmdate("s", $topSure);
                                                                
                                                                $res = '';
                                                                
                                                                if($Hour != '00'){
                                                                    $res = intval($Hour)." saat ";                                                               
                                                                }
                                                                
                                                                if($Minute != '00'){
                                                                    $res = $res.intval($Minute)." dakika ";                                                               
                                                                }
                                                                
                                                                if($Seconds != '00'){
                                                                    $res = $res.intval($Seconds)." saniyedir. ";                                                               
                                                                }
                                                                
                                                                
                                                            ?>

                                            <?php echo $i.". Haftada izleyeceğin videoların süreleri toplamı ".$res ?>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                                }
                                               
                                                if(!empty($Haftalar['info'][$i])){
                                            ?>
                                <div class="mbBot">
                                    <div class="ui info icon  message mbBot">
                                        <i class="question icon"></i>
                                        <div class="header">
                                            <?php echo $Haftalar['info'][$i] ?>
                                        </div>
                                    </div>
                                </div>

                                <?php
                                                }
                                            ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--- Kilavuz --->



        </div>
    </div>

    {% endfor %}
    {% else %}

    {% if Haftas is defined %}
    <div class="container">
        <div class="row mbBot">
            <div class="col-12">
                <div class="ui negative icon  message">
                    <i class="warning sign icon"></i>
                    <div class="header">
                        Üzgünüm, bu içeriği görüntüleyemiyorum. Ücretli bir içerik yada henüz konu içeriği eklenmemiş
                        olabilir.
                    </div>
                </div>
            </div>
        </div>
    </div>
    {% else %}
    <div class="container">
        <div class="row mbBot">
            <div class="col-12">
                <div class="ui negative icon  message">
                    <i class="warning sign icon"></i>
                    <div class="header">
                        Üzgünüm, bu içeriği görüntüleyemiyorum. Ücretli bir içerik yada henüz konu içeriği eklenmemiş
                        olabilir.
                    </div>
                </div>
            </div>
        </div>
    </div>
    {% endif %}

    {% endif %}
    <!--------- Haftalar ----------->

    {% endif %}

    {% endif %}


</section>