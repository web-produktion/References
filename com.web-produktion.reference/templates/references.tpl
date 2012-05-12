{include file='documentHeader'}

<head>
	<title>{lang}wcf.reference.title{/lang} - {PAGE_TITLE|language}</title>
	
	{include file='headInclude'}
</head>
<body id="tpl{$templateName|ucfirst}">

{include file='header'}

<header class="boxHeadline">
	<hgroup>
		<h1><a href="{link controller='References'}{/link}">{lang}wcf.reference.title{/lang}</a></h1>
	</hgroup>
</header>

{hascontent}
	<div class="container containerPadding marginTop shadow">
		{content}
			{foreach from=$objects item=reference}
				<p>TODO: display references here</p>
				
				<p><a href="{link controller='Reference' object=$reference}{/link}">{@$reference->subject}</a></p>
			{/foreach}
		{/content}
	</div>
{hascontentelse}
	<p class="info">{lang}wcf.reference.noReferences{/lang}</p>
{/hascontent}

{include file='footer'}

</body>
</html>
