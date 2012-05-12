<?php
namespace wcf\page;
use wcf\system\menu\page\PageMenu;

/** 
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	page
 * @category 	Woltlab Community Framework
 */
class ReferencesPage extends MultipleLinkPage {
	
	/**
	 * @see	wcf\page\MultipleLinkPage::$objectListClassName
	 */
	public $objectListClassName = 'wcf\data\reference\ViewableReferenceList';
	
	
	/**
	 * @see wcf\page\MultipleLinkPage::initObjectList()
	 */
	protected function initObjectList() {
		parent::initObjectList();
		
		$this->objectList->getConditionBuilder()->add('reference.public = ?', array(1));
	}
	
	/**
	 * @see wcf\page\IPage::show()
	 */
	public function show(){	
		// aktiv page menu
		PageMenu::getInstance()->setActiveMenuItem('wcf.header.menu.reference');
		
		parent::show();
	}
}
