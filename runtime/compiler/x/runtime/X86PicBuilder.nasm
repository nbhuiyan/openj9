; Copyright (c) 2000, 2017 IBM Corp. and others
;
; This program and the accompanying materials are made available under
; the terms of the Eclipse Public License 2.0 which accompanies this
; distribution and is available at https:
; or the Apache License, Version 2.0 which accompanies this distribution and
; is available at https:
;
; This Source Code may also be made available under the following
; Secondary Licenses when the conditions for such availability set
; forth in the Eclipse Public License, v. 2.0 are satisfied: GNU
; General Public License, version 2 with the GNU Classpath
; Exception [1] and GNU General Public License, version 2 with the
; OpenJDK Assembly Exception [2].
;
; [1] https:
; [2] http:
;
; SPDX-License-Identifier: EPL-2.0 OR Apache-2.0 OR GPL-2.0 WITH Classpath-exception-2.0 OR LicenseRef-GPL-2.0 WITH Assembly-exception


; TODO: #include "j9cfg.h"

%ifndef TR_HOST_64BIT

; --------------------------------------------------------------------------------
;
; 32-BIT
;
; --------------------------------------------------------------------------------

      CPU PPRO

      ;option NoOldMacros

      
      ; %include "jilconsts.inc" :

%assign ASM_J9VM_JIT_NEW_DUAL_HELPERS 1
%assign ASM_J9VM_ENV_LITTLE_ENDIAN 1
%assign ASM_J9VM_ENV_DATA64 1
%assign ASM_J9VM_INTERP_COMPRESSED_OBJECT_HEADER 1
%assign ASM_J9VM_THR_LOCK_NURSERY 1
%assign ASM_J9VM_INTERP_SMALL_MONITOR_SLOT 1
%assign ASM_J9VM_GC_TLH_PREFETCH_FTA 1
%assign ASM_J9VM_GC_DYNAMIC_CLASS_UNLOADING 1
%assign J9TR_cframe_sizeof 280
%assign J9TR_cframe_vmStruct 0
%assign J9TR_cframe_machineBP 8
%assign J9TR_cframe_jitGPRs 16
%assign J9TR_cframe_jitFPRs 144
%assign J9TR_cframe_rax 16
%assign J9TR_cframe_rbx 24
%assign J9TR_cframe_rcx 32
%assign J9TR_cframe_rdx 40
%assign J9TR_cframe_rdi 48
%assign J9TR_cframe_rsi 56
%assign J9TR_cframe_rbp 64
%assign J9TR_cframe_rsp 72
%assign J9TR_cframe_r8 80
%assign J9TR_cframe_r9 88
%assign J9TR_cframe_r10 96
%assign J9TR_cframe_r11 104
%assign J9TR_cframe_r12 112
%assign J9TR_cframe_r13 120
%assign J9TR_cframe_r14 128
%assign J9TR_cframe_r15 136
%assign J9TR_runtimeFlags_PatchingFenceRequired 67108864
%assign J9TR_runtimeFlags_PatchingFenceType 134217728
%assign J9TR_VMThread_machineSP 2392
%assign J9TR_machineSP_machineBP 8
%assign J9TR_machineSP_vmStruct 0
%assign J9TR_VMThreadCurrentException 72
%assign J9TR_VMThread_floatTemp1 264
%assign J9TR_VMThread_floatTemp2 272
%assign J9TR_VMThread_floatTemp3 280
%assign J9TR_VMThread_floatTemp4 288
%assign J9TR_VMThread_stackOverflowMark 80
%assign J9TR_VMThread_heapAlloc 96
%assign J9TR_VMThread_heapTop 104
%assign J9TR_VMThread_tlhPrefetchFTA 112
%assign J9TR_VMThread_publicFlags 152
%assign J9TR_VMThread_privateFlags 424
%assign J9TR_VMThread_privateFlags2 2336
%assign J9TR_VMThreadJavaVM 8
%assign J9TR_VMThread_javaVM 8
%assign J9TR_VMThread_sp 32
%assign J9TR_VMThread_pc 40
%assign J9TR_VMThread_literals 48
%assign J9TR_VMThread_arg0EA 16
%assign J9TR_VMThread_codertTOC 344
%assign J9TR_VMThread_debugEventData1 496
%assign J9TR_VMThread_debugEventData2 504
%assign J9TR_VMThread_debugEventData3 512
%assign J9TR_VMThread_debugEventData4 520
%assign J9TR_VMThread_debugEventData5 528
%assign J9TR_VMThread_debugEventData6 536
%assign J9TR_VMThread_debugEventData7 544
%assign J9TR_VMThread_debugEventData8 552
%assign J9TR_VMThread_tempSlot 248
%assign J9TR_VMThread_jitReturnAddress 256
%assign J9TR_VMThread_returnValue 296
%assign J9TR_VMThread_returnValue2 304
%assign J9TR_VMThread_entryLocalStorage 616
%assign J9TR_VMThread_stackWalkState 608
%assign J9TR_J9StackWalkState_restartPoint 224
%assign J9TR_JavaVMJitConfig 6384
%assign J9TR_JavaVM_runtimeFlags 224
%assign J9TR_JavaVM_cInterpreter 184
%assign J9TR_JavaVM_bytecodeLoop 192
%assign J9TR_JavaVM_extendedRuntimeFlags 228
%assign J9TR_JavaVMInternalFunctionTable 0
%assign J9TR_ELS_jitGlobalStorageBase 8
%assign J9TR_ELS_jitFPRegisterStorageBase 48
%assign J9TR_ELS_machineSPSaveSlot 88
%assign J9TR_J9VMJITRegisterState_jit_fpr0 128
%assign J9TR_J9Class_classLoader 40
%assign J9TR_J9Class_lastITable 96
%assign J9TR_J9Class_lockOffset 200
%assign J9TR_ArrayClass_componentType 88
%assign J9TR_ITableOffset 24
%assign J9TR_J9ITable_interfaceClass 0
%assign J9TR_MethodFlagsOffset 8
%assign J9TR_MethodPCStartOffset 24
%assign J9TR_JitConfig_runtimeFlags 1088
%assign J9TR_JitConfig_loadPreservedAndBranch 2960
%assign J9TR_JitConfig_pseudoTOC 1984
%assign J9TR_InternalFunctionTableReleaseVMAccess 312
%assign J9TR_J9Object_class 0
%assign J9TR_ObjectHeader_class 0
%assign J9TR_IndexableObjectContiguous_objectData 8
%assign J9TR_J9SFJNICallInFrame_exitAddress 0
%assign J9TR_bcloop_execute_bytecode 0
%assign J9TR_bcloop_handle_pop_frames 10
%assign J9TR_bcloop_i2j_transition 16
%assign J9TR_bcloop_j2i_invoke_exact 12
%assign J9TR_bcloop_j2i_transition 11
%assign J9TR_bcloop_j2i_virtual 13
%assign J9TR_bcloop_jump_bytecode_prototype 2
%assign J9TR_bcloop_load_preserved_and_branch 14
%assign J9TR_bcloop_return_from_jit 17
%assign J9TR_bcloop_return_from_jit_ctor 18
%assign J9TR_bcloop_run_exception_handler 4
%assign J9TR_bcloop_run_jni_native 5
%assign J9TR_bcloop_run_method 1
%assign J9TR_bcloop_run_method_compiled 3
%assign J9TR_bcloop_run_method_handle 7
%assign J9TR_bcloop_run_method_handle_compiled 8
%assign J9TR_bcloop_run_method_interpreted 9
%assign J9TR_bcloop_stack_overflow 6
%assign J9TR_bcloop_throw_current_exception 15
%assign J9TR_bcloop_enter_method_monitor 19
%assign J9TR_bcloop_report_method_enter 20
%assign J9TR_bcloop_exit_interpreter 22
%assign J9TR_MethodNotCompiledBit 1
%assign J9TR_InterpVTableOffset 328
%assign J9TR_RequiredClassAlignment 256
%assign J9TR_RequiredClassAlignmentInBits 8
%assign J9TR_pointerSize 8
%assign J9TR_ELSSize 96
%assign J9TR_J9_EXTENDED_RUNTIME_DEBUG_MODE 16384
%assign J9TR_J9_EXTENDED_RUNTIME_USE_VECTOR_REGISTERS 1
%assign J9TR_J9_INLINE_JNI_MAX_ARG_COUNT 32

; args: register, helperName
%macro MoveHelper 2
		lea %1,[rip + %2]
%endmacro

; source, helperName, register
%macro CompareHelperUseReg 3
	   	lea %3,[rip + %2]
	   	cmp %1, %3
%endmacro

;helperName
%macro CallHelper 1
	   	call %1
%endmacro

; helperName, register
%macro CallHelperUseReg 2
	   	call $1
%endmacro

; temp, index, table
%macro JumpTableHelper 3
		lea %1,[rip + %3]
		jmp qword [%1 + %2 * 8]
%endmacro

;table
%macro JumpTableStart 1
align 16
%1:
%endmacro

;table
%macro JumpTableEnd 1

%endmacro

;helperName
;%macro ExternHelper 1
;extern %1:near
;%endmacro

