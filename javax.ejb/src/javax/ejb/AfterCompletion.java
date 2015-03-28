/*
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
 *
 * Copyright (c) 2006, 2015 Oracle and/or its affiliates. All rights reserved.
 *
 * The contents of this file are subject to the terms of either the GNU
 * General Public License Version 2 only ("GPL") or the Common Development
 * and Distribution License("CDDL") (collectively, the "License").  You
 * may not use this file except in compliance with the License.  You can
 * obtain a copy of the License at
 * https://glassfish.dev.java.net/public/CDDL+GPL_1_1.html
 * or packager/legal/LICENSE.txt.  See the License for the specific
 * language governing permissions and limitations under the License.
 *
 * When distributing the software, include this License Header Notice in each
 * file and include the License file at packager/legal/LICENSE.txt.
 *
 * GPL Classpath Exception:
 * Oracle designates this particular file as subject to the "Classpath"
 * exception as provided by Oracle in the GPL Version 2 section of the License
 * file that accompanied this code.
 *
 * Modifications:
 * If applicable, add the following below the License Header, with the fields
 * enclosed by brackets [] replaced by your own identifying information:
 * "Portions Copyright [year] [name of copyright owner]"
 *
 * Contributor(s):
 * If you wish your version of this file to be governed by only the CDDL or
 * only the GPL Version 2, indicate your decision by adding "[Contributor]
 * elects to include this software in this distribution under the [CDDL or GPL
 * Version 2] license."  If you don't indicate a single choice of license, a
 * recipient has the option to distribute your version of this file under
 * either the CDDL, the GPL Version 2 or to extend the choice of license to
 * its licensees as provided above.  However, if you add GPL Version 2 code
 * and therefore, elected the GPL Version 2 license, then the option applies
 * only if the new code is made subject to such option by the copyright
 * holder.
 */

package javax.ejb;

import java.lang.annotation.Target;
import static java.lang.annotation.ElementType.*;
import java.lang.annotation.Retention;
import static java.lang.annotation.RetentionPolicy.*;

/**
 * Designate a stateful session bean method to receive the after completion
 * session synchronization callback.
 * <p>
 *
 * The after completion callback notifies a stateful session bean
 * instance that a transaction commit protocol has completed.
 * A completion status of true indicates that the transaction has
 * committed. A status of false indicates that a rollback has occurred.
 * <p>
 *
 * A bean must have at most one <code>AfterCompletion</code> method.
 * The signature of this method must observe the following rules:
 * <ul>
 * <li> The method must not be declared as <code>final</code> or <code>static</code>.
 * <li> The method may have any access type.
 * <li> The return type must be <code>void</code>.
 * <li> The method must take a single argument of type <code>boolean</code>.
 * </ul>
 *
 * <p> This method executes with no transaction context.
 * <p>
 *  A stateful session bean class may use either the
 *  <code>SessionSynchronization</code> interface or the session
 *  synchronization annotations, but not both.
 *
 * @see SessionSynchronization
 * @see AfterBegin
 * @see BeforeCompletion
 *
 * @since EJB 3.1
 */

@Target(METHOD)
@Retention(RUNTIME)
public @interface AfterCompletion {}
