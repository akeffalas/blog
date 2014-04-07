<#include "header.ftl">

	<#include "menu.ftl">

<div class="page-header">
  <div class="row">
    <div class="col-xs-6 col-md-3"><h1>Archive</h1></div>
    <div class="col-md-offset-7 col-xs-offset-4 col-xs-2 col-md-2"><h2><i class="fa fa-book"></i> ${published_posts?size}</h2></div>
  </div>
</div>
  
  <div class="row">
    <div class="col-md-offset-3 col-md-6 col-md-offset-3">

	
        <#list published_posts?sort_by("date")?reverse as post>
        <#if (last_year)??>
            <#if post.date?string("yyyy") != last_year>
                    </div>
                </div>  <!-- close panel -->

                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">${post.date?string("yyyy")}</h2>
                    </div>
                    <div class="panel-body">
            </#if>
        <#else>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2 class="panel-title">${post.date?string("yyyy")}</h2>
                </div>
                <div class="panel-body">
        </#if>
                
	<#if (last_month)??>
            <#if post.date?string("yyyy") == last_year>
	        <#if post.date?string("MMMM") != last_month>
	            </div>
                    <h4><small>${post.date?string("MMMM")}</small></h4>
		    <div class="list-group">
	        </#if>
            <#else>
                <h4><small>${post.date?string("MMMM")}</small></h4>
                <div class="list-group">
            </#if>
	<#else>
	    <h4><small>${post.date?string("MMMM")}</small></h4>
	    <div class="list-group">
	</#if>
		
        <a href="/${config.site_context}${post.uri}" class="list-group-item">${post.title}</a>
        <#assign last_month = post.date?string("MMMM")>
        <#assign last_year = post.date?string("yyyy")>
        </#list>
        </div>


    </div>
   </div>
</div>
</div>

<#include "footer.ftl">
