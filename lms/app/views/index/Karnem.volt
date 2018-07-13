<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                    <i class="location arrow icon"></i>
                    <div class="content">
                        Karnem
                    </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
                <ol class="breadcrumb no-border pull-right">
                    <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/karnem"> Karnem</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row mbBot">
       
        <?php $this->partial("layouts/KarneMenu"); ?>
        
        <div class="col-12 col-sm-12 col-md-8">
            
            <div class="ui form">
                <div class="grouped fields">
                    <h5 style="margin-bottom:20px; margin-top:20px;padding-top:4px; padding-bottom:3px;">
                        <i class="grid layout icon"></i> Konu Testleri
                    </h5>
                    <hr>
                </div>
            </div>
            
            
            <table class="ui celled table">
                <thead class="hidden-mb2">
                    <tr>
                        <th class="text-left mb-center">Konu Testi</th>
                        <th class="text-center">Tarih</th>
                        <th class="text-center"></th>
                    </tr>
                </thead>
                <tbody>
                    {% if QuizList|length == 0 %}
                    <tr>
                        <th colspan="3" class="text-center">
                            -- henüz test çözmemişsiniz --
                        </th>
                    </tr>
                    {% endif %}
                    {% for Quiz in QuizList %}
                    <tr>
                       <td class="text-left mb-center pds">{{Quiz['exam_name']}}</td>
                       <td class="text-center pds">{{Quiz['converDate']}}</td>
                       <td class="text-center">
                           <a href="javascript:;" data-href="{{Quiz['_url']}}" class="openPopup btn btn-danger btn-xs"><i class="unhide  icon"></i></a>
                           <a href="{{Quiz['_url_stats']}}" class=" btn btn-primary btn-xs"><i class="pie chart icon"></i></a>
                       </td>
                    </tr>
                    {% endfor %}
                </tbody>
            </table>
            <style>
                .btn-xs{
                    padding: 4px 0px 4px 4px !important;
                }
                .pds{
                    padding-top: 15px !important;
                }
            </style>

        </div>
        <div class="col-12 col-sm-12 text-right">
                    <div class="ui basic buttons">
                        
                        {% if Page != 1 %}
                        <a class="ui button" href="?p=1"><span aria-hidden="true">1</span></a>
                        {% endif %}
                        
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



                        {% if Page < Sayfalar %}
                            <a class="ui button" href="?p={{Page+1}}"><span aria-hidden="true">&raquo;</span></a>
                        {% endif %}
                        {% if Page != Sayfalar %}
                        <a class="ui button" href="?p={{Sayfalar}}"><span aria-hidden="true">{{Sayfalar}}</span></a>
                        {% endif %}

                    </div>
                </div>
    </div>
</div>