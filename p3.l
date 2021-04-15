%{
    #include<unistd.h>
    #include<stdlib.h>
    #include<fcntl.h>
    int c=0,v=0,a=0;
%}
%%
printf c++;
scanf v++;
struct a++;
. ;
\n ;
%%
int main(int argc,char *argv[]){
    if(argc<2){
        printf("enter the file to count printf's and scanf's as the argument.\n");
        exit(0);
    }
    yyin = fopen(argv[1],"r");
    if(yyin == NULL)
    {
            printf("cannot open file: %s.\n",argv[1]);
            exit(0);
    }
    yylex();
    printf(" \ncount: \n\t print'f = %d \n\t scanf's = %d\n\n",c,v);
}