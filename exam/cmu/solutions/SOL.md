


# final-f12-sol

Final Exam Solutions
15-213 / 18-213 Fall 2012

*********
Problem 1
*********
01-b 02-a 03-c 04-d 05-a 06-e 07-b 08-a 09-c 10-b
11-d 12-d 13-b 14-(d or e) 15-c 16-d 17-a 18-b


### 7. Ona64-bitsystem, which of the following C expressions is equivalent to the C expression (x[2] + 4)[3] ? Assume x is declared as int ** x.
* (a) * (( * (x + 16)) + 28)
* (b) * (( * (x + 2)) + 7)
* (c) ** (x + 28)
* (d) * ((( * x) + 2) + 7)
* (e) ( ** (x + 2) + 7)


### 18. Consider the following two blocks of code, which are contained in separate files:


/ * main.c
* /
int i = 0;
int main() {
	foo();
	return 0;
}

/ * foo.c
* /
int i = 1;
void foo() {
	printf("%d", i);
}

What will happen when you attempt to compile, link, and run this code?
* (a) It will fail to compile.
* (b) It will fail to link.
* (c) It will raise a segmentation fault.
* (d) It will print "0".
* (e) It will print "1".
* (f) It will sometimes print "0" and sometimes print "1".


#### 也就是说.bss段也可以有强符号。




# 