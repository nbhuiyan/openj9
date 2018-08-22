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

    global _jitMonitorEnterReserved
    global _jitMonitorEnterReservedPrimitive
    global _jitMonitorEnterPreservingReservation
    global _jitMethodMonitorEnterReserved
    global _jitMethodMonitorEnterReservedPrimitive
    global _jitMethodMonitorEnterPreservingReservation
    global _jitMonitorExitReserved
    global _jitMonitorExitReservedPrimitive
    global _jitMonitorExitPreservingReservation
    global _jitMethodMonitorExitPreservingReservation
    global _jitMethodMonitorExitReserved
    global _jitMethodMonitorExitReservedPrimitive

%ifdef WINDOWS
    UseFastCall equ 1
%else
    %ifdef TR_HOST_32BIT
        UseFastCall equ 1
    %endif
%endif

eq_ObjectClassMask            equ -J9TR_RequiredClassAlignment
eq_J9Monitor_IncDecValue      equ 08h
eq_J9Monitor_INFBit           equ 01h
eq_J9Monitor_RESBit           equ 04h
eq_J9Monitor_RESINCBits       equ 0Ch
eq_J9Monitor_FLCINFBits       equ 03h
eq_J9Monitor_RecCountMask     equ 0F8h


%ifndef TR_HOST_64BIT

eq_J9Monitor_LockWord         equ 04h
eq_J9Monitor_CountsClearMask  equ 0FFFFFF07h
eq_J9Monitor_CNTFLCClearMask  equ 0FFFFFF05h

%else 
; ndef  64bit
; this stupidness is required because masm2gas can't handle
; ifdef on definitions

%ifdef ASM_J9VM_INTERP_SMALL_MONITOR_SLOT
eq_J9Monitor_LockWord         equ 04h
%else
eq_J9Monitor_LockWord         equ 08h
%endif

eq_J9Monitor_CountsClearMask  equ 0FFFFFFFFFFFFFF07h
eq_J9Monitor_CNTFLCClearMask  equ 0FFFFFFFFFFFFFF05h

%endif 
;64bit

; object <= ObjAddr
; lockword address => _rcx
; lockword value   => _rax
; args: ObjAddr
%macro ObtainLockWordHelper 1 
    %ifdef ASM_J9VM_THR_LOCK_NURSERY
        %ifdef ASM_J9VM_INTERP_COMPRESSED_OBJECT_HEADER
            mov  eax, [%1 + J9TR_J9Object_class] ; receiver class
        %else
            mov rax, [%1 + J9TR_J9Object_class] ; receiver class
        %endif
        and rax, eq_ObjectClassMask
        mov rax, [rax + J9TR_J9Class_lockOffset]     ; offset of lock word in receiver class
        lea rcx, [%1 + rax]                    ; load the address of object lock word
    %else
        lea rcx, [%1 + eq_J9Monitor_LockWord]   ; load the address of object lock word
    %endif
    %ifdef ASM_J9VM_INTERP_SMALL_MONITOR_SLOT
        mov  eax, [rcx]
    %else
        mov rax, [rcx]
    %endif
%endmacro

%macro ObtainLockWord 0
    %ifdef UseFastCall
        ObtainLockWordHelper rdx
    %else
        ObtainLockWordHelper rsi
    %endif
%endmacro

; try to obtain the lock
; lockword address <= _rcx
; vmthread         <= _rbp
%macro TryLock 0
    push bp
    lea  rbp, [rbp + eq_J9Monitor_RESINCBits] ; make thread ID + RES + INC_DEC value

    ; Set _rax to the lock word value that allows a monitor to be reserved (the
    ; reservation bit by default, or 0 for -XlockReservation). This value is
    ; provided to the reserving monent helper as the third argument. Calling
    ; conventions differ...
%ifdef TR_HOST_32BIT
        ; 32-bit always uses fastcall. This is the only argument on the stack.
        ; Stack offsets: +0 saved ebp, +4 return address, +8 argument
        mov eax, dword [esp+8]
%else
%ifdef UseFastCall
            mov rax, r8
%else
            mov rax, rdx
%endif
%endif

%ifdef ASM_J9VM_INTERP_SMALL_MONITOR_SLOT
        lock cmpxchg [rcx],  ebp               ; try taking the lock
%else
        lock cmpxchg [rcx], rbp               ; try taking the lock
%endif
    pop  rbp
