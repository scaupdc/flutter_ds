import 'package:flutter_ds/linked_list/SingleLinkedList.dart';

void main() {
  var linkedList = new SingleLinkedList<String>();
  print(linkedList.isEmpty());
  linkedList.append('hello');
  linkedList.append('world');
  linkedList.append('end');
  print(linkedList.isEmpty());
  print(linkedList.count());
  linkedList.printList();
  linkedList.clean();
  print(linkedList.isEmpty());
  print(linkedList.count());
  linkedList.printList();
}
