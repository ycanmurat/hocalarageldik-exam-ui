<div id="breadcrumb">
    <div class="container" id="video">
        <div class="row">
            <div class="col-sm-12">
                <ol class="breadcrumb">
                  <li><a href="/"><i class="fa fa-home"></i></a></li>
                  <li><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> Satın Al</a></li>
                </ol>
            </div>
        </div>
    </div>
    
</div>
   
<div class="container">
    
    <div class="row">
        
        <div class="col-md-12">
            <h1 class="pageTitle2 text-left bn">{{Titles}}</h1>
        </div>
        
        <div class="col-md-4">{{Paket}}</div>
        
        <div class="col-md-8">
            
            {% if okey is not defined %}
                {% if noBuy is not defined %}


                

                <div class="row" style="display: none;">
                    <div class="col-md-12">
                        <div class="radio">
                            <label>
                                <input type="radio" name="odeme" value="1" checked="true" onclick="$('#ccForm').slideDown();$('#bnkForm').slideUp();"><span class="circle"></span><span class="check"></span>
                                Kredi Kartı ile Ödeme
                            </label>
                        </div>
                    </div>
                </div>

                
                
                <form id="ccForm" action="" method="post">
                        <h1 class="pageTitle2 text-left bn">Taksit Seçenekleri</h1>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="taksit" value="1" checked><span class="circle"></span><span class="check"></span>
                                        Tek Çekim
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="taksit" value="2"><span class="circle"></span><span class="check"></span>
                                        2 Taksit
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="taksit" value="3"><span class="circle"></span><span class="check"></span>
                                        3 Taksit
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="taksit" value="6"><span class="circle"></span><span class="check"></span>
                                        6 Taksit
                                    </label>
                                </div>
                            </div>
                        </div>
                        <h1 class="pageTitle2 text-left bn">Kredi Kartı Bilgileri</h1>
                        <div class="row">

                            <div class="col-md-12">
                                <div class="form-group">
                                    <input id="TCNo" type="text" name="TCNo" class="form-control required" placeholder="Kart Sahibinin TC Kimlik Numarası">
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input id="Ad" type="text" name="Ad" class="form-control" placeholder="Kart Sahibinin Adı">
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input id="Soyad" type="text" name="Soyad" class="form-control" placeholder="Kart Sahibinin Soyadı">
                                </div>
                            </div>
                            
                            <div class="clearfix"></div>
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input id="tel" type="text" maxlength="11" name="Telefon" class="form-control" placeholder="Telefon Numarası">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input id="EPosta" type="text" name="EPosta" class="form-control" disabled value="{{User['email']}}" placeholder="E-Posta Adresi">
                                </div>
                            </div>
                            
                            <div class="clearfix"></div>
                            
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input id="CC" type="text" maxlength="19" name="CCNo" class="form-control" placeholder="16 Haneli Kart Numarası">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input id="CVV" type="text" maxlength="3" name="CVV" class="form-control" placeholder="Kart Güvenlik Kodu CVV2">
                                </div>
                            </div>
                            
                            <div class="clearfix"></div>
                            
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select class="form-control required" name="CCM">
                                        <option value="">Son Kullanma Tarihi / Ay</option>
                                        <option>01</option>
                                        <option>02</option>
                                        <option>03</option>
                                        <option>04</option>
                                        <option>05</option>
                                        <option>06</option>
                                        <option>07</option>
                                        <option>08</option>
                                        <option>09</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select class="form-control required" name="CCY">
                                        <option value="">Son Kullanma Tarihi / Yıl</option>
                                        <option value="15">2015</option>
                                        <option value="16">2016</option>
                                        <option value="17">2017</option>
                                        <option value="18">2018</option>
                                        <option value="19">2019</option>
                                        <option value="20">2020</option>
                                        <option value="21">2021</option>
                                        <option value="22">2022</option>
                                        <option value="23">2023</option>
                                        <option value="24">2024</option>
                                        <option value="25">2025</option>
                                        <option value="26">2026</option>
                                        <option value="27">2027</option>
                                        <option value="28">2028</option>
                                        <option value="29">2029</option>
                                        <option value="30">2030</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="clearfix"></div>

                            
                            
                            
                            <input type="hidden" name="odeme" value="1">
                            
                            <h1 class="pageTitle2 text-left bn" style="padding-left: 15px;">Fatura Adresiniz</h1>
                            
                            <div class="col-md-12">
                                <label>Fatura Adresiniz</label>
                                <textarea name="Fatura" class="form-control" placeholder="Fatura Adresiniz">{{User['address']}}</textarea>
                            </div>
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <select class="form-control required" name="il">
                                    <option value="">İl</option>
                                    <option data-value="1">Adana</option>
                                    <option data-value="2">Adıyaman</option>
                                    <option data-value="3">Afyonkarahisar</option>
                                    <option data-value="4">Ağrı</option>
                                    <option data-value="5">Amasya</option>
                                    <option data-value="6">Ankara</option>
                                    <option data-value="7">Antalya</option>
                                    <option data-value="8">Artvin</option>
                                    <option data-value="9">Aydın</option>
                                    <option data-value="10">Balıkesir</option>
                                    <option data-value="11">Bilecik</option>
                                    <option data-value="12">Bingöl</option>
                                    <option data-value="13">Bitlis</option>
                                    <option data-value="14">Bolu</option>
                                    <option data-value="15">Burdur</option>
                                    <option data-value="16">Bursa</option>
                                    <option data-value="17">Çanakkale</option>
                                    <option data-value="18">Çankırı</option>
                                    <option data-value="19">Çorum</option>
                                    <option data-value="20">Denizli</option>
                                    <option data-value="21">Diyarbakır</option>
                                    <option data-value="22">Edirne</option>
                                    <option data-value="23">Elazığ</option>
                                    <option data-value="24">Erzincan</option>
                                    <option data-value="25">Erzurum</option>
                                    <option data-value="26">Eskişehir</option>
                                    <option data-value="27">Gaziantep</option>
                                    <option data-value="28">Giresun</option>
                                    <option data-value="29">Gümüşhane</option>
                                    <option data-value="30">Hakkâri</option>
                                    <option data-value="31">Hatay</option>
                                    <option data-value="32">Isparta</option>
                                    <option data-value="33">İçel (Mersin)</option>
                                    <option data-value="34">İstanbul</option>
                                    <option data-value="35">İzmir</option>
                                    <option data-value="36">Kars</option>
                                    <option data-value="37">Kastamonu</option>
                                    <option data-value="38">Kayseri</option>
                                    <option data-value="39">Kırklareli</option>
                                    <option data-value="40">Kırşehir</option>
                                    <option data-value="41">Kocaeli</option>
                                    <option data-value="42">Konya</option>
                                    <option data-value="43">Kütahya</option>
                                    <option data-value="44">Malatya</option>
                                    <option data-value="45">Manisa</option>
                                    <option data-value="46">Kahramanmaraş</option>
                                    <option data-value="47">Mardin</option>
                                    <option data-value="48">Muğla</option>
                                    <option data-value="49">Muş</option>
                                    <option data-value="50">Nevşehir</option>
                                    <option data-value="51">Niğde</option>
                                    <option data-value="52">Ordu</option>
                                    <option data-value="53">Rize</option>
                                    <option data-value="54">Sakarya</option>
                                    <option data-value="55">Samsun</option>
                                    <option data-value="56">Siirt</option>
                                    <option data-value="57">Sinop</option>
                                    <option data-value="58">Sivas</option>
                                    <option data-value="59">Tekirdağ</option>
                                    <option data-value="60">Tokat</option>
                                    <option data-value="61">Trabzon</option>
                                    <option data-value="62">Tunceli</option>
                                    <option data-value="63">Şanlıurfa</option>
                                    <option data-value="64">Uşak</option>
                                    <option data-value="65">Van</option>
                                    <option data-value="66">Yozgat</option>
                                    <option data-value="67">Zonguldak</option>
                                    <option data-value="68">Aksaray</option>
                                    <option data-value="69">Bayburt</option>
                                    <option data-value="70">Karaman</option>
                                    <option data-value="71">Kırıkkale</option>
                                    <option data-value="72">Batman</option>
                                    <option data-value="73">Şırnak</option>
                                    <option data-value="74">Bartın</option>
                                    <option data-value="75">Ardahan</option>
                                    <option data-value="76">Iğdır</option>
                                    <option data-value="77">Yalova</option>
                                    <option data-value="78">Karabük</option>
                                    <option data-value="79">Kilis</option>
                                    <option data-value="80">Osmaniye</option>
                                    <option data-value="81">Düzce</option>
                                </select>
                                </div>
                            </div>
                            
                            <h1 class="pageTitle2 text-left bn" style="padding-left: 15px;">Kargo Teslimat Adresiniz</h1>

                            <div class="col-md-12">
                                <label>Kargo Teslimat Adresiniz</label>
                                <textarea name="Siparis" class="form-control" placeholder="Teslimat Adresiniz">{{User['address']}}</textarea>
                            </div>
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <select class="form-control required" name="order_city">
                                    <option value="">İl</option>
                                    <option data-value="1">Adana</option>
                                    <option data-value="2">Adıyaman</option>
                                    <option data-value="3">Afyonkarahisar</option>
                                    <option data-value="4">Ağrı</option>
                                    <option data-value="5">Amasya</option>
                                    <option data-value="6">Ankara</option>
                                    <option data-value="7">Antalya</option>
                                    <option data-value="8">Artvin</option>
                                    <option data-value="9">Aydın</option>
                                    <option data-value="10">Balıkesir</option>
                                    <option data-value="11">Bilecik</option>
                                    <option data-value="12">Bingöl</option>
                                    <option data-value="13">Bitlis</option>
                                    <option data-value="14">Bolu</option>
                                    <option data-value="15">Burdur</option>
                                    <option data-value="16">Bursa</option>
                                    <option data-value="17">Çanakkale</option>
                                    <option data-value="18">Çankırı</option>
                                    <option data-value="19">Çorum</option>
                                    <option data-value="20">Denizli</option>
                                    <option data-value="21">Diyarbakır</option>
                                    <option data-value="22">Edirne</option>
                                    <option data-value="23">Elazığ</option>
                                    <option data-value="24">Erzincan</option>
                                    <option data-value="25">Erzurum</option>
                                    <option data-value="26">Eskişehir</option>
                                    <option data-value="27">Gaziantep</option>
                                    <option data-value="28">Giresun</option>
                                    <option data-value="29">Gümüşhane</option>
                                    <option data-value="30">Hakkâri</option>
                                    <option data-value="31">Hatay</option>
                                    <option data-value="32">Isparta</option>
                                    <option data-value="33">İçel (Mersin)</option>
                                    <option data-value="34">İstanbul</option>
                                    <option data-value="35">İzmir</option>
                                    <option data-value="36">Kars</option>
                                    <option data-value="37">Kastamonu</option>
                                    <option data-value="38">Kayseri</option>
                                    <option data-value="39">Kırklareli</option>
                                    <option data-value="40">Kırşehir</option>
                                    <option data-value="41">Kocaeli</option>
                                    <option data-value="42">Konya</option>
                                    <option data-value="43">Kütahya</option>
                                    <option data-value="44">Malatya</option>
                                    <option data-value="45">Manisa</option>
                                    <option data-value="46">Kahramanmaraş</option>
                                    <option data-value="47">Mardin</option>
                                    <option data-value="48">Muğla</option>
                                    <option data-value="49">Muş</option>
                                    <option data-value="50">Nevşehir</option>
                                    <option data-value="51">Niğde</option>
                                    <option data-value="52">Ordu</option>
                                    <option data-value="53">Rize</option>
                                    <option data-value="54">Sakarya</option>
                                    <option data-value="55">Samsun</option>
                                    <option data-value="56">Siirt</option>
                                    <option data-value="57">Sinop</option>
                                    <option data-value="58">Sivas</option>
                                    <option data-value="59">Tekirdağ</option>
                                    <option data-value="60">Tokat</option>
                                    <option data-value="61">Trabzon</option>
                                    <option data-value="62">Tunceli</option>
                                    <option data-value="63">Şanlıurfa</option>
                                    <option data-value="64">Uşak</option>
                                    <option data-value="65">Van</option>
                                    <option data-value="66">Yozgat</option>
                                    <option data-value="67">Zonguldak</option>
                                    <option data-value="68">Aksaray</option>
                                    <option data-value="69">Bayburt</option>
                                    <option data-value="70">Karaman</option>
                                    <option data-value="71">Kırıkkale</option>
                                    <option data-value="72">Batman</option>
                                    <option data-value="73">Şırnak</option>
                                    <option data-value="74">Bartın</option>
                                    <option data-value="75">Ardahan</option>
                                    <option data-value="76">Iğdır</option>
                                    <option data-value="77">Yalova</option>
                                    <option data-value="78">Karabük</option>
                                    <option data-value="79">Kilis</option>
                                    <option data-value="80">Osmaniye</option>
                                    <option data-value="81">Düzce</option>
                                </select>
                                </div>
                            </div>
                            
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input id="order_state" type="text" name="order_state" class="form-control" placeholder="İlçe">
                                </div>
                            </div>

                            


                            <div class="col-sm-12">
                             <div class="pd13">
                                 <div class="checkbox blue">
                                    <label>
                                        <input type="checkbox" checked name="sozlesme" id="sozlesme">
                                        <a href="#" data-toggle="modal" data-target="#mesafeli-sozlesmesi">Mesafeli Satış Sözleşmesini</a>,
                                        <a href="#" data-toggle="modal" data-target="#uyelik-sozlesmesi">Üyelik sözleşmesini</a> ve  <a href="#" data-toggle="modal" data-target="#gizlilik-sozlesmesi">Gizlilik ve Güvenlik Politikasını</a> okudum, onaylıyorum.
                                    </label>
                                </div>
                             </div>
                         </div>

                            <div class="col-md-12">
                                <h4 class="title custom">Kartınızdan Tahsil Edilecek Tutar : <b id="tutar" style="color:#c00000;">{{Price}} ₺</b></h4>
                            </div>

                            

                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary pull-right"> <i class="fa fa-check"></i> Hemen Öde</button>
                            </div>



                            

                        </div>

                </form>

                <form id="bnkForm" action="" method="post" style="display:none;">

                    <div class="row">

                        <div>
                            <div class="col-md-12">
                                <h1 class="pageTitle2 text-left bn">Banka Havale/EFT ile Ödeme</h1>
                                <table class="table">
                                   <tr>
                                        <th colspan="3" class="text-center">
                                            <center><img src="/assets/img/banka-yapi-kredi.png" alt="" class="img-responsive"></center>
                                            <br/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>Hesap İsmi</th>
                                        <th>:</th>
                                        <td>OPTİMUS DANIŞMANLIK EĞİTİM VE TEKNOLOJİ HİZ. LTD. ŞTİ</td>
                                    </tr>
                                    <tr>
                                        <th>Şube</th>
                                        <th>:</th>
                                        <td>İstanbul, Bağcılar</td>
                                    </tr>
                                    <tr>
                                        <th>Şube Kodu</th>
                                        <th>:</th>
                                        <td>860</td>
                                    </tr>
                                    <tr>
                                        <th>Hesap Numarası</th>
                                        <th>:</th>
                                        <td>45577922</td>
                                    </tr>
                                    <tr>
                                        <th>IBAN</th>
                                        <th>:</th>
                                        <td>TR19 0006 7010 0000 0045 5779 22</td>
                                    </tr>
                                </table>
                                
                                <br/>
                                <p>Bu bilgilerle bankadan, ATM den veya online bankacılık -internet bankacılığı- kullanarak hesabımıza para yatırabilirsiniz.</p>

                                <ul>
                                    <li>Aynı bankanın şubeleri arasında yapılan işlemlere Havale,</li>
                                    <li>Farklı 2 bankanın şubeleri arasında yapılan para transferlerine Eft  işlemi denir.</li>
                                </ul>

                                <p>EFT/Havale yaparken açıklama kısmına size gelen epostadaki sipariş numarasını yazmalısınız.</p>

                                <p>Dekontun fotoğrafını bilgi@hocalarageldik.com (buraya) adresine gönderebilirsiniz.</p><br/><br/><br/>







                            </div>
                        </div>

                        <input type="hidden" name="odeme" value="2">

                        <div class="col-md-12">
                            <label>Fatura Adresiniz</label>
                            <textarea name="Fatura" class="form-control" placeholder="Fatura Adresiniz">{{User['address']}}</textarea>
                        </div>

                        <div class="col-md-12 hidden">
                            <label>Kargo Teslimat Adresiniz</label>
                            <textarea name="Siparis" class="form-control" placeholder="Teslimat Adresiniz">{{User['address']}}</textarea>
                        </div>

                        <div class="col-sm-12">
                             <div class="pd13">
                                 <div class="checkbox blue">
                                    <label>
                                        <input type="checkbox" checked name="sozlesme" id="sozlesme">
                                        <a href="#" data-toggle="modal" data-target="#mesafeli-sozlesmesi">Mesafeli Satış Sözleşmesini</a>,
                                        <a href="#" data-toggle="modal" data-target="#uyelik-sozlesmesi">Üyelik sözleşmesini</a> ve  <a href="#" data-toggle="modal" data-target="#gizlilik-sozlesmesi">Gizlilik ve Güvenlik Politikasını</a> okudum, onaylıyorum.
                                    </label>
                                </div>
                             </div>
                         </div>


                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary pull-right"> <i class="fa fa-check"></i> Siparişi Tamamla</button>
                        </div>





                    </div>

                </form>

                {% else %}

                <div class="alert alert-danger">Üzgünüm, siz bu paketi satın alamazsınız. Bu paket sadece "{{Parents}}" paketini satın alanlara ozeldir.</div>

                {% endif %}
            {% else %}
                <div class="{{sipMessage['class']}}">{{sipMessage['message']}}</div>
                
                {% if Havale is defined %}
                    <div class="col-md-12">
                        <h1 class="pageTitle2 text-left bn">Banka Havale/EFT ile Ödeme</h1>
                        <table class="table">
                           <tr>
                                <th colspan="3" class="text-center">
                                    <center><img src="/assets/img/banka-yapi-kredi.png" alt="" class="img-responsive"></center>
                                    <br/>
                                </th>
                            </tr>
                            <tr>
                                <th>Hesap İsmi</th>
                                <th>:</th>
                                <td>OPTİMUS DANIŞMANLIK EĞİTİM VE TEKNOLOJİ HİZ. LTD. ŞTİ</td>
                            </tr>
                            <tr>
                                <th>Şube</th>
                                <th>:</th>
                                <td>İstanbul, Bağcılar</td>
                            </tr>
                            <tr>
                                <th>Şube Kodu</th>
                                <th>:</th>
                                <td>860</td>
                            </tr>
                            <tr>
                                <th>Hesap Numarası</th>
                                <th>:</th>
                                <td>45577922</td>
                            </tr>
                            <tr>
                                <th>IBAN</th>
                                <th>:</th>
                                <td>TR19 0006 7010 0000 0045 5779 22</td>
                            </tr>
                        </table>

                        <br/>
                        <p>Bu bilgilerle bankadan, ATM den veya online bankacılık -internet bankacılığı- kullanarak hesabımıza para yatırabilirsiniz.</p>

                        <ul>
                            <li>Aynı bankanın şubeleri arasında yapılan işlemlere Havale,</li>
                            <li>Farklı 2 bankanın şubeleri arasında yapılan para transferlerine Eft  işlemi denir.</li>
                        </ul>

                        <p>EFT/Havale yaparken açıklama kısmına size gelen epostadaki sipariş numarasını yazmalısınız.</p>

                        <p>Dekontun fotoğrafını bilgi@hocalarageldik.com (buraya) adresine gönderebilirsiniz.</p><br/><br/><br/>







                    </div>
                {% endif %}
                
            {% endif %}
        </div>
        
    </div>
    <div style="height:50px;"></div>
