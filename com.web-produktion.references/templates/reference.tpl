{include file='documentHeader'}

<head>
	<title>{$reference->title} - {PAGE_TITLE|language}</title>
	
	{include file='headInclude'}
</head>
<body id="tpl{$templateName|ucfirst}">

{include file='header'}

<header class="boxHeadline">
	<hgroup>
		<h1><a href="{link controller='Reference' object=$reference}{/link}">{$reference->title}</a>
	</hgroup>
</header>

<div class="container containerPadding marginTop shadow">
	TODO: display reference here
</div>

{include file='footer'}

</body>
</html>
