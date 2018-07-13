{% if MenuPerm != 0 %}
    {% if Youtube['Data'] is not defined and Video['Data'] is not defined %}
        {% if Exams|length == 0 %}
            {% if Documents|length == 1 %}
                {% for Document in Documents %}
                    {% if PageInfo['Categories']['menuPerm'] == 0 %}
                        {% if MenuPerm == 0 %}
                            <script></script>
                        {% else %}
                            <script>
                                location.href = "/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}";
                            </script>
                        {% endif %}
                    {% else %}
                        {% if PageInfo['Categories']['menuPerm'] == 1 %}
                            <script>
                                location.href = "/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}";
                            </script>
                        {% elseif PageInfo['Categories']['menuPerm'] == 2 and User is defined %}
                            <script>
                                location.href = "/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}";
                            </script>
                        {% else %}
                            <script></script>
                        {% endif %}
                    {% endif %}
                {% endfor %}
            {% endif %}
        {% endif %}
    {% endif %}
{% endif %}
<section class="watch-detail">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="left-bar">
                    <h2>
                        {% if PageInfo is defined %}
                            {% for Bread in PageInfo['Breadcrumb'] %}
                                {% if loop.first %}
                                    {{Bread[1]}}
                                {% endif %}
                            {% endfor %}
                        {% else %}
                            {{rightMenuBaslik}}
                        {% endif %}</h2>
                    <div class="list-area">
                        {% if PageInfo is defined %}
                            {% for Ders in PageInfo['RightMenu'] %}
                                <h3>{{ Ders['categoryName'] }}
                                    <button><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
                                </h3>

                                {% if Ders['Konular']|length != 0 %}

                                    {% for Konular in Ders['Konular'] %}
                                        <ul {% if PageInfo['Categories']['parent_ID'] ==  Konular['ID']  %}  class=""{% else %}class="active"{% endif
                                        %}>
                                            <h4>{{ Konular['categoryName'] }}<i class="fa fa-chevron-up" aria-hidden="true"></i></h4>

                                            <!-------------------------------->
                                            {% if Konular['AltKonular']|length != 0 %}

                                                {% for AltKonular in Konular['AltKonular'] %}
                                                    <li>
                                                        <a href="{% if AltKonular['LinkMenu'] == 1 %}{{ AltKonular['Link'] }}{% else %}{{ AltKonular['_URL'] }}{% endif %}">
                                                            {{ AltKonular['categoryName'] }}
                                                        </a>

                                                    </li>
                                                {% endfor %}

                                            {% endif %}
                                            <!-------------------------------->
                                        </ul>
                                    {% endfor %}

                                {% endif %}

                            {% endfor %}
                        {% endif %}


                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tabs-area">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-konuanlatim-tab" data-toggle="tab"
                               href="#nav-konuanlatim" role="tab" aria-controls="nav-konuanlatim"
                               aria-selected="true"><span>Konu <br> Anlatımları</span>
                                <div class="image-area">
                                    <img src="/content/images/video.png" alt="Konu anlatımları">
                                </div>
                            </a>
                            <a class="nav-item nav-link" id="nav-yeninesilkonuanlatim-tab" data-toggle="tab"
                               href="#nav-yeninesilkonuanlatim" role="tab" aria-controls="nav-yeninesilkonuanlatim"
                               aria-selected="false"><span>Yeni Nesil <br> Konu Anlatım</span>
                                <div class="image-area">
                                    <img src="/content/images/yeni.png" alt="Yeni nesil konu anlatım">
                                </div>
                            </a>
                            <a class="nav-item nav-link" id="nav-ogretensorular-tab" data-toggle="tab"
                               href="#nav-ogretensorular" role="tab" aria-controls="nav-ogretensorular"
                               aria-selected="false"><span>Öğreten <br> Sorular</span>
                                <div class="image-area">
                                    <img src="/content/images/soru.png" alt="Öğreten sorular">
                                </div>
                            </a>
                            <a class="nav-item nav-link" id="nav-konutestleri-tab" data-toggle="tab"
                               href="#nav-konutestleri" role="tab" aria-controls="nav-konutestleri"
                               aria-selected="false"><span>Konu <br> Testleri</span>
                                <div class="image-area">
                                    <img src="/content/images/test.png" alt="Konu testleri">
                                </div>
                            </a>
                        </div>
                    </nav>
                    <!-- Buralar dutluk -->
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-konuanlatim" role="tabpanel"
                             aria-labelledby="nav-konuanlatim-tab">
                            <div class="konuanlatim">
                                {% if Youtube['Data'] is defined or Video['Data'] is defined %}
                                    <div class="shadow" id="videoData">
                                        <div class="videoBox shadowBt">

                                            {% if Youtube['Data'] is defined %}
                                                <div class="embed-responsive embed-responsive-16by9">
                                                    <iframe class="embed-responsive-item"
                                                            src="https://www.youtube.com/embed/{{ Youtube['Data'] }}?rel=0&amp;showinfo=0"
                                                            allowfullscreen></iframe>
                                                </div>
                                            {% else %}

                                                {% if MenuPerm == 0 %}
                                                    <div class="text-center">
                                                        <a href="/uyelik-paketleri">
                                                            <img src="/assets/img/uzgunum.jpg" alt="Erişim Bilgilendirmesi" width="100%">
                                                        </a>
                                                    </div>
                                                {% else %}
                                                    <div class="embed-responsive embed-responsive-16by9">
                                                        <video autoplay controls loop class="embed-responsive-item" poster="/{{ Video['thumb'] }}">
                                                            <source src="https://www.hocalarageldik.com/{{ Video['Data'] }}" type="video/mp4">
                                                        </video>
                                                    </div>
                                                {% endif %}

                                            {% endif %}
                                        </div>
                                    </div>
                                {% endif %}

                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-yeninesilkonuanlatim" role="tabpanel"
                             aria-labelledby="nav-yeninesilkonuanlatim-tab">
                            <div class="konuanlatim">
                                <iframe src="https://www.youtube.com/embed/BnZwzhrxFbc" frameborder="0"
                                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-ogretensorular" role="tabpanel"
                             aria-labelledby="nav-ogretensorular-tab">
                            <div class="konuanlatim">
                                <iframe src="https://www.youtube.com/embed/BnZwzhrxFbc" frameborder="0"
                                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-konutestleri" role="tabpanel"
                             aria-labelledby="nav-konutestleri-tab">
                            <div class="konuanlatim">
                                <iframe src="https://www.youtube.com/embed/BnZwzhrxFbc" frameborder="0"
                                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pdf-files">
                    <div class="title">PDF<br>Dosyaları
                        <div class="image-area">
                            <img src="/content/images/pdf.png" alt="PDF Dosyaları">
                        </div>
                    </div>
                    <div class="links">
                        {% for Document in Documents %}

                        {% if PageInfo['Categories']['menuPerm'] == 0 %}
                        {% if MenuPerm == 0 %}
                        <a href="javascript:;" class="uyariModal">
                            {% else %}
                            <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank">
                                {% endif %}
                                {% else %}
                                {% if PageInfo['Categories']['menuPerm'] == 1 %}
                                <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank">
                                    {% elseif PageInfo['Categories']['menuPerm'] == 2 and User is defined %}
                                    <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank">
                                        {% else %}
                                        <a href="javascript:;" class="uyariModal">
                                            {% endif %}
                                            {% endif %}
                                            <img src="/assets/img/pdf.png" class="img-fluid rounded" alt="{{ Document['title'] }}">
                                            <div class="hover rounded"></div>
                                        </a>

                                        {% if PageInfo['Categories']['menuPerm'] == 0 %}
                                        {% if MenuPerm == 0 %}
                                        <a href="javascript:;" class="list-title uyariModal">
                                            {% else %}
                                            <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank" class="list-title">
                                                {% endif %}
                                                {% else %}
                                                {% if PageInfo['Categories']['menuPerm'] == 1 %}
                                                <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank" class="list-title">
                                                    {% elseif PageInfo['Categories']['menuPerm'] == 2 and User is defined %}
                                                    <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank" class="list-title">
                                                        {% else %}
                                                        <a href="javascript:;" class="list-title uyariModal">
                                                            {% endif %}
                                                            {% endif %}{{ Document['title'] }}
                                                        </a>
                                                        <!-- /Data List -->
                                                        {% endfor %}

                                                      
                    </div>
                </div>
                <div class="course-wrapper">
                    <h6>Aralarında Asallık</h6>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla, cum reprehenderit aliquid porro,
                        iusto, unde quae culpa sit in numquam eius nam mollitia reiciendis quisquam provident hic fugiat
                        voluptates itaque!</p>
                </div>
                <div class="other-courses">
                    <div class="row">
                        {% for Bilsene in Biliyonmu %}

                            <div class="col-md-4">
                                <a href="{{ Bilsene[1] }}">
                                    <img src="/{{ Bilsene['thumb'] }}" alt="{{ Bilsene['categoryName'] }}">
                                </a>
                            </div>

                        {% endfor %}

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script>

