package com.fiveoclock.util;

import java.text.*;
import java.io.*;
import java.awt.*;
import javax.swing.*;
import java.util.Date;
import java.util.Calendar;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.sql.Timestamp;

public class CodeUtil {	

	// 관광지
	public static String getContentTypeIdName(int arg){
        String result = null;
        switch ( arg ){ 
			
        	case 12 :
        	    result = "관광지";
        	    break;
        	case 14 :
        	    result = "문화시설";
        	    break; 
			case 15 :
        	    result = "축제공연행사";
        	    break;
			case 25 :
        	    result = "여행코스";
        	    break;
			case 28 :
        	    result = "레포츠";
        	    break;
			case 32 :
        	    result = "숙박";
        	    break;
			case 38 :
        	    result = "쇼핑";
        	    break;
			case 39 :
        	    result = "음식점";
        	    break;
			default :
        	    result = "";
        	    break;
			
        }
        return result;
    }


	// 지역
	public static String getAreaCodeName(int arg){
        String result = null;
        switch ( arg ){ 
			
        	case 1 :
        	    result = "서울";
        	    break;
        	case 2 :
        	    result = "인천";
        	    break; 
			case 3 :
        	    result = "대전";
        	    break;
			case 4 :
        	    result = "대구";
        	    break;
			case 5 :
        	    result = "광주";
        	    break;
			case 6 :
        	    result = "부산";
        	    break;
			case 7 :
        	    result = "울산";
        	    break;
			case 8 :
        	    result = "세종특별자치시";
        	    break;
			case 31 :
        	    result = "경기도";
        	    break;
			case 32 :
        	    result = "강원도";
        	    break;
			case 33 :
        	    result = "충청북도";
        	    break;
			case 34 :
        	    result = "충청남도";
        	    break;
			case 35 :
        	    result = "경상북도";
        	    break;
			case 36 :
        	    result = "경상남도";
        	    break;
			case 37 :
        	    result = "전라북도";
        	    break;
			case 38 :
        	    result = "전라남도";
        	    break;
			case 39 :
        	    result = "제주도";
        	    break;
			default :
        	    result = "";
        	    break;
			
        }
        return result;
    }

}
