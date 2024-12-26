// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:28:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/loops/whileLoop.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/loops/whileLoop-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique v_36: Field NormalField int;
axiom !IsPredicateField(v_36);
axiom !IsWandField(v_36);

// ==================================================
// Translation of method m
// ==================================================

procedure m(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W1_T0: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: y := x -- whileLoop.vpr@8.5--8.20
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (y >= 0) -- whileLoop.vpr@9.5--15.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant y <= x might not hold on entry. Assertion y <= x might not hold. (whileLoop.vpr@11.19--11.25) [224507]"}
          y <= x;
    
    // -- Havoc loop written variables (except locals)
      havoc y;
    
    // -- Check definedness of invariant
      if (*) {
        assume y <= x;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume y <= x;
        assume state(Heap, Mask);
        // Check and assume guard
        assume y >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W1_T0 := y -- whileLoop.vpr@10.19--10.20
            old_W1_T0 := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := y - 1 -- whileLoop.vpr@13.9--13.19
            y := y - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   y == old(x) && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) || y == old(x) && false might not hold. (<no position>) [224508]"}
              (decreasing(y, x): bool) && (bounded(x): bool);
            assume state(Heap, Mask);
          
          // -- Translating statement: m(y) -- whileLoop.vpr@14.9--14.13
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && y >= 0 ==>
  //   (decreasing(y, old_W1_T0): Bool) && (bounded(old_W1_T0): Bool) ||
  //   y == old_W1_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (y >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W1_T0): Bool) && (bounded(old_W1_T0): Bool) || y == old_W1_T0 && false might not hold. (<no position>) [224509]"}
                (decreasing(y, old_W1_T0): bool) && (bounded(old_W1_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant y <= x might not be preserved. Assertion y <= x might not hold. (whileLoop.vpr@11.19--11.25) [224510]"}
          y <= x;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(y >= 0);
      assume state(Heap, Mask);
      assume y <= x;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m_e
// ==================================================

procedure m_e(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W2_T0: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: y := x -- whileLoop.vpr@21.5--21.20
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (y >= 0) -- whileLoop.vpr@22.5--28.6
    
    // -- Havoc loop written variables (except locals)
      havoc y;
    
    // -- Check definedness of invariant
      if (*) {
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume state(Heap, Mask);
        // Check and assume guard
        assume y >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W2_T0 := y -- whileLoop.vpr@24.19--24.20
            old_W2_T0 := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := y - 1 -- whileLoop.vpr@26.9--26.19
            y := y - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := y + 1 -- whileLoop.vpr@27.9--27.19
            y := y + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && y >= 0 ==>
  //   (decreasing(y, old_W2_T0): Bool) && (bounded(old_W2_T0): Bool) ||
  //   y == old_W2_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (y >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W2_T0): Bool) && (bounded(old_W2_T0): Bool) || y == old_W2_T0 && false might not hold. (<no position>) [224511]"}
                (decreasing(y, old_W2_T0): bool) && (bounded(old_W2_T0): bool);
            }
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(y >= 0);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m_e2
// ==================================================

procedure m_e2(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W3_T0: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: y := x -- whileLoop.vpr@34.5--34.20
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (y >= 0) -- whileLoop.vpr@35.5--41.6
    
    // -- Havoc loop written variables (except locals)
      havoc y;
    
    // -- Check definedness of invariant
      if (*) {
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume state(Heap, Mask);
        // Check and assume guard
        assume y >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W3_T0 := y -- whileLoop.vpr@36.19--36.20
            old_W3_T0 := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := y - 1 -- whileLoop.vpr@38.9--38.19
            y := y - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   y == old(x) && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) || y == old(x) && false might not hold. (<no position>) [224512]"}
              (decreasing(y, x): bool) && (bounded(x): bool);
            assume state(Heap, Mask);
          
          // -- Translating statement: m_e2(y) -- whileLoop.vpr@40.9--40.16
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && y >= 0 ==>
  //   (decreasing(y, old_W3_T0): Bool) && (bounded(old_W3_T0): Bool) ||
  //   y == old_W3_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (y >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W3_T0): Bool) && (bounded(old_W3_T0): Bool) || y == old_W3_T0 && false might not hold. (<no position>) [224513]"}
                (decreasing(y, old_W3_T0): bool) && (bounded(old_W3_T0): bool);
            }
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(y >= 0);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W4_T0: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.v <= old(r.v)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@51.13--51.28) [224514]"}
        HasDirectPerm(PostMask, r_1, v_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@51.13--51.28) [224515]"}
        HasDirectPerm(oldMask, r_1, v_36);
    assume PostHeap[r_1, v_36] <= oldHeap[r_1, v_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (r.v >= 0) -- whileLoop.vpr@53.5--60.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@54.19--54.27) [224516]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not hold on entry. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@56.19--56.34) [224517]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of r.v <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@56.19--56.34) [224518]"}
            HasDirectPerm(Mask, r_1, v_36);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@56.19--56.34) [224519]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of r.v >= 0
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.v (whileLoop.vpr@53.11--53.19) [224520]"}
            HasDirectPerm(Mask, r_1, v_36);
        assume Heap[r_1, v_36] >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W4_T0 := r.v -- whileLoop.vpr@55.19--55.22
            
            // -- Check definedness of r.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@55.19--55.22) [224521]"}
                HasDirectPerm(Mask, r_1, v_36);
            old_W4_T0 := Heap[r_1, v_36];
            assume state(Heap, Mask);
          
          // -- Translating statement: r.v := r.v - 1 -- whileLoop.vpr@58.9--58.23
            
            // -- Check definedness of r.v - 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@58.9--58.23) [224522]"}
                HasDirectPerm(Mask, r_1, v_36);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@58.9--58.23) [224523]"}
              FullPerm == Mask[r_1, v_36];
            Heap := Heap[r_1, v_36:=Heap[r_1, v_36] - 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (decreasing(r.v, old(r.v)): Bool) && (bounded(old(r.v)): Bool) ||
  //   r.v == old(r.v) && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of (decreasing(r.v, old(r.v)): Bool) && (bounded(old(r.v)): Bool) || r.v == old(r.v) && false
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224524]"}
                HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224525]"}
                HasDirectPerm(oldMask, r_1, v_36);
              if ((decreasing(Heap[r_1, v_36], oldHeap[r_1, v_36]): bool)) {
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224526]"}
                  HasDirectPerm(oldMask, r_1, v_36);
              }
              if (!((decreasing(Heap[r_1, v_36], oldHeap[r_1, v_36]): bool) && (bounded(oldHeap[r_1, v_36]): bool))) {
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224527]"}
                  HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224528]"}
                  HasDirectPerm(oldMask, r_1, v_36);
              }
            assert {:msg "  Assert might fail. Assertion (decreasing(r.v, old(r.v)): Bool) && (bounded(old(r.v)): Bool) || r.v == old(r.v) && false might not hold. (<no position>) [224529]"}
              (decreasing(Heap[r_1, v_36], oldHeap[r_1, v_36]): bool) && (bounded(oldHeap[r_1, v_36]): bool);
            assume state(Heap, Mask);
          
          // -- Translating statement: m2(r) -- whileLoop.vpr@59.9--59.14
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method m2 might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@59.9--59.14) [224530]"}
                  perm <= Mask[r_1, v_36];
              }
              Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume r_1 != null;
              Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
              assume state(Heap, Mask);
              assume Heap[r_1, v_36] <= PreCallHeap[r_1, v_36];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && r.v >= 0 ==>
  //   (decreasing(r.v, old_W4_T0): Bool) && (bounded(old_W4_T0): Bool) ||
  //   r.v == old_W4_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of true && r.v >= 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224531]"}
                HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
            if (Heap[r_1, v_36] >= 0) {
              
              // -- Check definedness of (decreasing(r.v, old_W4_T0): Bool) && (bounded(old_W4_T0): Bool) || r.v == old_W4_T0 && false
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224532]"}
                  HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                if (!((decreasing(Heap[r_1, v_36], old_W4_T0): bool) && (bounded(old_W4_T0): bool))) {
                  assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224533]"}
                    HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                }
              assert {:msg "  Assert might fail. Assertion (decreasing(r.v, old_W4_T0): Bool) && (bounded(old_W4_T0): Bool) || r.v == old_W4_T0 && false might not hold. (<no position>) [224534]"}
                (decreasing(Heap[r_1, v_36], old_W4_T0): bool) && (bounded(old_W4_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@54.19--54.27) [224535]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not be preserved. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@56.19--56.34) [224536]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Heap[r_1, v_36] >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@50.13--50.28) [224537]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    assert {:msg "  Postcondition of m2 might not hold. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@51.13--51.28) [224538]"}
      Heap[r_1, v_36] <= oldHeap[r_1, v_36];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m2_e
