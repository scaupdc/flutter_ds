abstract class LinkedList<T> {
  bool isEmpty();

  int count();

  T head();

  T tail();

  void clean();

  T get(int index);

  void insertBefore(T data, int index);

  void insertAfter(T data, int index);

  void append(T data);

  void remove(int index);

  void printList();
}
