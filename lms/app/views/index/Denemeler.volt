
<div id="breadcrumb">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <ol class="breadcrumb">
                  <li><a href="/"><i class="fa fa-home"></i></a></li>
                  <li class="active"><a href="/deneme-sinavlari">Sınavlar</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>


<div class="mbt30">
    
    <div class="container">
        <div class="row">
            
            
            {% if Uyari is defined %}
            <div class="col-md-12">
                {% if User is not defined %}
                <div class="alert alert-info">
                    Sınavlar sadece üyelerimize özeldir, lütfen <a href="/giris" style="font-weight: bold;">giriş yapınız</a> veya <a href="/uye-ol" style="font-weight: bold;">üye olunuz</a>.
                </div>
                {% endif %}
                <div class="alert alert-danger">
                    Sınavlar şuan için sadece (YGS-LYS / TYT-YKS) paketlerine özeldir, TYT Deneme sınavlarını çözebilmek için <a href="/satin-al/1" style="font-weight: bold;">buradan</a> TYT-YKS üyelik paketi satın alabilirsiniz.
                </div>
            </div>
            {% else %}
            
            <div class="col-md-12"> <h1 class="pageTitle2 text-left bn">Online TYT Deneme Sınavı</h1> </div>
            
            <div class="col-xs-12 col-sm-4">
                
                
                <div class="image shadowBt">
                <a href="/Index/QuizView?q=251,250&s={{SessionId}}" class="popup-quiz"> <img src="/assets/img/test.png" class="img-responsive"> </a> </div>
                <a href="/Index/QuizView?q=251,250&s={{SessionId}}" class="popup-quiz titleA text-center"> Online TYT Deneme Sınavı</a> 
                
                
            </div>
            
            
            <div class="col-md-12"> <h1 class="pageTitle2 text-left bn">TYT Deneme Sınavı PDF Versiyonu</h1> </div>
            
            
            <div class="col-xs-12 col-sm-3"> <div class="shadowBt">
                <a href="/public/Dosyalar/HG_TYT_TURKCE_DENEME_01.pdf" target="_blank"> <img src="/assets/img/pdf.png" width="100%"> </a> </div> 
                <a href="/public/Dosyalar/HG_TYT_TURKCE_DENEME_01.pdf" target="_blank" class="titleA text-center"> TYT Türkçe Deneme (PDF)</a>
            </div>
            
            <div class="col-xs-12 col-sm-3"> <div class="shadowBt">
                <a href="/public/Dosyalar/HG_TYT_TURKCE_DENEME_01_CA.pdf" target="_blank"> <img src="/assets/img/pdf.png" width="100%"> </a> </div> 
                <a href="/public/Dosyalar/HG_TYT_TURKCE_DENEME_01_CA.pdf" target="_blank" class="titleA text-center"> TYT Türkçe Deneme Cevap Anahtarı (PDF)</a>
            </div>
            
            <div class="col-xs-12 col-sm-3"> <div class="shadowBt">
                <a href="/public/Dosyalar/HG_TYT_MATEMATIK_DENEME_01.pdf" target="_blank"> <img src="/assets/img/pdf.png" width="100%"> </a> </div> 
                <a href="/public/Dosyalar/HG_TYT_MATEMATIK_DENEME_01.pdf" target="_blank" class="titleA text-center"> TYT Matematik Deneme (PDF)</a>
            </div>
            
            <div class="col-xs-12 col-sm-3"> <div class="shadowBt">
                <a href="/public/Dosyalar/HG_TYT_MATEMATIK_DENEME_01_CA.pdf" target="_blank"> <img src="/assets/img/pdf.png" width="100%"> </a> </div> 
                <a href="/public/Dosyalar/HG_TYT_MATEMATIK_DENEME_01_CA.pdf" target="_blank" class="titleA text-center"> TYT Matematik Deneme Cevap Anahtarı (PDF)</a>
            </div>
            {% endif %}
            
        </div>
    </div>
    
</div>
  