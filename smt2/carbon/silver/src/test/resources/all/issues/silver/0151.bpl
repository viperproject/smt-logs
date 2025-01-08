// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:11:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0151.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0151-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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

// Function heights (higher height means its body is available earlier):
// - height 0: level
const AssumeFunctionsAbove: int;
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
// Translation of all fields
// ==================================================

const unique held: Field NormalField int;
axiom !IsPredicateField(held);
axiom !IsWandField(held);

// ==================================================
// Translation of function level
// ==================================================

// Uninterpreted function definitions
function  level(Heap: HeapType, this: Ref): Perm;
function  level'(Heap: HeapType, this: Ref): Perm;
axiom (forall Heap: HeapType, this: Ref ::
  { level(Heap, this) }
  level(Heap, this) == level'(Heap, this) && dummyFunction(level#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { level'(Heap, this) }
  dummyFunction(level#triggerStateless(this))
);

// Framing axioms
function  level#frame(frame: FrameType, this: Ref): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), level'(Heap, this) }
  state(Heap, Mask) ==> level'(Heap, this) == level#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  level#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  level#triggerStateless(this: Ref): Perm;

// Check contract well-formedness and postcondition
procedure level#definedness(this: Ref) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of method transfer
// ==================================================

procedure transfer(this: Ref, to: Ref, amount: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x_33: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var x$0_9: Ref;
  var perm: Perm;
  var x$1_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[to, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forperm x: Ref [x.held] :: level(x) < level(this)) &&
  //   level(this) < level(to) -- 0151.vpr@19.3--19.48
    assume state(Heap, Mask);
    
    // -- Check definedness of (forperm x: Ref [x.held] :: level(x) < level(this))
      if (*) {
        if (HasDirectPerm(Mask, x_33, held)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.held (0151.vpr@19.10--19.48) [222401]"}
            HasDirectPerm(Mask, x_33, held);
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall x_1: Ref ::
      { Mask[x_1, held] } { Heap[x_1, held] }
      HasDirectPerm(Mask, x_1, held) ==> level(Heap, x_1) < level(Heap, this)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of level(this) < level(to)
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    assume level(Heap, this) < level(Heap, to);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forperm x$0: Ref [x$0.held] :: level(x$0) < level(this)) -- 0151.vpr@14.3--14.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm x$0: Ref [x$0.held] :: level(x$0) < level(this))
      if (*) {
        if (HasDirectPerm(Mask, x$0_9, held)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x$0.held (0151.vpr@14.10--14.18) [222402]"}
            HasDirectPerm(ExhaleWellDef0Mask, x$0_9, held);
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm x$0: Ref [x$0.held] :: level(x$0) < level(this)) might not hold. (0151.vpr@14.10--14.18) [222403]"}
      (forall x$0_1: Ref ::
      { Mask[x$0_1, held] } { Heap[x$0_1, held] }
      HasDirectPerm(Mask, x$0_1, held) ==> level(Heap, x$0_1) < level(Heap, this)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(this.held, write) -- 0151.vpr@15.3--15.21
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, held:=Mask[this, held] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forperm x$1: Ref [x$1.held] :: level(x$1) < level(to)) -- 0151.vpr@14.3--14.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm x$1: Ref [x$1.held] :: level(x$1) < level(to))
      if (*) {
        if (HasDirectPerm(Mask, x$1_2, held)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x$1.held (0151.vpr@14.10--14.18) [222405]"}
            HasDirectPerm(ExhaleWellDef0Mask, x$1_2, held);
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm x$1: Ref [x$1.held] :: level(x$1) < level(to)) might not hold. (0151.vpr@14.10--14.18) [222406]"}
      (forall x$1_1_1: Ref ::
      { Mask[x$1_1_1, held] } { Heap[x$1_1_1, held] }
      HasDirectPerm(Mask, x$1_1_1, held) ==> level(Heap, x$1_1_1) < level(Heap, to)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(to.held, write) -- 0151.vpr@15.3--15.21
    perm := FullPerm;
    assume to != null;
    Mask := Mask[to, held:=Mask[to, held] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}