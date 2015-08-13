<?php

class Message extends CI_Model {

    private $data = array();
    
	public function __construct()
	{
        $SettingList = new SettingList();
        $SettingList->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => ''
            )
        ));

        $data['global'] = $SettingList->get_array();
        $data['global']['website_metatag_Arr'] = explode(PHP_EOL, $data['global']['website_metatag']);

        $data['global']['browser_agent'] = browser_agent();

        $this->data = $data;
	}
	
	public function show($arg = array('message' => '', 'url' => '', 'second' => 2))
	{
        $data = $this->data;
        
		$message = isset($arg['message']) ? $arg['message'] : '';
		$url = isset($arg['url']) ? $arg['url'] : '';
		$second = isset($arg['second']) ? $arg['second'] : 2;

        //data
		$data['message'] = $message;
		$data['url'] = $url;
		$data['second'] = $second;
        
        //style
		$data['global']['style'][] = 'global';
		$data['global']['style'][] = 'temp/message';
        
        //temp
		$data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
		$data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
		$data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
		$data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
		$data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
		$this->load->view('temp/message', $data);
        
        return FALSE;
	}
	
}