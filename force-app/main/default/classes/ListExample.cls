public class ListExample {
    public static void Listtest(){
        // Create a list and add elements to it in one step
List<String> Colors = new List<String> { 'red', 'green', 'blue' };
// Add elements to a list after it has been created
//List<String> moreColors = new List<String>();
Colors.add('orange');
Colors.add('purple');
System.debug(Colors);
//to add the element in the specific index
Colors.add(0,'black');
Colors.add(5,'white');
//Colors.add(9,'white');//The index number is not continuous according to the index number in the list so index outof bound exception occurs.
System.debug(Colors);
List<String> MoreColors=new List<string>();  
MoreColors.addAll(Colors);//Adding the list items to the new list
System.debug(MoreColors);
Integer s=Colors.size();//size of list
System.debug(s);
String str=Colors.get(4);//getting the string at specific index
System.debug(str);
Boolean a=Colors.isEmpty();//to check whether th elist is empty or not
System.debug(a);
List<String> abc=new List<String>();
Boolean b=abc.isEmpty();
System.debug(b);
List<String> def=new List<String>();
def=Colors.clone();//To copy the same list to the other list 
System.debug(def);
def.clear();//To clear or remove all elements in the list
System.debug(def);
Integer i=def.size();
System.debug(i);
    }
}