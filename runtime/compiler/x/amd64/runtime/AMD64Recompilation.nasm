; Copyright (c) 2000, 2017 IBM Corp. and others
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
	
%ifdef TR_HOST_64BIT

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

; end include file expansion of jilconsts.inc

                ;OPTION NOSCOPED

                extern jitRetranslateMethod
                extern jitCallCFunction
                extern induceRecompilation_unwrapper
                extern mcc_AMD64callPointPatching_unwrapper
                extern initialInvokeExactThunk_unwrapper
                extern methodHandleJ2I_unwrapper

                global _countingRecompileMethod
                global _samplingRecompileMethod
                global _countingPatchCallSite
                global _samplingPatchCallSite
                global _induceRecompilation
                global _initialInvokeExactThunkGlue
                global methodHandleJ2IGlue

segment .text ;_TEXT   segment para 'CODE'

; Offsets for sampling
eq_stack_samplingBodyInfo            equ  0
eq_retAddr_startPC                   equ  12

; Offsets for counting
eq_stack_countingJitEntryToPrologue  equ  19
eq_countingSnippet_startPCOffset     equ  0

; Offsets for induceRecompilationSnippet
eq_induceSnippet_startPCOffset       equ  5

; Common offsets
eq_startPC_BodyInfo                  equ -12
eq_startPC_JitEntryOffset            equ -2
eq_startPC_LinkageInfo               equ -4
eq_startPC_OriginalFirstTwoBytes     equ -19
eq_BodyInfo_MethodInfo               equ  8
eq_MethodInfo_J9Method               equ  0
eq_MethodInfo_Flags                  equ 8
eq_MethodInfo_HasBeenReplaced        equ 0100000h
eq_stack_senderPC                    equ  96
eq_HasFailedRecompilation            equ  80h ; Flag bit, defined in codert.dev/Runtime.hpp

%macro saveRegs
                ; XMMs
                sub     rsp, 64 ; Reserve space for XMMs
                ; Do the writes in-order so we don't defeat the cache
                movsd   qword  [rsp+0],  xmm8
                movsd   qword  [rsp+8],  xmm9
                movsd   qword  [rsp+16], xmm10
                movsd   qword  [rsp+24], xmm11
                movsd   qword  [rsp+32], xmm12
                movsd   qword  [rsp+40], xmm13
                movsd   qword  [rsp+48], xmm14
                movsd   qword  [rsp+56], xmm15
                ; GPRs
                push    rax     ; arg0
                push    rsi     ; arg1
                push    rdx     ; arg2
                push    rcx     ; arg3
%endmacro

exitRecompileMethod: ; PROC
                ; GPRs
                pop     rcx     ; arg3
                pop     rdx     ; arg2
                pop     rsi     ; arg1
                pop     rax     ; arg0
                ; XMMs
                ; Do the reads in-order so we don't defeat the cache
                movsd   xmm8,  qword  [rsp+0]
                movsd   xmm9,  qword  [rsp+8]
                movsd   xmm10, qword  [rsp+16]
                movsd   xmm11, qword  [rsp+24]
                movsd   xmm12, qword  [rsp+32]
                movsd   xmm13, qword  [rsp+40]
                movsd   xmm14, qword  [rsp+48]
                movsd   xmm15, qword  [rsp+56]
                add     rsp,   64
                ; Branch to desired target
                jmp     rdi
ret ;exitRecompileMethod endp

;
                align 16
;
_countingRecompileMethod: ; PROC
;
                pop     rdi ; Return address in snippet
                saveRegs

                ; senderPC (= call site)
                mov     rdx, qword [rsp+eq_stack_senderPC]

                ; old startPC
                movsxd  rsi, dword [rdi+eq_countingSnippet_startPCOffset]
                add     rsi, rdi

                ; J9Method
                mov     rax, qword [rsi+eq_startPC_BodyInfo]
		mov	rax, qword [rax+eq_BodyInfo_MethodInfo]
                mov     rax, qword [rax+eq_MethodInfo_J9Method]

                CallHelperUseReg jitRetranslateMethod,rax
                test    rax, rax
                jnz     countingGotStartAddress

                ; If the compilation hasn't been done yet, skip the counting
                ; code at the start of the method and continue with the rest of
                ; the method body
                movsxd  rax, dword [rdi+eq_countingSnippet_startPCOffset]
                add     rdi, rax
                movsx   rax, word  [rdi+eq_startPC_JitEntryOffset]
                add     rdi, rax
                add     rdi, eq_stack_countingJitEntryToPrologue        ; skip the sub/jl (or cmp/jl)
                jmp     exitRecompileMethod

countingGotStartAddress:

                ; Now the new startPC is in rax.
                movsx   rdi, word  [rax+eq_startPC_JitEntryOffset]
                add     rdi, rax
                jmp     exitRecompileMethod
;
ret ;_countingRecompileMethod ENDP
;
;



;
                align 16
