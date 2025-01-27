// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial007.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial007-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_17: Ref, f_25: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_17, f_25] }
  Heap[o_17, $allocated] ==> Heap[Heap[o_17, f_25], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref, f_65: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, f_65] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_47, f_65) ==> Heap[o_47, f_65] == ExhaleHeap[o_47, f_65]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_34, f_65] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_65] ==> Heap[o2_34, f_65] == ExhaleHeap[o2_34, f_65]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_34, f_65] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_65] ==> Heap[o2_34, f_65] == ExhaleHeap[o2_34, f_65]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_47, $allocated] ==> ExhaleHeap[o_47, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_17: Ref, f_19: (Field A B), v: B ::
  { Heap[o_17, f_19:=v] }
  succHeap(Heap, Heap[o_17, f_19:=v])
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
// - height 2: length
// - height 1: itemAt
// - height 0: ascending
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

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, xs: Ref): int;
function  length'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { length_1(Heap, xs) }
  length_1(Heap, xs) == length'(Heap, xs) && dummyFunction(length#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { length'(Heap, xs) }
  dummyFunction(length#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), length_1(Heap, xs) } { state(Heap, Mask), length#triggerStateless(xs), SortedList#trigger(Heap, SortedList(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> length_1(Heap, xs) == 1 + (if Heap[xs, next] == null then 0 else length'(Heap, Heap[xs, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), length'(Heap, xs) } { state(Heap, Mask), length#triggerStateless(xs), SortedList#trigger(Heap, SortedList(xs)) }
  state(Heap, Mask) ==> length'(Heap, xs) == length#frame(Heap[null, SortedList(xs)], xs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), length'(Heap, xs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || length#trigger(Heap[null, SortedList(xs)], xs)) ==> length'(Heap, xs) > 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(xs: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, SortedList(xs):=Mask[null, SortedList(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (unfolding acc(SortedList(xs), write) in (xs.next == null ? 0 : length(xs.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume SortedList#trigger(UnfoldingHeap, SortedList(xs));
      assume UnfoldingHeap[null, SortedList(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[xs, next] != null then EmptyFrame else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@7.1--10.79) [64175]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, SortedList(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next]):=UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SortedList(xs), UnfoldingHeap[null, SortedList(xs)], SortedList(UnfoldingHeap[xs, next]), UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[xs, next] != null) {
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, val] <= itemAt(UnfoldingHeap, UnfoldingHeap[xs, next], 0);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume ascending(UnfoldingHeap, UnfoldingHeap[xs, next]);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@7.1--10.79) [64176]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@7.1--10.79) [64177]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access SortedList(xs.next) (unofficial007.vpr@10.62--10.77) [64178]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, val:=true]];
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, SortedList#sm(xs)][o_5, f_11] || Heap[null, SortedList#sm(Heap[xs, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, SortedList#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, val:=true]];
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, SortedList#sm(xs)][o_6, f_12] || Heap[null, SortedList#sm(Heap[xs, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, SortedList#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1 + (if Heap[xs, next] == null then 0 else length_1(Heap, Heap[xs, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (unofficial007.vpr@9.10--9.20) [64179]"}
      Result > 0;
}

// ==================================================
// Translation of function itemAt
// ==================================================

