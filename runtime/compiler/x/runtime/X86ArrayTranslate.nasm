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
%macro ExternHelper 1
extern %1:near
%endmacro

;helperName
%macro GlueHelper 1
		test    byte [rdi+J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit
	   	jnz     %1
	   	jmp     mergedStaticGlueCallFixer
%endmacro

; %include x/runtime/X86RegisterMap.inc : perhaps not relevant

%ifdef TR_HOST_64BIT
   SECTION .text ;_TEXT segment para 'CODE'
%else
   SECTION .text use32 ;_TEXT segment para use32 public 'CODE'
%endif

   global  _arrayTranslateTRTO
   global  _arrayTranslateTROTNoBreak
   global  _arrayTranslateTROT
   align 16

   ; pseudocode:
   ; int i;
   ; for (i = 0; i < N; i++)
   ;   if (chararray[i] && DX != 0) break; //DX is the register
   ;   else bytearray[i] = (byte) chararray[i])
   ; return i
   _arrayTranslateTRTO:                      ;TO stands for Two bytes to One byte
   %ifdef TR_HOST_64BIT
      mov ecx, ecx
   %endif
      xor  rax, rax
      cmp  rcx, 8
      jl   byteresidualTO
      movd xmm1, edx
      pshufd xmm1, xmm1, 0
      cmp  rcx, 16
      jl   eightcharsTO
   sixteencharsTO:
      movdqu xmm2, [rsi+2*rax]
      ptest xmm2, xmm1          ; SSE4.1 instruction
      jnz  failedloopTO
      movdqu xmm3, [rsi+2*rax+16]
      ptest xmm3, xmm1          ; SSE4.1 instruction
      jnz  eightcharsTO
      packuswb xmm2, xmm3
      movdqu oword [rdi+rax], xmm2
      sub  rcx, 16
      add  rax, 16
      cmp  rcx, 16
      jge  sixteencharsTO
      cmp  rcx, 8
      jl   byteresidualTO
   eightcharsTO:
      movdqu xmm2, [rsi+2*rax]
      ptest xmm2, xmm1          ; SSE4.1 instruction
      jnz  failedloopTO
      packuswb xmm2, xmm1       ; only the first 8 bytes of xmm2 are meaningful
      movq qword [rdi+rax], xmm2
      sub  rcx, 8
      add  rax, 8
   byteresidualTO:
      and rcx, rcx
      je  doneTO
   failedloopTO:
      mov  bx, word [rsi+2*rax]
      test bx, dx
      jnz  doneTO
      mov  byte [rdi+rax], bl
      inc  rax
      dec  rcx
      jnz  failedloopTO
   doneTO:   ;EAX is result register
      ret

   ; _arrayTranslateTRTO endp

   ; pseudocode:
   ; int i;
   ; for (i = 0; i < N; i++)
   ;   chararray[i] = (char) bytearray[i];
   _arrayTranslateTROTNoBreak:               ;OT stands for One byte to Two bytes
   %ifdef TR_HOST_64BIT
      mov ecx, ecx
   %endif
      xor    rax, rax
      xorps  xmm3, xmm3
      cmp    rcx, 16
      jl     qwordResidualOTNoBreak

   sixteencharsOTNoBreak:
      movdqu  xmm1, [rsi+rax]
      movdqu  xmm2, xmm1
      punpcklbw xmm1, xmm3
      punpckhbw xmm2, xmm3
      movdqu [rdi+rax*2], xmm1
      movdqu [rdi+rax*2+16], xmm2
      sub rcx, 16
      add rax, 16
      cmp rcx, 16
      jge sixteencharsOTNoBreak

   slideWindowResidualOTNoBreak:
      test rcx, rcx
      jz doneOTNoBreak
      sub rax, 16
      add rax, rcx
      mov rcx, 16
      jmp sixteencharsOTNoBreak

   doneOTNoBreak:
      ret

   qwordResidualOTNoBreak:
      bt rcx, 3
      jnc dwordResidualOTNoBreak
      movq xmm1, qword [rsi+rax]
      punpcklbw xmm1, xmm3
      movdqu [rdi+rax*2], xmm1
      add rax, 8
      sub rcx, 8

   dwordResidualOTNoBreak:
      bt rcx, 2
      jnc byteResidualOTNoBreak
      movd xmm1, dword [rsi+rax]
      punpcklbw xmm1, xmm3
      movq qword [rdi+rax*2], xmm1
      add rax, 4
      sub rcx, 4

   byteResidualOTNoBreak:
      test rcx, rcx
      jz doneOTNoBreak
      xor  bx, bx

   failedloopOTNoBreak:
      mov  bl, [rsi+rax]
      mov  [rdi+rax*2], bx
      inc  rax
      dec  rcx
      jnz  failedloopOTNoBreak
      jmp  doneOTNoBreak

   ;_arrayTranslateTROTNoBreak endp


   ; pseudocode:
   ; int i;
   ; for (i = 0; i < N; i++)
   ;   if (bytearray[i] < 0) break;
   ;   else chararray[i] = (char) bytearray[i];
   ; return i;
   _arrayTranslateTROT:                      ;OT stands for One byte to Two bytes
   %ifdef TR_HOST_64BIT
      mov ecx, ecx
   %endif
      xor    rax, rax
      xorps  xmm3, xmm3
      cmp    rcx, 16
      jl     qwordResidualOT

   sixteencharsOT:
      movdqu  xmm1, [rsi+rax]
      pmovmskb ebx, xmm1
      test ebx, ebx
      jnz    computeNewLengthOT
      movdqu  xmm2, xmm1
      punpcklbw xmm1, xmm3
      punpckhbw xmm2, xmm3
      movdqu [rdi+rax*2], xmm1
      movdqu [rdi+rax*2+16], xmm2
      sub rcx, 16
      add rax, 16
      cmp rcx, 16
      jge sixteencharsOT

   slideWindowResidualOT:
      test rcx, rcx
      jz doneOT
      sub rax, 16
      add rax, rcx
      mov rcx, 16
      jmp sixteencharsOT

   doneOT:
      ret

   computeNewLengthOT:
      bsf ebx, ebx
   %ifdef TR_HOST_64BIT
      mov ebx, ebx
   %endif
      mov rcx, rbx
      cmp rax, 16
      jge slideWindowResidualOT

   qwordResidualOT:
      bt rcx, 3
      jnc dwordResidualOT
      movq xmm1, qword [rsi+rax]
      pmovmskb ebx, xmm1
      test ebx, ebx
      jnz computeNewLengthOT
      punpcklbw xmm1, xmm3
      movdqu [rdi+rax*2], xmm1
      add rax, 8
      sub rcx, 8

   dwordResidualOT:
      bt rcx, 2
      jnc byteResidualOT
      movd xmm1, dword [rsi+rax]
      pmovmskb ebx, xmm1
      test ebx, ebx
      jnz computeNewLengthOT
      punpcklbw xmm1, xmm3
      movq qword [rdi+rax*2], xmm1
      add rax, 4
      sub rcx, 4

   byteResidualOT:
      test rcx, rcx
      jz doneOT
      xor  bx, bx

   failedloopOT:
      mov  bl, [rsi+rax]
      test bl, 80h
      jnz  doneOT
      mov  [rdi+rax*2], bx
      inc  rax
      dec  rcx
      jnz  failedloopOT
      jmp doneOT

   ;_arrayTranslateTROT endp

;_TEXT ends

ret ;end
