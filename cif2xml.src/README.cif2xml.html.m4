<!doctype html public "-//IETF//DTD HTML 2.0//EN">
<HTML>
define(vnumb,`4.1.0')
define(concat,`$1'`$2')
ifelse(DECOMP(),`NODECOMP',
`define(`XXPATH',)',
`define(`XXPATH',`ZPATH()/concat(ciftbx_,vnumb())/cif2xml.src/')')
<HEAD>
<TITLE>
README.cif2xml
</TITLE> 
</HEAD> 
<BODY BACKGROUND="../.logos/cif2xml_wallpaper.jpg">
<a href="http://www.iucr.ac.uk/iucr-top/welcome.html">
<img alt="[IUCr Home Page]" src="../.logos/iucrhome.jpg"></a>
<a href="http://www.iucr.ac.uk/iucr-top/cif/home.html">
<img alt="[CIF Home Page]" src="../.logos/cifhome.jpg"></a>
<A HREF="../README.html"> <IMG SRC="../.logos/ciftbxHomeButton.jpg" ALT="[ciftbx home]"></A>
<A HREF="../cyclops.src/README.cyclops.html"> <IMG SRC="../.logos/cyclopsButton.jpg" 
ALT="[cyclops.src]"></A> 
<A HREF="../ciftbx.src/README.ciftbx.html"> <IMG SRC="../.logos/ciftbxButton.jpg" 
ALT="[ciftbx.src]"></A> 
<hr>
<CENTER>
<IMG SRC="../.logos/cif2xml.jpg" ALT = " ">
</CENTER>
<H2 ALIGN=CENTER>README.cif2xml</H2>
<H3 ALIGN=CENTER>
Information for cif2xml 0.1.1 -- alpha, 29 November 2009<BR>
</H3>
<HR>
<H3 ALIGN=CENTER>
Before using this software, please read the <BR>
<A HREF = "../NOTICE.html"> <IMG SRC="../.logos/noticeButton.jpg" ALT="NOTICE"></A><BR>
 and please read the IUCr<BR>
<A HREF="../IUCR_POLICY.html"> <IMG SRC="../.logos/policyButton.jpg" ALT="Policy"></A><BR>
 on the Use of the Crystallographic Information File (CIF)</A>
</H3> 
<HR>
<PRE>
    \ | /      \ | /
     \|/        \|/ 
    -- --&gt;&gt;&gt;&gt;&gt;&gt;-- --               c i f 2 x m l 
...... CIF COPY PROGRAM
     /|\        /|\
    / | \      / | \                       Version 0.1.1 - alpha
                                             29 November 2009


 cif2xml  is a fortran program using CIFtbx2 to copy a CIF on standard
 -------  input to an equivalent XML on standard output, while checking
          data names against dictionaries and reformating numbers with
          esd's to conform to the rule of 19.  A quasar-style request
          list may be specified, otherwise the entire CIF is copied.
          The XML output may be literally derived from the CIF input,
          or transformations may be specified in a dictionary.
          The declarations required for the XML document may either be
          embedded in the new document, written to an external DTD, or
          referred to an existing file.

          This program is based on cif2cif, and differs from the program
          primarily in the format of the output.

           cif2xml
                  by

                  Copyright &#169; 2000, 2009
                  Herbert J. Bernstein (yaya@bernstein-plus-sons.com)
                  Bernstein + Sons
                  5 Brewster Lane
                  Bellport, NY 11713, U.S.A.

</PRE>
<P>
This program is part of the Bernstein+Sons xmlCIF project (H. J.
Bernstein and F. C. Bernstein).  See 
<a href="http://www.bernstein-plus-sons.com/software/xmlCIF">http://www.bernstein-plus-sons.com/software/xmlCIF</a>.
<P>
<P>
In order to ensure continuing availability of source code and
documentation cif2xml and its documentation are subject to copyright.
This does not prevent you from using
the program, from making copies and changes,
but prevents the creation of &quot;closed source&quot; versions
out of the open source versions. 
See <a href="NOTICE.html">NOTICE</a>.

<P>
Science is best served
when the tools we use are fully understood by those who wield those
tools and by those who make used of results obtained with those tools.
When a scientific tool exists as software, access to source code is
an important element in achieving full understanding of that tool.
As our field evolves and new versions of software are required,
access to source allows us to adapt our tools quickly and effectively.

<P>
In the early days of software development,
most scientific software source code was freely and openly shared with a
minimum of formalities.  These days, it appears that carefully drawn
legal documents are necessary to protect free access to the source
code of scientific software.  We are all deeply indebted to
<a href="http://www.stallman.org">Richard Stallman</a> for showing
us how a creative combination of copyrights and seemingly restrictive
licenses could give us truly unfettered freedom to use programs,
to read their source code and to develop new versions.  The
<a href="http://www.gnu.org">GNU project</a>, and the
<a href="http://www.linux.org">Linux project</a> have shown that
an open source approach works.  We use the GNU General Public
License
(the <a href="http://www.gnu.org/copyleft/gpl.html">&quot;GPL&quot;</a>)
for our program. Older releases use the license from <a
href="http://www.OpenRasMol.org">OpenRasmol</a>.
The OpenRasMol conditions
for use have correctly been called &quot;GPL-like&quot;.
<P>
If you are a user of this program, you will find that
the copyrights and notices ask little more of you than that you
avoid mistakes by others by keeping the notices with copies,
display scientific integrity by citing your sources properly and
treating this like other shared scientific developments by not
inferring a warranty.  If you are a software developer and wish to
incorporate what you
find here into new code, or to pick up bits and pieces and used them
in another context, the situation becomes more complex.  Read the
copyrights and notices carefully.  You will find that they are
&quot;infectious&quot;.  <b>Whatever you make from our Open Source code
must itself be offered as Open Source code.</b>  In addition, in
order to allow users to understand what has changed and to ensure
orderly development you have to describe your changes.
<P> 
<hr>
<P>
 cif2xml reads the input CIF from the standard input device (normally
 device 5). An optional STAR data name dictionary (in DDL format) is opened.
 A reformatted copy of the input CIF is written to standard output (device 6).
 Messages are output to the standard error device (normally device 0).
 Note that the PARAMETER 'MAXBUF' should contain the maximum number of char-
 acters contained on a single text line. The default value is 200.
 If a request list (a file listing data_ block names and tags) is provided
 that list controls the ordering and selection of tags and values to copy.
 Otherwise the entire CIF is copied in the order presented
<P>
 In a unix-like environment, the program is run as:
<PRE>
 cif2xml [-i input_cif] [-o output_xml] [-d dictionary] [-c catck]\
         [-f command_file] [-e esdlim_] [-a aliaso_] [-p prefix]\
         [-t tabl_] [-q request_list] [-b {row|col} ] [-x {xfer|keep|zap}]\
         [-u {drop|insert}]
         [-s {inline | referto spec_dtd | writeto spec_dtd} ] \
         [input_cif [output_xml [dictionary [request_list [spec_dtd ]]]]] 

 where:
         input_cif defaults to $CIF2XML_INPUT_CIF or stdin
         output_xml defaults to $CIF2XML_OUTPUT_XML or stdout
         dictionary defaults to $CIF2XML_CHECK_DICTIONARY
           (multiple dictionaries may be specified)
         request_list defaults to $CIF2XML_REQUEST_LIST
         input_cif of "-" is stdin, output_xml of "-" is stdout
         request_list of "-" is stdin
         -e has integer values (e.g. 9, 19(default) o 29)
         -a has values of t or 1 or y vs. f or 0 or n
         -p has string values in which "_" is replaced by blank
         -t has values of t or 1 or y vs. f or 0 or n, default f
         -s defaults to inline, -b defaults to col
         -x defaults to zap, -u to drop
</PRE>
<P><b>Note:</b>  The options <b>-s inline</b> and <b>-s writeto spec_dtd</b>
are not implemented in this release.
<P>
The basic approach is to map categories into an outer level of XML tags and
individual tags into the next level down the tree.  Three new dictionary
tags are defined to allow for mapping of CIF categories and tags to XML entity names:
<P>
<PRE>
  _xml_mapping.token                gives the CIF token to be mapped
  _xml_mapping.token_type           gives the type of CIF token
  _xml_mapping.target               gives the string to be used in xml
</PRE>
The mapping is optionally by rows or by columns.  Mapping by columns
is the default because it allows a much high density of data versus tags.

<P>Here is the beginning of the cell information from 1crn as mapped by cif2xml:</P>
<P>
<PRE>
&lt;cell.entry_id&gt;                 1CRN
&lt;/cell.entry_id&gt;
&lt;float builtin="acell"&gt;         40.96
&lt;/float&gt;
&lt;float builtin="bcell"&gt;         18.65
&lt;/float&gt;
&lt;float builtin="ccell"&gt;         22.52
&lt;/float&gt;
&lt;float builtin="alpha"&gt;         90.
&lt;/float&gt;
&lt;float builtin="beta"&gt;          90.77
&lt;/float&gt;
&lt;float builtin="gamma"&gt;         90.
&lt;/float&gt;
...
</PRE>
<P>Note the non-CML tag cell.entry_id included.  cif2xml allows for
request lists so that such tags may be excluded, but, for use with
Jmol, there is no need to exclude them.
<P>
The output of cif2xml when used to produce data by columns agrees
with the output of the BioDOM program pdb2xml [Moore 99] for
such non-looped data.  For coordinate lists the higher information
density of the cif2xml output results in faster dataset reading
and display when used with Jmol.
<H2>
1.  INSTALLATION
</H2>
Here is the recommended procedure for implementing and testing this
version of cif2xml.
<P>
1.0.  Before you try to install this version of cif2xml
<PRE>   
     *** ========================================================== ***
     *** ========================================================== ***
     *** ==&gt;&gt;&gt; You must have ciftbx version 2.6.4 or greater  &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; installed in a directory named ciftbx.src.     &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; The scripts mkdecompln and rmdecompln, which   &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; come with ciftbx, must be installed in the     &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; top level directory and executable.            &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; To test cif2xml, you must have a compressed    &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; copy of the dictionary cif_mm.dic in a         &lt;&lt;&lt;== ***
     *** ==&gt;&gt;&gt; directory named dictionaries.                  &lt;&lt;&lt;== ***
     *** ========================================================== ***
     *** ========================================================== ***
</PRE>
    The directory structure within which you will work is
<PRE>
                  top level directory
                  -------------------
                           |
                           |
            ------------------------------
            |              |             | 
       dictionaries   ciftbx.src     cif2xml.src
       ------------   ----------     -----------
</PRE>
            

<P>
   You may have acquired this package in one of several forms.
   The most likely are as a &quot;C-shell Archive,&quot; a &quot;Shell Archive&quot;,
   or as separate files.  The idea is to get to separate files,
   all in the same directory, named cif2xml.src, parallel to
   the directory ciftbx.src, but let's start with the possibility
   that you got the package as one big file, i.e. in one of
   the archive file formats.  Place the archive in the top level
   directory.
<PRE>
   *** ========================================================== ***
   *** ========================================================== ***
   *** ==&gt;&gt;&gt; The files in this kit will unpack into a       &lt;&lt;&lt;== ***
   *** ==&gt;&gt;&gt; directory named cif2xml.src.  It is a good idea&lt;&lt;&lt;== ***
   *** ==&gt;&gt;&gt; to save the current contents of cif2xml.src    &lt;&lt;&lt;== ***
   *** ==&gt;&gt;&gt; and then to make the directory empty           &lt;&lt;&lt;== ***
   *** ========================================================== ***
   *** ========================================================== ***
</PRE>
   If you are on a machine which does not provide a unix-like shell,
   you will need to take apart the archive by hand using a text
   editor.  We'll get to that in a moment.
<P>
   1.1.  ON A UNIX MACHINE
<P>
   If you have the shell archive on a unix machine, follow the
   instructions at the front of the archive, i.e. save the
   uncompressed archive file as &quot;file&quot;, then, if the archive 
   is a &quot;Shell Archive&quot; execute &quot;sh file&quot;.  If the archive is 
   a &quot;C-Shell Archive&quot; execute &quot;csh file&quot;.
<P>
   1.2. IF YOU DON'T HAVE UNIX
<P>
   If sh or csh are not available, then it is best to start with the
   &quot;C-Shell Archive&quot; and do the steps that follow.  If you must
   use the &quot;Shell Archive&quot; you should be aware that the lines
   you want to extract have been prefixed with &quot;X&quot;, while most of
   the lines you want to discard have not.  For a &quot;C-Shell Archive&quot;
   such prefixes are rare and the file is easier to read.  Assume
   you have a &quot;C-Shell Archive&quot;.
<P>
   Use your editor to separate the different parts of the file into
   individual files in your workspace. Each part starts with
   a lot of unixisms, then several blank lines and then two lines
   which identify the file, and most importantly, contain the
   text &quot;CUT_HERE_CUT_HERE_CUT_HERE&quot;  You can look at the line
   before and the line after to see if you are at the head or
   tail of a file.  Use your editor to search for the &quot;CUT_HERE&quot;
   lines. Each part is carefully labeled and indicates the  
   recommended filename for the separated file. On some machines
   these filenames may need to be altered to suit the OS or compiler.
<P>
   1.3.  MANIFEST
<P>
   The partitions are as follows:
<PRE>
   part  filename                   description

     1  <A HREF="../COPYING">COPYING</A>                          GPL (GNU General Public License)
     2  <A HREF="../NOTICE">NOTICE</A>                           Notices
     3  <A HREF="README.cif2xml">cif2xml.src/README.cif2xml</A>       additional information on cif2xml
     4  <A HREF="MANIFEST">cif2xml.src/MANIFEST</A>             a list of files in the kit
     5  <A HREF="Makefile">cif2xml.src/Makefile</A>             a preliminary control file for make
     6  <A HREF="XXPATH()4ins.cif">cif2xml.src/4ins.cif</A>             example mmcif file used to test cif2xml
     7  <A HREF="XXPATH()4ins.out">cif2xml.src/4ins.out</A>             example XML output from test of cif2xml
     8  <A HREF="4ins.prt">cif2xml.src/4ins.prt</A>             example list file from test of cif2xml
     9  <A HREF="cif_cml.dic">cif2xml.src/cif_cml.dic</A>          example of CML mapping definitions
    10  <A HREF="cif2xml.cmn">cif2xml.src/cif2xml.cmn</A>          cif2xml common block
    11  <A HREF="cif2xml.f">cif2xml.src/cif2xml.f</A>            cif2xml fortran source
    12  <A HREF="xtalt2.cif">cif2xml.src/xtalt2.cif</A>           example cif file used to test cif2xml
    13  <A HREF="xtalt2.out">cif2xml.src/xtalt2.out</A>           example XML output from test of cif2xml
    14  <A HREF="xte29.out">cif2xml.src/xte29.out</A>            example XML output from test of cif2xml
    15  <A HREF="xttne9.out">cif2xml.src/xttne9.out</A>           example XML output from test of cif2xml
</PRE>
<H3>     
2. COMPILING AND EXECUTING
</H3>
   Here are the recommended steps for a UNIX system. Vary this 
   according to the requirements of your OS and compiler.  You will 
   simplest to work if you place the cif2xml files together in a 
   common subdirectory named 'cif2xml.src'.   Be very careful if you 
   place them in a directory with other files, since some of the build 
   and test instructions remove or overwrite existing files, especially 
   with extensions such as '.o', '.lst',  or '.diff'.  On a UNIX system,
   most of what you need to do to build and test cif2xml is laid out in 
   Makefile.  *** Be sure to examine and edit this file appropriately 
   before using it.***  But, once properly edited, all you should need 
   to do is 'make clean' to remove old object files, 'make all' to 
   build new version of 'cif2xml' and 'make tests' to test what you
   have built.
<P>   
   For non-UNIX-like environments, you will have to provide 
   replacements for iargc, getarg and getenv.  The following are
   reasonable possibilities:

<PRE>
         integer function iargc(dummy)
         iargc=0
         return
         end

         subroutine getarg(narg,string)
         integer narg
         character*(*) string
         string=char(0)
         return
         end

         subroutine getenv(evar,string)
         character*(*) evar,string
         string=char(0)
         if(evar.eq.'CIF2XML_INPUT_CIF')
        *  string='INPCIF.CIF'//char(0)
         if(evar.eq.'CIF2XML_OUTPUT_XML')
        *  string='OUTXML.XML'//char(0)
         if(evar.eq.'CIF2XML_CHECK_DICTIONARY') 
        *  string='CIF_CORE.DIC'//char(0)
         if(evar.eq.'CIF2XML_REQUEST_LIST') 
        *  string='REQLST.DAT'//char(0)
         return
         end
</PRE>
 This combination of substitute routines would &quot;wire-in&quot; cif2xml to
 read its input cif from a file named INPCIF.CIF, write its output
 cif to a file named OUTXML.CIF, check names against CIF_CORE.DIC
 and use the tag names given in REQLST.DAT to selects the ones to copy
<H3>
FILES USED
</H3>
<PRE>
       dictionary input         input   on device 2
       Reformatted CIF          output  on device 6 ('stdout')
       Input CIF                input   on device 2, if a file, 5  if 'stdin'
       Message device           output  on device 0 ('stderr')
       Direct access            in/out  on device 3
       Request list             input   on device 4, if a file, 5 if 'stdin'
</PRE>
<H2>
TEST files
</H2>
 Three test CIFs are provided.  xtal2.cif is a test file borrowed from
 xtal_gx (file xtest2.cif at ftp://ftp.crystal.uwa.edu.au/free/test.,
 provided by S. R. Hall.   4ins.cif is an mmCIF file created from the 
 PDB entry 4INS by G.G. Dodson, E. J. Dodson, D. C. Hodgkin, 
 N.W. Isaacs and M. Vijayan (1989) by the program pdb2cif 
 (P.E. Bourne, F.C. Bernstein and H.J. Bernstein, 1996, 
 see http://ndbserver.rutgers.edu/software).
<P>
 xtalt2.cif provides good test cases for the conversion of esd's.
 The command
<PRE>
    cif2xml -t y &lt; xtalt2.cif &gt; xtalt2.new
</PRE>
 ensures that all esd's follow the rule of 19, while
<PRE>
    cif2xml -t y -e 29 &lt; xtalt2.cif &gt; xte29.new
</PRE>
 converts esd's to the rule of 29.  The difference between the
 two rules is that for the rule of 19, all esd's lie between 2 and
 19, so that an esd of (1) has to be converted to (10), while
 for the rule of 29, all esd's lie between 3 and 29, so that
 an esd of (2) also has to be converted, in this case to (20).
 The option &quot;-t y&quot; tidies the output to tab stops.
<P>
 One last test with this file is to use the command
<PRE>
   cif2xml -e 9 &lt; xtalt2.cif &gt; xttne9.new
</PRE>
 to copy the original cif spacing and to use the rule of 9 on esd's
<P>
 4ins.cif has many comments, text fields and dense loops.  The
 test in the Makefile tests handling of these items and adds the
 additional complication of processing a prefix &quot;.._&quot; with the
 command
<PRE>
   cif2xml -t y -p .._ &lt; 4ins.cif &gt; 4ins.new
</PRE>
 The output spacing is controlled by the program.
<P>
 If we wish to map tags to an essential subset of the CML XML tags,
 we can use the command
<PRE>
   cif2xml -d cif_mm.dic -d cif_sml.dic -s referto cml.dtd \
      &lt; 4ins.cif &gt; 4ins.new
</PRE>

<H3>
CHANGES
</H3>
<H3>
KNOWN PROBLEMS
</H3>
<P>
cif2xml does not copy white space exactly, and will reformat
some data values.  Some aspect of this are inherent in the
differences between CIF and XML.  Always compare the original to the output.
<P>
XML does not allow multiple root elements.  cif2xml maps the first DATA_ block
encountered to the root element.  This can cause problems for XML parsers if
multiple DATA_ block appear in the input CIF.
<P>
The code used by xml2cif to write DTDs is not ready for release, and has
not been included.
<P>

<h3>References</h3>
<UL>
<LI>[Bernstein et al. 98] Bernstein, H.J.,Bernstein, F.C., Bourne, P.E. 
"pdb2cif: Translating PDB Entries into mmCIF Format", J. Appl. Cryst., 31, pp. 282-295, 1998, 
software available from  <a href="http://www.iucr.org/iucr-top/cif">http://www.iucr.org/iucr-top/cif</a>
and <a href="http://ndbserver.rutgers.edu">http://ndbserver.rutgers.edu</a>.

<LI>[Bray, Paoli, Sperberg-McQueen 98] Bray, T., Paoli, J., Sperberg, C. M., 
 eds, "Extensible Markup Language (XML)", W3C Recommendation 10-Feb-98, REC-xml-19980210,
 <a href="http://www.w3.org/TR/1998/REC-xml-19980210">http://www.w3.org/TR/1998/REC-xml-19980210</a>

<LI>[Fitzgerald et al. 96] Fitzgerald, P. M. D., Berman, H. M., Bourne, P. E., McMahon, 
B., Watenpaugh, K., Westbrook, J. "The mmCIF Dictionary: Community Review and Final Approval", 
17th IUCR Congress and General Assembly, Seattle, Washington, USA, 8-17 August 1996, Abstract E1226.
 Version 0.8.02 available from <a href="http://ndbserver.rutgers.edu">http://ndbserver.rutgers.edu</a>.

<LI>[Gezelter 99] Gezelter, D., &quot;Jmol&quot; and open source Java program.  See
<a href="http://www.openscience.org/jmol">http://www.openscience.org/jmol</a>.

<LI>[Hall, Allen, Brown 91] Hall,S. R.  Allen, F. H., Brown, I. D., 
"The Crystallographic Information File (CIF): A New Standard Archive File for Crystallography", 
Acta Cryst. A47, 655-685 (1991), 
<a href="http://www.us.iucr.org/iucr-top/cif/standard/cifstd1.html">http://www.us.iucr.org/iucr-top/cif/standard/cifstd1.html</a>.

<LI>[Hall, Bernstein 96] Hall, S.R., Bernstein, H.J., 
"CIFtbx2: Extended Tool Box for Manipulating CIFs," J. Appl. Cryst., 29, pp 598-603 (1996).
<LI>[Hendrickson, Teeter 81] Hendrickson, W. A., Teeter, M. M., 
&quot;Crambin&quot;, PDB Entry 1CRN.  See also Teeter, M. M., &quot;Water Structure 
Of A Hydrophobic Protein At Atomic Resolution. Pentagon Rings Of Water Molecules 
In Crystals Of Crambin&quot;, Proc. Nat. Acad. Sci., USA, 81, 6014 ff. (1984).

<LI>[Longridge 98] Longridge, J. J., "Tetrasodium Hexacyanoferrate(II) Decahydrate", 
Acta Cryst. C54, 1998, CIF-Access paper, IUCR9800028.cif.

<LI>[Moore 99] Moore, A., &quot;pdb2xml&quot;, March 1999, released as pdb2xml-protbot.pl
on the BioDOM website, 
<a href="http://ala.vsms.nottingham.ac.uk/biodom/software/protsuite-user-dist/">http://ala.vsms.nottingham.ac.uk/biodom/software/protsuite-user-dist/</a>

<LI>[Murray-Rust, Rzepa 99] Murray-Rust, P., Rzepa, H., 
"Chemical markup, XML and the WWW, Part I: Basic principles,"
J. Chem. Inf . Comp. Sci, 39 No. 6, 928-942,(1999).
See <a href="http://www.xml-cml.org">http://www.xml-cml.org</a>

</UL>

<HR>
Updated 29 November 2009<P>
<address>
<A HREF="mailto:yaya@bernstein-plus-sons.com">yaya@bernstein-plus-sons.com</A>
</BODY>
</HTML>
