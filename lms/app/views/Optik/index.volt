<style>
    .qNu{
        float:left;
        line-height: 30px;
        font-size: 18px;
        font-weight: bold;
    }
    .siklar{
         border:1px solid #ddd;
    }
    .siklar a {
        border:2px solid #DC2328;
        border-radius: 50%;
        color:#DC2328;
        font-weight: 900;
        width: 30px;
        height: 30px;
        line-height: 28px;
        text-align: center;
        display: block;
        float:left;
        margin-left: 9px;
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

    
</style>



<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="world icon"></i>
                  <div class="content">
                    TYT Röntgenini Çek
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/tyt-rontgen-ile-rontgenini-cek"> TYT Röntgenini Çek</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>
 
 
  
{% if Sonuc is defined %}

    <div id="entries">
        <div class="container">

            <div class="row">
                <div class="col-12">
                    <h5 style="padding: 15px 0; margin-left: -15px;">{{getTest}} Dersi röntgen sonuçlarınız.</h5>
                </div>
            </div>
            
            <div class="row siklar" style="margin-bottom:30px;;">
                <div class="col-12">
                    
                    <div style="padding: 30px 0;">
                        <h5>Genel Ortalama</h5>
                        
                        <table class="table">
                            <tr>
                                <td class="col-md-4">Toplam Soru</td>
                                <td class="col-md-1 text-center">:</td>
                                <td class="col-md-7 text-right">{{Cevaplar|length}}</td>
                            </tr>
                            <tr>
                                <td>Doğru</td>
                                <td class="text-center">:</td>
                                <td class="text-right">{{Genel['Dogru']}}</td>
                            </tr>
                            <tr>
                                <td>Yanlış</td>
                                <td class="text-center">:</td>
                                <td class="text-right">{{Genel['Yanlis']}}</td>
                            </tr>
                            <tr>
                                <td>Boş</td>
                                <td class="text-center">:</td>
                                <td class="text-right">{{Genel['Bos']}}</td>
                            </tr>
                        </table>

                        <div class="progress">

                          <div class="progress-bar" style="background-color: #0FC646; width: {{ Genel['Progress']['Dogru'] }}%" role="progressbar" aria-valuenow="{{ Genel['Progress']['Dogru'] }}" aria-valuemin="0" aria-valuemax="100">{{ Genel['Progress']['Dogru'] }}%</div>
                          <div class="progress-bar" role="progressbar" style="background-color: #E30613; width: {{ Genel['Progress']['Yanlis'] }}%" aria-valuenow="{{ Genel['Progress']['Yanlis'] }}" aria-valuemin="0" aria-valuemax="100">{{ Genel['Progress']['Yanlis'] }}%</div>
                          <div class="progress-bar" role="progressbar" style="background-color: #2D5EA8; width: {{ Genel['Progress']['Bos'] }}%" aria-valuenow="{{ Genel['Progress']['Bos'] }}" aria-valuemin="0" aria-valuemax="100">{{ Genel['Progress']['Bos'] }}%</div>
                        </div>
                        <h6 style="margin-top: 10px;">
                            {% if Genel['Progress']['Mesaj'] >= 70 %}
                                <b>Çok çalışmalısın!</b> 
                            {% elseif Genel['Progress']['Mesaj'] >= 50 %}
                                <b>Çalışmalısın!</b>
                            {% elseif Genel['Progress']['Mesaj'] >= 20 %}
                                <b>Tekrar etmelisin!</b>
                            {% elseif Genel['Progress']['Mesaj'] >= 10 %}
                                <b>Gözgezdirmelisin!</b>
                            {% else %}
                                <b>Başarılısın! :)</b>
                            {% endif  %}
                        </h6>
                    </div>
                    
                </div>
            </div>

            <div class="row siklar" style="margin-bottom: 30px;">
                <div class="col-12" style="border-bottom:1px solid #ddd;">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-3">
                                <div style="padding:8px 0px; line-height: 33px;">
                                    <b>İşaretlemeleriniz</b>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-5">
                                <div style="padding:8px 0px; line-height: 33px;">
                                    <b>Ders > Konu</b>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4">
                                <div style="padding:8px 0px; line-height: 33px;">
                                    <b>Konu Analizi</b>
                                </div>
                            </div>
                        </div>
                    </div>
                {% for Cevap in Cevaplar %}
                    <div class="col-12" style="border-bottom:1px solid #ddd;">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-3">
                                <div style="padding:8px 0px;">

                                    <input type="hidden" name="Cevap[{{Cevap['ID']}}]" value="{% if isaretlenen[Cevap['ID']] is defined %}{{isaretlenen[Cevap['ID']]}}{% endif %}" class="cevap">
                                    <input type="hidden" name="dogruCevap[{{Cevap['ID']}}]" value="{{Cevap['Cevap']}}" class="dogruCevap">
                                    <input type="hidden" name="Sira[{{Cevap['ID']}}]" value="{{Cevap['Nu']}}" class="Sira">
                                    <input type="hidden" name="Konu[{{Cevap['ID']}}]" value="{{Cevap['Konu']}}" class="Konu">

                                    <span class="qNu" style="text-align: right;width: 35px; padding-right: 10px;">{{Cevap['Nu']}}.</span>
                                    <a href="javascript:;" class="{{ Sonuclar[Cevap['ID']]['Class']['A'] }}"  data-order="{{Cevap['Nu']}}" data-value="A">A</a>
                                    <a href="javascript:;" class="{{ Sonuclar[Cevap['ID']]['Class']['B'] }}"  data-order="{{Cevap['Nu']}}" data-value="B">B</a>
                                    <a href="javascript:;" class="{{ Sonuclar[Cevap['ID']]['Class']['C'] }}"  data-order="{{Cevap['Nu']}}" data-value="C">C</a>
                                    <a href="javascript:;" class="{{ Sonuclar[Cevap['ID']]['Class']['D'] }}" data-order="{{Cevap['Nu']}}" data-value="D">D</a>
                                    <a href="javascript:;" class="{{ Sonuclar[Cevap['ID']]['Class']['E'] }}"  data-order="{{Cevap['Nu']}}" data-value="E">E</a>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-5">
                                <div style="padding:8px 0px; line-height: 33px;">
                                    {{Cevap['Ders']}} > {{Cevap['Konu']}}
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4">
                                <div style="padding-top:8px;" class="text-center">
                                    <div class="progress">
                                      
                                      <div class="progress-bar" style="background-color: #0FC646; width: {{ Konular[Cevap['Konu']]['Progress']['Dogru'] }}%" role="progressbar" aria-valuenow="{{ Konular[Cevap['Konu']]['Progress']['Dogru'] }}" aria-valuemin="0" aria-valuemax="100">{{ Konular[Cevap['Konu']]['Progress']['Dogru'] }}%</div>
                                      <div class="progress-bar" role="progressbar" style="background-color: #E30613; width: {{ Konular[Cevap['Konu']]['Progress']['Yanlis'] }}%" aria-valuenow="{{ Konular[Cevap['Konu']]['Progress']['Yanlis'] }}" aria-valuemin="0" aria-valuemax="100">{{ Konular[Cevap['Konu']]['Progress']['Yanlis'] }}%</div>
                                      <div class="progress-bar" role="progressbar" style="background-color: #2D5EA8; width: {{ Konular[Cevap['Konu']]['Progress']['Bos'] }}%" aria-valuenow="{{ Konular[Cevap['Konu']]['Progress']['Bos'] }}" aria-valuemin="0" aria-valuemax="100">{{ Konular[Cevap['Konu']]['Progress']['Bos'] }}%</div>
                                    </div>
                                    {% if Konular[Cevap['Konu']]['Progress']['Mesaj'] >= 70 %}
                                        <b>Bu konuya çok çalışmalısın!</b> 
                                    {% elseif Konular[Cevap['Konu']]['Progress']['Mesaj'] >= 50 %}
                                        <b>Bu konuya çalışmalısın!</b>
                                    {% elseif Konular[Cevap['Konu']]['Progress']['Mesaj'] >= 20 %}
                                        <b>Bu konuyu tekrar etmelisin!</b>
                                    {% elseif Konular[Cevap['Konu']]['Progress']['Mesaj'] >= 10 %}
                                        <b>Bu konuyu gözgezdirmelisin!</b>
                                    {% else %}
                                        <b>Başarılısın! :)</b>
                                    {% endif  %}
                                </div>
                            </div>
                        </div>
                    </div>
                {% endfor %}
            </div>
            
            
            
            

        </div>
    </div>
        
