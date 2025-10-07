/*
 * Copyright (c) 2023, 2025 Oracle, IBM Corporation, and/or their affiliates. All rights reserved.
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

import org.junit.jupiter.api.Test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

public class EclipseLinkClassWriterTest {

    private static final String SUPER_CLASS_NAME = TestSuperClass.class.getName();
    private static final URL SUPER_CLASS_FILE_NAME = TestSuperClass.class.getClassLoader().getResource(SUPER_CLASS_NAME.replace('.', '/') + ".class");
    private static final String CLASS_NAME_SLASHES = SUPER_CLASS_NAME.replace('.', '/').replace("TestSuperClass", "TestClass");

    /**
     * Basic functional test for ASM and {@link EclipseLinkASMClassWriter}.
     * @throws Exception
     */
    @Test
    public void verifyEclipseLinkASMClassWriter() throws Exception {
        final URL CLASS_FILE_NAME = new URL(SUPER_CLASS_FILE_NAME.toString().replace("TestSuperClass", "TestClass"));
        try (FileOutputStream outputStream = new FileOutputStream(CLASS_FILE_NAME.getPath())) {
            ClassWriter cw = new EclipseLinkASMClassWriter();
            cw.visit(Opcodes.V1_8, Opcodes.ACC_PUBLIC + Opcodes.ACC_SUPER, CLASS_NAME_SLASHES, null, SUPER_CLASS_NAME, null);
            MethodVisitor mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
            mv.visitVarInsn(Opcodes.ALOAD, 0);
            mv.visitMethodInsn(Opcodes.INVOKESPECIAL, SUPER_CLASS_NAME, "<init>", "()V", false);
            mv.visitInsn(Opcodes.RETURN);
            mv.visitMaxs(0, 0);
            mv.visitEnd();
            outputStream.write(cw.toByteArray());
            cw.visitEnd();
        }
        try (InputStream stream = new FileInputStream(CLASS_FILE_NAME.getPath())) {
            ClassReader reader = new EclipseLinkClassReader(stream);
            assertNotNull(reader);
            assertEquals(SUPER_CLASS_NAME, reader.getSuperName());
            assertEquals(CLASS_NAME_SLASHES, reader.getClassName());
        }
    }
}
