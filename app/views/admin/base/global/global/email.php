<?=$temp['header_up']?>
<?=$temp['admin_header_down']?>
<h2><?=$child2_title_Str?> - <?=$child3_title_Str?></h2>
<div class="contentBox allWidth">
    <h3>SMTP mail server</h3>
    <h4>若本系統擁有SMTP寄件功能，此設置將影響網站SMTP之設定</h4>
    <?php echo form_open_multipart("admin/$child1_name_Str/$child2_name_Str/$child3_name_Str/{$child4_name_Str}_smtp_post/") ?>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                SMTP帳號
            </div>
            <div class="spanLineLeft width300">
                <input type="text" class="text" placeholder="請輸入SMTP帳號" name="smtp_account" value="<?if(!empty($global['smtp_account'])):?><?=$global['smtp_account']?><?endif?>">
            </div>
        </div>
    </div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                SMTP密碼
            </div>
            <div class="spanLineLeft width300">
                <input type="password" class="text" placeholder="請輸入SMTP密碼" name="smtp_password" value="<?if(!empty($global['smtp_password'])):?><?=$global['smtp_password']?><?endif?>">
            </div>
        </div>
    </div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                SMTP顯示郵件
            </div>
            <div class="spanLineLeft width300">
                <input type="text" class="text" placeholder="請輸入SMTP顯示郵件" name="smtp_email" value="<?if(!empty($global['smtp_email'])):?><?=$global['smtp_email']?><?endif?>">
            </div>
        </div>
    </div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                SMTP顯示姓名
            </div>
            <div class="spanLineLeft width300">
                <input type="text" class="text" placeholder="請輸入SMTP顯示姓名" name="smtp_username" value="<?if(!empty($global['smtp_username'])):?><?=$global['smtp_username']?><?endif?>">
            </div>
        </div>
    </div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                SMTP Host
            </div>
            <div class="spanLineLeft width300">
                <input type="text" class="text" placeholder="請輸入SMTP Host" name="smtp_host" value="<?if(!empty($global['smtp_host'])):?><?=$global['smtp_host']?><?endif?>">
            </div>
        </div>
    </div>
    <div class="spanLine">
        <div class="spanStage">
            <div class="spanLineLeft">
                SMTP SSL
            </div>
            <div class="spanLineLeft width300">
                <label><input type="checkbox" name="smtp_ssl_checkbox"<?if(!empty($global['smtp_ssl_checkbox']) && $global['smtp_ssl_checkbox'] == 1):?> checked<?endif?>> 連接SSL port 445</label>
            </div>
        </div>
    </div>
    <div class="spanLine spanSubmit">
        <div class="spanStage">
            <div class="spanLineLeft">
            </div>
            <div class="spanLineRight">
                <input type="submit" class="submit" value="儲存設置">
            </div>
        </div>
    </div>
    </form>
</div>
<?=$temp['admin_footer']?>