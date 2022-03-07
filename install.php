<?php

function extension_install_WingetSources()
{
    $commonObject = new ExtensionCommon;

    $commonObject -> sqlQuery(
        "CREATE TABLE IF NOT EXISTS `WingetSources` (
        `ID` INTEGER NOT NULL AUTO_INCREMENT, 
        `HARDWARE_ID` INTEGER NOT NULL,
        `SOURCE_NAME` VARCHAR(255) DEFAULT NULL,
        `SOURCE_URL` VARCHAR(255) DEFAULT NULL,
        PRIMARY KEY (`ID`,`HARDWARE_ID`)) ENGINE=INNODB;"
    );
}

function extension_delete_WingetSources()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE IF EXISTS `WingetSources`");
}

function extension_upgrade_WingetSources()
{

}

?>