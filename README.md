MKBlockTimer
============

Measure the time taken to execute a block of code… using… blocks!



Usage
=====

The method is fairly straightforward to use.

    [self logTimeTakenToRunBlock:^{
 
    // your time consuming piece of code here
    for(int i = 0 ; i &lt; 1000000000; i ++);
   
    } withPrefix:@"For Loop"];

When you do this, you should see the following on the console.


Output
======

  `2013-04-04 22:07:08.966 MKBlockTimerDemo[69436:c07] For Loop: 1814 ms`

