<?php

class Showpiece_Controller extends MY_Controller {

    public $data = array();
    
	public function index(){
        $data = $this->data;
        
        $data['search_class_slug_Str'] = $this->input->get('class_slug');

        $class_ClassMeta = new ClassMeta();
        $class_ClassMeta->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'showpiece',
                'slug' => $data['search_class_slug_Str']
            ),
            'db_where_deletenull_Bln' => FALSE
        ));

        $limitstart_Num = $this->input->get('limitstart');
        $limitcount_Num = $this->input->get('limitcount');
        $limitcount_Num = !empty($limitcount_Num) ? $limitcount_Num : 12;

        $data['showpiece_ShowpieceList'] = new ObjList();
        $data['showpiece_ShowpieceList']->construct_db(array(
            'db_where_Arr' => array(
                'showpieceid_Num' => $data['search_showpieceid_Num']
            ),
            'db_where_like_Arr' => array(
                'name_Str' => $data['search_name_Str']
            ),
            'db_where_or_Arr' => array(
                'classids' => array($class_ClassMeta->classid_Num)
            ),
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('showpieceid', 'DESC')
            ),
            'db_where_deletenull_Bln' => TRUE,
            'model_name_Str' => 'Showpiece',
            'limitstart_Num' => $limitstart_Num,
            'limitcount_Num' => $limitcount_Num
        ));
        $data['page_link'] = $data['showpiece_ShowpieceList']->create_links(array('base_url_Str' => 'showpiece/?class_slug='.$data['search_class_slug_Str']));

        $data['class_ClassMetaList'] = new ObjList();
        $data['class_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname_Str' => 'showpiece'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));

         //global
		$data['global']['js'][] = 'app/js/script_header_bar_mobile.js';
        $data['global']['style'][] = 'app/css/temp/global.css';
        $data['global']['style'][] = 'app/css/showpiece/index.css';
		$data['global']['style'][] = 'app/css/temp/header_bar.css';
		$data['global']['style'][] = 'app/css/temp/footer_bar.css';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
        
        
		//輸出模板
		$this->load->view('showpiece/index', $data);
	}
    
    public function view(){
        $data = $this->data;
        
        $showpieceid_Num = $this->input->get('showpieceid');

        $data['Showpiece'] = new Showpiece();
        $data['Showpiece']->construct_db(array(
            'db_where_Arr' => array(
                'showpieceid' => $showpieceid_Num
            )
        ));

        $data['ShowpieceList'] = new ObjList();
        $data['ShowpieceList']->construct_db(array(
            'db_where_Arr' => array(
                'showpieceid_Num' => $data['search_showpieceid_Num']
            ),
            'db_where_like_Arr' => array(
                'name_Str' => $data['search_name_Str']
            ),
            'db_where_or_Arr' => array(
                'classids' => array($class_ClassMeta->classid_Num)
            ),
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('showpieceid', 'DESC')
            ),
            'db_where_deletenull_Bln' => TRUE,
            'model_name_Str' => 'Showpiece',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));

        $data['class_ClassMetaList'] = new ObjList();
        $data['class_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname_Str' => 'showpiece'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
        
       //global
		$data['global']['js'][] = 'app/js/script_header_bar_mobile.js';
		$data['global']['style'][] = 'app/css/temp/global.css';
        $data['global']['style'][] = 'app/css/showpiece/view.css';
		$data['global']['style'][] = 'app/css/temp/header_bar.css';
		$data['global']['style'][] = 'app/css/temp/footer_bar.css';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
        
        //輸出模板
        $this->load->view('showpiece/view', $data);
    }

}

?>