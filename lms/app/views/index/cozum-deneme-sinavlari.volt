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
                        <i class="grid layout icon"></i> Deneme Sınavları
                    </h5>
                    <hr>
                </div>
            </div>
            
            
            <table class="ui celled table">
                <thead class="hidden-mb2">
                    <tr>
                        <th class="text-left mb-center">Çözüm Deneme Sınavı Anahtarı</th>
                        <th class="text-center"></th>
                    </tr>
                </thead>
                <tbody>
                   {% if QuizList|length == 0 %}
                    <tr>
                        <th colspan="3" class="text-center">
                            -- henüz çözmüş olduğunuz deneme sınavı yok --
                        </th>
                    </tr>
                    {% endif %}
                    {% for Quiz in QuizList %}
                    <tr>
                       <td class="text-left mb-center pds">{{Quiz['test_adi']}}</td>
                       <td class="text-center">
                           
                           {% if Quiz['kacli_deneme'] == 10 %}
                               <a href="https://www.hocalarageldik.net/Sinav/AYT10/{{Quiz['cozum_test_ID']}}?showID={{Quiz['cozum_test_ID']}}" class="btn btn-primary btn-xs"><i class="pie chart icon"></i></a>
                            {% else %}
                                <a href="https://www.hocalarageldik.net/tyt-deneme-sinavi-8-li-cozum-anahtari/{{Quiz['cozum_test_ID']}}?showID={{Quiz['cozum_test_ID']}}" class="btn btn-primary btn-xs"><i class="pie chart icon"></i></a>
                            {% endif %}
                           
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

    </div>
</div>