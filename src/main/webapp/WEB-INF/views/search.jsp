<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ArtU</title>
	  <link href="${cp}/css/bootstrap.min.css" rel="stylesheet">
	  <link href="${cp}/css/style.css" rel="stylesheet">

	  <link rel="stylesheet" href="${cp}/search/css/bootstrap.min.css">
	  <link rel="stylesheet" href="${cp}/search/fontawesome/css/all.min.css">
	  <link rel="stylesheet" href="${cp}/search/css/templatemo-style.css">

	  <script src="${cp}/js/jquery.min.js" type="text/javascript"></script>
	  <script src="${cp}/js/bootstrap.min.js" type="text/javascript"></script>
	  <script src="${cp}/js/layer.js" type="text/javascript"></script>

      <script src="${cp}/js/html5shiv.min.js"></script>
      <script src="${cp}/js/respond.min.js"></script>

  </head>
  <body>

	<jsp:include page="include/header.jsp"/>



	<div class="tm-hero d-flex justify-content-center align-items-center" style="background-attachment: scroll; background-image: url(${cp}/search/img/1.jpg);background-size: 100% 100%" >
		<div class="d-flex tm-search-form">
			<input class="form-control tm-search-input" type="text" placeholder="Search" aria-label="Search" id="newSearchKeyWord">
			<button class="btn btn-outline-success tm-search-btn" id="click" onclick="searchPre()">
				<i class="fas fa-search"></i>
			</button>
			<ul class="show" id="show"
				style="position: absolute;
				margin-top: 55px;
				background-color: rgba(116,116,116,0.7);
				width: 360px; list-style: none;
				border-radius: 10px">
			</ul>
		</div>

	</div>

<%--	<div class="container">--%>
<%--		<div class="row margin-t">--%>
<%--			<div class="form-horizontal">--%>
<%--				<div class="col-md-2 col-sm-2"></div>--%>
<%--				<div class="form-group form-group-lg col-sm-6 col-md-6">--%>
<%--					<input type="text" class="form-control" id="newSearchKeyWord" placeholder="疯狂Java讲义" />--%>
<%--				</div>--%>
<%--				<button class="btn btn-primary btn-lg col-sm-2 col-md-2 big-button" onclick="searchPre()">查找商品</button>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--	</div>--%>

	<div class="container-fluid tm-container-content tm-mt-60">
		<div class="row tm-mb-90 tm-gallery" id="searchResultArea">
		</div>
	</div>




	<jsp:include page="include/foot.jsp"/>


	<script src="${cp}/search/js/plugins.js"></script>
	<script>
		$(window).on("load", function() {
			$('body').addClass('loaded');
		});
	</script>

	  <script type="text/javascript">

		  searchInit();
		  function searchInit() {
			  var searchKeyWord = "${searchKeyWord}";
			  if(searchKeyWord != "" && searchKeyWord != undefined && searchKeyWord != null){
				  updateList(searchKeyWord);
			  }
		  }

		  function searchPre() {
			  var searchKeyWord = document.getElementById("newSearchKeyWord").value;
			  updateList(searchKeyWord);
		  }

		  function updateList(searchKeyWord) {
			  var searchResultArea = document.getElementById("searchResultArea");
			  var searchResult = search(searchKeyWord);
			  var html = "";
			  searchResultArea.innerHTML = "";
			  for(var i=0;i<searchResult.length;i++){
				  var imgURL = "${cp}/img/"+searchResult[i].id+".jpg";
				  html+=
					  '<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5" onclick="productDetail('+searchResult[i].id+')">'+
					  '<figure class="tm-video-item">'+
					  '<img src="'+imgURL+'" alt="Image" class="img-fluid"/>'+
					  '<figcaption class="d-flex align-items-center justify-content-center">'+
					  '<p class="product-name" style="color: white; font-size: large; font-weight: bold">'+searchResult[i].name+'</p>'+
					  '</figcaption>'+
					  '</figure>'+
					  '</div>';
			  }
			  searchResultArea.innerHTML += html;
		  }

		  function search(searchKeyWord) {
			  var search = {};
			  search.searchKeyWord = searchKeyWord;
			  var searchResult = "";
			  $.ajax({
				  async : false,
				  type : 'POST',
				  url : '${cp}/searchProduct',
				  data : search,
				  dataType : 'json',
				  success : function(result) {
					  searchResult = result.result;
				  },
				  error : function() {
					  layer.alert('Get Information Failed');
				  }
			  });
			  searchResult = eval("("+searchResult+")");
			  return searchResult;
		  }

		  function productDetail(id) {
			  var product = {};
			  var jumpResult = '';
			  product.id = id;
			  $.ajax({
				  async : false,
				  type : 'POST',
				  url : '${cp}/productDetail',
				  data : product,
				  dataType : 'json',
				  success : function(result) {
					  jumpResult = result.result;
				  },
				  error : function() {
					  layer.alert('Get Information Failed');
				  }
			  });

			  if(jumpResult == "success"){
				  window.location.href = "${cp}/product_detail";
			  }
		  }

		  $("#newSearchKeyWord").keydown(function (){
			  let searchWord = $("#newSearchKeyWord").val();
			  console.log(searchWord);
			  if(searchWord === null || searchWord === ""){
				  $("#show").empty();
				  return;
			  }
			  var searchKeyWord = document.getElementById("newSearchKeyWord").value;
			  var searchResultArea = document.getElementById("show");
			  var searchResult = search(searchKeyWord);
			  var html = "";
			  var len = searchResult.length;
			  searchResultArea.innerHTML = "";
			  if(len < 6){
				  for(var i=0;i<searchResult.length;i++){
					  html+= '<li style="line-height: 35px; color: white; font-weight: bold; cursor: pointer" onclick="getSelect(this)">'+searchResult[i].name+'</li>';
				  }
			  }else{
				  for(var i=0;i <= 5;i++){
					  html+= '<li style="line-height: 35px; color: white; font-weight: bold; cursor: pointer" onclick="getSelect(this)">'+searchResult[i].name+'</li>';
				  }
			  }

			  searchResultArea.innerHTML += html;
		  });

		  function getSelect(obj){
		  	var select = $(obj).text();
		  	$("#newSearchKeyWord").val(select);
		  	document.getElementById("click").click();

		  }
	  </script>

	  </body>
</html>