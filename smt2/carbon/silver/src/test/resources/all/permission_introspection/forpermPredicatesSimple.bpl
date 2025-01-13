// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:10:13
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermPredicatesSimple.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermPredicatesSimple-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o_27: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_27, f_24] }
  Heap[o_27, $allocated] ==> Heap[Heap[o_27, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_25) ==> Heap[o_23, f_25] == ExhaleHeap[o_23, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_27: Ref, f_30: (Field A B), v: B ::
  { Heap[o_27, f_30:=v] }
  succHeap(Heap, Heap[o_27, f_30:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Translation of predicate P1
// ==================================================

type PredicateType_P1;
function  P1(this: Ref): Field PredicateType_P1 FrameType;
function  P1#sm(this: Ref): Field PredicateType_P1 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(P1(this)) }
  PredicateMaskField(P1(this)) == P1#sm(this)
);
axiom (forall this: Ref ::
  { P1(this) }
  IsPredicateField(P1(this))
);
axiom (forall this: Ref ::
  { P1(this) }
  getPredWandId(P1(this)) == 0
);
function  P1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { P1(this), P1(this2) }
  P1(this) == P1(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { P1#sm(this), P1#sm(this2) }
  P1#sm(this) == P1#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { P1#trigger(Heap, P1(this)) }
  P1#everUsed(P1(this))
);

procedure P1#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P2
// ==================================================

type PredicateType_P2;
function  P2(this: Ref): Field PredicateType_P2 FrameType;
function  P2#sm(this: Ref): Field PredicateType_P2 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(P2(this)) }
  PredicateMaskField(P2(this)) == P2#sm(this)
);
axiom (forall this: Ref ::
  { P2(this) }
  IsPredicateField(P2(this))
);
axiom (forall this: Ref ::
  { P2(this) }
  getPredWandId(P2(this)) == 1
);
function  P2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { P2(this), P2(this2) }
  P2(this) == P2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { P2#sm(this), P2#sm(this2) }
  P2#sm(this) == P2#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { P2#trigger(Heap, P2(this)) }
  P2#everUsed(P2(this))
);

procedure P2#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P3
// ==================================================

type PredicateType_P3;
function  P3(this: Ref): Field PredicateType_P3 FrameType;
function  P3#sm(this: Ref): Field PredicateType_P3 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(P3(this)) }
  PredicateMaskField(P3(this)) == P3#sm(this)
);
axiom (forall this: Ref ::
  { P3(this) }
  IsPredicateField(P3(this))
);
axiom (forall this: Ref ::
  { P3(this) }
  getPredWandId(P3(this)) == 2
);
function  P3#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P3#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { P3(this), P3(this2) }
  P3(this) == P3(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { P3#sm(this), P3#sm(this2) }
  P3#sm(this) == P3#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { P3#trigger(Heap, P3(this)) }
  P3#everUsed(P3(this))
);

procedure P3#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P3
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method noPredicates
// ==================================================

procedure noPredicates() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_36: Ref;
  var r_27: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forperm r: Ref [P1(r)] :: false) -- forpermPredicatesSimple.vpr@18.3--18.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P1(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P1(r_36))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P1(r) (forpermPredicatesSimple.vpr@18.10--18.41) [142834]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P1(r_36));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P1(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@18.10--18.41) [142835]"}
      (forall r_1_1: Ref ::
      { Mask[null, P1(r_1_1)] } { Heap[null, P1(r_1_1)] }
      HasDirectPerm(Mask, null, P1(r_1_1)) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P2(r)] :: false) -- forpermPredicatesSimple.vpr@19.3--19.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P2(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P2(r_27))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P2(r) (forpermPredicatesSimple.vpr@19.10--19.41) [142836]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P2(r_27));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P2(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@19.10--19.41) [142837]"}
      (forall r_3_2: Ref ::
      { Mask[null, P2(r_3_2)] } { Heap[null, P2(r_3_2)] }
      HasDirectPerm(Mask, null, P2(r_3_2)) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method noPredicates2
// ==================================================

procedure noPredicates2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ref: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_28: Ref;
  var r_38: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[ref, $allocated];
  
  // -- Translating statement: inhale acc(P3(ref), write) -- forpermPredicatesSimple.vpr@25.3--25.22
    perm := FullPerm;
    Mask := Mask[null, P3(ref):=Mask[null, P3(ref)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P1(r)] :: false) -- forpermPredicatesSimple.vpr@26.3--26.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P1(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P1(r_28))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P1(r) (forpermPredicatesSimple.vpr@26.10--26.41) [142839]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P1(r_28));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P1(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@26.10--26.41) [142840]"}
      (forall r_1_1: Ref ::
      { Mask[null, P1(r_1_1)] } { Heap[null, P1(r_1_1)] }
      HasDirectPerm(Mask, null, P1(r_1_1)) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P2(r)] :: false) -- forpermPredicatesSimple.vpr@27.3--27.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P2(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P2(r_38))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P2(r) (forpermPredicatesSimple.vpr@27.10--27.41) [142841]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P2(r_38));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P2(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@27.10--27.41) [142842]"}
      (forall r_3_2: Ref ::
      { Mask[null, P2(r_3_2)] } { Heap[null, P2(r_3_2)] }
      HasDirectPerm(Mask, null, P2(r_3_2)) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permOnlyOnePredicate1
// ==================================================

procedure permOnlyOnePredicate1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ref: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_12: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[ref, $allocated];
  
  // -- Translating statement: inhale acc(P1(ref), write) -- forpermPredicatesSimple.vpr@33.3--33.22
    perm := FullPerm;
    Mask := Mask[null, P1(ref):=Mask[null, P1(ref)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P1(r)] :: false) -- forpermPredicatesSimple.vpr@35.3--35.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P1(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P1(r_12))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P1(r) (forpermPredicatesSimple.vpr@35.10--35.41) [142844]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P1(r_12));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P1(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@35.10--35.41) [142845]"}
      (forall r_1_1: Ref ::
      { Mask[null, P1(r_1_1)] } { Heap[null, P1(r_1_1)] }
      HasDirectPerm(Mask, null, P1(r_1_1)) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permOnlyOnePredicate2
// ==================================================

procedure permOnlyOnePredicate2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ref: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_41: Ref;
  var r_30: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[ref, $allocated];
  
  // -- Translating statement: inhale acc(P1(ref), write) -- forpermPredicatesSimple.vpr@41.3--41.22
    perm := FullPerm;
    Mask := Mask[null, P1(ref):=Mask[null, P1(ref)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P2(r)] :: false) -- forpermPredicatesSimple.vpr@42.3--42.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P2(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P2(r_41))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P2(r) (forpermPredicatesSimple.vpr@42.10--42.41) [142847]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P2(r_41));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P2(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@42.10--42.41) [142848]"}
      (forall r_1_1: Ref ::
      { Mask[null, P2(r_1_1)] } { Heap[null, P2(r_1_1)] }
      HasDirectPerm(Mask, null, P2(r_1_1)) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P1(r)] :: false) -- forpermPredicatesSimple.vpr@44.3--44.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P1(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P1(r_30))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P1(r) (forpermPredicatesSimple.vpr@44.10--44.41) [142849]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P1(r_30));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P1(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@44.10--44.41) [142850]"}
      (forall r_3_2: Ref ::
      { Mask[null, P1(r_3_2)] } { Heap[null, P1(r_3_2)] }
      HasDirectPerm(Mask, null, P1(r_3_2)) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permCheck
// ==================================================

procedure permCheck() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ref: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var r_32: Ref;
  var r_42: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[ref, $allocated];
  
  // -- Translating statement: inhale acc(P1(ref), write) -- forpermPredicatesSimple.vpr@50.3--50.22
    perm := FullPerm;
    Mask := Mask[null, P1(ref):=Mask[null, P1(ref)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P1(ref), write) -- forpermPredicatesSimple.vpr@51.3--51.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P1(ref) (forpermPredicatesSimple.vpr@51.10--51.22) [142853]"}
        perm <= Mask[null, P1(ref)];
    }
    Mask := Mask[null, P1(ref):=Mask[null, P1(ref)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P1(r)] :: false) -- forpermPredicatesSimple.vpr@52.3--52.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P1(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P1(r_32))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P1(r) (forpermPredicatesSimple.vpr@52.10--52.41) [142854]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P1(r_32));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P1(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@52.10--52.41) [142855]"}
      (forall r_1_1: Ref ::
      { Mask[null, P1(r_1_1)] } { Heap[null, P1(r_1_1)] }
      HasDirectPerm(Mask, null, P1(r_1_1)) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [P2(r)] :: false) -- forpermPredicatesSimple.vpr@53.3--53.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [P2(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P2(r_42))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P2(r) (forpermPredicatesSimple.vpr@53.10--53.41) [142856]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P2(r_42));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [P2(r)] :: false) might not hold. (forpermPredicatesSimple.vpr@53.10--53.41) [142857]"}
      (forall r_3_2: Ref ::
      { Mask[null, P2(r_3_2)] } { Heap[null, P2(r_3_2)] }
      HasDirectPerm(Mask, null, P2(r_3_2)) ==> false
    );
    assume state(Heap, Mask);
}