;helperName
%macro GlueHelper 1
		test    byte [rdi+J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit
	   	jnz     %1
	   	jmp     mergedStaticGlueCallFixer
%endmacro

      ;include x/runtime/X86PicBuilder.inc:

      ; --------------------------------------------------------------------------------
;                                    COMMON
; --------------------------------------------------------------------------------

; Binary encoding of the MFENCE instruction.  Not all assemblers can handle the mnemonic.
;
%macro tr_mfence
      db          00Fh
      db          0AEh
      db          0F0h
%endmacro

%macro MEMORY_FENCE
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
eq_ObjectClassMask                equ -J9TR_RequiredClassAlignment

; --------------------------------------------------------------------------------
;                                    32-BIT
; --------------------------------------------------------------------------------

%ifndef TR_HOST_64BIT

J9PreservedFPRStackSize    equ   80

LoadClassPointerFromObjectHeader macro ObjectReg, ClassPtrReg64, ClassPtrReg32
        mov     &ClassPtrReg32, dword ptr[&ObjectReg+J9TR_J9Object_class]
        and     &ClassPtrReg32, eq_ObjectClassMask
endm

%else

; --------------------------------------------------------------------------------
;                                    64-BIT
; --------------------------------------------------------------------------------




%macro LoadHelperIndex 2 ; targetReg,helperIndexSym
%ifdef WINDOWS
        mov     %1, dword [%2] ;&targetReg, dword ptr[&helperIndexSym]
%else
        mov     %1, dword [rip + %2] ;&targetReg, dword ptr[rip+&helperIndexSym]
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


      ;assume cs:flat,ds:flat,ss:flat
      ;_TEXT SEGMENT PARA USE32 PUBLIC 'CODE'
      ;_TEXT ends

      ;_TEXT SEGMENT PARA USE32 PUBLIC 'CODE'
      segment .text

      extern jitLookupInterfaceMethod
      extern jitResolveInterfaceMethod
      extern jitResolveVirtualMethod
      extern jitCallJitAddPicToPatchOnClassUnload

      global resolveIPicClass
      global populateIPicSlotClass
      global populateIPicSlotCall
      global dispatchInterpretedFromIPicSlot
      global IPicLookupDispatch

      global resolveVPicClass
      global populateVPicSlotClass
      global populateVPicSlotCall
      global dispatchInterpretedFromVPicSlot
      global populateVPicVTableDispatch
      global resolveAndPopulateVTableDispatch
      global memoryFence


; Perform a memory fence. The capabilities of the target architecture must be inspected at runtime
; to determine the appropriate fence instruction to use.
;
      align 16
memoryFence: ;proc near

      push ecx ; preserve
      mov ecx, J9TR_VMThread_javaVM[ebp]
      mov ecx, J9TR_JavaVMJitConfig[ecx]
      mov ecx, J9TR_JitConfig_runtimeFlags[ecx]
      test ecx, J9TR_runtimeFlags_PatchingFenceType
      jz short doLockOrEsp

      MEMORY_FENCE
      jmp doneMemoryFence

doLockOrEsp:
      db 0F0h
      db 083h
      db 00Ch
      db 024h
      db 000h

doneMemoryFence:
      pop ecx ; restore
      retn

;memoryFence endp


; Resolve the interface method and update the IPIC data area with the interface J9Class
; and the itable index.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the resolution helper.
;
      align 16
resolveIPicClass: ; proc near
      push edx ; preserve
      push edi ; preserve
      mov edi, dword [esp+8] ; RA in code cache

      cmp byte [edi+1], 075h ; is it a short branch?
      jnz resolveIPicClassLongBranch ; no

      lea edi, [edi+9] ; EA of disp8 in JMP
                                                               ; 9 = 1 + 2 (JNE) + 5 (CALL) + 1 (JMP)
      movzx edx, byte [edi] ; disp8 to end of IPic
      lea edx, [edi+edx-11] ; edx = EA of disp32 of JNE
                                                               ; -11 = 1 (instr. after JMP) -12 (EA of disp32 of JNE)
      add edx, dword [edx] ; EA of lookup dispatch snippet
      lea edx, [edx+14] ; EA of IPic data block

mergeFindDataBlockForResolveIPicClass:
      push eax ; push receiver

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;
      push edi ; p) jit valid EIP
      push edx ; p) push the address of the constant pool and cpIndex
      CallHelperUseReg jitResolveInterfaceMethod,eax ; returns interpreter vtable index

      call memoryFence ; Ensure IPIC data area drains to memory before proceeding.

      push ebx ; preserve
      push ecx ; preserve

      ; Stack shape:
      ;
      ; +24 last parameter
      ; +20 RA in code cache (call to helper)
      ; +16 saved edx
      ; +12 saved edi
      ; +8 saved eax (receiver)
      ; +4 saved ebx
      ; +0 saved ecx
      ;

      ; Construct the call instruction in edx:eax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper eax, resolveIPicClass
      MoveHelper ebx, populateIPicSlotClass
      mov edi, dword [esp+20] ; edi = RA in mainline (call to helper)
      mov edx, dword [edi-1] ; edx = 3 bytes after the call to helper + high byte of disp32
      sub eax, edi ; Expected disp32 for call to helper
      rol eax, 8
      mov dl, al ; Copy high byte of calculated disp32 to expected word
      mov al, 0e8h ; add CALL opcode

      ; Construct the byte sequence in ecx:ebx to re-route the call
      ; to populateIPicSlotClass.
      ;
      sub ebx, edi ; disp32 to populate snippet
      mov ecx, edx
      rol ebx, 8
      mov cl, bl ; Form high byte of calculated disp32
      mov bl, 0e8h ; add CALL opcode

      ; Attempt to patch the code.
      ;
%ifdef WINDOWS
      lock cmpxchg8b qword [edi-5] ; EA of CMP instruction in mainline
%else
      lock cmpxchg8b [edi-5] ; EA of CMP instruction in mainline
%endif

      pop ecx ; restore
      pop ebx ; restore
      pop eax
      pop edi
      pop edx

      sub dword [esp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

resolveIPicClassLongBranch:
      mov edx, dword [edi+3] ; disp32 for branch to snippet
      lea edx, [edi+edx+17] ; EA of IPic data block
                                                               ; 17 = 7 (offset to instr after branch) + 5 (CALL) + 5 (JMP)
      jmp mergeFindDataBlockForResolveIPicClass

ret ;resolveIPicClass endp


; Look up a resolved interface method and attempt to occupy the PIC slot
; that routed control to this helper.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateIPicSlotClass: ; proc near
      push edx ; preserve
      push edi ; preserve
      mov edi, dword [esp+8] ; RA in code cache

      cmp byte [edi+1], 075h ; is it a short branch?
      jnz populateIPicClassLongBranch ; no

      lea edi, [edi+9] ; EA of disp8 in JMP
                                                               ; 9 = 1 + 2 (JNE) + 5 (CALL) + 1 (JMP)
      movzx edx, byte  [edi] ; disp8 to end of IPic
      lea edx, [edi+edx-11] ; edx = EA of disp32 of JNE
                                                               ; -11 = 1 (instr. after JMP) -12 (EA of disp32 of JNE)
      add edx, dword  [edx] ; EA of lookup dispatch snippet

      lea edx, [edx+14] ; EA of constant pool and cpIndex
                                                               ; 14 = 4 + 10 (CALL+JMP)
mergePopulateIPicClass:
      push eax ; push receiver

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;




      lea edx, [edx+8] ; EA of IClass in data block
                                                               ; = 4 + 10 (CALL+JMP) + 8 (cpaddr,cpIndex)
                                                               ;
                                                               ; Or if jmp to mergePopulateIPicClass taken
                                                               ; = 7 (offset to instr after branch) + 5 (CALL) +
                                                               ; 5 (JMP) + 8 (cpaddr,cpIndex)

      push edi ; p) jit EIP
      push edx ; p) EA of resolved interface class
      LoadClassPointerFromObjectHeader eax, eax, eax
      push eax ; p) receiver class
      CallHelperUseReg jitLookupInterfaceMethod,eax ; returns interpreter vtable offset

      ; Lookup succeeded--attempt to grab the PIC slot for this receivers class.
      ;
      push ebx ; preserve
      push ecx ; preserve
      push esi ; preserve

      ; Stack shape:
      ;
      ; +28 last parameter
      ; +24 RA in code cache (call to helper)
      ; +20 saved edx
      ; +16 saved edi
      ; +12 saved eax (receiver)
      ; +8 saved ebx
      ; +4 saved ecx
      ; +0 saved esi
      ;

      ; Construct the call instruction in edx:eax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      mov esi, edx ; esi = EA of IClass in data block

      MoveHelper eax, populateIPicSlotClass
      mov edi, dword  [esp+24] ; edi = RA in mainline (call to helper)
      mov edx, dword  [edi-1] ; edx = 3 bytes after the call to helper + high byte of disp32
      sub eax, edi ; Expected disp32 for call to snippet
      rol eax, 8
      mov dl, al ; Copy high byte of calculated disp32 to expected word
      mov al, 0e8h ; add CALL opcode

      ; Construct the CMP instruction in ecx:ebx to devirtualize the interface
      ; method for this receivers class.
      ;
      mov cx, word  [edi+1] ; 2 bytes of jump to next slot
      rol ecx, 16
      mov ebx, dword  [esp+12] ; receiver
      LoadClassPointerFromObjectHeader ebx, ebx, ebx ; receiver class
      rol ebx, 16
      mov cx, bx
      mov bl, 081h ; CMP opcode
      mov bh, byte  [esi+8] ; ModRM byte in data area (offset from IClass)

      ; Attempt to patch in the CMP instruction.
      ;
%ifdef WINDOWS
      lock cmpxchg8b qword  [edi-5] ; EA of CMP instruction in mainline
%else
      lock cmpxchg8b [edi-5] ; EA of CMP instruction in mainline
%endif


%ifdef ASM_J9VM_GC_DYNAMIC_CLASS_UNLOADING
      jnz short IPicClassSlotUpdateFailed

      ; Register the address of the immediate field in the CMP instruction
      ; for dynamic class unloading iff the interface class and the
      ; receiver class have been loaded by different class loaders.
      ;
      mov eax, dword  [esp+12] ; grab the receiver before its restored
      LoadClassPointerFromObjectHeader eax, edx, edx ; receiver class
      mov eax, dword  [edx+J9TR_J9Class_classLoader] ; receivers class loader

      mov ebx, dword  [esi] ; ebx == IClass from IPic data area
      cmp eax, dword  [ebx+J9TR_J9Class_classLoader] ; compare class loaders
      jz short IPicClassSlotUpdateFailed ; class loaders are the same--do nothing

      lea edi, [edi-3] ; EA of immediate
      push edi ; p) address to patch
      push edx ; p) receivers class
      CallHelper jitCallJitAddPicToPatchOnClassUnload
IPicClassSlotUpdateFailed:
%endif

      pop esi ; restore
      pop ecx ; restore
      pop ebx ; restore
      pop eax ; restore receiver
      pop edi
      pop edx

      sub dword [esp], 5 ; fix RA to re-run the CMP
      ret ; branch will mispredict so single-byte RET is ok

populateIPicClassLongBranch:
      mov edx, dword  [edi+3] ; disp32 for branch to snippet
      lea edx, [edi+edx+17] ; EA of constant pool and cpIndex
                                                               ; 17 = 7 (offset to instr after branch) + 5 (CALL) +
                                                               ; 5 (JMP)
      jmp mergePopulateIPicClass
ret ;populateIPicSlotClass endp


; Look up a resolved interface method and update the call to the method
; that routed control to this helper.
;
; STACK SHAPE: must maintain stack shape expected by call to
; getJitVirtualMethodResolvePushes() across the call to the lookup helper.
;
      align 16
populateIPicSlotCall: ; proc near
      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      cmp byte  [edi-13], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or a CMP opcode.
                                                               ; -13 = -5 (CALL) -3 (NOP) -5 (CMP or JNE)
      jz populateLastIPicSlot
      movzx edx, byte  [edi+1] ; JMP displacement to end of IPic
      lea edx, [edi+edx-6] ; edx = EA of NOP instruction after JNE in last slot
                                                               ; -6 = +2 (skip JMP disp8) - 5 (call in last slot) - 3 (NOP)

