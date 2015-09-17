$(function(){
    $(document).on('click', '.sidebox h2', function () {
        if ($(this).parent('.sidebox').hasClass('hover')) {
            $(this).parent('.sidebox').removeClass('hover');
        } else {
            $(this).parent('.sidebox').addClass('hover');
        }
    });
    $(document).on('click', '.acHref', function () {
        if ($(this).hasClass('hover') === false) {
            $('.acHref').removeClass('hover');
            $(this).addClass('hover');
        }
    });
    $(document).on('mouseleave', '.sidebar', function () {
        $('.acHref').removeClass('hover');
        $('.sidebox.select').addClass('hover');
        $('.acHref.select').addClass('hover');
        $('.acHref acHrefSmall.select').addClass('hover');
    });
    //多圖片上傳自動新增上傳按鈕
    $(document).on('change', '[fanswoo-fileMultiple]', function(){
        if($(this).find(":file").val() !== '')
        {
            if($(this).parent('.spanLineLeft').find("[fanswoo-fileMultiple] :file[value='']").size() === 0)
            {
                $(this).clone().val('').insertAfter(this).parent('.spanLineLeft').find('[fanswoo-fileMultiple]:last');
            }
        }
        else
        {
            $(this).remove();
        }
    });
    //圖片AJAX上傳系統
    $( "[fanswoo-piclist]" ).sortable();
    $( "[fanswoo-piclist]" ).disableSelection();
    $("[fanswoo-pic_upload_ajax]").each(function(key, value){
        var text = $("[fanswoo-pic_upload_ajax]:eq(" + key + ")").text();
        $("[fanswoo-pic_upload_ajax]:eq(" + key + ")").html("<div fanswoo-pic_upload_ajax_btn><span>" + text + "</span><input name='picids_FilesArr[]' fanswoo-pic_upload_ajax_input type='file' accept='image/*' multiple/></div><span fanswoo-pic_upload_ajax_message>點選CTRL可一次複選多張圖片</span>");

        $(document).on('change', "[fanswoo-pic_upload_ajax]:eq(" + key + ") [fanswoo-pic_upload_ajax_input]", function(){
            $("html").append("<form fanswoo-pic_upload_form method='post' enctype='multipart/form-data' style='display: none;'></form>");
            $("[fanswoo-pic_upload_ajax]:eq(" + key + ") [fanswoo-pic_upload_ajax_input]").appendTo("[fanswoo-pic_upload_form]");
            $("[fanswoo-pic_upload_form]").ajaxSubmit({
                type:'post',
                url: "ajax/pic/upload_pic",    
                beforeSubmit: function(){
                    $("[fanswoo-pic_upload_ajax]:eq(" + key + ") [fanswoo-pic_upload_ajax_message]").text("圖片上傳中...");
                },
                success: function(response){
                    var response_Json = JSON.parse(response);
                    var message_Str = response_Json.error_message;

                    if(response_Json.status === 'true')
                    {

                        for(var i = 0; i < response_Json.pic_Arr.length; i++)
                        {
                            $clone = $("[fanswoo-piclist]:eq(" + key + ") [fanswoo-picid][fanswoo-clone]").clone();
                            $clone.removeAttr("fanswoo-clone").prependTo("[fanswoo-piclist]:eq(" + key + ")");
                            $clone.attr('fanswoo-picid', response_Json.pic_Arr[i].picid_Num );
                            $clone.find("[fanswoo-picid_img]").attr('src', response_Json.pic_Arr[i].path_Arr.w50h50 );
                            $clone.find("[fanswoo-input_copy]").val( response_Json.pic_Arr[i].path_Arr.w0h0 );
                            $clone.find("[fanswoo-picid_input_hidden_picid]").val( response_Json.pic_Arr[i].picid_Num );
                        }
                        $("[fanswoo-pic_upload_form]").remove();
                        $("[fanswoo-pic_upload_ajax]:eq(" + key + ") [fanswoo-pic_upload_ajax_btn]").append("<input name='picids_FilesArr[]' fanswoo-pic_upload_ajax_input type='file' accept='image/*' multiple/>");
                    }

                    $("[fanswoo-pic_upload_ajax]:eq(" + key + ") [fanswoo-pic_upload_ajax_message]").text(message_Str);
                },
                resetForm: false,
                clearForm: false
            });
        });

    });
    //刪除圖片
    $(document).on('click', '[fanswoo-picid] [fanswoo-pic_delete]', function(){
        var picid = $(this).parents('[fanswoo-picid]').attr('fanswoo-picid');
        $.ajax({
            url: 'ajax/pic/delete_pic/picid/' + picid,
            error: function(xhr){},
            success: function(response){
                $('[fanswoo-picid=' + picid + ']').remove();
                alert('刪除成功');
            }
        });
    });
    $(document).on('click', '[fanswoo-input_copy]', function(){
        $(this).select();
    });
});