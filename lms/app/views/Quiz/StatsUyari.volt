
<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="warning sign icon"></i>
                  <div class="content">
                    {% if _data['Practice']['Name'] is defined %}
                        {{_data['Practice']['Name']}}
                    {% else %}
                        {% for Sinav in _ozet %}
                            {{Sinav['Sinav']}}
                        {% endfor %}
                    {% endif %}
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="/karnem"> Karnem</a></li>
              {% if _data['Practice']['Name'] is defined %}
                    <li class="breadcrumb-item"><a href="/karnem/deneme-sinavlari"> Deneme Sınavları</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> {{_data['Practice']['Name']}}</a></li>
              {% else %}
                    <li class="breadcrumb-item"><a href="/karnem/konu-testleri"> Konu Testleri</a></li>
                    {% for Sinav in _ozet %}
                    <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> {{Sinav['Sinav']}}</a></li>
                    {% endfor %}
              {% endif %}
            </ol>
        </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row row-eq-height mbBot">




       <div class="col-12">
           <div class="ui info icon  message mbBot">
                <i class="question icon"></i>
                <div class="header">
                    <?php
                        $ara = array('<br/>','<br>','<br >');
                        echo str_replace($ara,'', $Message);
                    ?>
                </div>
            </div>
       </div>



    </div>
</div>
