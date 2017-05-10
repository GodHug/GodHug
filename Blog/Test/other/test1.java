package other;

/**
 * Created by cocos on 2017/1/12.
 */
public class test1 {
    public static void main(String args[]){
        System.out.println("test");
        int s = 0;
        for (int i = 0; i < 6; i++) {
            System.out.println(i);
            if(i == 3){
                i = i - 1;
            }
        }
        System.out.println(s);
    }
}
