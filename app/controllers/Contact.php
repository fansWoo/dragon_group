<?php

class Contact_Controller extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $data = $this->data;

        $this->load->helper('form');
        $this->load->library('form_validation');
    }
    
    public function index()
    {
        $data = $this->data;

        $data['ShowpieceList'] = new ObjList();
        $data['ShowpieceList']->construct_db(array(
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('showpieceid', 'DESC')
            ),
            'db_where_deletenull_Bln' => TRUE,
            'model_name_Str' => 'Showpiece',
            'limitstart_Num' => 0,
            'limitcount_Num' => 999
        ));

        //global
        $data['global']['style'][] = 'app/css/temp/global.css';
        $data['global']['style'][] = 'app/css/contact/index.css';
		$data['global']['style'][] = 'app/css/temp/header_bar.css';
		$data['global']['style'][] = 'app/css/temp/footer_bar.css';
	    $data['global']['js'][] = 'app/js/script_header_bar_mobile.js';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
        
        //輸出模板
        $this->load->view('contact/index', $data);
    }

    public function contact_post()
    {
        $this->form_validation->set_rules('username_Str', '您的姓名', 'required');
        $this->form_validation->set_rules('sex_status_Num', '您的姓別', 'required');
        $this->form_validation->set_rules('email_Str', '電子郵件', 'required');
        $this->form_validation->set_rules('classtype_Str', '療程項目', 'required');
        $this->form_validation->set_rules('content_Str', '內容', 'required');
        $this->form_validation->set_rules('visit_status_Num', '就診紀錄', 'required');
        $this->form_validation->set_rules('agree_personal_data_status_Num', '同意狀態', 'required');

        if ($this->form_validation->run() !== FALSE)
        {
            //基本post欄位
            $username_Str = $this->input->post('username_Str', TRUE);
            $email_Str = $this->input->post('email_Str', TRUE);
            $phone_Str = $this->input->post('phone_Str', TRUE);
            $content_Str = $this->input->post('content_Str', TRUE);
            $classtype_Str = $this->input->post('classtype_Str', TRUE);
            $sex_status_Num = $this->input->post('sex_status_Num', TRUE);
            $visit_status_Num = $this->input->post('visit_status_Num', TRUE);
            $agree_personal_data_status_Num = $this->input->post('agree_personal_data_status_Num', TRUE);

            //建構Contact物件，並且更新
            $Contact = new ContactDg();
            $Contact->construct(array(
                'username_Str' => $username_Str,
                'email_Str' => $email_Str,
                'phone_Str' => $phone_Str,
                'content_Str' => $content_Str,
                'classtype_Str' => $classtype_Str,
                'sex_status_Num' => $sex_status_Num,
                'visit_status_Num' => $visit_status_Num,
                'agree_personal_data_status_Num' => $agree_personal_data_status_Num,
                'status_process_Num' => 1
            ));
            $Contact->update();

            //送出成功訊息
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => '設定成功',
                'url' => 'contact'
            ));
        }
        else
        {
            $validation_errors_Str = validation_errors();
            $validation_errors_Str = !empty($validation_errors_Str) ? $validation_errors_Str : '設定錯誤' ;
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => $validation_errors_Str,
                'url' => 'contact'
            ));
        }
    }

}

?>