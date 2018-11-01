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
    <link href="/lib/font-awesome/css/font-awesome.min.css?v=4.6.2" rel="stylesheet" type="text/css"/>    <link href="/css/main.css?v=5.1.4" rel="stylesheet" type="text/css"/>
    <link rel="apple-touch-icon" sizes="180x180" href="/images/fa.jpg?v=5.1.4">
    <link rel="icon" type="image/png" sizes="32x32" href="/images/fa.jpg?v=5.1.4">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/fa.jpg?v=5.1.4">
    <meta name="keywords" content="Linux,"/>
    <meta name="description"
          content="服务器安装的一些坑0.自己服务器的一些信息 外网ip：47.94.236.207 /119.23.31.179 个人域名：vangelis.xyz  0.1 一些端口域名规划   项目 说明 端口 域名     portainer docker监管 9000 portainer.cloud.vangelis.xyz               1.docker安装12345678910111213">
    <meta name="keywords" content="Linux">
    <meta property="og:type" content="article">
    <meta property="og:title" content="服务器安装的一些坑">
    <meta property="og:url" content="http://yoursite.com/2018/10/14/自己折腾博客的一些服务器坑/index.html">
    <meta property="og:site_name" content="心如明镜">
    <meta property="og:description"
          content="服务器安装的一些坑0.自己服务器的一些信息 外网ip：47.94.236.207 /119.23.31.179 个人域名：vangelis.xyz  0.1 一些端口域名规划   项目 说明 端口 域名     portainer docker监管 9000 portainer.cloud.vangelis.xyz               1.docker安装12345678910111213">
    <meta property="og:locale" content="zh-Hans">
    <meta property="og:updated_time" content="2018-10-14T10:17:30.856Z">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="服务器安装的一些坑">
    <meta name="twitter:description"
          content="服务器安装的一些坑0.自己服务器的一些信息 外网ip：47.94.236.207 /119.23.31.179 个人域名：vangelis.xyz  0.1 一些端口域名规划   项目 说明 端口 域名     portainer docker监管 9000 portainer.cloud.vangelis.xyz               1.docker安装12345678910111213">
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
    <link rel="canonical" href="http://yoursite.com/2018/10/14/自己折腾博客的一些服务器坑/"/>
    <title>服务器安装的一些坑 | 心如明镜</title>
