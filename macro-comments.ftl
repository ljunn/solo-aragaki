<#macro comments commentList article>
<ul class="comments" id="comments">
    <#list commentList as comment>
    <#include "common-comment.ftl"/>
    </#list>
</ul>
<#if article.commentable>
<div class="form">
    <textarea rows="3" placeholder="${postCommentsLabel}" id="comment"></textarea>
</div>
</#if>
</#macro>