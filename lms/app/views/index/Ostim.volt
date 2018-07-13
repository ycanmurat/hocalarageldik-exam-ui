<style>
    .blue{
        background: rgba(126, 214, 223,0.1)
    }
    .select2-container--bootstrap .select2-selection {
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 4px;
        color: #555;
        font-size: 14px;
        outline: 0;
        padding: 25px !important;
    }
    .select2-container .select2-selection--single .select2-selection__rendered {
        display: block;
        padding-left: 8px;
        padding-right: 20px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        margin-top: -10px;
    }
    .select2-container .select2-selection--single {
        box-sizing: border-box;
        cursor: pointer;
        display: block;
        height: 28px;
        user-select: none;
        padding: 25px !important;
        -webkit-user-select: none;
    }
</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="user outline icon"></i>
                  <div class="content">
                    Ostim Türkiye Geneli Deneme Sınavı
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/index/Ostim"> Ostim Türkiye Geneli Deneme Sınavı Katılım Formu</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row mbBot">
       
        <?php $this->partial("layouts/RightMenu"); ?>
        
        <div class="col-12 col-sm-12 col-md-8">
           
           
            <div class="ui form">
              <div class="grouped fields">
                <h5 style="margin-bottom:20px; margin-top:20px;padding-top:4px; padding-bottom:3px;">
                    <i class="edit outline icon"></i> Ostim Türkiye Geneli Deneme Sınavı Katılım Formu
                </h5>
                <hr>
              </div>
            </div>
            
            <form action="" method="post" id="sifredegistir">
                <div class="row">
                    
                    {% if Error is defined %}
                    <div class="col-12 mbBot">
                        <div class="ui negative icon  message">
                          <i class="warning sign icon"></i>
                          <div class="header">
                            {{Error}}
                          </div>
                        </div>
                    </div>
                    {% endif %}
                    
                    {% if Success is defined %}
                    <div class="col-12 mbBot">
                        <div class="ui positive icon  message">
                          <i class="check icon"></i>
                          <div class="header">
                            Tebrikler, bilgileriniz başarıyla kayıt edildi ve sınava katılmaya hak kazandınız!
                          </div>
                        </div>
                    </div>
                    {% endif %}
                    
                    {% if ostim_phone is empty %}
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Cep Telefonu</label>
                            <input type="text" placeholder="Telefon Numaranız" required name="phone" value="<?php if($_POST && isset($_POST['phone'])) echo $_POST['phone']; ?>" class="form-control form-control-lg phone">
                        </div>
                    </div>

                    <div class="col-12 smsGonderdik" style="display: none;">
                        <div class="form-group alert alert-info">
                            * Cep telefonu numaranıza bir doğrumala kodu gönderdik, birazdan senden bu onay kodunu girmeni isteyeceğiz :)
                        </div>
                    </div>


                    <input type="hidden" id="kodGonder" value="0">
                    <input type="hidden" id="kodGonderdim" value="0">

                    <div class="col-sm-12" id="Code" <?php if(!$_POST && !isset($_POST['phone'])) echo 'style="display: none;"'; ?>>
                        <div class="form-group">
                            <label>SMS Doğrulama Kodu</label>
                            <input type="text" name="code" id="codem" placeholder="Cep telefonunuza gönderilen onay kodunu giriniz." value="<?php if($_POST && isset($_POST['code'])) echo $_POST['code']; ?>" class="form-control form-control-lg blue">
                            <small class="form-text text-muted" style="display: block;">Cep telefonunuza gönderilen onay kodunu giriniz.</small>
                        </div>
                    </div>
                    
                    {% else %}

                    <div class="col-12 mbBot">
                        <div class="ui positive icon  message">
                          <i class="check icon"></i>
                          <div class="header">
                            Cep telefonu numaranızı doğrulamışsınız, isterseniz tercihlerinizi güncelleyebilirsiniz.
                          </div>
                        </div>
                    </div>
                                        
                    {% endif %}

                    <div class="col-12">
                        <br>
                        <h4>Üniversite Hedefleriniz</h4>
                        <br>
                    </div>
                    <?php
                        for($a = 0; $a < 3; $a++){
                        ?>
                        <div class="col-sm-12 col-md-4">
                            <div class="form-group">
                                <label><?php echo ($a+1) ?>. Üniversite</label>
                                <select name="universite[universite][]" class="universite universite_<?php echo $a ?> custom-select form-control-lg select2" data-id="<?php echo $a ?>">
                                    <?php
                                        if(isset($Tercihler['universite'][$a])){
                                            ?>
                                            <option value="<?php echo $Tercihler['universite'][$a]['id'] ?>"><?php echo $Tercihler['universite'][$a]['text'] ?></option>
                                            <?php
                                        }else{
                                        ?>
                                        <option value=""> - Üniversite Seçiniz - </option>
                                        <?php
                                        }
                                    ?>
                                    <?php
                                        foreach($Universiteler as $Universite){
                                            echo '<option value="'. $Universite['universite_id'] .'">'. $Universite['name'] .'</option>';
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>

                        <script>
                        $(".universite_<?php echo $a ?>").change(function()
                        {

                            var id=$(this).val();
                            var dataString = id;

                            $('.fakulte_<?php echo $a ?>').select2({

                                placeholder: ' - Fakülte Seçiniz - ',
                                ajax: {
                                  url: '/uye-ol?universite_id='+dataString,
                                  dataType: 'json',
                                  delay: 250,
                                  processResults: function (data) {
                                    return {
                                      results: data
                                    };
                                  },
                                  cache: false
                                }
                              }).val(null).trigger('change');
                          });
                        </script>

                        <div class="col-sm-12 col-md-4">
                            <div class="form-group">
                                <label>Fakülte</label>
                                <select name="universite[fakulte][]" class="fakulte fakulte_<?php echo $a ?> custom-select form-control-lg select2" data-id="<?php echo $a ?>">
                                    <?php
                                        if(isset($Tercihler['fakulte'][$a])){
                                            ?>
                                            <option value="<?php echo $Tercihler['fakulte'][$a]['id'] ?>"><?php echo $Tercihler['fakulte'][$a]['text'] ?></option>
                                            <?php
                                        }else{
                                        ?>
                                        <option value=""> - Fakülte Seçiniz - </option>
                                        <?php
                                        }
                                    ?>

                                </select>
                            </div>
                        </div>

                        <script>
                        $(".fakulte_<?php echo $a ?>").change(function()
                        {
                            var id=$(this).val();
                            var dataString = id;
                            $('.bolum_<?php echo $a ?>').select2({

                                placeholder: ' - Bölüm Seçiniz - ',
                                ajax: {
                                  url: '/uye-ol?fakulte_id='+dataString,
                                  dataType: 'json',
                                  delay: 250,
                                  processResults: function (data) {
                                    return {
                                      results: data
                                    };
                                  },
                                  cache: false
                                }
                              }).val(null).trigger('change');
                          });
                        </script>

                        <div class="col-sm-12 col-md-4">
                            <div class="form-group">
                                <label>Bölüm</label>
                                <select name="universite[bolum][]" class="bolum bolum_<?php echo $a ?> custom-select form-control-lg select2" data-id="<?php echo $a ?>">
                                    <?php
                                        if(isset($Tercihler['bolum'][$a])){
                                            ?>
                                            <option value="<?php echo $Tercihler['bolum'][$a]['id'] ?>"><?php echo $Tercihler['bolum'][$a]['text'] ?></option>
                                            <?php
                                        }else{
                                        ?>
                                        <option value=""> - Bölüm Seçiniz - </option>
                                        <?php
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>

                        <div class="col-12">

                            <hr>

                        </div>
                        <?php
                        }
                    ?>



                    <div class="col-12 text-right">
                        <button type="submit" class="btn btn-success btn-lg"><i class="fa fa-send"></i> Sınava Katılmak İstiyorum</button>
                    </div>
                </div>
            </form>

            
        </div>
        
    </div>
</div>

<script>
 
    
    
function Code(num){
    
    var kodGonder = parseInt($('#kodGonder').val());
    if(kodGonder == 0){
        var gsm = num;
        var randCode = Math.floor(Math.random() * 999999) + 100000;
        gsm = gsm.replace('(', '');
        gsm = gsm.replace(')', '');
        for(var a = 0; a < 5; a++){
            gsm = gsm.replace(' ', '');
        }
        gsm = gsm.trim();

        $.get("/cekilis-formu?phone="+ gsm +"&code="+ randCode, function( data ) {
          if(data != "00"){
              $('.phone').html('');
              alert("Lütfen geçerli bir telefon numarası giriniz!");
          }else{
              $('#kodGonder').val(1);
              $('#codem').val('');
              $('#Code').show();
              $('.smsGonderdik').show();
              Calistir();
          }
        });
    }
    
}
    
// In your Javascript (external .js resource or <script> tag)
$(document).ready(function() {
    $('.select2').select2({
        theme: "bootstrap"
    });
    
    $('.phone').keyup(function(){
        var vl = $(this).val();
        vl = vl.replace('(','');
        vl = vl.replace(')','');
        vl = vl.replace(' ','');
        vl = vl.replace(' ','');
        vl = vl.replace(' ','');
        vl = vl.replace(' ','');
        vl = vl.replace(' ','');
        vl = vl.replace(' ','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        vl = vl.replace('_','');
        if(vl.length == 11){
            Code(vl);
             $('#kodGonderdim').val(1);
        }
    });
});   
function Calistir(){
    setTimeout(function(){
      $('#kodGonder').val(0);
  },60000);
}
    
function epostaCheck(mail){
    $.get("/cekilis-formu?email="+ mail, function( data ) {
      if(data == "1"){
          $('input').removeAttr('disabled');
          $('button').removeAttr('disabled');
          $('textarea').removeAttr('disabled');
      }else{
          alert("Üzgünüm, çekilişi kazananlar listesinde e-posta adresiniz bulunmuyor.");
      }
    });
}
    
function epostaChecks(mail){
    $.get("/cekilis-formu?email="+ mail, function( data ) {
      if(data == "1"){
          $('input').removeAttr('disabled');
          $('button').removeAttr('disabled');
          $('textarea').removeAttr('disabled');
      }
    });
}
</script>