;
_samplingRecompileMethod: ; PROC
;
                pop     rdi ; Return address in preprologue
                saveRegs

                ; senderPC (= call site)
                mov     rdx, qword [rsp+eq_stack_senderPC]

                ; old startPC
                lea     rsi, qword [rdi+eq_retAddr_startPC]

                ; J9Method
                mov     rax, qword [rdi+eq_stack_samplingBodyInfo]
		mov	rax, qword [rax+eq_BodyInfo_MethodInfo]
                mov     rax, qword [rax+eq_MethodInfo_J9Method]

                CallHelperUseReg jitRetranslateMethod,rax

                ; If the compilation has not been done yet, restart this method.
                ; It should now execute normally
                test    rax, rax
                jnz     samplingGotStartAddress
                movsx   rdi, word  [rsi+eq_startPC_JitEntryOffset]
                add     rdi, rsi
                jmp     exitRecompileMethod

samplingGotStartAddress:

                ; Now the new startPC is in rax.
                movsx   rdi, word  [rax+eq_startPC_JitEntryOffset]
                add     rdi, rax
                jmp     exitRecompileMethod
;
;
ret ;_samplingRecompileMethod ENDP
;


                align 16
;
_induceRecompilation: ; PROC
;
                xchg    rdi, [rsp] ; Return address in snippet
                push    rsi        ; Preserve
                push    rax        ; Preserve

                ; old startPC
                movsxd  rsi, dword [rdi+eq_induceSnippet_startPCOffset]
                add     rsi, rdi

                ; set up args to induceRecompilation_unwrapper
                push    rbp        ; parm: vmThread
                push    rsi        ; parm: startPC

                ; set up args to jitCallCFunction
                MoveHelper rax, induceRecompilation_unwrapper  ; parm: C function to call
                mov     rsi, rsp                               ; parm: args array
                                                               ; parm: result pointer; don't care
                CallHelper jitCallCFunction
                add     rsp, 16

                ; restore regs and return to snippet
                pop     rax
                pop     rsi
                xchg    rdi, [rsp]
                ret

;
;
;_induceRecompilation ENDP
;

                align 16
;
_countingPatchCallSite: ; PROC
;
                xchg    qword [rsp], rdi
                push    rdx
                push    rax

                ; Compute the old startPC
                mov     rax, rdi
                movsx   rdx, word [rdi]
                sub     rax, rdx

                ; Assume:
                ;    rax == old startPC
                ;    rdi == return address in preprologue
                ;    old rdi, rdx, rax on stack
                ;    no return address on stack

		push    rdi ; HCR: We may need this
                ; rdi = new jit entry point
                mov     rdi, qword [rax+eq_startPC_BodyInfo]
		mov	rdi, qword [rdi+eq_BodyInfo_MethodInfo]
                mov     rdi, qword [rdi+eq_MethodInfo_J9Method]
                mov     rdi, qword [rdi+J9TR_MethodPCStartOffset]   ; rdi = new startPC

                test    rdi, 1h ; HCR: Has method been replaced by one that's not jitted yet?
                jne     countingPatchToRecompile ;
                add     rsp, 8 ; Turns out we don't need the preprologue return address after all



patchCallSite:
                movsx   rdx, word  [rdi+eq_startPC_JitEntryOffset]  ; rdx = jitEntryOffset
                add     rdi, rdx                                       ; rdi = new jit entry point

                ; rdx = call site return address
                mov     rdx, qword [rsp+24]

                ; Check if it's a call immediate
                cmp     byte [rdx-5], 0e8h
                jne     finishedPatchCallSite


                ; Call MCC service to do the call site patching. Argument layout:
                ; rsp+24    extraArg
                ; rsp+16    newPC
                ; rsp+8     callSite
                ; rsp       j9method
                ;
                push    rsi                                          ; preserve rsi
                xor     rsi, rsi
                push    rsi                                          ; extraArg
                push    rax                                          ; pass old startPC to mcc_AMD64callPointPatching_unwrapper
                mov     rsi, qword [rax+eq_startPC_BodyInfo]
		mov     rsi, qword [rsi+eq_BodyInfo_MethodInfo]
                mov     rax, qword [rsi+eq_MethodInfo_J9Method]   ; rax = j9method
                mov     rsi, qword [rax+J9TR_MethodPCStartOffset] ; rsi = new startPC
                sub     rdx, 5                                       ; call instruction
                push    rbp                                          ; vmThread
                push    rsi                                          ; new startPC
                push    rdx                                          ; call instruction
                push    rax                                          ; j9method
                MoveHelper rax, mcc_AMD64callPointPatching_unwrapper
                lea     rsi, [rsp]
                lea     rdx, [rsp]
                call    jitCallCFunction
                add     rsp, 48
                pop     rsi
                
finishedPatchCallSite:
                ; Assume:
                ;    rdi == new jit entry
                ;    old rdi, rdx, rax on stack
                ;    no return address on stack

                ; Restore regs, "return" to the new jit entry
                pop     rax
                pop     rdx
                xchg    qword [rsp], rdi
                ret

