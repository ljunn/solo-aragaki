<div class="wrapper" >
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
	<div style="height:40px;"></div>
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