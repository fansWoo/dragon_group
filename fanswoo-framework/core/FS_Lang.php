<?php

class FS_Lang extends CI_Lang {

	public function load($langfile, $idiom = '', $return = FALSE, $add_suffix = TRUE, $alt_path = '')
	{
		parent::load($langfile, $idiom = 'zh-TW', $return = FALSE, $add_suffix = TRUE, $alt_path = '');
	}

}
