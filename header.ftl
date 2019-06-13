<#--
    Solo - A beautiful, simple, stable, fast Java blogging system.
    Copyright (c) 2010-2018, b3log.org & hacpai.com
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
							<a href="${servePath}/archives" >
								归档
							</a>
						</li>
					
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

