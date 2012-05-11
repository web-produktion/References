{include file='header'}

<script type="text/javascript">
	//<![CDATA[
	$(function() {
		new WCF.Action.Delete('wcf\\data\\reference\\ReferenceAction', $('.jsReferenceRow'), $('.tabularBox .badge'));
	});
	//]]>
</script>

<header class="boxHeadline">
	<hgroup>
		<h1>{lang}wcf.acp.reference.list{/lang}</h1>
	</hgroup>
</header>

<div class="contentNavigation">
	{pages print=true assign=pagesLinks controller="ReferenceList" link="pageNo=%d&sortField=$sortField&sortOrder=$sortOrder"}
	
	<nav>
		<ul>
			<li><a href="{link controller='ReferenceAdd'}{/link}" title="{lang}wcf.acp.reference.add{/lang}" class="button"><img src="{@$__wcf->getPath()}icon/add.svg" alt="" class="icon24" /> <span>{lang}wcf.acp.reference.add{/lang}</span></a></li>
		</ul>
	</nav>
</div>

{hascontent}
	<div class="tabularBox tabularBoxTitle marginTop shadow">
		<hgroup>
			<h1>{lang}wcf.acp.reference.list{/lang} <span class="badge badgeInverse" title="{lang}wcf.acp.reference.list.count{/lang}">{#$items}</span></h1>
		</hgroup>
		
		<table class="table">
			<thead>
				<tr>
					<th class="columnID columnReferenceID{if $sortField == 'referenceID'} active{/if}" colspan="2"><a href="{link controller='ReferenceList'}pageNo={@$pageNo}&sortField=referenceID&sortOrder={if $sortField == 'referenceID' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.global.objectID{/lang}{if $sortField == 'referenceID'} <img src="{@$__wcf->getPath()}icon/sort{@$sortOrder}.svg" alt="" />{/if}</a></th>
					<th class="columnTitle columnSubject{if $sortField == 'subject'} active{/if}"><a href="{link controller='ReferenceList'}pageNo={@$pageNo}&sortField=subject&sortOrder={if $sortField == 'subject' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.acp.reference.subject{/lang}{if $sortField == 'subject'} <img src="{@$__wcf->getPath()}icon/sort{@$sortOrder}.svg" alt="" />{/if}</a></th>
					<th class="columnText columnPosition{if $sortField == 'position'} active{/if}"><a href="{link controller='ReferenceList'}pageNo={@$pageNo}&sortField=position&sortOrder={if $sortField == 'position' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.acp.reference.position{/lang}{if $sortField == 'position'} <img src="{@$__wcf->getPath()}icon/sort{@$sortOrder}.svg" alt="" />{/if}</a></th>
					
					{event name='headColumns'}
				</tr>
			</thead>
			
			<tbody>
				{content}
					{foreach from=$objects item=reference}
						<tr class="jsReferenceRow">
							<td class="columnIcon">
								<!-- TODO: delete/enable buttons -->
								
								{event name='buttons'}
							</td>
							<td class="columnID"><p>{@$reference->referenceID}</p></td>
							<td class="columnTitle columnSubject">{if $__wcf->session->getPermission('admin.content.reference.canEditReference')}<p><a href="{link controller='ReferenceEdit' id=$reference->referenceID}{/link}">{$reference->subject}</a>{else}{$reference->subject}</p>{/if}</td>
							<td class="columnText columnPosition"><p>{$reference->position}</p></td>
							
							{event name='columns'}
						</tr>
					{/foreach}
				{/content}
			</tbody>
		</table>
	</div>
	
	<div class="contentNavigation">
		{@$pagesLinks}
		
		<nav>
			<ul>
				<li><a href="{link controller='ReferenceAdd'}{/link}" title="{lang}wcf.acp.reference.add{/lang}" class="button"><img src="{@$__wcf->getPath()}icon/add.svg" alt="" class="icon24" /> <span>{lang}wcf.acp.reference.add{/lang}</span></a></li>
			</ul>
		</nav>
	</div>
{hascontentelse}
	<p class="info">{lang}wcf.acp.reference.noneAvailable{/lang}</p>
{/hascontent}

{include file='footer'}
