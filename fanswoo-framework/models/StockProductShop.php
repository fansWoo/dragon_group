<?php

class StockProductShop extends ObjDbBase
{

    public $stockid_Num = 0;
    public $productid_Num = 0;
    public $stocknum_Num = 0;
    public $classname1_Str = '';
    public $classname2_Str = '';
    public $color_rgb_Str = '';
    public $status_Num = 1;
    public $db_name_Str = 'shop_product_stock';//填寫物件聯繫資料庫之名稱
    public $db_uniqueid_Str = 'stockid';//填寫物件聯繫資料庫之唯一ID
    public $db_field_Arr = array(//填寫資料庫欄位與本物件屬性之關係，前者為資料庫欄位，後者為屬性
        'stockid' => 'stockid_Num',
        'productid' => 'productid_Num',
        'stocknum' => 'stocknum_Num',
        'color_rgb' => 'color_rgb_Str',
        'classname1' => 'classname1_Str',
        'classname2' => 'classname2_Str',
        'status' => 'status_Num'
    );

    public function construct($arg)
    {
        //引入引數並將空值的變數給予空值
        reset_null_arr($arg, ['stockid_Num', 'productid_Num', 'stocknum_Num', 'color_rgb_Str', 'classname1_Str', 'classname2_Str', 'status_Num']);
        foreach($arg as $key => $value) ${$key} = $arg[$key];

        $this->set('stockid_Num', $stockid_Num);
        $this->set('productid_Num', $productid_Num);
        $this->set('stocknum_Num', $stocknum_Num);
        $this->set('color_rgb_Str', $color_rgb_Str);
        $this->set('classname1_Str', $classname1_Str);
        $this->set('classname2_Str', $classname2_Str);
        $this->set__status_Num(['status_Num' => $status_Num]);

        return TRUE;
    }
	
}