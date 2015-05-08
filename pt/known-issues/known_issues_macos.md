# MacOS


The configuration fails because it does not find **freetype

configure: error: Could not find freetype!  
configure exiting with result code 1

Check if **freetype** is installed

	$ brew install freetype
	Error: freetype-2.5.3_1 already installed
	To install this version, first `brew unlink freetype’

Since it is already installed we configure like this.

	$ bash configure –with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib
A new configuration has been successfully created in
/Users/radhakrishnan/OpenJDK/jdk9/build/macosx-x86_64-normal-server-release
using configure arguments ‘–with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib’.
