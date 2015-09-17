<?php

class Product_Controller extends MY_Controller {

    protected $child1_name_Str = 'shop';
    protected $child2_name_Str = 'product';
    protected $child3_name_Str = 'product';

    public function __construct()
    {
        parent::__construct();
        $data = $this->data;

        if($data['User']->uid_Num == '')
        {
            $url = base_url('user/login/?url=admin');
            header('Location: '.$url);
        }

        $this->load->model('AdminModel');
        $this->AdminModel->child1_name_Str = $this->child1_name_Str;
        $this->AdminModel->child2_name_Str = $this->child2_name_Str;
        $this->AdminModel->child3_name_Str = $this->child3_name_Str;

        $this->load->helper('form');
        $this->load->library('form_validation');
    }

    public function edit()
    {
        $data = $this->data;//取得公用數據
        $data = array_merge($data, $this->AdminModel->get_data(array(
            'child4_name_Str' => 'edit'//管理分類名稱
        )));
            
        $productid_Num = $this->input->get('productid');

        $data['product_ProductShop'] = new ProductShop();
        $data['product_ProductShop']->construct_db(array(
            'db_where_Arr' => array(
                'productid_Num' => $productid_Num
            )
        ));
        
        $data['class_ClassMetaList'] = new ObjList();
        $data['class_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname_Str' => 'product'
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

        //global
        $data['global']['style'][] = 'app/css/admin/global.css';
        $data['global']['js'][] = 'app/js/admin.js';
        $data['global']['js'][] = 'fanswoo-framework/js/jquery.form.js';

        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['admin_header_bar'] = $this->load->view('admin/temp/admin_header_bar', $data, TRUE);
        $data['temp']['admin_footer_bar'] = $this->load->view('admin/temp/admin_footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);

        //輸出模板
        $this->load->view('admin/'.$data['admin_child_url_Str'], $data);
    }

    public function edit_post()
    {
        $data = $this->data;//取得公用數據

        $this->form_validation->set_rules('name_Str', '產品名稱', 'required');
        $this->form_validation->set_rules('stock_classname1_StrArr[0]', '產品庫存', 'required');

        $productid_Num = $this->input->post('productid_Num', TRUE);

        if ($this->form_validation->run() !== FALSE)
        {
            //基本post欄位
            $name_Str = $this->input->post('name_Str', TRUE);
            $price_Num = $this->input->post('price_Num', TRUE);
            $synopsis_Str = $this->input->post('synopsis_Str', TRUE);
            $classids_Arr = $this->input->post('classids_Arr', TRUE);
            $content_Str = $this->input->post('content_Str');
            $content_specification_Str = $this->input->post('content_specification_Str');
            $prioritynum_Num = $this->input->post('prioritynum_Num', TRUE);
            $picids_Arr = $this->input->post('picids_Arr', TRUE);

            //建構ProductShop物件，並且更新
            $product_ProductShop = new ProductShop();
            $product_ProductShop->construct(array(
                'productid_Num' => $productid_Num,
                'name_Str' => $name_Str,
                'price_Num' => $price_Num,
                'synopsis_Str' => $synopsis_Str,
                'picids_Arr' => $picids_Arr,
                'classids_Arr' => $classids_Arr,
                'content_Str' => $content_Str,
                'content_specification_Str' => $content_specification_Str,
                'prioritynum_Num' => $prioritynum_Num
            ));
            $product_ProductShop->update();

            //計算庫存
            $stockid_NumArr = $this->input->post('stockid_NumArr', TRUE);
            $stock_classname1_StrArr = $this->input->post('stock_classname1_StrArr', TRUE);
            $stock_classname2_StrArr = $this->input->post('stock_classname2_StrArr', TRUE);
            $stock_color_rgb_StrArr = $this->input->post('stock_color_rgb_StrArr', TRUE);
            $stock_stocknum_NumArr = $this->input->post('stock_stocknum_NumArr', TRUE);

            foreach( $stock_classname1_StrArr as $key => $value_Str)
            {
                if( !empty( $value_Str ) )
                {
                    $StockProductShop = new StockProductShop();
                    $StockProductShop->construct([
                        'stockid_Num' => $stockid_NumArr[$key],
                        'productid_Num' => $productid_Num,
                        'classname1_Str' => $stock_classname1_StrArr[$key],
                        'classname2_Str' => $stock_classname2_StrArr[$key],
                        'color_rgb_Str' => $stock_color_rgb_StrArr[$key],
                        'stocknum_Num' => $stock_stocknum_NumArr[$key]
                    ]);
                    $StockProductShop->update();
                }
            }

            //送出成功訊息
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => '設定成功',
                'url' => 'admin/shop/product/product/tablelist'
            ));
        }
        else
        {
            $validation_errors_Str = validation_errors();
            $validation_errors_Str = !empty($validation_errors_Str) ? $validation_errors_Str : '設定錯誤' ;
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => $validation_errors_Str,
                'url' => 'admin/shop/product/product/edit/?productid='.$productid_Num
            ));
        }
    }

    public function copy()
    {
        $data = $this->data;//取得公用數據

        $productid_Num = $this->input->get('productid');

        $ProductShop = new ProductShop();
        $ProductShop->construct_db(array(
            'db_where_Arr' => array(
                'productid_Num' => $productid_Num
            )
        ));
        $ProductShop->set('productid_Num', NULL);
        $ProductShop->update();

        foreach( $ProductShop->stock_StockProductShopList->obj_Arr as $key => $value_StockProductShop)
        {
            $StockProductShop = new StockProductShop();
            $StockProductShop->construct([
                'productid_Num' => $ProductShop->productid_Num,
                'classname1_Str' => $value_StockProductShop->classname1_Str,
                'classname2_Str' => $value_StockProductShop->classname2_Str,
                'color_rgb_Str' => $value_StockProductShop->color_rgb_Str,
                'stocknum_Num' => $value_StockProductShop->stocknum_Num
            ]);
            $StockProductShop->update();
        }

        if( !empty($ProductShop->productid_Num) )
        {
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => '複製成功',
                'url' => 'admin/shop/product/product/tablelist'
            ));
        }
        else
        {
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => '複製失敗',
                'url' => 'admin/shop/product/product/tablelist'
            ));
        }
    }

    public function tablelist()
    {
        $data = $this->data;//取得公用數據
        $data = array_merge($data, $this->AdminModel->get_data(array(
            'child4_name_Str' => 'tablelist'//管理分類名稱
        )));

        $data['search_productid_Num'] = $this->input->get('productid');
        $data['search_name_Str'] = $this->input->get('name');
        $data['search_class_slug_Str'] = $this->input->get('class_slug');

        $limitstart_Num = $this->input->get('limitstart');
        $limitcount_Num = $this->input->get('limitcount');
        $limitcount_Num = !empty($limitcount_Num) ? $limitcount_Num : 20;

        $class_ClassMeta = new ClassMeta();
        $class_ClassMeta->construct_db(array(
            'db_where_Arr' => array(
                'slug_Str' => $data['search_class_slug_Str']
            )
        ));

        $data['product_ProductShopList'] = new ObjList();
        $data['product_ProductShopList']->construct_db(array(
            'db_where_Arr' => array(
                'productid_Num' => $data['search_productid_Num']
            ),
            'db_where_like_Arr' => array(
                'name_Str' => $data['search_name_Str']
            ),
            'db_where_or_Arr' => array(
                'classids' => array($class_ClassMeta->classid_Num)
            ),
            'db_orderby_Arr' => array(
                array('prioritynum', 'DESC'),
                array('productid', 'DESC')
            ),
            'db_where_deletenull_Bln' => TRUE,
            'model_name_Str' => 'ProductShop',
            'limitstart_Num' => $limitstart_Num,
            'limitcount_Num' => $limitcount_Num
        ));
        $data['product_links'] = $data['product_ProductShopList']->create_links(array('base_url_Str' => 'admin/'.$data['child1_name_Str'].'/'.$data['child2_name_Str'].'/'.$data['child3_name_Str'].'/'.$data['child4_name_Str']));

        $data['class_ClassMetaList'] = new ObjList();
        $data['class_ClassMetaList']->construct_db(array(
            'db_where_Arr' => array(
                'modelname_Str' => 'product_shop'
            ),
            'model_name_Str' => 'ClassMeta',
            'limitstart_Num' => 0,
            'limitcount_Num' => 100
        ));

        //global
        $data['global']['style'][] = 'app/css/admin/global.css';
        $data['global']['js'][] = 'app/js/admin.js';

        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['admin_header_bar'] = $this->load->view('admin/temp/admin_header_bar', $data, TRUE);
        $data['temp']['admin_footer_bar'] = $this->load->view('admin/temp/admin_footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);

        //輸出模板
        $this->load->view('admin/'.$data['admin_child_url_Str'], $data);

    }

    public function tablelist_post()
    {
        $data = $this->data;//取得公用數據

        $search_productid_Num = $this->input->post('search_productid_Num', TRUE);
        $search_class_slug_Str = $this->input->post('search_class_slug_Str', TRUE);
        $search_name_Str = $this->input->post('search_name_Str', TRUE);

        $url_Str = base_url('admin/shop/product/product/tablelist/?');

        if(!empty($search_productid_Num))
        {
            $url_Str = $url_Str.'&productid='.$search_productid_Num;
        }

        if(!empty($search_class_slug_Str))
        {
            $url_Str = $url_Str.'&class_slug='.$search_class_slug_Str;
        }

        if(!empty($search_name_Str))
        {
            $url_Str = $url_Str.'&name='.$search_name_Str;
        }

        header("Location: $url_Str");
    }

    public function delete()
    {
        $hash_Str = $this->input->get('hash');
        $productid_Num = $this->input->get('productid');

        //CSRF過濾
        if($hash_Str == $this->security->get_csrf_hash())
        {
            $product_ProductShop = new ProductShop();
            $product_ProductShop->construct(array('productid_Num' => $productid_Num));
            $product_ProductShop->delete();

            $this->load->model('Message');
            $this->Message->show(array(
                'message' => '刪除成功',
                'url' => 'admin/shop/product/product/tablelist'
            ));
        }
        else
        {
            $this->load->model('Message');
            $this->Message->show(array(
                'message' => 'hash驗證失敗，請使用標準瀏覽器進行刪除動作',
                'url' => 'admin/shop/product/product/tablelist'
            ));
        }
    }

}

?>