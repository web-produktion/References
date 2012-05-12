<?php
namespace wcf\acp\form;
use wcf\data\reference\ReferenceAction;
use wcf\form\MessageForm;
use wcf\util\StringUtil;
use wcf\system\WCF;

/** 
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	acp.form
 * @category 	Woltlab Community Framework
 * @todo: 	use i18n handler ?
 */
class ReferenceAddForm extends MessageForm {
	
	/**
	 * @see wcf\page\AbstractPage::$templateName
	 */
	public $templateName = 'referenceAdd';
	
	/**
	 * @see wcf\acp\form\ACPForm::$activeMenuItem
	 */
	public $activeMenuItem = 'wcf.acp.menu.link.reference.add';
	
	/**
	 * reference shortDescription
	 * @var	string
	 */
	public $shortDescription = '';
	
	/**
	 * reference domain
	 * @var	string
	 */
	public $domain = '';
	
	/**
	 * reference is public
	 * @var	boolean
	 */
	public $public = false;
	
	/**
	 * reference position
	 * @var	integer
	 */
	public $position = 0;
	
	/**
	 * @see wcf\form\IForm::readFormParameters()
	 */
	public function readFormParameters() {
		parent::readFormParameters();
		
		if (isset($_POST['shortDescription'])) $this->shortDescription = StringUtil::trim($_POST['shortDescription']);
		if (isset($_POST['domain'])) $this->domain = StringUtil::trim($_POST['domain']);
		if (isset($_POST['position'])) $this->position = intval($_POST['position']);
		if (isset($_POST['public'])) $this->public = true;
	}
	
	/**
	 * @see wcf\form\IForm::save()
	 */
	public function save() {
		parent::save();
		
		// save reference
		$this->objectAction = new ReferenceAction(array(), 'create', array('data' => array(
			'shortDescription' => $this->shortDescription,
			'domain' => $this->domain,
			'public' => ($this->public ? 1 : 0),
			'position' => $this->position,
			'subject' => $this->subject,
			'description' => $this->text,
			'time' => TIME_NOW
		)));
		$returnValues = $this->objectAction->executeAction();
		
		// reset values
		$this->public = false;
		$this->shortDescription = $this->subject = $this->text = '';
		$this->position = 0;
		
		// show success
		WCF::getTPL()->assign(array(
			'success' => true
		));
	}
	
	/**
	 * @see wcf\page\IPage::assignVariables()
	 */
	public function assignVariables() {
		parent::assignVariables();
		
		WCF::getTPL()->assign(array(
			'action' => 'add',
			'shortDescription' => $this->shortDescription,
			'public' => $this->public,
			'domain' => $this->domain,
			'position' => $this->position
		));
	}
}
