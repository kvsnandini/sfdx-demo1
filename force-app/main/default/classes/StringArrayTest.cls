public class StringArrayTest {
    public static List<String> generateStringArray(Integer i){
        List<String> myArray = new List<String>();
        for(Integer n=0;n<i;n++)
        {
            myArray.add('Test ' + n);
            system.debug(myArray[i]);
        }
        return myArray;
    }
}