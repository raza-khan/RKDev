public class StringArrayTest {
    
    Public static List<String> generateStringArray(integer n)
    {
        List<String> stringToReturn = new List<String>();
        for(integer i=0; i<n; i++)
        {
            stringToReturn.add('Test '+ i);
        }
        return stringToReturn;
        
    }

}