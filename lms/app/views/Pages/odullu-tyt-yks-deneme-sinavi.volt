
<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="magic icon"></i>
                  <div class="content">
                    {{Page['title']}}
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/s/{{Page['permalink']}}"> {{Page['title']}}</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>

<div style="background: linear-gradient(to left, #e2e2e2 50%, #DC2328 50%); margin: -30px -15px 30px -15px;" class="mbBot shadow">
    <div class="container">
        <img src="/assets/img/odullu.jpg?v=3" class="img-fluid" alt="Hocalara Geldik">
    </div>
</div>


<div id="entries">
    <div class="container">
        
        <div class="row mbBot info-line">
            <div class="col-sm-12">
                <div class="ui piled segment">
                    <h1 class="ui huge header">Ödüller Hakkında</h1>

                    <div class="text-justify">
                        <ul>
                            <li>Kasım ayı deneme sınavı sonucunda 1. olacak öğrencimize 1 adet <b>Apple iPad Wi-Fi 128GB 9.7" Tablet</b></li>
                            <li>Aralık ayı deneme sınavı sonucunda 1. olacak öğrencimize 1 adet <b>Apple iPad Wi-Fi 128GB 9.7" Tablet</b></li>
                            <li>Ocak ayı deneme sınavı sonucunda 1. olacak öğrencimize ise 1 adet <b>iPhone 7 32 GB</b> hediye edilecektir.</li>
                            <li>Her ay ilk 10 sırayı alan öğrencilerimize Hocalara Geldik mağazadan seçecekleri <b>3 kitap</b>,</li>
                            <li>Her ay 11-20.  sırayı alan öğrencilerimize de <b>Hocalara Geldik Tişört</b> hediye edilecektir.</li>
                        </ul>
                    </div>


                    <h1 class="ui huge header">Açıklamalar</h1>

                   <ul>
                       <li>Ödüller, Kasım, Aralık ve Ocak ayında yapılan deneme sınavları sonucunda yukarıda belirtilen şartlarda geçerli olacaktır.</li>
                        <li>Deneme sınavları her ay bir kez anlık genel deneme şeklinde yapılacak ve bu sınavların sonuçları dikkate alınarak ödüle hak kazananlar belirlenecektir.</li>
                        <li>Sonuçlar, her denemeden sonra belirtilen sürede sitede yayınlanacaktır.</li>
                        <li>Daha önceki sınavlarda 1. olan kişilerin sonraki sınavda da 1. olması durumunda büyük ödül 2.ye verilecektir.</li>
                        <li>Birden fazla 1. çıkması durumunda canlı yayında yapılacak çekilişle ödül sahibi belirlenecektir.</li>
                        <li>Denemelerin çözüm videoları sınavdan sonra 1 hafta içerisinde siteye yüklenmiş olacaktır.</li>
                        <li><b>Sınava sadece öğrenciler girebilir, ödül verilirken buna bağlı gerekli belgeler istenecektir.</b></li>
                   </ul>
                   
                    <?php
                    
                    /*
                    {% if User is defined %}
                    <h1 class="ui huge header">Kasım Ayı İlk 20 Sıralaması</h1>
                    
                    <div class="table-responsive mbBot">
                        <table class="ui celled table">
                            <thead>
                                <tr>
                                    <th class="text-center" rowspan="1">Sıra</th>
                                    <th class="text-center" rowspan="1">Adı Soyadı</th>
                                    <th class="text-center" rowspan="1">Çözüm Süresi</th>
                                    <th class="text-center" rowspan="1">Puan</th>
                                    <th class="text-center" rowspan="1">Ödül</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">1</td>
                                    <td class="text-center">Yusuf IŞIK</td>
                                    <td class="text-center">02:01:00</td>
                                    <td class="text-center">441.582</td>
                                    <td class="text-center"><b>Apple iPad Wi-Fi 128GB 9.7" Tablet</b></td>
                                </tr>
                                <tr>
                                    <td class="text-center">2</td>
                                    <td class="text-center">Gülhanim MORKOÇ</td>
                                    <td class="text-center">02:14:15</td>
                                    <td class="text-center">439.082</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">3</td>
                                    <td class="text-center">Eda Yaren ÖZKASAP</td>
                                    <td class="text-center">02:04:09</td>
                                    <td class="text-center">437.416</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">4</td>
                                    <td class="text-center">Emre SONER</td>
                                    <td class="text-center">02:09:36</td>
                                    <td class="text-center">429.917</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">5</td>
                                    <td class="text-center">Anıl BİRGÜL</td>
                                    <td class="text-center">02:14:08</td>
                                    <td class="text-center">429.085</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">6</td>
                                    <td class="text-center">Berkin BUDAK</td>
                                    <td class="text-center">02:11:27</td>
                                    <td class="text-center">420.754</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">7</td>
                                    <td class="text-center">Burak YILMAZ</td>
                                    <td class="text-center">02:15:09</td>
                                    <td class="text-center">419.087</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">8</td>
                                    <td class="text-center">Hümeyra Hacer ŞAHİN</td>
                                    <td class="text-center">02:13:59</td>
                                    <td class="text-center">416.588</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">9</td>
                                    <td class="text-center">Abdulsamet UYAR</td>
                                    <td class="text-center">02:14:35</td>
                                    <td class="text-center">416.587</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">10</td>
                                    <td class="text-center">Necdet GÜNER</td>
                                    <td class="text-center">02:05:45</td>
                                    <td class="text-center">412.422</td>
                                    <td class="text-center">
                                        <b>HG Mağazadan İstediği 3 Kitap</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">11</td>
                                    <td class="text-center">İbrahim AYRANCI</td>
                                    <td class="text-center">02:14:09</td>
                                    <td class="text-center">408.256</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">12</td>
                                    <td class="text-center">Berke furkan KARAKILIÇ</td>
                                    <td class="text-center">02:15:08</td>
                                    <td class="text-center">408.256</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">13</td>
                                    <td class="text-center">Afra ÇELİK</td>
                                    <td class="text-center">02:02:59</td>
                                    <td class="text-center">405.758</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">14</td>
                                    <td class="text-center">Dilaver BOZDAĞ</td>
                                    <td class="text-center">02:15:08</td>
                                    <td class="text-center">404.924</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">15</td>
                                    <td class="text-center">Mert BAYDAR</td>
                                    <td class="text-center">02:01:19</td>
                                    <td class="text-center">404.091</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">16</td>
                                    <td class="text-center">Ömer ARSLAN</td>
                                    <td class="text-center">02:10:29</td>
                                    <td class="text-center">404.091</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">17</td>
                                    <td class="text-center">Adem ŞEN</td>
                                    <td class="text-center">02:01:01</td>
                                    <td class="text-center">404.090</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">18</td>
                                    <td class="text-center">Ertuğrul KAYNAR</td>
                                    <td class="text-center">02:14:59</td>
                                    <td class="text-center">404.090</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">19</td>
                                    <td class="text-center">Kaan Yılmaz</td>
                                    <td class="text-center">02:00:13</td>
                                    <td class="text-center">399.925</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">20</td>
                                    <td class="text-center">Ömer şahin GÖK</td>
                                    <td class="text-center">02:11:14</td>
                                    <td class="text-center">399.925</td>
                                    <td class="text-center">
                                        <b>Hocalara Geldik Tişört</b>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    {% else %}
                    <h1 class="ui huge header">Kasım ayı kazananlarını görmek için üye girişi yapmalısınız.</h1>
                    {% endif %}
                    */
                    ?>
                    
                    
                    
                    
                    
                    
                    
                   <div class="text-center">
                       <a href="/uyelik-paketleri" class="btn btn-lg btn-danger">Online Deneme Sınavları İçin Üyelik Paketlerimizi İnceleyebilirsiniz</a> <a href="/sinav" class="btn btn-lg btn-primary">Sınav Tarihleri Hakkında Bilgilendirme</a>
                   </div>
                    
                </div>
            </div>
        </div>
        
    </div>
</div>