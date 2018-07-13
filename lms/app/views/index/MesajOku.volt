<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/mesajlarim"> Mesajlarım</a></li>
                <li><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> {{Message['konu']}}</a></li>
            </ol>
        </div>
    </div>
</div>
<section class="register profile messages">
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

            <div class="col-lg-9 col-md-8 col-12">


                <div class="" style="width: 100% !important;">
                    <div class="grouped fields">
                        <h5 class="main-title">
                            <i class="fa fa-commenting "></i> {{Message['konu']}}
                        </h5>
                        <hr>
                    </div>
                </div>
                <form action="?" method="post" id="mesajForm" enctype="multipart/form-data">
                    <div class="row">


                        <div class="col-12 col-sm-12 mbBot">

                            {% for Data in Message_Data %}
                            <div class="ui attached {% if Data['admin_ID'] is defined %} blue {% else %} {% endif %} segment">
                                <div class="message-item">
                                    <h5>{{Data['User']['Title']}}</h5>
                                    <div class="header">
                                        <img src="{{Data['User']['Avatar']}}">
                                        <h6>{{Data['User']['Name']}}<br>{{Data['User']['Lastname']}}</h6>
                                    </div>
                                    <div class="wrapper">
                                        {{Data['message']}}
                                        <span>{{Data['Tarih']}}</span>
                                    </div>
                                    {% if Data['Attachment']|length != 0 %}
                                    <div class="images">
                                        {% for Attach in Data['Attachment'] %}
                                        <a target="_blank" href="/Uploads/Attachment/{{Attach['files']}}"
                                            class="dblk"><img src="/Uploads/Attachment/{{Attach['files']}}"></a>
                                        {% endfor %}
                                    </div>
                                    {% endif %}
                                </div>
                            </div>
                            {% endfor %}


                            <div class="col-12 col-sm-12">

                                <input type="hidden" value="{{ID}}" name="messages_ID">
                                <div class="form-group">
                                    <label class="text-bld block">Cevap</label>
                                    <textarea name="message" class="form-control form-control-lg" cols="30"
                                        rows="5"></textarea>
                                </div>

                                <div class="form-group">
                                    <label class="text-bld block">Dosya Ekleri</label>
                                    <input type="file" name="files[]" multiple class="form-control-file"
                                        accept="application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint, text/plain, application/pdf, image/*">
                                    <small id="fileHelp" class="form-text text-muted">En fazla 3 dosya
                                        yükleyebilirsiniz,
                                        ilk 3 dosyadan sonrası ve 1MB'dan büyük dosyalar yüklenmeyecektir.</small>
                                </div>

                            </div>

                            <div class="col-12 text-center mb-center">
                                <button class="btn btn-xs btn-sm btn-lg btn-success"><i class="fa fa-send"></i>
                                    Gönder</button>
                            </div>





                        </div>
                </form>
            </div>

        </div>
    </div>

</section>