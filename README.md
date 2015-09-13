#Euphoria's Complete Guide to Using DLLs
##Copyright (c) 2015 Ronald Weidner

Permission is hereby granted, free of charge, to any person obtaining a 
copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation 
the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the 
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included 
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

##Description:
An example of wrapping up and packaging a DLL for deployment.

##Building:
>$ cd libsrc
>$ make

If you're using another OS other than Linux, you may need to modify
the Makefile such that the REMOVE file command and the COPY file command
match your OS.  (ie "del" and "copy")

##Installing:
To install this library globally, simply copy the directory "guitar"
to your Euphoria include directory.  For example:

>$ cp -R guitar /usr/local/share/euphoria/include

##Bundling with your application:

To bundle with your application you have at least 3 choices:

1. provide download instructions for your user
2. place the guitar directory next to your executable program
3. place the guitar directory in the include paths

Thanks.
