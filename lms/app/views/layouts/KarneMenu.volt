<div class="col-12 col-sm-12 col-md-4">
    <div class="ui vertical fluid menu leftb">

        <div class="item">
            <a href="javascript:;" class="avatar-a">
               <img src="{% if User['photo'] is defined and User['photo'] != '' %}/Uploads/Avatar/{{User['photo']}}{% else %}/assets/img/image.png{% endif %}" class="rounded-circle float-left" width="39" height="39" alt="{{User['name']}} {{User['lastname']}}">
               <img src="/assets/img/add.png" class="rounded-circle float-left" width="39" height="39" alt="{{User['name']}} {{User['lastname']}}">
           </a>


            <span style=" display: block; padding-top:12px; font-weight: 900; ">  {{User['name']}} {{User['lastname']}}</span>
            <div style="clear: both"></div>
        </div>

        <div class="item">
            <div class="menu">
                <a href="/karnem/konu-testleri" class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'karnem/konu-testleri') === false) ? 'active' : ''; ?> item"><i class="grid layout icon"></i>Konu Testleri</a>
                <a href="/karnem/deneme-sinavlari" class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'karnem/deneme-sinavlari') === false) ? 'active' : ''; ?> item"><i class="grid layout  icon"></i>Deneme Sınavları</a>
                <a href="/karnem/cozum-deneme-sinavlari" class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'karnem/cozum-deneme-sinavlari') === false) ? 'active' : ''; ?> item"><i class="grid layout  icon"></i>Çözüm Deneme Sınavları</a>
            </div>
        </div>
        <div class="ui item">
            <div class="ui fluid selection dropdown">
                <div class="text">Hocalara Geldik</div>
                <i class="dropdown icon"></i>
                <div class="menu iconcu">
                    <div class="item" onclick="window.location.href='/'">
                        <a href="/">Anasayfa <i class="fa fa-home pull-right"></i></a>
                    </div>
                    <div class="item" onclick="window.location.href='/s/hakkimizda'">
                        <a href="/s/hakkimizda">Hocalara Geldik Hakkında <i class="fa fa-info pull-right"></i></a>
                    </div>
                    <div class="item" onclick="window.location.href='/s/hocalara-geldik-nedir'">
                        <a href="/s/hocalara-geldik-nedir">Hocalara Geldik Nedir? <i class="fa fa-question-circle-o pull-right"></i></a>
                    </div>
                    <div class="item" onclick="window.location.href='/s/ornek-icerikler'">
                        <a href="/s/ornek-icerikler">Hocalara Geldik'de Neler Var? <i class="fa fa-magic pull-right"></i></a>
                    </div>
                    <div class="item" onclick="window.location.href='/s/nasil-uye-olurum'">
                        <a href="/s/nasil-uye-olurum">Nasıl Üye Olurum? <i class="fa fa-user-plus pull-right"></i></a>
                    </div>
                    <div class="item" onclick="window.location.href='/s/sikca-sorulan-sorular'">
                        <a href="/s/sikca-sorulan-sorular">Sıkça Sorulan Sorular <i class="fa fa-commenting pull-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>