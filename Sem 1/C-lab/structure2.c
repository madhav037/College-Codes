//2. Create a structure book with book title, author, publication, and price. Read data of 3 books and display.
#include<stdio.h>

struct book{
	char title[1000];
	char author[1000];
	char publication[1000];
	int price;
};

int main() {
	struct book B1, B2, B3;
	//book 1
	printf("\nenter title of book: ");
	scanf("%s", &B1.title);
	
	printf("\nenter author: ");
	scanf("%s", &B1.author);
	
	printf("\nenter name of publication: ");
	scanf("%s", &B1.publication);
	
	printf("\nenter the price of book: ");
	scanf("%d", &B1.price);	
	
	//book 2
	printf("\nenter title of book: ");
	scanf("%s", &B2.title);
	
	printf("\nenter author: ");
	scanf("%s", &B2.author);
	
	printf("\nenter name of publication: ");
	scanf("%s", &B2.publication);
	
	printf("\nenter the price of book: ");
	scanf("%d", &B2.price);
	
	//book 3
	printf("\nenter title of book: ");
	scanf("%s", &B3.title);
	
	printf("\nenter author: ");
	scanf("%s", &B3.author);
	
	printf("\nenter name of publication: ");
	scanf("%s", &B3.publication);
	
	printf("\nenter the price of book: ");
	scanf("%d", &B3.price);
	
	//print
	printf("\nTitle author publication price");
	printf("\n %s    %s      %s       %d - BOOK 1",B1.title,B1.author,B1.publication,B1.price);
	printf("\n %s    %s      %s       %d - BOOK 2",B2.title,B2.author,B2.publication,B2.price);
	printf("\n %s    %s      %s       %d - BOOK 3",B3.title,B3.author,B3.publication,B3.price);	
	
}
