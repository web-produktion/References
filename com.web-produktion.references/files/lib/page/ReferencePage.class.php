<?php
namespace wcf\page;
use wcf\data\reference\ViewableReference;
use wcf\system\exception\IllegalLinkException;
use wcf\system\menu\page\PageMenu;
use wcf\system\WCF;

/** 
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	page
 * @category 	Woltlab Community Framework
 */
class ReferencePage extends AbstractPage {
	
	/**
	 * reference id
	 * @var integer
	 */
	public $referenceID = 0;
	
	/**
	 * reference object
	 * @var ViewableReference
	 */
	public $reference = 0;
	
	/**
	 * @see wcf\page\IPage::readParameters()
	 */
	public function readParameters() {
		parent::readParameters();
		
		if (isset($_REQUEST['id'])) $this->referenceID = intval($_REQUEST['id']);
		
		// get reference
		$this->reference = ViewableReference::getReference($this->referenceID);
		if (!$this->reference->referenceID) {
			throw new IllegalLinkException();
		}
	}
	
	/**
	 * @see wcf\page\IPage::readData()
	 */
	public function readData() {
		parent::readData();
		
		// create breadcrumbs
		WCF::getBreadcrumbs()->add($this->reference->getBreadcrumb());
	}
	
	/**
	 * @see wcf\page\IPage::assignVariables()
	 */
	public function assignVariables() {
		parent::assignVariables();
		
		WCF::getTPL()->assign(array(
			'referenceID' => $this->referenceID,
			'reference' => $this->reference
		));
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