mergeIPicSlotCall:
      add edx, dword  [edx-4] ; EA of lookup dispatch snippet
      lea edx, [edx+10] ; EA of constant pool and cpIndex
                                                               ; 10 = 5 (CALL) + 5 (JMP)

      push eax ; push receiver
      LoadClassPointerFromObjectHeader eax, eax, eax ; receiver class

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;




      lea edx, [edx+8] ; EA of IClass in data block
                                                               ; 18 = 5 (CALL) + 5 (JMP) + 8 (cpAddr,cpIndex)

      push edi ; p) jit EIP
      push edx ; p) EA of resolved interface class
      push eax ; p) receiver class
      CallHelperUseReg jitLookupInterfaceMethod,eax ; returns interpreter vtable offset
      mov edx, eax
      pop eax ; restore receiver
      push ecx ; preserve

      LoadClassPointerFromObjectHeader eax, ecx, ecx ; receiver class
      mov ecx, dword  [ecx+edx] ; J9Method from interpreter vtable
      test byte  [ecx + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jnz short IPicSlotMethodInterpreted

mergeUpdateIPicSlotCallWithCompiledMethod:
      mov ecx, dword  [ecx+J9TR_MethodPCStartOffset]

mergeUpdateIPicSlotCall:
      mov edi, dword  [esp+12] ; RA in code cache
      sub ecx, edi ; compute new disp32
      mov dword  [edi-4], ecx ; patch disp32 in call instruction

      pop ecx ; restore
      add esp, 8 ; edx and edi do not need to be restored because they
                                                               ; are killed by the linkage
      sub edi, 5 ; set up RA to re-run patched call instruction
      mov dword  [esp], edi
      ret ; re-run the call instruction

populateLastIPicSlot:
      lea edx, [edi-8] ; 8 = 5 (CALL) + 3 (NOP)
      jmp mergeIPicSlotCall

IPicSlotMethodInterpreted:
      MoveHelper ecx, dispatchInterpretedFromIPicSlot
      jmp short mergeUpdateIPicSlotCall

ret ;populateIPicSlotCall endp


; Call an interpreted method from an IPic slot.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
dispatchInterpretedFromIPicSlot: ; proc near
      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      cmp byte  [edi-13], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or a CMP opcode.
                                                               ; -13 = -5 (CALL) -3 (NOP) -5 (CMP or JNE)
      jz interpretedLastIPicSlot
      movzx edx, byte  [edi+1] ; JMP displacement to end of IPic
      lea edx, [edi+edx-6] ; edx = EA of NOP instruction after JNE in last slot
                                                               ; -6 = +2 (skip JMP disp8) - 5 (call in last slot) - 3 (NOP)
mergeIPicInterpretedDispatch:
      add edx, dword  [edx-4] ; EA of lookup dispatch snippet
      lea edx, [edx+10] ; EA of constant pool and cpIndex
                                                               ; 10 = 5 (CALL) + 5 (JMP)

      push eax ; push receiver
      LoadClassPointerFromObjectHeader eax, eax, eax ; receiver class

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;





      lea edx, [edx+8] ; EA of IClass in data block
                                                               ; 18 = 5 (CALL) + 5 (JMP) + 8 (cpAddr,cpIndex)

      push edi ; p) jit EIP
      push edx ; p) EA of resolved interface class
      push eax ; p) receiver class
      CallHelperUseReg jitLookupInterfaceMethod,eax ; returns interpreter vtable offset
      mov edx, eax
      pop eax ; restore receiver
      push ecx ; preserve

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved ecx
      ;
      LoadClassPointerFromObjectHeader eax, ecx, ecx ; receiver class
      mov ecx, dword  [ecx+edx] ; J9Method from interpreter vtable
      test byte  [ecx + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jz mergeUpdateIPicSlotCallWithCompiledMethod

      ; Target method is still interpreted--dispatch it.
      ;
      sub edx, J9TR_InterpVTableOffset
      neg edx ; JIT vtable offset
      LoadClassPointerFromObjectHeader eax, ecx, ecx ; receiver class
      mov edi, [ecx+edx] ; target in JIT side vtable
      pop ecx ; restore
      add esp, 8 ; edx and edi do not need to be restored because they
                                                               ; are killed by the linkage.
      jmp edi

interpretedLastIPicSlot:
      lea edx, [edi-8] ; 8 = 5 (CALL) + 3 (NOP)
      jmp mergeIPicInterpretedDispatch

ret ;dispatchInterpretedFromIPicSlot endp


; Look up an implemented interface method in this receivers class and
; dispatch it.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
IPicLookupDispatch:  ;proc near
      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      lea edi, [edi+5] ; EA of constant pool and cpIndex
                                                               ; 5 = 5 (JMP)

      push eax ; push receiver
      LoadClassPointerFromObjectHeader eax, edx, edx ; receiver class

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;





      lea edi, [edi+8] ; EA of IClass in data block
                                                               ; 13 = 5 (JMP) + 8 (cpAddr,cpIndex)

      push edi ; p) jit EIP
      push edi ; p) EA of resolved interface class in IPic
      push edx ; p) receiver class
      CallHelperUseReg jitLookupInterfaceMethod,eax ; returns interpreter vtable offset
      sub eax, J9TR_InterpVTableOffset
      neg eax ; JIT vtable offset
      mov edi, [edx+eax] ; target in JIT side vtable

      ; j2iVirtual expects edx to contain the JIT vtable offset
      ;
      mov edx, eax
      pop eax ; restore receiver
      add esp, 8 ; edx and edi do not need to be restored because they
                                                               ; are killed by the linkage
      jmp edi
ret ;IPicLookupDispatch endp


; Resolve the virtual method and throw an exception if the resolution was not successful.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the resolution helper.
;
      align 16
resolveVPicClass:  ;proc near
; int 3

      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      cmp byte  [edi+1], 075h ; is it a short branch?
      jnz resolveVPicClassLongBranch ; no

      lea edi, [edi+9] ; EA of disp8 in JMP
                                                               ; 9 = 1 + 2 (JNE) + 5 (CALL) + 1 (JMP)
      movzx edx, byte  [edi] ; disp8 to end of VPic
      lea edx, [edi+edx-11] ; edx = EA of disp32 of JNE
                                                               ; -11 = 1 (instr. after JMP) -12 (EA of disp32 of JNE)
      add edx, dword  [edx] ; EA of vtable dispatch snippet
      lea edx, [edx-9] ; EA of VPic data block

mergeFindDataBlockForResolveVPicClass:
      push eax ; push receiver

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;
      push edi ; p) jit valid EIP
      push edx ; p) push the address of the constant pool and cpIndex
      CallHelperUseReg jitResolveVirtualMethod,eax ; returns compiler vtable index

      push ebx ; preserve
      push ecx ; preserve

      ; Stack shape:
      ;
      ; +24 last parameter
      ; +20 RA in code cache (call to helper)
      ; +16 saved edx
      ; +12 saved edi
      ; +8 saved eax (receiver)
      ; +4 saved ebx
      ; +0 saved ecx
      ;

      ; Construct the call instruction in edx:eax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper eax, resolveVPicClass
      MoveHelper ebx, populateVPicSlotClass
      mov edi, dword  [esp+20] ; edi = RA in mainline (call to helper)
      mov edx, dword  [edi-1] ; edx = 3 bytes after the call to helper + high byte of disp32
      sub eax, edi ; Expected disp32 for call to helper
      rol eax, 8
      mov dl, al ; Copy high byte of calculated disp32 to expected word
      mov al, 0e8h ; add CALL opcode

      ; Construct the byte sequence in ecx:ebx to re-route the call
      ; to populateVPicSlotClass.
      ;
      sub ebx, edi ; disp32 to populate snippet
      mov ecx, edx
      rol ebx, 8
      mov cl, bl ; Form high byte of calculated disp32
      mov bl, 0e8h ; add CALL opcode

      ; Attempt to patch the code.
      ;
%ifdef WINDOWS
      lock cmpxchg8b qword  [edi-5] ; EA of CMP instruction in mainline
%else
      lock cmpxchg8b [edi-5] ; EA of CMP instruction in mainline
%endif

      pop ecx ; restore
      pop ebx ; restore
      pop eax ; restore
      pop edi ; restore
      pop edx ; restore

      sub dword [esp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

resolveVPicClassLongBranch:
      mov edx, dword  [edi+3] ; disp32 for branch to snippet
      lea edx, [edi+edx-2] ; EA of VPic data block
                                                               ; -2 = 7 (offset to instr after branch) -9 (DB+cpIndex+cpAddr)
      jmp mergeFindDataBlockForResolveVPicClass

ret ;resolveVPicClass endp


; Populate a PIC slot with the class of the receiver.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateVPicSlotClass:  ;proc near
; int 3

      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      cmp byte  [edi+1], 075h ; is it a short branch?
      jnz populateVPicClassLongBranch ; no

      lea edi, [edi+9] ; EA of disp8 in JMP
                                                               ; 9 = 1 + 2 (JNE) + 5 (CALL) + 1 (JMP)
      movzx edx, byte  [edi] ; disp8 to end of VPic
      lea edx, [edi+edx-11] ; edx = EA of disp32 of JNE
                                                               ; -11 = 1 (instr. after JMP) -12 (EA of disp32 of JNE)
      add edx, dword  [edx] ; EA of vtable dispatch snippet
      lea edx, [edx-5] ; EA of VPic data block
                                                               ; -5 = 4 - 9 (DB + cpAddr,cpIndex)
mergePopulateVPicClass:
      push eax ; push receiver
      push ebx ; preserve
      push ecx ; preserve
      push esi ; preserve

      ; Stack shape:
      ;
      ; +28 last parameter
      ; +24 RA in code cache (call to helper)
      ; +20 saved edx
      ; +16 saved edi
      ; +12 saved eax (receiver)
      ; +8 saved ebx
      ; +4 saved ecx
      ; +0 saved esi
      ;

      ; Construct the call instruction in edx:eax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      mov esi, edx ; esi = EA of VPic data block

      MoveHelper eax, populateVPicSlotClass
      mov edi, dword  [esp+24] ; edi = RA in mainline (call to helper)
      mov edx, dword  [edi-1] ; edx = 3 bytes after the call to helper + high byte of disp32
      sub eax, edi ; Expected disp32 for call to snippet
      rol eax, 8
      mov dl, al ; Copy high byte of calculated disp32 to expected word
      mov al, 0e8h ; add CALL opcode

      ; Construct the CMP instruction in ecx:ebx to devirtualize the virtual
      ; method for this receivers class.
      ;
      mov cx, word  [edi+1] ; 2 bytes of jump to next slot
      rol ecx, 16
      mov ebx, dword  [esp+12] ; receiver
      LoadClassPointerFromObjectHeader ebx, ebx, ebx ; receiver class
      rol ebx, 16
      mov cx, bx
      mov bl, 081h ; CMP opcode
      mov bh, byte  [esi+8] ; ModRM byte in VPic data area

      ; Attempt to patch in the CMP instruction.
      ;
%ifdef WINDOWS
      lock cmpxchg8b qword  [edi-5] ; EA of CMP instruction in mainline
%else
      lock cmpxchg8b [edi-5] ; EA of CMP instruction in mainline
%endif


%ifdef ASM_J9VM_GC_DYNAMIC_CLASS_UNLOADING
      jnz short VPicClassSlotUpdateFailed

      ; Register the address of the immediate field in the CMP instruction.
      ;
      mov eax, dword  [esp+12] ; grab the receiver before its restored
      LoadClassPointerFromObjectHeader eax, edx, edx ; receiver class

      lea edi, [edi-3] ; EA of immediate
      push edi ; p) address to patch
      push edx ; p) receivers class
      CallHelper jitCallJitAddPicToPatchOnClassUnload
VPicClassSlotUpdateFailed:
%endif

      pop esi ; restore
      pop ecx ; restore
      pop ebx ; restore
      pop eax ; restore receiver
      pop edi ; restore
      pop edx ; restore
      sub dword [esp], 5 ; fix RA to re-run the CMP
      ret ; branch will mispredict so single-byte RET is ok

populateVPicClassLongBranch:
      mov edx, dword  [edi+3] ; disp32 for branch to snippet
      lea edx, [edi+edx-2] ; EA of VPic data block
                                                               ; -2 = 7 (offset to instr after branch) - 9 (DB,cpIndex,cpAddr)
      jmp mergePopulateVPicClass
ret ;populateVPicSlotClass endp


; Populate a PIC slot with the devirtualized method from this receivers class.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateVPicSlotCall:  ;proc near
; int 3

      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      cmp byte  [edi-13], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or a CMP opcode.
                                                               ; -13 = -5 (CALL) -3 (NOP) -5 (CMP or JNE)
      jz populateLastVPicSlot
      movzx edx, byte  [edi+1] ; JMP displacement to end of VPic
      lea edx, [edi+edx-6] ; edx = EA of NOP instruction after JNE in last slot
                                                               ; -6 = +2 (skip JMP disp8) - 5 (call in last slot) - 3 (NOP)
