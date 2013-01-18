
pyeco.html : pyeco.rst
	rst2html pyeco.rst pyeco.html

.PHONY : clean
clean : 
	-rm pyeco.html
