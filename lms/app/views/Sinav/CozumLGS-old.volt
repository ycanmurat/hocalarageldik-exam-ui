{% if showData is defined %}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


<style>

    .numberNo{
        padding-top: 2px;
        font-weight: 700;
        font-size: 18px;
    }
    .optikMain{
        border-radius: 5px !important;
        margin-left: 0;
        margin-right: 0;
    }
    .border:first-child{
        background: #1a1a1a;
    }
    .border h1{
        color:#fff !important;
    }
    .siklar,.optikMain,.border{
        border: 1px solid #ddd;
    }
    .siklar a {
        border:2px solid #DC2328;
        border-radius: 50%;
        color:#DC2328;
        font-weight: 900;
        width: 30px;
        height: 30px;
        line-height: 26px;
        text-align: center;
        display: block;
        margin-right: 5px;
    }
    .siklar a:hover{
        color:#fff;
        background:#DC2328;
    }
    .siklar a.active{
        color:#fff;
        background:#666666;
        border-color: #666666;
    }
    
    .siklar a.yanlis{
        color:#fff;
        background:#E30613;
        border-color: #E30613;
    }
    
    .siklar a.dogru {
        color:#fff;
        background:#0FC646;
        border-color: #0FC646;
    }
    
    .siklar a.bos {
        color:#fff;
        background:#2D5EA8;
        border-color: #2D5EA8;
    }
    
    
    .optikBox .row .col-2{
        padding-top: 12px;
        padding-bottom: 12px;
        padding-left:0;
        padding-right:0;
        text-align: center;
    }
    .optikBox .row:nth-child(odd) .col-2{
        background: #f9f9f9;
    }
    .ui.optik.huge.header{
        text-align: center;
        padding: 20px 0;
    }
    .green{
        background: #FCFFF5;
        padding: 20px;
        color:rgb(26, 83, 27);
        border:1px solid rgb(26, 83, 27);
        font-weight: bold;
        border-radius: 4px;
    }
    
    #Blur{
        background: rgba(0,0,0,0.9);
        position: absolute;
        z-index: 55;
        bottom:0;
        left: 0;
        right: 0;
        top: 0;
        width: 100%;
        height: 100%;
        display:block;

    }
    
</style>

<script>
    $(document).ready(function(){
        
        <?php
            if(!isset($Post)){
                ?>
            $('.siklar a').click(function(){
                    
                /* İşaretleme Seçenekleri */
                if($(this).hasClass('active') == true){
                    var values = '';
                    $(this).closest('.siklar').find('.cevap').val(values);
                    $(this).closest('.siklar').find('a').removeClass('active');
                }else{
                    var values = $(this).data('value');
                    $(this).closest('.siklar').find('.cevap').val(values);
                    $(this).closest('.siklar').find('a').removeClass('active');
                    $(this).addClass('active');
                }  
            });
                
            $('#din_kulturu').change(function(){
                
                var values = $(this).val();
                
                if(values == ''){
                    $('#sosyal-bilimler_16').show().find('.cevap').val('');
                    $('#sosyal-bilimler_17').show().find('.cevap').val('');
                    $('#sosyal-bilimler_18').show().find('.cevap').val('');
                    $('#sosyal-bilimler_19').show().find('.cevap').val('');
                    $('#sosyal-bilimler_20').show().find('.cevap').val('');
                    $('#sosyal-bilimler_21').show().find('.cevap').val('');
                    $('#sosyal-bilimler_22').show().find('.cevap').val('');
                    $('#sosyal-bilimler_23').show().find('.cevap').val('');
                    $('#sosyal-bilimler_24').show().find('.cevap').val('');
                    $('#sosyal-bilimler_25').show().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_16').find('a').removeClass('active');
                    $('#sosyal-bilimler_17').find('a').removeClass('active');
                    $('#sosyal-bilimler_18').find('a').removeClass('active');
                    $('#sosyal-bilimler_19').find('a').removeClass('active');
                    $('#sosyal-bilimler_20').find('a').removeClass('active');
                    $('#sosyal-bilimler_21').find('a').removeClass('active');
                    $('#sosyal-bilimler_22').find('a').removeClass('active');
                    $('#sosyal-bilimler_23').find('a').removeClass('active');
                    $('#sosyal-bilimler_24').find('a').removeClass('active');
                    $('#sosyal-bilimler_25').find('a').removeClass('active');
                }else if(values == '1'){
                    $('#sosyal-bilimler_16').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_17').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_18').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_19').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_20').hide().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_21').show().find('.cevap').val('');
                    $('#sosyal-bilimler_22').show().find('.cevap').val('');
                    $('#sosyal-bilimler_23').show().find('.cevap').val('');
                    $('#sosyal-bilimler_24').show().find('.cevap').val('');
                    $('#sosyal-bilimler_25').show().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_16').find('a').removeClass('active');
                    $('#sosyal-bilimler_17').find('a').removeClass('active');
                    $('#sosyal-bilimler_18').find('a').removeClass('active');
                    $('#sosyal-bilimler_19').find('a').removeClass('active');
                    $('#sosyal-bilimler_20').find('a').removeClass('active');

                    
                }else if(values == '0'){
                    $('#sosyal-bilimler_16').show().find('.cevap').val('');
                    $('#sosyal-bilimler_17').show().find('.cevap').val('');
                    $('#sosyal-bilimler_18').show().find('.cevap').val('');
                    $('#sosyal-bilimler_19').show().find('.cevap').val('');
                    $('#sosyal-bilimler_20').show().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_21').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_22').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_23').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_24').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_25').hide().find('.cevap').val('');
      
                    $('#sosyal-bilimler_21').find('a').removeClass('active');
                    $('#sosyal-bilimler_22').find('a').removeClass('active');
                    $('#sosyal-bilimler_23').find('a').removeClass('active');
                    $('#sosyal-bilimler_24').find('a').removeClass('active');
                    $('#sosyal-bilimler_25').find('a').removeClass('active');
                }
                
            });
                
            
                <?php
            }    
        ?>
        
        $('.obp').keyup(function(){
            $('#has-warning').hide();
            var values = parseInt($(this).val());
            if(values < 1 || values > 100){
                values = 0;
                $('#has-warning').show();
            }
            if(isNaN(values)){
                values = 0;
                $('#has-warning').show();
            }
            $(this).val(values);
        });
        
        $('.tyt').keyup(function(){
            $('#has-warning').hide();
            var values = parseInt($(this).val());
            if(values < 0 || values > 500){
                values = 0;
                $('#has-warning').show();
            }
            if(isNaN(values)){
                values = 0;
                $('#has-warning').show();
            }
            $(this).val(values);
        });
        
    });