// Uninterpreted function definitions
function  itemAt(Heap: HeapType, xs: Ref, i: int): int;
function  itemAt'(Heap: HeapType, xs: Ref, i: int): int;
axiom (forall Heap: HeapType, xs: Ref, i: int ::
  { itemAt(Heap, xs, i) }
  itemAt(Heap, xs, i) == itemAt'(Heap, xs, i) && dummyFunction(itemAt#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: Ref, i: int ::
  { itemAt'(Heap, xs, i) }
  dummyFunction(itemAt#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, i: int ::
  { state(Heap, Mask), itemAt(Heap, xs, i) } { state(Heap, Mask), itemAt#triggerStateless(xs, i), SortedList#trigger(Heap, SortedList(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> 0 <= i && i < length_1(Heap, xs) ==> itemAt(Heap, xs, i) == (if i == 0 then Heap[xs, val] else itemAt'(Heap, Heap[xs, next], i - 1))
);

// Framing axioms
function  itemAt#frame(frame: FrameType, xs: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, i: int ::
  { state(Heap, Mask), itemAt'(Heap, xs, i) } { state(Heap, Mask), itemAt#triggerStateless(xs, i), SortedList#trigger(Heap, SortedList(xs)) }
  state(Heap, Mask) ==> itemAt'(Heap, xs, i) == itemAt#frame(Heap[null, SortedList(xs)], xs, i)
);

// Trigger function (controlling recursive postconditions)
function  itemAt#trigger(frame: FrameType, xs: Ref, i: int): bool;

// State-independent trigger function
function  itemAt#triggerStateless(xs: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure itemAt#definedness(xs: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, SortedList(xs):=Mask[null, SortedList(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    assume state(Heap, Mask);
    
    // -- Check definedness of i < length(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@14.25--14.35) [64180]"}
          NoPerm < perm ==> NoPerm < Mask[null, SortedList(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < length_1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(SortedList(xs), write) in (i == 0 ? xs.val : itemAt(xs.next, i - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume SortedList#trigger(UnfoldingHeap, SortedList(xs));
      assume UnfoldingHeap[null, SortedList(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[xs, next] != null then EmptyFrame else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@12.1--15.76) [64181]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, SortedList(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next]):=UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SortedList(xs), UnfoldingHeap[null, SortedList(xs)], SortedList(UnfoldingHeap[xs, next]), UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[xs, next] != null) {
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, val] <= itemAt(UnfoldingHeap, UnfoldingHeap[xs, next], 0);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume ascending(UnfoldingHeap, UnfoldingHeap[xs, next]);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (i == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (unofficial007.vpr@12.1--15.76) [64182]"}
          HasDirectPerm(UnfoldingMask, xs, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@12.1--15.76) [64183]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access SortedList(xs.next) (unofficial007.vpr@15.54--15.74) [64184]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i - 1 might not hold. (unofficial007.vpr@15.54--15.74) [64185]"}
            0 <= i - 1;
          assert {:msg "  Precondition of function itemAt might not hold. Assertion i - 1 < length(xs.next) might not hold. (unofficial007.vpr@15.54--15.74) [64186]"}
            i - 1 < length_1(UnfoldingHeap, UnfoldingHeap[xs, next]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume itemAt#trigger(UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next], i - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, val:=true]];
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Heap[null, SortedList#sm(xs)][o_40, f_52] || Heap[null, SortedList#sm(Heap[xs, next])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          Heap := Heap[null, SortedList#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 then Heap[xs, val] else itemAt(Heap, Heap[xs, next], i - 1));
}

// ==================================================
// Translation of function ascending
// ==================================================

// Uninterpreted function definitions
function  ascending(Heap: HeapType, xs: Ref): bool;
function  ascending'(Heap: HeapType, xs: Ref): bool;
axiom (forall Heap: HeapType, xs: Ref ::
  { ascending(Heap, xs) }
  ascending(Heap, xs) == ascending'(Heap, xs) && dummyFunction(ascending#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { ascending'(Heap, xs) }
  dummyFunction(ascending#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), ascending(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> ascending(Heap, xs) == (forall i: int, j: int ::
    { itemAt#frame(Heap[null, SortedList(xs)], xs, i), itemAt#frame(Heap[null, SortedList(xs)], xs, j) }
    0 <= i && (i < j && j < length_1(Heap, xs)) ==> itemAt(Heap, xs, i) <= itemAt(Heap, xs, j)
  )
);

// Framing axioms
function  ascending#frame(frame: FrameType, xs: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), ascending'(Heap, xs) }
  state(Heap, Mask) ==> ascending'(Heap, xs) == ascending#frame(Heap[null, SortedList(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  ascending#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  ascending#triggerStateless(xs: Ref): bool;

// Check contract well-formedness and postcondition
procedure ascending#definedness(xs: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var i_7: int;
  var j_4: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, SortedList(xs):=Mask[null, SortedList(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall i: Int, j: Int :: { itemAt(xs, i), itemAt(xs, j) } 0 <= i && (i < j && j < length(xs)) ==> itemAt(xs, i) <= itemAt(xs, j))
      if (*) {
        if (0 <= i_7) {
          if (i_7 < j_4) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@19.82--19.92) [64187]"}
                NoPerm < perm ==> NoPerm < Mask[null, SortedList(xs)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= i_7 && (i_7 < j_4 && j_4 < length_1(Heap, xs))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@19.97--19.110) [64188]"}
              NoPerm < perm ==> NoPerm < Mask[null, SortedList(xs)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (unofficial007.vpr@19.97--19.110) [64189]"}
              0 <= i_7;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(xs) might not hold. (unofficial007.vpr@19.97--19.110) [64190]"}
              i_7 < length_1(Heap, xs);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@19.114--19.127) [64191]"}
              NoPerm < perm ==> NoPerm < Mask[null, SortedList(xs)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j might not hold. (unofficial007.vpr@19.114--19.127) [64192]"}
              0 <= j_4;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion j < length(xs) might not hold. (unofficial007.vpr@19.114--19.127) [64193]"}
              j_4 < length_1(Heap, xs);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall i_2: int, j_2_2: int ::
      { itemAt#frame(Heap[null, SortedList(xs)], xs, i_2), itemAt#frame(Heap[null, SortedList(xs)], xs, j_2_2) }
      0 <= i_2 && (i_2 < j_2_2 && j_2_2 < length_1(Heap, xs)) ==> itemAt(Heap, xs, i_2) <= itemAt(Heap, xs, j_2_2)
    );
}

// ==================================================
// Translation of predicate SortedList
// ==================================================

type PredicateType_SortedList;
function  SortedList(xs: Ref): Field PredicateType_SortedList FrameType;
function  SortedList#sm(xs: Ref): Field PredicateType_SortedList PMaskType;
axiom (forall xs: Ref ::
  { PredicateMaskField(SortedList(xs)) }
  PredicateMaskField(SortedList(xs)) == SortedList#sm(xs)
);
axiom (forall xs: Ref ::
  { SortedList(xs) }
  IsPredicateField(SortedList(xs))
);
axiom (forall xs: Ref ::
  { SortedList(xs) }
  getPredWandId(SortedList(xs)) == 0
);
function  SortedList#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SortedList#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: Ref, xs2: Ref ::
  { SortedList(xs), SortedList(xs2) }
  SortedList(xs) == SortedList(xs2) ==> xs == xs2
);
axiom (forall xs: Ref, xs2: Ref ::
  { SortedList#sm(xs), SortedList#sm(xs2) }
  SortedList#sm(xs) == SortedList#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: Ref ::
  { SortedList#trigger(Heap, SortedList(xs)) }
  SortedList#everUsed(SortedList(xs))
);

procedure SortedList#definedness(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of SortedList
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[xs, $allocated];
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@21.1--25.2) [64194]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(SortedList(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@21.1--25.2) [64195]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, SortedList(Heap[xs, next]):=Mask[null, SortedList(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@21.1--25.2) [64196]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      assume state(Heap, Mask);
      
      // -- Check definedness of xs.val <= itemAt(xs.next, 0)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.val (unofficial007.vpr@21.1--25.2) [64197]"}
          HasDirectPerm(Mask, xs, val);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@21.1--25.2) [64198]"}
          HasDirectPerm(Mask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access SortedList(xs.next) (unofficial007.vpr@24.36--24.54) [64199]"}
            NoPerm < perm ==> NoPerm < Mask[null, SortedList(Heap[xs, next])];
          assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 < length(xs.next) might not hold. (unofficial007.vpr@24.36--24.54) [64200]"}
            0 < length_1(Heap, Heap[xs, next]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume Heap[xs, val] <= itemAt(Heap, Heap[xs, next], 0);
      assume state(Heap, Mask);
      
      // -- Check definedness of ascending(xs.next)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (unofficial007.vpr@21.1--25.2) [64201]"}
          HasDirectPerm(Mask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access SortedList(xs.next) (unofficial007.vpr@24.58--24.76) [64202]"}
            NoPerm < perm ==> NoPerm < Mask[null, SortedList(Heap[xs, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume ascending(Heap, Heap[xs, next]);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(xs: Ref, e_1: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, SortedList(xs):=Mask[null, SortedList(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(SortedList(xs), write) in true) -- unofficial007.vpr@30.2--30.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(SortedList(xs), write) in true)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume SortedList#trigger(UnfoldingHeap, SortedList(xs));
      assume UnfoldingHeap[null, SortedList(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[xs, next] != null then EmptyFrame else EmptyFrame)))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@30.9--30.46) [64203]"}
          perm <= UnfoldingMask[null, SortedList(xs)];
      }
      UnfoldingMask := UnfoldingMask[null, SortedList(xs):=UnfoldingMask[null, SortedList(xs)] - perm];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next]):=UnfoldingMask[null, SortedList(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SortedList(xs), UnfoldingHeap[null, SortedList(xs)], SortedList(UnfoldingHeap[xs, next]), UnfoldingHeap[null, SortedList(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[xs, next] != null) {
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, val] <= itemAt(UnfoldingHeap, UnfoldingHeap[xs, next], 0);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume ascending(UnfoldingHeap, UnfoldingHeap[xs, next]);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, val:=true]];
        Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_65: Ref, f_74: (Field A B) ::
            { newPMask[o_65, f_74] }
            Heap[null, SortedList#sm(xs)][o_65, f_74] || Heap[null, SortedList#sm(Heap[xs, next])][o_65, f_74] ==> newPMask[o_65, f_74]
          );
          Heap := Heap[null, SortedList#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, val:=true]];
      Heap := Heap[null, SortedList#sm(xs):=Heap[null, SortedList#sm(xs)][xs, next:=true]];
      if (Heap[xs, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_74: Ref, f_83: (Field A B) ::
          { newPMask[o_74, f_83] }
          Heap[null, SortedList#sm(xs)][o_74, f_83] || Heap[null, SortedList#sm(Heap[xs, next])][o_74, f_83] ==> newPMask[o_74, f_83]
        );
        Heap := Heap[null, SortedList#sm(xs):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert ascending(xs) -- unofficial007.vpr@31.2--31.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of ascending(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access SortedList(xs) (unofficial007.vpr@31.9--31.22) [64205]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, SortedList(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion ascending(xs) might not hold. (unofficial007.vpr@31.9--31.22) [64206]"}
      ascending(Heap, xs);
    assume state(Heap, Mask);
}