{include file='header'}

<header class="boxHeadline">
	<hgroup>
		<h1>{lang}wcf.acp.reference.{$action}{/lang}</h1>
	</hgroup>
</header>

{if $errorField}
	<p class="error">{lang}wcf.global.form.error{/lang}</p>
{/if}

{if $success|isset}
	<p class="success">{lang}wcf.global.form.{$action}.success{/lang}</p>	
{/if}

<div class="contentNavigation">
	<nav>
		<ul>
			<li><a href="{link controller='ReferenceList'}{/link}" title="{lang}wcf.acp.reference.link.list{/lang}" class="button"><img src="{@$__wcf->getPath()}icon/list.svg" alt="" class="icon24" /> <span>{lang}wcf.acp.reference.link.list{/lang}</span></a></li>
		</ul>
	</nav>
</div>

<form method="post" action="{if $action == 'add'}{link controller='ReferenceAdd'}{/link}{else}{link controller='ReferenceEdit'}{/link}{/if}">
	<div class="container containerPadding marginTop shadow">
		
		<fieldset>
			<legend>{lang}wcf.acp.reference.add.information{/lang}</legend>
			
			<dl {if $errorField == 'subject'}class="formError"{/if}>
				<dt><label for="subject">{lang}wcf.acp.reference.add.subject{/lang}</label></dt>
				<dd>
					<input type="text" id="subject" name="subject" value="{$subject}" required="true" class="long" />
					{if $errorField == 'subject'}
						<small class="innerError">
							{if $errorType == 'empty'}
								{lang}wcf.global.form.error.empty{/lang}
							{/if}
						</small>
					{/if}
					<small>{lang}wcf.acp.reference.add.subject.description{/lang}</small>
				</dd>
			</dl>

			<dl{if $errorField == 'position'} class="formError"{/if}>
				<dt><label for="position">{lang}wcf.acp.reference.add.position{/lang}</label></dt>
				<dd>
					<input type="text" id="position" name="position" value="{if $position}{@$position}{/if}" class="tiny" />
					<small>{lang}wcf.acp.reference.add.position.description{/lang}</small>
				</dd>
			</dl>
			
			<dl>
				<dd>
					<label for="public"><input type="checkbox" id="public" name="public" value="1"{if $public} checked="checked"{/if} /> {lang}wcf.acp.reference.add.public{/lang}</label>
					<small>{lang}wcf.acp.reference.add.public.description{/lang}</small>
				</dd>		
			</dl>
		</fieldset>
		
		<fieldset id="messageContainer">
			<legend>{lang}wcf.acp.reference.add.text{/lang}</legend>
				
			<dl class="wide{if $errorField == 'text'} formError{/if}">
				<dt><label for="text">{lang}wcf.acp.reference.add.text{/lang}</label></dt>
				<dd>
					<textarea id="text" name="text" rows="20" cols="40">{$text}</textarea>
					{if $errorField == 'text'}
						<small class="innerError">
							{if $errorType == 'empty'}
								{lang}wcf.global.form.error.empty{/lang}
							{elseif $errorType == 'tooLong'}
								{lang}wcf.message.error.tooLong{/lang}
							{else}
								{lang}wcf.acp.reference.add.message.error.{@$errorType}{/lang}
							{/if}
						</small>
					{/if}
				</dd>
			</dl>
		</fieldset>
	</div>
	
	<div class="formSubmit">
		<input type="submit" value="{lang}wcf.global.button.submit{/lang}" accesskey="s" />
		<input type="hidden" name="action" value="{@$action}" />
		{if $referenceID|isset}<input type="hidden" name="id" value="{@$referenceID}" />{/if}
	</div>
</form>

{include file='footer'}