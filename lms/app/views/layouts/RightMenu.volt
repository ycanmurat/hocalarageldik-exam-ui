<div class="col-lg-3 col-md-4">
    <div class="sidebar">
        <div class="sidebarProfile text-center">
            <div class="profileImg">
                <img src="{% if User['photo'] is defined and User['photo'] != '' %}/Uploads/Avatar/{{ User['photo'] }}{% else %}/assets/img/image.png{% endif %}"
                    class="rounded-circle float-left" alt="{{ User['name'] }} {{ User['lastname'] }}">
            </div>
            <div class="name">{{ User['name'] }} {{ User['lastname'] }}</div>
            <div class="departman">{{ Group['title'] }}</div>
        </div>

        <ul class="userLeftMenu">
            <li>
                <a href="/hesabim"
                    class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'hesabim') === false) ? 'active' : ''; ?> item">
                    <div class="img">
                        <span><img src="/content/images/icon/user.svg" width="28" height="28" class="svg" /></span>
                    </div>
                    <span>Hesabım</span>
                </a>
            </li>

            <li>
                <a href="/son-islemlerim"
                    class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'son-islemlerim') === false) ? 'active' : ''; ?> item">
                    <div class="img">
                        <span><img src="/content/images/icon/kaldigim-yer.svg" width="30" height="30"
                                class="svg" /></span>
                    </div>
                    <span>Kaldığım Yer</span>
                </a>
            </li>
            <li>
                <a href="/giris-kayitlari"
                    class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'giris-kayitlari') === false) ? 'active' : ''; ?> item">
                    <div class="img">
                        <span><img src="/content/images/icon/giris-kayitlari.svg" width="23" height="28"
                                class="svg" /></span>
                    </div>
                    <span>Giriş Kayıtları</span>
                </a>
            </li>
            <li>
                <a href="/uyelik-paketleri"
                    class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'uyelik-paketleri') === false) ? 'active' : ''; ?> item">
                    <div class="img">
                        <span><img src="/content/images/icon/uyelik-paketleri.svg" width="30" height="27"
                                class="svg" /></span>
                    </div>
                    <span>Üyelik Paketleri</span>
                </a>
            </li>
            <li>
                <a href="/mesajlarim/yeni?odeme=true" class="item">
                    <div class="img">
                        <span><img src="/content/images/icon/odeme-bildirimi.svg" width="30" height="30"
                                class="svg" /></span>
                    </div>
                    <span>Ödeme Bildirimi</span>
                </a>
            </li>
            <li>
                <a href="/siparis-gecmisim"
                    class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'siparis-gecmisim') === false) ? 'active' : ''; ?> item">
                    <div class="img">
                        <span><img src="/content/images/icon/siparis-gecmisim.svg" width="30" height="25"
                                class="svg" /></span>
                    </div>
                    <span>Sipariş Geçmişim</span>
                </a>
            </li>

            <li>
                <a href="/sifre-degistir"
                    class="<?php echo (!strpos($_SERVER['REQUEST_URI'], 'sifre-degistir') === false) ? 'active' : ''; ?> item">
                    <div class="img">
                        <span><img src="/content/images/icon/password.svg" width="26" height="32" class="svg" /></span>
                    </div>
                    <span>Parola Değiştir</span>
                </a>
            </li>

        </ul>

    </div>
</div>