</script>
<!--
<?php
    if(empty($Youtube) && empty($Video) && empty($Documents) && empty($Exams))
    {
        $Gosterme = 1;
    }
?>


{% if MenuPerm != 0 %}
{% if Youtube['Data'] is not defined and Video['Data'] is not defined %}
{% if Exams|length == 0 %}
{% if Documents|length == 1 %}
{% for Document in Documents %}
{% if PageInfo['Categories']['menuPerm'] == 0 %}
{% if MenuPerm == 0 %}
<script></script>
{% else %}
<script>
    location.href = "/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}";
</script>
{% endif %}
{% else %}
{% if PageInfo['Categories']['menuPerm'] == 1 %}
<script>
    location.href = "/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}";
</script>
{% elseif PageInfo['Categories']['menuPerm'] == 2 and User is defined %}
<script>
    location.href = "/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}";
</script>
{% else %}
<script></script>
{% endif %}
{% endif %}
{% endfor %}
{% endif %}
{% endif %}
{% endif %}
{% endif %}

<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="ui header">

                </h2>
            </div>
            <?php
            /*
                 <div class="col-sm-7 text-right">
                     <ol class="breadcrumb no-border pull-right">
                       <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i></a></li>
                       {% for Bread in PageInfo['Breadcrumb'] %}
                       <li class="breadcrumb-item"><a href="{{ Bread[0] }}">{{ Bread[1] }}</a></li>
                       {% endfor %}
                     </ol>
                 </div>
             */
            ?>
        </div>
    </div>
