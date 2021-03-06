<HTML>
define(vnumb,`4.1.0')
define(concat,`$1'`$2')
ifelse(DECOMP(),`NODECOMP',
`define(`XXPATH',)',
`define(`XXPATH',`ZPATH()/concat(ciftbx_,vnumb())/dictionaries/')')
<HEAD>
<TITLE>
CIF Dictionaries
</TITLE>
</HEAD>
<BODY>
<H3>
Before using this software, please read the <A HREF = "../NOTICE.html"> 
NOTICE</A> and please read 
<A  HREF="http://www.iucr.ac.uk/iucr-top/ipr.html"> 
the IUCr Policy on the Use of the Crystallographic Information File (CIF)</A>
</H3>
<hr>
<H2>
Dictionaries
</H2>
<P>
These are the dictionaries used to test ciftbx version 4.1.0.  
There may be later versions of both the core and mmCIF 
dictionaries available.  Please check the 
<A href = "http://www.iucr.ac.uk/cif/home.html">IUCr web page</A> for the 
most recent versions. 
<P>Compressed versions of 
dictionaries used for testing:<BR> 
<A HREF="cif_core.dic.Z"> cif_core_dic.Z </A> (2005 core dictionary)<BR>
<A HREF="cif_expanded_jun06.dic.Z"> cif_expanded_jun06.dic.Z </A> (2006 DDLm core dictionary draft)<BR>
<A HREF="cif_expanded_aug08.dic.Z"> cif_expanded_aug08.dic.Z </A> (2008 DDLm core dictionary draft)<BR>
<A HREF="cif_expanded_oct09.dic.Z"> cif_expanded_oct09.dic.Z </A> (2009 DDLm core dictionary draft)<BR>
<A HREF="cif_mm.dic.Z"> cif_mm.dic.Z </A> (2005 draft mmCIF dictionary)<BR>
<A HREF="cif_mm_pdbx.dic.Z"> cif_mm_pdbx.dic.Z </A> (2005 mmCIF PDB exchange dictionary)<BR>
<A HREF="cif_mm_cif2pdb.dic.Z"> cif_mm_cif2pdb.dic.Z </A> (Revised version of mmcif_pdbx.dic for use with cif2pdb)<BR>
<P>Decompressed versions of dictionaries used for testing: <BR>
<A HREF="XXPATH()cif_core.dic"> cif_core.dic </A> (2005 core dictionary)<BR>
<A HREF="XXPATH()cif_expanded_jun06.dic"> cif_expanded_jun06.dic </A> (2006 DDLm core dictionary draft)<BR>
<A HREF="XXPATH()cif_expanded_aug08.dic"> cif_expanded_aug08.dic </A> (2008 DDLm core dictionary draft)<BR>
<A HREF="XXPATH()cif_expanded_oct09.dic"> cif_expanded_oct09.dic </A> (2009 DDLm core dictionary draft)<BR>
<A HREF="XXPATH()cif_mm.dic"> cif_mm.dic </A> (2005 draft mmCIF dictionary)<BR>
<A HREF="XXPATH()cif_mm_pdbx.dic"> cif_mm_pdb.dic </A> (2005 mmCIF PDB exchange dictionary)<BR>
<A HREF="XXPATH()cif_mm_cif2pdb.dic"> cif_mm_cif2pdb.dic </A> (Revised version of mmcif_pdbx.dic for use with cif2pdb)<BR>
</BODY>
</HTML>