%endmacro

; We reach the reserved monitor enter code here if the monitor isn't reserved, it's reserved
; by another thread or the reservation count has reached it's maximum value.
; In this helper we first check if the reservation count is about to overflow
; then we try taking the lock and if we succeed we increment the reservation count and we
; are back to mainline code.
%macro MonitorEnterReserved 0
    ;local fallback,trylock
    ObtainLockWord
    push rax
    and  rax, eq_J9Monitor_RecCountMask            ; check if the recursive count has
    xor  rax, eq_J9Monitor_RecCountMask            ; reached the max value
    pop  rax
    jz    .fallback                                   ; and call VM helper to resolve it
    xor  rax, rbp                                 ; mask thread ID
    xor  rax, eq_J9Monitor_RESBit                  ; mask RES bit
    and  rax, eq_J9Monitor_CountsClearMask         ; clear the count bits
    jnz   .trylock                                    ; if any bit is set we don't have it reserved by the same thread, or not reserved at all
    add  dword [rcx], eq_J9Monitor_IncDecValue ; add 1 to the reservation count
    %ifdef TR_HOST_32BIT
        ret 4
    %else
        ret
    %endif
   .trylock:
    TryLock
    jne  .fallback                                   ; call out to VM if we couldn't take the lock, which means it's not reserved for us
    %ifdef TR_HOST_32BIT
        ret 4
    %else
        ret
    %endif
  .fallback:
%endmacro

; This code is called when we need to exit reserved montior with couple of possible
; scenarios:
;   - more than one level of recursion
;   - FLC or INF are set
;   - we have illegal monitor state
%macro MonitorExitReserved 0
    ;local fallback
    ObtainLockWord
    test rax, eq_J9Monitor_RESBit
    jz   .fallback
    test rax, eq_J9Monitor_FLCINFBits
    jnz  .fallback
    test rax, eq_J9Monitor_RecCountMask
    jz   .fallback
    sub  dword [rcx], eq_J9Monitor_IncDecValue
    ret
  .fallback:
%endmacro

; We reach the reserved monitor enter code here if the monitor isn't reserved, it's reserved
; by another thread. We try to reserve it for ourselves and if we succeed we just go into
; main line code.
%macro MonitorEnterReservedPrimitive 0
    ;local fallback,trylock
    ObtainLockWord
    xor  rax, rbp                         ; mask thread ID
    xor  rax, eq_J9Monitor_RESBit          ; mask RES bit
    and  rax, eq_J9Monitor_CNTFLCClearMask ; clear the count bits
    jnz  .trylock                            ; if any bit is set we don't have it reserved by the same thread, or not reserved at all
    %ifdef TR_HOST_32BIT
        ret 4
    %else
        ret
    %endif
  .trylock:
    TryLock
    jne  .fallback                           ; call out to VM if we couldn't take the lock, which means it's not reserved for us
    %ifdef TR_HOST_32BIT
        ret 4
    %else
        ret
    %endif
  .fallback:
%endmacro

; This code is reachable from reserved primitive exit code and it is
; supposed to make sure we call out to monitor exit but with recursive count
; set to 1 if reservation is on. Namely, primitive reserving monitors don't
; increment and decrement reserving counts because the execution cannot be
; stopped inside them. We can get stopped at the exit in which we have to
; make sure we have count set to at least 1, that is pretend we increment/decrement.
; The state of count=0, RES=1, FLC=1 is invalid and illegal monitor state exception is thrown.
%macro MonitorExitReservedPrimitive 0
    ;local fallback
    ObtainLockWord
    test rax, eq_J9Monitor_INFBit                   ; check to see if we have inflated monitor
    jnz  .fallback                                    ; monitor inflated call the VM helper
    test rax, eq_J9Monitor_RESBit                   ; check to see if we have reservation ON
    jz   .fallback                                    ; no reserved bit set - go on, call the helper to exit
    test rax, eq_J9Monitor_RecCountMask             ; check to see if we have any recursive bits on
    jnz  .fallback                                    ; yes some recursive count, go back to main line code
    sub  dword [rcx], eq_J9Monitor_IncDecValue
    ret
  .fallback:
%endmacro

