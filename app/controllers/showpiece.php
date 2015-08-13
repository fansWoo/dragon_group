<?php

class showpiece_controller extends FS_controller {

    public function index()
    {
        $data = $this->data;
        
        $data['showpiece2_ClassMetaList'] = new ClassMetaList();
        $data['showpiece2_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'showpiece_class2'
            ),
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('classid', 'DESC')
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100,
            'child_model_Arr' => [
                'db_orderby_Arr' => [
                    ['prioritynum', 'DESC'],
                    ['showpieceid', 'DESC']
                ],
                'model_name_Str' => 'ShowpieceSolnine',
                'limitstart_Num' => 0,
                'limitcount_Num' => 100
            ],
            'child_classids_Str' => 'classids'
        ));
        
        //global
        $data['global']['style'][] = 'style';
        $data['global']['style'][] = 'showpiece/index';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['sidebar'] = $this->load->view('showpiece/sidebar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        
        //輸出模板
        $this->load->view('showpiece/index', $data);
    }
       
	public function tablelist()
    {
        $data = $this->data;

        $data['showpiece2_ClassMetaList'] = new ClassMetaList();
        $data['showpiece2_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'showpiece_class2'
            ),
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('classid', 'DESC')
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100,
            'child_model_Arr' => [
                'db_orderby_Arr' => [
                    ['prioritynum', 'DESC'],
                    ['showpieceid', 'DESC']
                ],
                'model_name_Str' => 'ShowpieceSolnine',
                'limitstart_Num' => 0,
                'limitcount_Num' => 100
            ],
            'child_classids_Str' => 'classids'
        ));

        $classid_Num = $this->input->get('classid');
        
        $data['ClassMeta'] = new ClassMeta();
        $data['ClassMeta']->construct_db(array(
            'db_where_Arr' => array(
                'classid' => $classid_Num
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
        
        $data['ShowpieceList'] = new ObjList();
        $data['ShowpieceList']->construct_db(array(
            'db_where_Arr' => array(
                'classids' => $classid_Num
            ),
            'model_name_Str' => 'ShowpieceSolnine',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
        
        //global
        $data['global']['style'][] = 'style';
		$data['global']['style'][] = 'showpiece/tablelist';
        
        //temp
		$data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
		$data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['sidebar'] = $this->load->view('showpiece/sidebar', $data, TRUE);
		$data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
		
		//輸出模板
		$this->load->view('showpiece/tablelist', $data);
	}

    public function view($showpieceid_Num)
    {
        $data = $this->data;

        $data['showpiece2_ClassMetaList'] = new ClassMetaList();
        $data['showpiece2_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'showpiece_class2'
            ),
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('classid', 'DESC')
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100,
            'child_model_Arr' => [
                'db_orderby_Arr' => [
                    ['prioritynum', 'DESC'],
                    ['showpieceid', 'DESC']
                ],
                'model_name_Str' => 'ShowpieceSolnine',
                'limitstart_Num' => 0,
                'limitcount_Num' => 100
            ],
            'child_classids_Str' => 'classids'
        ));

        if(empty($showpieceid_Num))
        {
            $this->load->model('Message');
            $this->Message->show(array('message' => '連結輸入錯誤', 'url' => ''));
            return FALSE;
        }
        
        $data['ClassMetaList'] = new ObjList();
        $data['ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname' => 'showpiece'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
            
        $showpieceid_Num = $this->input->get('showpieceid');

        $data['ShowpieceSolnine'] = new ShowpieceSolnine();
        $data['ShowpieceSolnine']->construct_db(array(
            'db_where_Arr' => array(
                'showpieceid' => $showpieceid_Num
            )
        ));
        
        //global
        $data['global']['style'][] = 'style';
        $data['global']['style'][] = 'showpiece/view';
        
        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
        $data['temp']['sidebar'] = $this->load->view('showpiece/sidebar', $data, TRUE);
        $data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
        
        //輸出模板
        $this->load->view('showpiece/view', $data);
    }

    public function slug($slug_Str)
    {
        //輸出模板
        $this->load->view('showpiece/view', $data);
    }

}

?>