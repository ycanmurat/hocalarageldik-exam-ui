<section class="register">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <h2 class="ui header">
                        <i class="location arrow  icon"></i>
                        <div class="content">
                            {{PageInfo['title']}}
                        </div>
                    </h2>
                </div>
            </div>
        </div>
    </div>

    <div class="container">

        <div class="row mbBot">

            {% if AltBasliklar|length == 0 %}
            <div class="ui negative icon  message">
                <i class="warning sign icon"></i>
                <div class="header">
                    Üzgünüm, bu içeriği görüntüleyemiyorum. Ücretli bir içerik yada henüz konu içeriği eklenmemiş
                    olabilir.
                </div>
            </div>
            {% endif %}

            {% for Key,Val in AltBasliklar %}

            <div class="col-12">
                <h1 class="hg-title"><?php echo explode('__ONUR__',$Key)[0]; ?></h1>
            </div>

            <div class="clearfix"></div>

            {% for Data in Val %}

            <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3 dataList">
                <div class="cover shadow">
                    <a href="{{Data['URL']}}">

                        {% if Data['Type'] == 'File' %}
                        <img src="/assets/img/pdf.png" class="img-fluid rounded" alt="{{Data['Category']}}">
                        {% else %}
                        <img src="/{{Data['Thumb']}}" class="img-fluid rounded" alt="{{Data['Category']}}">
                        {% endif %}

                        <div class="hover rounded"></div>
                    </a>
                </div>
                <a href="{{Data['URL']}}" class="list-title">{{Data['Category']}}</a>
            </div>

            {% endfor %}

            <!-- Adsense -->
            {% if User is not defined and loop.first %}
            <?php $this->partial("layouts/Ads"); ?>
            {% endif %}

            {% if User is defined %}
            {% if User['users_groups'] == 0 %}
            <?php $this->partial("layouts/Ads"); ?>
            {% endif %}
            {% endif %}
            <!-- Adsense -->


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