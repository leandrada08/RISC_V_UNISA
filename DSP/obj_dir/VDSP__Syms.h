// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VDSP__SYMS_H_
#define VERILATED_VDSP__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VDSP.h"

// INCLUDE MODULE CLASSES
#include "VDSP___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VDSP__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VDSP* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VDSP___024root                 TOP;

    // CONSTRUCTORS
    VDSP__Syms(VerilatedContext* contextp, const char* namep, VDSP* modelp);
    ~VDSP__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
