<?php
namespace wcf\data\reference;
use wcf\data\DatabaseObject;
use wcf\system\breadcrumb\IBreadcrumbProvider;
use wcf\system\breadcrumb\Breadcrumb;
use wcf\system\request\IRouteController;
use wcf\system\request\LinkHandler;

/**
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	data.reference
 * @category 	Woltlab Community Framework
 */
class Reference extends DatabaseObject implements IBreadcrumbProvider, IRouteController {
	
	/**
	 * @see	wcf\data\DatabaseObject::$databaseTableName
	 */
	protected static $databaseTableName = 'reference';
	
	/**
	 * @see	wcf\data\DatabaseObject::$databaseTableIndexName
	 */
	protected static $databaseTableIndexName = 'referenceID';
	
	/**
	 * @see wcf\system\breadcrumb\IBreadcrumbProvider::getBreadcrumb()
	 */
	public function getBreadcrumb() {
		return new Breadcrumb($this->title, LinkHandler::getInstance()->getLink('Reference', array(
			'object' => $this
		)));
	}
	
	/**
	 * @see	wcf\system\request\IRouteController::getID()
	 */
	public function getID() {
		return $this->referenceID;
	}
	
	/**
	 * @see	wcf\system\request\IRouteController::getTitle()
	 */
	public function getTitle() {
		return $this->title;
	}
}