</div>
<div class="container">

    {% if PageInfo['Categories']['htmlData'] != 0 %}
    {{ PageInfo['Categories']['html'] }}
    {% endif %}

    <div class="row ">

        <?php
            if(isset($Gosterme) && $PageInfo['Categories']['htmlData'] != 1){
        ?>
        <div class="col-12">
            <div class="ui negative icon  message mbBot">
                <i class="warning sign icon"></i>
                <div class="header">
                    Bu kategoriye henüz herhangi bir içerik eklenmemiş, lütfen daha sonra tekrar kontrol ediniz.
                </div>
            </div>
        </div>
        <?php
     }
 ?>



        <div class="clearfix"></div>

        <div class="col-12 {% if Biliyonmu|length != 0 %}col-md-8{% else %}col-md-12{% endif %}">
            {% if Youtube['Data'] is defined or Video['Data'] is defined %}
            <div class="shadow" id="videoData">
                <div class="videoBox shadowBt">

                    {% if Youtube['Data'] is defined %}
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item"
                            src="https://www.youtube.com/embed/{{ Youtube['Data'] }}?rel=0&amp;showinfo=0"
                            allowfullscreen></iframe>
                    </div>
                    {% else %}

                    {% if MenuPerm == 0 %}
                    <div class="text-center">
                        <a href="/uyelik-paketleri">
                            <img src="/assets/img/uzgunum.jpg" alt="Erişim Bilgilendirmesi" width="100%">
                        </a>
                    </div>
                    {% else %}
                    <div class="embed-responsive embed-responsive-16by9">
                        <video autoplay controls loop class="embed-responsive-item" poster="/{{ Video['thumb'] }}">
                            <source src="https://www.hocalarageldik.com/{{ Video['Data'] }}" type="video/mp4">
                        </video>
                    </div>
                    {% endif %}

                    {% endif %}
                </div>
            </div>
            {% endif %}
-->
<div class="hidden-mb">
    <!-- Adsense -->
    {% if User is not defined %}
        <?php $this->partial("layouts/Ads3"); ?>
    {% endif %}

    {% if User is defined %}
        {% if User['users_groups'] == 0 %}
            <?php $this->partial("layouts/Ads3"); ?>
        {% endif %}
    {% endif %}
    <!-- Adsense -->
</div>


</div>
<!--
        {% if Biliyonmu|length != 0 %}
        <div class="col-12 col-md-4">
            <div id="leftBar">
                <div class="row">

                    {% for Bilsene in Biliyonmu %}
                    <div class="col-6 dataList mbBot2">
                        <div class="cover shadow">
                            <a href="{{ Bilsene[1] }}">
                                <img src="/{{ Bilsene['thumb'] }}" class="img-fluid rounded"
                                    alt="{{ Bilsene['categoryName'] }}">
                                <div class="hover rounded"></div>
                            </a>
                        </div>
                        <a href="{{ Bilsene[1] }}" class="list-title">{{ Bilsene['categoryName'] }}</a>
                    </div>
                    {% endfor %}




                </div>
            </div>
        </div>
        {% endif %}
    </div>

    <div class="mbBot" style="margin-top: 30px;">
        <div class="row">
            <div class="col-12">
                <ul class="nav nav-tabs tab-video-btn"
                    {% if Documents|length == 0 and Exams|length == 0 %}style="display:none;" {% endif %} role="tablist">
                    {% if Youtube['Data'] is defined or Video['Data'] is defined %}

                    {% if Documents|length != 0 %}
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#home" role="tab"> <i
                                class="fa fa-download"></i> <span class="hidden-mb-xs">Konu Dokumanını İndir</span></a>
                    </li>
                    {% endif %}

                    {% endif %}
                    {% if Exams|length != 0 %}
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#profile" role="tab"> <i class="fa fa-pencil"></i>
                            <span class="hidden-mb-xs">Konu Testini Çöz</span></a>
                    </li>
                    {% endif %}
                </ul>
