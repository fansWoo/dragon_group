<?php

class PageDynamicField extends PageDynamic {

    public $content_Html;
    public $db_name_Arr = array('page_dynamic', 'page_dynamic_field');//填寫物件聯繫資料庫之名稱
    public $db_uniqueid_Str = 'pageid';//填寫物件聯繫資料庫之唯一ID
    public $db_field_Arr = array(//填寫資料庫欄位與本物件屬性之關係，前者為資料庫欄位，後者為屬性
        'pageid' => 'pageid_Num',
        'page_dynamic.uid' => 'uid_Num',
        'page_dynamic.username' => 'username_Str',
        'page_dynamic.title' => 'title_Str',
        'page_dynamic.classids' => array('class_ClassMetaList', 'uniqueids_Str'),
        'page_dynamic.viewnum' => 'viewnum_Num',
        'page_dynamic.prioritynum' => 'prioritynum_Num',
        'page_dynamic.updatetime' => array('updatetime_DateTime', 'datetime_Str'),
        'page_dynamic.status' => 'status_Num',
        'page_dynamic_field.content' => 'content_Html'
    );
	
	public function construct($arg)
	{
        parent::construct($arg);

        //引入引數並將空值的變數給予空值
        reset_null_arr($arg, ['content_Str']);
        foreach($arg as $key => $value) ${$key} = $arg[$key];

        $this->set('content_Html', $content_Str);

        return TRUE;
    }
	
}