</head><body itemscope itemtype="http://schema.org/WebPage" lang="zh-Hans">
<div class="container sidebar-position-left page-post-detail">
    <div class="headband">
        <a href="https://github.com/VangelisHaha" class="github-corner" aria-label="View source on GitHub">
            <svg width="80" height="80" viewBox="0 0 250 250"
                 style="fill:#151513; color:#fff; position: absolute; top: 0; border: 0; right: 0;" aria-hidden="true">
                <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
                <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2"
                      fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path>
                <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z"
                      fill="currentColor" class="octo-body"></path>
            </svg>
        </a>
        <style>.github-corner:hover .octo-arm {
            animation: octocat-wave 560ms ease-in-out
        }        @keyframes octocat-wave {
            0%, 100% {
                transform: rotate(0)
            }
            20%, 60% {
                transform: rotate(-25deg)
            }
            40%, 80% {
                transform: rotate(10deg)
            }
        }        @media (max-width: 500px) {
            .github-corner:hover .octo-arm {
                animation: none
            }            .github-corner .octo-arm {
                animation: octocat-wave 560ms ease-in-out
            }
        }</style>
    </div>
    <#include "header.ftl"/>
    <main id="main" class="main">
        <div class="main-inner">
            <div class="content-wrap">
                <div id="content" class="content">
                    <div id="posts" class="posts-expand">
                        <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                            <div class="post-block">
                                <link itemprop="mainEntityOfPage" href="http://yoursite.com/2018/10/14/自己折腾博客的一些服务器坑/">                                <span hidden itemprop="author" itemscope itemtype="http://schema.org/Person">
      <meta itemprop="name" content="Vangelis">
      <meta itemprop="description" content="">
      <meta itemprop="image" content="/images/header.jpg">
    </span>                                <span hidden itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
      <meta itemprop="name" content="心如明镜">
    </span>
                                <header class="post-header">
                                    <h1 class="post-title" itemprop="name headline">服务器安装的一些坑</h1>
                                    <div class="post-meta">
          <span class="post-time">
            
              <span class="post-meta-item-icon">
                <i class="fa fa-calendar-o"></i>
              </span>
              
                <span class="post-meta-item-text">发表于</span>
              
              <time title="创建于" itemprop="dateCreated datePublished" datetime="2018-10-14T18:01:25+08:00">
                2018-10-14
              </time>
                                    
          </span>
                                        <span class="post-category">
            
              <span class="post-meta-divider">|</span>
            
              <span class="post-meta-item-icon">
                <i class="fa fa-folder-o"></i>
              </span>
              
                <span class="post-meta-item-text">分类于</span>
              
              
                <span itemprop="about" itemscope itemtype="http://schema.org/Thing">
                  <a href="/categories/服务器/" itemprop="url" rel="index">
                    <span itemprop="name">服务器</span>
                  </a>
                </span>                
                
              
            </span>
                                    </div>
                                </header>
                                <div class="post-body" itemprop="articleBody">
                                    <h1 id="服务器安装的一些坑"><a href="#服务器安装的一些坑" class="headerlink" title="服务器安装的一些坑"></a>服务器安装的一些坑
                                    </h1>
                                    <h2 id="0-自己服务器的一些信息"><a href="#0-自己服务器的一些信息" class="headerlink"
                                                             title="0.自己服务器的一些信息"></a>0.自己服务器的一些信息</h2>
                                    <ul>
                                        <li>外网ip：<strong>47.94.236.207</strong> /<strong>119.23.31.179</strong></li>
                                        <li>个人域名：<strong>vangelis.xyz</strong></li>
                                    </ul>
                                    <h3 id="0-1-一些端口域名规划"><a href="#0-1-一些端口域名规划" class="headerlink"
                                                             title="0.1 一些端口域名规划"></a>0.1 一些端口域名规划</h3>
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>项目</th>
                                            <th>说明</th>
                                            <th>端口</th>
                                            <th>域名</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>portainer</td>
                                            <td>docker监管</td>
                                            <td>9000</td>
                                            <td>portainer.cloud.vangelis.xyz</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <h2 id="1-docker安装"><a href="#1-docker安装" class="headerlink" title="1.docker安装"></a>1.docker安装
                                    </h2>
                                    <figure class="highlight shell">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br><span
                                                            class="line">2</span><br><span
                                                            class="line">3</span><br><span
                                                            class="line">4</span><br><span
                                                            class="line">5</span><br><span
                                                            class="line">6</span><br><span
                                                            class="line">7</span><br><span
                                                            class="line">8</span><br><span
                                                            class="line">9</span><br><span
                                                            class="line">10</span><br><span
                                                            class="line">11</span><br><span
                                                            class="line">12</span><br><span
                                                            class="line">13</span><br><span
                                                            class="line">14</span><br><span
                                                            class="line">15</span><br><span
                                                            class="line">16</span><br><span
                                                            class="line">17</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line">yum update -y</span><br><span class="line">yum -y install docker</span><br><span
                                                            class="line">systemctl start docker</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">守护进程重启   </span></span><br><span
                                                            class="line">sudo systemctl daemon-reload</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">重启docker服务   </span></span><br><span
                                                            class="line">systemctl restart  docker</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">关闭docker </span></span><br><span
                                                            class="line">service docker stop/systemctl stop docker</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">开机自启动</span></span><br><span
                                                            class="line">chkconfig docker on</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">使用镜像加速</span></span><br><span
                                                            class="line">vi /etc/docker/daemon.json</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">添加内容</span></span><br><span
                                                            class="line">&#123;</span><br><span class="line">  "registry-mirrors": ["https://aj2rgad5.mirror.aliyuncs.com"]</span><br><span
                                                            class="line">&#125;</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <h2 id="2-安装nginx"><a href="#2-安装nginx" class="headerlink" title="2.安装nginx"></a>2.安装nginx
                                    </h2>
                                    <p>docker安装比较麻烦，直接物理机安装</p>
                                    <figure class="highlight shell">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br><span
                                                            class="line">2</span><br><span
                                                            class="line">3</span><br><span
                                                            class="line">4</span><br><span
                                                            class="line">5</span><br><span
                                                            class="line">6</span><br><span
                                                            class="line">7</span><br><span
                                                            class="line">8</span><br><span
                                                            class="line">9</span><br><span
                                                            class="line">10</span><br><span
                                                            class="line">11</span><br><span
                                                            class="line">12</span><br><span
                                                            class="line">13</span><br><span
                                                            class="line">14</span><br><span
                                                            class="line">15</span><br><span
                                                            class="line">16</span><br><span
                                                            class="line">17</span><br><span
                                                            class="line">18</span><br><span
                                                            class="line">19</span><br><span
                                                            class="line">20</span><br><span
                                                            class="line">21</span><br><span
                                                            class="line">22</span><br><span
                                                            class="line">23</span><br><span
                                                            class="line">24</span><br><span
                                                            class="line">25</span><br><span
                                                            class="line">26</span><br><span
                                                            class="line">27</span><br><span
                                                            class="line">28</span><br><span
                                                            class="line">29</span><br><span
                                                            class="line">30</span><br><span
                                                            class="line">31</span><br><span
                                                            class="line">32</span><br><span
                                                            class="line">33</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line"><span class="meta">#</span><span
                                                            class="bash">root 用户</span></span><br><span class="line">cd usr/local/src</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">下载程序</span></span><br><span
                                                            class="line">wget http://nginx.org/download/nginx-1.10.2.tar.gz</span><br><span
                                                            class="line">wget http://www.openssl.org/source/openssl-fips-2.0.10.tar.gz</span><br><span
                                                            class="line">wget http://zlib.net/zlib-1.2.11.tar.gz</span><br><span
                                                            class="line">wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.40.tar.gz</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">检查是否有c++环境</span></span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">如果没有</span></span><br><span
                                                            class="line">yum install gcc-c++</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">分别解压安装上面的程序</span></span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">安装openssl</span></span><br><span
                                                            class="line">tar -zxvf openssl-fips-2.0.10.tar.gz</span><br><span
                                                            class="line">cd openssl-fips-2.0.10</span><br><span
                                                            class="line">./config &amp;&amp; make &amp;&amp; make install   </span><br><span
                                                            class="line">cd ..</span><br><span class="line"><span
                                                            class="meta">#</span><span class="bash">安装pcre</span></span><br><span
                                                            class="line">tar -zxvf pcre-8.40.tar.gz</span><br><span
                                                            class="line">cd pcre-8.40</span><br><span class="line">./configure &amp;&amp; make &amp;&amp; make install</span><br><span
                                                            class="line">cd ..</span><br><span class="line"><span
                                                            class="meta">#</span><span class="bash">安装zlib</span></span><br><span
                                                            class="line">tar -zxvf zlib-1.2.11.tar.gz</span><br><span
                                                            class="line">cd zlib-1.2.11</span><br><span class="line">./configure &amp;&amp; make &amp;&amp; make install</span><br><span
                                                            class="line">cd ..</span><br><span class="line"><span
                                                            class="meta">#</span><span
                                                            class="bash">安装nginx</span></span><br><span class="line">tar zxvf nginx-1.10.2.tar.gz</span><br><span
                                                            class="line">cd nginx-1.10.2</span><br><span class="line">./configure &amp;&amp; make &amp;&amp; make install</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">启动nginx</span></span><br><span
                                                            class="line">cd /usr/local/nginx/ </span><br><span
                                                            class="line">/usr/local/nginx/sbin/nginx</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <h3 id="2-1-nginx一些常用的指令"><a href="#2-1-nginx一些常用的指令" class="headerlink"
                                                                 title="2.1 nginx一些常用的指令"></a>2.1 nginx一些常用的指令</h3>
                                    <figure class="highlight powershell">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br><span
                                                            class="line">2</span><br><span
                                                            class="line">3</span><br><span
                                                            class="line">4</span><br><span
                                                            class="line">5</span><br><span
                                                            class="line">6</span><br><span
                                                            class="line">7</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line"><span
                                                            class="comment">#平滑重启</span></span><br><span class="line">/usr/nginx/sbin/nginx -s reload  </span><br><span
                                                            class="line"><span
                                                            class="comment">#修改过nginx的配置 检查是否ok</span></span><br><span
                                                            class="line">/usr/local/nginx/sbin/nginx -t</span><br><span
                                                            class="line">nginx -t -c /usr/nginx/conf/nginx.conf</span><br><span
                                                            class="line"><span
                                                            class="comment">#启动指令</span></span><br><span class="line">nginx -c /usr/local/nginx/conf/nginx.conf</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <h2 id="3-安装mysql"><a href="#3-安装mysql" class="headerlink" title="3.安装mysql"></a>3.安装mysql
                                    </h2>
                                    <p>安装版本为<strong>5.6</strong></p>
                                    <figure class="highlight powershell">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br><span
                                                            class="line">2</span><br><span
                                                            class="line">3</span><br><span
                                                            class="line">4</span><br><span
                                                            class="line">5</span><br><span
                                                            class="line">6</span><br><span
                                                            class="line">7</span><br><span
                                                            class="line">8</span><br><span
                                                            class="line">9</span><br><span
                                                            class="line">10</span><br><span
                                                            class="line">11</span><br><span
                                                            class="line">12</span><br><span
                                                            class="line">13</span><br><span
                                                            class="line">14</span><br><span
                                                            class="line">15</span><br><span
                                                            class="line">16</span><br><span
                                                            class="line">17</span><br><span
                                                            class="line">18</span><br><span
                                                            class="line">19</span><br><span
                                                            class="line">20</span><br><span
                                                            class="line">21</span><br><span
                                                            class="line">22</span><br><span
                                                            class="line">23</span><br><span
                                                            class="line">24</span><br><span
                                                            class="line">25</span><br><span
                                                            class="line">26</span><br><span
                                                            class="line">27</span><br><span
                                                            class="line">28</span><br><span
                                                            class="line">29</span><br><span
                                                            class="line">30</span><br><span
                                                            class="line">31</span><br><span
                                                            class="line">32</span><br><span
                                                            class="line">33</span><br><span
                                                            class="line">34</span><br><span
                                                            class="line">35</span><br><span
                                                            class="line">36</span><br><span
                                                            class="line">37</span><br><span
                                                            class="line">38</span><br><span
                                                            class="line">39</span><br><span
                                                            class="line">40</span><br><span
                                                            class="line">41</span><br><span
                                                            class="line">42</span><br><span
                                                            class="line">43</span><br><span
                                                            class="line">44</span><br><span
                                                            class="line">45</span><br><span
                                                            class="line">46</span><br><span
                                                            class="line">47</span><br><span
                                                            class="line">48</span><br><span
                                                            class="line">49</span><br><span
                                                            class="line">50</span><br><span
                                                            class="line">51</span><br><span
                                                            class="line">52</span><br><span
                                                            class="line">53</span><br><span
                                                            class="line">54</span><br><span
                                                            class="line">55</span><br><span
                                                            class="line">56</span><br><span
                                                            class="line">57</span><br><span
                                                            class="line">58</span><br><span
                                                            class="line">59</span><br><span
                                                            class="line">60</span><br><span
                                                            class="line">61</span><br><span
                                                            class="line">62</span><br><span
                                                            class="line">63</span><br><span
                                                            class="line">64</span><br><span
                                                            class="line">65</span><br><span
                                                            class="line">66</span><br><span
                                                            class="line">67</span><br><span
                                                            class="line">68</span><br><span
                                                            class="line">69</span><br><span
                                                            class="line">70</span><br><span
                                                            class="line">71</span><br><span
                                                            class="line">72</span><br><span
                                                            class="line">73</span><br><span
                                                            class="line">74</span><br><span
                                                            class="line">75</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line"><span
                                                            class="comment">#拉取</span></span><br><span class="line">docker pull mysql:<span
                                                            class="number">5.6</span></span><br><span class="line"><span
                                                            class="comment">#宿主机创建目录，用于后续挂载</span></span><br><span
                                                            class="line">mkdir -p ~/mysql/<span
                                                            class="keyword">data</span> ~/mysql/logs ~/mysql/conf</span><br><span
                                                            class="line"><span
                                                            class="comment">#进入mysql目录</span></span><br><span
                                                            class="line">cd ~/mysql</span><br><span class="line"><span
                                                            class="comment">#创建Dockerfile文件</span></span><br><span
                                                            class="line"><span class="comment">#####################################################################################</span></span><br><span
                                                            class="line">FROM debian:jessie</span><br><span
                                                            class="line"></span><br><span class="line"><span
                                                            class="comment"># add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added</span></span><br><span
                                                            class="line">RUN groupadd -r mysql &amp;&amp; useradd -r -g mysql mysql</span><br><span
                                                            class="line"></span><br><span class="line"><span
                                                            class="comment"># add gosu for easy step-down from root</span></span><br><span
                                                            class="line">ENV GOSU_VERSION <span
                                                            class="number">1.7</span></span><br><span class="line">RUN set -x \</span><br><span
                                                            class="line">    &amp;&amp; apt-get update &amp;&amp; apt-get install -y --no-install-recommends ca-certificates wget &amp;&amp; rm -rf /var/lib/apt/lists/* \</span><br><span
                                                            class="line">    &amp;&amp; wget -O /usr/local/bin/gosu <span
                                                            class="string">"https://github.com/tianon/gosu/releases/download/<span
                                                            class="variable">$GOSU_VERSION</span>/gosu-$(dpkg --print-architecture)"</span> \</span><br><span
                                                            class="line">    &amp;&amp; wget -O /usr/local/bin/gosu.asc <span
                                                            class="string">"https://github.com/tianon/gosu/releases/download/<span
                                                            class="variable">$GOSU_VERSION</span>/gosu-$(dpkg --print-architecture).asc"</span> \</span><br><span
                                                            class="line">    &amp;&amp; export GNUPGHOME=<span
                                                            class="string">"$(mktemp -d)"</span> \</span><br><span
                                                            class="line">    &amp;&amp; gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \</span><br><span
                                                            class="line">    &amp;&amp; gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \</span><br><span
                                                            class="line">    &amp;&amp; rm -r <span
                                                            class="string">"<span
                                                            class="variable">$GNUPGHOME</span>"</span> /usr/local/bin/gosu.asc \</span><br><span
                                                            class="line">    &amp;&amp; chmod +x /usr/local/bin/gosu \</span><br><span
                                                            class="line">    &amp;&amp; gosu nobody true \</span><br><span
                                                            class="line">    &amp;&amp; apt-get purge -y --auto-remove ca-certificates wget</span><br><span
                                                            class="line"></span><br><span class="line">RUN mkdir /docker-entrypoint-initdb.d</span><br><span
                                                            class="line"></span><br><span class="line"><span
                                                            class="comment"># FATAL ERROR: please install the following Perl modules before executing /usr/local/mysql/scripts/mysql_install_db:</span></span><br><span
                                                            class="line"><span
                                                            class="comment"># File::Basename</span></span><br><span
                                                            class="line"><span
                                                            class="comment"># File::Copy</span></span><br><span
                                                            class="line"><span
                                                            class="comment"># Sys::Hostname</span></span><br><span
                                                            class="line"><span
                                                            class="comment"># Data::Dumper</span></span><br><span
                                                            class="line">RUN apt-get update &amp;&amp; apt-get install -y perl pwgen --no-install-recommends &amp;&amp; rm -rf /var/lib/apt/lists/*</span><br><span
                                                            class="line"></span><br><span class="line"><span
                                                            class="comment"># gpg: key 5072E1F5: public key "MySQL Release Engineering &lt;mysql-build@oss.oracle.com&gt;" imported</span></span><br><span
                                                            class="line">RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5</span><br><span
                                                            class="line"></span><br><span
                                                            class="line">ENV MYSQL_MAJOR <span class="number">5.6</span></span><br><span
                                                            class="line">ENV MYSQL_VERSION <span
                                                            class="number">5.6</span>.<span
                                                            class="number">31</span>-<span class="number">1</span>debian8</span><br><span
                                                            class="line"></span><br><span class="line">RUN echo <span
                                                            class="string">"deb http://repo.mysql.com/apt/debian/ jessie mysql-$&#123;MYSQL_MAJOR&#125;"</span> &gt; /etc/apt/sources.list.d/mysql.list</span><br><span
                                                            class="line"></span><br><span class="line"><span
                                                            class="comment"># the "/var/lib/mysql" stuff here is because the mysql-server postinst doesn't have an explicit way to disable the mysql_install_db codepath besides having a database already "configured" (ie, stuff in /var/lib/mysql/mysql)</span></span><br><span
                                                            class="line"><span class="comment"># also, we set debconf keys to make APT a little quieter</span></span><br><span
                                                            class="line">RUN &#123; \</span><br><span class="line">        echo mysql-community-server mysql-community-server/data-dir select <span
                                                            class="string">''</span>; \</span><br><span class="line">        echo mysql-community-server mysql-community-server/root-pass password <span
                                                            class="string">''</span>; \</span><br><span class="line">        echo mysql-community-server mysql-community-server/re-root-pass password <span
                                                            class="string">''</span>; \</span><br><span class="line">        echo mysql-community-server mysql-community-server/remove-test-db select false; \</span><br><span
                                                            class="line">    &#125; | debconf-set-selections \</span><br><span
                                                            class="line">    &amp;&amp; apt-get update &amp;&amp; apt-get install -y mysql-server=<span
                                                            class="string">"$&#123;MYSQL_VERSION&#125;"</span> &amp;&amp; rm -rf /var/lib/apt/lists/* \</span><br><span
                                                            class="line">    &amp;&amp; rm -rf /var/lib/mysql &amp;&amp; mkdir -p /var/lib/mysql /var/run/mysqld \</span><br><span
                                                            class="line">    &amp;&amp; chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \</span><br><span
                                                            class="line"><span class="comment"># ensure that /var/run/mysqld (used for socket and lock files) is writable regardless of the UID our mysqld instance ends up having at runtime</span></span><br><span
                                                            class="line">    &amp;&amp; chmod <span
                                                            class="number">777</span> /var/run/mysqld</span><br><span
                                                            class="line"></span><br><span class="line"><span
                                                            class="comment"># comment out a few problematic configuration values</span></span><br><span
                                                            class="line"><span class="comment"># don't reverse lookup hostnames, they are usually another container</span></span><br><span
                                                            class="line">RUN sed -Ei <span class="string">'s/^(bind-address|log)/#&amp;/'</span> /etc/mysql/my.cnf \</span><br><span
                                                            class="line">    &amp;&amp; echo <span class="string">'skip-host-cache\nskip-name-resolve'</span> | awk <span
                                                            class="string">'&#123; print &#125; $1 == "[mysqld]" &amp;&amp; c == 0 &#123; c = 1; system("cat") &#125;'</span> /etc/mysql/my.cnf &gt; /tmp/my.cnf \</span><br><span
                                                            class="line">    &amp;&amp; mv /tmp/my.cnf /etc/mysql/my.cnf</span><br><span
                                                            class="line"></span><br><span class="line">VOLUME /var/lib/mysql</span><br><span
                                                            class="line"></span><br><span class="line">COPY docker-entrypoint.sh /usr/local/bin/</span><br><span
                                                            class="line">RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh <span
                                                            class="comment"># backwards compat</span></span><br><span
                                                            class="line">ENTRYPOINT [<span class="string">"docker-entrypoint.sh"</span>]</span><br><span
                                                            class="line"></span><br><span class="line">EXPOSE <span
                                                            class="number">3306</span></span><br><span class="line">CMD [<span
                                                            class="string">"mysqld"</span>]</span><br><span
                                                            class="line"><span class="comment">#####################################################################################</span></span><br><span
                                                            class="line"><span class="comment">#使用Dockerfile构建镜像</span></span><br><span
                                                            class="line">docker build -t mysql .</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <h2 id="4-安装portainer"><a href="#4-安装portainer" class="headerlink"
                                                              title="4.安装portainer"></a>4.安装<strong>portainer</strong>
                                    </h2>
                                    <figure class="highlight shell">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br><span
                                                            class="line">2</span><br><span
                                                            class="line">3</span><br><span
                                                            class="line">4</span><br><span
                                                            class="line">5</span><br><span
                                                            class="line">6</span><br><span
                                                            class="line">7</span><br><span
                                                            class="line">8</span><br><span
                                                            class="line">9</span><br><span
                                                            class="line">10</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line"><span class="meta">#</span><span
                                                            class="bash">下载镜像</span></span><br><span class="line">docker pull portainer/portainer</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash">运行</span></span><br><span
                                                            class="line">docker run </span><br><span class="line">		-d </span><br><span
                                                            class="line">		-p 9000:9000 </span><br><span
                                                            class="line">        -v /var/run/docker.sock:/var/run/docker.sock </span><br><span
                                                            class="line">        -v portainer_data:/data portainer/portainer</span><br><span
                                                            class="line"><span class="meta"> #</span><span class="bash">注意docker.sock的挂载。否则选择不了<span
                                                            class="built_in">local</span>的docker</span></span><br><span
                                                            class="line"><span class="meta"> #</span><span class="bash">管理台访问即可</span></span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <h2 id="5-安装RabbitMq"><a href="#5-安装RabbitMq" class="headerlink"
                                                             title="5.安装RabbitMq"></a>5.安装RabbitMq</h2>
                                    <figure class="highlight shell">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br><span
                                                            class="line">2</span><br><span
                                                            class="line">3</span><br><span
                                                            class="line">4</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line"><span class="meta">#</span><span
                                                            class="bash">拉取最新镜像 :management 后缀代表有管理端页面</span></span><br><span
                                                            class="line">docker pull rabbitmq:management</span><br><span
                                                            class="line"><span class="meta">#</span><span class="bash"> 运行</span></span><br><span
                                                            class="line"> docker run -d --name rabbitmq --publish 5671:5671 --publish 5672:5672 --publish 4369:4369 --publish 25672:25672 --publish 15671:15671 --publish 15672:15672 rabbitmq:management</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <h3 id="5-1-管理台地址"><a href="#5-1-管理台地址" class="headerlink" title="5.1 管理台地址"></a>5.1
                                        管理台地址</h3>
                                    <p><a href="http://47.94.236.207:15672/" target="_blank" rel="noopener">http://47.94.236.207:15672/</a>
                                    </p>
                                    <p>默认账号名密码：guest/guest</p>
                                    <h3 id="5-2-使用建议"><a href="#5-2-使用建议" class="headerlink" title="5.2 使用建议"></a>5.2
                                        使用建议</h3>
                                    <ul>
                                        <li>创建自定义用户名</li>
                                        <li>ln -s /home/node/node-v8.12.0-linux-x64/bin/npm /usr/local/bin/</li>
                                        <li>ln -s /home/node/node-v8.12.0-linux-x64/bin/node /usr/local/bin/</li>
                                    </ul>
                                    <h2 id="6-安装hexo"><a href="#6-安装hexo" class="headerlink" title="6.安装hexo"></a>6.安装hexo
                                    </h2>
                                    <p>完成上面两步后，此时当我们在桌面点击鼠标右键时，会有一系列新的选项，这里我们需要用到的<code>Git Bash</code>，接下来我们会用命令行来完成剩余的工作。
                                    </p>
                                    <h5>1.安装Hexo</h5><br> 根据上面的方法，打开<code>Git Bash</code>控制台，之后系统会打开一个窗口，窗口内是黑色的背景和一堆英文，看不懂没有关系跟着步骤一步一步做就行。<br><br>在控制台中输入以下命令：<br><br>
                                    <figure class="highlight plain">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line">npm install -g hexo</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <br><br>之后系统会自动去<code>Git</code>上下载并安装<code>Hexo</code>，接下来会一直循环显示/-\这三个符号，这表示系统在下载需要的文件。<br><br>但是根据笔者遇到的情况，使用<code>npm</code>安装可能会出现卡住的现象导致无法正常安装，解决的办法就是修改<code>npm</code>的安装源，大家可以选择以下方法中的一个即可（正常下载的朋友就略过这里）<br><br>1.
                                    通过config命令：<br><br> <code>npm config set registry
                                    http://registry.cnpmjs.org</code><br><br> <code>npm info underscore</code><br><br>2.
                                    通过命令行指定<br><br> <code>npm -registry http://registry.cnpmjs.org info
                                    underscore</code><br><br>然后再来执行一次最开始的命令：<br><br>
                                    <figure class="highlight plain">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line">npm install -g hexo</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <br><br>耐心等待一会儿，<code>Hexo</code>就下载好了。<br><br><h5>2.生成Hexo静态博客</h5>                                    <ol>
                                        <li><p>选一个适合的地方存放博客文件</p>
                                            <p><code>cd</code>命令可以在命令行中快速指定到一个地址，比如：</p>
                                            <p><code>cd D:\</code></p>
                                            <p><code>D:</code></p>
                                            <p>这样可以快速的指定要一个地址上去，然后是创建一个文件夹进行归类管理</p>
                                            <p><code>mkdir blog</code></p>
                                            <p>
                                                这样在D盘我们就创建了一个名字为<code>blog</code>的文件夹。接下来我们在进入<code>blog</code>文件夹中，同样使用<code>cd</code>命令。
                                            </p>
                                            <p><code>cd blog</code></p>
                                            <p>此时我们进入了我们选好的地址中，执行以下命令：</p>
                                            <p><code>hexo init</code></p>
                                            <p>然后你会看到以下的反馈：</p>
                                            <p><code>[info] Copying data</code></p>
                                            <p><code>[info] You are almost done! Don&#39;t forget to run &#39;npm
                                                install&#39;...</code></p>
                                            <p>所以接下来就要执行</p>
                                            <p><code>npm install</code></p>
                                            <p>等待他完成后我们可以进去到文件夹中看到以下目录：</p>
                                            <ul>
                                                <li><code>node_modules</code>： Hexo的功能JavaScript文件</li>
                                                <li><code>public</code>：生成静态网页文件</li>
                                                <li><code>scaffolds</code>：工具模板</li>
                                                <li><code>source</code>：
                                                    <ul>
                                                        <li><code>/_drafts</code>-草稿文件夹</li>
                                                        <li><code>/_posts</code>-文章文件夹</li>
                                                    </ul>
                                                </li>
                                                <li><code>themes</code>：用来存放皮肤的文件夹</li>
                                                <li><code>_config.yml</code>：全局配置文件</li>
                                                <li><code>db.json</code>：json格式的静态常量数据库</li>
                                            </ul>
                                        </li>
                                    </ol>
                                    <ol>
                                        <li>查看生成的静态网页</li>
                                    </ol>
                                    <p>进入到blog的地址后，执行如下的命令：</p>
                                    <figure class="highlight plain">
                                        <table>
                                            <tr>
                                                <td class="gutter">
                                                    <pre><span class="line">1</span><br></pre>
                                                </td>
                                                <td class="code">
                                                    <pre><span class="line">hexo generate` 用来生成静态网页相关的文件，这些文件会存储在`public`中，也可使用简单的命令`hexo g</span><br></pre>
                                                </td>
                                            </tr>
                                        </table>
                                    </figure>
                                    <p>常用的指令</p>
                                    <p>hexo clean //清除缓存<br>hexo g //重新生成代码<br>hexo s //部署到本地</p>
                                </div>
                                <footer class="post-footer">                                    <div class="post-tags">                                        <a href="/tags/Linux/" rel="tag"># Linux</a>                                    </div>
                                    <div class="post-nav">
                                        <div class="post-nav-next post-nav-item">                                            <a href="/2018/10/13/hello-world/" rel="next" title="Hello World">
                                                <i class="fa fa-chevron-left"></i> Hello World
                                            </a>                                        </div>                                        <span class="post-nav-divider"></span>                                        <div class="post-nav-prev post-nav-item">                                            <a href="/2018/10/14/test/" rel="prev" title="test">
                                                test <i class="fa fa-chevron-right"></i>
                                            </a>                                        </div>
                                    </div>
                                </footer>
                            </div>
                        </article>
                        <div class="post-spread">                        </div>
                    </div>
                </div>
            </div>            <div class="sidebar-toggle">
                <div class="sidebar-toggle-line-wrap">
                    <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
                </div>
            </div>
            <aside id="sidebar" class="sidebar">
                <div class="sidebar-inner">
                    <ul class="sidebar-nav motion-element">
                        <li class="sidebar-nav-toc sidebar-nav-active" data-target="post-toc-wrap">
                            文章目录
                        </li>
                        <li class="sidebar-nav-overview" data-target="site-overview-wrap">
                            站点概览
                        </li>
                    </ul>
                    <section class="site-overview-wrap sidebar-panel">
                        <div class="site-overview">
                            <div class="site-author motion-element" itemprop="author" itemscope
                                 itemtype="http://schema.org/Person">
                                <img class="site-author-image" itemprop="image"
                                     src="/images/header.jpg"
                                     alt="Vangelis"/>
                                <p class="site-author-name" itemprop="name">Vangelis</p>
                                <p class="site-description motion-element" itemprop="description">
                                    凭谁问甘苦，梦中事，笑是真笑，哭是真哭</p>
                            </div>
                            <nav class="site-state motion-element">
                                <div class="site-state-item site-state-posts">
                                    <a href="/archives">
                                        <span class="site-state-item-count">3</span>
                                        <span class="site-state-item-name">日志</span>
                                    </a>
                                </div>
                                <div class="site-state-item site-state-categories">
                                    <span class="site-state-item-count">2</span>
                                    <span class="site-state-item-name">分类</span>
                                </div>
                                <div class="site-state-item site-state-tags">
                                    <span class="site-state-item-count">1</span>
                                    <span class="site-state-item-name">标签</span>
                                </div>
                            </nav>
                        </div>
                    </section>
                    <!--noindex-->
                    <section class="post-toc-wrap motion-element sidebar-panel sidebar-panel-active">
                        <div class="post-toc">
                            <div class="post-toc-content">
                                <ol class="nav">
                                    <li class="nav-item nav-level-1">
                                        <a class="nav-link" href="#服务器安装的一些坑">
                                            <span class="nav-number">1.</span> <span class="nav-text">服务器安装的一些坑</span>
                                        </a>
                                        <ol class="nav-child">
                                            <li class="nav-item nav-level-2">
                                                <a class="nav-link" href="#0-自己服务器的一些信息">
                                                    <span   class="nav-number">1.1.</span> <span class="nav-text">0.自己服务器的一些信息</span></a>
                                                <ol class="nav-child">
                                                    <li class="nav-item nav-level-3">
                                                        <a class="nav-link" href="#0-1-一些端口域名规划">
                                                            <span class="nav-number">1.1.1.</span> <span
                                                                class="nav-text">0.1 一些端口域名规划</span>
                                                        </a>
                                                    </li>
                                                </ol>
                                            </li>
                                            <li class="nav-item nav-level-2">
                                                <a class="nav-link" href="#1-docker安装"><span
                                                        class="nav-number">1.2.</span> <span
                                                        class="nav-text">1.docker安装</span></a>
                                            </li>
                                            <li class="nav-item nav-level-2"><a class="nav-link" href="#2-安装nginx"><span
                                                    class="nav-number">1.3.</span> <span
                                                    class="nav-text">2.安装nginx</span></a>
                                                <ol class="nav-child">
                                                    <li class="nav-item nav-level-3"><a class="nav-link"
                                                                                        href="#2-1-nginx一些常用的指令"><span
                                                            class="nav-number">1.3.1.</span> <span class="nav-text">2.1 nginx一些常用的指令</span></a>
                                                    </li>
                                                </ol>
                                            </li>
                                            <li class="nav-item nav-level-2"><a class="nav-link" href="#3-安装mysql"><span
                                                    class="nav-number">1.4.</span> <span
                                                    class="nav-text">3.安装mysql</span></a>
                                            </li>
                                            <li class="nav-item nav-level-2"><a class="nav-link"
                                                                                href="#4-安装portainer"><span
                                                    class="nav-number">1.5.</span> <span
                                                    class="nav-text">4.安装portainer</span></a>
                                            </li>
                                            <li class="nav-item nav-level-2"><a class="nav-link"
                                                                                href="#5-安装RabbitMq"><span
                                                    class="nav-number">1.6.</span> <span
                                                    class="nav-text">5.安装RabbitMq</span></a>
                                                <ol class="nav-child">
                                                    <li class="nav-item nav-level-3">
                                                        <a class="nav-link" href="#5-1-管理台地址"><span class="nav-number">1.6.1.</span>
                                                            <span class="nav-text">5.1 管理台地址</span></a>
                                                    </li>
                                                    <li class="nav-item nav-level-3">
                                                        <a class="nav-link" href="#5-2-使用建议"><span class="nav-number">1.6.2.</span>
                                                            <span class="nav-text">5.2 使用建议</span></a>
                                                    </li>
                                                </ol>
                                            </li>
                                            <li class="nav-item nav-level-2">
                                                <a class="nav-link" href="#6-安装hexo"><span
                                                        class="nav-number">1.7.</span> <span
                                                        class="nav-text">6.安装hexo</span></a>
                                                <ol class="nav-child">
                                                    <li class="nav-item nav-level-5">
                                                        <a class="nav-link" href="#undefined"><span class="nav-number">1.7.0.0.1.</span>
                                                            <span class="nav-text">1.安装Hexo</span></a>
                                                    </li>
                                                    <li class="nav-item nav-level-5">
                                                        <a class="nav-link" href="#undefined"><span class="nav-number">1.7.0.0.2.</span>
                                                            <span class="nav-text">2.生成Hexo静态博客</span></a>
                                                    </li>
                                                </ol>
                                            </li>
                                        </ol>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </section>
                    <!--/noindex-->
                </div>
            </aside>
        </div>
    </main>
    <footer id="footer" class="footer">
        <div class="footer-inner">
            <div class="copyright">&copy; <span itemprop="copyrightYear">2018</span>
                <span class="with-love">
    <i class="fa fa-"></i>
  </span>
                <span class="author" itemprop="copyrightHolder">Vangelis</span>
            </div>
            <div class="powered-by"><a class="theme-link" target="_blank" href="https://hexo.io">Vangelis</a> 的个人博客
            </div>
    </footer>
    <div class="back-to-top">
        <i class="fa fa-arrow-up"></i>    </div>
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
<script type="text/javascript" src="/js/src/utils.js?v=5.1.4"></script><script type="text/javascript" src="/js/src/motion.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/affix.js?v=5.1.4"></script><script type="text/javascript" src="/js/src/schemes/pisces.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/scrollspy.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/post-details.js?v=5.1.4"></script>
<script type="text/javascript" src="/js/src/bootstrap.js?v=5.1.4"></script>
<link rel="stylesheet" href="/lib/algolia-instant-search/instantsearch.min.css">
<script src="/lib/algolia-instant-search/instantsearch.min.js"></script>
<script src="/js/src/algolia-search.js?v=5.1.4"></script>
</body>
</html>