mergeVPicSlotCall:
      add edx, dword  [edx-4] ; EA of vtable dispatch snippet
      lea edx, [edx-9] ; EA of VPic data block
                                                               ; -9 = (DB,cpIndex,cpAddr)
      push eax ; push receiver

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;
      push edi ; p) jit valid EIP
      push edx ; p) push the address of the constant pool and cpIndex
      CallHelperUseReg jitResolveVirtualMethod,eax ; returns compiler vtable index

      mov edx, dword [esp] ; edx = receiver

      ; Stack shape:
      ;
      ; +12 last parameter
      ; +8 RA in code cache (call to helper)
      ; +4 saved edx
      ; +0 saved edi
      ;
      LoadClassPointerFromObjectHeader edx, edx, edx ; receiver class

      ; Check the RAM method to see if the target is compiled.
      ;
      neg eax ; negate to turn it into an interpreter offset
      mov eax, dword [edx + eax + J9TR_InterpVTableOffset] ; eax = RAM method from interpreter vtable
      test byte  [eax + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jnz short VPicSlotMethodInterpreted

mergeUpdateVPicSlotCallWithCompiledMethod:
      mov edx, dword  [eax+J9TR_MethodPCStartOffset] ; edx = compiled method entry point

mergeUpdateVPicSlotCall:
      pop eax ; restore receiver
      sub edx, edi ; compute new disp32
      mov dword  [edi-4], edx ; patch disp32 in call instruction
      lea edi, [edi-5] ; set up RA to re-run patched call instruction
      mov dword  [esp+8], edi ; re-run the call instruction
      pop edi
      pop edx
      ret

populateLastVPicSlot:
      lea edx, [edi-8] ; 8 = 5 (CALL) + 3 (NOP)
      jmp mergeVPicSlotCall

VPicSlotMethodInterpreted:
      MoveHelper edx, dispatchInterpretedFromVPicSlot
      jmp short mergeUpdateVPicSlotCall

ret ;populateVPicSlotCall endp


; Dispatch an interpreted devirtualized target. If the target is compiled then patch the PIC slot
; with the compiled target and dispatch through that. Otherwise, route control through the vtable
; dispatch path.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
dispatchInterpretedFromVPicSlot:  ;proc near
; int 3

      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache

      cmp byte  [edi-13], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or a CMP opcode.
                                                               ; -13 = -5 (CALL) -3 (NOP) -5 (CMP or JNE)
      jz interpretedLastVPicSlot
      movzx edx, byte  [edi+1] ; JMP displacement to end of VPic
      lea edx, [edi+edx-6] ; edx = EA of NOP instruction after JNE in last slot
                                                               ; -6 = +2 (skip JMP disp8) - 5 (call in last slot) - 3 (NOP)
mergeVPicInterpretedDispatch:
      add edx, dword  [edx-4] ; edx = EA of vtable dispatch snippet
      push eax ; push receiver
      LoadClassPointerFromObjectHeader eax, edi, edi ; receiver class

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;

      ; If the call through vtable has already been patched then grab the
      ; compiler vtable offset from the disp32 of that instruction.
      ;
      cmp byte  [edx], 0e8h ; still a direct CALL instruction?
      je vtableCallNotPatched ; yes
      mov eax, dword [edx+2] ; eax = compiler vtable offset

mergeCheckIfMethodCompiled:

      ; Check the RAM method to see if the target is compiled.
      ;
      neg eax ; negate to turn it into an interpreter offset
      mov eax, dword [edi + eax + J9TR_InterpVTableOffset] ; eax = RAM method from interpreter vtable
      test byte  [eax + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?

      mov edi, dword [esp+12] ; restore edi for merge branch
      jz mergeUpdateVPicSlotCallWithCompiledMethod

      ; Re-route the caller to dispatch through the vtable code in the snippet.
      ;
      mov dword  [esp+12], edx ; redirect return to vtable dispatch snippet
      pop eax ; restore receiver
      pop edi ; restore
      pop edx ; restore
      ret

interpretedLastVPicSlot:
      lea edx, [edi-8] ; 8 = 5 (CALL) + 3 (NOP)
      jmp mergeVPicInterpretedDispatch

vtableCallNotPatched:
      lea edx, [edx-9] ; edx = EA of VPic data
                                                               ; -9 = (DB + cpAddr,cpIndex)
      push dword  [esp+12] ; p) jit valid EIP
      push edx ; p) push the address of the constant pool and cpIndex
      CallHelperUseReg jitResolveVirtualMethod,eax ; eax = compiler vtable index
      lea edx, [edx+9] ; restore edx = EA of vtable dispatch
      jmp short mergeCheckIfMethodCompiled

ret ;dispatchInterpretedFromVPicSlot endp


; Patch the code to dispatch through the compiled vtable slot now that the vtable
; slot is known.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the resolution helper.
;
      align 16
populateVPicVTableDispatch:  ;proc near
; int 3

      push edx ; preserve
      push edi ; preserve
      mov edi, dword  [esp+8] ; RA in code cache
      lea edx, [edi-14] ; EA of VPic data block
                                                               ; -14 = -5 (CALL) -9 (DB,cpIndex,cpAddr)
      push eax ; push receiver

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to helper)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;
      push edi ; p) jit valid EIP
      push edx ; p) push the address of the constant pool and cpIndex
      CallHelperUseReg jitResolveVirtualMethod,eax ; returns compiler vtable index

      push ebx ; preserve
      push ecx ; preserve
      push esi ; preserve

      ; Stack shape:
      ;
      ; +28 last parameter
      ; +24 RA in code cache (call to helper)
      ; +20 saved edx
      ; +16 saved edi
      ; +12 saved eax (receiver)
      ; +8 saved ebx
      ; +4 saved ecx
      ; +0 saved esi
      ;

      mov ecx, eax ; ecx = compiler vtable index

      ; An atomic CMPXCHG8B is not strictly necessary to patch this instruction.
      ; However, it simplifies the code to have only a single path through here rather
      ; than several based on the atomic 64-bit store capabilities on various
      ; supported processors.
      ;

      ; Construct the call instruction in edx:eax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper eax, populateVPicVTableDispatch
      mov edx, dword  [edi-1] ; edx = 3 bytes after the call to helper + high byte of disp32
      mov esi, edx ; copy to preserve 3 bytes
      sub eax, edi ; Expected disp32 for call to helper
      rol eax, 8
      mov dl, al ; Copy high byte of calculated disp32 to expected word
      mov al, 0e8h ; add CALL opcode

      ; Construct the byte sequence in ecx:ebx to dispatch through vtable.
      ;
      rol ecx, 16
      mov ebx, ecx
      and esi, 0ffff0000h ; mask off 2 bytes following CMP instruction
      and ecx, 0ffffh ; mask off high 2 bytes of vtable disp32
      or ecx, esi

      and ebx, 0ffff0000h ; mask off low 2 bytes of vtable disp32
      mov bh, byte  [edi-6] ; ModRM of CMP instruction
      sub bh, 068h ; convert to ModRM for CALL instruction
      mov bl, 0ffh ; add CALL opcode

      lea edi, [edi-5]

      ; Attempt to patch the code.
      ;
%ifdef WINDOWS
      lock cmpxchg8b qword  [edi] ; EA of vtable dispatch
%else
      lock cmpxchg8b [edi] ; EA of vtable dispatch
%endif

      mov dword  [esp+24], edi ; fix RA to run the vtable call
      pop esi ; restore
      pop ecx ; restore
      pop ebx ; restore
      pop eax ; restore receiver
      pop edi ; restore
      pop edx ; restore
      ret ; branch will mispredict so single-byte RET is ok

ret ;populateVPicVTableDispatch endp


; Resolve and populate a vtable dispatch call at runtime.
;
; The invocation of this function is expected to occur in the following context:
;
; ...
; call vtableDispatchSnippet --> call [classPtr + vtable slot]
; ...
;
; vtableDispatchSnippet:
; push edx
; call resolveAndPopulateVtableDispatch
; dd cpAddr
; dd cpIndex
; dw CALL opcode + modRM
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the resolution helper.
;
      align 16

resolveAndPopulateVTableDispatch:  ;proc near
; int 3

      ; edx was preserved prior to the call and is available as a scratch register
      ;
      pop edx ; edx = RA in snippet = EA of resolution data block
      push edi ; preserve
      push eax ; push receiver

      ; Stack shape:
      ;
      ; +16 last parameter
      ; +12 RA in code cache (call to snippet)
      ; +8 saved edx
      ; +4 saved edi
      ; +0 saved eax (receiver)
      ;
      push edx ; p) jit valid EIP
      push edx ; p) push the address of the constant pool and cpIndex
      CallHelperUseReg jitResolveVirtualMethod,eax ; returns compiler vtable index

      push ebx ; preserve
      push ecx ; preserve
      push esi ; preserve
      push edx ; preserve

      ; Stack shape:
      ;
      ; +32 last parameter
      ; +28 RA in code cache (call to snippet)
      ; +24 saved edx
      ; +20 saved edi
      ; +16 saved eax (receiver)
      ; +12 saved ebx
      ; +8 saved ecx
      ; +4 saved esi
      ; +0 saved edx
      ;
      mov ecx, eax ; ecx = compiler vtable index

      ; An atomic CMPXCHG8B is not strictly necessary to patch this instruction.
      ; However, it simplifies the code to have only a single path through here rather
      ; than several based on the atomic 64-bit store capabilities on various
      ; supported processors.
      ;

      ; Construct the call instruction in edx:eax that should have brought
      ; us to this snippet + the following 3 bytes.
      ;
      lea eax, [edx-6] ; eax = snippet entry point
                                                               ; -6 = -5 (CALL) -1 (PUSH edx)
      mov edi, dword  [esp+28] ; edi = RA in mainline
      mov edx, dword  [edi-1] ; edx = 3 bytes after the call to snippet + high byte of disp32
      mov esi, edx ; copy to preserve 3 bytes
      sub eax, edi ; Expected disp32 for call to snippet
      rol eax, 8
      mov dl, al ; Copy high byte of calculated disp32 to expected word
      mov al, 0e8h ; add CALL opcode

      ; Construct the byte sequence in ecx:ebx to dispatch through vtable.
      ;
      rol ecx, 16
      mov ebx, ecx
      and esi, 0ffff0000h ; mask off 2 bytes following CALL instruction
      and ecx, 0ffffh ; mask off high 2 bytes of vtable disp32
      or ecx, esi

      and ebx, 0ffff0000h ; mask off low 2 bytes of vtable disp32
      pop esi ; esi = RA in snippet
      mov bx, word  [esi+8] ; add in CALL + modRM byte
                                                               ; +8 = 4 (cpAddr) + 4 (cpIndex)
      lea edi, [edi-5]

      ; Attempt to patch the code. No need to check for failure as we will always
      ; back up and re-run the instruction in the mainline code.
      ;
%ifdef WINDOWS
      lock cmpxchg8b qword  [edi] ; EA of vtable dispatch
%else
      lock cmpxchg8b [edi] ; EA of vtable dispatch
