<?php

class ContactDg extends ObjDbBase
{
    public $contactid_Num = 0;
    public $uid_Num = 0;
    public $username_Str = '';
    public $email_Str = '';
    public $phone_Str = '';
    public $content_Str = '';
    public $classtype_Str = '';
    public $sex_status_Num = 0;
    public $visit_status_Num = 0;
    public $agree_personal_data_status_Num = 0;
    public $status_process_Num = 0;
    public $updatetime_DateTime;
    public $status_Num = 1;
    public $db_name_Str = 'contact';//填寫物件聯繫資料庫之名稱
    public $db_uniqueid_Str = 'contactid';//填寫物件聯繫資料庫之唯一ID
    public $db_field_Arr = array(//填寫資料庫欄位與本物件屬性之關係，前者為資料庫欄位，後者為屬性
        'contactid' => 'contactid_Num',
        'username' => 'username_Str',
        'email' => 'email_Str',
        'phone' => 'phone_Str',
        'content' => 'content_Str',
        'classtype' => 'classtype_Str',
        'sex_status' => 'sex_status_Num',
        'visit_status' => 'visit_status_Num',
        'agree_personal_data_status' => 'agree_personal_data_status_Num',
        'status_process' => 'status_process_Num',
        'updatetime' => array('updatetime_DateTime', 'datetime_Str'),
        'status' => 'status_Num'
    );
	
	public function construct($arg)
	{
        parent::construct($arg);
     
        //引入引數並將空值的變數給予空值
        reset_null_arr($arg, ['contactid_Num', 'uid_Num', 'username_Str', 'email_Str', 'phone_Str', 'content_Str', 'classtype_Str', 'sex_status_Num', 'visit_status_Num', 'agree_personal_data_status_Num', 'updatetime_Str', 'updatetime_inputtime_date_Str', 'updatetime_inputtime_time_Str', 'status_Num']);
        foreach($arg as $key => $value) ${$key} = $arg[$key];
        
        //將引數設為物件屬性，或將引數作為物件型屬性的建構值
        $this->set('contactid_Num', $contactid_Num);
        $this->set('uid_Num', $uid_Num);
        $this->set('username_Str', $username_Str);
        $this->set('email_Str', $email_Str);
        $this->set('phone_Str', $phone_Str);
        $this->set('content_Str', $content_Str);
        $this->set('classtype_Str', $classtype_Str);
        $this->set('sex_status_Num', $sex_status_Num);
        $this->set('visit_status_Num', $visit_status_Num);
        $this->set('agree_personal_data_status_Num', $agree_personal_data_status_Num);
        $this->set('status_process_Num', $status_process_Num);
        $this->set('status_Num', $status_Num);
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