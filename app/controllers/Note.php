<?php

class Note_Controller extends MY_Controller {
    
	public function index()
    {
        $data = $this->data;

        $limitstart_Num = $this->input->get('limitstart');
        $limitcount_Num = $this->input->get('limitcount');
        $limitcount_Num = !empty($limitcount_Num) ? $limitcount_Num : 5;

        $data['search_class_slug_Str'] = $this->input->get('class_slug');
        $data['class_ClassMeta']= new ClassMeta();
        $data['class_ClassMeta']->construct_db(array(
            'db_where_Arr' => array(
                'slug' => $data['search_class_slug_Str']
            )
        ));

        $data['NoteFieldList'] = new ObjList();
        $data['NoteFieldList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'note'
            ),
            'db_where_or_Arr' => array(
                'classids' => array($data['class_ClassMeta']->classid_Num)
            ),
            'model_name_Str' => 'NoteField',
            'db_orderby_Arr' => array(
                'prioritynum' => 'DESC',
                'updatetime' => 'DESC'
            ),
            'db_where_deletenull_Bln' => TRUE,
            'model_name_Str' => 'NoteField',
            'limitstart_Num' => $limitstart_Num,
            'limitcount_Num' => $limitcount_Num
        ));

        $data['page_link'] = $data['NoteFieldList']->create_links(array('base_url_Str' => 'note/'));

        $data['ClassMetaList'] = new ObjList();
        $data['ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'note'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
        
        //global
        $data['global']['js'][] = 'app/js/script_header_bar_mobile.js';
        $data['global']['style'][] = 'app/css/temp/header_bar.css';
        $data['global']['style'][] = 'app/css/temp/footer_bar.css';
		$data['global']['style'][] = 'app/css/temp/global.css';
		$data['global']['style'][] = 'app/css/note/index.css';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
		
		//輸出模板
		$this->load->view('note/index', $data);
	}

    public function view($noteid_Num)
    {
        $data = $this->data;

        if(empty($noteid_Num))
        {
            $this->load->model('Message');
            $this->Message->show(array('message' => '連結輸入錯誤', 'url' => 'note'));
            return FALSE;
        }
        
        $data['ClassMetaList'] = new ObjList();
        $data['ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'note'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));

        $data['NoteField'] = new NoteField();
        $data['NoteField']->construct_db(array(
            'db_where_Arr' => array(
                'note.noteid' => $noteid_Num
            )
        ));
        
        //global
        $data['global']['js'][] = 'app/js/script_header_bar_mobile.js';
        $data['global']['style'][] = 'app/css/temp/header_bar.css';
        $data['global']['style'][] = 'app/css/temp/footer_bar.css';
        $data['global']['style'][] = 'app/css/temp/global.css';
        $data['global']['style'][] = 'app/css/note/view.css';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);
        
        //輸出模板
        $this->load->view('note/view', $data);
    }

}

?>