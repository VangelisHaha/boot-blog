<#include "com.ftl">
<@layout>
<#--//引用核心文件-->
<script src="/js/jquery.min.js"></script>
<style>
    * {
        padding: 0;
        margin: 0;
    }

    a {
        text-decoration: none;
    }

    body {
        margin: 0 auto;
    }

    /*evaluate*/
    .evaluate {
        overflow: hidden;
        margin: 0 auto;
    }

    .evaluate-box {
        overflow: hidden;
        margin: 0 auto;
    }

    .evaluate-bt {
        overflow: hidden;
        margin: 0 auto 0;
        padding: 0 15px;
        background: #fff;
        border-bottom: 1px solid #ddd;
    }

    .evaluate-bt p {
        overflow: hidden;
        margin: 0 auto;
        height: 44 xp;
        line-height: 44px;
        float: left;
        font-size: 15px;
        color: #333333;
    }

    .evaluate-bt p span {
        overflow: hidden;
        margin: 0 auto;
    }

    .evaluate-bt a {
        overflow: hidden;
        margin: 0 auto;
        height: 44px;
        line-height: 44px;
        font-size: 15px;
        color: #fc3f70;
        float: right;
    }

    .evaluate-bt a.more-btn {
        color: #333333;
        position: relative;
        padding-right: 15px;
    }

    .evaluate-bt a.more-btn:after {
        content: "";
        width: 8px;
        height: 8px;
        display: block;
        border-top: 1px solid #333;
        border-right: 1px solid #333;
        position: absolute;
        top: 16px;
        right: 2px;
        transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -webkit-transform: rotate(45deg);
        -o-transform: rotate(45deg);
    }

    .evaluate-list {
        overflow: hidden;
        margin: 0 auto;
        padding: 0 15px;
        background: #fff;
    }

    .evaluate-list .evaluate-px {
        overflow: hidden;
        margin: 0 auto;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }

    .evaluate-list .evaluate-px:last-child {
        border: none;
    }

    .evaluate-list .datum-rw {
        overflow: hidden;
        margin: 0 auto;
        width: 100%;
        background: #fff;
    }

    .evaluate-list .datum-name {
        overflow: hidden;
        margin: 0 auto;
    }

    .evaluate-list .datum-name i {
        overflow: hidden;
        margin: 0 auto;
        display: block;
        float: left;
        width: 44px;
        height: 44px;
        border-radius: 50%;
        border: 1px solid #ddd;
    }

    .evaluate-list .datum-name i img {
        margin: 0 auto;
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .evaluate-list .datum-name p {
        overflow: hidden;
        margin: 0 auto;
        height: 44px;
        line-height: 44px;
        font-size: 16px;
        color: #333333;
        padding: 0 10px;
    }

    .evaluate-list .datum-name p a {
        overflow: hidden;
        margin: 0 auto;
        height: 44px;
        line-height: 44px;
        font-size: 16px;
        color: #333333;
    }

    .evaluate-list .datum-time {
        overflow: hidden;
        margin: 0.5rem auto;
        width: 100%;
    }

    .evaluate-list .datum-time p {
        overflow: hidden;
        margin: 0 auto;
        font-size: 12px;
        color: #cccccc;
    }

    .evaluate-list .datum-time p span {
        overflow: hidden;
        margin: 0 auto;
        margin-right: 10px;
    }

    .evaluate-list .discuss {
        overflow: hidden;
        margin: 0 auto;
    }

    .evaluate-list .discuss p {
        overflow: hidden;
        margin: 0 auto;
        font-size: 16px;
        color: #333333;
    }

    .evaluate-list .discuss-print {
        overflow: hidden;
        margin: 10px auto 0;
    }

    .evaluate-list .discuss-print ul {
        overflow: hidden;
        margin: 0 auto;
    }

    .evaluate-list .discuss-print ul li {
        overflow: hidden;
        margin: 0 auto 0.5rem;
        float: left;
        margin-right: 0.5rem;
        width: calc((100% - 1rem) / 3);
    }

    .evaluate-list .discuss-print ul li:nth-of-type(3n) {
        margin-right: 0;
    }

    .evaluate-list .discuss-print ul li a {
        overflow: hidden;
        margin: 0 auto;
        display: block;
    }

    .evaluate-list .discuss-print ul li a img {
        overflow: hidden;
        margin: 0 auto;
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    /*图片预览*/
    .Picture {
        overflow: hidden;
        display: none;
        margin: 0 auto;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        background: rgba(0, 0, 0, 0.7);
        z-index: 889;
    }

    .Picture-box {
        overflow: hidden;
        width: 100%;
        height: 100%;
        position: relative;
    }

    .Picture-box .theme {
        overflow: hidden;
        width: auto;
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        margin: auto;
    }

    .Picture-box .open {
        overflow: hidden;
        width: 43px;
        height: 58px;
        font-size: 16px;
        color: #666;
        text-align: center;
        background: rgba(0, 0, 0, 0.4);
        position: absolute;
        top: 0;
        bottom: 0;
        margin: auto;
        z-index: 2;
    }

    .Picture-box .mine {
        left: 0;
    }

    .Picture-box .Next {
        right: 0;
    }

    .Picture-box .theme img {
        overflow: hidden;
        width: 100%;
        margin: 0 auto;
        display: block;
        object-fit: cover;
    }

    .Picture-box .gb-btn {
        overflow: hidden;
        width: 30px;
        height: 30px;
        line-height: 30px;
        display: block;
        position: absolute;
        top: 10px;
        right: 10px;
        font-size: 32px;
        color: #fff;
        text-align: center;
    }

    /*兼容样式*/
    @media (min-width: 1080px) and (max-width: 2400px) {
        .Picture-box .theme {
            width: 100%;
            height: 90%;
        }

        .Picture-box .theme img {
            width: auto;
            height: 100%;
        }
    }
</style>
<div class="page page-current" id="page-index">
    <div class="content">
        <div class="content-inner">
            <div class="evaluate">
                <div class="evaluate-box">
                    <div class="evaluate-list">
                        <div class="evaluate-px">
                            <div class="datum-rw">
                                <div class="datum-time">
                                    <p><span>2018-11-04</span><span> 随手记</span></p>
                                </div>
                            </div>
                            <div class="discuss">
                                <p>何以解忧，唯有撸猫</p>
                                <div class="discuss-print">
                                    <ul>
                                        <li class="on">
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_17_1541323997210Zvv.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_20_1541324000447xlY.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_22_1541324002974zAa.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_24_1541324004985BII.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_26_1541324006906nl3.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_28_1541324008986Qtw.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_31_15413240118820eo.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_34_1541324014334H7w.png"
                                                    alt=""></a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><img
                                                    src="http://qnfile.icareyou.net/png118_10_4_17_33_37_1541324017081GZk.png"
                                                    alt=""></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="Picture">
    <div class="Picture-box">
        <a href="javascript:;" class="mine open"><img src="/images/up_ico.png" alt=""></a>
        <a href="javascript:;" class="Next open"><img src="/images/next_ico.png" alt=""></a>
        <div class="theme">
            <img src="" alt="">
        </div>
        <a href="javascript:;" class="gb-btn">×</a>
    </div>
</div>
<script>
    $('.discuss-print ul li').height($('.discuss-print ul li').width());
    $('.evaluate .b-banner').height($('.evaluate .b-banner').width());
    /*弹框大图*/
    $('.gb-btn').click(function () {
        event.stopPropagation();
        $('.Picture').hide();
        $('body').css('overflow', '');
    });
    $('.theme .fancybox').remove();
    $('.theme img').click(function () {
        event.stopPropagation();
        $('.Picture').hide();
        $('body').css('overflow', '');
    });
    $('.theme img').click(function () {
        event.stopPropagation();
        $('.Picture').hide();
        $('body').css('overflow', '');
    });
    var imgNum = $(".discuss-print ul li").length;
    var index = 0;

    function selectimg(index) {
        $('.discuss-print ul li').removeClass('on');
        $(".discuss-print ul li").eq(index).addClass("on");
        $('.theme').height($('.theme img').height());
        $('.theme img').attr('src', $('.discuss-print .on').find('img').attr('src'));
    }

    /*点击列表图*/
    $('.discuss-print ul li').click(function () {
        event.stopPropagation();
        $('body').css('overflow', 'hidden');
        index = $(".discuss-print ul li").index(this);
        $('.discuss-print ul li').removeClass('on');
        $(this).addClass("on");
        $('.discuss-print ul li img').css('display', 'block');
        $('.Picture').show();
        $('.theme img').attr('src', $('.discuss-print .on').find('img').attr('src'));
        $('.theme').height($('.theme img').height());
    });
    $(".mine").click(function () {
        event.stopPropagation();
        index--;
        if (index < 0) {
            index = imgNum - 1;
            selectimg(index);
        }
        selectimg(index);
    });
    $(".Next").click(function () {
        event.stopPropagation();
        index++;
        if (index > imgNum - 1) {
            index = 0;
            selectimg(index);
        }
        selectimg(index);
    });
</script>
</@layout>
