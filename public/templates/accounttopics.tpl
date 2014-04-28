

<div class="account-username-box" data-userslug="{userslug}" data-uid="{uid}">
	<ul class="nav nav-pills account-sub-links">
		<li id="settingsLink"><a href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
		<li id="favouritesLink"><a href="{config.relative_path}/user/{userslug}/favourites">[[user:favourites]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/topics">[[topic:topics]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a></li>
		<li id="editLink"><a href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
		<li id="profile"><a href="{config.relative_path}/user/{userslug}">[[user:profile]]</a></li>
	</ul>
</div>

<div>
	<!-- IF !topics.length -->
		<div class="alert alert-warning">[[user:has_no_topics]]</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12 user-topics" data-nextstart="{nextStart}">
		<ul id="topics-container" data-nextstart="{nextStart}">
			<!-- BEGIN topics -->
			<li class="category-item<!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" data-tid="{topics.tid}" data-cid="{topics.cid}">
				<div class="col-md-12 col-xs-12 panel panel-default topic-row">

					<!-- IF showSelect -->
					<i class="fa fa-fw fa-square-o pull-left select pointer"></i>
					<!-- ENDIF showSelect -->

					<a href="{relative_path}/user/{topics.user.userslug}" class="pull-left">
						<img class="img-rounded user-img" src="{topics.user.picture}" title="{topics.user.username}" />
					</a>

					<h3>
						<a href="{relative_path}/topic/{topics.slug}">
							<strong><!-- IF topics.pinned --><i class="fa fa-thumb-tack"></i><!-- ENDIF topics.pinned --> <!-- IF topics.locked --><i class="fa fa-lock"></i><!-- ENDIF topics.locked --></strong>
							<span class="topic-title">{topics.title}</span>
						</a>
					</h3>

					<small>
						<span class="topic-stats">
							[[category:posts]]
							<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
						</span>
						|
						<span class="topic-stats">
							[[category:views]]
							<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
						</span>
						|
						<span>
							[[category:posted]] [[global:in]]
							<a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>
							<span class="timeago" title="{topics.relativeTime}"></span>
							</span>
						</span>

						<span class="pull-right">
							<!-- IF topics.unreplied -->
							[[category:no_replies]]
							<!-- ELSE -->
							<a href="{relative_path}/user/{topics.teaser.userslug}">
								<img class="teaser-pic" src="{topics.teaser.picture}" title="{topics.teaser.username}"/>
							</a>
							<a href="{relative_path}/topic/{topics.slug}#{topics.teaser.pid}">
								[[category:replied]]
							</a>
							<span class="timeago" title="{topics.teaser.timestamp}"></span>
							<!-- ENDIF topics.unreplied -->
						</span>
					</small>
				</div>
			</li>
			<!-- END topics -->
		</ul>
		</div>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />