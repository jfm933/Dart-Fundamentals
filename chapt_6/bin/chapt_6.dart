void main() {
//   var sum = 1;
//   while (sum < 10) {
//     sum += 4;
//     print(sum);
//   }

  // var sum = 1;
  // do {
  //   sum += 4;
  //   print(sum);
  // } while (sum < 10);

  // var sum = (1 + 3 - 2 * 4 + 8);
  // while (sum < 10) {
  //   sum += (1 + 3 - 2 * 4 + 8);
  // }
  // print('While loop: $sum');

  // var sum = 0;
  // do {
  //   sum += (1 + 3 - 2 * 4 + 8);
  // } while (sum < 10);
  // print('Do-while loop: $sum');

  // var sum = 1;
  // while (true) {
  //   sum += 4;
  //   if (sum > 10) {
  //     break;
  //   }
  // }
  // print('While loop: $sum');

  /* Exercise
Create a variable named counter and set it equal to 0 .
Create a while loop with the condition counter < 10 .
The loop body should print out “counter is X” (where X is replaced with the value of counter ) and then increment
counter by 1.
   */

  // var counter = 0;
  // while (counter < 10) {
  //   print("counter is $counter");
  //   counter++;
  // }

  // for (var i = 0; i < 5; i++) {
  //   print(i);
  // }

  // for (var i = 0; i < 5; i++) {
  //   if (i == 2) {
  //     continue;
  //   }

  //   print(i);
  // }

  /**
   * Exercise 
   * Write a for loop starting at 1 and ending with 10 inclusive.
   * Print the square of each number
   */
  // for (var i = 1; i <= 10; i++) {
  //   print(i * i);
  // }

  /**
   * Challenges
   * Challenge 1: Next Power of Two
   * Given a number, determine the next power of two above or equal to that number. Powers of two are the numbers in the sequence of 2¹, 2², 2³, and so on. You may also recognize the series as 1, 2, 4, 8, 16, 32, 64…
   */

  // var powerOfTwo = 1;
  // for (var i = 0; i < 10; i++) {
  //   print(powerOfTwo);
  //   powerOfTwo *= 2;
  // }

  /**
   * Challenge 2: Fibonacci
Calculate the nth Fibonacci number. The Fibonacci sequence starts with 1, then 1 again,
and then all subsequent numbers in the sequence are simply the previous two values in
the sequence added together (1, 1, 2, 3, 5, 8…)
   */

  // var prev = 0;
  // var current = 1;
  // for (var i = 0; i < 10; i++) {
  //   print(current);
  //   var next = current + prev;
  //   prev = current;
  //   current = next;
  // }

  /**
   * Challenge 3: How Many Times?
In the following for loop, what will be the value of sum , and how many iterations will
happen?
   */

  // var sum = 0;
  // for (var i = 0; i <= 5; i++) {
  //   sum += i;
  // }
  // print(sum); // 15

  /**
   * Challenge 4: The Final Countdown
Print a countdown from 10 to 0.
   */

  // var countdown = 10;
  // while (countdown >= 0) {
  //   print(countdown);
  //   countdown--;
  // }

  /**
   * Challenge 5: Print a Sequence
Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0
   */

  // double init = 0;
  // for (var i = 0; i <= 10; i++) {
  //   print(init.toStringAsFixed(1));
  //   init += 0.1;
  // }
}
