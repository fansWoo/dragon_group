<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['admin_header_bar']?>
<h2><?=$child2_title_Str?> - <?=$child3_title_Str?></h2>
<div class="contentBox allWidth">
    <h3><?=$child3_title_Str?> > <?if(!empty($product_ProductShop->productid_Num)):?>編輯<?else:?>新增<?endif?></h3>
	<h4>請填寫<?=$child3_title_Str?>之詳細資訊</h4>
	<?php echo form_open_multipart("admin/$child1_name_Str/$child2_name_Str/$child3_name_Str/{$child4_name_Str}_post/") ?>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品名稱
            </div>
            <div class="spanLineLeft width500">
                <input type="text" class="text" name="name_Str" placeholder="請輸入產品名稱" value="<?=$product_ProductShop->name_Str?>">
		    </div>
		</div>
	</div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品售價
            </div>
            <div class="spanLineLeft">
                <input type="number" min="0" class="text" name="price_Num" placeholder="請輸入產品售價" value="<?=$product_ProductShop->price_Num?>">
		    </div>
		</div>
	</div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品首圖
            </div>
            <div class="spanLineLeft width500">
                <div class="fileMultiple1"><input type="file" name="mainpicids_FileArr" accept="image/*"></div>
                <?if(!empty($product_ProductShop->mainpic_PicObjList->obj_Arr[0]->picid_Num)):?>
                <div class="picidUploadList">
                    <div fanswoo-picid="<?=$product_ProductShop->mainpic_PicObjList->obj_Arr[0]->picid_Num?>" class="picidUploadLi">
                        <div fanswoo-picDelete class="picDelete"></div>
                        <img src="<?=$product_ProductShop->mainpic_PicObjList->obj_Arr[0]->path_Arr['w50h50']?>">
                        <input type="hidden" name="mainpicids_Arr[]" value="<?=$product_ProductShop->mainpic_PicObjList->obj_Arr[0]->picid_Num?>">
                    </div>
                </div>
                <?endif?>
		    </div>
		</div>
	    <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineLeft width500">
                <span class="gray">請上傳300x300之圖檔</span>
		    </div>
		</div>
	</div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品其它照片
            </div>
            <div class="spanLineLeft width500">
                <div fanswoo-fileMultiple><input type="file" name="picids_FilesArr[]" accept="image/*" multiple></div>
                <?if(!empty($product_ProductShop->pic_PicObjList->obj_Arr)):?>
                <div class="picidUploadList">
                    <?foreach($product_ProductShop->pic_PicObjList->obj_Arr as $key => $value_PicObj):?>
                    <div fanswoo-picid="<?=$value_PicObj->picid_Num?>" class="picidUploadLi">
                        <div fanswoo-picDelete class="picDelete"></div>
                        <img src="<?=$value_PicObj->path_Arr['w50h50']?>">
                        <input type="hidden" name="picids_Arr[]" value="<?=$value_PicObj->picid_Num?>">
                    </div>
                    <?endforeach?>
                </div>
                <?endif?>
		    </div>
		</div>
	    <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineLeft width500">
                <span class="gray">請上傳300x300之圖檔</span>
		    </div>
		</div>
	</div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                產品分類
            </div>
            <div class="spanLineLeft width500" fanswoo-selectEachDiv="class">
                <?if(!empty($product_ProductShop->class_ClassMetaList->obj_Arr)):?>
                <?foreach($product_ProductShop->class_ClassMetaList->obj_Arr as $key => $value_ClassMeta):?>
                    <div class="selectLine" fanswoo-selectEachLine>
                        <span class="floatleft">分類 <span fanswoo-selectEachLineCount></span> ：</span>
                        <select fanswoo-selectEachLineMaster="class">
                            <option value="">沒有分類標籤</option>
                            <?foreach($class2_ClassMetaList->obj_Arr as $key2 => $value2_ClassMeta):?>
                            <option value="<?=$value2_ClassMeta->classid_Num?>"<?if($value_ClassMeta->class_ClassMetaList->obj_Arr[0]->classid_Num == $value2_ClassMeta->classid_Num):?> selected<?endif?>><?=$value2_ClassMeta->classname_Str?></option>
                            <?endforeach?>
                        </select>
                        <span fanswoo-selectEachLineSlave="class">
                        <?foreach($class2_ClassMetaList->obj_Arr as $key2 => $value2_ClassMeta):?>
                            <select fanswoo-selectValue="<?=$value2_ClassMeta->classid_Num?>" fanswoo-selectName="classids_Arr[]"<?if($value_ClassMeta->class_ClassMetaList->obj_Arr[0]->classid_Num == $value2_ClassMeta->classid_Num):?> name="classids_Arr[]"<?else:?> style="display:none;"<?endif?>>
                                <option value="">沒有分類標籤</option>
                                <?
                                    $test_ClassMetaList = new ObjList();
                                    $test_ClassMetaList->construct_db(array(
                                        'db_where_Arr' => array(
                                            'modelname_Str' => 'product_shop'
                                        ),
                                        'db_where_or_Arr' => array(
                                            'classids' => array($value2_ClassMeta->classid_Num)
                                        ),
                                        'model_name_Str' => 'ClassMeta',
                                        'limitstart_Num' => 0,
                                        'limitcount_Num' => 100
                                    ));
                                ?>
                                <?foreach($test_ClassMetaList->obj_Arr as $key3 => $value3_ClassMeta):?>
                                <option value="<?=$value3_ClassMeta->classid_Num?>"<?if($value_ClassMeta->classid_Num == $value3_ClassMeta->classid_Num):?> selected<?endif?>><?=$value3_ClassMeta->classname_Str?></option>
                                <?endforeach?>
                            </select>
                        <?endforeach?>
                        </span>
                    </div>
                <?endforeach?>
                <?endif?>
                <div class="selectLine" fanswoo-selectEachLine>
                    <span class="floatleft">分類 <span fanswoo-selectEachLineCount></span> ：</span>
                    <select fanswoo-selectEachLineMaster="class">
                        <option value="">沒有分類標籤</option>
                        <?foreach($class2_ClassMetaList->obj_Arr as $key2 => $value2_ClassMeta):?>
                        <option value="<?=$value2_ClassMeta->classid_Num?>"><?=$value2_ClassMeta->classname_Str?></option>
                        <?endforeach?>
                    </select>
                    <span fanswoo-selectEachLineSlave="class">
                    <?foreach($class2_ClassMetaList->obj_Arr as $key2 => $value2_ClassMeta):?>
                        <select name="classids_Arr[]" fanswoo-selectValue="<?=$value2_ClassMeta->classid_Num?>" fanswoo-selectName="classids_Arr[]" style="display:none;">
                            <option value="">沒有分類標籤</option>
                            <?
                                $test_ClassMetaList = new ObjList();
                                $test_ClassMetaList->construct_db(array(
                                    'db_where_Arr' => array(
                                        'modelname_Str' => 'product_shop'
                                    ),
                                    'db_where_or_Arr' => array(
                                        'classids' => array($value2_ClassMeta->classid_Num)
                                    ),
                                    'model_name_Str' => 'ClassMeta',
                                    'limitstart_Num' => 0,
                                    'limitcount_Num' => 100
                                ));
                            ?>
                            <?foreach($test_ClassMetaList->obj_Arr as $key3 => $value3_ClassMeta):?>
                            <option value="<?=$value3_ClassMeta->classid_Num?>"><?=$value3_ClassMeta->classname_Str?></option>
                            <?endforeach?>
                        </select>
                    <?endforeach?>
                    </span>
                </div>
            </div>
        </div>
        <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineLeft width500">
                <span class="gray">請選擇二級分類及分類標籤，多種分類可以重複選取</span>
            </div>
        </div>
    </div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                產品庫存
            </div>
            <div class="spanLineLeft width500 stock_area">
                <?if($product_ProductShop->stock_StockProductShopList->obj_Arr):?>
                <?foreach($product_ProductShop->stock_StockProductShopList->obj_Arr as $key => $value_StockProductShop):?>
                <div class="selectLine">
                    <input type="text" class="text width100 stock_class1" name="stock_classname1_StrArr[]" placeholder="規格1" data-value="<?=$value_StockProductShop->classname1_Str?>" value="<?=$value_StockProductShop->classname1_Str?>">
                    <input type="text" class="text width100 stock_class2" name="stock_classname2_StrArr[]" placeholder="規格2" data-value="<?=$value_StockProductShop->classname2_Str?>" value="<?=$value_StockProductShop->classname2_Str?>">
                    <input type="text" class="text width100 color_rgb" name="stock_color_rgb_StrArr[]" placeholder="RGB色碼" data-value="<?=$value_StockProductShop->color_rgb_Str?>" value="<?=$value_StockProductShop->color_rgb_Str?>">
                    <input type="number" class="text width100" min="0" name="stock_stocknum_NumArr[]" placeholder="庫存" data-value="<?=$value_StockProductShop->stocknum_Num?>" value="<?=$value_StockProductShop->stocknum_Num?>">
                    <input type="hidden" class="stockid" name="stockid_NumArr[]" value="<?=$value_StockProductShop->stockid_Num?>">
                    <span class="delete" style="color: blue; cursor: pointer;">清除</span>
                </div>
                <?endforeach?>
                <?else:?>
                <div class="selectLine">
                    <input type="text" class="text width100 stock_class1" name="stock_classname1_StrArr[]" placeholder="規格1" data-value="" value="">
                    <input type="text" class="text width100 stock_class2" name="stock_classname2_StrArr[]" placeholder="規格2" data-value="" value="">
                    <input type="text" class="text width100 color_rgb" name="stock_color_rgb_StrArr[]" placeholder="RGB色碼">
                    <input type="number" class="text width100" min="0" name="stock_stocknum_NumArr[]" placeholder="庫存" data-value="" value="">
                    <input type="hidden" name="stockid_NumArr[]" value="">
                </div>
                <?endif?>
            </div>
            <div class="selectLine stock_line_clone" style="display: none;">
                <input type="text" class="text width100 stock_class1" name="stock_classname1_StrArr[]" placeholder="規格1" data-value="">
                <input type="text" class="text width100 stock_class2" name="stock_classname2_StrArr[]" placeholder="規格2" data-value="">
                <input type="text" class="text width100 color_rgb" name="stock_color_rgb_StrArr[]" placeholder="RGB色碼">
                <input type="number" class="text width100" min="0" name="stock_stocknum_NumArr[]" placeholder="庫存" data-value="">
                <span class="delete" style="color: blue; cursor: pointer;">清除</span>
            </div>
            <script>
            $(function(){
                $('.stock_line_clone').clone().removeClass('stock_line_clone').css('display', 'block').disableSelection().insertAfter('.stock_area .selectLine:last');
                $(document).on('change', '.stock_area .stock_class1', function(){
                    $(this).attr('data-value', $(this).val());
                    if( $(".stock_area > .selectLine > .stock_class1[data-value='']").size() === 0 )
                    {
                        $('.stock_line_clone').clone().removeClass('stock_line_clone').css('display', 'block').disableSelection().insertAfter('.stock_area .selectLine:last');
                    }
                });
                $('.stock_area .delete').disableSelection();
                $(document).on('click', '.stock_area .delete', function(){
                    var stockid = $(this).parents('.selectLine').children('.stockid').val();
                    $.ajax({
                        url: 'ajax/product/delete_stock/?stockid=' + stockid,
                        error: function(xhr){},
                        success: function(response){
                        }
                    });
                    if(
                        $(".stock_area > .selectLine").size() > 2
                    )
                    {
                        $(this).parent('.selectLine').remove();
                    }
                    else
                    {
                        $(this).parent('.selectLine').children(':input').val('');
                        $(this).parent('.selectLine').children(':input').attr('data-value', '');
                    }
                });
            });
            </script>
        </div>
        <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineLeft width500">
                <p class="gray">請填寫規格1、規格2的庫存數量，可以依照不同種類之規格填寫顏色、尺寸等自定義規格</p>
                <p class="gray">至少必須填寫第一筆規格，讓系統計算庫存資訊</p>
            </div>
        </div>
    </div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品簡介
            </div>
            <div class="spanLineLeft width500">
                <textarea cols="80" id="synopsis_Str" name="synopsis_Str" rows="10"><?=$product_ProductShop->synopsis_Str?></textarea>
		    </div>
		</div>
	</div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品規格
            </div>
            <div class="spanLineRight">
                <textarea cols="80" id="content_specification" name="content_specification_Str" rows="10"><?=$product_ProductShop->content_specification_Html?></textarea>
                <script src="app/js/ckeditor/ckeditor.js"></script>
                <script>
                    CKEDITOR.replace( 'content_specification', {
                        toolbar: 'bbcode'
                    });
                </script>
		    </div>
            <div class="spanLineLeft">
            </div>
		</div>
	</div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                產品詳述
            </div>
            <div class="spanLineRight">
                <textarea cols="80" id="content" name="content_Str" rows="10"><?=$product_ProductShop->content_Html?></textarea>
		    </div>
            <div class="spanLineLeft">
            </div>
		</div>
	</div>
	<div class="spanLine">
	    <div class="spanStage">
            <div class="spanLineLeft">
                優先排序指數
            </div>
            <div class="spanLineLeft">
                <input type="number" class="text width100" name="prioritynum_Num" value="<?=$product_ProductShop->prioritynum_Num?>">
            </div>
		</div>
        <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineRight">
                <p class="gray">優先排序指數越高，排序順序越前面</p>
            </div>
        </div>
	</div>
    <?if(!empty($product_ProductShop->productid_Num)):?>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                更新日期
            </div>
            <div class="spanLineLeft">
                <?=$product_ProductShop->updatetime_DateTime->datetime_Str?>
            </div>
        </div>
    </div>
    <?endif?>
	<div class="spanLine spanSubmit">
	    <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineRight">
                <?if(!empty($product_ProductShop->productid_Num)):?><input type="hidden" name="productid_Num" value="<?=$product_ProductShop->productid_Num?>"><?endif?>
                <input type="submit" class="submit" value="<?if(!empty($product_ProductShop->productid_Num)):?>儲存變更<?else:?>新增產品<?endif?>">
                <?if(!empty($product_ProductShop->productid_Num)):?><span class="submit gray" onClick="fanswoo.check_href_action('確定要刪除嗎？', 'admin/<?=$child1_name_Str?>/<?=$child2_name_Str?>/<?=$child3_name_Str?>/delete/?productid=<?=$product_ProductShop->productid_Num?>&hash=<?=$this->security->get_csrf_hash()?>');">刪除<?=$child3_title_Str?></span><?endif?>
            </div>
        </div>
	</div>
	</form>
</div>
<?=$temp['admin_footer_bar']?>
<?=$temp['body_end']?>