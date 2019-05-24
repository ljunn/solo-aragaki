<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="归档页面">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/style.css?${staticResourceVersion}"/>
		 <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open Sans"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<script src="http://code.jquery.com/jquery-latest.js"></script>
</@head>
</head>
<body>
<#include "header.ftl">
<div class="wrapper" style="margin-top:0px;">
<main  class="fn__flex-1">
	<section class="content" id="content">
	

	
	<h1>文章归档</h1>
	<div class="meta">本博客共有${statistic.statisticPublishedBlogArticleCount}篇文章</div>

	

	
	</section>
	

</main>
</div>
<#include "footer.ftl">
</body>
<script>
	alert(1)
	console.log("开始渲染归档页面...");
	$(function getArticles(){
		$.ajax({
			async: false,
			url: Label.servePath + "/articles",
			type: "GET",
			success: function (result) {
				var articles=result.articles;
				console.log(articles);
				articles.sort(function (a,b){
					return  a.articleCreateDate>b.articleCreateDate?1:-1;
				});
				var oldyear=0;
				for(var a in articles){
					if(a.articleCreateDate.getFullYear()!=oldyear){
						if(oldyear!=0){
							$("#content").append("</ul>");
						}
						$("#content").append("<ul class="archived-posts">");
						oldyear=a.articleCreateDate.getFullYear();
						$("#content").append("<h2>"+oldyear+"</h2>");
					}
					console.log($("#content").val());
					$("#content").append("<li>");
					$("#content").append(a.articleCreateDate);
					$("#content").append("<a  href='${servePath}"+a.articlePermalink+"'>"++a.articleAbstractText+"
							</a> ");
					if(a.articleTags.length>0){
						for(var tag in a.articleTags){
							$("#content").append("<a href='${servePath}/tags/"+tag.tagTitle+"'" >
										&nbsp;tag.tagTitle
									</a>");
						}
					}
					$("#content").append("<span>"+a.articleViewCount+"度</span></li>");
					console.log($("#content").val());
				}
			}
		});
	})；
	
	
</script>
</html>
