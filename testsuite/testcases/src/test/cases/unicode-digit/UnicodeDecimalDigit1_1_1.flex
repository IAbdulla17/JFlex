%%

%unicode 1.1
%public
%class UnicodeDecimalDigit1_1_1

%type int
%standalone

%include src/test/resources/common-unicode-enumerated-property-java

%%

<<EOF>> { printOutput(); return 1; }
[:digit:] { setCurCharPropertyValue("Nd"); }
[^[:digit:]] { setCurCharPropertyValue("Not-Nd"); }
