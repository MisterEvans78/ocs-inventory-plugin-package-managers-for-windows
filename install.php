<?php

function extension_install_winpkgman()
{
    $commonObject = new ExtensionCommon;

    $commonObject -> sqlQuery(
        "CREATE TABLE IF NOT EXISTS `winpkgman` (
        `ID` INTEGER NOT NULL AUTO_INCREMENT, 
        `HARDWARE_ID` INTEGER NOT NULL,
        `PKGMAN_NAME` VARCHAR(255) DEFAULT NULL,
        `PKGMAN_PUBLISHER` VARCHAR(255) DEFAULT NULL,
        `PKGMAN_VERSION` VARCHAR(255) DEFAULT NULL,
        PRIMARY KEY (`ID`,`HARDWARE_ID`)) ENGINE=INNODB;"
    );
}

function extension_delete_winpkgman()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE IF EXISTS `winpkgman`");
}

function extension_upgrade_winpkgman()
{

}

?>