; We reach this out of line code when we fail to enter monitor with
; flat lock, where the monitor is supposed to preserve existing reservation.
; This enter procedure is different compared to the regular monitor enter
; sequence only that it checks for reservation and enters in reserved manner
; if possible.
%macro MonitorEnterPreservingReservation 0
    ;local fallback
    ObtainLockWord
    push rax
    and  rax, eq_J9Monitor_RecCountMask            ; check if the recursive count has
    xor  rax, eq_J9Monitor_RecCountMask            ; reached the max value
    pop  rax
    jz   .fallback                                   ; and call VM helper to resolve it
    xor  rax, rbp                                 ; mask thread ID
    xor  rax, eq_J9Monitor_RESBit                  ; mask RES bit
    and  rax, eq_J9Monitor_CountsClearMask         ; clear the count bits
    jnz  .fallback                                   ; if any bit is set we don't have it reserved by the same thread, or not reserved at all
    add  dword [rcx], eq_J9Monitor_IncDecValue ; add 1 to the reservation count
    ret
  .fallback:
%endmacro

; We reach this code when we are in regular monitor and we want to make sure we
; preserve reservation for any monitor that has reserved bit set and we are the
; same thread.
%macro MonitorExitPreservingReservation 0
    ;local fallback
    ObtainLockWord
    test rax, eq_J9Monitor_RecCountMask            ; check if the recursive count is greater than 1
    jz   .fallback                                   ; branch to VM if 0, weird thing has happened
    xor  rax, rbp                                 ; mask thread ID
    xor  rax, eq_J9Monitor_RESBit                  ; mask RES bit
    and  rax, eq_J9Monitor_CountsClearMask         ; clear the count bits
    jnz  .fallback                                   ; if any bit is set we don't have it reserved by the same thread, or not reserved at all
    sub  dword [rcx], eq_J9Monitor_IncDecValue
    ret
  .fallback:
%endmacro


; template for exported functions args: Name, Fallback, Template
%macro MonitorReservationFunction 3
    align 16
    %1: ; name
    %3 ; template
    %ifdef UseFastCall
        mov  rcx, rbp ; restore the first param - vmthread
    %endif
    jmp  %2 ;fallback
%endmacro

; %ifdef TR_HOST_64BIT
SECTION .text
; %else
;SECTION .text
;%endif

%ifdef TR_HOST_64BIT
    entryFallback equ _jitMonitorEntry
    methodEntryFallback equ _jitMethodMonitorEntry
%else
    entryFallback:
        ; jitMonitorEntry won't clean up the extra argument
        pop eax
        mov dword [esp], eax
        jmp _jitMonitorEntry
        retn

    methodEntryFallback:
        ; jitMethodMonitorEntry won't clean up the extra argument
        pop eax
        mov dword [esp], eax
        jmp _jitMethodMonitorEntry
        retn
%endif

extern _jitMonitorEntry
extern _jitMethodMonitorEntry
extern _jitMonitorExit
extern _jitMethodMonitorExit

MonitorReservationFunction _jitMonitorEnterReserved,                    entryFallback,         MonitorEnterReserved
MonitorReservationFunction _jitMethodMonitorEnterReserved,              methodEntryFallback,   MonitorEnterReserved
MonitorReservationFunction _jitMonitorEnterReservedPrimitive,           entryFallback,         MonitorEnterReservedPrimitive
MonitorReservationFunction _jitMethodMonitorEnterReservedPrimitive,     methodEntryFallback,   MonitorEnterReservedPrimitive
MonitorReservationFunction _jitMonitorEnterPreservingReservation,       _jitMonitorEntry,       MonitorEnterPreservingReservation
MonitorReservationFunction _jitMethodMonitorEnterPreservingReservation, _jitMethodMonitorEntry, MonitorEnterPreservingReservation

MonitorReservationFunction _jitMonitorExitReserved,                    _jitMonitorExit,       MonitorExitReserved
MonitorReservationFunction _jitMethodMonitorExitReserved,              _jitMethodMonitorExit, MonitorExitReserved
MonitorReservationFunction _jitMonitorExitReservedPrimitive,           _jitMonitorExit,       MonitorExitReservedPrimitive
MonitorReservationFunction _jitMethodMonitorExitReservedPrimitive,     _jitMethodMonitorExit, MonitorExitReservedPrimitive
MonitorReservationFunction _jitMonitorExitPreservingReservation,       _jitMonitorExit,       MonitorExitPreservingReservation
MonitorReservationFunction _jitMethodMonitorExitPreservingReservation, _jitMethodMonitorExit, MonitorExitPreservingReservation