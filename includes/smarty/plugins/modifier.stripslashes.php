<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty slash stripping plugin
 *
 * Type:     modifier<br>
 * Name:     stripslashes<br>
 * Purpose:  remove slashes froma string
 * @author   Nathan Grebowiec <njgrebo at gmail dot com>
 * @param string
 * @return string
 */
function smarty_modifier_stripslashes($string)
{
    return stripslashes($string);
}

?>
