<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
    <link rel="stylesheet" href="${path}/resources/css/1style.css" />
    <script
      src="https://kit.fontawesome.com/f5af58ba34.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div id="wrap">
      <!-- 네비게이션 따라다니게 -->
      <div class="navwrap">
        <div class="nav_set">
          <div class="nav">
            <span class="home"><a href="${path}/home.do">HOME</a></span>
            <span>|</span>
            <span class="coffeee"><a href="${path}/place/placelist.do">커피</a></span>
            <span>|</span>
            <span class="restaurant"><a href="${path}/place/jmt.do">맛집</a></span>
            <span>|</span>
            <span class="atv"><a href="${path}/place/act.do">액티비티</a></span>
            <span>|</span>
            <span class="hotel"><a href="${path}/place/hotel.do">숙소</a></span>
            <span>|</span>
            <span class="feed"><a href="#">피드</a></span>
            <span>|</span>
            <span class="talk"><a href="${path}/talk/list.do">TALK</a></span>
            <div class="nav_right">
              <div class="search">
                <i class="fa-solid fa-magnifying-glass"></i>
              </div>
              <div class="nav_feed_profile">
                <a href="#"><img src="${path}/resources/image/profile.jpg" alt="" /></a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <header>
        <div class="logo">
          <img src="${path}/resources/image/logo_w.png" alt="" />
        </div>
      </header>

      <div class="main_img_wrap">
        <div class="main_img">
          <img src="${path}/resources/image/한옥마을.jpg" alt="" />
        </div>
        <p class="main_coppy">서울 한옥 REVIEW 보기</p>
      </div>

      <div class="main_bar">
        <!-- 이미지 넘어갈 때 같이 넘어가는 원 -->
        <div class="main_bar1"></div>
        <div class="main_bar2"></div>
        <div class="main_bar3"></div>
        <div class="main_bar4"></div>
      </div>

      <div class="best_feed">
        <p class="best_feed_copy">BEST FEED</p>
      </div>

      <div class="feedwrap">
        <div class="feed1">
          <div class="feed_line1"></div>

          <!-- 피드 프로필 -->

          <div class="feed_profile">
            <a href="#"
              ><img class="feed_profile_img" src="${path}/resources/image/profile.jpg" alt=""
            /></a>

            <div class="id">carrot</div>
            <div
              class="place"
              OnClick="location.href ='http://URL주소'"
              style="cursor: pointer"
            >
              <img class="placeholder" src="${path}/resources/image/placeholder.png" />
              <span>서울 강남구 논현로 534 지하1층 두젠틀</span>
              <a href="https://www.instagram.com/dogentle_gangnam/"></a>
            </div>
          </div>
          <!-- 피드 이미지 -->
          <div>
            <img class="feed_img" src="${path}/resources/image/카페.jpg" alt="" />
          </div>

          <!-- 피드 좋아요/전체보기 -->
          <div class="feed_bottom">
            <div class="feed_good"><i class="fa-regular fa-heart"></i></div>

            <div class="view_all"><a href="#"> 전체보기</a></div>
          </div>
          <div class="feed_line2"></div>
        </div>

        <div class="feed2">
          <div class="feed_line1"></div>

          <!-- 피드 프로필 -->
          <div class="feed_profile">
            <a href="#"
              ><img class="feed_profile_img" src="${path}/resources/image/profile.jpg" alt=""
            /></a>

            <div class="id2">carrot</div>
            <div
              class="place2"
              OnClick="location.href ='http://URL주소'"
              style="cursor: pointer"
            >
              <img class="placeholder2" src="${path}/resources/image/placeholder.png" />
              <span>서울 강남구 논현로 534 지하1층 두젠틀</span>
              <a href="https://www.instagram.com/dogentle_gangnam/"></a>
            </div>
          </div>
          <!-- 피드 이미지 -->
          <div>
            <img class="feed_img" src="${path}/resources/image/카페.jpg" alt="" />
          </div>

          <!-- 피드 좋아요/전체보기 -->
          <div class="feed_bottom">
            <div class="feed_good"><i class="fa-regular fa-heart"></i></div>

            <div class="view_all"><a href="#"> 전체보기</a></div>
          </div>
          <div class="feed_line2"></div>
        </div>
      </div>

      <div class="editor_wrap">
        <!-- 맞춤 카페 -->
        <div class="coffee">
          <div class="coffee_copy">
            <div class="user_id">아무개</div>
            <div>님 맞춤 카페 추천</div>
          </div>
          <div class="coffee_line"></div>
          <div class="coffee_img_wrap">
            <div class="coffee_img">
              <div class="coffee_img_set">
                <a href="#"
                  ><img class="coffee_img1" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="coffee_title">서울 스위트 호텔(1-2인)</p>
                  <p class="coffee_price">반가워요</p>
                </div>
              </div>
              <div class="coffee_img_set">
                <a href="#"
                  ><img class="coffee_img2" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="coffee_title">안녕하세요</p>
                  <p class="coffee_price">반가워요</p>
                </div>
              </div>
              <div class="coffee_img_set">
                <a href="#"
                  ><img class="coffee_img3" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="coffee_title">우리집</p>
                  <p class="coffee_price">반가워요</p>
                </div>
              </div>
              <div class="coffee_img_set">
                <a href="#"
                  ><img class="coffee_img4" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="coffee_title">안녕하세요</p>
                  <p class="coffee_price">반가워요</p>
                </div>
              </div>
              <div class="coffee_img_set">
                <a href="#"
                  ><img class="coffee_img5" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="coffee_title">안녕하세요</p>
                  <p class="coffee_price">반가워요</p>
                </div>
              </div>
              <div class="coffee_img_set">
                <a href="#"
                  ><img class="coffee_img6" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="coffee_title">안녕하세요</p>
                  <p class="coffee_price">반가워요</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 맞춤 카페 끝 -->
        <!-- 맞춤 맛집 -->
        <div class="food">
          <div class="food_copy">
            <div class="user_id">아무개</div>
            <div>님 맞춤 맛집 추천</div>
          </div>
          <div class="food_line"></div>
          <div class="food_img_wrap">
            <div class="food_img">
              <div class="food_img_set">
                <a href="#"
                  ><img class="food_img1" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="food_title">서울 스위트 호텔(1-2인)</p>
                  <p class="food_price">반가워요</p>
                </div>
              </div>
              <div class="food_img_set">
                <a href="#"
                  ><img class="food_img2" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="food_title">안녕하세요</p>
                  <p class="food_price">반가워요</p>
                </div>
              </div>
              <div class="food_img_set">
                <a href="#"
                  ><img class="food_img3" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="food_title">우리집</p>
                  <p class="food_price">반가워요</p>
                </div>
              </div>
              <div class="food_img_set">
                <a href="#"
                  ><img class="food_img4" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="food_title">안녕하세요</p>
                  <p class="food_price">반가워요</p>
                </div>
              </div>
              <div class="food_img_set">
                <a href="#"
                  ><img class="food_img5" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="food_title">안녕하세요</p>
                  <p class="food_price">반가워요</p>
                </div>
              </div>
              <div class="food_img_set">
                <a href="#"
                  ><img class="food_img6" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="food_title">안녕하세요</p>
                  <p class="food_price">반가워요</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 맞춤 맛집 끝 -->
        <!-- 맞춤숙소 -->
        <div class="lodgin">
          <div class="lodgin_copy">
            <div class="user_id">아무개</div>
            <div>님 맞춤 숙소 추천</div>
          </div>
          <div class="lodgin_line"></div>
          <div class="lodgin_img_wrap">
            <div class="lodgin_img">
              <div class="lodgin_img_set">
                <a href="#"
                  ><img class="lodgin_img1" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="lodgin_title">서울 스위트 호텔(1-2인)</p>
                  <p class="lodgin_price">반가워요</p>
                </div>
              </div>
              <div class="lodgin_img_set">
                <a href="#"
                  ><img class="lodgin_img2" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="lodgin_title">안녕하세요</p>
                  <p class="lodgin_price">반가워요</p>
                </div>
              </div>
              <div class="lodgin_img_set">
                <a href="#"
                  ><img class="lodgin_img3" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="lodgin_title">우리집</p>
                  <p class="lodgin_price">반가워요</p>
                </div>
              </div>
              <div class="lodgin_img_set">
                <a href="#"
                  ><img class="lodgin_img4" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="lodgin_title">안녕하세요</p>
                  <p class="lodgin_price">반가워요</p>
                </div>
              </div>
              <div class="lodgin_img_set">
                <a href="#"
                  ><img class="lodgin_img5" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="lodgin_title">안녕하세요</p>
                  <p class="lodgin_price">반가워요</p>
                </div>
              </div>
              <div class="lodgin_img_set">
                <a href="#"
                  ><img class="lodgin_img6" src="${path}/resources/image/cafe2.jpg" alt=""
                /></a>
                <div>
                  <p class="lodgin_title">안녕하세요</p>
                  <p class="lodgin_price">반가워요</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 맞춤숙소 끝 -->
        <!-- 맞춤 액티비티 -->
        <div class="activity">
          <div class="activity_copy">
            <div class="user_id">아무개</div>
            <div>님 맞춤 액티비티 추천</div>
          </div>
          <div class="activity_line"></div>
          <div class="activity_img_wrap">
            <div class="activity_img">
              <div class="activity_img_set">
                <a href="#"
                  ><img class="activity_img1" src="${path}/resources/image/poster.jpeg" alt=""
                /></a>
                <div>
                  <p class="activity_title">서울 스위트 호텔(1-2인)</p>
                  <p class="activity_price">반가워요</p>
                </div>
              </div>
              <div class="activity_img_set">
                <a href="#"
                  ><img class="activity_img2" src="${path}/resources/image/poster2.jpg" alt=""
                /></a>
                <div>
                  <p class="activity_title">안녕하세요</p>
                  <p class="activity_price">반가워요</p>
                </div>
              </div>
              <div class="activity_img_set">
                <a href="#"
                  ><img class="activity_img3" src="${path}/resources/image/poster.jpeg" alt=""
                /></a>
                <div>
                  <p class="activity_title">우리집</p>
                  <p class="activity_price">반가워요</p>
                </div>
              </div>
              <div class="activity_img_set">
                <a href="#"
                  ><img class="activity_img4" src="${path}/resources/image/poster2.jpg" alt=""
                /></a>
                <div>
                  <p class="activity_title">안녕하세요</p>
                  <p class="activity_price">반가워요</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 맞춤 액티비티 끝 -->
      </div>
    </div>
  </body>
</html>
