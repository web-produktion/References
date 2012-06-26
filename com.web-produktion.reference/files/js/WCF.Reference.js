/**
 * Namespace for reference.
 */
WCF.Reference = {};

/**
 * Provides simple logic to inherit associations within structured lists.
 */
WCF.Reference.Popover = Class.extend({
	
	/**
	 * reference id cache
	 */
	_cache: [ ],
	
	/**
	 * dialog overlay
	 * @var	jQuery
	 */
	_dialog: null,
	
	/**
	 * initialization state
	 * @var	boolean
	 */
	_didInit: false,
	
	/**
	 * action proxy
	 * @var	WCF.Action.Proxy
	 */
	_proxy: null,
	
	/**
	 * @see	WCF.Popover.init()
	 */
	init: function() {
		$('#reference').click($.proxy(this._click, this));
		
		this._cache = [ ];
		this._dialog = null;
		this._didInit = false;
		this._proxy = new WCF.Action.Proxy({
			success: $.proxy(this._success, this)
		});
	},
	
	/**
	 * Handles clicks on the sitemap icon.
	 */
	_click: function() {		
		if (this._dialog === null) {
			this._dialog = $('<div id="referenceDialog" />').appendTo(document.body);
			
			this._proxy.setOption('data', {
				actionName: 'getReference',
				className: 'wcf\\data\\reference\\ReferenceAction',
				parameters: {
					referenceID: $('.referenceItem').data('referenceID')
				}
			});
			this._proxy.sendRequest();
		}
		else {
			this._dialog.wcfDialog('open');
		}
	},
	
	/**
	 * Handles successful AJAX responses.
	 * 
	 * @param	object		data
	 * @param	string		textStatus
	 * @param	jQuery		jqXHR
	 */
	_success: function(data, textStatus, jqXHR) {
		if (this._didInit) {
			this._cache.push(data.returnValues.referenceID);
			
			this._dialog.find('#referenceItem-' + data.returnValues.referenceID).html(data.returnValues.template);
			
			// redraw dialog
			this._dialog.wcfDialog('render');
		}
		else {
			// mark sitemap name as loaded
			this._cache.push(data.returnValues.referenceID);
			
			// insert sitemap template
			this._dialog.html(data.returnValues.template);
			
			// show dialog
			this._dialog.wcfDialog({
				title: WCF.Language.get('wcf.reference.title')
			});
			
			this._didInit = true;
		}
	}
});
