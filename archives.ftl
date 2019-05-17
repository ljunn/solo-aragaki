<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="${archiveLabel} - ${blogTitle}">
		<link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
		 <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open Sans"/>
		 <link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
		 <script src="${staticServePath}/skins/${skinDirName}/js/common.js"></script>
</@head>
</head>
<body class="body--gray">
<#include "header.ftl">
<main id="pjax" class="fn__flex-1">
    <#if pjax><!---- pjax {#pjax} start ----></#if>
    
	
	<h1>文章归档</h1>
	<div class="meta">本博客共有${statistic.statisticPublishedBlogArticleCount}篇文章</div>
		
	
	<#if 0 != archiveDates?size>
        <#list archiveDates?sort_by("archiveDate")?reverse as archiveDate>
			<h2>${archiveDate.archiveDateYear}</h2>
			<h4>${archiveDate.archiveDateMonth}</h4>			
			<ul class="archived-posts"> 
				<#list articles?sort_by("articleCreateDate")?reverse as article>
					<#if ${article.articleCreateDate?string('yyyy-MM')} == ${archiveDate.archiveDateYear}+"-"+${archiveDate.archiveDateMonth}>
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
			</ul>
        </#list>
    </#if>
	
	
	
		
	
    <#if pjax><!---- pjax {#pjax} end ----></#if>
</main>
<#include "footer.ftl">
</body>
</html>
