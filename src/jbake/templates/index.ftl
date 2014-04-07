<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
            <h1>Recent Posts</h1>
	</div>

        <#assign max_posts = config.index_max_posts?number>
        <#assign post_count = 0>
	<#list posts?sort_by("date")?reverse as post>
          <#if post_count != max_posts>
  		<#if (post.status == "published")>
                    <#assign continueMarker = config.continue_marker>
                    <#assign postBodyMax = post.body?index_of(continueMarker)>

                    <div class="panel panel-info">
                      <div class="panel-heading">                        
                        <i class="fa fa-lg panel-title"><a href="${post.uri}" class="blogpost-title"><#escape x as x?xml>${post.title}</#escape></a></i>
                      </div>

                      <div class="panel-body">
                        <p class="text-left text-muted">
                          <i class="fa fa-calendar"></i> <small>${post.date?string("EEEE, MMMM dd, yyyy")}</small>
                          &nbsp;&nbsp;&nbsp;<i class="fa fa-comment-o"></i> <a href="${post.uri}#disqus_thread">Comments</a>
                        </p>

                    <span class="glyphicon glyphicon-tag"></span>
                    <#list post.tags as contenttag>
                    <#assign tag = "${contenttag?trim}">
                      <a href="/tags/${tag}.html"><span class="label label-primary">${tag}</span></a>
                    </#list>
                    <hr>
                   
                    <#if postBodyMax == -1>
                        <p>${post.body}</p>
                    <#else>
                        <p>${post.body?substring(0, postBodyMax)}</p>
                        <p class="text-right">
                            <a href="${post.uri}" class="btn btn-info btn-xs" role="button">Continue reading <span class="glyphicon glyphicon-share-alt"></span></a>
                        </p>
                        <#-- close open divs due to 'continue reader' -->
                        </div></div>
                    </#if>

                    <#assign post_count = post_count + 1>

                      </div> <#--panelbody-->
                    </div> <#--panel-->
  		</#if>
          </#if>
  	</#list>
	
	<hr />
	
	<p>View all posts in the <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