%endif

      mov dword  [esp+24], edi ; fix RA to run the vtable call
      pop esi ; restore
      pop ecx ; restore
      pop ebx ; restore
      pop eax ; restore receiver
      pop edi ; restore
      pop edx ; restore
      ret ; branch will mispredict so single-byte RET is ok

ret ;resolveAndPopulateVTableDispatch endp

;_TEXT ends

%else

; --------------------------------------------------------------------------------
;
; 64-BIT
;
; --------------------------------------------------------------------------------

      
      ; %include "jilconsts.inc" :

%assign ASM_J9VM_JIT_NEW_DUAL_HELPERS 1
%assign ASM_J9VM_ENV_LITTLE_ENDIAN 1
%assign ASM_J9VM_ENV_DATA64 1
%assign ASM_J9VM_INTERP_COMPRESSED_OBJECT_HEADER 1
%assign ASM_J9VM_THR_LOCK_NURSERY 1
%assign ASM_J9VM_INTERP_SMALL_MONITOR_SLOT 1
%assign ASM_J9VM_GC_TLH_PREFETCH_FTA 1
%assign ASM_J9VM_GC_DYNAMIC_CLASS_UNLOADING 1
%assign J9TR_cframe_sizeof 280
%assign J9TR_cframe_vmStruct 0
%assign J9TR_cframe_machineBP 8
%assign J9TR_cframe_jitGPRs 16
%assign J9TR_cframe_jitFPRs 144
%assign J9TR_cframe_rax 16
%assign J9TR_cframe_rbx 24
%assign J9TR_cframe_rcx 32
%assign J9TR_cframe_rdx 40
%assign J9TR_cframe_rdi 48
%assign J9TR_cframe_rsi 56
%assign J9TR_cframe_rbp 64
%assign J9TR_cframe_rsp 72
%assign J9TR_cframe_r8 80
%assign J9TR_cframe_r9 88
%assign J9TR_cframe_r10 96
%assign J9TR_cframe_r11 104
%assign J9TR_cframe_r12 112
%assign J9TR_cframe_r13 120
%assign J9TR_cframe_r14 128
%assign J9TR_cframe_r15 136
%assign J9TR_runtimeFlags_PatchingFenceRequired 67108864
%assign J9TR_runtimeFlags_PatchingFenceType 134217728
%assign J9TR_VMThread_machineSP 2392
%assign J9TR_machineSP_machineBP 8
%assign J9TR_machineSP_vmStruct 0
%assign J9TR_VMThreadCurrentException 72
%assign J9TR_VMThread_floatTemp1 264
%assign J9TR_VMThread_floatTemp2 272
%assign J9TR_VMThread_floatTemp3 280
%assign J9TR_VMThread_floatTemp4 288
%assign J9TR_VMThread_stackOverflowMark 80
%assign J9TR_VMThread_heapAlloc 96
%assign J9TR_VMThread_heapTop 104
%assign J9TR_VMThread_tlhPrefetchFTA 112
%assign J9TR_VMThread_publicFlags 152
%assign J9TR_VMThread_privateFlags 424
%assign J9TR_VMThread_privateFlags2 2336
%assign J9TR_VMThreadJavaVM 8
%assign J9TR_VMThread_javaVM 8
%assign J9TR_VMThread_sp 32
%assign J9TR_VMThread_pc 40
%assign J9TR_VMThread_literals 48
%assign J9TR_VMThread_arg0EA 16
%assign J9TR_VMThread_codertTOC 344
%assign J9TR_VMThread_debugEventData1 496
%assign J9TR_VMThread_debugEventData2 504
%assign J9TR_VMThread_debugEventData3 512
%assign J9TR_VMThread_debugEventData4 520
%assign J9TR_VMThread_debugEventData5 528
%assign J9TR_VMThread_debugEventData6 536
%assign J9TR_VMThread_debugEventData7 544
%assign J9TR_VMThread_debugEventData8 552
%assign J9TR_VMThread_tempSlot 248
%assign J9TR_VMThread_jitReturnAddress 256
%assign J9TR_VMThread_returnValue 296
%assign J9TR_VMThread_returnValue2 304
%assign J9TR_VMThread_entryLocalStorage 616
%assign J9TR_VMThread_stackWalkState 608
%assign J9TR_J9StackWalkState_restartPoint 224
%assign J9TR_JavaVMJitConfig 6384
%assign J9TR_JavaVM_runtimeFlags 224
%assign J9TR_JavaVM_cInterpreter 184
%assign J9TR_JavaVM_bytecodeLoop 192
%assign J9TR_JavaVM_extendedRuntimeFlags 228
%assign J9TR_JavaVMInternalFunctionTable 0
%assign J9TR_ELS_jitGlobalStorageBase 8
%assign J9TR_ELS_jitFPRegisterStorageBase 48
%assign J9TR_ELS_machineSPSaveSlot 88
%assign J9TR_J9VMJITRegisterState_jit_fpr0 128
%assign J9TR_J9Class_classLoader 40
%assign J9TR_J9Class_lastITable 96
%assign J9TR_J9Class_lockOffset 200
%assign J9TR_ArrayClass_componentType 88
%assign J9TR_ITableOffset 24
%assign J9TR_J9ITable_interfaceClass 0
%assign J9TR_MethodFlagsOffset 8
%assign J9TR_MethodPCStartOffset 24
%assign J9TR_JitConfig_runtimeFlags 1088
%assign J9TR_JitConfig_loadPreservedAndBranch 2960
%assign J9TR_JitConfig_pseudoTOC 1984
%assign J9TR_InternalFunctionTableReleaseVMAccess 312
%assign J9TR_J9Object_class 0
%assign J9TR_ObjectHeader_class 0
%assign J9TR_IndexableObjectContiguous_objectData 8
%assign J9TR_J9SFJNICallInFrame_exitAddress 0
%assign J9TR_bcloop_execute_bytecode 0
%assign J9TR_bcloop_handle_pop_frames 10
%assign J9TR_bcloop_i2j_transition 16
%assign J9TR_bcloop_j2i_invoke_exact 12
%assign J9TR_bcloop_j2i_transition 11
%assign J9TR_bcloop_j2i_virtual 13
%assign J9TR_bcloop_jump_bytecode_prototype 2
%assign J9TR_bcloop_load_preserved_and_branch 14
%assign J9TR_bcloop_return_from_jit 17
%assign J9TR_bcloop_return_from_jit_ctor 18
%assign J9TR_bcloop_run_exception_handler 4
%assign J9TR_bcloop_run_jni_native 5
%assign J9TR_bcloop_run_method 1
%assign J9TR_bcloop_run_method_compiled 3
%assign J9TR_bcloop_run_method_handle 7
%assign J9TR_bcloop_run_method_handle_compiled 8
%assign J9TR_bcloop_run_method_interpreted 9
%assign J9TR_bcloop_stack_overflow 6
%assign J9TR_bcloop_throw_current_exception 15
%assign J9TR_bcloop_enter_method_monitor 19
%assign J9TR_bcloop_report_method_enter 20
%assign J9TR_bcloop_exit_interpreter 22
%assign J9TR_MethodNotCompiledBit 1
%assign J9TR_InterpVTableOffset 328
%assign J9TR_RequiredClassAlignment 256
%assign J9TR_RequiredClassAlignmentInBits 8
%assign J9TR_pointerSize 8
%assign J9TR_ELSSize 96
%assign J9TR_J9_EXTENDED_RUNTIME_DEBUG_MODE 16384
%assign J9TR_J9_EXTENDED_RUNTIME_USE_VECTOR_REGISTERS 1
%assign J9TR_J9_INLINE_JNI_MAX_ARG_COUNT 32

; args: register, helperName
%macro MoveHelper 2
		lea %1,[rip + %2]
%endmacro

; source, helperName, register
%macro CompareHelperUseReg 3
	   	lea %3,[rip + %2]
	   	cmp %1, %3
%endmacro

;helperName
%macro CallHelper 1
	   	call %1
%endmacro

; helperName, register
%macro CallHelperUseReg 2
	   	call $1
%endmacro

; temp, index, table
%macro JumpTableHelper 3
		lea %1,[rip + %3]
		jmp qword [%1 + %2 * 8]
%endmacro

;table
%macro JumpTableStart 1
align 16
%1:
%endmacro

;table
%macro JumpTableEnd 1

%endmacro

;helperName
;%macro ExternHelper 1
;extern %1:near
;%endmacro

;helperName
%macro GlueHelper 1
		test    byte [rdi+J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit
	   	jnz     %1
	   	jmp     mergedStaticGlueCallFixer
%endmacro

      ;include x/runtime/X86PicBuilder.inc:

      ; --------------------------------------------------------------------------------
;                                    COMMON
; --------------------------------------------------------------------------------

; Binary encoding of the MFENCE instruction.  Not all assemblers can handle the mnemonic.
;
%macro tr_mfence
      db          00Fh
      db          0AEh
      db          0F0h
%endmacro

%macro MEMORY_FENCE
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
eq_ObjectClassMask                equ -J9TR_RequiredClassAlignment

; --------------------------------------------------------------------------------
;                                    32-BIT
; --------------------------------------------------------------------------------

%ifndef TR_HOST_64BIT

J9PreservedFPRStackSize    equ   80

LoadClassPointerFromObjectHeader macro ObjectReg, ClassPtrReg64, ClassPtrReg32
        mov     &ClassPtrReg32, dword ptr[&ObjectReg+J9TR_J9Object_class]
        and     &ClassPtrReg32, eq_ObjectClassMask
endm

%else

; --------------------------------------------------------------------------------
;                                    64-BIT
; --------------------------------------------------------------------------------




%macro LoadHelperIndex 2 ; targetReg,helperIndexSym
%ifdef WINDOWS
        mov     %1, dword [%2] ;&targetReg, dword ptr[&helperIndexSym]
%else
        mov     %1, dword [rip + %2] ;&targetReg, dword ptr[rip+&helperIndexSym]
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

OPTION NOSCOPED

;_TEXT segment para 'CODE'
segment .text

      global resolveIPicClass
      global populateIPicSlotClass
      global populateIPicSlotCall
      global dispatchInterpretedFromIPicSlot
      global IPicLookupDispatch

      global resolveVPicClass
      global populateVPicSlotClass
      global populateVPicSlotCall
      global dispatchInterpretedFromVPicSlot
      global populateVPicVTableDispatch

      extern jitResolveInterfaceMethod
      extern jitLookupInterfaceMethod
      extern jitResolveVirtualMethod
      extern jitCallCFunction
      extern jitCallJitAddPicToPatchOnClassUnload
      extern jitMethodIsNative

      extern resolveIPicClassHelperIndex
      extern populateIPicSlotClassHelperIndex
      extern dispatchInterpretedFromIPicSlotHelperIndex
      extern resolveVPicClassHelperIndex
      extern populateVPicSlotClassHelperIndex
      extern dispatchInterpretedFromVPicSlotHelperIndex
      extern populateVPicVTableDispatchHelperIndex

      extern mcc_lookupHelperTrampoline_unwrapper
      extern mcc_reservationInterfaceCache_unwrapper
      extern mcc_callPointPatching_unwrapper



; Given a code cache address following a branch to a helper, return the disp32
; to either the helper itself or its reachable trampoline.
;
; p1 [rax] : helper address
; p2 [rsi] : helper index
; p3 [rdx] : RA in code cache after branch to helper
;
; All registers preserved except rax.
;
      align 16
selectHelperOrTrampolineDisp32:  ;proc
      push rcx ; preserve
      push rdx ; preserve
      push rsi ; preserve

      ; Determine if the call to the helper is within range.
      ;
      mov rcx, rax
      sub rcx, rdx
      sar rcx, 31
      jz helperIsReachable
      cmp rcx, -1
      jz helperIsReachable

      ; Helper is not in range--find the trampoline for this helper.
      ;
      ; Create and populate TLS area for trampoline lookup call.
      ;
      ; rsp+32 return value
      ; rsp+24 padding
      ; rsp+16 padding
      ; rsp+8 helper index
      ; rsp call site

      mov rcx, rdx ; preserve RA in code cache
      sub rsp, 24 ; 24 = 8 (RV) + 16 (padding)
      push rsi ; helper index
      push rdx ; RA after call site

      ; Call MCC service
      ;
      MoveHelper rax, mcc_lookupHelperTrampoline_unwrapper ; p1) helper address
      lea rsi, [rsp] ; p2) EA parms in TLS area
      lea rdx, [rsp+32] ; p3) EA of return value in TLS area
      call jitCallCFunction
      add rsp, 32
      pop rax ; trampoline address from return area
      mov rdx, rcx ; restore RA in code cache