// ==================================================

procedure m2_e(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W5_T0: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.v <= old(r.v)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@67.13--67.28) [224539]"}
        HasDirectPerm(PostMask, r_1, v_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@67.13--67.28) [224540]"}
        HasDirectPerm(oldMask, r_1, v_36);
    assume PostHeap[r_1, v_36] <= oldHeap[r_1, v_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (r.v >= 0) -- whileLoop.vpr@69.5--77.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@70.19--70.27) [224541]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not hold on entry. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@72.19--72.34) [224542]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of r.v <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@72.19--72.34) [224543]"}
            HasDirectPerm(Mask, r_1, v_36);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@72.19--72.34) [224544]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of r.v >= 0
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.v (whileLoop.vpr@69.11--69.19) [224545]"}
            HasDirectPerm(Mask, r_1, v_36);
        assume Heap[r_1, v_36] >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W5_T0 := r.v -- whileLoop.vpr@71.19--71.22
            
            // -- Check definedness of r.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@71.19--71.22) [224546]"}
                HasDirectPerm(Mask, r_1, v_36);
            old_W5_T0 := Heap[r_1, v_36];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (decreasing(r.v, old(r.v)): Bool) && (bounded(old(r.v)): Bool) ||
  //   r.v == old(r.v) && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of (decreasing(r.v, old(r.v)): Bool) && (bounded(old(r.v)): Bool) || r.v == old(r.v) && false
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224547]"}
                HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224548]"}
                HasDirectPerm(oldMask, r_1, v_36);
              if ((decreasing(Heap[r_1, v_36], oldHeap[r_1, v_36]): bool)) {
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224549]"}
                  HasDirectPerm(oldMask, r_1, v_36);
              }
              if (!((decreasing(Heap[r_1, v_36], oldHeap[r_1, v_36]): bool) && (bounded(oldHeap[r_1, v_36]): bool))) {
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224550]"}
                  HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224551]"}
                  HasDirectPerm(oldMask, r_1, v_36);
              }
            assert {:msg "  Assert might fail. Assertion (decreasing(r.v, old(r.v)): Bool) && (bounded(old(r.v)): Bool) || r.v == old(r.v) && false might not hold. (<no position>) [224552]"}
              (decreasing(Heap[r_1, v_36], oldHeap[r_1, v_36]): bool) && (bounded(oldHeap[r_1, v_36]): bool);
            assume state(Heap, Mask);
          
          // -- Translating statement: m2_e(r) -- whileLoop.vpr@75.9--75.16
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method m2_e might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@75.9--75.16) [224553]"}
                  perm <= Mask[r_1, v_36];
              }
              Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume r_1 != null;
              Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
              assume state(Heap, Mask);
              assume Heap[r_1, v_36] <= PreCallHeap[r_1, v_36];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: r.v := r.v - 1 -- whileLoop.vpr@76.9--76.23
            
            // -- Check definedness of r.v - 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@76.9--76.23) [224554]"}
                HasDirectPerm(Mask, r_1, v_36);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@76.9--76.23) [224555]"}
              FullPerm == Mask[r_1, v_36];
            Heap := Heap[r_1, v_36:=Heap[r_1, v_36] - 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && r.v >= 0 ==>
  //   (decreasing(r.v, old_W5_T0): Bool) && (bounded(old_W5_T0): Bool) ||
  //   r.v == old_W5_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of true && r.v >= 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224556]"}
                HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
            if (Heap[r_1, v_36] >= 0) {
              
              // -- Check definedness of (decreasing(r.v, old_W5_T0): Bool) && (bounded(old_W5_T0): Bool) || r.v == old_W5_T0 && false
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224557]"}
                  HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                if (!((decreasing(Heap[r_1, v_36], old_W5_T0): bool) && (bounded(old_W5_T0): bool))) {
                  assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224558]"}
                    HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                }
              assert {:msg "  Assert might fail. Assertion (decreasing(r.v, old_W5_T0): Bool) && (bounded(old_W5_T0): Bool) || r.v == old_W5_T0 && false might not hold. (<no position>) [224559]"}
                (decreasing(Heap[r_1, v_36], old_W5_T0): bool) && (bounded(old_W5_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@70.19--70.27) [224560]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not be preserved. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@72.19--72.34) [224561]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Heap[r_1, v_36] >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2_e might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@66.13--66.28) [224562]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    assert {:msg "  Postcondition of m2_e might not hold. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@67.13--67.28) [224563]"}
      Heap[r_1, v_36] <= oldHeap[r_1, v_36];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W7_T0: int;
  var y: int;
  var old_W6_T0: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (r.v >= 0) -- whileLoop.vpr@86.5--99.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@87.19--87.27) [224564]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not hold on entry. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@89.19--89.34) [224565]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of r.v <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@89.19--89.34) [224566]"}
            HasDirectPerm(Mask, r_1, v_36);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@89.19--89.34) [224567]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of r.v >= 0
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.v (whileLoop.vpr@86.11--86.19) [224568]"}
            HasDirectPerm(Mask, r_1, v_36);
        assume Heap[r_1, v_36] >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W7_T0 := r.v -- whileLoop.vpr@88.19--88.22
            
            // -- Check definedness of r.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@88.19--88.22) [224569]"}
                HasDirectPerm(Mask, r_1, v_36);
            old_W7_T0 := Heap[r_1, v_36];
            assume state(Heap, Mask);
          
          // -- Translating statement: y := r.v -- whileLoop.vpr@91.9--91.26
            
            // -- Check definedness of r.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@91.9--91.26) [224570]"}
                HasDirectPerm(Mask, r_1, v_36);
            y := Heap[r_1, v_36];
            assume state(Heap, Mask);
          
          // -- Translating statement: while (y >= 0) -- whileLoop.vpr@92.9--96.10
            
            // -- Havoc loop written variables (except locals)
              havoc y;
            
            // -- Check definedness of invariant
              if (*) {
                assume false;
              }
            
            // -- Check the loop body
              if (*) {
                // Reset state
                loopHeap := Heap;
                loopMask := Mask;
                Mask := ZeroMask;
                assume state(Heap, Mask);
                // Inhale invariant
                assume state(Heap, Mask);
                // Check and assume guard
                assume y >= 0;
                assume state(Heap, Mask);
                
                // -- Translate loop body
                  
                  // -- Translating statement: old_W6_T0 := y -- whileLoop.vpr@93.23--93.24
                    old_W6_T0 := y;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: y := y - 1 -- whileLoop.vpr@95.13--95.23
                    y := y - 1;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: assert true && y >= 0 ==>
  //   (decreasing(y, old_W6_T0): Bool) && (bounded(old_W6_T0): Bool) ||
  //   y == old_W6_T0 && false -- <no position>
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (y >= 0) {
                      assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W6_T0): Bool) && (bounded(old_W6_T0): Bool) || y == old_W6_T0 && false might not hold. (<no position>) [224571]"}
                        (decreasing(y, old_W6_T0): bool) && (bounded(old_W6_T0): bool);
                    }
                    assume state(Heap, Mask);
                // Terminate execution
                assume false;
              }
            
            // -- Inhale loop invariant after loop, and assume guard
              assume !(y >= 0);
              assume state(Heap, Mask);
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: r.v := r.v - 1 -- whileLoop.vpr@98.9--98.23
            
            // -- Check definedness of r.v - 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@98.9--98.23) [224572]"}
                HasDirectPerm(Mask, r_1, v_36);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@98.9--98.23) [224573]"}
              FullPerm == Mask[r_1, v_36];
            Heap := Heap[r_1, v_36:=Heap[r_1, v_36] - 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && r.v >= 0 ==>
  //   (decreasing(r.v, old_W7_T0): Bool) && (bounded(old_W7_T0): Bool) ||
  //   r.v == old_W7_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of true && r.v >= 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224574]"}
                HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
            if (Heap[r_1, v_36] >= 0) {
              
              // -- Check definedness of (decreasing(r.v, old_W7_T0): Bool) && (bounded(old_W7_T0): Bool) || r.v == old_W7_T0 && false
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224575]"}
                  HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                if (!((decreasing(Heap[r_1, v_36], old_W7_T0): bool) && (bounded(old_W7_T0): bool))) {
                  assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224576]"}
                    HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                }
              assert {:msg "  Assert might fail. Assertion (decreasing(r.v, old_W7_T0): Bool) && (bounded(old_W7_T0): Bool) || r.v == old_W7_T0 && false might not hold. (<no position>) [224577]"}
                (decreasing(Heap[r_1, v_36], old_W7_T0): bool) && (bounded(old_W7_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@87.19--87.27) [224578]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not be preserved. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@89.19--89.34) [224579]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Heap[r_1, v_36] >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@84.13--84.28) [224580]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3_e