</script>

{% for Test in Testlers %}
    {% if Test['ID'] == ID %} {% set varO = Test['test_adi'] %} {% endif %}
{% endfor %}

<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <div class="content">
                    {% if varO is defined %}
                        {{varO}}
                    {% else %}
                    Hürriyet LGS Çözüm Anahtarı
                                        {% endif %}
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/hurriyet-deneme-sinavi-cozum-anahtari"> Hürriyet LGS Çözüm Anahtarı</a></li>
              {% if varO is defined %}
              <li class="breadcrumb-item"><a href="/hurriyet-deneme-sinavi-cozum-anahtari/{{ID}}"> {{varO}}</a></li>
              {% endif %}
            </ol>
        </div>
        </div>
    </div>
</div>



<div id="entries">
    <div class="container">
        {% if User is not defined %}
        <!-- Blur -->
        <form action="/giris" method="post" id="loginForm">
            <div id="Blur">
            </div>
            <div class="row row-eq-height mbBot" style=" margin-right: 0px; margin-left: 0px; position: absolute; z-index: 66; color:#fff !important;">

                   {% if message is defined %}
                    <div class="col-12 mbBot">
                        <div class="ui negative icon  message">
                          <i class="warning sign icon"></i>
                          <div class="header">
                            {{message['message']}}
                          </div>
                        </div>
                    </div>
                    {% endif %}

                    <div class="col-sm-6">

                        <div class="row">

                            <div class="col-12">
                                <div class="form-group">
                                    <label>E-Posta Adresiniz veya Kullanıcı Adınız</label>
                                    <input type="text" name="email" class="form-control form-control-lg" placeholder="E-Posta Adresiniz veya Kullanıcı Adınız">
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Parolanız</label>
                                    <input type="password" name="pass" class="form-control form-control-lg" placeholder="Parolanız">
                                </div>
                            </div>

                            <div class="col-6">
                                <label class="custom-control custom-checkbox">
                                  <input type="checkbox" name="optionsCheckboxes" checked class="custom-control-input">
                                  <span class="custom-control-indicator"></span>
                                  <span class="custom-control-description"> Beni Hatırla</span>
                                </label>
                                <br /> 
                                <br /> 
                                <a href="/sifremi-unuttum" class="btn btn-sm btn-outline-primary"><i class="fa fa-question"></i> Şifremi Unuttum</a>
                            </div>

                            <div class="col-6 text-right">
                                <br/>
                                <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Giriş</button>
                            </div>
                            
                        </div>

                    </div>

                    <div class="col-sm-6 vcenter text-center black min-height150 left-b">
                       <h3 style=" color:#fff !important;">Üye değil misiniz?</h3>
                       <p style=" color:#fff !important;">Üyelerimize özel hizmetlerimizden faydalanabilmek için üye olun.</p>
                       <a href="/uye-ol" class="btn btn-sm btn-primary btn-lg flexBtn"> <i class="fa fa-user-plus"></i> Hemen Üye Ol</a>
                   </div>

            </div>
        </form>
        <!-- Blur -->
        {% endif %}
        <?php
            if(!isset($Post)){
            ?>
            {% if userUpdate is defined %}
                
                <div class="mbBot">
                    <div class="ui info icon message">
                        <i class="warning sign icon"></i>
                        <div class="header"> Üzgünüm, bu modülü kullanabilmek için <a href="/bilgilerim">buradan</a> bilgilerinizi güncellemelisiniz, lütfen tüm bilgileri eksiksiz giriniz Türkiye, il ve ilçe sıralamalarınızın doğru yapılabilmesi için bu işlem zorunludur. </div>
                    </div>
                </div>
                
            {% else %}
            <div class="row mbBot" {% if User is not defined %} style="visibility: hidden"{% endif %}>
                <div class="col-sm-12">
                    <label style="font-weight: 900">LGS Deneme Sınavı 1</label>
                    <small class="text-muted pull-right">Testinizin çözüm sonucunu kontrol edebilmek için, lütfen önce test seçiniz.</small>
                    <select onchange="window.location.href='/hurriyet-deneme-sinavi-cozum-anahtari/'+this.value" class="form-control form-control-lg">
                        <option value="">-- LGS Deneme Sınavı Seçimi --</option>
                        {% for Test in Testler %}
                            <option value="{{Test['ID']}}{% if Denemem is defined %}?Deneme=<?php echo intval($_GET['Deneme']); ?> {% endif %}"{% if Test['ID'] == ID %} {% set varO = Test['test_adi'] %} selected=""{% endif %}>{{Test['test_adi']}}</option>
                        {% endfor %}
                    </select>
                </div>
            </div>
            {% endif %}
            <?php
            }
        ?>
        
        
        {% if ID != 0 and varO is defined %}
        
        

           
           <!----------------------------------------------------------------------------->
           <?php
               $Sonuclar = array();
               $Sonuclar['ToplamPuan'] = 0;
           ?>
           {% for Ders in Dersler %}
                <?php
                    $Sonuclar[$Ders['ders']] = array('Dogru'     => 0,
                                                     'Yanlis'    => 0,
                                                     'Bos'       => 0,
                                                     'Net'       => 0);
                ?>
                {% for Soru in Ders['Sorular'] %}

                <?php
                    $Class = array('A'    => '',
                                   'B'    => '',
                                   'C'    => '',
                                   'D'    => '');
                                   
                    
                    
                    if(isset($Post)){
                       
                        $Sonuclar[$Ders['ders']]['Ders'] = $Ders['ders'];
                       
                        if(!empty($Post['cevap'][$Soru['ID']])){
                            if($Post['cevap'][$Soru['ID']] == $Post['dogruCevap'][$Soru['ID']]){
                                $Class[$Post['dogruCevap'][$Soru['ID']]] = ' class="dogru"';
                                $Sonuclar[$Ders['ders']]['Dogru']++;
                                $Sonuclar[$Ders['ders']]['Net']++;
                            }else{
                                $Class[$Post['dogruCevap'][$Soru['ID']]] = ' class="dogru"';
                                $Class[$Post['cevap'][$Soru['ID']]] = ' class="yanlis"';
                                $Sonuclar[$Ders['ders']]['Yanlis']++;
                            }
                        }else{
                            $Sonuclar[$Ders['ders']]['Bos']++;
                        }

                    }
                ?>
                {% endfor %}
                
                <?php
                   
                    $Sonuclar[$Ders['ders']]['DogruGotur'] = ($Sonuclar[$Ders['ders']]['Yanlis'] / 4) * 1;
                    $Sonuclar[$Ders['ders']]['Net'] -= $Sonuclar[$Ders['ders']]['DogruGotur'];
                    $Sonuclar[$Ders['ders']]['Puan'] = $Sonuclar[$Ders['ders']]['Net'] * @$Post['Puan'][$Soru['ID']];
                    $Sonuclar['ToplamPuan'] += $Sonuclar[$Ders['ders']]['Puan'];
                    
                ?>
            {% endfor %}
            <?php
            if(isset($Post)){
               $Sonuclar['EkPuan'] = 100;
               $Sonuclar['OBP'] = @$Post['obp'] * 0.6;
               //$Sonuclar['HamPuan'] = round($Sonuclar['ToplamPuan'] + $Sonuclar['EkPuan']);
               //$Sonuclar['ToplamPuan'] += round($Sonuclar['EkPuan']) ;
               $Sonuclar['HamPuan'] = round($Sonuclar['ToplamPuan']);
               $Sonuclar['ToplamPuan'] = round($Sonuclar['ToplamPuan']+$Sonuclar['EkPuan']) ;
                ?>
                <div>
                    <h1 class="ui huge header" style="margin-bottom: 20px;">Puan Tablosu</h1>
                </div>
                <div class="mbBot">
                    <table class="ui celled table">
                        <thead>
                            <tr>
                                <th>Ders</th>
                                <th class="text-center">Doğru</th>
                                <th class="text-center">Yanlış</th>
                                <th class="text-center">Boş</th>
                                <th class="text-center">Net</th>
                                <th class="text-center">Puan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                foreach($Sonuclar as $Sonuc){
                                    if(is_array($Sonuc)){
                                        echo '<tr>
                                            <th>'.$Sonuc['Ders'].'</th>
                                            <td class="text-center">'.$Sonuc['Dogru'].'</td>
                                            <td class="text-center">'.$Sonuc['Yanlis'].'</td>
                                            <td class="text-center">'.$Sonuc['Bos'].'</td>
                                            <td class="text-center">'.$Sonuc['Net'].'</td>
                                            <td class="text-center">'.number_format($Sonuc['Puan'],3).'</td>
                                        </tr>';
                                    }
                                }
                            ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="5" class="text-right"><b>Taban Puan:</b></th>
                                <th class="text-center"><b><?php echo number_format($Sonuclar['EkPuan'],3); ?></b></th>
                            </tr>
                            
                            <tr>
                                <th colspan="5" class="text-right"><b>Ham Puan:</b></th>
                                <th class="text-center"><b><?php echo number_format($Sonuclar['HamPuan'],3); ?></b></th>
                            </tr>
                            <tr>
                                <th colspan="5" class="text-right"><b>Yerleştirme Puanı:</b></th>
                                <th class="text-center"><b><?php echo number_format($Sonuclar['ToplamPuan'],3); ?></b></th>
                            </tr>
                            <tr>
                                <th colspan="6" class="text-right text-upper">4 Yanlış 1 Doğruyu Götürmüştür.</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                
                <?php
                    if(isset($Post)){
                        
                        
                        $Result = $this->db->query('Select * FROM cozum_test_sonuc WHERE cozum_test_ID = '.intval($ID).' AND user_ID = '.intval($UserID))->fetch();

                           

                            
                            $Sira = 0;
                            $il = 0;
                            $ilce = 0;
                            
                            $Sql = $this->db->query("Select DISTINCT(user_ID) FROM cozum_test_sonuc WHERE cozum_test_ID = ".intval($ID)." ORDER BY ToplamPuan DESC")->fetchAll();
                            
                            
                            for($a = 0; $a < count($Sql); $a++){
                                if($Sql[$a]['user_ID'] == $UserID){
                                    $Sira = $a + 1;                                
                                }
                            }
                            
                            $Sqls = $this->db->query("Select * FROM cozum_test_sonuc INNER JOIN users ON users.ID = cozum_test_sonuc.user_ID WHERE cozum_test_ID = ".intval($ID)." AND users.city = ".intval($cityID)." ORDER BY ToplamPuan DESC;")->fetchAll();
                            
                            for($a = 0; $a < count($Sqls); $a++){
                                if($Sqls[$a]['user_ID'] == $UserID){
                                    $il = $a + 1;                                
                                }
                            }
                            
                            
                            $Sqlsa = $this->db->query("Select * FROM cozum_test_sonuc INNER JOIN users ON users.ID = cozum_test_sonuc.user_ID WHERE cozum_test_ID = ".intval($ID)." AND users.city = ".intval($cityID)." AND users.state = '".addslashes($state)."' ORDER BY ToplamPuan DESC;")->fetchAll();
                            
                            for($a = 0; $a < count($Sqlsa); $a++){
                                if($Sqlsa[$a]['user_ID'] == $UserID){
                                    $ilce = $a + 1;                                
                                }
                            }
                            
                            
                            $City = $this->db->query('Select * FROM cities WHERE plaka = '.$cityID.' LIMIT 1')->fetch();
                            
                            
                            
                            ?>
                            <div>
                                <h1 class="ui huge header" style="margin-bottom: 20px;">Puan Durumuna Göre Sıralama</h1>
                            </div>
                            
                            
                            <?php
                                $trs = 0;
                                $trs_2 = 0;

                                $ils = 0;
                                $ils_2 = 0;

                                $ilces = 0;
                                $ilces_2 = 0;

                                if($City['il'] == 'Ankara' || $City['il'] == 'İstanbul' || $City['il'] == 'İzmir' || $City['il'] == 'Ankara' || $City['il'] == 'İSTANBUL' || $City['il'] == 'İZMİR'){
                                   /*
                                    $trs = 2234;
                                    $trs_2 = 1224;
                                    
                                    $ils = 189;
                                    $ils_2 = 89;
                                    
                                    $ilces = 54;
                                    $ilces_2 = 18;
                                    */
                                }
                            ?>

                            <div class="mbBot">
                                <table class="ui celled table">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Bölge 1</th>
                                            <th class="text-center">Sıralama</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                        <tr>
                                            <td class="text-center">TÜRKİYE GENELİ</td>
                                            <td class="text-center"><?php echo ($Sira + $trs)." / ".(count($Sql)+$trs_2); ?></td>
                                        </tr>
                                        
                                        <?php
                                            if($il != 0){
                                            ?>
                                            <tr>
                                                <td class="text-center"><?php echo $City['il'] ?></td>
                                                <td class="text-center"><?php echo ($il+$ils)." / ".(count($Sqls)+$ils_2); ?></td>
                                            </tr>
                                            <?php
                                            }
                                        ?>
                                        
                                        
                                        
                                        <?php
                                            if($ilce != 0){
                                            ?>
                                            <tr>
                                                <td class="text-center"><?php echo $state; ?></td>
                                                <td class="text-center"><?php echo ($ilce+$ilces)." / ".(count($Sqlsa)+$ilces_2); ?></td>
                                            </tr>
                                            <?php
                                            }
                                        ?>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <?php
                        
                        
                    }
            }
            ?>
            
           <!----------------------------------------------------------------------------->
            
            <?php
                if(!isset($Post)){
                ?>
            
                <?php
                }else{
                ?>
                <div>
                    <h1 class="ui huge header" style="margin-bottom: 20px;">Sonuç Tablosu</h1>
                </div>
                <?php
                }
            ?>


            <div class="row row-eq-height mbBot optikMain">
                {% for Ders in Dersler %}
                    <div class="{% if Denemem == 10 %} col-xs-12 col-sm-6 col-md-6 col-lg-6 {% else %} col-xs-12 col-sm-6 col-md-6 col-lg-3 {% endif %} Optik">
                        <div class="optikBox">
                            <div class="row">
                                <div class="col-12 border">
                                    <h1 class="ui optik huge header">{{Ders['ders']}}</h1>
                                </div>
                            </div>
                            {% for Soru in Ders['Sorular'] %}
                            
                            <?php
                               
                                $Class = array('A'    => '',
                                               'B'    => '',
                                               'C'    => '',
                                               'D'    => '');
                                               
                                if(isset($Post)){
                                    if(!empty($Post['cevap'][$Soru['ID']])){
                                        if($Post['cevap'][$Soru['ID']] == $Post['dogruCevap'][$Soru['ID']]){
                                            $Class[$Post['dogruCevap'][$Soru['ID']]] = ' dogru';
                                        }else{
                                            $Class[$Post['dogruCevap'][$Soru['ID']]] = ' dogru';
                                            $Class[$Post['cevap'][$Soru['ID']]] = ' yanlis';
                                        }
                                    }
                                }
                                
                            ?>
                            
                            <div class="row siklar" id="{{Ders['perma']}}_{{Soru['orders']}}">
                                <div class="col-2 numberNo">
                                    {{Soru['orders']}}.
                                    <input type="hidden" name="cevap[{{Soru['ID']}}]" value="<?php if(isset($Post)) echo $Post['cevap'][$Soru['ID']]; ?>" class="cevap">
                                    <input type="hidden" name="dogruCevap[{{Soru['ID']}}]" value="{{Soru['result']}}" class="dogruCevap">
                                    <input type="hidden" name="Puan[{{Soru['ID']}}]" value="{{Soru['Puan']}}" class="Puan">
                                    <input type="hidden" name="Sira[{{Soru['ID']}}]" value="{{Soru['orders']}}" class="Sira">
                                    <input type="hidden" name="Ders[{{Soru['ID']}}]" value="{{Soru['ders']}}" class="Ders">
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['A'] ?>" data-order="{{Soru['orders']}}" data-value="A">A</a>
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['B'] ?>" data-order="{{Soru['orders']}}" data-value="B">B</a>
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['C'] ?>" data-order="{{Soru['orders']}}" data-value="C">C</a>
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['D'] ?>" data-order="{{Soru['orders']}}" data-value="D">D</a>
                                </div>
                                <!--
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['E'] ?>" data-order="{{Soru['orders']}}" data-value="E">E</a>
                                </div>
                                -->
                            </div>
                            
                            {% endfor %}
                        </div>
                    </div>
                {% endfor %}

            </div>

        {% else %}
            {% if ID != 0 %}
            <div style="margin-bottom: 40px;" class="ui negative icon message mbBot"> <i class="warning sign icon"></i>
                <div class="header"> Üzgünüm, bu içeriği görüntüleyemiyorsunuz, ücretli, üyelere özel bir içerik veya böyle bir içerik yok <a href="/uyelik-paketleri">buradan</a> üyelik paketlerimizi inceleyebilirsiniz. </div>
            </div>
            
            {% endif %}
        {% endif %}
        
    </div>
