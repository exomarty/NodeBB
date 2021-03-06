<div class="row">
	<form role="form" class="group" data-groupname="{group.name}">
		<div class="col-md-9">
			<div class="panel panel-default">
				<div class="panel-heading"><i class="fa fa-folder"></i> Group Settings</div>
				<div class="panel-body group-settings-form">


				<fieldset>
					<div class="col-xs-12">
						<label for="change-group-name">Name</label>
						<input type="text" class="form-control" id="change-group-name" placeholder="Group Name" value="{group.name}" <!-- IF group.system -->readonly<!-- ENDIF group.system -->/>
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<label for="change-group-desc">Description</label>
						<input type="text" class="form-control" id="change-group-desc" placeholder="A short description about your group" value="{group.description}" />
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<label for="change-group-user-title">Title of Members</label>
						<input type="text" class="form-control" id="change-group-user-title" placeholder="The title of users if they are a member of this group" value="{group.userTitle}"/>
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<label for="change-group-icon">Group Icon</label><br/>
						<i id="group-icon" class="fa fa-2x <!-- IF group.icon -->{group.icon}<!-- ELSE -->fa-shield<!-- ENDIF group.icon -->" value="{group.icon}"></i>
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<label for="change-group-label-color">Group Label Color</label>
						<span id="group-label-preview" class="label label-default" style="background:<!-- IF group.labelColor -->{group.labelColor}<!-- ELSE -->#000000<!-- ENDIF group.labelColor -->;">{group.userTitle}</span>
						<input id="change-group-label-color" placeholder="#0059b2" data-name="bgColor" value="{group.labelColor}" class="form-control" />
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<div class="checkbox">
							<label>
								<input id="group-private" name="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private-->> <strong>[[groups:details.private]]</strong>
								<p class="help-block">
									[[groups:details.private_help]]
								</p>
							</label>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<div class="checkbox">
							<label>
								<input id="group-hidden" name="hidden" type="checkbox"<!-- IF group.hidden --> checked<!-- ENDIF group.hidden-->> <strong>[[groups:details.hidden]]</strong>
								<p class="help-block">
									[[groups:details.hidden_help]]
								</p>
							</label>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<label for="add-member">Add User to Group</label>
						<input type="text" class="form-control" id="group-details-search" placeholder="Search Users" />
						<ul class="members user-list" id="group-details-search-results"></ul>
					</div>
				</fieldset>

				<fieldset>
					<div class="col-xs-12">
						<label>Members</label>
						<p>Click on a user to remove them from the group</p>
						<ul class="members current_members user-list">
							<!-- BEGIN group.members -->
								<li data-uid="{group.members.uid}">
									<img src="{group.members.picture}" />
									<span>{group.members.username}</span>
								</li>
							<!-- END group.members -->
						</ul>
					</div>
				</fieldset>


			</div>
		</div>

		<div class="col-md-3 options acp-sidebar">
			<div class="panel panel-default">
				<div class="panel-heading">Groups Control Panel</div>
				<div class="panel-body">
					<div class="btn-group btn-group-justified">
						<div class="btn-group">
							<button class="btn btn-primary save">Save</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-default revert">Revert</button>
						</div>
					</div>
				</div>
			</div>
		</div>

	</form>
</div>

<div id="icons" style="display:none;">
	<div class="icon-container">
		<div class="row fa-icons">
			<i class="fa fa-doesnt-exist"></i>
			<!-- IMPORT partials/fontawesome.tpl -->
		</div>
	</div>
</div>

<input type="hidden" template-variable="groupName" value="{group.name}" />