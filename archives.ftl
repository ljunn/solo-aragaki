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
					articles.sort(function(a,b){
						return b.articleCreateTime-a.articleCreateTime;
					});
					console.log(articles);
					var oldyear=0;
					$.each(articles,function(index,a){
						console.log(a.articleCreateTime);
						var date=new Date(a.articleCreateTime);
						var year=date.getFullYear();
						var content="";
						if(year!=oldyear){
							if(oldyear!=0){
								content+="</ul>";
							}
							oldyear=year;
							content+="<h2>"+oldyear+"</h2>";
							content+="<ul class=\"archived-posts\">";
							
						}		
						content+="<li>";
						content+=date.getMonth()+"."+date.getDate();
						
						content+="<a  href=\"${servePath}"+a.articlePermalink+"\">"+a.articleAbstractText+"</a>";						

						if(a.articleTags!=""){
							var tags[]=a.articleTags.split(",");
							$.each(tags,function(index,tag){
								content+="<a href='${servePath}/tags/"+tag.tagTitle+"'"+" >&nbsp;"+tag.tagTitle+"</a>";
							});
						}
						
						
						
						content+="<span>"+a.articleViewCount+"度</span></li>";
						console.log($("#content").val());
						
						if(index==articles.length-1){
							content+="</ul>";
						}
						
						$("#content").append(content);
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
	

	
	<h1 style="margin-top:0px;padding-top:0px;">文章归档</h1>
	<div class="meta">本博客共有${statistic.statisticPublishedBlogArticleCount}篇文章</div>

	

	
	</section>
	

</main>
</div>
<#include "footer.ftl">
</body>
</html>
