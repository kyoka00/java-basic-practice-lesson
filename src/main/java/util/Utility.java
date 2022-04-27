package util;

/**
 * メソッドをまとめたUtilityクラス
 */
public class Utility {

    /**
     * 引数を数値に変換し、三角形の面積を求める
     */
    public static double getTriangleArea(String widthStr, String heightStr) {
    	if (isNullOrEmpty(widthStr)) {
    		widthStr = "0";
    	}
    	if (isNullOrEmpty(heightStr)) {
    		heightStr = "0";
    	}
        int width = Integer.parseInt(widthStr);
        int height = Integer.parseInt(heightStr);
        double triangleArea= width * height / 2;
        return triangleArea;
    }

    /**
     * 引数を数値に変換し、長方形の面積を求める
     */
    public static double getRectangleArea(String widthStr, String heightStr) {
    	if (isNullOrEmpty(widthStr)) {
    		widthStr = "0";
    	}
    	if (isNullOrEmpty(heightStr)) {
    		heightStr = "0";
    	}
        
        int height = Integer.parseInt(heightStr);
        int width = Integer.parseInt(widthStr);
        

        
        double rectangleArea= width * height;
        return rectangleArea;
    }

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
    public static boolean isNullOrEmpty(String str) {
    	if ( str== null || str.isEmpty()) {
    		return true;
    	}else {
    		return false;
    	}
    }
}
