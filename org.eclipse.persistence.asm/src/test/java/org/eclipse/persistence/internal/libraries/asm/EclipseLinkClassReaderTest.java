/*
 * Copyright (c) 2018, 2025 Oracle, IBM Corporation, and/or their affiliates. All rights reserved.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0,
 * or the Eclipse Distribution License v. 1.0 which is available at
 * http://www.eclipse.org/org/documents/edl-v10.php.
 *
 * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
 */

package org.eclipse.persistence.internal.libraries.asm;

import java.io.InputStream;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

public class EclipseLinkClassReaderTest {

    private static final String CLASS_FILE_NAME = "org/eclipse/persistence/internal/libraries/asm/AnnotationWriter.class";

    /**
     * Basic functional test for ASM and {@link EclipseLinkClassReader}.
     * @throws Exception
     */
    @Test
    public void verifyASMTest() throws Exception {
        try (InputStream stream = EclipseLinkClassReader.class.getClassLoader().getResourceAsStream(CLASS_FILE_NAME)) {
            ClassReader reader = new EclipseLinkClassReader(stream);
            assertNotNull(reader);
            assertEquals("org/eclipse/persistence/internal/libraries/asm/AnnotationVisitor", reader.getSuperName());
            assertEquals("org/eclipse/persistence/internal/libraries/asm/AnnotationWriter", reader.getClassName());
        }
    }
}