</div>




<div class="modal modal-info fade" id="uyelik-sozlesmesi" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header modal-header-danger">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="exampleModalLabel">{{Sayfa1['title']}}</h4>
      </div>
      <div class="modal-body">
        <div class="col-md-12" style="height:400px; overflow-x:hidden; overflow-y: scroll;">
            {{Sayfa1['content']}}
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" data-dismiss="modal" class="btn btn-info modalBtn" onclick="$('#sozlesme').prop('checked',true)">Onaylıyorum</button>
      </div>
    </div>
  </div>
</div>




<div class="modal modal-info fade" id="mesafeli-sozlesmesi" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header modal-header-danger">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="exampleModalLabel">{{Sayfa2['title']}}</h4>
      </div>
      <div class="modal-body">
        <div class="col-md-12" style="height:400px; overflow-x:hidden; overflow-y: scroll;">
            {{Sayfa2['content']}}
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" data-dismiss="modal" class="btn btn-info modalBtn" onclick="$('#sozlesme').prop('checked',true)">Onaylıyorum</button>
      </div>
    </div>
  </div>
</div>




<div class="modal modal-info fade" id="gizlilik-sozlesmesi" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header modal-header-danger">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="exampleModalLabel">{{Sayfa3['title']}}</h4>
      </div>
      <div class="modal-body">
        <div class="col-md-12" style="height:400px; overflow-x:hidden; overflow-y: scroll;">
            {{Sayfa3['content']}}
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" data-dismiss="modal" class="btn btn-info modalBtn" onclick="$('#sozlesme').prop('checked',true)">Onaylıyorum</button>
      </div>
    </div>
  </div>