countingPatchToRecompile:
		; HCR: we've got our hands on a new j9method that hasn't been compiled yet,
		; so there's no way to patch the call site without first compiling the new method
		;
		; edi points to the DB here:
		;   CALL  patchCallSite          (5 bytes)
		;   DB    ??                     (8 bytes of junk)
		;   JL    recompilationSnippet   (always 6 bytes)
		;
		; Restore registers and stack the way they looked originally, then jump to the recompilationSnippet
		pop     rdi
		pop     rax
		add     rdi, 8+6               ; end of JL instruction
		movsxd  rdx, dword  [rdi-4] ; offset to recompilationSnippet
		add     rdi, rdx               ; start of recompilationSnippet
		pop     rdx
		xchg    qword [rsp], rdi    ; restore edi
		ret                            ; jump to recompilationSnippet while minimizing damage to return address branch prediction
		
;
;
;_countingPatchCallSite ENDP
;


                align 16
;
_samplingPatchCallSite: ; PROC
;
                xchg    qword [rsp], rdi
                push    rdx
                push    rax

                ; Compute the old startPC
                lea     rax, qword [rdi+eq_retAddr_startPC]


                ; Assume:
                ;    rax == old startPC
                ;    rdi == return address in preprologue
                ;    old rdi, rdx, rax on stack
                ;    no return address on stack

		push    rdi ; HCR: We may need this
                ; rdi = new jit entry point
                mov     rdi, qword [rax+eq_startPC_BodyInfo]
		mov	rdi, qword [rdi+eq_BodyInfo_MethodInfo]
                mov     rdi, qword [rdi+eq_MethodInfo_J9Method]
                mov     rdi, qword [rdi+J9TR_MethodPCStartOffset]   ; rdi = new startPC

                test    rdi, 1h ; HCR: Has method been replaced by one that's not jitted yet?
                jne     samplingPatchToRecompile ;
                add     rsp, 8 ; Turns out we don't need the preprologue return address after all


                jmp     patchCallSite

samplingPatchToRecompile:
                ; HCR: we've got our hands on a new j9method that hasn't been compiled yet,
                ; so there's no way to patch the call site without first compiling the new method
                ;
                ; Make the world look the way it should for a call to _samplingRecompileMethod
		pop     rdi
                pop     rax
                pop     rdx
                xchg    qword [rsp], rdi
                jmp     _samplingRecompileMethod
;
;
ret ;_samplingPatchCallSite ENDP
;

                align 16
;
_initialInvokeExactThunkGlue: ; PROC
;
                ; preserve all non-scratch regs
                push    rax
                push    rsi
                push    rdx

                ; set up args to initialInvokeExactThunk_unwrapper
                push    rbp     ; parm: vmThread
                push    rax     ; parm: receiver MethodHandle; also, result goes here

                ; set up args to jitCallCFunction
                MoveHelper rax, initialInvokeExactThunk_unwrapper       ; parm: C function to call
                mov     rsi, rsp                                        ; parm: args array
                mov     rdx, rsp                                        ; parm: result pointer
                CallHelper jitCallCFunction
                pop     rax      ; result jitted entry point
		pop     rbp

                ; restore regs
                pop     rdx
                pop     rsi

                ; Restore rax and jump to address returned by initialInvokeExactThunk
		; Sadly, this probably kills return address stack branch prediction
		; TODO:JSR292: check for null and call vm helper to interpret instead
		xchg    rax, [rsp]
                ret
;
;
;_initialInvokeExactThunkGlue ENDP
;

                align 16
;
methodHandleJ2IGlue: ; PROC
;
                ; Note: this glue is not called, it is jumped to.  There is no
                ; return address on the stack.

                ; preserve all non-scratch regs
                push    rax
                push    rsi
                push    rdx

                ; set up args to initialInvokeExactThunk_unwrapper
                push    rbp     ; parm: vmThread
                lea     rsi, [rsp+40]
                push    rsi     ; parm: stack pointer before the call to the j2i thunk
                push    rax     ; parm: receiver MethodHandle; also, result goes here

                ; set up args to jitCallCFunction
                MoveHelper rax, methodHandleJ2I_unwrapper               ; parm: C function to call
                mov     rsi, rsp                                        ; parm: args array
                mov     rdx, rsp                                        ; parm: result pointer
                CallHelper jitCallCFunction
                pop     rax      ; result (currently unused)
                pop     rsi
                pop     rbp

                ; restore regs
                pop     rdx
                pop     rsi
                pop     rax

                ; continue J2I
                jmp     rdi
;
;
ret ;methodHandleJ2IGlue ENDP
;

        ;_TEXT ends
%else ;not defined TR_HOST_64BIT
                CPU P2 ; .686p
                ;assume cs:flat,ds:flat,ss:flat
segment .data ;_DATA           segment para use32 public 'DATA'
AMD64PicBuilder:
                db      00h
;_DATA           ends
%endif ;TR_HOST_64BIT
        
;end
