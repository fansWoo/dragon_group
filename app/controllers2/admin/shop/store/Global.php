<?php

class Global_Controller extends MY_Controller {

    protected $child1_name_Str = 'shop';
    protected $child2_name_Str = 'store';
    protected $child3_name_Str = 'global';

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

    public function hot()
    {
        $data = $this->data;//取得公用數據
        $data = array_merge($data, $this->AdminModel->get_data(array(
            'child4_name_Str' => 'hot'//管理分類名稱
        )));

        $shop_hot_product_Setting = new Setting();
        $shop_hot_product_Setting->construct_db([
            'db_where_Arr' => [
                'keyword' => 'shop_hot_product'
            ]
        ]);
        $data['global']['shop_hot_product'] = $shop_hot_product_Setting->value_Str;

        //global
        $data['global']['style'][] = 'admin/global';
        $data['global']['js'][] = 'script_common';
        $data['global']['js'][] = 'admin';

        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['admin_header_bar'] = $this->load->view('admin/temp/admin_header_bar', $data, TRUE);
        $data['temp']['admin_footer_bar'] = $this->load->view('admin/temp/admin_footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);

        //輸出模板
        $this->load->view('admin/'.$data['admin_child_url_Str'], $data);
    }

    public function hot_post()
    {

        $shop_hot_product = $this->input->post('shop_hot_product', TRUE);

        $SettingList = new SettingList();
        $SettingList->construct([
            'construct_Arr' => [
                [
                    'keyword_Str' => 'shop_hot_product',
                    'value_Str' => $shop_hot_product,
                    'modelname_Str' => 'shop'
                ]
            ]
        ]);
        $SettingList->update();

        //送出成功訊息
        $this->load->model('Message');
        $this->Message->show(array(
            'message' => '設定成功',
            'url' => 'admin/shop/store/global/hot'
        ));
    }

    public function coupon()
    {
        $data = $this->data;//取得公用數據
        $data = array_merge($data, $this->AdminModel->get_data(array(
            'child4_name_Str' => 'coupon'//管理分類名稱
        )));

        $data['coupon_SettingList'] = new SettingList();
        $data['coupon_SettingList']->construct_db([
            'db_where_Arr' => [
                'modelname' => 'shop_coupon'
            ]
        ]);

        //global
        $data['global']['style'][] = 'admin/global';
        $data['global']['js'][] = 'script_common';
        $data['global']['js'][] = 'admin';

        //temp
        $data['temp']['header_up'] = $this->load->view('temp/header_up', $data, TRUE);
        $data['temp']['header_down'] = $this->load->view('temp/header_down', $data, TRUE);
        $data['temp']['admin_header_bar'] = $this->load->view('admin/temp/admin_header_bar', $data, TRUE);
        $data['temp']['admin_footer_bar'] = $this->load->view('admin/temp/admin_footer_bar', $data, TRUE);
        $data['temp']['body_end'] = $this->load->view('temp/body_end', $data, TRUE);

        //輸出模板
        $this->load->view('admin/'.$data['admin_child_url_Str'], $data);
    }

    public function coupon_rule_post()
    {
        $shop_rule_use_coupon_count_Num = $this->input->post('shop_rule_use_coupon_count_Num', TRUE);
        $shop_rule_use_get_coupon_count_Num = $this->input->post('shop_rule_use_get_coupon_count_Num', TRUE);

        $SettingList = new SettingList();
        $SettingList->construct([
            'construct_Arr' => [
                [
                    'keyword_Str' => 'shop_rule_use_coupon_count',
                    'value_Str' => $shop_rule_use_coupon_count_Num,
                    'modelname_Str' => 'shop_coupon'
                ],
                [
                    'keyword_Str' => 'shop_rule_use_get_coupon_count',
                    'value_Str' => $shop_rule_use_get_coupon_count_Num,
                    'modelname_Str' => 'shop_coupon'
                ]
            ]
        ]);
        $SettingList->update();

        //送出成功訊息
        $this->load->model('Message');
        $this->Message->show(array(
            'message' => '設定成功',
            'url' => 'admin/shop/store/global/coupon'
        ));
    }

    public function coupon_get_post()
    {
        $shop_user_register_get_coupon_count_Num = $this->input->post('shop_user_register_get_coupon_count_Num', TRUE);
        $shop_rule_coupon_count_Num = $this->input->post('shop_rule_coupon_count_Num', TRUE);
        $shop_rule_get_coupon_count_Num = $this->input->post('shop_rule_get_coupon_count_Num', TRUE);

        $SettingList = new SettingList();
        $SettingList->construct([
            'construct_Arr' => [
                [
                    'keyword_Str' => 'shop_user_register_get_coupon_count',
                    'value_Str' => $shop_user_register_get_coupon_count_Num,
                    'modelname_Str' => 'shop_coupon'
                ],
                [
                    'keyword_Str' => 'shop_rule_coupon_count',
                    'value_Str' => $shop_rule_coupon_count_Num,
                    'modelname_Str' => 'shop_coupon'
                ],
                [
                    'keyword_Str' => 'shop_rule_get_coupon_count',
                    'value_Str' => $shop_rule_get_coupon_count_Num,
                    'modelname_Str' => 'shop_coupon'
                ]
            ]
        ]);
        $SettingList->update();

        //送出成功訊息
        $this->load->model('Message');
        $this->Message->show(array(
            'message' => '設定成功',
            'url' => 'admin/shop/store/global/coupon'
        ));
    }

}

?>