{% endif %}
   












{% if getTest is not defined or Sonuc is defined  %}
    <div id="entries">
        <div class="container">

            <div class="row row-eq-height mbBot nasil">


                <div class="col-12 col-sm-12 col-md-3 text-center">
                    <img src="/assets/optik/{{Kimlik}}.png" class="img-fluid" alt="">
                    <a href="https://magaza.hocalarageldik.com/tyt-rontgen" target="_blank" class="btn btn-success" style="margin-top: 20px;">TYT Röntgen Satın Al</a>
                </div>

                <div class="col-12 col-sm-12 col-md-9">
                    <h5 style="padding: 15px 0;">RÖNTGENİNİ ÇEKMEK İSTEDİĞİNİZ DERSİ SEÇİNİZ:</h5>
                    <div class="list-group">
                        {% for Test in Testler %}
                            <a href="?Test={{Test['Test']}}" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">{{Test['Test']}}</h5>
                                    <small>{{Test['Toplam']['SoruSayisi']}} Soru</small>
                                </div>
                            </a>
                        {% endfor %}
                    </div>
                </div>


            </div>

        </div>
    </div>
{% endif %}

















{% if getTest is defined and Sonuc is not defined %}

   <script>
       $(document).ready(function(){
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
       });
    </script>


    <form action="?Test={{getTest}}&Sonuc=true" method="post">

        <div id="entries">
            <div class="container">

                <div class="row">
                    <div class="col-12">
                        <h5 style="padding: 15px 0; margin-left: -15px;">ŞU ANDA {{getTest}} DERSİNDEN RÖNTGEN ÇEKİYORSUN.</h5>
                    </div>
                </div>

                <div class="row"  style="border:1px solid #ddd; margin-bottom: 30px;">


                    {% for Cevap in Cevaplar %}

                        {% if Cevap['Nu'] == 1 or Cevap['Nu'] == 41 or Cevap['Nu'] == 81 or  Cevap['Nu'] == 121 %}
                        <div class="col-12 col-sm-6 col-md-3">
                        {% endif %}

                            <div class="row siklar">
                                <div class="col">
                                    <div style="padding:8px 0px;">

                                        <input type="hidden" name="Cevap[{{Cevap['ID']}}]" class="cevap">
                                        <input type="hidden" name="dogruCevap[{{Cevap['ID']}}]" value="{{Cevap['Cevap']}}" class="dogruCevap">
                                        <input type="hidden" name="Sira[{{Cevap['ID']}}]" value="{{Cevap['Nu']}}" class="Sira">
                                        <input type="hidden" name="Konu[{{Cevap['ID']}}]" value="{{Cevap['Konu']}}" class="Konu">
                                        
                                        <span class="qNu" style="text-align: right;width: 35px; padding-right: 10px;">{{Cevap['Nu']}}.</span>
                                        <a href="javascript:;"  data-order="{{Cevap['Nu']}}" data-value="A">A</a>
                                        <a href="javascript:;"  data-order="{{Cevap['Nu']}}" data-value="B">B</a>
                                        <a href="javascript:;"  data-order="{{Cevap['Nu']}}" data-value="C">C</a>
                                        <a href="javascript:;"  data-order="{{Cevap['Nu']}}" data-value="D">D</a>
                                        <a href="javascript:;"  data-order="{{Cevap['Nu']}}" data-value="E">E</a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>

                        {% if Cevap['Nu'] == 40 or Cevap['Nu'] == 80 or Cevap['Nu'] == 120 %}
                        </div>
                        {% endif %}

                    {% endfor %}


                </div>

            </div>
        </div>

        <div class="container" style="margin-bottom: 30px;">
            <div class="row">
                <div class="col-12">
                    <div class="text-right">
                        <button class="btn-lg btn-success btn-block" type="submit">Röntgenimi Çek</button>
                    </div>
                </div>
            </div>
        </div>

    </form>

{% endif %}











