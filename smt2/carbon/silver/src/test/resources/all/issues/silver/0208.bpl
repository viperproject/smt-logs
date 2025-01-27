// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:15:07
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0208.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0208-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_19] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_20: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_20] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_20) ==> Heap[o_13, f_20] == ExhaleHeap[o_13, f_20]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_21: (Field A B), v: B ::
  { Heap[o_12, f_21:=v] }
  succHeap(Heap, Heap[o_12, f_21:=v])
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
// Translation of domain Foo
// ==================================================

// The type for domain Foo
type FooDomainType;

// Translation of domain function foo
function  foo_2(i_6: int, h_3: int): bool;

// Translation of domain axiom foo_ax
axiom (forall i: int ::
  { (foo_2(i, i): bool) }
  (foo_2(i, i): bool)
);

// ==================================================
// Translation of domain test04
// ==================================================

// The type for domain test04
type test04DomainType;

// Translation of domain function boo
function  boo(i_6: int, h_3: int): bool;

// Translation of domain axiom ax04a
axiom (forall i: int ::
  
  (forall i$0: int ::
    { (boo(i, i$0): bool) }
    (boo(i, i$0): bool)
  )
) && ((forall i$1: int ::
  { (boo(1, i$1): bool) }
  (boo(1, i$1): bool)
) && (forall i_1: int ::
  
  (forall i$2: int ::
    { (boo(i_1, i$2): bool) }
    (boo(i_1, i$2): bool)
  )
));

// ==================================================
// Translation of predicate test05
// ==================================================

type PredicateType_test05;
function  test05_1(): Field PredicateType_test05 FrameType;
function  test05#sm(): Field PredicateType_test05 PMaskType;
axiom PredicateMaskField(test05_1()) == test05#sm();
axiom IsPredicateField(test05_1());
axiom getPredWandId(test05_1()) == 0;
function  test05#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  test05#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { test05#trigger(Heap, test05_1()) }
  test05#everUsed(test05_1())
);

procedure test05#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of test05
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall i: Int ::(forall i$0: Int :: { foo(i, i$0) } foo(i, i$0)))
      if (*) {
        if (*) {
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      
      (forall i$0_1: int ::
        { (foo_2(i_1, i$0_1): bool) }
        (foo_2(i_1, i$0_1): bool)
      )
    );
    
    // -- Check definedness of (forall i$1: Int :: { foo(1, i$1) } foo(1, i$1))
      if (*) {
        assume false;
      }
    assume (forall i$1_1: int ::
      { (foo_2(1, i$1_1): bool) }
      (foo_2(1, i$1_1): bool)
    );
    
    // -- Check definedness of (forall i: Int ::(forall i$2: Int :: { foo(i, i$2) } foo(i, i$2)))
      if (*) {
        if (*) {
          assume false;
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      
      (forall i$2_1: int ::
        { (foo_2(i_3_2, i$2_1): bool) }
        (foo_2(i_3_2, i$2_1): bool)
      )
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(i: int, j: int, m_18: int) returns ()
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
  
  // -- Translating statement: inhale i - 1 == j -- 0208.vpr@7.10--7.18
    assume i - 1 == j;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 < m -- 0208.vpr@8.10--8.26
    assume 0 < m_18;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale m <= j -- 0208.vpr@8.10--8.26
    assume m_18 <= j;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 0 < m && m <= i - 1 -- 0208.vpr@9.3--9.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion 0 < m might not hold. (0208.vpr@9.10--9.28) [55537]"}
      0 < m_18;
    assert {:msg "  Assert might fail. Assertion m <= i - 1 might not hold. (0208.vpr@9.10--9.28) [55538]"}
      m_18 <= i - 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_1: int;
  var i$0_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert foo(i, i) -- 0208.vpr@22.3--22.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion foo(i, i) might not hold. (0208.vpr@22.10--22.19) [55539]"}
      (foo_2(i, i): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int :: { foo(j, j) } foo(j, j)) -- 0208.vpr@23.3--23.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { foo(j, j) } foo(j, j))
      if (*) {
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion foo(j, j) might not hold. (0208.vpr@23.10--23.36) [55540]"}
        (foo_2(j_1, j_1): bool);
      assume false;
    }
    assume (forall j_2_1: int ::
      { (foo_2(j_2_1, j_2_1): bool) }
      (foo_2(j_2_1, j_2_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i$0: Int :: { foo(i, i$0) } foo(i, i$0)) -- 0208.vpr@25.3--25.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i$0: Int :: { foo(i, i$0) } foo(i, i$0))
      if (*) {
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion foo(i, i$0) might not hold. (0208.vpr@25.10--25.14) [55541]"}
        (foo_2(i, i$0_1): bool);
      assume false;
    }
    assume (forall i$0_2_1_1: int ::
      { (foo_2(i, i$0_2_1_1): bool) }
      (foo_2(i, i$0_2_1_1): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int ::(forall i$0: Int :: { foo(i, i$0) } foo(i, i$0))) -- 0208.vpr@29.10--29.31
    
    // -- Check definedness of (forall i: Int ::(forall i$0: Int :: { foo(i, i$0) } foo(i, i$0)))
      if (*) {
        if (*) {
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      
      (forall i$0_1: int ::
        { (foo_2(i_1, i$0_1): bool) }
        (foo_2(i_1, i$0_1): bool)
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i$1: Int :: { foo(1, i$1) } foo(1, i$1)) -- 0208.vpr@30.10--30.14
    
    // -- Check definedness of (forall i$1: Int :: { foo(1, i$1) } foo(1, i$1))
      if (*) {
        assume false;
      }
    assume (forall i$1_1: int ::
      { (foo_2(1, i$1_1): bool) }
      (foo_2(1, i$1_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::(forall i$2: Int :: { foo(i, i$2) } foo(i, i$2))) -- 0208.vpr@31.10--31.31
    
    // -- Check definedness of (forall i: Int ::(forall i$2: Int :: { foo(i, i$2) } foo(i, i$2)))
      if (*) {
        if (*) {
          assume false;
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      
      (forall i$2_1: int ::
        { (foo_2(i_3_2, i$2_1): bool) }
        (foo_2(i_3_2, i$2_1): bool)
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}