// ==================================================

procedure m3_e(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W9_T0: int;
  var y: int;
  var old_W8_T0: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (r.v >= 0) -- whileLoop.vpr@107.5--121.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@108.19--108.27) [224581]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not hold on entry. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@110.19--110.34) [224582]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of r.v <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@110.19--110.34) [224583]"}
            HasDirectPerm(Mask, r_1, v_36);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@110.19--110.34) [224584]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of r.v >= 0
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.v (whileLoop.vpr@107.11--107.19) [224585]"}
            HasDirectPerm(Mask, r_1, v_36);
        assume Heap[r_1, v_36] >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W9_T0 := r.v -- whileLoop.vpr@109.19--109.22
            
            // -- Check definedness of r.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@109.19--109.22) [224586]"}
                HasDirectPerm(Mask, r_1, v_36);
            old_W9_T0 := Heap[r_1, v_36];
            assume state(Heap, Mask);
          
          // -- Translating statement: y := r.v -- whileLoop.vpr@112.9--112.26
            
            // -- Check definedness of r.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@112.9--112.26) [224587]"}
                HasDirectPerm(Mask, r_1, v_36);
            y := Heap[r_1, v_36];
            assume state(Heap, Mask);
          
          // -- Translating statement: while (y >= 0) -- whileLoop.vpr@113.9--118.10
            
            // -- Havoc loop written variables (except locals)
              havoc y;
            
            // -- Check definedness of invariant
              if (*) {
                assume false;
              }
            
            // -- Check the loop body
              if (*) {
                // Reset state
                loopHeap := Heap;
                loopMask := Mask;
                Mask := ZeroMask;
                assume state(Heap, Mask);
                // Inhale invariant
                assume state(Heap, Mask);
                // Check and assume guard
                assume y >= 0;
                assume state(Heap, Mask);
                
                // -- Translate loop body
                  
                  // -- Translating statement: old_W8_T0 := y -- whileLoop.vpr@115.23--115.24
                    old_W8_T0 := y;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: y := y -- whileLoop.vpr@117.13--117.19
                    y := y;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: assert true && y >= 0 ==>
  //   (decreasing(y, old_W8_T0): Bool) && (bounded(old_W8_T0): Bool) ||
  //   y == old_W8_T0 && false -- <no position>
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (y >= 0) {
                      assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W8_T0): Bool) && (bounded(old_W8_T0): Bool) || y == old_W8_T0 && false might not hold. (<no position>) [224588]"}
                        (decreasing(y, old_W8_T0): bool) && (bounded(old_W8_T0): bool);
                    }
                    assume state(Heap, Mask);
                // Terminate execution
                assume false;
              }
            
            // -- Inhale loop invariant after loop, and assume guard
              assume !(y >= 0);
              assume state(Heap, Mask);
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: r.v := r.v - 1 -- whileLoop.vpr@120.9--120.23
            
            // -- Check definedness of r.v - 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@120.9--120.23) [224589]"}
                HasDirectPerm(Mask, r_1, v_36);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@120.9--120.23) [224590]"}
              FullPerm == Mask[r_1, v_36];
            Heap := Heap[r_1, v_36:=Heap[r_1, v_36] - 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert true && r.v >= 0 ==>
  //   (decreasing(r.v, old_W9_T0): Bool) && (bounded(old_W9_T0): Bool) ||
  //   r.v == old_W9_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of true && r.v >= 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224591]"}
                HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
            if (Heap[r_1, v_36] >= 0) {
              
              // -- Check definedness of (decreasing(r.v, old_W9_T0): Bool) && (bounded(old_W9_T0): Bool) || r.v == old_W9_T0 && false
                assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224592]"}
                  HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                if (!((decreasing(Heap[r_1, v_36], old_W9_T0): bool) && (bounded(old_W9_T0): bool))) {
                  assert {:msg "  Assert might fail. There might be insufficient permission to access r.v (<no position>) [224593]"}
                    HasDirectPerm(ExhaleWellDef0Mask, r_1, v_36);
                }
              assert {:msg "  Assert might fail. Assertion (decreasing(r.v, old_W9_T0): Bool) && (bounded(old_W9_T0): Bool) || r.v == old_W9_T0 && false might not hold. (<no position>) [224594]"}
                (decreasing(Heap[r_1, v_36], old_W9_T0): bool) && (bounded(old_W9_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@108.19--108.27) [224595]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant r.v <= old(r.v) might not be preserved. Assertion r.v <= old(r.v) might not hold. (whileLoop.vpr@110.19--110.34) [224596]"}
          Heap[r_1, v_36] <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Heap[r_1, v_36] >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, v_36] <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m3_e might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@105.13--105.28) [224597]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W10_T0: int;
  var old_W10_C: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: y := r.v -- whileLoop.vpr@130.5--130.22
    
    // -- Check definedness of r.v
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@130.5--130.22) [224598]"}
        HasDirectPerm(Mask, r_1, v_36);
    y := Heap[r_1, v_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !(old(true) && y >= 0) || y >= 0 -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !(old(true) && y >= 0) || y >= 0 might not hold. (<no position>) [224599]"}
      !(y >= 0) || y >= 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (y >= 0) -- whileLoop.vpr@131.5--137.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@132.19--132.27) [224600]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant y <= old(r.v) might not hold on entry. Assertion y <= old(r.v) might not hold. (whileLoop.vpr@134.19--134.32) [224601]"}
          y <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc y;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of y <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@134.19--134.32) [224602]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume y <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume y <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        assume y >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W10_T0 := y -- whileLoop.vpr@133.19--133.20
            old_W10_T0 := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: old_W10_C := y >= 0 -- whileLoop.vpr@133.24--133.30
            old_W10_C := y >= 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := y - 1 -- whileLoop.vpr@136.9--136.19
            y := y - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert !(old_W10_C && y >= 0) || y >= 0 -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion !(old_W10_C && y >= 0) || y >= 0 might not hold. (<no position>) [224603]"}
              !(old_W10_C && y >= 0) || y >= 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert old_W10_C && y >= 0 ==>
  //   (decreasing(y, old_W10_T0): Bool) && (bounded(old_W10_T0): Bool) ||
  //   y == old_W10_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (old_W10_C && y >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W10_T0): Bool) && (bounded(old_W10_T0): Bool) || y == old_W10_T0 && false might not hold. (<no position>) [224604]"}
                (decreasing(y, old_W10_T0): bool) && (bounded(old_W10_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@132.19--132.27) [224605]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant y <= old(r.v) might not be preserved. Assertion y <= old(r.v) might not hold. (whileLoop.vpr@134.19--134.32) [224606]"}
          y <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(y >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume y <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@128.13--128.28) [224607]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4_e
// ==================================================

procedure m4_e(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W11_T0: int;
  var old_W11_C: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: y := r.v -- whileLoop.vpr@145.5--145.22
    
    // -- Check definedness of r.v
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@145.5--145.22) [224608]"}
        HasDirectPerm(Mask, r_1, v_36);
    y := Heap[r_1, v_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !(old(true) && y >= 0) || y > 0 -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !(old(true) && y >= 0) || y > 0 might not hold. (<no position>) [224609]"}
      !(y >= 0) || y > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (y >= 0) -- whileLoop.vpr@148.5--154.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@149.19--149.27) [224610]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant y <= old(r.v) might not hold on entry. Assertion y <= old(r.v) might not hold. (whileLoop.vpr@151.19--151.32) [224611]"}
          y <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc y;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of y <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@151.19--151.32) [224612]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume y <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume y <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        assume y >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W11_T0 := y -- whileLoop.vpr@150.19--150.20
            old_W11_T0 := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: old_W11_C := y > 0 -- whileLoop.vpr@150.24--150.29
            old_W11_C := y > 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := -1 -- whileLoop.vpr@153.9--153.16
            y := -1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert !(old_W11_C && y >= 0) || y > 0 -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion !(old_W11_C && y >= 0) || y > 0 might not hold. (<no position>) [224613]"}
              !(old_W11_C && y >= 0) || y > 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert old_W11_C && y >= 0 ==>
  //   (decreasing(y, old_W11_T0): Bool) && (bounded(old_W11_T0): Bool) ||
  //   y == old_W11_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (old_W11_C && y >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W11_T0): Bool) && (bounded(old_W11_T0): Bool) || y == old_W11_T0 && false might not hold. (<no position>) [224614]"}
                (decreasing(y, old_W11_T0): bool) && (bounded(old_W11_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@149.19--149.27) [224615]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant y <= old(r.v) might not be preserved. Assertion y <= old(r.v) might not hold. (whileLoop.vpr@151.19--151.32) [224616]"}
          y <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(y >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume y <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m4_e might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@143.13--143.28) [224617]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4_e2
// ==================================================

procedure m4_e2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W12_T0: int;
  var old_W12_C: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, v_36:=PostMask[r_1, v_36] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: y := r.v -- whileLoop.vpr@161.5--161.22
    
    // -- Check definedness of r.v
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.v (whileLoop.vpr@161.5--161.22) [224618]"}
        HasDirectPerm(Mask, r_1, v_36);
    y := Heap[r_1, v_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (y >= 0) -- whileLoop.vpr@162.5--171.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not hold on entry. There might be insufficient permission to access r.v (whileLoop.vpr@163.19--163.27) [224619]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant y <= old(r.v) might not hold on entry. Assertion y <= old(r.v) might not hold. (whileLoop.vpr@166.19--166.32) [224620]"}
          y <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc y;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of y <= old(r.v)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.v (whileLoop.vpr@166.19--166.32) [224621]"}
            HasDirectPerm(oldMask, r_1, v_36);
        assume y <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
        assume state(Heap, Mask);
        assume y <= oldHeap[r_1, v_36];
        assume state(Heap, Mask);
        // Check and assume guard
        assume y >= 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_W12_T0 := y -- whileLoop.vpr@165.19--165.20
            old_W12_T0 := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: old_W12_C := y > 0 -- whileLoop.vpr@165.24--165.29
            old_W12_C := y > 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: y := y - 2 -- whileLoop.vpr@168.9--168.19
            y := y - 2;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert !(old_W12_C && y >= 0) || y > 0 -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion !(old_W12_C && y >= 0) || y > 0 might not hold. (<no position>) [224622]"}
              !(old_W12_C && y >= 0) || y > 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert old_W12_C && y >= 0 ==>
  //   (decreasing(y, old_W12_T0): Bool) && (bounded(old_W12_T0): Bool) ||
  //   y == old_W12_T0 && false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (old_W12_C && y >= 0) {
              assert {:msg "  Assert might fail. Assertion (decreasing(y, old_W12_T0): Bool) && (bounded(old_W12_T0): Bool) || y == old_W12_T0 && false might not hold. (<no position>) [224623]"}
                (decreasing(y, old_W12_T0): bool) && (bounded(old_W12_T0): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.v, write) might not be preserved. There might be insufficient permission to access r.v (whileLoop.vpr@163.19--163.27) [224624]"}
            perm <= Mask[r_1, v_36];
        }
        Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
        assert {:msg "  Loop invariant y <= old(r.v) might not be preserved. Assertion y <= old(r.v) might not hold. (whileLoop.vpr@166.19--166.32) [224625]"}
          y <= oldHeap[r_1, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(y >= 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, v_36:=Mask[r_1, v_36] + perm];
      assume state(Heap, Mask);
      assume y <= oldHeap[r_1, v_36];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m4_e2 might not hold. There might be insufficient permission to access r.v (whileLoop.vpr@159.13--159.28) [224626]"}
        perm <= Mask[r_1, v_36];
    }
    Mask := Mask[r_1, v_36:=Mask[r_1, v_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}