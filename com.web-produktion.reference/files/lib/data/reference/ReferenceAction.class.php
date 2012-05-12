<?php
namespace wcf\data\reference;
use wcf\data\AbstractDatabaseObjectAction;
use wcf\system\WCF;

/**
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	data.reference
 * @category 	Woltlab Community Framework
 */
class ReferenceAction extends AbstractDatabaseObjectAction {
	
	/**
	 * @see wcf\data\AbstractDatabaseObjectAction::$className
	 */
	protected $className = 'wcf\data\reference\ReferenceEditor';
}
