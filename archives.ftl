<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="归档页面">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/style.css?${staticResourceVersion}"/>
		 <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open Sans"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		
		<script type="text/javascript">
			console.log("开始渲染归档页面...");
			var articles;
			$(document).ready(function(){
				$.ajax({url:"/articles",success:function(result){
					articles=result.rslts.articles;
					console.log(articles);
					var oldyear=0;
					$.each(articles,function(index,val){
						console.log(index+' ');
						console.log(val);
					});
				}});
			});
		</script>
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
</html>
