<HTML>
<HEAD>
define(vnumb,`4.1.0')
define(cif2pdbvnumb,`2.0.3')
define(vdate,`29 November 2009')
define(concat,`$1'`$2')
ifelse(DECOMP(),`NODECOMP',
`define(`XXPATH',)',
`define(`XXPATH',`ZPATH()/concat(ciftbx_,vnumb())/cif2pdb.src')')
<TITLE>README for cif2pdb</TITLE>
</HEAD>
<BODY BACKGROUND=".logos/cif2pdb_wallpaper.jpg">

<table border=0 cellpadding=0>
<tr>
<td align=left valign=middle>
<a href="http://www.iucr.org/iucr-top/welcome.html">

<img alt="[IUCr Home Page]" src=".logos/iucrhome.jpg"></a>
<a href="http://www.iucr.org/iucr-top/cif/home.html">
<img alt="[CIF Home Page]" src=".logos/cifhome.jpg"></a>
<a href="../README.html">
<img alt="[ciftbx home]" src=".logos/ciftbxButton.jpg"></a>
</td>
<td align=left valign=middle>
<font size="-1">
<form name=cif2pdb 
action="http://arcib.dowling.edu/cgi-bin/cgiwrap/bernsteh/cif2pdb.csh" 
method="get">
<input type=submit value="CLICK HERE for WPDB version (via cif2pdb) of PDB ID:"></input>
</font>
<input type=hidden name="wide" value = "yes"></input>
<input type=hidden name="dictionary" value = "yes"></input>
<input type=hidden name="version" value = "cif2pdbvnumb()"></input>
<input type=text size=4 maxlength=4 name="pdbid" 
value="nxxx"></input> <font size="-1"><b>&lt;&lt;&lt;==== ENTER PDB ID CODE HERE</b></font>
</form>
</td>
</tr>
</table>

<hr>
<CENTER>
<IMG SRC=".logos/cif2pdb.jpg" ALT="cif2pdb">
</CENTER>
<P>
<H2 ALIGN=CENTER>README for cif2pdb</H2>
<H3 ALIGN=CENTER>
Information for cif2pdb cif2pdbvnumb(), vdate()<BR>
</H3>
<HR>

<P>
<CENTER>
program for conversion of an mmCIF data set to a pseudo-PDB entry <BR>
Version cif2pdbvnumb() vdate()<BR>
</CENTER>
<P>
<CENTER>
Herbert J. Bernstein<BR>
Bernstein+Sons<BR>
5 Brewster Lane, Bellport, NY 11713-2803<BR>
phone:  +1-631-286-1339   email:  
<script language="javascript" type="text/javascript">
<!-- 
      var name = "yaya@";
      var domain = "bernstein-plus-sons";
      var domext = ".com";
      document.write ("<a href=\"mailto:" + name + domain + domext + "\">" + name + domain + domext+"</a>"); 
// -->
</script>
<noscript>
yaya&#64;bernstein-plus-sons&#46;com
</noscript>
<BR>
</CENTER>
<P>
<CENTER>
Frances C. Bernstein<BR>
Bernstein+Sons<BR>
5 Brewster Lane, Bellport, NY 11713-2803<BR>
phone:  +1-631-286-1339   email:  
<script language="javascript" type="text/javascript">
<!-- 
      var name = "fcb@";
      var domain = "bernstein-plus-sons";
      var domext = ".com";
      document.write ("<a href=\"mailto:" + name + domain + domext + "\">" + name + domain + domext+"</a>"); 
// -->
</script>
<noscript>
fcb&#64;bernstein-plus-sons&#46;com
</noscript>
<BR>
</CENTER>
<P>
<CENTER>
For a discussion of the rationale behind this program, see
<A href="DISCUSS.cif2pdb.html">
cif2pdb: Translating mmCIF Data into PDB Entries
</A>
<P>
for a discussion of the WPDB (Wide Protein Data Bank) format,
see <a href="http://biomol.dowling.edu/WPDB">biomol.dowling.edu/WPDB</a>
</CENTER>
<P>
<CENTER>	
Work supported in part by IUCr and NSF (for HJB) and  
US NSF, PHS, NIH, NCRR, NIGMS, NLM and DOE (for FCB prior to 1998). 
<P>
Work on the WPDB format supported in part by the U.S. Department of Energy under award ER63601-1021466-0009501.
</CENTER>
<hr>
<B>
<P>
    cif2pdb is free software; 
    you can redistribute this software and/or modify
    this software under the terms of the GNU General Public License 
    as published by the Free Software Foundation; either version 2 of 
    the License, or
    (at your option) any later version.
<P>
    This software is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
<P>
    You should have received a copy of the GNU General Public License
    along with this software; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

<P>
</B>

<H3 ALIGN=CENTER>
Before using this software, please read the <BR>
<A HREF = "../NOTICE.html"> <IMG SRC=".logos/noticeButton.jpg" ALT="NOTICE"></A><BR>
 and please read the IUCr<BR>
<A HREF="../IUCR_POLICY.html"> <IMG SRC=".logos/policyButton.jpg" ALT="Policy"></A><BR>
 on the Use of the Crystallographic Information File (CIF)
</H3> 
<P>
This program is available as a compressed shar
<A HREF="../cif2pdb.shar.Z">cif2pdb.shar.Z (3 megabytes)</A>,
a compressed C-shell shar
<A HREF="../cif2pdb.cshar.Z">cif2pdb.cshar.Z (3 megabytes)</A> or
as individual files, as given in
<A HREF="MANIFEST.html">the MANIFEST.</A>
<P>
If your system cannot handle a Unix-style compressed file, you may
wish to download an uncompressed shar
<A HREF="XXPATH()cif2pdb.shar"> cif2pdb.shar
</A> or an uncompressed cshar
<A HREF="XXPATH()cif2pdb.cshar">
cif2pdb.cshar</A>. <P>

<P>

This program is version 2.0.3 of cif2pdb, capable of doing
a conversion of an mmCIF data set to a partial pseudo-PDB entry
with HEADER, TITLE, COMPND, SOURCE, KEYWRD, AUTHOR, JRNL,
REMARK 1, REMARK 960, SEQRES, CRYST1, ORIGX, SCALE, ATOM, 
SIGATM, ANISOU, SIGUIJ (starting with U's or B's), HETATM, 
MASTER and END records.  Fractional or orthogonal coordinates
may be provided in the mmCIF data set.  If an mmCIF dictionary
or other dictionary with the necessary aliases between mmCIF
and the core is provided, the program can convert core CIF
data sets.  This is sufficient to drive RASMOL.

With version 2, the alternative of using WPDB format
for output is provided, flagged by use of the -w
option on the command line and in the output by
the LEADER record in place of a HEADER record.

<P>
Comments to 
<A HREF="mailto:yaya@bernstein-plus-sons.com">
yaya@bernstein-plus-sons.com</A> appreciated.

<HR>



<H2>WARNING</H2>
<P>
***** This directory contain files with the suffix ".pdb"
      Those files were produced by cif2pdb and are _not_ PDB
      entries.
<P>
<H2>SYNOPSIS</H2>
<P>
<PRE>
cif2pdb [-i input_cif] [-o output_entry] [-d dictionary]
         [-p pdb_entry_id] [-f command_file] [-t u|l|p]
         [-w yes|no] [-m string_in_cif string_in_pdb]
         [[[input_cif] [[output_entry] [dictionary]]]
 input_cif defaults to $CIF2PDB_INPUT_CIF or stdin
 output_cif defaults to $CIF2PDB_OUTPUT_ENTRY or stdout
 dictionary defaults to $CIF2PDB_CHECK_DICTIONARY
 multiple dictionaries may be specified 
 input_cif of "-" is stdin, output_entry of "-" is stdout
 -t has values of u for upper case, l for upper/lower,
    p for PDB typesetting codes, (default -t l)
 -w has the values yes or no (default -w no)
</PRE>
<P>



<H2>COMPILATION</H2>
<P>
There are strong assumptions in the build of cif2pdb about the directory
structure.  cif2pdb is a <A HREF="../ciftbx.src/">ciftbx</A> application.
It is assumed that cif2pdb.src is inserted in the ciftbx directory
tree at the same level as <A HREF="../ciftbx.src/">ciftbx.src</A>
In order to avoid clobbering a prior version before you know this release
of cif2pdb is working correctly in your system, you should save
a copy of the current cif2pdb.src directory before unpacking
this package.
<P>
The resulting directory structure should be
<PRE>
                   top level directory
                   -------------------
                           |
           ----------------------------------
           |               |                 |
        <a 
href="../cif2pdb.src">cif2pdb.src</a>    <a 
href="../ciftbx.src">ciftbx.src</a>      <a 
href="../dictionaries">dictionaries</a>
        -----------    ----------      ------------
</PRE>
<P>
In order to
compile you will need a copy of ciftbx.  In order to recreate the test
output you will need a copy of the an appropriate mmCIF dictionary.
Compilation is controlled by <a HREF="Makefile">Makefile</a>,
which may need changes for the target system.  Changes can be made
by editing Makefile, if necessary, but in most cases it is easier to
edit the m4 document, <a HREF="Makefile.m4">Makefile.m4</a>, and then
<P>
make Makefile_local
<P>
which will replace the current Makefile.  Then cif2pdb can be
compiled and tested by
<P>
make cif2pdb
<BR>
make tests
</P>
<P>
<h2>CHANGES</H2>
<P>
Release 2.0.3 adpated cif2pdb to the changes in CIFtbx for
release CIFtbx 4.1.0
<P>
Release 2.0.2 incorporated improvements to the Makefile
by G. Todorov to add a &quot;make disclean&quot; clause,
correct an error in the definition of MMDICPATH, and
add the entry for cif_mm_pdb2cif.dic to the dictionaries
directory.  The &quot;make tests&quot; clause was updated to include
a timer.  In order to improve timing, a counted string
version of splitstr called csplitstr was created.
instead of 
<P>
Release 2.0.1 added support for WPDB format, corrected errors
in the creation of REMARK 960 (and changed REMARK 960 to
REMARK 9600 for the wide format), added the code for TITLE,
SEQRES, FTNOTE and to handle anisotropic temperature
factors from a separate loop.  The changes for WPDB
format include increases in the line length for
the input CIFS to 2048 characters.

<P>
Release 1.0.2 corrected a error in the forming REF fields that caused
some field to be truncated.  Our thanks to Vince Stanev for isolating
the problem.  The duplicate upcase function was removed, since it
is now in ciftbx.
<P>
Release 1.0.1 corrected the spelling of 
_atom_sites.fract_transf_matrix... and improved the handling
of category keys.
<HR>
Updated 29 November 2009<P>
<address>
For further information contact
Herbert Bernstein 
<script language="javascript" type="text/javascript">
<!-- 
      var name = "yaya@";
      var domain = "bernstein-plus-sons";
      var domext = ".com";
      document.write ("<a href=\"mailto:" + name + domain + domext + "\">" + name + domain + domext+"</a>"); 
// -->
</script>
<noscript>
yaya&#64;bernstein-plus-sons&#46;com
</noscript>
</address>
</BODY>
</HTML>
