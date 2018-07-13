<div class="container">
    <div class="row">
        <div class="col-12">
            <ol class="breadcrumb">
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/mesajlarim"> Mesajlarim</a></li>
                <li><a href="/mesajlarim/yeni"> Yeni Mesaj</a></li>
            </ol>
        </div>
    </div>
</div>

<section class="profile register">
    <div class="pageTitle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="ui header">
                        <i class="user outline icon"></i>
                        <div class="content">
                            Mesajlarim
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
                            <i class="wechat icon"></i> Yeni Mesaj
                        </h5>
                        <hr>
                    </div>
                </div>



                <form action="/mesajlarim/yeni" method="post" id="mesajForm" enctype="multipart/form-data">
                    <div class="row">

                        {% if uyari is defined %}
                        <div class="col-12 mbBot">
                            <div class="ui negative icon  message mbBot">
                                <i class="checkmark icon"></i>
                                <div class="header">
                                    Oops! Üzgünüm, birşeyler ters gitti ve mesaj işlenemedi!
                                </div>
                            </div>
                        </div>
                        {% endif %}

                        <div class="col-12 col-sm-12">
                            <div class="form-group">
                                <label class="text-bld block">Departman</label>
                                <select class="custom-select form-control-lg" name="tur">
                                <option value="">Departman</option>
                                {% for Department in Departments %}
                                <option value="{{Department['department']}}"{% if OdemeBildirim is defined and Department['department'] == 'Ödeme Bildirimi' %}selected{% endif %}>{{Department['department']}}</option>
                                {% endfor %}
                            </select>
                            </div>
                        </div>

                        <div class="col-12 col-sm-12">
                            <div class="form-group">
                                <label class="text-bld block">Konu</label>
                                <input type="text" name="konu" class="form-control form-control-lg" placeholder="Konu">
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 ">
                            <div class="form-group">
                                <label class="text-bld block">Mesaj</label>
                                <textarea style="font-size:16px;" name="message" class="form-control form-control-lg " cols="30" rows="5"></textarea>
                            </div>
                        </div>


                        <div class="col-12 col-sm-12 ">
                            <div class="form-group">
                                <label class="text-bld block">Dosya Ekleri</label>
                                <input type="file" name="files[]" multiple class="form-control-file" accept="application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint, text/plain, application/pdf, image/*">
                                <small id="fileHelp" class="form-text text-muted">En fazla 3 dosya yükleyebilirsiniz, ilk 3 dosyadan sonrası ve 1MB'dan büyük dosyalar yüklenmeyecektir.</small>
                            </div>
                        </div>


                        <div class="col-12 text-right mb-center">
                            <button type="submit" class="btn btn-xs btn-sm btn-lg btn-success"><i class="fa fa-send"></i> Gönder</button>
                        </div>
                    </div>
                </form>

            </div>

        </div>
    </div>

</section>