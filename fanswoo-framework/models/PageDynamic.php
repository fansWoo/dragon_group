<?php

class PageDynamic extends ObjDbBase {

    public $pageid_Num = 0;
    public $uid_Num = 0;
    public $username_Str = '';
    public $title_Str = '';
    public $slug_Str = '';
    public $class_ClassMetaList;
    public $viewnum_Num = 0;
    public $prioritynum_Num = 0;
    public $updatetime_DateTime = 0;
    public $status_Num = 1;
    public $db_name_Str = 'page_dynamic';//填寫物件聯繫資料庫之名稱
    public $db_uniqueid_Str = 'pageid';//填寫物件聯繫資料庫之唯一ID
    public $db_field_Arr = array(//填寫資料庫欄位與本物件屬性之關係，前者為資料庫欄位，後者為屬性
        'pageid' => 'pageid_Num',
        'uid' => 'uid_Num',
        'username' => 'username_Str',
        'title' => 'title_Str',
        'slug' => 'slug_Str',
        'classids' => array('class_ClassMetaList', 'uniqueids_Str'),
        'viewnum' => 'viewnum_Num',
        'prioritynum' => 'prioritynum_Num',
        'updatetime' => array('updatetime_DateTime', 'datetime_Str'),
        'status' => 'status_Num'
    );
	
	public function construct($arg)
	{
        //引入引數並將空值的變數給予空值
        reset_null_arr($arg, ['pageid_Num', 'uid_Num', 'username_Str', 'title_Str', 'slug_Str', 'classids_Str', 'classids_Arr', 'prioritynum_Num', 'viewnum_Num', 'updatetime_Str', 'updatetime_inputtime_date_Str', 'updatetime_inputtime_time_Str', 'status_Num']);
        foreach($arg as $key => $value) ${$key} = $arg[$key];
        
        //將引數設為物件屬性，或將引數作為物件型屬性的建構值
        $this->set('pageid_Num', $pageid_Num);
        $this->set('uid_Num', $uid_Num);
        $this->set('username_Str', $username_Str);
        $this->set('title_Str', $title_Str);
        $this->set('slug_Str', $slug_Str);
        $this->set('viewnum_Num', $viewnum_Num);
        $this->set('prioritynum_Num', $prioritynum_Num);
        $this->set('status_Num', $status_Num);
        $this->set('class_ClassMetaList', [
            'classids_Str' => $classids_Str,
            'classids_Arr' => $classids_Arr
        ], 'ClassMetaList');
        $this->set('updatetime_DateTime', [
            'datetime_Str' => $updatetime_Str,
            'inputtime_date_Str' => $updatetime_inputtime_date_Str,
            'inputtime_time_Str' => $updatetime_inputtime_time_Str
        ], 'DateTimeObj');
        $this->set__uid_Num(['uid_Num' => $uid_Num]);
        
        return TRUE;
    }

    public function set__uid_Num($arg)
    {
        //引入引數並將空值的變數給予空值
        reset_null_arr($arg, ['uid_Num']);
        foreach($arg as $key => $value) ${$key} = $arg[$key];

        //若uid為空則以登入者uid作為本物件之預設uid
        if(empty($uid_Num) || empty($uid_Num))
        {
            $data['user'] = get_user();
            $uid_Num = $data['user']['uid'];
        }

        $this->uid_Num = $uid_Num;
    }
	
}