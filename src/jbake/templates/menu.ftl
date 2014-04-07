    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/${config.site_context}/index.html">${config.blog_name}</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Topics<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="/${config.site_context}/tags/java.html">Java</a></li>
                <li><a href="/${config.site_context}/tags/maven.html">Maven</a></li>
              </ul>
            </li>
            <li><a href="/${config.site_context}/archive.html">Archive</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/${config.site_context}/about.html" title="About"><i class="fa fa-user fa-lg"></i></a></li>
            <li><a href="https://github.com/akeffalas" target="_blank"><i class="fa fa-github fa-lg"></i></a></li>
            <li><a href="/${config.site_context}/${config.feed_file}" target="_blank"><i class="fa fa-rss fa-lg"></i></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
