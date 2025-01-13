// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:25:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0753.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0753-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Function heights (higher height means its body is available earlier):
// - height 0: len
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
// Translation of domain Val
// ==================================================

// The type for domain Val
type ValDomainType;

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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType V;

// Translation of domain function Nil
function  Nil<V>(): ListDomainType V;

// Translation of domain function Cons
function  Cons<V>(value_2: V, tail: (ListDomainType V)): ListDomainType V;

// Translation of domain function get_List_value
function  get_List_value<V>(t_9: (ListDomainType V)): V;

// Translation of domain function get_List_tail
function  get_List_tail<V>(t_9: (ListDomainType V)): ListDomainType V;

// Translation of domain function List_tag
function  List_tag<V>(t_9: (ListDomainType V)): int;

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  value_1 == (get_List_value((Cons(value_1, tail_1): ListDomainType V)): V)
);

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  tail_1 == (get_List_tail((Cons(value_1, tail_1): ListDomainType V)): ListDomainType V)
);

// Translation of anonymous domain axiom
axiom (forall <V>  ::
  
  (List_tag((Nil(): ListDomainType V)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  (List_tag((Cons(value_1, tail_1): ListDomainType V)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <V> t_2: (ListDomainType V) ::
  { (List_tag(t_2): int) } { (get_List_value(t_2): V) } { (get_List_tail(t_2): ListDomainType V) }
  ((List_tag(t_2): int) == 1 && t_2 == (Nil(): ListDomainType V)) || ((List_tag(t_2): int) == 0 && (exists v_2: V, l_2: (ListDomainType V) ::
    { (Cons(v_2, l_2): ListDomainType V) }
    t_2 == (Cons(v_2, l_2): ListDomainType V)
  ))
);

// ==================================================
// Translation of domain ListWellFoundedOrder
// ==================================================

// The type for domain ListWellFoundedOrder
type ListWellFoundedOrderDomainType V;

// Translation of anonymous domain axiom
axiom (forall <V>  ::
  
  (bounded((Nil(): ListDomainType V)): bool)
);

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  (bounded((Cons(value_1, tail_1): ListDomainType V)): bool) && (decreasing(tail_1, (Cons(value_1, tail_1): ListDomainType V)): bool)
);

// ==================================================
// Translation of function len
// ==================================================

// Uninterpreted function definitions
function  len_3(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
function  len'(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { len_3(Heap, l_2) }
  len_3(Heap, l_2) == len'(Heap, l_2) && dummyFunction(len#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { len'(Heap, l_2) }
  dummyFunction(len#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len_3(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> len_3(Heap, l_2) == (if (List_tag(l_2): int) == 1 then 0 else 1 + len'(Heap, (get_List_tail(l_2): ListDomainType ValDomainType)))
);

// Framing axioms
function  len#frame(frame: FrameType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len'(Heap, l_2) }
  state(Heap, Mask) ==> len'(Heap, l_2) == len#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || len#trigger(EmptyFrame, l_2)) ==> len'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  len#trigger(frame: FrameType, l_2: (ListDomainType ValDomainType)): bool;

// State-independent trigger function
function  len#triggerStateless(l_2: (ListDomainType ValDomainType)): int;

// Check contract well-formedness and postcondition
procedure len#definedness(l_2: (ListDomainType ValDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((List_tag(l): Int) == 1 ? 0 : 1 + len((get_List_tail(l): List[Val])))
      if ((List_tag(l_2): int) == 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len#trigger(EmptyFrame, (get_List_tail(l_2): ListDomainType ValDomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (List_tag(l_2): int) == 1 then 0 else 1 + len_3(Heap, (get_List_tail(l_2): ListDomainType ValDomainType)));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of len might not hold. Assertion result >= 0 might not hold. (0753.vpr@76.11--76.22) [215600]"}
      Result >= 0;
}

// ==================================================
// Translation of method len_termination_proof
// ==================================================

procedure len_termination_proof(l_2: (ListDomainType ValDomainType)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if ((List_tag(l): Int) == 1) -- 0753.vpr@84.3--87.31
    if ((List_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: assert (decreasing((get_List_tail(l): List[Val]), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- 0753.vpr@86.5--87.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((get_List_tail(l): List[Val]), old(l)): Bool) might not hold. (0753.vpr@86.12--87.30) [215601]"}
          (decreasing((get_List_tail(l_2): ListDomainType ValDomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (0753.vpr@86.12--87.30) [215602]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}