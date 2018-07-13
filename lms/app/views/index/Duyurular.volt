<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/duyurular"> Duyurular</a></li>
            </ol>
        </div>
    </div>
</div>
<section class="register profile">

    <div class="container">
        <div class="row mbBot">

            {% if User is defined %}
            <?php $this->partial("layouts/RightMenu"); ?>
            {% endif %}
            {% if User is defined %}
            <div class="col-12 col-sm-12 col-md-8">
                {% else %}
                <div class="col-12 col-sm-12 col-md-12">
                    {% endif %}

                    <div class="ui form">
                        <div class="grouped fields">
                            <h5 class="main-title">
                                <i class="fa fa-bell-o "></i> Duyurular
                            </h5>
                            <hr>
                        </div>
                    </div>
                    <style>
                        .ui.styled.fluid.accordion.accordionTwo div.title {
                            font-family: inherit;
                            font-weight: 500;
                        }
                    </style>
                    <div class="row">
                        <div class="col-12 col-sm-12 mbBot">
                            <div class="ui styled fluid accordion accordionTwo">
                                {% if Duyurular|length == 0 %}
                                <div class="title text-center">
                                    Henüz duyuru yapılmadı..
                                </div>
                                {% endif %}
                                {% for Duyuru in Duyurular %}
                                <div class="title {{Duyuru['cls']}}">
                                    <i class="dropdown icon"></i> {{Duyuru['title']}}
                                </div>
                                <div class="content">
                                    <div class="ui   message message_white segment">
                                        <div class="ui cards message_cards">
                                            <div class="card">
                                                <div class="content mbBot">

                                                    <div class="meta mbBot">
                                                        <span class="pull-right">{{Duyuru['dates']}}</span>
                                                    </div>
                                                    {% if Duyuru['photo'] is defined %}
                                                    <div class="mbBot">
                                                        <img src="/Uploads/Notice/{{Duyuru['photo']}}" alt=""
                                                            class="img-fluid">
                                                    </div>
                                                    {% endif %}
                                                    <div class="description text-justify mbBot">
                                                        {{Duyuru['text']}}
                                                    </div>
                                                </div>
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
        </div>
    </div>
</section>