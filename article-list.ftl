<div class="wrapper" style="margin-top:0px;">
<main >
	<section class="article-list">
		 <#list articles as article>
			<article>
				<h2 style="margin-top:0px;padding-top:0px;">
					<a href="${servePath}${article.articlePermalink}">
                        ${article.articleTitle}
                    </a> <span>${article.articleViewCount}度</span>
				</h2>
				<div class="excerpt">
				
				${article.articleAbstractText}</div>
				<div class="meta">
					<span class="item">
						<i class="fa fa-calendar-o" ></i>
						&nbsp;${article.articleCreateDate?string('yyyy.MM.dd')}
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
						<i class="fa fa-battery-three-quarters" aria-hidden="true"></i>
						<span>&nbsp;${article.articleViewCount}度</span>
					</span>
					<span class="item">
						<i class="fa fa-comment-o" aria-hidden="true"></i>
						<span>&nbsp;${article.articleCommentCount}评</span>
					</span>
				</div>
				
			</article>
		 </#list>
	</section>
	
   
</main>


<#if 0 != paginationPageCount>
    <nav class="pagination">
        <#if 1 != paginationPageNums?first>
            <a href="${servePath}${path}?p=${paginationPreviousPageNum}" class="pagination__item">←</a>
            <a class="pagination__item" href="${servePath}${path}">1</a>
            <span class="pagination__item pagination__item--text">...</span>
        </#if>
        <#list paginationPageNums as paginationPageNum>
            <#if paginationPageNum == paginationCurrentPageNum>
            <span class="pagination__item pagination__item--current">${paginationPageNum}</span>
            <#else>
            <a class="pagination__item"
               href="${servePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a>
            </#if>
        </#list>
        <#if paginationPageNums?last != paginationPageCount>
            <span class="pagination__item pagination__item--text">...</span>
            <a href="${servePath}${path}?p=${paginationPageCount}"
               class="pagination__item">${paginationPageCount}</a>
            <a href="${servePath}${path}?p=${paginationNextPageNum}" class="pagination__item">→</a>
        </#if>
    </nav>
</#if>

</div>