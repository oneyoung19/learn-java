package utils; // 根据您的包结构调整

import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {
    public static String getCurrentTime() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatter.format(new Date());
    }
}