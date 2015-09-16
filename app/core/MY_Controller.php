<?php

class MY_Controller extends FS_Controller
{

    public $data = array();

    public function __construct()
    {
        parent::__construct();

        $SettingList = new SettingList();
        $SettingList->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => ''
            )
        ));

        $data['global'] = $SettingList->get_array();
        $data['global']['website_metatag_Arr'] = explode(PHP_EOL, $data['global']['website_metatag']);

        $data['global']['browser_agent'] = browser_agent();

        $data['User'] = new User();
        $data['User']->construct_db(array(
            'db_where_Arr' => array(
                'uid_Num' => $this->session->userdata('uid')
            )
        ));
        
        //開發期間，限定使用者必須登入後始可瀏覽全部頁面
        $no_rewrite_Str = $this->input->get('no_rewrite');
        if($data['User']->uid_Num == '' && $no_rewrite_Str !== 'true')
        {
            $url = base_url('user/login/?no_rewrite=true');
            header('Location: '.$url);
        }

        $this->data = $data;
    }
}