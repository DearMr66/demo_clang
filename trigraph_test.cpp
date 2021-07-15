#include <iostream>

void Fn1()
{
	std::cout << "Enter date ??/??/??";	// Non-compliant, ??/??/?? becomes \\??
 						// after trigraph translation
}

void Fn2()
{
	std::cout << "Enter date dd/mm/yy";
}
