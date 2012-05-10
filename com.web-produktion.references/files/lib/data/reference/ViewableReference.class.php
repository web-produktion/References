<?php
namespace wcf\data\reference;
use wcf\data\DatabaseObjectDecorator;

/**
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	???
 * @package	com.web-produktion.references
 * @subpackage	data.reference
 * @category 	Woltlab Community Framework
 */
class ViewableReference extends DatabaseObjectDecorator {
	
	/**
	 * @see	wcf\data\DatabaseObjectDecorator::$baseClass
	 */
	protected static $baseClass = 'wcf\data\reference\Reference';
	
	/**
	 * Returns the formatted text of this message.
	 *
	 * @return 	string
	 */
	public function getFormattedMessage() {
		MessageParser::getInstance()->setOutputType('text/html');
		return MessageParser::getInstance()->parse($this->description, $this->enableSmilies, $this->enableHtml, $this->enableBBCodes);
	}
	
	/**
	 * gets a reference with a referenceID
	 * 
	 * @param	integer		$referenceID
	 * @return	wcf\data\reference\ViewableReferenceList
	 */
	public static function getReference($referenceID) {
		$referenceList = new ViewableReferenceList();
		$referenceList->getConditionBuilder()->add('reference.referenceID = ?', array($referenceID));
		$referenceList->readObjects();
		$objects = $referenceList->getObjects();
		if (isset($objects[$referenceID])) return $objects[$referenceID];
		return null;
	}
}
