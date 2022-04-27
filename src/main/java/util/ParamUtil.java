package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int point) {
		double res = Math.floor((double)point * 0.01);
		int result = (int)res;
		return result;
		
	}

    /**
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int point, int rank) {
		if (rank == 1) {
			double res = Math.floor((double)point * 0.02);
			int result = (int)res;
			return result;
		}else if (rank ==2) {
			double res = Math.floor((double)point * 0.03);
			int result = (int)res;
			return result;
		}else {
			return getPoint(point);
		}
		
		
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
