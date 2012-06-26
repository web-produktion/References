-- wcf1_reference
DROP TABLE IF EXISTS wcf1_reference;
CREATE TABLE IF NOT EXISTS wcf1_reference (
	referenceID INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	subject VARCHAR(255) NOT NULL,
	description MEDIUMTEXT NOT NULL,
	public TINYINT(1) NOT NULL DEFAULT 0,
	position INT(10) NOT NULL DEFAULT 0,
	time INT(16) NOT NULL DEFAULT 0
);

-- TODO: need this ? or use com.woltlab.wcf.attachment
-- wcf1_reference_screenshot
DROP TABLE IF EXISTS wcf1_reference_screenshot;
CREATE TABLE IF NOT EXISTS wcf1_reference_screenshot (
	screenshotID INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	referenceID INT(10) NOT NULL,
	sortOrder INT(10) NOT NULL,
	fileExtension VARCHAR(50) NOT NULL
);