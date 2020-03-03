-- USER1 Movie
/*
	private int rank; 			 // 1. 순위
	private String movie;  	 	 // 2. 영화 제목
	private String imgsrc; 		 // 3. 포스터 이미지
	private String type;		 // 4. 영화장르
	private String opendate;	 // 5. 개봉일
	private String bookingrate;	 // 6. 예매율
	private String runtime;	  	 // 7. 상영시간
	private String director;	 // 8. 감독
	private String actor;	 	 // 9. 출연자
	private String navercode; 	 // 11. 네이버 영화코드
	private double naverscore;   // 12. 네이버 평점
	private String daumcode;	 // 13. 다음 영화코드
	private double daumscore; 	 // 14. 다음 평점
*/

CREATE TABLE tbl_movie (

	rank NUMBER, 			     -- 1. 순위
    movie nVARCHAR2(255),  	 	 -- 2. 영화 제목
	imgsrc nVARCHAR2(255), 		 -- 3. 포스터 이미지
	type nVARCHAR2(255),		 -- 4. 영화장르
	opendate nVARCHAR2(255),	 -- 5. 개봉일
	bookingrate nVARCHAR2(255),	 -- 6. 예매율
	runtime nVARCHAR2(255),	  	 -- 7. 상영시간
	director nVARCHAR2(255),	 -- 8. 감독
    actor nVARCHAR2(255),	 	 -- 9. 출연자
	navercode nVARCHAR2(255), 	 -- 11. 네이버 영화코드
	naverscore  NUMBER ,         -- 12. 네이버 평점
	daumcode nVARCHAR2(255),	 -- 13. 다음 영화코드
	daumscore  NUMBER        	 -- 14. 다음 평점



)