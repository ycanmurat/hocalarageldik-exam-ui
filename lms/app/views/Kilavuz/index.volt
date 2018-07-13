<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                    <i class="location arrow icon"></i>
                    <div class="content">
                        Title
                    </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
                <ol class="breadcrumb no-border pull-right">
                    <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/calisma-kilavuzu"> Title</a></li>

                </ol>
            </div>
        </div>
    </div>
</div>


{% if KilavuzID == 0 and dersID == 0 %}
<div class="container">
    <div class="row mbBot">
        <div class="col-12">
            <h1 class="hg-title">Kılavuzlar</h1>
        </div>
        {% for Kilavuz in Kilavuzlar %}
        <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 dataList">
            <a href="/Kilavuz?guideID={{Kilavuz['id']}}" class="ders rounded shadow">
                <div class="border"></div>
                <span class="border-bottom"></span>
                <div class="text">{{Kilavuz['guide']}}</div>
            </a>
        </div>
        {% endfor %}
    </div>
</div>
{% endif %}






{% if KilavuzID != 0 and dersID == 0 %}
<div class="container">
    <div class="row mbBot">
        {% for Dersler in Kilavuzlar %}
        <div class="col-12">
            <h1 class="hg-title">{{Dersler['guide']}} Kılavuzu</h1>
        </div>
        {% for Kilavuz in Dersler['Dersler'] %}
        <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 dataList">
            <a href="/Kilavuz?guideID={{Dersler['id']}}&lessonID={{Kilavuz['id']}}"
                class="ders {{Kilavuz['permalink']}} rounded shadow">
                <div class="border"></div>
                <span class="border-bottom"></span>
                <div class="text">{{Kilavuz['lesson']}}</div>
            </a>
        </div>
        {% endfor %}
        {% endfor %}
    </div>
</div>
{% endif %}






{% if KilavuzID != 0 and dersID != 0 %}
<div class="container">
    <div class="row mbBot">
        {% for Dersler in Kilavuzlar %}
        {% for Kilavuz in Dersler['Dersler'] %}
        <div class="col-12">
            <h1 class="hg-title">{{Dersler['guide']}} Kılavuzu {{Kilavuz['lesson']}}</h1>
        </div>


        {% for Key,HaftaSayisi in Kilavuz['Haftalar'] %}



















        <div class="container">
            <div class="row mbBot">

                <div class="col-12">
                    <div class="card kilavuz-card">
                        <div class="ders {{Kilavuz['permalink']}}">
                            <div class="border"></div>
                            <span class="border-bottom"></span>
                            <div class="text">{{Key}}. Hafta</div>
                        </div>


                        <div class="row kilavuz">

                            <div class="col-12 col-sm-12 col-md-4 pad white {{Kilavuz['permalink']}}">

                                {%  for Video in HaftaSayisi['Videolar'] %}
                                <div>
                                    <div class="ui toggle checkbox">
                                        <input type="checkbox">
                                        <label><a href="#{{Video['video_id']}}">{{Video['title']}}
                                                {% if Video['durationSecond'] is not empty %}
                                                ({{Video['durationSecond']}})
                                                {% endif %}
                                            </a></label>
                                    </div>
                                </div>
                                {% endfor %}


                            </div>

                            <div
                                class="col-12 col-sm-12 col-md-8<?php /*if($Say != 0){ echo 'col-md-8'; }else{ echo 'col-md-12'; }*/ ?> pad">
                                <div>

                                    <p class="text-justify">{{HaftaSayisi['Kazanim']['week_text']}}</p>


                                    <div class=" mbBot">
                                        <div class="ui positive icon  message mbBot">
                                            <i class="fa fa-clock-o fa-2x" style="margin-right: 10px;"></i>
                                            <div class="header">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis
                                                ipsam omnis adipisci amet assumenda perspiciatis rem tempore veniam
                                                odit, laborum, harum ducimus. Distinctio neque quisquam velit nihil
                                                impedit, magnam alias?
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mbBot">
                                        <div class="ui info icon  message mbBot">
                                            <i class="question icon"></i>
                                            <div class="header">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde labore
                                                iste id ratione culpa odit necessitatibus adipisci voluptatem, aliquid
                                                natus, illo delectus perferendis eaque consectetur animi fugit itaque,
                                                soluta recusandae.
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--- Kilavuz --->

            </div>
        </div>





















        {% endfor %}
        {% endfor %}
        {% endfor %}
    </div>
</div>
{% endif %}