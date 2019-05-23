<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="${archiveLabel} - ${blogTitle}">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/style.css?${staticResourceVersion}"/>
		 <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open Sans"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</@head>
</head>
<body class="body--gray">
<#include "header.ftl">
<div class="wrapper" >
<main id="pjax" class="fn__flex-1">

	
	<#if pjax><!---- pjax {#pjax} start ----></#if>
	
	<h1>文章归档</h1>
	<div class="meta">本博客共有${statistic.statisticPublishedBlogArticleCount}篇文章</div>

	 <#if 0 != archiveDates?size>
        <#list archiveDates as archiveDate>
			<h4>${archiveDate.archiveDateYear}.${archiveDate.archiveDateMonth}</h4>	
			<#list articles as article>
					<#if ${article.articleCreateDate?string('yyyy')} == ${archiveDate.archiveDateYear}&&${article.articleCreateDate?string('MM')} ==${archiveDate.archiveDateMonth}>
						<li>
							${article.articleCreateDate?string('MM.dd')}
							<a pjax-title="${article.articleTitle}" href="${servePath}${article.articlePermalink}">
								${article.articleAbstractText}
							</a> 
							<#if article.articleTags?size>0>
								<#list article.articleTags as tag>
									<a pjax-title="${tag.tagTitle}" href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" >
										&nbsp;${tag.tagTitle}
									</a>
								</#list>
							<#if>
							<span>${article.articleViewCount}度</span>
						</li>
					</#if>
				
				</#list>
        </#list>
    </#if>
	
	
	<#if pjax><!---- pjax {#pjax} end ----></#if>
</main>
</div>
<#include "footer.ftl">
</body>
</html>
