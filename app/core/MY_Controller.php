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

        //顯示提示訊息
        $data['global']['message_show']['content'] = $this->input->cookie('message_show_content');
        $data['global']['message_show']['second'] = $this->input->cookie('message_show_second');

        if(!empty( $data['global']['message_show']['content']) )
        {
            $data['global']['style'][] = 'app/css/temp/message_window.css';
            $data['temp']['message_window'] = $this->load->view('temp/message_window', $data, TRUE);
            //刪除提示訊息
            $this->input->set_cookie([
                'name' => 'message_show_content',
                'expire' => ''
            ]);
            $this->input->set_cookie([
                'name' => 'message_show_second',
                'expire' => ''
            ]);
        }

        //關於我們頁籤
        $about_ClassMeta = new ClassMeta();
        $about_ClassMeta->construct_db(array(
            'db_where_Arr' => array(
                'slug' => 'about'
            )
        ));

        $data['about_PageList'] = new ObjList();
        $data['about_PageList']->construct_db(array(
            'db_where_Arr' => array(
                'classids' => $about_ClassMeta->classid_Num
            ),
            'db_orderby_Arr' => array(
                'prioritynum' => 'DESC',
                'pagerid' => 'DESC'
            ),
            'model_name_Str' => 'Pager',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));

        $this->data = $data;
    }
}