</div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
{% else %}











<style>

    .numberNo{
        padding-top: 2px;
        font-weight: 700;
        font-size: 18px;
    }
    .optikMain{
        border-radius: 5px !important;
        margin-left: 0;
        margin-right: 0;
    }
    .border:first-child{
        background: #1a1a1a;
    }
    .border h1{
        color:#fff !important;
    }
    .siklar,.optikMain,.border{
        border: 1px solid #ddd;
    }
    .siklar a {
        border:2px solid #DC2328;
        border-radius: 50%;
        color:#DC2328;
        font-weight: 900;
        width: 30px;
        height: 30px;
        line-height: 26px;
        text-align: center;
        display: block;
        margin-right: 5px;
    }
    .siklar a:hover{
        color:#fff;
        background:#DC2328;
    }
    .siklar a.active{
        color:#fff;
        background:#666666;
        border-color: #666666;
    }
    
    .siklar a.yanlis{
        color:#fff;
        background:#E30613;
        border-color: #E30613;
    }
    
    .siklar a.dogru {
        color:#fff;
        background:#0FC646;
        border-color: #0FC646;
    }
    
    .siklar a.bos {
        color:#fff;
        background:#2D5EA8;
        border-color: #2D5EA8;
    }
    
    
    .optikBox .row .col-2{
        padding-top: 12px;
        padding-bottom: 12px;
        padding-left:0;
        padding-right:0;
        text-align: center;
    }
    .optikBox .row:nth-child(odd) .col-2{
        background: #f9f9f9;
    }
    .ui.optik.huge.header{
        text-align: center;
        padding: 20px 0;
    }
    .green{
        background: #FCFFF5;
        padding: 20px;
        color:rgb(26, 83, 27);
        border:1px solid rgb(26, 83, 27);
        font-weight: bold;
        border-radius: 4px;
    }
    
    #Blur{
        background: rgba(0,0,0,0.9);
        position: absolute;
        z-index: 55;
        bottom:0;
        left: 0;
        right: 0;
        top: 0;
        width: 100%;
        height: 100%;
        display:block;

    }
    
