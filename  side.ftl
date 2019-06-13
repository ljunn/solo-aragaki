<#if 0 != mostViewCountArticles?size>
    <div class="aside-left sidebar">
        <h3>最热文章</h3>
        <ul >
            <#list mostViewCountArticles as article>
                <li>
                    <a rel="nofollow" title="${article.articleTitle}"
                       href="${servePath}${article.articlePermalink}">
                        ${article.articleTitle}
                    </a>
                    <span>${article.articleViewCount}度</span>
                </li>
            </#list>
        </ul>
        <div class="clear"></div>
    </div>
</#if>