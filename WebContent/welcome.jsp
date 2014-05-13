<!--
 Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>CloudTrader Login</TITLE>
<LINK rel="stylesheet" href="style.css" type="text/css" />
</HEAD>
<BODY bgcolor="#ffffff" link="#000099">
<%@ page session="false"%>

<TABLE width="100%" height="30">
	<TBODY>
		<TR>
			<TD></TD>
			<TD><FONT color="#ff0033"><FONT color="#ff0033"><FONT color="#ff0033"><% String results;
results = (String) request.getAttribute("results");
if ( results != null )out.print(results);
%></FONT></FONT></FONT></TD>
			<TD></TD>
		</TR>
	</TBODY>
</TABLE>
<DIV align="center">
<TABLE width="" class = "simpleborder">
	<TBODY>
		<TR>
			<TD width="2%" bgcolor="" rowspan="3"></TD>
			<TD width="98%"><B>Log in</B>
			</br>&nbsp;</br>
			
			</TD>
		</TR>
		<TR>
			<TD align="left"><FONT size="-1">Username &nbsp; &nbsp; &nbsp;&nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password </FONT></TD>
		</TR>
		<TR>
			<TD align="right">

			<FORM action="app" method="POST"><INPUT size="10" type="text"
				name="uid" value="uid:0"> &nbsp; &nbsp; &nbsp; &nbsp; <INPUT
				size="10" type="password" name="passwd" value="xxx"> &nbsp;</br> <INPUT
				type="submit" value="Trade!">
				</br><INPUT type="hidden" name="action"
				value="login"></FORM>
			</TD>
		</TR>
	</TBODY>
</TABLE>
</DIV>
<TABLE width="100%">
	<TBODY>

		<TR>
			<TD bgcolor="" rowspan="4"></TD>
			<TD align = "right"><B><FONT size="-1" color="#000000"><BLOCKQUOTE><A href="register.jsp">First time user?</A>
			</BLOCKQUOTE>
			</TD>
		</TR>
		<TR>
			<TD>
			<HR>
			</TD>
		</TR>
	</TBODY>
</TABLE>
</BODY>
</HTML>
