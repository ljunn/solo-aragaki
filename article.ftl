<#include "../../common-template/macro-common_head.ftl">
<#include "macro-comments.ftl">
<#include "../../common-template/macro-comment_script.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="${article.articleTitle} - ${blogTitle}" description="${article.articleAbstract?html}">
	
	 <link rel="stylesheet"
              href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
	
	    <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/style.css?${staticResourceVersion}"/>
        <#if previousArticlePermalink??>
            <link rel="prev" title="${previousArticleTitle}" href="${servePath}${previousArticlePermalink}">
        </#if>
        <#if nextArticlePermalink??>
            <link rel="next" title="${nextArticleTitle}" href="${servePath}${nextArticlePermalink}">
        </#if>
		
		 <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open Sans"/>
		 <link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    </@head>
</head>
<body>
<#include "header.ftl">
<div class="wrapper" style="margin-top:0px;">
<main  id="pjax">
	<#if pjax><!---- pjax {#pjax} start ----></#if>
	<article class="content">
		<h1>${article.articleTitle}</h1>
		<div class="meta">
			<span class="item">
				<#setting locale="en_US">
				<i class="fa fa-calendar-o" ></i>${article.articleCreateDate?string('yyyy.MM.dd')}
			</span>
			<span class="item">
						<i class="fa fa-code" aria-hidden="true"></i>
						<#list article.articleTags?split(",") as articleTag>
							<a rel="tag"  href="${servePath}/tags/${articleTag?url('UTF-8')}">
								${articleTag}<#if articleTag_has_next>,</#if>
							</a>
						</#list>
			</span>

			<span class="item">
				<i class="fa fa-battery-three-quarters"></i>
				<span>${article.articleViewCount}度</span>
			</span>
			
			<span class="item">
				<i class="fa fa-comment-o"></i>
				<span>${article.articleCommentCount}评</span>
			</span>

			 <div class="post">
				${article.articleContent}
				<#if "" != article.articleSign.signHTML?trim>
					<div>
						${article.articleSign.signHTML}
					</div>
				</#if>
			 </div>
		</div>
	</article>
	<section class="pager">
        <#if previousArticlePermalink??>
        <a class="pre" href="${servePath}${previousArticlePermalink}" >${previousArticleTitle}</a>
        </#if>

        <#if nextArticlePermalink??>
         <a class="next" href="${servePath}${nextArticlePermalink}"> ${nextArticleTitle}</a>
        </#if>
	</section>
	
	<section id="comments">
		<@comments commentList=articleComments article=article></@comments>
	
	</section>
	<#if pjax><!---- pjax {#pjax} end ----></#if>
</main>
</div>
<#include "footer.ftl">


<#if pjax><!---- pjax {#pjax} start ----></#if>
<@comment_script oId=article.oId commentable=article.commentable>
    page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";
	Skin.initArticle()
</@comment_script>
<#if pjax><!---- pjax {#pjax} end ----></#if>
    
</body>

</html>
