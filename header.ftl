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


<div class="wrapper">
	<header>
		 <a href="${servePath}/" rel="start" class="logo">
            <img src="${adminUser.userAvatar}"/>
        </a>
		
		<div class="description">
			<h1>${blogTitle}</h1>
			<h2>${blogSubtitle}</h2>
			<nav>
				<ul>
					<#list pageNavigations as page>
						<li>
							<a href="${page.pagePermalink}" target="${page.pageOpenTarget}" >
							${page.pageTitle}
							</a>
						</li>
					</#list>
						<li>
							<a href="${servePath}/search" >
								搜索
							</a>
						</li>
				</ul>
			
			</nav>
		</div>
	</header>
	<div height="20px"></div>
</div>


<script>

/* smooth scrolling */
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 500);
        return false;
      }
    }
  });
});

</script>