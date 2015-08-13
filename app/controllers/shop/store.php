<?php

class store_controller extends FS_controller
{
	
	public function index()
	{
        $data = $this->data;

        $limitstart_Num = $this->input->get('limitstart');
        $limitcount_Num = $this->input->get('limitcount');
        $limitcount_Num = !empty($limitcount_Num) ? $limitcount_Num : 20;
        $data['classid_Num'] = $this->input->get('classid');

        //搜尋的標籤
        if(!empty($data['classid_Num']))
        {
            $data['search_class_ClassMeta'] = new ClassMeta();
            $data['search_class_ClassMeta']->construct_db([
                'db_where_Arr' => [
                    'classid' => $data['classid_Num']
                ]
            ]);
        }
        
        //熱門產品
        if(empty($data['classid_Num']))
        {
            $shop_hot_product_Setting = new Setting();
            $shop_hot_product_Setting->construct_db([
                'db_where_Arr' => [
                    'keyword' => 'shop_hot_product'
                ]
            ]);
            $shop_hot_product_Str = $shop_hot_product_Setting->value_Str;
            $shop_hot_product_Arr = explode(PHP_EOL, $shop_hot_product_Str);

            $data['hot_product_ProductShopList'] = new ObjList();
            $data['hot_product_ProductShopList']->construct_db(array(
                'db_where_or_Arr' => array(
                    'productid' => $shop_hot_product_Arr
                ),
                'db_orderby_Arr' => array(
                    array('prioritynum', 'DESC'),
                    array('updatetime', 'DESC')
                ),
                'model_name_Str' => 'ProductShop',
                'limitstart_Num' => 0,
                'limitcount_Num' => 9
            ));
        }
        
        //全部產品
        $data['all_product_ProductShopList'] = new ObjList();
        $data['all_product_ProductShopList']->construct_db(array(
            'db_where_Arr' => array(
            ),
            'db_where_or_Arr' => array(
                'classids' => [$data['classid_Num']]
            ),
            'model_name_Str' => 'ProductShop',
            'db_where_deletenull_Bln' => TRUE,
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('updatetime', 'DESC')
            ),
            'limitstart_Num' => $limitstart_Num,
            'limitcount_Num' => $limitcount_Num
        ));
        $data['product_links'] = $data['all_product_ProductShopList']->create_links(array(
            'base_url_Str' => 'shop/store'
        ));
        
        $data['class_ClassMetaList'] = new ObjList();
        $data['class_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname_Str' => 'product_shop'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
        
        $data['class2_ClassMetaList'] = new ObjList();
        $data['class2_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname_Str' => 'product_shop_class2'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));
        
        $data['wrap_name_Str'] = 'product';

        //global
		$data['global']['style'][] = 'temp/global';
		$data['global']['style'][] = 'shop/store';
		$data['global']['style'][] = 'shop/temp/sidebar';
        
        //temp
		$data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
		$data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['header_bar'] = $this->load->view('temp/header_bar', $data, TRUE);
		$data['temp']['shop_wrapsidebar'] = $this->load->view('shop/temp/sidebar', $data, TRUE);
		$data['temp']['footer_bar'] = $this->load->view('temp/footer_bar', $data, TRUE);
		
		//輸出模板
		$this->load->view('shop/store', $data);
	}
	
}

?>