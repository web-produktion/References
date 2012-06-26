<?php
namespace wcf\system\category;
use wcf\system\SingletonFactory;
use wcf\system\WCF;

/**
 * @author	Jean-Marc Licht
 * @copyright	2010 - 2012 web-produktion
 * @license	web-produktion License <http://www.web-produktion.com/board/index.php?page=Product&productID=5>
 * @package	com.web-produktion.faq
 * @subpackage	system.category
 * @category 	Community Framework
 */
class ReferenceCategoryType extends AbstractCategoryType {
	
	/**
	 * @see wcf\system\category\AbstractCategoryType::$i18nLangVarCategory
	 */
	protected $i18nLangVarCategory = 'wcf.reference.category';
	
	/**
	 * @see wcf\system\category\AbstractCategoryType::$permissionPrefix
	 */
	protected $permissionPrefix = 'admin.reference';
}