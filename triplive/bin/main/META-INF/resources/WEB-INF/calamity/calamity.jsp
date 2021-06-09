<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 긴급속보</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/bootstrap4/bootstrap.min.css">
<link href="../../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/offers_responsive.css">
<link rel="stylesheet" type="text/css" href="../../styles/elements_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/elements_responsive.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>

<script>
	// $(function() {
	// 	$('.offers_price').click(function(){
			
			
	// 		$(this).next().toggle('slow');
	// 		$('.offers_price').css('position', 'relative')

	// 	});

	// });
	

</script> 




</head>
<body>

<div class="super_container">

<!-- 헤더 -->
<%@include file ="../header.jsp" %>
<!-- 헤더 종료 -->

<!-- Home -->

<div class="home">
	<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../../images/calamityimage.jpg"></div>
	<div class="home_content">
		<div class="home_title">breaking news</div>
	</div>
</div>

<!-- offer -->
<%@include file ="calaoffer.jsp" %>
<!-- offer 종료 -->

	<div class="container">
		<div class="row">
			<div class="col-lg-1 temp_col"></div>
			<div class="col-lg-11">
				
				<!-- Offers Sorting -->
				<div class="offers_sorting_container">
					<ul class="offers_sorting float-right">
						<!-- <li>
							<span class="sorting_text">price</span>
							<i class="fa fa-chevron-down"></i>
							<ul>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".price_sorting"><span>show all</span></li>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>ascending</span></li>
							</ul>
						</li> -->
						<!-- <li>
							<span class="sorting_text">지역</span>
							<i class="fa fa-chevron-down"></i>
							<ul>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>전체</span></li>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>alphabetical</span></li>
							</ul>
						</li> -->
						
						<!-- <li>
							<span class="sorting_text">stars</span>
							<i class="fa fa-chevron-down"></i>
							<ul>
								<li class="filter_btn" data-filter="*"><span>show all</span></li>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "stars" }'><span>ascending</span></li>
								<li class="filter_btn" data-filter=".rating_3"><span>3</span></li>
								<li class="filter_btn" data-filter=".rating_4"><span>4</span></li>
								<li class="filter_btn" data-filter=".rating_5"><span>5</span></li>
							</ul>
						</li> -->
						<!-- <li class="distance_item">
							<span class="sorting_text">distance from center</span>
							<i class="fa fa-chevron-down"></i>
							<ul>
								<li class="num_sorting_btn"><span>distance</span></li>
								<li class="num_sorting_btn"><span>distance</span></li>
								<li class="num_sorting_btn"><span>distance</span></li>
							</ul>
						</li> -->
						<!-- <li>
							<span class="sorting_text">조회수</span>
							<i class="fa fa-chevron-down"></i>
							<ul>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".reviews_sorting"><span>기본</span></li>
								<li class="sort_btn" data-isotope-option='{ "sortBy": "reviews" }' data-parent=".reviews_sorting"><span>오름차순</span></li>
								<li class="num_sorting_btn"><span>내림차순</span></li>
							</ul>
						</li>
						<li> -->
							<!-- <span class="button btn-success"><a href="write.do">글남기기</a></span> -->
							<!-- <span class="button sorting_text"><a href="#">글 남기기</a></span> -->
						</li>
					</ul>
				</div>
			</div>
			

			<c:forEach items="${list}" var="l">
				<div class="col-lg-12">
					<!-- Offers Grid -->
					<div class="">
						<!-- Offers Item -->
						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<!-- <div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										Image by https://unsplash.com/@kensuarez
										<div class="offers_image_background" style="background-image:url(../images/offer_1.jpg)"></div>
										<div class="offer_name"><a href="single_listing.html">grand castle</a></div>
									</div>
								</div> -->
								
								<div class="col-lg-11">
									<div class="elements_accordions">

										<div class="accordion_container">
											<div class="accordion d-flex flex-row align-items-center"><div>${l.title}</div></div>
											<div class="accordion_panel">
												<p>${l.txtOriginCn}</p>
											</div>
										</div>
									</div>
	
									<div class="offers_content" >
										<div id="showall" class="offers_price" style="width: 80%; text-overflow: ellipsis;  white-space: nowrap; overflow: hidden; display: block; padding:6px;"></div>
			
										<div class="offers_text" id='content' style="width: 80%; text-overflow: ellipsis;  white-space: nowrap; overflow: hidden;"></div>
			
										<div class="offer_reviews">
											<div class="offer_reviews_content">
												<div class="offer_reviews_title">${l.countryNm}</div>
												<div class="offer_reviews_subtitle float-right">작성일: ${l.wrtDt}</div>
											</div>
											<div class="offer_reviews_content">
											</div>
											<img src="../../img/countryflag/${l.isoAlp2}.gif" alt="" class="offer_reviews_rating text-center" >
										</div>
										<hr>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</c:forEach>


			<!-- 페이징 -->	
			<div class="container">
	
				<div class="row">
					<div class="col-lg-5 temp_col"></div>
					<nav aria-label="Page navigation example" class="col-lg-3">
						<ul class="pagination pagination-sm">
						<li class="page-item">
							<a class="page-link" href="?page=1&isoAlp2=${param.isoAlp2}&keyword=${param.keyword}" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
							<span class="sr-only">이전</span>
							</a>
						</li>

						<c:forEach var="page" items="${pageList}" begin="0" end="10" step="1">
							<c:if test="${page ne null}">
								<li class="page-item"><a class="page-link" href="?page=${page}&isoAlp2=${param.isoNum}&keyword=${param.keyword}">${page}</a></li>
							</c:if>
						</c:forEach>
							<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							<span class="sr-only">다음</span>
							</a>
							
						</li>
						</ul>
					</nav>
				</div>
			</div>

		</div>
	</div>	
</div>

<!-- Footer -->

<!-- 헤더 -->
<%@include file ="../footer.jsp" %>
<!-- 헤더 종료 -->



</div>

<script src="../../js/jquery-3.2.1.min.js"></script>
<script src="../../styles/bootstrap4/popper.js"></script>
<script src="../../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../../plugins/easing/easing.js"></script>
<script src="../../plugins/parallax-js-master/parallax.min.js"></script>
<script src="../../js/offers_custom.js"></script>
<script src="../../js/elements_custom.js"></script>
<script src="../../styles/bootstrap4/popper.js"></script>
<script src="../../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/greensock/TweenMax.min.js"></script>
<script src="../../plugins/greensock/TimelineMax.min.js"></script>
<script src="../../plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="../../plugins/greensock/animation.gsap.min.js"></script>
<script src="../../plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="../../plugins/progressbar/progressbar.min.js"></script>
<script src="../../plugins/jquery-circle-progress-1.2.2/circle-progress.js"></script>
<script src="../../plugins/parallax-js-master/parallax.min.js"></script>

</body>

</html>