<#macro layout>
<!DOCTYPE html>
<html class="theme-next gemini use-motion" lang="zh-Hans">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="theme-color" content="#222">
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link href="/lib/fancybox/source/jquery.fancybox.css?v=2.1.5" rel="stylesheet" type="text/css"/>
    <link href="/lib/font-awesome/css/font-awesome.min.css?v=4.6.2" rel="stylesheet" type="text/css"/>
    <link href="/css/main.css?v=5.1.4" rel="stylesheet" type="text/css"/>
    <link rel="apple-touch-icon" sizes="180x180" href="/images/fa.jpg?v=5.1.4">
    <link rel="icon" type="image/png" sizes="32x32" href="/images/fa.jpg?v=5.1.4">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/fa.jpg?v=5.1.4">
    <meta name="keywords" content="Hexo, NexT"/>
    <meta name="description" content="凭谁问甘苦，梦中事，笑是真笑，哭是真哭">
    <meta property="og:type" content="website">
    <meta property="og:title" content="心如明镜">
    <meta property="og:url" content="http://yoursite.com/index.html">
    <meta property="og:site_name" content="心如明镜">
    <meta property="og:description" content="凭谁问甘苦，梦中事，笑是真笑，哭是真哭">
    <meta property="og:locale" content="zh-Hans">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="心如明镜">
    <meta name="twitter:description" content="凭谁问甘苦，梦中事，笑是真笑，哭是真哭">
    <script type="text/javascript" id="hexo.configurations">
        var NexT = window.NexT || {};
        var CONFIG = {
            root: '/',
            scheme: 'Gemini',
            version: '5.1.4',
            sidebar: {
                "position": "left",
                "display": "post",
                "offset": 12,
                "b2t": false,
                "scrollpercent": false,
                "onmobile": false
            },
            fancybox: true,
            tabs: true,
            motion: {
                "enable": true,
                "async": false,
                "transition": {
                    "post_block": "fadeIn",
                    "post_header": "slideDownIn",
                    "post_body": "slideDownIn",
                    "coll_header": "slideLeftIn",
                    "sidebar": "slideUpIn"
                }
            },
            duoshuo: {
                userId: '0',
                author: '博主'
            },
            algolia: {
                applicationID: '',
                apiKey: '',
                indexName: '',
                hits: {"per_page": 10},
                labels: {
                    "input_placeholder": "Search for Posts",
                    "hits_empty": "We didn't find any results for the search: ${query!}",
                    "hits_stats": "${hits!} results found in ${time!} ms"
                }
            }
        };
    </script>
    <link rel="canonical" href="http://yoursite.com/"/>
    <title>心如明镜</title></head>
<script type="text/javascript" src="/js/src/crash_cheat.js"></script>
<body itemscope itemtype="http://schema.org/WebPage" lang="zh-Hans">
<div class="container sidebar-position-left  page-home">
    <div class="headband">
        <a href="https://github.com/VangelisHaha" class="github-corner" aria-label="View source on GitHub">
            <svg width="80" height="80" viewBox="0 0 250 250"   style="fill:#151513; color:#fff; position: absolute; top: 0; border: 0; right: 0;" aria-hidden="true"> <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
                <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path>
                <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path>
            </svg>
        </a>
        <style>.github-corner:hover .octo-arm {
            animation: octocat-wave 560ms ease-in-out
        }

        @keyframes octocat-wave {
            0%, 100% {
                transform: rotate(0)
            }
            20%, 60% {
                transform: rotate(-25deg)
            }
            40%, 80% {
                transform: rotate(10deg)
            }
        }

        @media (max-width: 500px) {
            .github-corner:hover .octo-arm {
                animation: none
            }

            .github-corner .octo-arm {
                animation: octocat-wave 560ms ease-in-out
            }
        }</style>
    </div>
       <#include "header.ftl"/>
    <main id="main" class="main">
        <div class="main-inner">
            <div class="content-wrap">
                <div id="content" class="content">
                        <#nested>
                </div>
            </div>
            <div class="sidebar-toggle">
                <div class="sidebar-toggle-line-wrap">
                    <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
                </div>
            </div>
           <#include "personal.ftl">
        </div>
    </main>
    <#include "footer.ftl"/>
</div>
<script type="text/javascript">
    if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
        window.Promise = null;
    }
</script>
<script type="text/javascript" src="/lib/jquery/index.js?v=2.1.3"></script>
<script type="text/javascript" src="/lib/fastclick/lib/fastclick.min.js?v=1.0.6"></script>
<script type="text/javascript" src="/lib/jquery_lazyload/jquery.lazyload.js?v=1.9.7"></script>
<script type="text/javascript" src="/lib/velocity/velocity.min.js?v=1.2.1"></script>
<script type="text/javascript" src="/lib/velocity/velocity.ui.min.js?v=1.2.1"></script>
<script type="text/javascript" src="/lib/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<script type="text/javascript" src="/lib/canvas-nest/canvas-nest.min.js"></script>
<script type="text/javascript" src="/js/src/utils.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/motion.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/affix.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/schemes/pisces.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/bootstrap.js?v=5.1.4"></script>
<link rel="stylesheet" href="/lib/algolia-instant-search/instantsearch.min.css">
<script src="/lib/algolia-instant-search/instantsearch.min.js"></script>
<script src="/js/src/algolia-search.js?v=5.1.4"></script>
</body>
</html>
</#macro>