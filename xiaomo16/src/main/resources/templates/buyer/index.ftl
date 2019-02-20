
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="">

    <title>首页</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="/css/common/bootstrap-4.1.1/dist/css/bootstrap.min.css" th:href="@{static/css/common/bootstrap-4.1.1/dist/css/bootstrap.min.css}" rel="stylesheet">-->

    <!-- Custom styles for this template -->
    <!--<link href="/css/common/dashboard.css" th:href="@{static/css/common/common/dashboard.css}" rel="stylesheet">-->

    <link href="/xiaomo/css/common/bootstrap-4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/xiaomo/css/common/dashboard.css">

    <#--<link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">-->
    <#--<link rel="stylesheet" href="/xiaomo/css/style.css">-->
    <!--    <link href="/css/carousel.css" rel="stylesheet">-->
</head>

<body>
<nav th:fragment="topbar" class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="xiaomo/user/index">XIAOMO </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/xiaomo/user/index">网站首页 </a>
            </li>

            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="搜索店铺或商品" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜一搜</button>
            </form>
        </ul>


    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <main role="main" class="col-md-12">


            <!--轮播区域-->
            <div id="myCarousel" class="carousel slide col-md-10 offset-md-1" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <img class="first-slide" src="../../xiaomo/images/1.jpg"  alt="First slide">
                        <div class="container">

                        </div>
                    </div>
                    <div class="carousel-item active">
                        <img class="second-slide" src="https://www.tokyodome-hotels.co.jp/common/img/restaurants/img_slider03.jpg"  alt="Second slide">
                        <div class="container">

                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="third-slide" src="../../xiaomo/images/3.jpg"  alt="Third slide">
                        <div class="container">

                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


            <!-- Marketing messaging and featurettes
            ================================================== -->
            <!-- Wrap the rest of the page in another container to center all the content. -->

            <div class="">

                <div class=" py-5 bg-light ">
                    <div >
                        <h3><a href="/index" style="color: #040505">所有商品:</a></h3>
                    </div>
                    <hr/>

                    <#--<!--商品区域&ndash;&gt;-->
                    <#--<div class="row" >-->
                        <#--<div class="col-md-2 ">-->
                            <#--<ul class="nav">-->
                                <#--<li class="nav-link" id="shopCategoryList">-->

                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">鸡鸭</a><span >/</span>-->
                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">鱼类</a><span >/</span>-->
                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">猪肉</a><span >/</span>-->
                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">牛羊</a><span >/</span>-->
                                    <#--<hr/>-->
                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">素菜</a><span >/</span>-->
                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">前菜</a><span >/</span>-->
                                    <#--<a class="nav-item shopCategory" style="color: #040505" href="#">饮品</a><span >/</span>-->

                                <#--</li>-->
                            <#--</ul>-->
                        <#--</div>-->
                    <!--卡牌展示区-->
                    <table width="338"  border="0"  cellpadding="0" cellspacing="0">
                        <tr>

                        <div class="row col-md-10" id="productListRow">

                            <div class="col-lg-3 col-md-4 col-sm-6">

                                <#list productInfoPage.content as product>
                                    <#if 0<product_index  && (product_index % 6)==0>
                                    </tr>
                                    <tr>
                                    </#if>
                                <td>
                                <form role="form" method="post" action="/xiaomo/buy/order/guodu">
                                    <div class="card mb-4 box-shadow">
                                        <img class="card-img-top"  src="${product.productIcon}" alt="商品标题">
                                        <div class="card-body">

                                            <h4><input readonly="readonly" type="text" name="productId" style="border: none;width: 150px ;visibility:hidden " value="${(product.productId)!''}"/></h4>
                                            <h4><input readonly="readonly" type="text" name="productName" style="border: none;width: 150px" value="${(product.productName)!''}"/></h4>

                                            <span>￥ ${(product.productPrice)} &nbsp;   &nbsp;  &nbsp; &nbsp;    </span>
                                            <button type="submit" class="btn btn-default btn-success">购买</button>

                                        </div>
                                    </div>

                                </form>
                                </td>
                                </#list>
                        </tr>
                    </table>
                </div>

            </div>




                    <!--分页条-->
                    <div class="container" >
                        <div class="row">
                            <!-- 分页结果信息 -->
                            <div class="col-md-6" id="page_info">
                                分页信息
                            </div>

                            <!-- 导航条 -->
                            <div class="col-md-6" id="page_nav">
                                <nav aria-label="...">
                                    <ul class="pagination">
                                        <#--<li class="page-item disabled">-->
                                            <#--<a class="page-link" href="#" tabindex="-1">Previous</a>-->
                                        <#--</li>-->
                                        <#--<li class="page-item"><a class="page-link" href="#">1</a></li>-->
                                        <#--<li class="page-item active">-->
                                            <#--<a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>-->
                                        <#--</li>-->
                                        <#--<li class="page-item"><a class="page-link" href="#">3</a></li>-->
                                        <#--<li class="page-item">-->
                                            <#--<a class="page-link" href="#">Next</a>-->
                                        <#--</li>-->
                                        <#if currentPage lte 1>
                                                <li class="disabled"><a href="#">上一页</a></li>
                                        <#else>
                                                <li><a href="/xiaomo/user/index?page=${currentPage - 1}&size=${size}">上一页</a></li>
                                        </#if>

                                        <#list 1..productInfoPage.getTotalPages() as index>
                                            <#if currentPage == index>
                                                <li class="disabled"><a href="#">${index}</a></li>
                                            <#else>
                                                <li><a href="/xiaomo/user/index?page=${index}&size=${size}">${index}</a></li>
                                            </#if>
                                        </#list>

                                        <#if currentPage gte productInfoPage.getTotalPages()>
                                            <li class="disabled"><a href="#">下一页</a></li>
                                        <#else>
                                            <li><a href="/xiaomo/user/index?page=${currentPage + 1}&size=${size}">下一页</a></li>
                                        </#if>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>


                <#--&lt;#&ndash;分页&ndash;&gt;-->
                    <#--<div class="col-md-12 column">-->
                        <#--<ul class="pagination ">-->
                    <#--<#if currentPage lte 1>-->
                        <#--<li class="disabled"><a href="#">上一页</a></li>-->
                    <#--<#else>-->
                        <#--<li><a href="/xiaomo/user/index?page=${currentPage - 1}&size=${size}">上一页</a></li>-->
                    <#--</#if>-->

                    <#--<#list 1..productInfoPage.getTotalPages() as index>-->
                        <#--<#if currentPage == index>-->
                            <#--<li class="disabled"><a href="#">${index}</a></li>-->
                        <#--<#else>-->
                            <#--<li><a href="/xiaomo/user/index?page=${index}&size=${size}">${index}</a></li>-->
                        <#--</#if>-->
                    <#--</#list>-->

                    <#--<#if currentPage gte productInfoPage.getTotalPages()>-->
                        <#--<li class="disabled"><a href="#">下一页</a></li>-->
                    <#--<#else>-->
                        <#--<li><a href="/xiaomo/user/index?page=${currentPage + 1}&size=${size}">下一页</a></li>-->
                    <#--</#if>-->
                        <#--</ul>-->
                    <#--</div>-->


                </div>

            </div>

            <hr class="featurette-divider">

            <!-- FOOTER -->
            <footer class="container">
                <p class="float-right"><a href="https://getbootstrap.com/docs/4.1/examples/carousel/#">Back to top</a></p>
                <p>© 2017-2018 Company, Inc. · <a href="https://getbootstrap.com/docs/4.1/examples/carousel/#">Privacy</a> · <a href="https://getbootstrap.com/docs/4.1/examples/carousel/#">Terms</a></p>
            </footer>

        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!--以下几种路径的写法都可以找到资源-->
<script src="js/common/jquery.min.js"></script>
<script src="../js/common/popper.min.js"></script>
<script src="../../css/common/bootstrap-4.1.1/dist/js/bootstrap.min.js"></script>
<script src="/js/common/holder.min.js"></script>
<script src="/js/common/index.js"></script>

<!-- Icons -->
<script src="/js/common/feather.min.js"></script>
<script>
    feather.replace()
</script>

<!-- Graphs -->
<script src="/js/common/Chart.min.js"></script>
<script>

</script>

<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" viewBox="0 0 500 500" preserveAspectRatio="none"
     style="display: none; visibility: hidden; position: absolute; top: -100%; left: -100%;">
    <defs>
        <style type="text/css"></style>
    </defs>
    <text x="0" y="25" style="font-weight:bold;font-size:25pt;font-family:Arial, Helvetica, Open Sans, sans-serif">
        500x500
    </text>
</svg>
</body>
</html>