</style>

<script>
    $(document).ready(function(){
        
        <?php
            if(!isset($Post)){
                ?>
            $('.siklar a').click(function(){
                    
                /* İşaretleme Seçenekleri */
                if($(this).hasClass('active') == true){
                    var values = '';
                    $(this).closest('.siklar').find('.cevap').val(values);
                    $(this).closest('.siklar').find('a').removeClass('active');
                }else{
                    var values = $(this).data('value');
                    $(this).closest('.siklar').find('.cevap').val(values);
                    $(this).closest('.siklar').find('a').removeClass('active');
                    $(this).addClass('active');
                }  
            });
                
            $('#din_kulturu').change(function(){
                
                var values = $(this).val();
                
                if(values == ''){
                    $('#sosyal-bilimler_16').show().find('.cevap').val('');
                    $('#sosyal-bilimler_17').show().find('.cevap').val('');
                    $('#sosyal-bilimler_18').show().find('.cevap').val('');
                    $('#sosyal-bilimler_19').show().find('.cevap').val('');
                    $('#sosyal-bilimler_20').show().find('.cevap').val('');
                    $('#sosyal-bilimler_21').show().find('.cevap').val('');
                    $('#sosyal-bilimler_22').show().find('.cevap').val('');
                    $('#sosyal-bilimler_23').show().find('.cevap').val('');
                    $('#sosyal-bilimler_24').show().find('.cevap').val('');
                    $('#sosyal-bilimler_25').show().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_16').find('a').removeClass('active');
                    $('#sosyal-bilimler_17').find('a').removeClass('active');
                    $('#sosyal-bilimler_18').find('a').removeClass('active');
                    $('#sosyal-bilimler_19').find('a').removeClass('active');
                    $('#sosyal-bilimler_20').find('a').removeClass('active');
                    $('#sosyal-bilimler_21').find('a').removeClass('active');
                    $('#sosyal-bilimler_22').find('a').removeClass('active');
                    $('#sosyal-bilimler_23').find('a').removeClass('active');
                    $('#sosyal-bilimler_24').find('a').removeClass('active');
                    $('#sosyal-bilimler_25').find('a').removeClass('active');
                }else if(values == '1'){
                    $('#sosyal-bilimler_16').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_17').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_18').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_19').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_20').hide().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_21').show().find('.cevap').val('');
                    $('#sosyal-bilimler_22').show().find('.cevap').val('');
                    $('#sosyal-bilimler_23').show().find('.cevap').val('');
                    $('#sosyal-bilimler_24').show().find('.cevap').val('');
                    $('#sosyal-bilimler_25').show().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_16').find('a').removeClass('active');
                    $('#sosyal-bilimler_17').find('a').removeClass('active');
                    $('#sosyal-bilimler_18').find('a').removeClass('active');
                    $('#sosyal-bilimler_19').find('a').removeClass('active');
                    $('#sosyal-bilimler_20').find('a').removeClass('active');

                    
                }else if(values == '0'){
                    $('#sosyal-bilimler_16').show().find('.cevap').val('');
                    $('#sosyal-bilimler_17').show().find('.cevap').val('');
                    $('#sosyal-bilimler_18').show().find('.cevap').val('');
                    $('#sosyal-bilimler_19').show().find('.cevap').val('');
                    $('#sosyal-bilimler_20').show().find('.cevap').val('');
                    
                    $('#sosyal-bilimler_21').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_22').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_23').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_24').hide().find('.cevap').val('');
                    $('#sosyal-bilimler_25').hide().find('.cevap').val('');
      
                    $('#sosyal-bilimler_21').find('a').removeClass('active');
                    $('#sosyal-bilimler_22').find('a').removeClass('active');
                    $('#sosyal-bilimler_23').find('a').removeClass('active');
                    $('#sosyal-bilimler_24').find('a').removeClass('active');
                    $('#sosyal-bilimler_25').find('a').removeClass('active');
                }
                
            });
                
            
                <?php
            }    
        ?>
        
        
        
        $('.tyt').keyup(function(){
            $('#has-warning').hide();
            var values = parseInt($(this).val());
            if(values < 0 || values > 500){
                values = 0;
                $('#has-warning').show();
            }
            if(isNaN(values)){
                values = 0;
                $('#has-warning').show();
            }
            $(this).val(values);
        });
        
    });