-->
<!-- Tab panes 
                <div {% if Documents|length != 0 or Exams|length != 0 %}class="tab-content tab-video" {% endif %}>
                    <div {% if Documents|length != 0 or Exams|length != 0 %}class="tab-pane active" id="home"
                        role="tabpanel" {% endif %}>

                        <div class="row">

                            {% for Document in Documents %}
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 col-xl-3 dataList">
                                <div class="cover cover-pdf shadow">
                                    {% if PageInfo['Categories']['menuPerm'] == 0 %}
                                    {% if MenuPerm == 0 %}
                                    <a href="javascript:;" class="uyariModal">
                                        {% else %}
                                        <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank">
                                            {% endif %}
                                            {% else %}
                                            {% if PageInfo['Categories']['menuPerm'] == 1 %}
                                            <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}"
                                                target="_blank">
                                                {% elseif PageInfo['Categories']['menuPerm'] == 2 and User is defined %}
                                                <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}"
                                                    target="_blank">
                                                    {% else %}
                                                    <a href="javascript:;" class="uyariModal">
                                                        {% endif %}
                                                        {% endif %}
                                                        <img src="/assets/img/pdf.png" class="img-fluid rounded"
                                                            alt="{{ Document['title'] }}">
                                                        <div class="hover rounded"></div>
                                                    </a>
                                </div>
                                {% if PageInfo['Categories']['menuPerm'] == 0 %}
                                {% if MenuPerm == 0 %}
                                <a href="javascript:;" class="list-title uyariModal">
                                    {% else %}
                                    <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank"
                                        class="list-title">
                                        {% endif %}
                                        {% else %}
                                        {% if PageInfo['Categories']['menuPerm'] == 1 %}
                                        <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}" target="_blank"
                                            class="list-title">
                                            {% elseif PageInfo['Categories']['menuPerm'] == 2 and User is defined %}
                                            <a href="/Index/PDFView?f={{ Document['ID'] }}&s={{ SessionId }}"
                                                target="_blank" class="list-title">
                                                {% else %}
                                                <a href="javascript:;" class="list-title uyariModal">
                                                    {% endif %}
                                                    {% endif %}{{ Document['title'] }}
                                                </a>
                            </div>
                            {% endfor %}
                        </div>

                    </div>
                    {% if Exams|length != 0 %}
                    <div class="tab-pane" id="profile" role="tabpanel">
                        <div class="row">
                            {% for Exam in Exams %}
                            <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3 dataList ">
                                <div class="cover cover-test shadow">
                                    {% if MenuPerm == 0 %}
                                    <a href="javascript:;" class="uyariModal">
                                        {% else %}
                                        <a href="javascript:hgOpenPop('/Index/QuizView/{{ Exam['_URL'] }}');"
                                            class="openPopup" data-href="/Index/QuizView/{{ Exam['_URL'] }}">
                                            {% endif %}
                                            <img src="/assets/img/test.png" class="img-fluid rounded"
                                                alt="{{ Exam['exam_name'] }}">
                                            <div class="hover rounded"></div>
                                        </a>
                                </div>
                                {% if MenuPerm == 0 %}
                                <a href="javascript:;" class="list-title uyariModal">
                                    {% else %}
                                    <a href="javascript:hgOpenPop('/Index/QuizView/{{ Exam['_URL'] }}');"
                                        data-href="/Index/QuizView/{{ Exam['_URL'] }}" class="list-title openPopup">
                                        {% endif %}
                                        {{ Exam['exam_name'] }}
                                    </a>
                            </div>
                            {% endfor %}


                        </div>
                    </div>
                    {% endif %}

                </div>
            </div>
        </div>
    </div>



    {% if Tags|length == -1 %}
    <div class="mbBot">
        <div class="row">
            <div class="col-12 tags">
                <b>Konu Etiketleri:</b>
                <?php
                                    if(!isset($Gosterme)){
                                    ?>
                {% for Tag in Tags %}
                <a
                    href="/arama?s={{ Tag[1]|lower|url_encode }}">{{ Tag[1]|lower }}</a>{% if loop.last %}&nbsp;{% else %},{% endif %}
                {% endfor %}
                <?php
                                    }
                                    ?>
            </div>
        </div>
    </div>
    {% endif %}

</div>


<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

<script type="text/javascript">

    window.criteo_q = window.criteo_q || [];
    var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
    window.criteo_q.push(

        { event: "setAccount", account: 49986 },

        {% if User is defined %}
    { event: "setEmail", email: "{{ User['email'] }}" },
    {% endif %}

    { event: "setSiteType", type: deviceType },

    { event: "viewList", item: [{{ FeedProducts }} ]}

    );

</script>
-->