<style>
    .blue{
        background: rgba(126, 214, 223,0.1)
    }
</style>
<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="world icon"></i>
                  <div class="content">
                    Çekiliş İletişim Formu
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/cekilis-formu"> Çekiliş İletişim Formu</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>




<form action="/cekilis-formu" method="post" id="CekilisForm">
    
    <div class="container">

        <div class="row mbBot">
            
            <div class="col-12 col-xs-12 col-sm-12 col-md-12">
                {% if msg_1 is defined %}
                    <div class="alert alert-{{msg_1}}">{{msg_2}}</div>
                {% endif %}
            </div>
            {% if noForm is not defined %}
            <div class="col-12 col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <label>Çekiliş</label>
                    <input type="text" readonly name="cekilis" placeholder="Çekiliş" value="<?php if($_POST && isset($_POST['cekilis'])) echo $_POST['cekilis']; ?>" class="form-control form-control-lg">
                </div>
            </div>
            
            <div class="col-12">
                <h6>Öncelikle e-posta adresinizi giriniz eğer e-posta adresiniz çekilişi kazananlar listesinden doğrulanırsa adınız soyadınız, cep telefonu numaranız gibi alanlar aktif hale gelecektir. Aksi halde çekilişi kazanmadığınız için bu formu dolduramayacaksınız.</h6>
            </div>
            
            <div class="col-12 col-xs-12 col-sm-12 col-md-4">
                <div class="form-group">
                    <label>E-Posta Adresiniz</label>
                    <input type="email" placeholder="E-Posta Adresiniz" name="email" onchange="epostaCheck(this.value);" onkeyup="epostaChecks(this.value);" value="<?php if($_POST && isset($_POST['email'])) echo $_POST['email']; ?>" class="form-control form-control-lg">
                    <small class="form-text text-muted" style="display: block;">Çekilişe katıldığınız e-posta adresiniz.</small>
                </div>
            </div>

            <div class="col-12 col-xs-12 col-sm-12 col-md-4">
                <div class="form-group">
                    <label>Adınız Soyadınız</label>
                    <input type="text" disabled placeholder="Adınız Soyadınız" name="name" value="<?php if($_POST && isset($_POST['name'])) echo $_POST['name']; ?>" class="form-control form-control-lg name">
                </div>
            </div>
            <div class="col-12 col-xs-12 col-sm-12 col-md-4">
                <div class="form-group">
                    <label>Telefon Numaranız</label>
                    <input type="text" disabled placeholder="Telefon Numaranız" onchange="Code(this.value);" name="phone" value="<?php if($_POST && isset($_POST['phone'])) echo $_POST['phone']; ?>" class="form-control form-control-lg phone">
                </div>
            </div>
            
            
            <div class="col-12 col-xs-12 col-sm-12 col-md-12" style="<?php if($_POST && !isset($_POST['phone'])) echo 'display: none;'; ?>" id="Code">
                <div class="form-group">
                    <label>Onay Kodu</label>
                    <input type="text" disabled name="code" id="codem" placeholder="Cep telefonunuza gönderilen onay kodunu giriniz." value="<?php if($_POST && isset($_POST['code'])) echo $_POST['code']; ?>" class="form-control form-control-lg blue">
                    <small class="form-text text-muted" style="display: block;">Cep telefonunuza gönderilen onay kodunu giriniz.</small>
                </div>
            </div>
            
            <div class="col-12 col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <label>Adresiniz</label>
                    <textarea name="address" disabled rows="5" class="form-control form-control-lg" placeholder="Adresiniz"><?php if($_POST && isset($_POST['address'])) echo $_POST['address']; ?></textarea>
                </div>
            </div>

            <div class="col-12 col-xs-12 text-right">
                <button disabled class="btn btn-success btn-lg"><i class="fa fa-send"></i> Gönder</button>
            </div>
            {% endif %}
            
        </div>
    </div>
</form>
<script>
$(function(){
     $("#CekilisForm").validate({
        errorElement: 'span', 
        errorClass: 'has-warning', 
        ignore: "",
        rules: {
            name: {
              required: true,
              minlength: 5
            },
            phone: {
              required: true
            },
            email: {
              required:true,
              email:true  
            },
            code:{
              required:true,
              minlength:6,
              maxlength:6
            },
            address: {
              required: true,
              minlength: 15
            }
        },
        messages: {
            name: {
              required: "Lütfen adınızı soyadınızı giriniz.",
              minlength: "Adınız soyadınız en az 5 karakterden oluşmalıdır."
            },
            phone: {
              required:  "Lütfen telefon numaranızı giriniz."
            },
            email: {
              required:"Lütfen e-posta adresinizi giriniz.",
              email:"Lütfen geçerli bir e-posta adresi giriniz."  
            },
            code:{
              required:"Lütfen cep telefonunuza gönderilen onay kodunu giriniz.",
              minlength:"Onay kodu 6 karakterden oluşmaktadır.",
              maxlength:"Onay kodu 6 karakterden oluşmaktadır."
            },
            address: {
              required: "Lütfen adresinizi giriniz.",
              minlength: "Adresiniz en az 15 karakter oluşmalıdır."
            }
        }
     });
});
function Code(num){
    
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
          $('#codem').val('');
          $('#Code').show();
      }
    });
    
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