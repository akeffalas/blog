<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
	    <h1><#escape x as x?xml>${content.title}</#escape></h1>

            <p class="text-left text-muted">
                <i class="fa fa-calendar"></i> <small>${content.date?string("EEEE, MMMM dd, yyyy")}</small>
                &nbsp;&nbsp;&nbsp;<i class="fa fa-comment-o"></i> <a href="${config.site_context}${content.uri}#disqus_thread">Comments</a>
            </p>

            <span class="glyphicon glyphicon-tag"></span>
                <#list content.tags as contenttag>
                  <#assign tag = "${contenttag?trim}">
                  <a href="${config.site_context}/tags/${tag}.html"><span class="label label-primary">${tag}</span></a>
                </#list>
        </div> 

	<p>${content.body}</p>

        <br>

        <div class="fb-like" data-href="${config.site_context}${content.uri}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>


        <div class="g-plusone" data-size="medium" data-href="${config.site_context}${content.uri}"></div>


        <a href="https://twitter.com/share" class="twitter-share-button" data-url="${config.site_context}${content.uri}" data-via="akeffalas" data-lang="en">Tweet</a>
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


        <hr>

        <div id="disqus_thread"></div>
        <script type="text/javascript">
          var disqus_shortname = 'programmerstoolbelt'; // required: replace example with your forum shortname

          /* * * DON'T EDIT BELOW THIS LINE * * */
          (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
          })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
    
	
<#include "footer.ftl">
