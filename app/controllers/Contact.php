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
        $this->form_validation->set_rules('username_Str', '姓名', 'required');
        $this->form_validation->set_rules('email_Str', '信箱', 'required');
        $this->form_validation->set_rules('sex_Str', '性別', 'required');
        $this->form_validation->set_rules('classtype_Str[]', '急須改善的訴求', 'required');


        if ($this->form_validation->run() !== FALSE)
        {
            //基本post欄位
            $username_Str = $this->input->post('username_Str', TRUE);
            $email_Str = $this->input->post('email_Str', TRUE);
            $phone_Str = $this->input->post('phone_Str', TRUE);
            $address_Str = $this->input->post('address_Str', TRUE);
            $birthday_Str = $this->input->post('birthday_Str', TRUE);
            $other_Str = $this->input->post('other_Str', TRUE);
            $sex_Str = $this->input->post('sex_Str', TRUE);
            $classtype_Str = $this->input->post('classtype_Str[]', TRUE);
            $content_Str = $this->input->post('content_Str', TRUE);

            //建構Contact物件，並且更新
            $Contact = new ContactWhenyi();
            $Contact->construct(array(
                'username_Str' => $username_Str,
                'email_Str' => $email_Str,
                'phone_Str' => $phone_Str,
                'address_Str' => $address_Str,
                'birthday_Str' => $birthday_Str,
                'other_Str' => $other_Str,
                'sex_Str' => $sex_Str,
                'classtype_Str' => implode(" / ",$classtype_Str),
                'content_Str' => $content_Str,
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