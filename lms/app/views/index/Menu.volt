<div class="pageTitle">
    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <ol class="breadcrumb no-border">
                    <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="{{Bread[0]}}"> {{Bread[1]}}</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<section class="register aboutus">
    <div class="container">

        <div class="row mbBot">
            <div class="col-12">
                <h2 class="main-title">
                    <i class="location arrow icon"></i>

                    {{Bread[1]}}

                </h2>
            </div>


            {% for Ders in Dersler %}
            <!-- Data List -->
            <div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 dataList">
                <div class="archive-listing-area">
                    <a href="{% if Ders['LinkMenu'] == 0 %}/ders/{{Ders['permaLink']}}/{{Ders['ID']}}{% else %}{{Ders['Link']}}{% endif %}"
                        class="ders {{Ders['permaLink']}} rounded shadow">

                        <div class="text">{{Ders['categoryName']}}</div>
                    </a>
                </div>
            </div>
            {% endfor %}


        </div>

    </div>




    <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

    <script type="text/javascript">

        window.criteo_q = window.criteo_q || [];
        var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
        window.criteo_q.push(

            { event: "setAccount", account: 49986 },

            {% if User is defined %}
        { event: "setEmail", email: "{{User['email']}}" },
        {% endif %}

        { event: "setSiteType", type: deviceType },

        { event: "viewList", item: [{{ FeedProducts }} ]}

    );

    </script>

</section>