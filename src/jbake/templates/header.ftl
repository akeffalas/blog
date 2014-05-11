<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>${config.blog_name}<#if (content.title)??><#escape x as x?xml> - ${content.title}</#escape></#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${config.blog_name}">
    <meta name="author" content="akeffalas">
    <meta name="keywords" content="programmer,java,maven,grails,git,jenkins">

    <!-- Styles -->
    <link href="${config.site_context}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${config.site_context}/css/asciidoctor.css" rel="stylesheet">
    <link href="${config.site_context}/css/base.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Inconsolata">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:700">
    <link href="${config.site_context}/css/prettify_desert_theme.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="${config.site_context}/favicon.ico?v=2" />

<script>
  window.GoogleAnalyticsObject = 'ga';
  window.ga = { q: [['create', 'UA-50871420-1', 'akeffalas.github.io'], ['send', 'pageview']], l: Date.now() };
  require(['http://www.google-analytics.com/analytics.js']);
</script>

  </head>
  <body>

    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>


    <div id="wrap">
   
