<#include "com.ftl">
<@layout>
<title>测试播放器</title>
<link href="/css/video-js.min.css" rel="stylesheet">
<style>
    .m {
        width: 960px;
        height: 400px;
        margin-left: auto;
        margin-right: auto;
        margin-top: 100px;
    }
</style>
<div id="content" class="content">
    <section id="posts" class="posts-expand">
        <div class="post-block page">
            <header class="post-header">
                <h1 class="post-title" itemprop="name headline">天空之城（假的啦）</h1>
            </header>
            <div class="post-body" >
                <div class="m">
                    <video id="my-video" class="video-js" controls preload="auto" width="960" height="400"
                           poster="m.jpg" data-setup="{}">
                        <source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4">
                        <source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">
                        <source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg">
                        <p class="vjs-no-js"> To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a> </p>
                    </video>
                    <script src="/js/video.min.js"></script>
                    <script src="http://vjs.zencdn.net/5.19/lang/zh-CN.js"></script>
                    <script type="text/javascript">
                        var myPlayer = videojs('my-video');
                        videojs("my-video").ready(function(){
                            var myPlayer = this;
                            myPlayer.play();
                        });
                    </script>
                </div>
            </div>
        </div>
    </section>
</div>
</@layout>
