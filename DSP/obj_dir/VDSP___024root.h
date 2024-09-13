// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VDSP.h for the primary calling header

#ifndef VERILATED_VDSP___024ROOT_H_
#define VERILATED_VDSP___024ROOT_H_  // guard

#include "verilated.h"


class VDSP__Syms;

class alignas(VL_CACHE_LINE_BYTES) VDSP___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    VL_IN8(start,0,0);
    VL_IN8(operation,1,0);
    VL_OUT8(done,0,0);
    CData/*2:0*/ DSP__DOT__state;
    CData/*2:0*/ DSP__DOT__next_state;
    CData/*3:0*/ DSP__DOT__index;
    CData/*3:0*/ DSP__DOT__k;
    CData/*3:0*/ DSP__DOT____VdfgRegularize_haaff25e6_0_2;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__rst__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ DSP__DOT__acc;
    IData/*31:0*/ DSP__DOT__mult;
    IData/*31:0*/ __VactIterCount;
    QData/*32:0*/ DSP__DOT__sum_inst__DOT__sum_aux;
    QData/*32:0*/ DSP__DOT__sub_inst__DOT__diff_aux;
    VL_IN(A[8],31,0);
    VL_IN(B[8],31,0);
    VL_OUT(result[8],31,0);
    VlUnpacked<IData/*31:0*/, 12> DSP__DOT__a_ext;
    VlUnpacked<IData/*31:0*/, 12> DSP__DOT__x_ext;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VDSP__Syms* const vlSymsp;

    // CONSTRUCTORS
    VDSP___024root(VDSP__Syms* symsp, const char* v__name);
    ~VDSP___024root();
    VL_UNCOPYABLE(VDSP___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
