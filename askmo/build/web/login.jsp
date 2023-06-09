<%--
	/*
	 * Copyright (c) 2010, Oracle. All rights reserved.
	 *
	 * Redistribution and use in source and binary forms, with or without
	 * modification, are permitted provided that the following conditions are met:
	 *
	 * * Redistributions of source code must retain the above copyright notice,
	 *   this list of conditions and the following disclaimer.
	 *
	 * * Redistributions in binary form must reproduce the above copyright notice,
	 *   this list of conditions and the following disclaimer in the documentation
	 *   and/or other materials provided with the distribution.
	 *
	 * * Neither the name of Oracle nor the names of its contributors
	 *   may be used to endorse or promote products derived from this software without
	 *   specific prior written permission.
	 *
	 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
	 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
	 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
	 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
	 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
	 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
	 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
	 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
	 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
	 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
	 * THE POSSIBILITY OF SUCH DAMAGE.
	 */
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>АС КМО</title>
    </head>
    <style type="text/css">
        p{
            color: #15426F;
            font-family: Verdana, Tahoma, serif;
        }
        h1{
            font-size: 22px;
            font-family: Verdana, Tahoma, serif;
            color:#15345A;
        }
        
        
    </style>
    <body bgcolor="#15345A">
        
        <div class="vxod" align="center" style="width: 280px; margin-top:150px; margin-left:538px; 
             border-radius: 5px 5px 5px 5px; padding:20px; background-color: #F5F5F5; height: 300px;">
    <h1>АС КМО</h1>
    
    <f:view>
        <h:messages style="color: red"
                    showDetail="true"/>
        <h:form id="login">
            <h:panelGrid columns="2" border="0">
                <p>Username:</p> <h:inputText id="username" 
                                       value="#{usermanager.username}"/>        
                <p>Password:</p> <h:inputSecret id="password"
                                         value="#{usermanager.password}"/>
            </h:panelGrid>
            <h:commandButton id="submit" 
                             type="submit"
                             value="Login"
                             action="#{usermanager.validateUser}"/>
            <br>
            <h:commandLink id="create"
                           value="Create"
                           action="create"/>
        </h:form>
      
    </f:view>
            
            
    </div>
    </body>
</html>