</script>

{% for Test in Testlers %}
    {% if Test['ID'] == ID %} {% set varO = Test['test_adi'] %} {% endif %}
{% endfor %}

<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <div class="content">
                    {% if varO is defined %}
                        {{varO}}
                    {% else %}
                        LGS Deneme Sınavı Çözüm Anahtarı
                    {% endif %}
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/hurriyet-deneme-sinavi-cozum-anahtari"> LGS Deneme Sınavı Çözüm Anahtarı </a></li>
              {% if varO is defined %}
              <li class="breadcrumb-item"><a href="/hurriyet-deneme-sinavi-cozum-anahtari/{{ID}}"> {{varO}}</a></li>
              {% endif %}
            </ol>
        </div>
        </div>
    </div>
</div>



<div id="entries">
    <div class="container">
        {% if User is not defined %}
        <!-- Blur -->
        <form action="/giris" method="post" id="loginForm">
            <div id="Blur">
            </div>
            <div class="row row-eq-height mbBot" style=" margin-right: 0px; margin-left: 0px; position: absolute; z-index: 66; color:#fff !important;">

                   {% if message is defined %}
                    <div class="col-12 mbBot">
                        <div class="ui negative icon  message">
                          <i class="warning sign icon"></i>
                          <div class="header">
                            {{message['message']}}
                          </div>
                        </div>
                    </div>
                    {% endif %}

                    <div class="col-sm-6">

                        <div class="row">

                            <div class="col-12">
                                <div class="form-group">
                                    <label>E-Posta Adresiniz veya Kullanıcı Adınız</label>
                                    <input type="text" name="email" class="form-control form-control-lg" placeholder="E-Posta Adresiniz veya Kullanıcı Adınız">
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Parolanız</label>
                                    <input type="password" name="pass" class="form-control form-control-lg" placeholder="Parolanız">
                                </div>
                            </div>

                            <div class="col-6">
                                <label class="custom-control custom-checkbox">
                                  <input type="checkbox" name="optionsCheckboxes" checked class="custom-control-input">
                                  <span class="custom-control-indicator"></span>
                                  <span class="custom-control-description"> Beni Hatırla</span>
                                </label>
                                <br /> 
                                <br /> 
                                <a href="/sifremi-unuttum" class="btn btn-sm btn-outline-primary"><i class="fa fa-question"></i> Şifremi Unuttum</a>
                            </div>

                            <div class="col-6 text-right">
                                <br/>
                                <button class="btn btn-sm btn-success btn-lg"><i class="fa fa-send"></i> Giriş</button>
                            </div>
                            
                        </div>

                    </div>

                    <div class="col-sm-6 vcenter text-center black min-height150 left-b">
                       <h3 style=" color:#fff !important;">Üye değil misiniz?</h3>
                       <p style=" color:#fff !important;">Üyelerimize özel hizmetlerimizden faydalanabilmek için üye olun.</p>
                       <a href="/uye-ol" class="btn btn-sm btn-primary btn-lg flexBtn"> <i class="fa fa-user-plus"></i> Hemen Üye Ol</a>
                   </div>

            </div>
        </form>
        <!-- Blur -->
        {% endif %}
        <?php
            if(!isset($Post)){
            ?>
            {% if userUpdate is defined %}
                
                <div class="mbBot">
                    <div class="ui info icon message">
                        <i class="warning sign icon"></i>
                        <div class="header"> Üzgünüm, bu modülü kullanabilmek için <a href="/bilgilerim">buradan</a> bilgilerinizi güncellemelisiniz, lütfen tüm bilgileri eksiksiz giriniz Türkiye, il ve ilçe sıralamalarınızın doğru yapılabilmesi için bu işlem zorunludur. </div>
                    </div>
                </div>
                
            {% else %}
            <div class="row mbBot" {% if User is not defined %} style="visibility: hidden"{% endif %}>
                <div class="col-sm-12">
                    <label style="font-weight: 900">LGS Deneme Sınavı </label>
                    <small class="text-muted pull-right">Testinizin çözüm sonucunu kontrol edebilmek için, lütfen önce test seçiniz.</small>
                    <select onchange="window.location.href='/hurriyet-deneme-sinavi-cozum-anahtari/'+this.value" class="form-control form-control-lg">
                        <option value="">-- LGS Deneme Sınavı Seçimi --</option>
                        {% for Test in Testler %}
                            <option value="{{Test['ID']}}{% if Denemem is defined %}?Deneme=<?php echo intval($_GET['Deneme']); ?>{% endif %}"{% if Test['ID'] == ID %} {% set varO = Test['test_adi'] %} selected=""{% endif %}>{{Test['test_adi']}}</option>
                        {% endfor %}
                    </select>
                </div>
            </div>
            {% endif %}
            <?php
            }
        ?>
        
        
        {% if ID != 0 and varO is defined %}
        
        
        
        <?php
        if(!isset($Post)){
        ?>
        <form action="{{Formcu}}" method="post" id="obppuan">
        <?php
        }   
        ?>
           
           <!----------------------------------------------------------------------------->
           <?php
               $Sonuclar = array();
               $Sonuclar['ToplamPuan'] = 0;
           ?>
           {% for Ders in Dersler %}
                <?php
                    $Sonuclar[$Ders['ders']] = array('Dogru'     => 0,
                                                     'Yanlis'    => 0,
                                                     'Bos'       => 0,
                                                     'Net'       => 0);
                ?>
                {% for Soru in Ders['Sorular'] %}

                <?php
                    $Class = array('A'    => '',
                                   'B'    => '',
                                   'C'    => '',
                                   'D'    => '');
                                   
                    
                    
                    if(isset($Post)){
                       
                        $Sonuclar[$Ders['ders']]['Ders'] = $Ders['ders'];
                       
                        if(!empty($Post['cevap'][$Soru['ID']])){
                            if($Post['cevap'][$Soru['ID']] == $Post['dogruCevap'][$Soru['ID']]){
                                $Class[$Post['dogruCevap'][$Soru['ID']]] = ' class="dogru"';
                                $Sonuclar[$Ders['ders']]['Dogru']++;
                                $Sonuclar[$Ders['ders']]['Net']++;
                            }else{
                                $Class[$Post['dogruCevap'][$Soru['ID']]] = ' class="dogru"';
                                $Class[$Post['cevap'][$Soru['ID']]] = ' class="yanlis"';
                                $Sonuclar[$Ders['ders']]['Yanlis']++;
                            }
                        }else{
                            $Sonuclar[$Ders['ders']]['Bos']++;
                        }

                    }
                ?>
                {% endfor %}
                
                <?php
                   
                    $Sonuclar[$Ders['ders']]['DogruGotur'] = ($Sonuclar[$Ders['ders']]['Yanlis'] / 4) * 1;
                    $Sonuclar[$Ders['ders']]['Net'] -= $Sonuclar[$Ders['ders']]['DogruGotur'];
                    $Sonuclar[$Ders['ders']]['Puan'] = $Sonuclar[$Ders['ders']]['Net'] * @$Post['Puan'][$Soru['ID']];
                    $Sonuclar['ToplamPuan'] += $Sonuclar[$Ders['ders']]['Puan'];
                    //echo '<pre>';
                      //                           print_r($Post['Puan'][$Soru['ID']]);
                        //                         echo '</pre>';
                ?>
            {% endfor %}
            <?php
            if(isset($Post)){
               $Sonuclar['EkPuan'] = 100;
               $Sonuclar['OBP'] = @$Post['obp'] * 0.6;
               $Sonuclar['HamPuan'] = round($Sonuclar['ToplamPuan']);
               $Sonuclar['ToplamPuan'] = round($Sonuclar['ToplamPuan']+$Sonuclar['EkPuan']) ;
               
                ?>
                <div>
                    <h1 class="ui huge header" style="margin-bottom: 20px;">Puan Tablosu</h1>
                </div>
                <div class="mbBot">
                    <table class="ui celled table">
                        <thead>
                            <tr>
                                <th>Ders</th>
                                <th class="text-center">Doğru</th>
                                <th class="text-center">Yanlış</th>
                                <th class="text-center">Boş</th>
                                <th class="text-center">Net</th>
                                <th class="text-center">Puan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                foreach($Sonuclar as $Sonuc){
                                    if(is_array($Sonuc)){
                                        echo '<tr>
                                            <th>'.$Sonuc['Ders'].'</th>
                                            <td class="text-center">'.$Sonuc['Dogru'].'</td>
                                            <td class="text-center">'.$Sonuc['Yanlis'].'</td>
                                            <td class="text-center">'.$Sonuc['Bos'].'</td>
                                            <td class="text-center">'.$Sonuc['Net'].'</td>
                                            <td class="text-center">'.number_format($Sonuc['Puan'],3).'</td>
                                        </tr>';
                                    }
                                }
                            ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="5" class="text-right"><b>Taban Puan:</b></th>
                                <th class="text-center"><b><?php echo number_format($Sonuclar['EkPuan'],3); ?></b></th>
                            </tr>
                            
                            <tr>
                                <th colspan="5" class="text-right"><b>Ham Puan:</b></th>
                                <th class="text-center"><b><?php echo number_format($Sonuclar['HamPuan'],3); ?></b></th>
                            </tr>
                            <tr>
                                <th colspan="5" class="text-right"><b>Yerleştirme Puanı:</b></th>
                                <th class="text-center"><b><?php echo number_format($Sonuclar['ToplamPuan'],3); ?></b></th>
                            </tr>
                            <tr>
                                <th colspan="6" class="text-right text-upper">4 Yanlış 1 Doğruyu Götürmüştür.</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                
                <?php
                    if(isset($Post)){
                        
                        
                        $Result = $this->db->query('Select * FROM cozum_test_sonuc WHERE cozum_test_ID = '.intval($ID).' AND user_ID = '.intval($UserID))->fetch();
                        
                        if(isset($Result['ID'])){
                            ?>
                            <div style="margin-bottom: 40px;" class="ui info icon message mbBot"> <i class="warning sign icon"></i>
                                <div class="header"> İlk çözdüğünüz sınavın sonucunu <a href="/hurriyet-deneme-sinavi-cozum-anahtari/<?php echo intval($ID); ?>?showID=<?php echo intval($ID); ?>">buradan</a> görebilirsiniz.</div>
                            </div>
                            
                            <div style="margin-bottom: 40px;" class="ui negative icon message mbBot"> <i class="warning sign icon"></i>
                                <div class="header"> Üzgünüm, daha önceden bu test için sonuç almışsınız, bundan dolayı sıralamanızı yenileyemiyoruz.</div>
                            </div>
                            <?php
                        }else{
                           
                            $Sonuclar['_POST'] = $_POST;
                           
                            $this->db->query("INSERT INTO `cozum_test_sonuc` (`cozum_test_ID`, `user_ID`, `ToplamPuan`, `Data`) VALUES ('".intval($ID)."', '".intval($UserID)."', '".number_format($Sonuclar['ToplamPuan'],3)."', '".json_encode($Sonuclar)."');");
                            
                            $Sira = 0;
                            $il = 0;
                            $ilce = 0;
                            
                            $Sql = $this->db->query("Select DISTINCT(user_ID) FROM cozum_test_sonuc WHERE cozum_test_ID = ".intval($ID)." ORDER BY ToplamPuan DESC")->fetchAll();
                            
                            
                            for($a = 0; $a < count($Sql); $a++){
                                if($Sql[$a]['user_ID'] == $UserID){
                                    $Sira = $a + 1;                                
                                }
                            }
                            
                            $Sqls = $this->db->query("Select * FROM cozum_test_sonuc INNER JOIN users ON users.ID = cozum_test_sonuc.user_ID WHERE cozum_test_ID = ".intval($ID)." AND users.city = ".intval($cityID)." ORDER BY ToplamPuan DESC;")->fetchAll();
                            
                            for($a = 0; $a < count($Sqls); $a++){
                                if($Sqls[$a]['user_ID'] == $UserID){
                                    $il = $a + 1;                                
                                }
                            }
                            
                            
                            $Sqlsa = $this->db->query("Select * FROM cozum_test_sonuc INNER JOIN users ON users.ID = cozum_test_sonuc.user_ID WHERE cozum_test_ID = ".intval($ID)." AND users.city = ".intval($cityID)." AND users.state = '".addslashes($state)."' ORDER BY ToplamPuan DESC;")->fetchAll();
                            
                            for($a = 0; $a < count($Sqlsa); $a++){
                                if($Sqlsa[$a]['user_ID'] == $UserID){
                                    $ilce = $a + 1;                                
                                }
                            }
                            
                            
                            $City = $this->db->query('Select * FROM cities WHERE plaka = '.$cityID.' LIMIT 1')->fetch();
                            
                            
                            
                            ?>
                            <div>
                                <h1 class="ui huge header" style="margin-bottom: 20px;">Puan Durumuna Göre Sıralama</h1>
                            </div>

                            <div class="mbBot">
                                <table class="ui celled table">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Bölge</th>
                                            <th class="text-center">Sıralama</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-center">TÜRKİYE GENELİ</td>
                                            <td class="text-center"><?php echo ($Sira )." / ".(count($Sql)); ?></td>
                                        </tr>
                                        
                                        <?php
                                            if($il != 0){
                                            ?>
                                            <tr>
                                                <td class="text-center"><?php echo $City['il'] ?></td>
                                                <td class="text-center"><?php echo ($il)." / ".(count($Sqls)); ?></td>
                                            </tr>
                                            <?php
                                            }
                                        ?>
                                        
                                        
                                        
                                        <?php
                                            if($ilce != 0){
                                            ?>
                                            <tr>
                                                <td class="text-center"><?php echo $state; ?></td>
                                                <td class="text-center"><?php echo ($ilce)." / ".(count($Sqlsa)); ?></td>
                                            </tr>
                                            <?php
                                            }
                                        ?>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <?php
                        }
                        
                    }
            }
            ?>
            
           <!----------------------------------------------------------------------------->
            
            <?php
                if(!isset($Post)){
                ?>
                
                
                {% if Denemem == 10  %}
                <div class="row" {% if User is not defined %} style="visibility: hidden"{% endif %}>
                    <div class="col-sm-6 mbBot">
                        <h1 class="ui huge header">{{varO}}</h1>
                        <label for="">TYT Puanı</label>
                        <input type="text" name="tyt" class="tyt rakam form-control form-control-lg" <?php if(isset($Post)) echo 'disabled=""' ?> value="<?php if(isset($Post)) echo intval($Post['tyt']);  ?>">
                    </div>
                    
                </div>
                
                {% else %}
                    
                {% endif %}
                
                
                
                <?php
                }else{
                ?>
                <div>
                    <h1 class="ui huge header" style="margin-bottom: 20px;">Sonuç Tablosu</h1>
                </div>
                <?php
                }
            ?>


            <div class="row row-eq-height mbBot optikMain">
                {% for Ders in Dersler %}
                    <div class="{% if Denemem == 10 %} col-xs-12 col-sm-6 col-md-6 col-lg-6 {% else %} col-xs-12 col-sm-6 col-md-6 col-lg-3 {% endif %} Optik">
                        <div class="optikBox">
                            <div class="row">
                                <div class="col-12 border">
                                    <h1 class="ui optik huge header">{{Ders['ders']}}</h1>
                                </div>
                            </div>
                            {% for Soru in Ders['Sorular'] %}
                            
                            <?php
                               
                                $Class = array('A'    => '',
                                               'B'    => '',
                                               'C'    => '',
                                               'D'    => '');
                                               
                                if(isset($Post)){
                                    if(!empty($Post['cevap'][$Soru['ID']])){
                                        if($Post['cevap'][$Soru['ID']] == $Post['dogruCevap'][$Soru['ID']]){
                                            $Class[$Post['dogruCevap'][$Soru['ID']]] = ' dogru';
                                        }else{
                                            $Class[$Post['dogruCevap'][$Soru['ID']]] = ' dogru';
                                            $Class[$Post['cevap'][$Soru['ID']]] = ' yanlis';
                                        }
                                    }
                                }
                                
                            ?>
                            
                            <div class="row siklar" id="{{Ders['perma']}}_{{Soru['orders']}}">
                                <div class="col-2 numberNo">
                                    {{Soru['orders']}}.
                                    <input type="hidden" name="cevap[{{Soru['ID']}}]" value="<?php if(isset($Post)) echo $Post['cevap'][$Soru['ID']]; ?>" class="cevap">
                                    <input type="hidden" name="dogruCevap[{{Soru['ID']}}]" value="{{Soru['result']}}" class="dogruCevap">
                                    <input type="hidden" name="Puan[{{Soru['ID']}}]" value="{{Soru['Puan']}}" class="Puan">
                                    <input type="hidden" name="Sira[{{Soru['ID']}}]" value="{{Soru['orders']}}" class="Sira">
                                    <input type="hidden" name="Ders[{{Soru['ID']}}]" value="{{Soru['ders']}}" class="Ders">
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['A'] ?>" data-order="{{Soru['orders']}}" data-value="A">A</a>
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['B'] ?>" data-order="{{Soru['orders']}}" data-value="B">B</a>
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['C'] ?>" data-order="{{Soru['orders']}}" data-value="C">C</a>
                                </div>
                                <div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['D'] ?>" data-order="{{Soru['orders']}}" data-value="D">D</a>
                                </div>
                                <!--<div class="col-2">
                                    <a href="javascript:;" class="{{Ders['perma']}} <?php echo $Class['E'] ?>" data-order="{{Soru['orders']}}" data-value="E">E</a>
                                </div>
                                -->
                            </div>
                            
                            {% endfor %}
                        </div>
                    </div>
                {% endfor %}

            </div>
            
            <?php
            if(!isset($Post)){
            ?>
            <div class="row mbBot">
                <div class="col-sm-6">
                    <div class="text-left mb-center">
                        <br/>
                        <a href="<?php echo $_SERVER['REQUEST_URI'] ?>" class="btn btn-danger btn-lg"><i class="fa fa-times"></i> Formu Temizle</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="text-right mb-center">
                        <br/>
                        <button class="btn btn-success btn-lg"><i class="fa fa-check"></i> Sonucumu Hesapla</button>
                    </div>
                </div>
            </div>
            
        </form>
            <?php
            }
            ?>
        {% else %}
            {% if ID != 0 %}
            <div style="margin-bottom: 40px;" class="ui negative icon message mbBot"> <i class="warning sign icon"></i>
                <div class="header"> Üzgünüm, bu içeriği görüntüleyemiyorsunuz, ücretli, üyelere özel bir içerik veya böyle bir içerik yok <a href="/uyelik-paketleri">buradan</a> üyelik paketlerimizi inceleyebilirsiniz. </div>
            </div>
            
            {% endif %}
        {% endif %}
        
    </div>
</div>

















{% endif %}