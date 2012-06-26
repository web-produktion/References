<?php
namespace wcf\data\reference;
use wcf\data\AbstractDatabaseObjectAction;
use wcf\system\exception\ValidateActionException;
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
	
	/**
	 * Does nothing.
	 */
	public function validateGetReference() {
		if (!isset($this->parameters['referenceID'])) {
			throw new ValidateActionException("Missing parameter 'referenceID'");
		}
	}
	
	/**
	 * Returns reference.
	 * 
	 * @return	array
	 */
	public function getReference() {
		$reference = new Reference($this->parameters['referenceID']);
			
		die('<pre>'.print_r($reference, true));
		
		WCF::getTPL()->assign(array(
			'referenceID' => $reference->referenceID,
			'reference' => reset($reference)
		));
		return array(
			'referenceID' => $reference->referenceID,
			'template' => WCF::getTPL()->fetch('referencePopover')
		);
	}
}
