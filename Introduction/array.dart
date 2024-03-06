void main(){
  List<int> numbers = [1,2,3,4,5];
  print(numbers);
  print(numbers[0]);
  print(numbers[1]);
numbers.add(6);
print(numbers);
numbers.remove(5);
print(numbers);
//nestedlist//
List<List<int>> nestedList= [
  [1,2,3],[4,5,6]
];
print(nestedList);
print(nestedList[1][0]);
//map//
Map<String, int> persn = {
  'age': 30
};
print(persn['age']);
//nestedmap//
Map<String, Map<String, int>> person = {
  'person1' : {'age': 30},
  'person2' : {'age' : 40}
};
print(person['person1']);
//set



}