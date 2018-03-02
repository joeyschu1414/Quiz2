
all:
	make build
	make doczip
clean:
	$rm *.o
	$rm *.class
	$rm *.html
	$rm a.out
build: collegemain.o node.o course.o college.o 
	g++ -o combine college.o course.o collegemain.o 
college.o: college.h college.cc
	g++ -c college.cc
collegemain.o: collegemain.cc
	g++ -c collegemain.cc
course.o: course.h course.cc 
	g++ -c course.cc
node.o: node.h tarray.h
	
doczip:
	make doc
	zip html latex
doc:
	doxygen Doxyfile
	