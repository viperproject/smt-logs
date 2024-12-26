// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:57:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/encoding-adts.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/encoding-adts-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
// Translation of method test_types
// ==================================================

procedure test_types(x: listDomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: assert is_Nil(x) == !is_Cons(x) -- encoding-adts.vpr@72.3--72.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion is_Nil(x) == !is_Cons(x) might not hold. (encoding-adts.vpr@72.10--72.36) [113110]"}
      (is_Nil(x): bool) == !(is_Cons(x): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_quantifiers
// ==================================================

procedure test_quantifiers() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var xs_1_2: listDomainType;
  var head_1_1: int;
  var tail_1_1: listDomainType;
  var head1_1: int;
  var tail1_1: listDomainType;
  var head2_1: int;
  var tail2_1: listDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall head: Int, tail: list, xs: list ::
  //     { is_Cons(xs), Cons(head, tail) }
  //     { head_Cons(xs), Cons(head, tail) }
  //     { tail_Cons(xs), Cons(head, tail) }
  //     is_Cons(xs) ==>
  //     (head == head_Cons(xs) && tail == tail_Cons(xs)) ==
  //     (Cons(head, tail) == xs)) -- encoding-adts.vpr@78.5--79.99
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall head: Int, tail: list, xs: list :: { is_Cons(xs), Cons(head, tail) } { head_Cons(xs), Cons(head, tail) } { tail_Cons(xs), Cons(head, tail) } is_Cons(xs) ==> (head == head_Cons(xs) && tail == tail_Cons(xs)) == (Cons(head, tail) == xs))
      if (*) {
        assume false;
      }
    if (*) {
      if ((is_Cons(xs_1_2): bool)) {
        assert {:msg "  Assert might fail. Assertion (head == head_Cons(xs) && tail == tail_Cons(xs)) == (Cons(head, tail) == xs) might not hold. (encoding-adts.vpr@78.12--79.99) [113111]"}
          (head_1_1 == (head_Cons(xs_1_2): int) && tail_1_1 == (tail_Cons(xs_1_2): listDomainType)) == ((Cons(head_1_1, tail_1_1): listDomainType) == xs_1_2);
      }
      assume false;
    }
    assume (forall head_2_1: int, tail_2_1: listDomainType, xs_2_1: listDomainType ::
      { (is_Cons(xs_2_1): bool), (Cons(head_2_1, tail_2_1): listDomainType) } { (head_Cons(xs_2_1): int), (Cons(head_2_1, tail_2_1): listDomainType) } { (tail_Cons(xs_2_1): listDomainType), (Cons(head_2_1, tail_2_1): listDomainType) }
      (is_Cons(xs_2_1): bool) ==> (head_2_1 == (head_Cons(xs_2_1): int) && tail_2_1 == (tail_Cons(xs_2_1): listDomainType)) == ((Cons(head_2_1, tail_2_1): listDomainType) == xs_2_1)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall head1: Int, head2: Int, tail1: list, tail2: list ::
  //     { Cons(head1, tail1), Cons(head2, tail2) }
  //     (Cons(head1, tail1) == Cons(head2, tail2)) ==
  //     (head1 == head2 && tail1 == tail2)) -- encoding-adts.vpr@82.5--83.85
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall head1: Int, head2: Int, tail1: list, tail2: list :: { Cons(head1, tail1), Cons(head2, tail2) } (Cons(head1, tail1) == Cons(head2, tail2)) == (head1 == head2 && tail1 == tail2))
      if (*) {
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion (Cons(head1, tail1) == Cons(head2, tail2)) == (head1 == head2 && tail1 == tail2) might not hold. (encoding-adts.vpr@82.12--83.85) [113112]"}
        ((Cons(head1_1, tail1_1): listDomainType) == (Cons(head2_1, tail2_1): listDomainType)) == (head1_1 == head2_1 && tail1_1 == tail2_1);
      assume false;
    }
    assume (forall head1_2_1: int, head2_2_1: int, tail1_2_1: listDomainType, tail2_2_1: listDomainType ::
      { (Cons(head1_2_1, tail1_2_1): listDomainType), (Cons(head2_2_1, tail2_2_1): listDomainType) }
      ((Cons(head1_2_1, tail1_2_1): listDomainType) == (Cons(head2_2_1, tail2_2_1): listDomainType)) == (head1_2_1 == head2_2_1 && tail1_2_1 == tail2_2_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pattern_match_exhaustiveness_test
// ==================================================

procedure pattern_match_exhaustiveness_test(xs: listDomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ys: listDomainType;
  var ys_1: listDomainType;
  var y: int;
  var ys_3: listDomainType;
  var y_1: int;
  var ys_4: listDomainType;
  var ys_7: listDomainType;
  var y_3_2: int;
  var ys_8: listDomainType;
  var ys_9: listDomainType;
  var ys_10: listDomainType;
  var y_4_1: int;
  var ys_12: listDomainType;
  var z: int;
  var y_5_2: int;
  var ys_13: listDomainType;
  var z_1: int;
  var ys_16: listDomainType;
  var y_7_2: int;
  var ys_17: listDomainType;
  var z_3: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert !is_Nil(xs) &&
  //   (!(is_Cons(xs) && (let ys == (tail_Cons(xs)) in is_Nil(ys))) &&
  //   !(is_Cons(xs) &&
  //   (let y ==
  //     (head_Cons(xs)) in
  //     (let ys ==
  //       (tail_Cons(xs)) in
  //       is_Cons(ys))))) ==>
  //   false -- encoding-adts.vpr@101.4--105.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of !is_Nil(xs) && (!(is_Cons(xs) && (let ys == (tail_Cons(xs)) in is_Nil(ys))) && !(is_Cons(xs) && (let y == (head_Cons(xs)) in (let ys == (tail_Cons(xs)) in is_Cons(ys)))))
      if (!(is_Nil(xs): bool)) {
        if ((is_Cons(xs): bool)) {
          ys := (tail_Cons(xs): listDomainType);
        }
        
        // -- Free assumptions (exp module)
          ys_1 := (tail_Cons(xs): listDomainType);
        if (!((is_Cons(xs): bool) && (is_Nil((tail_Cons(xs): listDomainType)): bool))) {
          if ((is_Cons(xs): bool)) {
            y := (head_Cons(xs): int);
            ys_3 := (tail_Cons(xs): listDomainType);
          }
          
          // -- Free assumptions (exp module)
            y_1 := (head_Cons(xs): int);
            ys_4 := (tail_Cons(xs): listDomainType);
        }
      }
    if (!(is_Nil(xs): bool) && (!((is_Cons(xs): bool) && (is_Nil((tail_Cons(xs): listDomainType)): bool)) && !((is_Cons(xs): bool) && (is_Cons((tail_Cons(xs): listDomainType)): bool)))) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (encoding-adts.vpr@101.14--105.16) [113113]"}
        false;
    }
    
    // -- Free assumptions (exhale module)
      ys_7 := (tail_Cons(xs): listDomainType);
      y_3_2 := (head_Cons(xs): int);
      ys_8 := (tail_Cons(xs): listDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !is_Nil(xs) &&
  //   (!(is_Cons(xs) && (let ys == (tail_Cons(xs)) in is_Nil(ys))) &&
  //   !(is_Cons(xs) &&
  //   (let y ==
  //     (head_Cons(xs)) in
  //     (let ys ==
  //       (tail_Cons(xs)) in
  //       is_Cons(ys) && (let z == (head_Cons(ys)) in y < z))))) ==>
  //   false -- encoding-adts.vpr@114.4--119.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of !is_Nil(xs) && (!(is_Cons(xs) && (let ys == (tail_Cons(xs)) in is_Nil(ys))) && !(is_Cons(xs) && (let y == (head_Cons(xs)) in (let ys == (tail_Cons(xs)) in is_Cons(ys) && (let z == (head_Cons(ys)) in y < z)))))
      if (!(is_Nil(xs): bool)) {
        if ((is_Cons(xs): bool)) {
          ys_9 := (tail_Cons(xs): listDomainType);
        }
        
        // -- Free assumptions (exp module)
          ys_10 := (tail_Cons(xs): listDomainType);
        if (!((is_Cons(xs): bool) && (is_Nil((tail_Cons(xs): listDomainType)): bool))) {
          if ((is_Cons(xs): bool)) {
            y_4_1 := (head_Cons(xs): int);
            ys_12 := (tail_Cons(xs): listDomainType);
            if ((is_Cons(ys_12): bool)) {
              z := (head_Cons(ys_12): int);
            }
          }
          
          // -- Free assumptions (exp module)
            y_5_2 := (head_Cons(xs): int);
            ys_13 := (tail_Cons(xs): listDomainType);
            z_1 := (head_Cons(ys_13): int);
        }
      }
    if (!(is_Nil(xs): bool) && (!((is_Cons(xs): bool) && (is_Nil((tail_Cons(xs): listDomainType)): bool)) && !((is_Cons(xs): bool) && ((is_Cons((tail_Cons(xs): listDomainType)): bool) && (head_Cons(xs): int) < (head_Cons((tail_Cons(xs): listDomainType)): int))))) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (encoding-adts.vpr@114.14--119.16) [113114]"}
        false;
    }
    
    // -- Free assumptions (exhale module)
      ys_16 := (tail_Cons(xs): listDomainType);
      y_7_2 := (head_Cons(xs): int);
      ys_17 := (tail_Cons(xs): listDomainType);
      z_3 := (head_Cons(ys_17): int);
    assume state(Heap, Mask);
}