helperIsReachable:
      sub rax, rdx ; calculate disp32
      mov eax, eax ; ensure upper 32-bits are zero
      pop rsi ; restore
      pop rdx ; restore
      pop rcx ; restore
      ret
ret ;selectHelperOrTrampolineDisp32 endp

%if 0
(10) mov rdi, 0x0000ffffffffffff call resolveIPicClass -> populateIPicSlotClass
(3) cmp rdx, rdi
(2) jne checkNextSlot
(5) call devirtualizedTarget call populateIPicSlotCall
(2) jmp done

(2) .align 8

         .align 8
checkLastSlot:
(10) mov rdi, 0x0000ffffffffffff call populateIPicSlotClass
(3) cmp rdx, rdi
(6) jne lookupDispatchSnippet
(5) call devirtualizedTarget call populateIPicSlotCall

      0: ret addr to picbuilder
      1: arg3
      2: arg2
      3: arg1
      4: arg0
      5: saved RDI <==== unwindSP points here
      6: code cache return address
      7: last arg <==== unwindSP should point here
%endif


; Resolve the interface method and update the IPIC data area with the interface J9Class
; and the itable index.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the resolution helper.
;
         align 16
resolveIPicClass:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3
      mov rdi, qword  [rsp+40] ; RA in code cache

      cmp byte  [rdi+8], 075h ; is it a short branch?
      jnz resolveIPicClassLongBranch ; no
      movzx rsi, byte  [rdi+16] ; disp8 to end of IPic
                                                               ; 16 = 5 + 3 (CMP) + 2 (JNE) + 5 (CALL) + 1 (JMP)
      lea rdx, [rdi+rsi+8] ; rdx = EA of disp32 of JNE
                                                               ; 8 = 1 (instr. after JMP) -9 (EA of disp32 of JNE) + 16 (offset to disp8 EA)
      movsxd rsi, dword  [rdx]
      lea rdx, [rsi+rdx+14] ; EA of IPic data block
                                                               ; 14 = +4 (EA after JNE) + 5 (CALL) + 5 (JMP)
mergeResolveIPicClass:

      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      mov rsi, rdi ; p2) jit valid EIP
      mov rax, rdx ; p1) address of the constant pool and cpIndex
      CallHelperUseReg jitResolveInterfaceMethod,rax ; returns interpreter vtable index

      mfence ; Ensure IPIC data area drains to memory before proceeding.

      ; Construct the call instruction in rax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper rax, populateIPicSlotClass ; p1) rax = helper address
      LoadHelperIndex esi, populateIPicSlotClassHelperIndex ; p2) rsi = helper index
      mov rdx, rdi ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      mov rcx, rax
      shl rcx, 8
      mov cl, 0e8h

      MoveHelper rax, resolveIPicClass ; p1) rax = helper address
      LoadHelperIndex esi, resolveIPicClassHelperIndex ; p2) rsi = helper index
                                                               ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      shl rax, 8
      mov al, 0e8h

      lock cmpxchg qword  [rdx-5], rcx ; patch attempt

      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword [rsp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

resolveIPicClassLongBranch:
      movsxd rdx, dword  [rdi+10] ; disp32 for branch to snippet
                                                               ; 10 = 5 + 3 (CMP) + 2 (JNE)
      lea rdx, [rdi+rdx+24] ; EA of IPic data block
                                                               ; 24 = 14 (offset to instr after branch) + 5 (CALL) + 5 (JMP)
      jmp mergeResolveIPicClass
ret ;resolveIPicClass endp

; Look up a resolved interface method and attempt to occupy the PIC slot
; that routed control to this helper.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateIPicSlotClass:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      cmp byte  [rdx+8], 075h ; is it a short branch?
      jnz populateIPicClassLongBranch ; no
      movzx rcx, byte  [rdx+16] ; disp8 to end of IPic
                                                               ; 16 = 5 + 3 (CMP) + 2 (JNE) + 5 (CALL) + 1 (JMP)
      lea rsi, [rdx+rcx+8] ; rsi = EA of disp32 of JNE
                                                               ; 8 = 1 (instr. after JMP) -9 (EA of disp32 of JNE) + 16 (offset to disp8 EA)
      movsxd rdi, dword  [rsi]
      lea rcx, [rsi+rdi+14] ; EA of constant pool and cpIndex
                                                               ; 14 = 4 + 10 (CALL+JMP)
      lea rsi, [rsi+rdi+30] ; EA of IPic data block
                                                               ; 30 = 4 + 10 (CALL+JMP) + 16 (cpAddr,cpIndex)
mergePopulateIPicClass:

      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      LoadClassPointerFromObjectHeader rax, rax, eax ; p1) receiver class
                                                               ; p2) rsi = resolved interface class EA
                                                               ; p3) rdx = jit RIP
                                                               ; p4) rcx = address of constant pool and cpIndex
      CallHelperUseReg jitLookupInterfaceMethod,rax ; returns interpreter vtable offset

      mov rdi, rsi ; resolved IClass EA

      ; Lookup succeeded--attempt to grab the PIC slot for this receivers class.
      ;
      ; Construct the call instruction in rax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper rax, populateIPicSlotClass ; p1) rax = helper address
      LoadHelperIndex esi, populateIPicSlotClassHelperIndex ; p2) rsi = helper index
                                                               ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      shl rax, 8
      mov al, 0e8h

      ; Construct the MOV instruction in rcx to load the cached class address.
      ;
      mov rcx, qword [rsp+24] ; receiver
      LoadClassPointerFromObjectHeader rcx, rcx, ecx ; receiver class
      mov rsi, rcx ; receiver class
      rol rcx, 16
      mov cx, word [rdi+16] ; REX+MOV

      lock cmpxchg qword  [rdx-5], rcx ; patch attempt

%ifdef ASM_J9VM_GC_DYNAMIC_CLASS_UNLOADING
      jnz short IPicClassSlotUpdateFailed

      ; Register the address of the immediate field in the MOV instruction
      ; for dynamic class unloading iff the interface class and the
      ; receiver class have been loaded by different class loaders.
      ;
      mov rax, rsi ; receivers class
      mov rsi, qword  [rsi+J9TR_J9Class_classLoader] ; receivers class loader

      mov rcx, qword  [rdi] ; rcx == IClass from IPic data area
      cmp rsi, qword  [rcx+J9TR_J9Class_classLoader] ; compare class loaders
      jz short IPicClassSlotUpdateFailed ; class loaders are the same--do nothing

                                                               ; p1) rax = receivers class
      lea rsi, [rdx-3] ; p2) rsi = EA of Imm64 to patch
      CallHelper jitCallJitAddPicToPatchOnClassUnload
IPicClassSlotUpdateFailed:
%endif

      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword [rsp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

populateIPicClassLongBranch:
      movsxd rsi, dword  [rdx+10] ; disp32 for branch to snippet
                                                               ; 10 = 5 + 3 (CMP) + 2 (JNE)
      lea rcx, [rdx+rsi+24] ; EA of constant pool and cpIndex
                                                               ; 24 = 14 (offset to instr after branch) + 5 (CALL) + 5 (JMP)
      lea rsi, [rdx+rsi+40] ; EA of IPic data block
                                                               ; 40 = 14 (offset to instr after branch) + 5 (CALL) + 5 (JMP)
                                                               ; + 16 (cpAddr,cpIndex)
      jmp mergePopulateIPicClass
ret ;populateIPicSlotClass endp


; Look up a resolved interface method and update the call to the method
; that routed control to this helper.
;
; STACK SHAPE: must maintain stack shape expected by call to
; getJitVirtualMethodResolvePushes() across the call to the lookup helper.
;
         align 16
populateIPicSlotCall:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      cmp byte  [rdx-10], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or the REX prefix of a CMP opcode.
                                                               ; -10 = -5 (CALL) -5 (CMP or JNE)
      jz populateLastIPicSlot
      movzx rdi, byte  [rdx+1] ; JMP displacement to end of IPic
      lea rdi, [rdi+rdx-3] ; rdi = EA after JNE in last slot
                                                               ; -3 = +2 (skip JMP disp8) - 5 (call in last slot)
mergeIPicSlotCall:
      movsxd rsi, dword  [rdi-4]

      lea rcx, [rsi+rdi+10] ; EA of constant pool and cpIndex
                                                               ; 10 = 10 (CALL+JMP)

      lea rsi, [rsi+rdi+26] ; EA of IPic data block
                                                               ; 26 = 10 (CALL+JMP) + 16 (cpAddr,cpIndex)
      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      LoadClassPointerFromObjectHeader rax, rax, eax ; p1) receiver class
      mov rdi, rax
                                                               ; p2) rsi = resolved interface class EA
                                                               ; p3) rdx = jit RIP
                                                               ; p4) rcx = address of constant pool and cpIndex
      CallHelperUseReg jitLookupInterfaceMethod,rax ; returns interpreter vtable offset

      mov rax, qword  [rdi+rax] ; rax = J9Method from interpreter vtable
      test byte  [rax + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jnz short IPicSlotMethodInterpreted

      ; We have a compiled method. Claim the trampoline reservation for this
      ; target method if one doesnt exist for it yet reclaim the trampoline
      ; space if it already does.
      ;
mergeUpdateIPicSlotCallWithCompiledMethod:
      push rax ; build descriptor : J9Method
      push rdx ; build descriptor : call site
      MoveHelper rax, mcc_reservationInterfaceCache_unwrapper ; p1) helper
      lea rsi, [rsp] ; p2) pointer to args
      lea rdx, [rsp] ; p3) pointer to return
      call jitCallCFunction
      pop rdx ; tear down descriptor
      pop rax ; tear down descriptor

      mov rcx, qword  [rax+J9TR_MethodPCStartOffset] ; compiled method interpreter entry point from J9Method
      mov edi, dword  [rcx-4] ; fetch preprologue info word
      shr edi, 16 ; isolate interpreter argument flush area size
      add rcx, rdi ; rcx = JIT entry point

      ; Check if a branch through a trampoline is currently required at this callsite.
      ; If not, defer creating one until its actually required at runtime.
      ;
      sub rcx, rdx
      mov rdi, rcx
      sar rdi, 31
      jz mergeUpdateIPicSlotCall
      cmp rdi, -1
      jnz populateIPicSlotCallWithTrampoline

