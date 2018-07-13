<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li ><a href="/">Anasayfa</a></li>
                <li ><a href="/son-islemlerim"> Kaldığım Yer</a></li>
            </ol>
        </div>
    </div>
</div>


<section class="register profile">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="ui header">
                        <i class="history outline icon"></i>
                        <div class="content">
                            Kaldığım Yer
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
                            <i class="history icon"></i> Kaldığım Yer
                        </h5>
                        <hr>
                    </div>
                </div>

                <div class="row">


                    <div class="col-12 col-sm-12 mbBot">

                        {% for History in Histories %}
                        <div class="ui attached segment last-categories">
                            <a href="{{History['page_uri']}}" target="_blank" class="dblk"><i
                                    class="fa fa-check-circle-o"></i> {{History['page']}}</a>
                            <small class="dblk pl20 text-left">{{History['date']}}</small>
                        </div>
                        {% endfor %}

                    </div>

                    <div class="col-12 col-sm-12">
                        <div class="ui basic buttons">

                            {% if Page != 1 %}
                            <a class="ui button" href="?p=1"><span aria-hidden="true">1</span></a> {% endif %}
                            {% if Page > 1 %}
                            <a class="ui button" href="?p={{Page-1}}"><span aria-hidden="true">&laquo;</span></a>
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



                            {% if Page
                                < Sayfalar %} <a class="ui button" href="?p={{Page+1}}"><span
                                    aria-hidden="true">&raquo;</span></a>
                            {% endif %} {% if Page != Sayfalar %}
                            <a class="ui button" href="?p={{Sayfalar}}"><span aria-hidden="true">{{Sayfalar}}</span></a>
                            {% endif %}

                        </div>
                    </div>

                </div>


            </div>

        </div>
    </div>
</section>