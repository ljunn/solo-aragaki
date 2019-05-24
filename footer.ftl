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


<aside>
	<div class=".aside-left.sidebar">
	
	 <#if mostCommentArticles??&& (mostCommentArticles?size > 0)>
        <h3>最热文章</h3>
        <ul id="mostCommentArticles">
            <#list mostCommentArticles as article>
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
    </#if>
	
	
	</div>
	<div class=".aside-left.sidebar">
		<h3>分门别类</h3>
		<ul>
			 <#list mostUsedTags as tag>
				<li>
					<a href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" >
						${tag.tagTitle}
					</a>
					<span>${tag.tagPublishedRefCount}篇</span>
				</li>
			 </#list>
		</ul>
		<div class="clear"></div>
	</div>
</aside>


<footer class="footer">
    <#include "../../common-template/macro-user_site.ftl"/>
    <div class="ft__center" style="text-align: center;font-size: 13px;line-height: 20px;">
        <@userSite dir="n"/>
    </div>
	
    <nav class="footer__nav mobile__none">
        <a class="ft__link" rel="alternate" href="${servePath}/rss.xml" rel="section">RSS</a>
        <#if isLoggedIn>
        <a class="ft__link" href="${servePath}/admin-index.do#main" title="${adminLabel}">${adminLabel}</a>
        <a class="ft__link" href="${logoutURL}">${logoutLabel}</a>
        <#else>
        <a class="ft__link" href="${servePath}/start">${startToUseLabel}</a>
        </#if>
    </nav>
    <div class="footer__border mobile__none"></div>
  
	<span>&copy; ${year} &nbsp;<a href="${servePath}">${blogTitle}</a> - 
		<a href="${servePath}/archives.html">
            ${statistic.statisticPublishedBlogArticleCount} posts crafted 	
        </a>
	</span>
	<span> ♥ <a href="https://github.com/PCDotFan/Aragaki">Aragaki</a></span>
	<div class="powered_by">Powered by 
			<a href="https://solo.b3log.org/">Solo </a>
	</div>
	<div class="footer_slogan">
		<h5>${footerContent}</h5>
	</div>
</footer>


<div id="back_to_top">
	<label>△</label>
</div>
${plugins}
