<?php
namespace wcf\data\reference;
use wcf\data\DatabaseObjectEditor;
use wcf\system\cache\CacheHandler;
use wcf\system\WCF;

/**
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	data.reference
 * @category 	Woltlab Community Framework
 */
class ReferenceEditor extends DatabaseObjectEditor {
	
	/**
	 * @see	wcf\data\DatabaseObjectDecorator::$baseClass
	 */
	protected static $baseClass = 'wcf\data\reference\Reference';
}
