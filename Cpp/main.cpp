#include "LinkedList.cpp"

string assert(bool a, string msg) { return a ? msg : "Fail"; }

int main() {
  cout << "Creating a new linked list of integers" << endl;
  auto l = LinkedList<int>();
  cout << assert(l.isEmpty(), "It is empty") << endl;
  cout << "Pushing 3, 1, 4, 1, and 5" << endl;
  l.push(3);
  l.push(1);
  l.push(4);
  l.push(1);
  l.push(5);
  cout << assert(!l.isEmpty(), "It is not empty") << endl;
  cout << "Length is " << l.length() << endl;
  cout << "List is " << l.toString() << endl;
  cout << "Head is " << l.head()->value << endl;
  cout << "Tail is " << l.tail().toString() << endl;
  cout << "Tail length is " << l.tail().length() << endl;
  cout << "Last is " << l.last()->value << endl;
  cout << "Reversed list is " << l.reverse().toString() << endl;
}