// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:29:20
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0331.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0331-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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
// - height 1: integer
// - height 0: integer2
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

const unique nx: Field NormalField Ref;
axiom !IsPredicateField(nx);
axiom !IsWandField(nx);

// ==================================================
// Translation of function integer
// ==================================================

// Uninterpreted function definitions
function  integer(Heap: HeapType, r_1: Ref): int;
function  integer'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { integer(Heap, r_1) }
  integer(Heap, r_1) == integer'(Heap, r_1) && dummyFunction(integer#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { integer'(Heap, r_1) }
  dummyFunction(integer#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), integer(Heap, r_1) } { state(Heap, Mask), integer#triggerStateless(r_1), Peano#trigger(Heap, Peano(r_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> integer(Heap, r_1) == (if r_1 == null then 0 else 1 + integer'(Heap, Heap[r_1, nx]))
);

// Framing axioms
function  integer#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), integer'(Heap, r_1) } { state(Heap, Mask), integer#triggerStateless(r_1), Peano#trigger(Heap, Peano(r_1)) }
  state(Heap, Mask) ==> integer'(Heap, r_1) == integer#frame(Heap[null, Peano(r_1)], r_1)
);

// Trigger function (controlling recursive postconditions)
function  integer#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  integer#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure integer#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Peano(r_1):=Mask[null, Peano(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Peano(r), write) in (r == null ? 0 : 1 + integer(r.nx)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Peano#trigger(UnfoldingHeap, Peano(r_1));
      assume UnfoldingHeap[null, Peano(r_1)] == FrameFragment((if r_1 != null then CombineFrames(FrameFragment(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Peano(r) (0331.vpr@8.1--10.60) [217099]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Peano(r_1)];
      if (r_1 != null) {
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, nx:=UnfoldingMask[r_1, nx] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx]):=UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Peano(r_1), UnfoldingHeap[null, Peano(r_1)], Peano(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (r_1 == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.nx (0331.vpr@8.1--10.60) [217100]"}
          HasDirectPerm(UnfoldingMask, r_1, nx);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function integer might not hold. There might be insufficient permission to access Peano(r.nx) (0331.vpr@10.45--10.58) [217101]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume integer#trigger(UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])], UnfoldingHeap[r_1, nx]);
        }
      }
      
      // -- Free assumptions (exp module)
        if (r_1 != null) {
          Heap := Heap[null, Peano#sm(r_1):=Heap[null, Peano#sm(r_1)][r_1, nx:=true]];
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Peano#sm(r_1)][o_15, f_20] || Heap[null, Peano#sm(Heap[r_1, nx])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Peano#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if r_1 == null then 0 else 1 + integer(Heap, Heap[r_1, nx]));
}

// ==================================================
// Translation of function integer2
// ==================================================

// Uninterpreted function definitions
function  integer2(Heap: HeapType, r_1: Ref, k: int): int;
function  integer2'(Heap: HeapType, r_1: Ref, k: int): int;
axiom (forall Heap: HeapType, r_1: Ref, k: int ::
  { integer2(Heap, r_1, k) }
  integer2(Heap, r_1, k) == integer2'(Heap, r_1, k) && dummyFunction(integer2#triggerStateless(r_1, k))
);
axiom (forall Heap: HeapType, r_1: Ref, k: int ::
  { integer2'(Heap, r_1, k) }
  dummyFunction(integer2#triggerStateless(r_1, k))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, k: int ::
  { state(Heap, Mask), integer2(Heap, r_1, k) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> integer2(Heap, r_1, k) == integer(Heap, r_1) + k
);

// Framing axioms
function  integer2#frame(frame: FrameType, r_1: Ref, k: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, k: int ::
  { state(Heap, Mask), integer2'(Heap, r_1, k) }
  state(Heap, Mask) ==> integer2'(Heap, r_1, k) == integer2#frame(Heap[null, Peano(r_1)], r_1, k)
);

// Trigger function (controlling recursive postconditions)
function  integer2#trigger(frame: FrameType, r_1: Ref, k: int): bool;

// State-independent trigger function
function  integer2#triggerStateless(r_1: Ref, k: int): int;

// Check contract well-formedness and postcondition
procedure integer2#definedness(r_1: Ref, k: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Peano(r_1):=Mask[null, Peano(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of integer(r) + k
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function integer might not hold. There might be insufficient permission to access Peano(r) (0331.vpr@14.3--14.13) [217102]"}
          NoPerm < perm ==> NoPerm < Mask[null, Peano(r_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := integer(Heap, r_1) + k;
}

// ==================================================
// Translation of predicate Peano
// ==================================================

type PredicateType_Peano;
function  Peano(r_1: Ref): Field PredicateType_Peano FrameType;
function  Peano#sm(r_1: Ref): Field PredicateType_Peano PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(Peano(r_1)) }
  PredicateMaskField(Peano(r_1)) == Peano#sm(r_1)
);
axiom (forall r_1: Ref ::
  { Peano(r_1) }
  IsPredicateField(Peano(r_1))
);
axiom (forall r_1: Ref ::
  { Peano(r_1) }
  getPredWandId(Peano(r_1)) == 0
);
function  Peano#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Peano#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { Peano(r_1), Peano(r2) }
  Peano(r_1) == Peano(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { Peano#sm(r_1), Peano#sm(r2) }
  Peano#sm(r_1) == Peano#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { Peano#trigger(Heap, Peano(r_1)) }
  Peano#everUsed(Peano(r_1))
);

procedure Peano#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Peano
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    if (r_1 != null) {
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, nx:=Mask[r_1, nx] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(Peano(r.nx), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.nx (0331.vpr@6.1--6.66) [217103]"}
          HasDirectPerm(Mask, r_1, nx);
      perm := FullPerm;
      Mask := Mask[null, Peano(Heap[r_1, nx]):=Mask[null, Peano(Heap[r_1, nx])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method A
// ==================================================

procedure A_2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var k_15: int;
  var k_1_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Peano(r_1):=Mask[null, Peano(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (unfolding acc(Peano(r), write) in r.nx == r) -- 0331.vpr@20.3--20.41
    
    // -- Check definedness of (unfolding acc(Peano(r), write) in r.nx == r)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Peano#trigger(UnfoldingHeap, Peano(r_1));
      assume UnfoldingHeap[null, Peano(r_1)] == FrameFragment((if r_1 != null then CombineFrames(FrameFragment(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access Peano(r) (0331.vpr@20.10--20.41) [217104]"}
          perm <= UnfoldingMask[null, Peano(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, Peano(r_1):=UnfoldingMask[null, Peano(r_1)] - perm];
      if (r_1 != null) {
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, nx:=UnfoldingMask[r_1, nx] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx]):=UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Peano(r_1), UnfoldingHeap[null, Peano(r_1)], Peano(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r.nx (0331.vpr@20.10--20.41) [217105]"}
        HasDirectPerm(UnfoldingMask, r_1, nx);
      
      // -- Free assumptions (exp module)
        if (r_1 != null) {
          Heap := Heap[null, Peano#sm(r_1):=Heap[null, Peano#sm(r_1)][r_1, nx:=true]];
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Peano#sm(r_1)][o_16, f_21] || Heap[null, Peano#sm(Heap[r_1, nx])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Peano#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Peano#trigger(UnfoldingHeap, Peano(r_1));
      assume UnfoldingHeap[null, Peano(r_1)] == FrameFragment((if r_1 != null then CombineFrames(FrameFragment(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Peano(r_1):=UnfoldingMask[null, Peano(r_1)] - perm];
      if (r_1 != null) {
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, nx:=UnfoldingMask[r_1, nx] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx]):=UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Peano(r_1), UnfoldingHeap[null, Peano(r_1)], Peano(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[r_1, nx] == r_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall k: Int ::
  //     { integer2(r.nx, k) }
  //     (unfolding acc(Peano(r), write) in integer2(r.nx, k) >= 0) ==>
  //     integer2(r, k) > 0) -- 0331.vpr@21.3--23.72
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall k: Int :: { integer2(r.nx, k) } (unfolding acc(Peano(r), write) in integer2(r.nx, k) >= 0) ==> integer2(r, k) > 0)
      if (*) {
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume Peano#trigger(UnfoldingHeap, Peano(r_1));
        assume UnfoldingHeap[null, Peano(r_1)] == FrameFragment((if r_1 != null then CombineFrames(FrameFragment(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Peano(r) (0331.vpr@21.10--23.72) [217106]"}
            perm <= UnfoldingMask[null, Peano(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, Peano(r_1):=UnfoldingMask[null, Peano(r_1)] - perm];
        if (r_1 != null) {
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, nx:=UnfoldingMask[r_1, nx] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx]):=UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Peano(r_1), UnfoldingHeap[null, Peano(r_1)], Peano(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access r.nx (0331.vpr@21.10--23.72) [217107]"}
          HasDirectPerm(UnfoldingMask, r_1, nx);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function integer2 might not hold. There might be insufficient permission to access Peano(r.nx) (0331.vpr@23.28--23.44) [217108]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        
        // -- Free assumptions (exp module)
          if (r_1 != null) {
            Heap := Heap[null, Peano#sm(r_1):=Heap[null, Peano#sm(r_1)][r_1, nx:=true]];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, Peano#sm(r_1)][o_52, f_55] || Heap[null, Peano#sm(Heap[r_1, nx])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, Peano#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        if (integer2(Heap, Heap[r_1, nx], k_15) >= 0) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function integer2 might not hold. There might be insufficient permission to access Peano(r) (0331.vpr@23.55--23.68) [217109]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Peano(r_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (integer2(Heap, Heap[r_1, nx], k_1_1) >= 0) {
        assert {:msg "  Assert might fail. Assertion integer2(r, k) > 0 might not hold. (0331.vpr@21.10--23.72) [217110]"}
          integer2(Heap, r_1, k_1_1) > 0;
      }
      assume false;
    }
    assume (forall k_2_1_1: int ::
      { integer2#frame(Heap[null, Peano(Heap[r_1, nx])], Heap[r_1, nx], k_2_1_1) }
      integer2(Heap, Heap[r_1, nx], k_2_1_1) >= 0 ==> integer2(Heap, r_1, k_2_1_1) > 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method B
// ==================================================

procedure B_3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  var k_18: int;
  var k_1_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Peano(r_1):=Mask[null, Peano(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall k: Int ::
  //     { integer2(r, k) }
  //     (unfolding acc(Peano(r), write) in integer2(r.nx, k) >= 0) ==>
  //     integer2(r, k) > 0) -- 0331.vpr@30.3--32.72
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall k: Int :: { integer2(r, k) } (unfolding acc(Peano(r), write) in integer2(r.nx, k) >= 0) ==> integer2(r, k) > 0)
      if (*) {
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume Peano#trigger(UnfoldingHeap, Peano(r_1));
        assume UnfoldingHeap[null, Peano(r_1)] == FrameFragment((if r_1 != null then CombineFrames(FrameFragment(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Peano(r) (0331.vpr@30.10--32.72) [217111]"}
            perm <= UnfoldingMask[null, Peano(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, Peano(r_1):=UnfoldingMask[null, Peano(r_1)] - perm];
        if (r_1 != null) {
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, nx:=UnfoldingMask[r_1, nx] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx]):=UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Peano(r_1), UnfoldingHeap[null, Peano(r_1)], Peano(UnfoldingHeap[r_1, nx]), UnfoldingHeap[null, Peano(UnfoldingHeap[r_1, nx])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access r.nx (0331.vpr@30.10--32.72) [217112]"}
          HasDirectPerm(UnfoldingMask, r_1, nx);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function integer2 might not hold. There might be insufficient permission to access Peano(r.nx) (0331.vpr@32.28--32.44) [217113]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Peano(UnfoldingHeap[r_1, nx])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        
        // -- Free assumptions (exp module)
          if (r_1 != null) {
            Heap := Heap[null, Peano#sm(r_1):=Heap[null, Peano#sm(r_1)][r_1, nx:=true]];
            havoc newPMask;
            assume (forall <A, B> o_18: Ref, f_22: (Field A B) ::
              { newPMask[o_18, f_22] }
              Heap[null, Peano#sm(r_1)][o_18, f_22] || Heap[null, Peano#sm(Heap[r_1, nx])][o_18, f_22] ==> newPMask[o_18, f_22]
            );
            Heap := Heap[null, Peano#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        if (integer2(Heap, Heap[r_1, nx], k_18) >= 0) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function integer2 might not hold. There might be insufficient permission to access Peano(r) (0331.vpr@32.55--32.68) [217114]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Peano(r_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (integer2(Heap, Heap[r_1, nx], k_1_1) >= 0) {
        assert {:msg "  Assert might fail. Assertion integer2(r, k) > 0 might not hold. (0331.vpr@30.10--32.72) [217115]"}
          integer2(Heap, r_1, k_1_1) > 0;
      }
      assume false;
    }
    assume (forall k_2_1_1: int ::
      { integer2#frame(Heap[null, Peano(r_1)], r_1, k_2_1_1) }
      integer2(Heap, Heap[r_1, nx], k_2_1_1) >= 0 ==> integer2(Heap, r_1, k_2_1_1) > 0
    );
    assume state(Heap, Mask);
}