</div>


<script>
    $(document).ready(function(){
        
        $('#CC').keyup(function() {
          var foo = $(this).val().split("-").join(""); 
          if (foo.length > 0) {
            foo = foo.match(new RegExp('.{1,4}', 'g')).join("-");
          }
          $(this).val(foo);
        });
        
        $("#ccForm").validate(
        {
            errorElement: 'span', 
            errorClass: 'has-error', 
            ignore: "",

            rules:
            {
                TCNo:
                {
                    required: true,
                    minlength: 11,
                    maxlength: 11
                },
                Ad:
                {
                    required: true,
                    minlength: 3
                },
                Soyad:
                {
                    required: true,
                    minlength: 2
                },
                Telefon:
                {
                    required: true,
                    minlength: 11,
                    maxlength: 11
                },
                EPosta:
                {
                    required: true,
                    email: true
                },
                CCNo:
                {
                    required: true,
                    minlength: 19,
                    maxlength: 19
                },
                CVV:
                {
                    required: true,
                    minlength: 3,
                    maxlength: 3
                },
                CCM:
                {
                    required: true
                },
                CCY:
                {
                    required: true
                },
                il:
                {
                    required: true
                },
                Fatura:
                {
                    required: true,
                    minlength: 15,
                },
                order_city:
                {
                    required: true
                },
                order_state:
                {
                    required: true
                },
                Siparis:
                {
                    required: true,
                    minlength: 15
                }
            },
            
            messages:
            {
                TCNo:
                {
                    required: "Kart sahibinin Türkiye Cumhuriyeti kimlik numarasını giriniz.",
                    minlength: "Türkiye Cumhuriyeti kimlik numarası 11 karakterden oluşmaktadır.",
                    maxlength: "Türkiye Cumhuriyeti kimlik numarası 11 karakterden oluşmaktadır."
                },
                Ad:
                {
                    required: "Kart sahibinin adını giriniz.",
                    minlength: "Kart sahibinin adı en az 3 karakterden oluşmalıdır."
                },
                Soyad:
                {
                    required: "Kart sahibinin soyadını giriniz.",
                    minlength: "Kart sahibinin soyadını en az 2 karakterden oluşmalıdır."
                },
                Telefon:
                {
                    required: "Kart sahibinin telefon numarasını giriniz.",
                    minlength: "Telefon numarası 11 karakterden oluşmalıdır. Örnek : 0555 000 00 00",
                    maxlength: "Telefon numarası 11 karakterden oluşmalıdır. Örnek : 0555 000 00 00"
                },
                EPosta:
                {
                    required: "Kart sahibinin e-posta adresini giriniz.",
                    email: "Lütfen geçerli bir e-posta adresi giriniz."
                },
                CCNo:
                {
                    required: "16 Haneli kart numarasını giriniz.",
                    minlength: "Kart numarası 16 karakterden oluşmalıdır. Örnek : 4444-5555-6666-7777",
                    maxlength: "Kart numarası 16 karakterden oluşmalıdır. Örnek : 4444-5555-6666-7777"
                },
                CVV:
                {
                    required: "Kartınızın arkasında bulunan 3 haneli güvenlik kodunu giriniz.",
                    minlength: "Güvenlik kodu 3 karakterden oluşmalıdır.",
                    maxlength: "Güvenlik kodu 3 karakterden oluşmalıdır."
                },
                CCM:
                {
                    required: "Kartınızın son kullanma yılını seçiniz."
                },
                CCY:
                {
                    required: "Kartınızın son kullanma ayını seçiniz."
                },
                il:
                {
                    required: "Lütfen fatura iliniz seçiniz."
                },
                order_city:
                {
                    required: "Lütfen kargo iliniz seçiniz."
                },
                order_state:
                {
                    required: "Lütfen kargo ilçenizi giriniz."
                },
                Fatura:
                {
                    required: "Lütfen fatura adresinizi giriniz.",
                    minlength: "En az 15 karakterden oluşmalıdır."
                },
                Siparis:
                {
                    required: "Lütfen kargo adresinizi giriniz.",
                    minlength: "En az 15 karakterden oluşmalıdır."
                }
            },

            errorPlacement: function(error, element)
            {
                error.insertAfter(element.parent());
            }
        });
    });
</script>