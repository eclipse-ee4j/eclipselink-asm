/*
 * The contents of this file are subject to the terms
 * of the Common Development and Distribution License
 * (the License).  You may not use this file except in
 * compliance with the License.
 *
 * You can obtain a copy of the license at
 * https://glassfish.dev.java.net/public/CDDLv1.0.html or
 * glassfish/bootstrap/legal/CDDLv1.0.txt.
 * See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL
 * Header Notice in each file and include the License file
 * at glassfish/bootstrap/legal/CDDLv1.0.txt.
 * If applicable, add the following below the CDDL Header,
 * with the fields enclosed by brackets [] replaced by
 * you own identifying information:
 * "Portions Copyrighted [year] [name of copyright owner]"
 *
 * Copyright 2006 Sun Microsystems, Inc. All rights reserved.
 */


package javax.jms;

/** An <CODE>XATopicConnectionFactory</CODE> provides the same create options as
  * a <CODE>TopicConnectionFactory</CODE> (optional).
  *
  * <P>The <CODE>XATopicConnectionFactory</CODE> interface is optional.  JMS providers
  * are not required to support this interface. This interface is for
  * use by JMS providers to support transactional environments.
  * Client programs are strongly encouraged to use the transactional support
  * available in their environment, rather than use these XA
  * interfaces directly.
  *
  * @version     1.1 February 2, 2002
  * @author      Mark Hapner
  * @author      Rich Burridge
  * @author      Kate Stout
  *
  * @see         javax.jms.TopicConnectionFactory
  * @see         javax.jms.XAConnectionFactory
  */

public interface XATopicConnectionFactory
    extends XAConnectionFactory, TopicConnectionFactory {

    /** Creates an XA topic connection with the default user identity.
      * The connection is created in stopped mode. No messages
      * will be delivered until the <code>Connection.start</code> method
      * is explicitly called.
      *
      * @return a newly created XA topic connection
      *
      * @exception JMSException if the JMS provider fails to create an XA topic
      *                         connection due to some internal error.
      * @exception JMSSecurityException  if client authentication fails due to
      *                         an invalid user name or password.
      */

    XATopicConnection
    createXATopicConnection() throws JMSException;


    /** Creates an XA topic connection with the specified user identity.
      * The connection is created in stopped mode. No messages
      * will be delivered until the <code>Connection.start</code> method
      * is explicitly called.
      *
      * @param userName the caller's user name
      * @param password the caller's password
      *
      * @return a newly created XA topic connection
      *
      * @exception JMSException if the JMS provider fails to create an XA topic
      *                         connection due to some internal error.
      * @exception JMSSecurityException  if client authentication fails due to
      *                         an invalid user name or password.
      */

    XATopicConnection
    createXATopicConnection(String userName, String password)
                         throws JMSException;
}
