// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:13:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/basic/decCondition.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/basic/decCondition-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// Translation of domain IntWellFoundedOrder
// ==================================================

// The type for domain IntWellFoundedOrder
type IntWellFoundedOrderDomainType;

// Translation of domain axiom integer_ax_dec
axiom (forall int1: int, int2: int ::
  { (decreasing(int1, int2): bool) }
  int1 < int2 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom integer_ax_bound
axiom (forall int1: int ::
  { (bounded(int1): bool) }
  int1 >= 0 ==> (bounded(int1): bool)
);

// ==================================================
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of method m
// ==================================================

procedure m(x: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_x: int;
  var y: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (x >= 0) -- decCondition.vpr@10.3--17.4
    if (x >= 0) {
      
      // -- Translating statement: if (x != 0) -- decCondition.vpr@11.5--13.6
        if (x != 0) {
          
          // -- Translating statement: assert !old(x >= 0) || x - 1 >= 0 -- <no position>
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion !old(x >= 0) || x - 1 >= 0 might not hold. (<no position>) [224858]"}
              !(x >= 0) || x - 1 >= 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   x - 1 == old(x) && false -- <no position>
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (x >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) || x - 1 == old(x) && false might not hold. (<no position>) [224859]"}
                (decreasing(x - 1, x): bool) && (bounded(x): bool);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: m(x - 1) -- decCondition.vpr@12.7--12.13
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_x := x - 1;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert !old(x >= 0) || y >= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || y >= 0 might not hold. (<no position>) [224860]"}
          !(x >= 0) || y >= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   y == old(x) && false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x >= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) || y == old(x) && false might not hold. (<no position>) [224861]"}
            (decreasing(y, x): bool) && (bounded(x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: m(y) -- decCondition.vpr@16.5--16.9
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method n
// ==================================================

procedure n_12(y: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert y >= 0 || y < 0 -- <no position>
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion y >= 0 || y < 0 might not hold. (<no position>) [224862]"}
      y >= 0 || y < 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: m(y) -- decCondition.vpr@23.5--23.9
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m_e
// ==================================================

procedure m_e(x: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_x: int;
  var y: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (x >= 0) -- decCondition.vpr@31.3--39.4
    if (x >= 0) {
      
      // -- Translating statement: if (x != 0) -- decCondition.vpr@32.5--35.6
        if (x != 0) {
          
          // -- Translating statement: assert !old(x >= 0) || x - 2 >= 0 -- <no position>
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion !old(x >= 0) || x - 2 >= 0 might not hold. (<no position>) [224863]"}
              !(x >= 0) || x - 2 >= 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(x - 2, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   x - 2 == old(x) && false -- <no position>
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (x >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(x - 2, old(x)): Bool) && (bounded(old(x)): Bool) || x - 2 == old(x) && false might not hold. (<no position>) [224864]"}
                (decreasing(x - 2, x): bool) && (bounded(x): bool);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: m_e(x - 2) -- decCondition.vpr@34.7--34.15
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_x := x - 2;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert !old(x >= 0) || y >= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || y >= 0 might not hold. (<no position>) [224865]"}
          !(x >= 0) || y >= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   y == old(x) && false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x >= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) || y == old(x) && false might not hold. (<no position>) [224866]"}
            (decreasing(y, x): bool) && (bounded(x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: m_e(y) -- decCondition.vpr@38.5--38.11
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method n_e
// ==================================================

procedure n_e(y: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert y >= 0 -- <no position>
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion y >= 0 might not hold. (decCondition.vpr@28.18--28.24) [224867]"}
      y >= 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: m_e(y) -- decCondition.vpr@46.5--46.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}