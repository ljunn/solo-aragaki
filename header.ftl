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
							<a href="${servePath}${page.pagePermalink}" target="${page.pageOpenTarget}" >
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