mergeUpdateIPicSlotCall:
      mov dword  [rdx-4], ecx ; patch disp32 in call instruction

populateIPicSlotCallExit:
      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword [rsp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

IPicSlotMethodInterpreted:
      MoveHelper rax, dispatchInterpretedFromIPicSlot ; p1) rax = helper address
      LoadHelperIndex esi, dispatchInterpretedFromIPicSlotHelperIndex ; p2) rsi = helper index
                                                                ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      mov ecx, eax ; 32-bit copy because disp32
      jmp short mergeUpdateIPicSlotCall

populateLastIPicSlot:
      lea rdi, [rdx-5] ; -5 = -5 (CALL)
      jmp mergeIPicSlotCall

populateIPicSlotCallWithTrampoline:
      push 0 ; argsPtr[3] : extra arg
      mov rsi, qword [rax+J9TR_MethodPCStartOffset]
      push rsi ; argsPtr[2] : compiled method interpreter entry point
      lea rsi, [rdx-5]
      push rsi ; argsPtr[1] : call site (EA of CALL instruction)
      push rax ; argsPtr[0] : J9Method

      MoveHelper rax, mcc_callPointPatching_unwrapper ; p1) rax = helper address
      lea rsi, [rsp] ; p2) rsi = descriptor EA (args)
      lea rdx, [rsp] ; p3) rdx = return value (meaningless because call is void)
      call jitCallCFunction
      add rsp, 32
      jmp populateIPicSlotCallExit

ret ;populateIPicSlotCall endp


; Call an interpreted method from an IPic slot.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
dispatchInterpretedFromIPicSlot:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      cmp byte  [rdx-10], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or the REX prefix of a CMP opcode.
                                                               ; -10 = -5 (CALL) -5 (CMP or JNE)
      jz interpretedLastIPicSlot

      movzx rdi, byte  [rdx+1] ; JMP displacement to end of IPic
      lea rdi, [rdi+rdx-3] ; rdi = EA after JNE in last slot
                                                               ; -3 = +2 (skip JMP disp8) - 5 (call in last slot)

mergeIPicInterpretedDispatch:
      movsxd rsi, dword  [rdi-4]

      lea rcx, [rsi+rdi+10] ; EA of constant pool and cpIndex
                                                               ; 10 = 10 (CALL+JMP)

      lea rsi, [rsi+rdi+26] ; EA of IPic data block
                                                               ; 26 = 10 (CALL+JMP) + 16 (cpAddr,cpIndex)
      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      LoadClassPointerFromObjectHeader rax, rax, eax ; p1) receiver class
      mov rdi, rax
                                                               ; p2) rsi = resolved interface class EA
                                                               ; p3) rdx = jit RIP
                                                               ; p4) rcx = address of constant pool and cpIndex
      CallHelperUseReg jitLookupInterfaceMethod,rax ; returns interpreter vtable offset

      mov r8, rax
      mov rax, qword  [rdi+rax] ; rax = J9Method from interpreter vtable
      test byte  [rax + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jz mergeUpdateIPicSlotCallWithCompiledMethod

      ; Target method is still interpreted--dispatch it through JIT vtable.
      ;
      jmp mergeIPicLookupDispatch

interpretedLastIPicSlot:
      lea rdi, [rdx-5] ; -5 = -5 (CALL)
      jmp mergeIPicInterpretedDispatch

ret ;dispatchInterpretedFromIPicSlot endp


; Look up an implemented interface method in this receivers class and
; dispatch it.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
IPicLookupDispatch:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      lea rcx, [rdx+5] ; EA of constant pool and cpIndex
                                                               ; 5 = 5 (JMP)

      lea rsi, [rdx+21] ; EA of IPic data block
                                                               ; 21 = 5 (JMP) + 16 (cpAddr,cpIndex)
      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      LoadClassPointerFromObjectHeader rax, rax, eax ; p1) receiver class
      mov rdi, rax
                                                               ; p2) rsi = resolved interface class EA
                                                               ; p3) rdx = jit RIP
                                                               ; p4) rcx = address of constant pool and cpIndex
      CallHelperUseReg jitLookupInterfaceMethod,rax ; returns interpreter vtable offset
      mov r8, rax

mergeIPicLookupDispatch:
      sub r8, J9TR_InterpVTableOffset
      neg r8 ; r8 = JIT vtable offset
      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      add rsp, 8 ; skip rdi

      ; j2iVirtual expects r8 to contain the JIT vtable offset
      ;
      mov rdi, qword [rdi + r8]
      jmp rdi

ret ;IPicLookupDispatch endp


; Resolve the virtual method and throw an exception if the resolution was not successful.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the resolution helper.
;
      align 16
resolveVPicClass:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3
      mov rdi, qword  [rsp+40] ; RA in code cache

      cmp byte  [rdi+8], 075h ; is it a short branch?
      jnz resolveVPicClassLongBranch ; no
      movzx rsi, byte  [rdi+16] ; disp8 to end of VPic
                                                               ; 16 = 5 + 3 (CMP) + 2 (JNE) + 5 (CALL) + 1 (JMP)
      lea rdx, [rdi+rsi+8] ; rdx = EA of disp32 of JNE
                                                               ; 8 = 1 (instr. after JMP) -9 (EA of disp32 of JNE) + 16 (offset to disp8 EA)
      movsxd rsi, dword  [rdx]
      lea rdx, [rsi+rdx-16] ; EA of VPic data block
                                                               ; -16 = +4 (EA after JNE) -4 (instr data) -16 (cpA,cpI)
mergeResolveVPicClass:

      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      mov rax, rdx ; p1) address of the constant pool and cpIndex
      mov rsi, rdi ; p2) jit valid EIP
      CallHelperUseReg jitResolveVirtualMethod,rax ; returns compiler vtable index

      ; Construct the call instruction in rax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper rax, populateVPicSlotClass ; p1) rax = helper address
      LoadHelperIndex esi, populateVPicSlotClassHelperIndex ; p2) rsi = helper index
      mov rdx, rdi ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      mov rcx, rax
      shl rcx, 8
      mov cl, 0e8h

      MoveHelper rax, resolveVPicClass ; p1) rax = helper address
      LoadHelperIndex esi, resolveVPicClassHelperIndex ; p2) rsi = helper index
                                                               ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      shl rax, 8
      mov al, 0e8h

      lock cmpxchg qword  [rdx-5], rcx ; patch attempt

      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword [rsp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

resolveVPicClassLongBranch:
      movsxd rdx, dword  [rdi+10] ; disp32 for branch to snippet
                                                               ; 10 = 5 + 3 (CMP) + 2 (JNE)
      lea rdx, [rdi+rdx-6] ; EA of VPic data block
                                                               ; -6 = 14 (offset to instr after branch) -4 (instr data) -16 (cpA,cpI)
      jmp mergeResolveVPicClass

ret ;resolveVPicClass endp


; Populate a PIC slot with the class of the receiver.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateVPicSlotClass:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      cmp byte  [rdx+8], 075h ; is it a short branch?
      jnz populateVPicClassLongBranch ; no
      movzx rcx, byte  [rdx+16] ; disp8 to end of VPic
                                                               ; 16 = 5 + 3 (CMP) + 2 (JNE) + 5 (CALL) + 1 (JMP)
      lea rsi, [rdx+rcx+8] ; rsi = EA of disp32 of JNE
                                                               ; 8 = 1 (instr. after JMP) -9 (EA of disp32 of JNE) + 16 (offset to disp8 EA)
      movsxd rdi, dword  [rsi]
      lea rsi, [rsi+rdi-16] ; EA of VPic data block
                                                               ; -16 = 4 (EA after JNE) - 4 (instr data) -16 (cpA+cpI)
mergePopulateVPicClass:

      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;
      mov rdi, rsi ; EA of VPic data block

      ; Construct the call instruction in rax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper rax, populateVPicSlotClass ; p1) rax = helper address
      LoadHelperIndex esi, populateVPicSlotClassHelperIndex ; p2) rsi = helper index
                                                               ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      shl rax, 8
      mov al, 0e8h

      ; Construct the MOV instruction in rcx to load the cached class address.
      ;
      mov rcx, qword [rsp+24] ; receiver
      LoadClassPointerFromObjectHeader rcx, rcx, ecx ; receiver class
      mov rsi, rcx ; receiver class
      rol rcx, 16
      mov cx, word [rdi+16] ; REX+MOV

      lock cmpxchg qword  [rdx-5], rcx ; patch attempt

%ifdef ASM_J9VM_GC_DYNAMIC_CLASS_UNLOADING
      jnz short VPicClassSlotUpdateFailed

      ; Register the address of the immediate field in the MOV instruction
      ; for dynamic class unloading.
      ;
      mov rax, rsi ; p1) rax = receivers class
      lea rsi, [rdx-3] ; p2) rsi = EA of Imm64 to patch
      CallHelper jitCallJitAddPicToPatchOnClassUnload
VPicClassSlotUpdateFailed:
%endif

      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword [rsp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

populateVPicClassLongBranch:
      movsxd rsi, dword  [rdx+10] ; disp32 for branch to snippet
                                                               ; 10 = 5 + 3 (CMP) + 2 (JNE)
      lea rsi, [rdx+rsi-6] ; EA of VPic data block
                                                               ; -6 = 14 (offset to instr after branch) - 4 (instr data) - 16 (cpA+cpI)
      jmp mergePopulateVPicClass

ret ;populateVPicSlotClass endp


; Populate a PIC slot with the devirtualized method from this receivers class.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateVPicSlotCall:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      cmp byte  [rdx-10], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or the REX prefix of a CMP opcode.
                                                               ; -10 = -5 (CALL) -5 (CMP or JNE)
      jz populateLastVPicSlot
      movzx rdi, byte  [rdx+1] ; JMP displacement to end of VPic
      lea rdi, [rdi+rdx-3] ; rdi = EA after JNE in last slot
                                                               ; -3 = +2 (skip JMP disp8) - 5 (call in last slot)
mergeVPicSlotCall:
      movsxd rsi, dword  [rdi-4]
      LoadClassPointerFromObjectHeader rax, rcx, ecx
      lea rax, [rsi+rdi-20] ; EA of VPic data block
                                                               ; -20 = -4 (instr data) - 16 (cpAddr+cpIndex)
      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;

      ; Get vtable offset again by resolving.
      ;
                                                               ; p1) rax = address of constant pool and cpIndex
      mov rsi, rdx ; p2) rsi = jit valid EIP
      CallHelperUseReg jitResolveVirtualMethod,rax ; returns compiler vtable index

      ; Check the RAM method to see if the target is compiled.
      ;
      neg rax ; negate to turn it into an interpreter offset
      mov rax, qword [rcx + rax + J9TR_InterpVTableOffset] ; load RAM method from interpreter vtable
      test byte  [rax + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jnz short VPicSlotMethodInterpreted

      ; Now check if the target is a native because they need special handling.
      ;
      mov rcx, rax ; rcx = RAM method
      CallHelperUseReg jitMethodIsNative,rax
      test rax, rax
      mov rax, rcx ; restore rax
      jnz short VPicSlotMethodIsNative

      ; We have a compiled method. Claim the trampoline reservation for this
      ; target method if one doesnt exist for it yet reclaim the trampoline
      ; space if it already does.
      ;
mergeUpdateVPicSlotCallWithCompiledMethod:
      push rax ; build descriptor : J9Method
      push rdx ; build descriptor : call site
      MoveHelper rax, mcc_reservationInterfaceCache_unwrapper ; p1) helper
      lea rsi, [rsp] ; p2) pointer to args
      lea rdx, [rsp] ; p3) pointer to return
      call jitCallCFunction
      pop rdx ; tear down descriptor
      pop rax ; tear down descriptor

      mov rcx, qword  [rax+J9TR_MethodPCStartOffset] ; compiled method interpreter entry point from J9Method
      mov edi, dword  [rcx-4] ; fetch preprologue info word
      shr edi, 16 ; isolate interpreter argument flush area size
      add rcx, rdi ; rcx = JIT entry point

      ; Check if a branch through a trampoline is currently required at this callsite.
      ; If not, defer creating one until its actually required at runtime.
      ;
      sub rcx, rdx
      mov rdi, rcx
      sar rdi, 31
      jz mergeUpdateVPicSlotCall
      cmp rdi, -1
      jnz populateVPicSlotCallWithTrampoline

