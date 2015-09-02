<?php

class Product_Controller extends MY_controller {

    public $data = array();
    
    public function index(){
        $data = $this->data;
        
        //global
        $data['global']['style'][] = 'temp/reset';
        $data['global']['style'][] = 'temp/global';
        $data['global']['style'][] = 'shop/product/index';
       
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        
        //輸出模板
        $this->load->view('shop/product/index', $data);
    }
    
    public function view($noteid_Num)
    {
        $data = $this->data;
        
        //global
        $data['global']['style'][] = 'temp/reset';
        $data['global']['style'][] = 'temp/global';
        $data['global']['style'][] = 'shop/product/view';
       
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        
        
        //輸出模板
        $this->load->view('shop/product/view', $data);
    }

}

?>