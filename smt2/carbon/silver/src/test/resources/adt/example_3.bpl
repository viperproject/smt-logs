// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:52:52
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/example_3.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/example_3-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
// - height 1: len
// - height 0: at
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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType;

// Translation of domain function Nil
function  Nil(): ListDomainType;

// Translation of domain function Cons
function  Cons(head: int, tail: ListDomainType): ListDomainType;

// Translation of domain function get_List_head
function  get_List_head(t_9: ListDomainType): int;

// Translation of domain function get_List_tail
function  get_List_tail(t_9: ListDomainType): ListDomainType;

// Translation of domain function List_tag
function  List_tag(t_9: ListDomainType): int;

// Translation of anonymous domain axiom
axiom (forall head_1: int, tail_1: ListDomainType ::
  { (Cons(head_1, tail_1): ListDomainType) }
  head_1 == (get_List_head((Cons(head_1, tail_1): ListDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall head_1: int, tail_1: ListDomainType ::
  { (Cons(head_1, tail_1): ListDomainType) }
  tail_1 == (get_List_tail((Cons(head_1, tail_1): ListDomainType)): ListDomainType)
);

// Translation of anonymous domain axiom
axiom (List_tag((Nil(): ListDomainType)): int) == 1;

// Translation of anonymous domain axiom
axiom (forall head_1: int, tail_1: ListDomainType ::
  { (Cons(head_1, tail_1): ListDomainType) }
  (List_tag((Cons(head_1, tail_1): ListDomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: ListDomainType ::
  { (List_tag(t_2): int) } { (get_List_head(t_2): int) } { (get_List_tail(t_2): ListDomainType) }
  t_2 == (Nil(): ListDomainType) || t_2 == (Cons((get_List_head(t_2): int), (get_List_tail(t_2): ListDomainType)): ListDomainType)
);

// ==================================================
// Translation of function len
// ==================================================

// Uninterpreted function definitions
function  len_3(Heap: HeapType, xs: ListDomainType): int;
function  len'(Heap: HeapType, xs: ListDomainType): int;
axiom (forall Heap: HeapType, xs: ListDomainType ::
  { len_3(Heap, xs) }
  len_3(Heap, xs) == len'(Heap, xs) && dummyFunction(len#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: ListDomainType ::
  { len'(Heap, xs) }
  dummyFunction(len#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: ListDomainType ::
  { state(Heap, Mask), len_3(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> len_3(Heap, xs) == (if (List_tag(xs): int) == 1 then 0 else 1 + len'(Heap, (get_List_tail(xs): ListDomainType)))
);

// Framing axioms
function  len#frame(frame: FrameType, xs: ListDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: ListDomainType ::
  { state(Heap, Mask), len'(Heap, xs) }
  state(Heap, Mask) ==> len'(Heap, xs) == len#frame(EmptyFrame, xs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: ListDomainType ::
  { state(Heap, Mask), len'(Heap, xs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || len#trigger(EmptyFrame, xs)) ==> len'(Heap, xs) >= 0
);

// Trigger function (controlling recursive postconditions)
function  len#trigger(frame: FrameType, xs: ListDomainType): bool;

// State-independent trigger function
function  len#triggerStateless(xs: ListDomainType): int;

// Check contract well-formedness and postcondition
procedure len#definedness(xs: ListDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (List_tag(xs) == 1 ? 0 : 1 + len(get_List_tail(xs)))
      if ((List_tag(xs): int) == 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len#trigger(EmptyFrame, (get_List_tail(xs): ListDomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (List_tag(xs): int) == 1 then 0 else 1 + len_3(Heap, (get_List_tail(xs): ListDomainType)));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of len might not hold. Assertion result >= 0 might not hold. (example_3.vpr@15.13--15.24) [222643]"}
      Result >= 0;
}

// ==================================================
// Translation of function at
// ==================================================

// Uninterpreted function definitions
function  at_1(Heap: HeapType, xs: ListDomainType, pos: int): int;
function  at'(Heap: HeapType, xs: ListDomainType, pos: int): int;
axiom (forall Heap: HeapType, xs: ListDomainType, pos: int ::
  { at_1(Heap, xs, pos) }
  at_1(Heap, xs, pos) == at'(Heap, xs, pos) && dummyFunction(at#triggerStateless(xs, pos))
);
axiom (forall Heap: HeapType, xs: ListDomainType, pos: int ::
  { at'(Heap, xs, pos) }
  dummyFunction(at#triggerStateless(xs, pos))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: ListDomainType, pos: int ::
  { state(Heap, Mask), at_1(Heap, xs, pos) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> at_1(Heap, xs, pos) == (if (List_tag(xs): int) == 1 || pos < 0 then -1 else (if pos == 0 then (get_List_head(xs): int) else at'(Heap, (get_List_tail(xs): ListDomainType), pos - 1)))
);

// Framing axioms
function  at#frame(frame: FrameType, xs: ListDomainType, pos: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: ListDomainType, pos: int ::
  { state(Heap, Mask), at'(Heap, xs, pos) }
  state(Heap, Mask) ==> at'(Heap, xs, pos) == at#frame(EmptyFrame, xs, pos)
);

// Trigger function (controlling recursive postconditions)
function  at#trigger(frame: FrameType, xs: ListDomainType, pos: int): bool;

// State-independent trigger function
function  at#triggerStateless(xs: ListDomainType, pos: int): int;

// Check contract well-formedness and postcondition
procedure at#definedness(xs: ListDomainType, pos: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (List_tag(xs) == 1 || pos < 0 ? -1 : (pos == 0 ? get_List_head(xs) : at(get_List_tail(xs), pos - 1)))
      if ((List_tag(xs): int) == 1 || pos < 0) {
      } else {
        if (pos == 0) {
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume at#trigger(EmptyFrame, (get_List_tail(xs): ListDomainType), pos - 1);
          }
        }
      }
  
  // -- Translate function body
    Result := (if (List_tag(xs): int) == 1 || pos < 0 then -1 else (if pos == 0 then (get_List_head(xs): int) else at_1(Heap, (get_List_tail(xs): ListDomainType), pos - 1)));
}

// ==================================================
// Translation of method prepend
// ==================================================

procedure prepend(xs: ListDomainType, v_2: int) returns (ys: ListDomainType)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume (get_List_head(ys): int) == v_2;
    assume state(PostHeap, PostMask);
    assume (get_List_tail(ys): ListDomainType) == xs;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: ys := Cons(v, xs) -- example_3.vpr@11.5--11.22
    ys := (Cons(v_2, xs): ListDomainType);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of prepend might not hold. Assertion get_List_head(ys) == v might not hold. (example_3.vpr@8.13--8.25) [222644]"}
      (get_List_head(ys): int) == v_2;
    assert {:msg "  Postcondition of prepend might not hold. Assertion get_List_tail(ys) == xs might not hold. (example_3.vpr@9.13--9.26) [222645]"}
      (get_List_tail(ys): ListDomainType) == xs;
}

// ==================================================
// Translation of method linear_search
// ==================================================

procedure linear_search(xs: ListDomainType, key_1: int) returns (pos: int)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_1: int;
  var ys: ListDomainType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_4_1: int;
  var k_6: int;
  var k_2: int;
  var k_4: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_ys: ListDomainType;
  var k_7: int;
  var k_15_1: int;
  var k_17_2: int;
  var k_19_1: int;
  var k_2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume key_1 >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume 0 <= pos;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of pos <= len(xs)
      if (*) {
        // Stop execution
        assume false;
      }
    assume pos <= len_3(PostHeap, xs);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of at(xs, pos) == key || pos == len(xs)
      if (*) {
        // Stop execution
        assume false;
      }
      if (!(at_1(PostHeap, xs, pos) == key_1)) {
        if (*) {
          // Stop execution
          assume false;
        }
      }
    assume at_1(PostHeap, xs, pos) == key_1 || pos == len_3(PostHeap, xs);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of pos == len(xs)
      if (*) {
        // Stop execution
        assume false;
      }
    if (pos == len_3(PostHeap, xs)) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall k: Int :: { at(xs, k) } 0 <= k && k < len(xs) ==> at(xs, k) != key)
        if (*) {
          if (0 <= k_1) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
          if (0 <= k_1 && k_1 < len_3(PostHeap, xs)) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
          assume false;
        }
      assume (forall k_1_1: int ::
        { at#frame(EmptyFrame, xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < len_3(PostHeap, xs) ==> at_1(PostHeap, xs, k_1_1) != key_1
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: pos := 0 -- example_3.vpr@39.5--39.13
    pos := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: ys := xs -- example_3.vpr@41.5--41.13
    ys := xs;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (!(List_tag(ys) == 1) && get_List_head(ys) != key) -- example_3.vpr@43.5--56.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= pos might not hold on entry. Assertion 0 <= pos might not hold. (example_3.vpr@44.19--44.27) [222646]"}
          0 <= pos;
        assert {:msg "  Loop invariant pos + len(ys) == len(xs) might not hold on entry. Assertion pos + len(ys) == len(xs) might not hold. (example_3.vpr@45.19--45.43) [222647]"}
          pos + len_3(Heap, ys) == len_3(Heap, xs);
        if ((List_tag(ys): int) == 1) {
          assert {:msg "  Loop invariant List_tag(ys) == 1 ==> pos == len(xs) might not hold on entry. Assertion pos == len(xs) might not hold. (example_3.vpr@46.19--46.46) [222648]"}
            pos == len_3(Heap, xs);
        }
        if (*) {
          if (0 <= k_4_1) {
            assert {:msg "  Loop invariant (forall k: Int :: { at(ys, k) } 0 <= k ==> at(xs, pos + k) == at(ys, k)) might not hold on entry. Assertion at(xs, pos + k) == at(ys, k) might not hold. (example_3.vpr@47.19--47.72) [222649]"}
              at_1(Heap, xs, pos + k_4_1) == at_1(Heap, ys, k_4_1);
          }
          assume false;
        }
        assume (forall k_5_1_1: int ::
          { at#frame(EmptyFrame, ys, k_5_1_1) }
          0 <= k_5_1_1 ==> at_1(Heap, xs, pos + k_5_1_1) == at_1(Heap, ys, k_5_1_1)
        );
        if (*) {
          if (0 <= k_6 && k_6 < pos) {
            assert {:msg "  Loop invariant (forall k: Int :: { at(xs, k) } 0 <= k && k < pos ==> at(xs, k) != key) might not hold on entry. Assertion at(xs, k) != key might not hold. (example_3.vpr@48.19--48.73) [222650]"}
              at_1(Heap, xs, k_6) != key_1;
          }
          assume false;
        }
        assume (forall k_7_1_1: int ::
          { at#frame(EmptyFrame, xs, k_7_1_1) }
          0 <= k_7_1_1 && k_7_1_1 < pos ==> at_1(Heap, xs, k_7_1_1) != key_1
        );
    
    // -- Havoc loop written variables (except locals)
      havoc pos, ys;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= pos;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of pos + len(ys) == len(xs)
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        assume pos + len_3(Heap, ys) == len_3(Heap, xs);
        assume state(Heap, Mask);
        if ((List_tag(ys): int) == 1) {
          assume state(Heap, Mask);
          
          // -- Check definedness of pos == len(xs)
            if (*) {
              // Stop execution
              assume false;
            }
          assume pos == len_3(Heap, xs);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { at(ys, k) } 0 <= k ==> at(xs, pos + k) == at(ys, k))
          if (*) {
            if (0 <= k_2) {
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
        assume (forall k_9: int ::
          { at#frame(EmptyFrame, ys, k_9) }
          0 <= k_9 ==> at_1(Heap, xs, pos + k_9) == at_1(Heap, ys, k_9)
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { at(xs, k) } 0 <= k && k < pos ==> at(xs, k) != key)
          if (*) {
            if (0 <= k_4 && k_4 < pos) {
              if (*) {
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall k_11: int ::
          { at#frame(EmptyFrame, xs, k_11) }
          0 <= k_11 && k_11 < pos ==> at_1(Heap, xs, k_11) != key_1
        );
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
        assume 0 <= pos;
        assume state(Heap, Mask);
        assume pos + len_3(Heap, ys) == len_3(Heap, xs);
        if ((List_tag(ys): int) == 1) {
          assume state(Heap, Mask);
          assume pos == len_3(Heap, xs);
        }
        assume state(Heap, Mask);
        assume (forall k_12_2: int ::
          { at#frame(EmptyFrame, ys, k_12_2) }
          0 <= k_12_2 ==> at_1(Heap, xs, pos + k_12_2) == at_1(Heap, ys, k_12_2)
        );
        assume state(Heap, Mask);
        assume (forall k_13: int ::
          { at#frame(EmptyFrame, xs, k_13) }
          0 <= k_13 && k_13 < pos ==> at_1(Heap, xs, k_13) != key_1
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume !((List_tag(ys): int) == 1) && (get_List_head(ys): int) != key_1;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: old_ys := ys -- example_3.vpr@51.9--51.21
            old_ys := ys;
            assume state(Heap, Mask);
          
          // -- Translating statement: ys := get_List_tail(ys) -- example_3.vpr@52.9--52.22
            ys := (get_List_tail(ys): ListDomainType);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (forall k: Int ::
  //     { at(ys, k) }
  //     0 <= k ==> at(old_ys, k + 1) == at(ys, k)) -- example_3.vpr@53.9--53.69
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of (forall k: Int :: { at(ys, k) } 0 <= k ==> at(old_ys, k + 1) == at(ys, k))
              if (*) {
                if (0 <= k_7) {
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
            if (*) {
              if (0 <= k_15_1) {
                assert {:msg "  Assert might fail. Assertion at(old_ys, k + 1) == at(ys, k) might not hold. (example_3.vpr@53.16--53.69) [222651]"}
                  at_1(Heap, old_ys, k_15_1 + 1) == at_1(Heap, ys, k_15_1);
              }
              assume false;
            }
            assume (forall k_16_1_1: int ::
              { at#frame(EmptyFrame, ys, k_16_1_1) }
              0 <= k_16_1_1 ==> at_1(Heap, old_ys, k_16_1_1 + 1) == at_1(Heap, ys, k_16_1_1)
            );
            assume state(Heap, Mask);
          
          // -- Translating statement: assert at(old_ys, 0) == at(xs, pos) -- example_3.vpr@54.9--54.44
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of at(old_ys, 0) == at(xs, pos)
              if (*) {
                // Stop execution
                assume false;
              }
              if (*) {
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion at(old_ys, 0) == at(xs, pos) might not hold. (example_3.vpr@54.16--54.44) [222652]"}
              at_1(Heap, old_ys, 0) == at_1(Heap, xs, pos);
            assume state(Heap, Mask);
          
          // -- Translating statement: pos := pos + 1 -- example_3.vpr@55.9--55.23
            pos := pos + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= pos might not be preserved. Assertion 0 <= pos might not hold. (example_3.vpr@44.19--44.27) [222653]"}
          0 <= pos;
        assert {:msg "  Loop invariant pos + len(ys) == len(xs) might not be preserved. Assertion pos + len(ys) == len(xs) might not hold. (example_3.vpr@45.19--45.43) [222654]"}
          pos + len_3(Heap, ys) == len_3(Heap, xs);
        if ((List_tag(ys): int) == 1) {
          assert {:msg "  Loop invariant List_tag(ys) == 1 ==> pos == len(xs) might not be preserved. Assertion pos == len(xs) might not hold. (example_3.vpr@46.19--46.46) [222655]"}
            pos == len_3(Heap, xs);
        }
        if (*) {
          if (0 <= k_17_2) {
            assert {:msg "  Loop invariant (forall k: Int :: { at(ys, k) } 0 <= k ==> at(xs, pos + k) == at(ys, k)) might not be preserved. Assertion at(xs, pos + k) == at(ys, k) might not hold. (example_3.vpr@47.19--47.72) [222656]"}
              at_1(Heap, xs, pos + k_17_2) == at_1(Heap, ys, k_17_2);
          }
          assume false;
        }
        assume (forall k_18_1_1: int ::
          { at#frame(EmptyFrame, ys, k_18_1_1) }
          0 <= k_18_1_1 ==> at_1(Heap, xs, pos + k_18_1_1) == at_1(Heap, ys, k_18_1_1)
        );
        if (*) {
          if (0 <= k_19_1 && k_19_1 < pos) {
            assert {:msg "  Loop invariant (forall k: Int :: { at(xs, k) } 0 <= k && k < pos ==> at(xs, k) != key) might not be preserved. Assertion at(xs, k) != key might not hold. (example_3.vpr@48.19--48.73) [222657]"}
              at_1(Heap, xs, k_19_1) != key_1;
          }
          assume false;
        }
        assume (forall k_20_1_1: int ::
          { at#frame(EmptyFrame, xs, k_20_1_1) }
          0 <= k_20_1_1 && k_20_1_1 < pos ==> at_1(Heap, xs, k_20_1_1) != key_1
        );
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(!((List_tag(ys): int) == 1) && (get_List_head(ys): int) != key_1);
      assume state(Heap, Mask);
      assume 0 <= pos;
      assume state(Heap, Mask);
      assume pos + len_3(Heap, ys) == len_3(Heap, xs);
      if ((List_tag(ys): int) == 1) {
        assume state(Heap, Mask);
        assume pos == len_3(Heap, xs);
      }
      assume state(Heap, Mask);
      assume (forall k_21_1: int ::
        { at#frame(EmptyFrame, ys, k_21_1) }
        0 <= k_21_1 ==> at_1(Heap, xs, pos + k_21_1) == at_1(Heap, ys, k_21_1)
      );
      assume state(Heap, Mask);
      assume (forall k_22_2: int ::
        { at#frame(EmptyFrame, xs, k_22_2) }
        0 <= k_22_2 && k_22_2 < pos ==> at_1(Heap, xs, k_22_2) != key_1
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !(List_tag(ys) == 1) ==> at(ys, 0) == key -- example_3.vpr@58.5--58.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!((List_tag(ys): int) == 1)) {
      
      // -- Check definedness of at(ys, 0) == key
        if (*) {
          // Stop execution
          assume false;
        }
      assert {:msg "  Assert might fail. Assertion at(ys, 0) == key might not hold. (example_3.vpr@58.12--58.42) [222658]"}
        at_1(Heap, ys, 0) == key_1;
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of linear_search might not hold. Assertion 0 <= pos might not hold. (example_3.vpr@35.13--35.39) [222659]"}
      0 <= pos;
    assert {:msg "  Postcondition of linear_search might not hold. Assertion pos <= len(xs) might not hold. (example_3.vpr@35.13--35.39) [222660]"}
      pos <= len_3(Heap, xs);
    assert {:msg "  Postcondition of linear_search might not hold. Assertion at(xs, pos) == key || pos == len(xs) might not hold. (example_3.vpr@36.13--36.49) [222661]"}
      at_1(Heap, xs, pos) == key_1 || pos == len_3(Heap, xs);
    if (pos == len_3(Heap, xs)) {
      if (*) {
        if (0 <= k_2_1 && k_2_1 < len_3(Heap, xs)) {
          assert {:msg "  Postcondition of linear_search might not hold. Assertion at(xs, k) != key might not hold. (example_3.vpr@37.13--37.90) [222662]"}
            at_1(Heap, xs, k_2_1) != key_1;
        }
        assume false;
      }
      assume (forall k_3_1_1: int ::
        { at#frame(EmptyFrame, xs, k_3_1_1) }
        0 <= k_3_1_1 && k_3_1_1 < len_3(Heap, xs) ==> at_1(Heap, xs, k_3_1_1) != key_1
      );
    }
}