mergeUpdateVPicSlotCall:
      mov dword  [rdx-4], ecx ; patch disp32 in call instruction

populateVPicSlotCallExit:
      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword [rsp], 5 ; fix RA to re-run the call
      ret ; branch will mispredict so single-byte RET is ok

VPicSlotMethodInterpreted:
      MoveHelper rax, dispatchInterpretedFromVPicSlot ; p1) rax = helper address
      LoadHelperIndex esi, dispatchInterpretedFromVPicSlotHelperIndex ; p2) rsi = helper index
                                                                ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      mov ecx, eax ; 32-bit copy because disp32
      jmp short mergeUpdateVPicSlotCall

VPicSlotMethodIsNative:
      ; Check if the target is a compiled JNI native.
      ;
      test qword  [rax+8], 1 ; check low-bit of constant pool for JNI native
      jnz mergeUpdateVPicSlotCallWithCompiledMethod

      ; This is a JIT callable native for which trampolines are not created.
      ; Check if the target is reachable without and if so then branch to
      ; it directly. Otherwise, the longer dispatch sequence through glue
      ; code needs to be taken.
      ;
      ; TODO: figure out why trampolines are not created. I do not see why they
      ; shouldnt be...
      ;
      mov rcx, qword  [rax+J9TR_MethodPCStartOffset] ; compiled native entry point
      mov edi, dword  [rcx-4] ; fetch preprologue info word
      shr edi, 16 ; isolate interpreter argument flush area size
      add rcx, rdi ; rcx = JIT entry point

      ; Check if a branch through a trampoline is currently required at this callsite.
      ; If not, defer creating one until its actually required at runtime.
      ;
      sub rcx, rdx
      mov rdi, rcx
      sar rdi, 31
      jz mergeUpdateVPicSlotCall
      cmp rdi, -1
      jz mergeUpdateVPicSlotCall
      jmp VPicSlotMethodInterpreted

populateLastVPicSlot:
      lea rdi, [rdx-5] ; -5 = -5 (CALL)
      jmp mergeVPicSlotCall

populateVPicSlotCallWithTrampoline:
      push 0 ; argsPtr[3] : extra arg
      mov rsi, qword [rax+J9TR_MethodPCStartOffset]
      push rsi ; argsPtr[2] : compiled method interpreter entry point
      lea rsi, [rdx-5]
      push rsi ; argsPtr[1] : call site (EA of CALL instruction)
      push rax ; argsPtr[0] : J9Method

      MoveHelper rax, mcc_callPointPatching_unwrapper ; p1) rax = helper address
      lea rsi, [rsp] ; p2) rsi = descriptor EA (args)
      lea rdx, [rsp] ; p3) rdx = return value (meaningless because call is void)
      call jitCallCFunction
      add rsp, 32
      jmp populateVPicSlotCallExit

ret ;populateVPicSlotCall endp


; Dispatch an interpreted devirtualized target. If the target is compiled then patch the PIC slot
; with the compiled target and dispatch through that. Otherwise, route control through the vtable
; dispatch path.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
dispatchInterpretedFromVPicSlot:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      cmp byte  [rdx-10], 085h ; is this the last slot?
                                                               ; The branch in the last slot will be a long branch.
                                                               ; This byte will either be a long JNE opcode (last
                                                               ; slot) or the REX prefix of a CMP opcode.
                                                               ; -10 = -5 (CALL) -5 (CMP or JNE)
      jz interpretedLastVPicSlot
      movzx rdi, byte  [rdx+1] ; JMP displacement to end of VPic
      lea rdi, [rdi+rdx-3] ; rdi = EA after JNE in last slot
                                                               ; -3 = +2 (skip JMP disp8) - 5 (call in last slot)
mergeVPicInterpretedDispatch:
      movsxd rsi, dword  [rdi-4]
      LoadClassPointerFromObjectHeader rax, rcx, ecx
      lea rax, [rsi+rdi] ; EA of CALLMem instruction in snippet

      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;

      ; If the call through vtable has already been patched then grab the
      ; compiler vtable offset from the disp32 of that instruction.
      ;
      cmp byte  [rax], 0e8h ; still a direct CALL instruction?
      je vtableCallNotPatched ; yes

      ; If theres a SIB byte then the displacement has been shifted by one byte.
      ;
      cmp byte  [rax+2], 094h ; if ModRM==0x94 then a SIB is necessary for r12+disp32 form
      jne short noSIB
      lea rax, [rax+1]
noSIB:
      movsxd rax, dword  [rax+3]

mergeCheckIfMethodCompiled:

      ; Check the RAM method to see if the target is compiled.
      ;
      neg rax ; negate to turn it into an interpreter offset
      mov rax, qword [rcx + rax + J9TR_InterpVTableOffset] ; load RAM method from interpreter vtable
      test byte  [rax + J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit ; method compiled?
      jnz dispatchThroughVTable ; branch if interpreted

      ; The target is JIT callable, but check if the target is a native because
      ; they may need special handling.
      ;
      mov rcx, rax ; rcx = RAM method
      CallHelperUseReg jitMethodIsNative,rax
      test rax, rax
      mov rax, rcx ; restore rax
      jz mergeUpdateVPicSlotCallWithCompiledMethod ; branch if not native

      ; Check if the target is a compiled JNI native.
      ;
      test qword  [rax+8], 1 ; check low-bit of constant pool for JNI native
      jnz mergeUpdateVPicSlotCallWithCompiledMethod

      ; This is a JIT callable native for which trampolines are not created.
      ; Check if the target is reachable without and if so then branch to
      ; it directly. Otherwise, the longer dispatch sequence through glue
      ; code needs to be taken.
      ;
      mov rcx, qword  [rax+J9TR_MethodPCStartOffset] ; compiled native entry point
      mov esi, dword  [rcx-4] ; fetch preprologue info word
      shr esi, 16 ; isolate interpreter argument flush area size
      add rcx, rsi ; rcx = JIT entry point

      ; Check if a branch through a trampoline is currently required at this callsite.
      ; If not, defer creating one until its actually required at runtime.
      ;
      sub rcx, rdx
      mov rsi, rcx
      sar rsi, 31
      jz mergeUpdateVPicSlotCall
      cmp rsi, -1
      jz mergeUpdateVPicSlotCall

dispatchThroughVTable:

      ; Re-route the caller to dispatch through the vtable code in the snippet.
      ;
      movsxd rsi, dword  [rdi-4]
      lea rdi, [rsi+rdi] ; EA of vtable dispatch instruction

      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore

      mov qword [rsp+8], rdi
      pop rdi ; restore

      ret ; branch will mispredict so single-byte RET is ok

interpretedLastVPicSlot:
      lea rdi, [rdx-5] ; -5 = -5 (CALL)
      jmp mergeVPicInterpretedDispatch

vtableCallNotPatched:
      ; Get vtable offset again by resolving.
      ;
      lea rax, [rax-20] ; p1) rax = address of constant pool and cpIndex
                                                               ; -20 = -4 (instr data) - 16 (cpAddr,cpIndex)
      mov rsi, rdx ; p2) rsi = jit valid EIP
      CallHelperUseReg jitResolveVirtualMethod,rax ; returns compiler vtable index
      jmp mergeCheckIfMethodCompiled

ret ;dispatchInterpretedFromVPicSlot endp


; Patch the code to dispatch through the compiled vtable slot now that the vtable
; slot is known.
;
; STACK SHAPE: must maintain stack shape expected by call to getJitVirtualMethodResolvePushes()
; across the call to the lookup helper.
;
      align 16
populateVPicVTableDispatch:  ;proc

%ifdef ENABLE_PIC_INT3
      int 3
%endif
      push rdi ; preserve
      push rax ; preserve GP arg0 (the receiver)
      push rsi ; preserve GP arg1
      push rdx ; preserve GP arg2
      push rcx ; preserve GP arg3

      mov rdx, qword [rsp+40] ; RA in code cache

      LoadClassPointerFromObjectHeader rax, rcx, ecx
      lea rax, [rdx-25] ; EA of VPic data block
                                                               ; -25 = -5 (CALL) -4 (instr data) - 16 (cpAddr,cpIndex)
      ; Stack shape:
      ;
      ; +40 RA in code cache (call to helper)
      ; +32 saved rdi
      ; +24 saved rax (receiver)
      ; +16 saved rsi
      ; +8 saved rdx
      ; +0 saved rcx
      ;

      ; Get vtable offset again by resolving.
      ;
      mov rdi, rax
                                                               ; p1) rax = address of constant pool and cpIndex
      mov rsi, rdx ; p2) rsi = jit valid EIP
      CallHelperUseReg jitResolveVirtualMethod,rax ; returns compiler vtable index

      ; Construct the indirect call instruction in rcx plus the first
      ; byte of the direct long jump.
      ;
      mov ecx, eax ; copy and whack the high 32-bits
      rol rcx, 32

      cmp byte [rdi+19], 094h ; SIB byte needed?
      je short callNeedsSIB ; yes

      or rcx, 0ff00e9h ; JMP4 + CALLMem opcodes
      mov ch, byte [rdi+18] ; REX from snippet
      ror rcx, 24
      mov cl, byte [rdi+19] ; ModRM from snippet
      rol rcx, 16
      mov rdi, 0e9000000000000e8h

mergePopulateVPicVTableDispatch:

      ; Construct the call instruction in rax that should have brought
      ; us to this helper + the following 3 bytes.
      ;
      MoveHelper rax, populateVPicVTableDispatch ; p1) rax = helper address
      LoadHelperIndex esi, populateVPicVTableDispatchHelperIndex ; p2) rsi = helper index
                                                               ; p3) rdx = JIT RA
      call selectHelperOrTrampolineDisp32
      shl rax, 8
      or rax, rdi ; add JMP and CALL bytes

      lock cmpxchg qword  [rdx-5], rcx ; patch attempt

      pop rcx ; restore
      pop rdx ; restore
      pop rsi ; restore
      pop rax ; restore
      pop rdi ; restore

      sub qword  [rsp], 5 ; re-run the patched call instruction
      ret ; branch will mispredict so single-byte RET is ok

callNeedsSIB:
      or rcx, 02494ff49h ; REX + CALL op + ModRM + SIB for CALL [r12+disp32]
      mov edi, 0e8h
      jmp short mergePopulateVPicVTableDispatch

ret ;populateVPicVTableDispatch endp



;_TEXT ends

;; !TR_HOST_64BIT
%endif

      ;end
