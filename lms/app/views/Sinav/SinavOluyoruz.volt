<div class="container">
    <div class="row col-xs-12 mbBot" style="margin-top: 40px;">
        <h1 class="ui huge header">Bu sayfa online deneme sınavı analizinin takibi için hazırlanmıştır.</h1>
        <meta http-equiv="refresh" content="60">
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

        { event: "viewList", item:[ {{FeedProducts}} ]}

    );

</script>