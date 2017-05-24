package cn.nsu.edu.qingshuyuxia.tools;

import java.util.Random;

/**
 * Created by cocos on 2017/5/23.
 */
public class GetRandom {
    //postNum 一个整形数字（用来从中选取随机的几个数字），num 选取随机数个数 （num<postNum)
    public static Integer[] getRandom(int postsNum,int num){
        Integer[] arrayId = new Integer[num];
        for (int i = 0; i < num; i++) {
            Integer temp = (new Random()).nextInt(postsNum)+1;
            boolean s = false;
            for (int j = 0; j < i; j++) {
                if(temp == arrayId[j]){
                    i = i - 1;
                    s = true;
                    break;
                }
            }
            if (!s){
                arrayId[i] = temp;
            }
        }
        return arrayId;
    }
}
