
<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li ><a href="/">Anasayfa</a></li>
                <li ><a href="/giris-kayitlari">Giriş Kayıtları</a></li>
            </ol>
        </div>
    </div>
</div>

<section class="register profile">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="ui header">
                        <i class="user outline icon"></i>
                        <div class="content">
                            Son İşlemlerim
                        </div>
                    </h2>
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
                        <h5 class="main-title">
                            <i class="sign in icon"></i> Giriş Kayıtları
                        </h5>
                        <hr>
                    </div>
                </div>

                <div class="row">


                    <div class="col-12 col-sm-12 mbBot">
                        <table class="ui celled table">
                            <thead class="hidden-mb2">
                                <tr>
                                    <th class="text-center">İşletim Sistemi</th>
                                    <th class="text-center">Tarayıcı</th>
                                    <th class="text-center">Türü</th>
                                    <th class="text-center">IP Adresi</th>
                                    <th class="text-center">Tarih - Saat</th>
                                </tr>
                            </thead>
                            <tbody>
                                {% for History in Histories %}
                                <tr>
                                    <td class="text-center">{{History['Agent']['OS']}}</td>
                                    <td class="text-center">{{History['Agent']['Browser']}} {{History['Agent']['BrowserVersion']}}</td>
                                    <td class="text-center">{{History['Agent']['Type']}}</td>
                                    <td class="text-center">{{History['IP']}}</td>
                                    <td class="text-center">{{History['date']}}</td>
                                </tr>
                                {% endfor %}
                            </tbody>
                        </table>
                    </div>

                    <div class="col-12 col-sm-12">
                        <div class="ui basic buttons">
                            {% if Sayfalar > 5 %} 
                            {% if Page != 1 %}
                            <a class="ui button" href="?p=1"><span aria-hidden="true">1</span></a> {% endif %} {% if Page > 1 %}
                            <a class="ui button" href="?p={{Page-1}}"><span aria-hidden="true">&laquo;</span></a> {% endif %}
                            {% endif %}

                            <?php

                          if(($Page - 3) >= 0)
                          {
                              $a = $Page - 1;
                              /*
                                echo '<a href="#" class="ui button">
                                        <span aria-hidden="true">...</span>
                                      </a>';
                                */
                          }
                          else
                          {
                              $a = 1;
                          }

                           $Bit = $a + 2;

                           if($Bit > $Sayfalar){
                               $Bit = $Sayfalar;
                           }

                           for($a; $a <= $Bit; $a++){
                               $cls = '';
                               if($a == $Page){
                                   $cls = '  active';
                                   $Bit = $a + 1;

                                   if($Bit > $Sayfalar){
                                       $Bit = $Sayfalar;
                                   }
                               }
                               echo '<a href="?p='.$a.'" class="ui button'.$cls.'">'.$a.'</a>';
                           }
                           /*
                           if($Sayfalar > $Bit){
                               echo '<a href="#" class="ui button">
                                        <span aria-hidden="true">...</span>
                                      </a>';
                           }
                           */
                        ?>

                        {% if Sayfalar > 5 %} 

                                {% if Page < Sayfalar %} 
                                    <a class="ui button" href="?p={{Page+1}}"><span aria-hidden="true">&raquo;</span></a>
                                {% endif %} 
                                {% if Page != Sayfalar %}
                                    <a class="ui button" href="?p={{Sayfalar}}"><span aria-hidden="true">{{Sayfalar}}</span></a> 
                                {% endif %}
{% endif %}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>