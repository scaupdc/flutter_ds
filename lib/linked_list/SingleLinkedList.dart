import 'package:flutter_ds/linked_list/LinkedList.dart';

class SingleLinkedList<T> extends LinkedList {
  _SingleLinkedListNode _head;
  int _count;

  SingleLinkedList()
      : _head = null,
        _count = 0;

  @override
  void append(data) {
    if (isEmpty()) {
      _head = new _SingleLinkedListNode<T>(data);
    } else {
      _SingleLinkedListNode lastNode = _head;
      while (lastNode.next != null) {
        lastNode = lastNode.next;
      }
      lastNode.next = new _SingleLinkedListNode<T>(data);
    }
    _count++;
  }

  @override
  void clean() {
    if (!isEmpty()) {
      _SingleLinkedListNode currentNode = _head;
      _SingleLinkedListNode nextNode = currentNode.next;
      _SingleLinkedListNode tempNode;
      currentNode.next = null;
      currentNode.data = null;
      while (nextNode != null) {
        tempNode = nextNode.next;
        nextNode.next = null;
        nextNode.data = null;
        nextNode = tempNode;
      }
      _head = null;
      _count = 0;
    }
  }

  @override
  int count() {
    return _count;
  }

  @override
  get(int index) {
    return _count;
  }

  @override
  head() {
    // TODO: implement head
    return null;
  }

  @override
  void insertAfter(data, int index) {
    // TODO: implement insertAfter
  }

  @override
  void insertBefore(data, int index) {
    // TODO: implement insertBefore
  }

  @override
  bool isEmpty() {
    return _head == null;
  }

  @override
  void remove(int index) {
    // TODO: implement remove
  }

  @override
  tail() {
    // TODO: implement tail
    return null;
  }

  @override
  void printList() {
    if (isEmpty()) {
      print('Empty List.');
    } else {
      _SingleLinkedListNode lastNode = _head;
      var txt = lastNode.data;
      while (lastNode.next != null) {
        lastNode = lastNode.next;
        txt = txt + '->' + lastNode.data;
      }
      print(txt);
    }
  }
}

class _SingleLinkedListNode<T> {
  T data;
  _SingleLinkedListNode next;

  _SingleLinkedListNode(this.data) : next = null;
}
