<!-- user_view.tpl -->
{section name=nr loop=$userdata}
	<legend>View User</legend>
	<table class="table table-bordered table-striped" cellpadding="0" cellspacing="0">
		<th colspan="2">Viewing {$userdata[nr].user_login}</th>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_Login#}: </strong></td><td><img src="{$userdata[nr].Avatar}" align="absmiddle"/> {$userdata[nr].user_login}</td></tr>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_Level#}: </strong></td><td>{$userdata[nr].user_level}</td></tr>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_Email#}: </strong></td><td>{$userdata[nr].user_email}</td></tr>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_LL_Date#}: </strong></td><td>{$userdata[nr].user_lastlogin}</td></tr>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_LL_Address#}: </strong></td><td> {$userdata[nr].user_lastip}</td></tr>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_Groups_Belongs#}: </strong></td><td> {$userdata[nr].belongs}</td></tr>
		<tr><td width="160px"><strong>{#PLIGG_Visual_View_User_Groups_Created#}: </strong></td><td> {$userdata[nr].created}</td></tr>
		{if $userdata[nr].user_login neq "admin"}<tr><td><strong>{#PLIGG_Visual_View_User_IP_Address#}:</strong></td><td> {$userdata[nr].user_ip}</td></tr>{/if}
		{checkActionsTpl location="tpl_admin_user_show_center_fields"}
		<tr><td><a href="admin_links.php?user={$userdata[nr].user_login}">{#PLIGG_Visual_View_User_Sub_Links#}</a></td> <td> {$linkcount} Total</td></tr>
		<br />
		<tr><td><a href="admin_comments.php?user={$userdata[nr].user_login}">{#PLIGG_Visual_View_User_Sub_Comments#}</a></td> <td> {$commentcount} Total</td></tr>
	</table>	
	{if $amIadmin}		
		<hr/>
		<a class="btn" href="?mode=edit&user={$userdata[nr].user_login}">{#PLIGG_Visual_View_User_Edit_Data#}</a>
		{if $user_logged_in neq $userdata[nr].user_login && $userdata[nr].user_id neq '1'}
			{if $userdata[nr].user_enabled}
				<a class="btn btn-warning" href="?mode=disable&user={$userdata[nr].user_login}">{#PLIGG_Visual_View_User_Disable#}</a>
			{else}
				<a class="btn btn-success" href="?mode=enable&user={$userdata[nr].user_login}">{#PLIGG_Visual_View_User_Enable#}</a>
			{/if}
			<a class="btn btn-danger" href="?mode=killspam&user={$userdata[nr].user_login}&id={$userdata[nr].user_id}">{#PLIGG_Visual_View_User_Killspam#}</a>
		{/if}
	{/if}
{sectionelse}
	{include file="/templates/admin/user_doesnt_exist_center.tpl"}
{/section}
<!--/user_view.tpl -->