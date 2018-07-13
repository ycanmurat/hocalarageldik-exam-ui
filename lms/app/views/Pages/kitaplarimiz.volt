<div class="pageTitle">
    <div class="container">
        <div class="row">

            <div class="col-12">
                <ol class="breadcrumb no-border">
                    <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/s/{{Page['permalink']}}"> {{Page['title']}}</a></li>
                </ol>
            </div>

        </div>
    </div>
</div>

<section class="register aboutus">


    <div id="entries">
        <div class="container">

            <div class="row mbBot info-line">
                <div class="col-12">
                    <h2 class="main-title"><i class="fa fa-book" aria-hidden="true"></i>
                        {{Page['title']}}</h2>
                </div>
                <div class="col-12 mbBot">

                    <div class="ui divided items">

                        {% for Kitap in Kitaplar %}
                        <div class="item">
                            <div class="image">
                                <img src="{{Kitap['image_link']}}">
                            </div>
                            <div class="content">
                                <div>
                                    <a href="{{Kitap['link']}}" target="_blank" class="ui header pull-left"
                                        style="margin-top: 10px;">{{Kitap['title']}}</a>

                                    <div style="clear: both"></div>
                                </div>
                                <div class="description text-justify"
                                    style="width: 100%; margin-top: 15px; clear:both;">
                                    <p>{{Kitap['description']}}</p>

                                    <div class="text-center showMobile">
                                        <a href="{{Kitap['link']}}"
                                            class="btn btn-sm btn-outline-danger btn-round">Hemen
                                            Sipariş Verin</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {% endfor %}

                    </div>

                </div>
            </div>

        </div>
    </div>
</section>