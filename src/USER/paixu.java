package USER;

public class paixu {
	public SORT[] solve(blog Blog[],String Title,int len) {
		SORT res[] = new SORT[len];
		int len1 = Title.length();
		int sum = 0;
		for (int i = 0; i < len; i++) {
			sum = 0;
			String temp = Blog[i].getTitle();
			int len2 = temp.length();
			for (int j = 0; j < len1; j++) {
				for (int k = 0; k < len2; k++) {
					if (temp.charAt(k) == Title.charAt(j)) {
						sum++;
					}
				}
			}
			SORT x1 = new SORT();
			x1.setNum(sum);
			x1.setBLOG(Blog[i]);
			res[i] = x1;
		}
		int max = 0;
		SORT temp = null;
		for (int i = 0; i < len - 1; i++) {
			max = i;
			for (int j = i + 1; j < len; j++)
				if (res[j].getNum() > res[max].getNum())
					max = j;
			if (i != max) {
				temp = res[i];
				res[i] = res[max];
				res[max] = temp;
			}
		}
		return res;
	}
}
