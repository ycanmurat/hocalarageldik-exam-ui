<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/mesajlarim"> Mesajlarım</a></li>
            </ol>
        </div>
    </div>
</div>

<section class="register profile">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="ui header">
                        <i class="user outline icon"></i>
                        <div class="content">
                            Mesajlarım
                        </div>
                    </h2>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row mbBot">

            <?php $this->partial("layouts/RightMenu"); ?>

            <div class="col-12 col-sm-12 col-md-8">


                <div class="ui form">
                    <div class="grouped fields">
                        <h5 class="main-title">
                            <i class="fa fa-commenting-o "></i> Mesajlarım
                        </h5>
                        <hr>

                    </div>
                </div>

                <div class="row">

                    <div class="col-12 col-sm-12 mbBot">

                        {% if Messages|length == 0 %}

                        <div class="blank-messages">Mesaj kutun boş</div>

                        {% endif %} {% for Message in Messages %}
                        <div
                            class="message-item ui attached {% if Message['read'] != 1 and Message['admin_ID'] is defined %} warning message {% endif %}  segment">
                            <a href="/mesajlarim/{{Message['perma']}}/{{Message['messages_ID']}}" class="dblk"><i
                                    class="fa fa-comments-o"></i> <b>{{Message['tur']}}:</b> {{Message['konu']}} </a>
                            <small class="dblk pl20 text-left">{{Message['write_date']}}</small>
                        </div>
                        {% endfor %}



                    </div>

                    {% if Messages|length != 0 %}

                    <div class="col-12 col-sm-12 text-left">
                        <div class="ui basic buttons">
                            <?php
                                for($a = 1; $a <= $Toplam; $a++){
                                    echo '<div onclick="window.location.href=\'?p='.$a.'\'"><a class="ui button"  href="?p='.$a.'">'.$a.'</a></div>';
                                }
                            ?>
                        </div>
                    </div>

                    {% endif %}




                </div>
                <div class="col-12">
                    <a href="/mesajlarim/yeni" class="new-message"><i class="wechat icon"></i>
                        Yeni Mesaj</a>
                </div>
            </div>

        </div>
    </div>

</section>