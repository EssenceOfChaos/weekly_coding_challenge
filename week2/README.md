# Week2

## Silent Classroom

This weeks problem was selected by *Conner Boham*.

---

There are *n* students in the first grade classroom and the principle wishes to split the students into two separate rooms. Two distinct students whose name starts with the same letter will be considered chatty if they are put in the same classroom. Let *x* be the number of such pairs of students. Note: pairs (a, b) and (b, a) are the same and counted only once.

For example: if there are 6 students: "olivia", "jacob", "tanya", "jack", "oliver", and "jessica", then splitting into two classrooms ("jack", "jacob", "jessica", "tanya") and ("oliva", "oliver") will give `x = 4`, (3 chatty pairs in the first classroom, 1 chatty pair in the second classroom).

### Input

Given the first line as number of students, *n*, followed by *i* lines, one for each students first name. Note: *n* will be between 0 - 100.

### Output

The output should be a single integer *x* - the **minimum** possible number of chatty pairs.

To read the full problem see [codeforces](https://codeforces.com/problemset/problem/1166/A).

### Examples

#### Example 1

**input**
4
jorge
jose
oscar
jerry

**output**
1

---

#### Example 2

**input**
7
kambei
gorobei
shichiroji
kyuzo
heihachi
katsushiro
kikuchiyo

**output**
2

---

#### Example 3

**input**
5
mike
mike
mike
mike
mike

**output**
4

### Note

Note
In the first sample the minimum number of pairs is 1. This can be achieved, for example, by putting everyone except jose in one classroom, and jose in the other, so jorge and jerry form the only chatty pair.

In the second sample the minimum number of pairs is 2. This can be achieved, for example, by putting kambei, gorobei, shichiroji and kyuzo in one room and putting heihachi, katsushiro and kikuchiyo in the other room. In this case the two pairs are kambei and kyuzo, and katsushiro and kikuchiyo.

In the third sample the minimum number of pairs is 4. This can be achieved by placing three of the students named mike in one classroom and the other two students in another classroom. Thus there will be three chatty pairs in one classroom and one chatty pair in the other classroom.

