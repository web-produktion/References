<?php
namespace wcf\data\reference;
use wcf\data\DatabaseObjectList;

/**
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	data.reference
 * @category 	Woltlab Community Framework
 */
class ReferenceList extends DatabaseObjectList {
	
	/**
	 * @see	wcf\data\DatabaseObjectList::$className
	 */
	public $className = 'wcf\data\reference\Reference';
}
