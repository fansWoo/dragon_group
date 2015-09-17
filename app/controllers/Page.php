<?php

class Page_Controller extends MY_Controller {

    public $data = array();

    public function index()
    {
    	header("Location: page/index");
    }
    
	public function _remap($slug_Str = 'index'){
        $data = $this->data;
        
        $data['page_slug_Str'] = $slug_Str;

        $data['PagerField'] = new PagerField();
        $data['PagerField']->construct_db(array(
            'db_where_Arr' => array(
                'pager.slug' => $slug_Str
            )
        ));

        if(!empty($data['PagerField']->pagerid_Num))
        {
        	if(!empty($data['PagerField']->href_Str))
        	{
        		header("Location: " . base_url($data['PagerField']->href_Str) );
        	}

	        $data['ClassMeta'] = new ClassMeta();
	        $data['ClassMeta']->construct_db(array(
	            'db_where_Arr' => array(
	                'classid' => $data['PagerField']->class_ClassMetaList->obj_Arr[0]->classid_Num
	            )
	        ));

	        $data['PagerList'] = new ObjList();
	        $data['PagerList']->construct_db(array(
	            'db_where_Arr' => array(
                	'classids' => $data['ClassMeta']->classid_Num
	            ),
	            'db_orderby_Arr' => array(
	                array('prioritynum', 'DESC'),
	                array('pagerid', 'DESC')
	            ),
	            'model_name_Str' => 'Pager',
	            'limitstart_Num' => 0,
	            'limitcount_Num' => 100
	        ));

	        //global
			$data['global']['style'][] = 'app/css/temp/global.css';
	        $data['global']['style'][] = 'app/css/pager/default.css';
	        
	        //temp
			$data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
			$data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
			$data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
			$data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
			$data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
			
			//輸出模板
			$this->load->view('pager/default', $data);
        }
        //以FTP為內容的page
        else
        {
	        if(empty($slug_Str))
	        {
	            $slug_Str = 'index';
	        }

			//沒有這個頁面
			if ( ! file_exists('app/views/page/'.$slug_Str.'.php')){
				show_404();
			}
	        
	        //global
	    	$data['global']['js'][] = 'app/js/script_header_bar_mobile.js';
	    	
			$data['global']['style'][] = 'app/css/temp/global.css';
			$data['global']['style'][] = 'app/css/temp/header_bar.css';
			$data['global']['style'][] = 'app/css/temp/footer_bar.css';
	        if($slug_Str == 'index')
	        {
				$data['global']['style'][] = 'app/css/page/index.css';
	        }
	        else
	        {
			  $data['global']['style'][] = 'app/css/page/'.$slug_Str.'.css';
	        }
	        
	        //temp
			$data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
			$data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
			$data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
			$data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
			$data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
			
			//輸出模板
			$this->load->view('page/'.$slug_Str, $data);
        }
	}
}

?>