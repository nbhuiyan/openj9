; Copyright (c) 2000, 2018 IBM Corp. and others
;
; This program and the accompanying materials are made available under
; the terms of the Eclipse Public License 2.0 which accompanies this
; distribution and is available at https://www.eclipse.org/legal/epl-2.0/
; or the Apache License, Version 2.0 which accompanies this distribution and
; is available at https://www.apache.org/licenses/LICENSE-2.0.
;
; This Source Code may also be made available under the following
; Secondary Licenses when the conditions for such availability set
; forth in the Eclipse Public License, v. 2.0 are satisfied: GNU
; General Public License, version 2 with the GNU Classpath
; Exception [1] and GNU General Public License, version 2 with the
; OpenJDK Assembly Exception [2].
;
; [1] https://www.gnu.org/software/classpath/license.html
; [2] http://openjdk.java.net/legal/assembly-exception.html
;
; SPDX-License-Identifier: EPL-2.0 OR Apache-2.0 OR GPL-2.0 WITH Classpath-exception-2.0 OR LicenseRef-GPL-2.0 WITH Assembly-exception


; --------------------------------------------------------------------------------
;                                    COMMON
; --------------------------------------------------------------------------------

; Binary encoding of the MFENCE instruction.  Not all assemblers can handle the mnemonic.
;
%macro tr_mfence 0
      db          00Fh
      db          0AEh
      db          0F0h
%endmacro

%macro MEMORY_FENCE 0
      tr_mfence
%endmacro

eq_WideCPIndexPush                equ 000800000h
eq_ResolveWithoutPatchingMainline equ 000400000h
eq_ResolveWithoutPatchingSnippet  equ 000200000h
eq_ResolveStatic                  equ 020000000h
eq_Patch8ByteResolution           equ 040000000h
eq_CPIndexMask                    equ 00001ffffh
eq_VolatilityCheck                equ 000080000h
eq_UpperLongCheck                 equ 000020000h
eq_LowerLongCheck                 equ 000040000h
eq_MemFenceRAOffset32             equ 09ch
eq_MemFenceCallLength32           equ 005h
eq_MemFenceLCXHG                  equ 0ff0h
eq_HighWordOfLongPair             equ 040000000h
eq_ExtremeStaticMemBarPos         equ 080000000h
eq_LORBinaryWord                  equ 083f0h
eq_IsFloatOp                      equ 000040000h
eq_CompressedPointer              equ 040000000h
eq_isOwningObjectNeeded           equ 000040000h
eq_ObjectClassMask                equ -256 ;hack!! this is supposed to be read from jilconsts.inc: J9TR_RequiredClassAlignment

; --------------------------------------------------------------------------------
;                                    32-BIT
; --------------------------------------------------------------------------------

%ifndef TR_HOST_64BIT

J9PreservedFPRStackSize    equ   80

%macro LoadClassPointerFromObjectHeader 3 ;ObjectReg, ClassPtrReg64, ClassPtrReg32
        mov     %3, dword [%1+J9TR_J9Object_class]
        and     %3, eq_ObjectClassMask
%endmacro

%else

; --------------------------------------------------------------------------------
;                                    64-BIT
; --------------------------------------------------------------------------------




%macro LoadHelperIndex 2 ; targetReg,helperIndexSym
%ifdef WINDOWS
        mov     %1, dword [%2] ;&targetReg, dword ptr[&helperIndexSym]
%else
        mov     %1, dword [rel %2] ;&targetReg, dword ptr[rip+&helperIndexSym]
%endif
%endmacro


; Reads the class pointer from an object (the first 4 or 8 bytes)
; ObjectReg and ClassPtrReg may be the same register
; ClassPtrReg32 must be the lower part of ClassPtrReg64
;
%macro LoadClassPointerFromObjectHeader 3 ;ObjectReg, ClassPtrReg64, ClassPtrReg32
%ifdef ASM_J9VM_INTERP_COMPRESSED_OBJECT_HEADER
        mov     %3, dword [%1+J9TR_J9Object_class] ;&ClassPtrReg32, dword ptr[&ObjectReg+J9TR_J9Object_class]  ; read only 32 bits and zero extend
        and     %3, eq_ObjectClassMask ;&ClassPtrReg32, eq_ObjectClassMask
%else
        mov     %2, qword [%1 + J9TR_J9Object_class] ;&ClassPtrReg64, qword ptr[&ObjectReg+J9TR_J9Object_class]
        and     %3, eq_ObjectClassMask ;&ClassPtrReg64, eq_ObjectClassMask
%endif
%endmacro

%endif