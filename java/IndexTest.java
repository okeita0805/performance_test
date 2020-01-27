public class IndexTest {
   public static void main(String[] args) {
     int n = 35;

     // JREのバージョン
     System.out.println("Java Version: " + System.getProperty("java.version"));
     System.out.println("Test Fibonacci " + n);

     // 処理前の時刻を取得
     long startTime = System.currentTimeMillis();
     int result = fibonacci(n);
     long endTime = System.currentTimeMillis();

     // 処理後の時刻を取得
     double processTime = endTime - startTime;
     System.out.println("Fibonacci(" + n + "): " + result);
     //まさかのmsを1000で割って無理やり変換する
     System.out.println("Time " + processTime / 1000 + "秒");
   }

  // フィボナッチ関数
   private static int fibonacci(int n) {
     if (n < 2) {
        return 1;
     }
     return fibonacci(n-2) + fibonacci(n-1);
   }
}
