public with sharing class StringListTest {
    public StringListTest() {

    }

    public static List<String> generateStringList(integer i) {
        List<String> strList = new List<String>();
        for (integer j = 0; j < i; j++) {
            strList.add('Test ' + j);
        }
        return strList;
    }

}