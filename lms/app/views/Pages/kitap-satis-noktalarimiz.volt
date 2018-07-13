<div class="pageTitle">
    <div class="container">
        <div class="row">

            <div class="col-12">
                <ol class="breadcrumb no-border">
                    <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/s/{{ Page['permalink'] }}"> {{ Page['title'] }}</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<section class="register aboutus">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="main-title">
                    <i class="world icon"></i>
                    {{ Page['title'] }}
                </h2>
            </div>
            <!--- Kitap Satış Noktalarımız -->
            <div class="col-md-12 text-center" style="line-height: 3rem; margin-bottom: 30px;">
                <p>* Listeye yeni satış noktalarımız eklenecektir. En güncel liste için web sayfamızı takip
                    edebilirsiniz.</p>
                <!--<h3 class="ui header">Güncelleniyor.</h3>-->
            </div>
        </div>

        <?php

        $ch = curl_init();

                curl_setopt($ch, CURLOPT_URL, "http://api.test.dogrukaynak.com/api/store/all");
                curl_setopt($ch, CURLOPT_GET, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('x-api-key: d45cd741-c0b5-44b9-851b-665411bc846f'));

    $Output = curl_exec($ch);
    curl_close($ch);

   // $Output = json_decode($Output);


?>
        <div class="row row-eq-height mbBot">
            <div class="col-12 col-sm-6">
                <div class="form-group">
                    <label class="text-bld block">İl</label>
                    <select class="custom-select form-control-lg ilsbook" name="bookCity">
                        <option value="">İl</option>
                        {% for City in Cities %}
                        <option value="{{City['plaka']}}" data-id="{{City['plaka']}}"
                            {% if Teyit == 1 %}{% if User['city'] == City['plaka'] %} selected{% endif %}{% endif %}>
                            {{City['il']}}</option>
                        {% endfor %}
                    </select>
                </div>
            </div>

            <div class="col-12 col-sm-6">
                <div class="form-group">
                    <label>İlçe</label>
                    <select class="custom-select form-control-lg ilcessbook" name="bookState">
                        <option value="">İlçe</option>
                        {% if Teyit == 1 %}
                        {% if User['state'] is defined and User['state'] != '' %}
                        <option selected value="{{User['state']}}">{{User['state']}}</option>
                        {% endif %}
                        {% endif %}
                        {% for State in states %}
                        <option value="{{State['ilce']}}">{{State['ilce']}}</option>
                        {% endfor %}
                    </select>
                </div>
            </div>
        </div>
        <div class="row row-eq-height mbBot stores">

            <?php
    foreach($Output as $Mekan){
    echo '<div class="col-md-12 mycard2odeme  mycard2 rounded ">
        <h5 class="ui header">'.$Mekan->name.'</h5>';
        ?>

            <table class="table card-text">
                <tr style="border: none;">
                    <th style="border: none; width:120px; ">Adres</th>
                    <th style="border: none; width:5px;">:</th>
                    <td style="border: none;"><?php echo $Mekan->address; ?></td>
                </tr>
                <tr>
                    <th>İl / İlçe</th>
                    <th>:</th>
                    <td><?php echo $Mekan->city->name.'/'.$Mekan->town->name ?></td>
                </tr>
                <tr>
                    <th>Eposta</th>
                    <th>:</th>
                    <td><?php echo $Mekan->email ?></td>
                </tr>
                <tr>
                    <th>Telefon</th>
                    <th>:</th>
                    <td><?php echo $Mekan->phone ?></td>
                </tr>
            </table>
        </div>

        <?php
    }
    ?>
    </div>
    </div>

</section>