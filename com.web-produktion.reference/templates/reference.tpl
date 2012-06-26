{include file='documentHeader'}

<head>
	<title>{lang}wcf.reference.title{/lang} - {PAGE_TITLE|language}</title>
	
	{include file='headInclude'}
	<script type="text/javascript" src="{@$__wcf->getPath()}js/WCF.Reference.js"></script>
	<script type="text/javascript">
		//<![CDATA[
		$(function() {
			new WCF.Reference.Popover();	
		});
		//]]>
	</script>
</head>
<body id="tpl{$templateName|ucfirst}">

{include file='header'}

<header class="boxHeadline">
	<hgroup>
		<h1><a href="{link controller='Reference'}{/link}">{lang}wcf.reference.title{/lang}</a></h1>
	</hgroup>
</header>

{hascontent}
	<div class="container containerPadding marginTop shadow">
		{content}
			{foreach from=$objects item=reference}
				<p>TODO: display references here</p>
				
				<div class="referenceItem" data-reference-id="{@$reference->referenceID}">
					<a id="reference" title="{$reference->subject}"><img src="{@$__wcf->getPath()}images/reference/reference-{@$reference->referenceID}.png" alt="{$reference->subject}" /></a>
				</div>
			{/foreach}
		{/content}
	</div>
{hascontentelse}
	<p class="info">{lang}wcf.reference.noReferences{/lang}</p>
{/hascontent}

{include file='footer'}

</body>
</html>
