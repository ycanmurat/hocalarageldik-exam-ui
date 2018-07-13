<section class="register aboutus">
    <div class="container">
        <div class="row mbBot">
            <div class="col-12">
                <h2 class="main-title">
                    <i class="location arrow icon"></i>
                    {% for Bread in PageInfo['Breadcrumb'] %}
                    {% if loop.last %}
                    {{Bread[1]}}
                    {% endif %}
                    {% endfor %}
                </h2>
            </div>
            <!-- Data List -->

            {% for Ders in Dersler %}
            <div class="col-lg-4 col-md-6 col-12">
                <div class="archive-listing-area">
                    <a href="{% if Ders['LinkMenu'] == 0 %}/ders/{{Ders['permaLink']}}/{{Ders['ID']}}{% else %}{{Ders['Link']}}{% endif %}"
                        class="ders {{Ders['permaLink']}}">
                        {{Ders['categoryName']}}
                    </a>
                </div>
            </div>
            {% endfor %}

        </div>

    </div>

</section>


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