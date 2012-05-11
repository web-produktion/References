{include file='documentHeader'}

<head>
	<title>{$reference->subject} - {lang}wcf.reference.title{/lang} - {PAGE_TITLE|language}</title>
	
	{include file='headInclude'}
</head>
<body id="tpl{$templateName|ucfirst}">

{include file='header'}

<header class="boxHeadline">
	<hgroup>
		<h1><a href="{link controller='Reference' object=$reference}{/link}">{$reference->subject}</a></h1>
	</hgroup>
</header>

<div class="container containerPadding marginTop shadow">
	TODO: display reference here
</div>

{include file='footer'}

</body>
</html>
