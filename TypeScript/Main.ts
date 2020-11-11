import {LinkedList} from './LinkedList';

console.log('Creating a new linked list of integers');
let list = new LinkedList<number>();
console.log(list.isEmpty() ? 'It is empty' : 'Fail');
console.log('Pushing 3, 1, 4, 1, and 5');
list.push(3);
list.push(1);
list.push(4);
list.push(1);
list.push(5);
console.log(!list.isEmpty() ? 'It is not empty' : 'Fail');
console.log(`Length is ${list.length()}`);
console.log(`List is ${list.toString()}`);
console.log(`Head is ${list.head()?.value}`);
console.log(`Tail is ${list.tail().toString()}`);
console.log(`Tail length is ${list.tail().length()}`);
console.log(`Last is ${list.last()?.value}`);
console.log(`Reversed list is ${list.reverse().toString()}`);
