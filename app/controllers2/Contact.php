<?php

class Page_Controller extends MY_controller {

    public $data = array();
    
	public function _remap($page = 'index'){
        $data = $this->data;
        
        if(empty($page))
        {
            $page = 'index';
        }
        
        //global
		$data['global']['style'][] = 'style';
        if($page == 'index')
        {
		  $data['global']['style'][] = 'page/'.'index';
        }
        else
        {
		  $data['global']['style'][] = 'page/'.$page;
        }
       
        //temp
		$data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
		$data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
		$data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
		$data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
		
		//輸出模板
		$this->load->view('page/'.$page, $data);
	}
}

?>