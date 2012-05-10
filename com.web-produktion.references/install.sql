-- wcf1_reference
DROP TABLE IF EXISTS wcf1_reference;
CREATE TABLE IF NOT EXISTS wcf1_reference (
	referenceID INT(10) NOT NULL AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
	shortDescription VARCHAR(255) NOT NULL,
	description LONGTEXT NOT NULL,
	domain VARCHAR(255) NOT NULL DEFAULT 'http://',
	public TINYINT(1) NOT NULL DEFAULT '0',
	sortOrder INT(10) NOT NULL,
	time INT(16) NOT NULL DEFAULT '0',
	PRIMARY KEY (referenceID)
);

-- TODO: need this ? or use com.woltlab.wcf.attachment
-- wcf1_reference_screenshot
DROP TABLE IF EXISTS wcf1_reference_screenshot;
CREATE TABLE IF NOT EXISTS wcf1_reference_screenshot (
	screenshotID INT(10) NOT NULL AUTO_INCREMENT,
	referenceID INT(10) NOT NULL,
	sortOrder INT(10) NOT NULL,
	fileExtension VARCHAR(50) NOT NULL,
	PRIMARY KEY (screenshotID)
);