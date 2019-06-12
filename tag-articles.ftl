<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="标签归档">
		 <link rel="stylesheet"
              href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
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
					var oldyear=0;
					var content="";
					$.each(articles,function(index,a){
						if((a.articleTags+"").indexOf("${tag.tagTitle}") < 0){
							return;
						}
						
						var date=new Date(a.articleCreateTime);
						var year=date.getFullYear();
						
						if(year!=oldyear){
							oldyear=year;
							content+="<h2>"+oldyear+"</h2>";
							content+="</ul>";
							content+="<ul class=\"archived-posts\">";
						}		
						content+="<li>";
						content+=date.getMonth()+"."+date.getDate()+"&nbsp;";
						
						content+="<a  href=\"${servePath}"+a.articlePermalink+"\">"+a.articleTitle+"&nbsp;</a>";						
				
						if(a.articleTags!=""){
							content+="<i class=\"fa fa-code\" aria-hidden=\"true\"></i> ";
							var tags=a.articleTags.split(",");
							$.each(tags,function(index,tag){
								content+="<a href='${servePath}/tags/"+tag+"'"+" >"+tag+"&nbsp;</a>";
								if(index!=tags.length-1){content+=","}
							});
						}
						
						
						content+="<span>"+a.articleViewCount+"度</span></li>";
						
						if(index===articles.length-1){
							content+="</ul>";
						}
						
					});
					$("#content").append(content);
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
	

	
	<h1 style="margin-top:0px;padding-top:0px;">文章标签</h1>

	<div class="meta">当前文章标签为：${tag.tagTitle}</div>
	

	
	</section>
	
	<div style="height=300px;">&nbsp;</div>
</main>
</div>
<#include "footer.ftl">
</body>
</html>
