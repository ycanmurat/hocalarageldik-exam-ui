<script src="/assets/js/jquery.countdown.min.js"></script>


<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                    <i class="checkmark box icon"></i>
                    <div class="content">
                        {{ title }}
                    </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
                <ol class="breadcrumb no-border pull-right">
                    <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"> </i></a></li>
                    <li class="breadcrumb-item"><a href="/kitap-soru-cozumleri">Kitaplar</a></li>
                    {% if Kitap is defined %}
                        <li class="breadcrumb-item"><a
                                    href="/kitap-soru-cozumleri/{{ Kitap['perma'] }}">{{ Kitap['Name'] }}</a></li>
                    {% endif %}
                    {% if Tipi is defined %}
                        <li class="breadcrumb-item"><a
                                    href="/kitap-soru-cozumleri/{{ Kitap['perma'] }}/{{ Tipi['ID'] }}">{{ Tipi['name'] }}</a>
                        </li>
                    {% endif %}
                </ol>
            </div>
        </div>
    </div>
</div>

<div id="entries">
    <div class="container">
        <div class="row mbBot info-line">
            <div class="col-12 mbBot">
                <div class="row">
                </div>
                <?php //print_r($Testler); ?>
                <div class="row">
                    {% if TestID ==0 %}
                        {% if Kitaplar is defined  AND Testler is not defined AND Kitapt is not defined %}
                            {% for Book in Kitaplar %}

                                <div class="col-md-6">
                                    <div class=" mb-4 shadow-sm">
                                        <a href="/kitap-soru-cozumleri/{{ Book['perma'] }}"><img
                                                    src="{{ Book['image'] }}"
                                                    width="200px">
                                            <div class="card-body">
                                                <p class="card-text">{{ Book['Name'] }}</p>

                                            </div>
                                        </a>
                                    </div>
                                </div>

                            {% endfor %}
                        {% endif %}
                        {% if Tipler is defined  AND Kitapt is defined %}
                            {% for Test in Tipler %}
                                <div class="col-md-6">
                                    <div class=" mb-4 shadow-sm">
                                        <a href="/kitap-soru-cozumleri/{{ Kitap['perma'] }}/{{ Test['ID'] }}">
                                            <div class="card-body">
                                                <p class="card-text">{{ Test['name'] }}</p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            {% endfor %}
                        {% endif %}
                        {% if Tipi is defined %}
                            {% for Test in Testler %}
                                <div class="col-md-6">
                                    <div class=" mb-4 shadow-sm">
                                        <a href="/kitap-soru-cozumleri/{{ Kitap['perma'] }}/{{ Tipi['ID'] }}/{{ Test['ID'] }}">
                                            <div class="card-body">
                                                <p class="card-text">{{ Test['Name'] }}</p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            {% endfor %}
                        {% endif %}
                    {% endif %}
                </div>
                <div class="row">
                    {% if TestID!=0 %}
                        {% if Testler is defined %}
                            <div class="col-md-12">
                                <div class=" mb-4 shadow-sm">
                                    {{ Test['Video'] }}
                                </div>
                            </div>
                        {% endif %}
                    {% endif %}
                </div>
            </div>
        </div>

    </div>
</div>