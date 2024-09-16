### Question
Given an array of N integers, your task is to transform array into a permutation of first N positive intgers.

A permutation of size N is an arrangement of numbers such that each number from 1 to N appears exactly once.

In the operation, you can increase or decrease any element of the array by 1.

The challenge is to figure out the smallest no. of such operations required to convert the given array into permutaion.

### Question Evaluation
Permutation of a set of elements is an ordered arrangement of that elements. Mathematically , if u have a set of n distinct elements, a permutation is any ordering of those elements.

Then number of possible permutations if the arrangement contains n distinct elements, = n!

Basically permutation is order of arrangement of elements. 

#### Note
note the Set of elements in definition means... the arrangement does not  have any duplications.

In the question its asked to convert the given array to first n natural numbers arrangement(permutation) and count the number of operations required to make it first n positive natural numbers by adding/subtracting 1 to the elements. 

#### Conclusion of question
This can be done by refering to the index of the array and the value of the index and how many times 1 is added to make it equal to the index. Finally summing up the absolute values of those we get the no. of operation(said in the question)required to make it first n positive natural number permutation.  