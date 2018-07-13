<div class="pageTitle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="ui header">
                  <i class="search icon"></i>
                  <div class="content">
                    Arama: {{aranan}}
                  </div>
                </h2>
            </div>
            <div class="col-sm-6 text-right">
            <ol class="breadcrumb no-border pull-right">
              <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="#" class="aramaToggle">Arama</a></li>
              <li class="breadcrumb-item"><a href="<?php echo $_SERVER['REQUEST_URI'] ?>"> {{aranan}}</a></li>
            </ol>
        </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row mbBot">
       
       
        
        {% if Sonuclar|length == 0 %}            
            <div class="col-12">
                <div class="ui negative icon  message">
                  <i class="warning sign icon"></i>
                  <div class="header">
                    Üzgünüm, " {{aranan}} " aramasında herhangi bir sonuç bulamadık, yeni bir arama yapmak için <a href="#" class="aramaToggle">buraya tıklayınız.</a>
                  </div>
                </div>
            </div>
        {% endif %}

        {% for Data in Sonuclar %}
        <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3 dataList">
            <div class="cover shadow">
                <a href="{{Data['URL']}}">
                    <img src="/{{Data['thumb']}}" class="img-fluid rounded" alt="{{Data['categoryName']}}">
                    <div class="hover rounded"></div>
                </a>
            </div>
            <a href="{{Data['URL']}}" class="list-title">{{Data['categoryName']}}</a>
        </div><!-- Örnek -->
        {% endfor %}
        
        
    </div>
</div>

