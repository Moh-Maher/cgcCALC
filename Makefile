# This is a Make file to build and run cgcCALC 

# in both testing and library
CC = g++ -O3  -I./include

#added for the testing files
CFLAGSTEST = -std=c++17 -Wall -Wextra -Wconversion 
 
#source files 
SRCCGCCALC = src/utilities.cpp \
                 src/cgc.cpp \
                 src/latex.cpp \
                 src/layout.cpp
#include files 
INCLUDECGCCALC = include/utilities.h \
                 include/cgc.h \
                 include/latex.h \
                 include/layout.h                               
#test
TESTCGCCALC = main
 
#build the test executable
$(TESTCGCCALC): %: test/%.cpp  
	$(CC) $(CFLAGSTEST)  $(SRCCGCCALC)  -o cgcCALC.out $< 

#remove executable 
clean:
	rm *.out
