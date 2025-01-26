// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/adt.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/adt-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: f
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
// Translation of domain list
// ==================================================

// The type for domain list
type listDomainType;

// Translation of domain function Nil
function  Nil(): listDomainType;

// Translation of domain function Cons
function  Cons(head: int, tail: listDomainType): listDomainType;

// Translation of domain function head_Cons
function  head_Cons(xs_1: listDomainType): int;

// Translation of domain function tail_Cons
function  tail_Cons(xs_1: listDomainType): listDomainType;

// Translation of domain function type
function  vtype(xs_1: listDomainType): int;

// Translation of domain unique function type_Nil
const unique type_Nil: int;

// Translation of domain unique function type_Cons
const unique type_Cons: int;

// Translation of domain function is_Nil
function  is_Nil(xs_1: listDomainType): bool;

// Translation of domain function is_Cons
function  is_Cons(xs_1: listDomainType): bool;

// Translation of domain function size
function  size(xs_1: listDomainType): int;

// Translation of domain axiom eitherConsorNil
axiom (forall xs: listDomainType ::
  { (is_Nil(xs): bool) } { (is_Cons(xs): bool) }
  (is_Nil(xs): bool) == !(is_Cons(xs): bool)
);

// Translation of domain axiom numberOfElem
axiom (forall xs: listDomainType ::
  { (is_Nil(xs): bool) } { (size(xs): int) } { (is_Cons(xs): bool) } { (size((tail_Cons(xs): listDomainType)): int) }
  (is_Nil(xs): bool) == ((size(xs): int) == 0) && ((is_Cons(xs): bool) == ((size(xs): int) > 0) && ((is_Cons(xs): bool) == ((size(xs): int) > (size((tail_Cons(xs): listDomainType)): int)) && (is_Cons(xs): bool) == ((size(xs): int) == 1 + (size((tail_Cons(xs): listDomainType)): int))))
);

// Translation of domain axiom destruct_over_construct_Cons
axiom (forall head_1: int, tail_1: listDomainType ::
  { (Cons(head_1, tail_1): listDomainType) }
  (head_Cons((Cons(head_1, tail_1): listDomainType)): int) == head_1 && (tail_Cons((Cons(head_1, tail_1): listDomainType)): listDomainType) == tail_1
);

// Translation of domain axiom construct_over_destruct_Cons
axiom (forall xs: listDomainType ::
  { (head_Cons(xs): int) } { (tail_Cons(xs): listDomainType) }
  (is_Cons(xs): bool) ==> xs == (Cons((head_Cons(xs): int), (tail_Cons(xs): listDomainType)): listDomainType)
);

// Translation of domain axiom type_of_Nil
axiom (vtype((Nil(): listDomainType)): int) == type_Nil;

// Translation of domain axiom type_of_Cons
axiom (forall head_1: int, tail_1: listDomainType ::
  { (vtype((Cons(head_1, tail_1): listDomainType)): int) }
  (vtype((Cons(head_1, tail_1): listDomainType)): int) == type_Cons
);

// Translation of domain axiom type_existence
axiom (forall xs: listDomainType ::
  { (vtype(xs): int) }
  (vtype(xs): int) == type_Nil || (vtype(xs): int) == type_Cons
);

// Translation of domain axiom type_is_Nil
axiom (forall xs: listDomainType ::
  { (vtype(xs): int) } { (is_Nil(xs): bool) }
  ((vtype(xs): int) == type_Nil) == (is_Nil(xs): bool)
);

// Translation of domain axiom type_IsElem
axiom (forall xs: listDomainType ::
  { (vtype(xs): int) } { (is_Cons(xs): bool) }
  ((vtype(xs): int) == type_Cons) == (is_Cons(xs): bool)
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
// Translation of function f
// ==================================================

// Uninterpreted function definitions
function  f_6(Heap: HeapType, xs: listDomainType): int;
function  f'(Heap: HeapType, xs: listDomainType): int;
axiom (forall Heap: HeapType, xs: listDomainType ::
  { f_6(Heap, xs) }
  f_6(Heap, xs) == f'(Heap, xs) && dummyFunction(f#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: listDomainType ::
  { f'(Heap, xs) }
  dummyFunction(f#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: listDomainType ::
  { state(Heap, Mask), f_6(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (size(xs): int) >= 0 ==> f_6(Heap, xs) == (if (size(xs): int) > 0 then f'(Heap, (tail_Cons(xs): listDomainType)) else 6)
);

// Framing axioms
function  f#frame(frame: FrameType, xs: listDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: listDomainType ::
  { state(Heap, Mask), f'(Heap, xs) }
  state(Heap, Mask) ==> f'(Heap, xs) == f#frame(EmptyFrame, xs)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, xs: listDomainType): bool;

// State-independent trigger function
function  f#triggerStateless(xs: listDomainType): int;

// Check contract well-formedness and postcondition
procedure f#definedness(xs: listDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume (size(xs): int) >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (size(xs) > 0 ? f(tail_Cons(xs)) : 6)
      if ((size(xs): int) > 0) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function f might not hold. Assertion size(tail_Cons(xs)) >= 0 might not hold. (adt.vpr@83.20--83.36) [18069]"}
            (size((tail_Cons(xs): listDomainType)): int) >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f#trigger(EmptyFrame, (tail_Cons(xs): listDomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (size(xs): int) > 0 then f_6(Heap, (tail_Cons(xs): listDomainType)) else 6);
}

// ==================================================
// Translation of method f_termination_proof
// ==================================================

procedure f_termination_proof(xs: listDomainType) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (size(xs): int) >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (size(xs) > 0) -- <no position>
    if ((size(xs): int) > 0) {
      
      // -- Translating statement: assert (decreasing(size(tail_Cons(xs)), old(size(xs))): Bool) &&
  //   (bounded(old(size(xs))): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion (decreasing(size(tail_Cons(xs)), old(size(xs))): Bool) might not hold. (<no position>) [18070]"}
          (decreasing((size((tail_Cons(xs): listDomainType)): int), (size(xs): int)): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(size(xs))): Bool) might not hold. (<no position>) [18071]"}
          (bounded((size(xs): int)): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}