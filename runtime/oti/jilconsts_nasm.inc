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

; temporary workaround!!!

; this is only temporarily placed here to have the nasm files being able to include a replacement for "jilconsts.inc"
; Currently, the jilconsts.inc is in masm format, so until that is addressed, this is a temporary placeholder


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

%macro MoveHelper 2 ; register, helperName
		lea %1,[rel + %2]
%endmacro

%macro CompareHelperUseReg 3 ; source, helperName, register
	   	lea %3,[rel + %2]
	   	cmp %1, %3
%endmacro

%macro CallHelper 1 ; helperName
	   	call %1
%endmacro

%macro CallHelperUseReg 2 ; helperName, register
	   	call %1
%endmacro

%macro JumpTableHelper 3 ; temp, index, table
		lea %1,[rel + %3]
		jmp qword [%1 + %2 * 8]
%endmacro

%macro JumpTableStart 1 ;table
align 16
%1:
%endmacro


%macro JumpTableEnd 1 ; table
; NASM does not use ENDS or equivalent
%endmacro


%macro ExternHelper 1 ; helperName
extern _%1:near
%endmacro

%macro GlueHelper 1 ;helperName
		test    byte [rdi+J9TR_MethodPCStartOffset], J9TR_MethodNotCompiledBit
	   	jnz     %1
	   	jmp     mergedStaticGlueCallFixer
%endmacro
