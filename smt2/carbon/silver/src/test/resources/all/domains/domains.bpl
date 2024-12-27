// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:29:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/domains/domains.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/domains/domains-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_5: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_5, f_3] }
  Heap[o_5, $allocated] ==> Heap[Heap[o_5, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_6, f_9) ==> Heap[o_6, f_9] == ExhaleHeap[o_6, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2), ExhaleHeap[null, PredicateMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> Heap[null, PredicateMaskField(pm_f_2)] == ExhaleHeap[null, PredicateMaskField(pm_f_2)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, PredicateMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2), ExhaleHeap[null, WandMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> Heap[null, WandMaskField(pm_f_2)] == ExhaleHeap[null, WandMaskField(pm_f_2)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, WandMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_6, $allocated] ==> ExhaleHeap[o_6, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_5: Ref, f_10: (Field A B), v: B ::
  { Heap[o_5, f_10:=v] }
  succHeap(Heap, Heap[o_5, f_10:=v])
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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType T;

// Translation of domain function nil
function  nil<T>(): ListDomainType T;

// Translation of domain function cons
function  cons<T>(x_8: T, xs_1: (ListDomainType T)): ListDomainType T;

// Translation of domain function length
function  length_1<T>(xs_1: (ListDomainType T)): int;

// Translation of domain axiom nil_length
axiom (forall <T>  ::
  
  (length_1((nil(): ListDomainType T)): int) == 0
);

// Translation of domain axiom cons_length
axiom (forall <T> x: T ::
  
  (forall xs: (ListDomainType T) ::
    { (length_1((cons(x, xs): ListDomainType T)): int) } { (length_1(xs): int) }
    (length_1((cons(x, xs): ListDomainType T)): int) == (length_1(xs): int) + 1
  )
);

// Translation of domain axiom nil_cons
axiom (forall <T> z: T ::
  
  (forall zs: (ListDomainType T) ::
    { (cons(z, zs): ListDomainType T) }
    (cons(z, zs): ListDomainType T) != (nil(): ListDomainType T)
  )
);

// ==================================================
// Translation of domain Pair
// ==================================================

// The type for domain Pair
type PairDomainType A B;

// Translation of domain function Pair_pair
function  Pair_pair<A, B>(a_3: A, b_102: B): PairDomainType A B;

// Translation of domain function Pair_first
function  Pair_first<A, B>(p_16: (PairDomainType A B)): A;

// Translation of domain function Pair_second
function  Pair_second<A, B>(p_16: (PairDomainType A B)): B;

// Translation of domain axiom Pair_access_first
axiom (forall <A, B> a_2: A, b_24: B ::
  { (Pair_first((Pair_pair(a_2, b_24): PairDomainType A B)): A) }
  (Pair_first((Pair_pair(a_2, b_24): PairDomainType A B)): A) == a_2
);

// Translation of domain axiom Pair_access_second
axiom (forall <A, B> a_2: A, b_24: B ::
  { (Pair_second((Pair_pair(a_2, b_24): PairDomainType A B)): B) }
  (Pair_second((Pair_pair(a_2, b_24): PairDomainType A B)): B) == b_24
);

// ==================================================
// Translation of domain Triple
// ==================================================

// The type for domain Triple
type TripleDomainType A B C;

// Translation of domain function Triple_triple
function  Triple_triple<A, B, C>(a_3: A, b_102: B, c_11: C): TripleDomainType A B C;

// Translation of domain function Triple_first
function  Triple_first<A, B, C>(t_9: (TripleDomainType A B C)): A;

// Translation of domain function Triple_second
function  Triple_second<A, B, C>(t_9: (TripleDomainType A B C)): B;

// Translation of domain function Triple_third
function  Triple_third<A, B, C>(t_9: (TripleDomainType A B C)): C;

// Translation of domain function Triple_isPrefix
function  Triple_isPrefix<A, B, C>(p_16: (PairDomainType A B), t_9: (TripleDomainType A B C)): bool;

// Translation of domain axiom Triple_access_first
axiom (forall <A, B, C> a_2: A, b_24: B, c: C ::
  { (Triple_first((Triple_triple(a_2, b_24, c): TripleDomainType A B C)): A) }
  (Triple_first((Triple_triple(a_2, b_24, c): TripleDomainType A B C)): A) == a_2
);

// Translation of domain axiom Triple_access_second
axiom (forall <A, B, C> a_2: A, b_24: B, c: C ::
  { (Triple_second((Triple_triple(a_2, b_24, c): TripleDomainType A B C)): B) }
  (Triple_second((Triple_triple(a_2, b_24, c): TripleDomainType A B C)): B) == b_24
);

// Translation of domain axiom Triple_access_third
axiom (forall <A, B, C> a_2: A, b_24: B, c: C ::
  { (Triple_third((Triple_triple(a_2, b_24, c): TripleDomainType A B C)): C) }
  (Triple_third((Triple_triple(a_2, b_24, c): TripleDomainType A B C)): C) == c
);

// Translation of domain axiom Triple_is_prefix
axiom (forall <A, B, C> p_1: (PairDomainType A B), t_2: (TripleDomainType A B C) ::
  { (Triple_isPrefix(p_1, t_2): bool) } { (Pair_first(p_1): A), (Triple_first(t_2): A) } { (Pair_first(p_1): A), (Triple_second(t_2): B) } { (Triple_first(t_2): A), (Pair_second(p_1): B) } { (Pair_second(p_1): B), (Triple_second(t_2): B) }
  (Triple_isPrefix(p_1, t_2): bool) == ((Pair_first(p_1): A) == (Triple_first(t_2): A) && (Pair_second(p_1): B) == (Triple_second(t_2): B))
);

// ==================================================
// Translation of domain L
// ==================================================

// The type for domain L
type LDomainType;

// Translation of domain function f1
function  f1_2(x_8: int): int;

// Translation of domain function f2
function  f2_2(x_8: int): int;

// ==================================================
// Translation of domain Foo
// ==================================================

// The type for domain Foo
type FooDomainType A;

// Translation of domain function foo
function  foo<A>(a_3: A): int;

// Translation of domain function fooid
function  fooid<A>(a_3: A): A;

// Translation of domain axiom foo_ax1
axiom (forall <A> a_2: A ::
  { (foo(a_2): int) }
  (foo(a_2): int) > 0
);

// Translation of domain axiom foo_ax2
axiom (forall <A> a_2: A ::
  { (fooid(a_2): A) }
  (fooid(a_2): A) == a_2
);

// ==================================================
// Translation of domain Bar
// ==================================================

// The type for domain Bar
type BarDomainType A B;

// Translation of domain function barfoo1
function  barfoo1<A>(a_3: A): bool;

// Translation of domain function barfoo2
function  barfoo2<A>(a_3: A): int;

// Translation of domain axiom bar_ax1
axiom (forall <A> a_2: A ::
  { (barfoo1(a_2): bool) }
  (barfoo1(a_2): bool)
);

// Translation of domain axiom bar_ax2
axiom (forall <B> b_24: B ::
  
  (barfoo1(null): bool)
);

// Translation of domain axiom bar_ax3
axiom (forall <A> a_2: A ::
  { (barfoo2(a_2): int) } { (hide(a_2): int) }
  (barfoo2(a_2): int) != (hide(a_2): int)
);

// ==================================================
// Translation of domain Hidden
// ==================================================

// The type for domain Hidden
type HiddenDomainType A;

// Translation of domain function hide
function  hide<A>(a_3: A): int;

// Translation of domain axiom hidden_ax1
axiom (forall <A> a_2: A ::
  { (hide(a_2): int) }
  (hide(a_2): int) == 0
);

// ==================================================
// Translation of domain D10A
// ==================================================

// The type for domain D10A
type D10ADomainType A;

// Translation of domain function hide2
function  hide2<A>(a_3: A): int;

// ==================================================
// Translation of domain D10B
// ==================================================

// The type for domain D10B
type D10BDomainType;

// Translation of domain axiom d10b_ax1
axiom (forall x: int ::
  { (hide2(x): int) }
  (hide2(x): int) > 0
);

// ==================================================
// Translation of domain D10C
// ==================================================

// The type for domain D10C
type D10CDomainType A;

// Translation of domain axiom d10c_ax1
axiom (forall r_1: Ref ::
  { (hide2(r_1): int) }
  (hide2(r_1): int) < 0
);

// ==================================================
// Translation of domain Cell
// ==================================================

// The type for domain Cell
type CellDomainType A;

// Translation of domain function Cell_cell
function  Cell_cell<A>(a_3: A): CellDomainType A;

// Translation of domain function Cell_get
function  Cell_get<A>(c_11: (CellDomainType A)): A;

// Translation of domain axiom cell_ax1
axiom (forall <A> a_2: A ::
  { (Cell_get((Cell_cell(a_2): CellDomainType A)): A) }
  (Cell_get((Cell_cell(a_2): CellDomainType A)): A) == a_2
);

// ==================================================
// Translation of method test
// ==================================================

procedure test(x: int, xs: (ListDomainType int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var n: (ListDomainType int);
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
  
  // -- Translating statement: n := (nil(): List[Int]) -- domains.vpr@20.5--20.30
    n := (nil(): ListDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (length(n): Int) == 0 -- domains.vpr@21.5--21.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (length(n): Int) == 0 might not hold. (domains.vpr@21.12--21.26) [142955]"}
      (length_1(n): int) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert n != (cons(x, xs): List[Int]) -- domains.vpr@22.5--22.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion n != (cons(x, xs): List[Int]) might not hold. (domains.vpr@22.12--22.28) [142956]"}
      n != (cons(x, xs): ListDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (length((cons(1, n): List[Int])): Int) == 1 -- domains.vpr@23.5--23.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (length((cons(1, n): List[Int])): Int) == 1 might not hold. (domains.vpr@23.12--23.35) [142957]"}
      (length_1((cons(1, n): ListDomainType int)): int) == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(a_2: int, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var b2: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (Pair_first((Pair_pair(a, b): Pair[Int, Bool])): Int) == a -- domains.vpr@68.3--68.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Pair_first((Pair_pair(a, b): Pair[Int, Bool])): Int) == a might not hold. (domains.vpr@68.10--68.42) [142958]"}
      (Pair_first((Pair_pair(a_2, b_24): PairDomainType int bool)): int) == a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Pair_second((Pair_pair(a, b): Pair[Int, Bool])): Bool) == b -- domains.vpr@69.3--69.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Pair_second((Pair_pair(a, b): Pair[Int, Bool])): Bool) == b might not hold. (domains.vpr@69.10--69.43) [142959]"}
      (Pair_second((Pair_pair(a_2, b_24): PairDomainType int bool)): bool) == b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: b2 := true -- domains.vpr@71.3--71.23
    b2 := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Pair_second((Pair_pair(a, b): Pair[Int, Bool])): Bool) == b2 -- domains.vpr@73.3--73.44
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Pair_second((Pair_pair(a, b): Pair[Int, Bool])): Bool) == b2 might not hold. (domains.vpr@73.10--73.44) [142960]"}
      (Pair_second((Pair_pair(a_2, b_24): PairDomainType int bool)): bool) == b2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(a_2: int, b_24: bool, c: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var b2: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (Triple_first((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Int) ==
  //   a -- domains.vpr@77.3--77.51
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Triple_first((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Int) == a might not hold. (domains.vpr@77.10--77.51) [142961]"}
      (Triple_first((Triple_triple(a_2, b_24, c): TripleDomainType int bool Ref)): int) == a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Triple_second((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Bool) ==
  //   b -- domains.vpr@78.3--78.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Triple_second((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Bool) == b might not hold. (domains.vpr@78.10--78.52) [142962]"}
      (Triple_second((Triple_triple(a_2, b_24, c): TripleDomainType int bool Ref)): bool) == b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Triple_third((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Ref) ==
  //   c -- domains.vpr@79.3--79.51
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Triple_third((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Ref) == c might not hold. (domains.vpr@79.10--79.51) [142963]"}
      (Triple_third((Triple_triple(a_2, b_24, c): TripleDomainType int bool Ref)): Ref) == c;
    assume state(Heap, Mask);
  
  // -- Translating statement: b2 := true -- domains.vpr@81.3--81.23
    b2 := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Triple_second((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Bool) ==
  //   b2 -- domains.vpr@83.3--83.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Triple_second((Triple_triple(a, b, c): Triple[Int, Bool, Ref])): Bool) == b2 might not hold. (domains.vpr@83.10--83.53) [142964]"}
      (Triple_second((Triple_triple(a_2, b_24, c): TripleDomainType int bool Ref)): bool) == b2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(a_2: int, b_24: bool, c: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var p_1: (PairDomainType int bool);
  var t_2: (TripleDomainType int bool Ref);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var t2_1: (TripleDomainType int bool Ref);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: p := (Pair_pair(a, b): Pair[Int, Bool]) -- domains.vpr@87.3--87.44
    p_1 := (Pair_pair(a_2, b_24): PairDomainType int bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: t := (Triple_triple(a, b, c): Triple[Int, Bool, Ref]) -- domains.vpr@88.3--88.58
    t_2 := (Triple_triple(a_2, b_24, c): TripleDomainType int bool Ref);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Triple_isPrefix(p, t): Bool) -- domains.vpr@89.3--89.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Triple_isPrefix(p, t): Bool) might not hold. (domains.vpr@89.10--89.31) [142965]"}
      (Triple_isPrefix(p_1, t_2): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: t2 := (Triple_triple(a, false, c): Triple[Int, Bool, Ref]) -- domains.vpr@91.3--91.63
    t2_1 := (Triple_triple(a_2, false, c): TripleDomainType int bool Ref);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Triple_isPrefix(p, t2): Bool) -- domains.vpr@93.3--93.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Triple_isPrefix(p, t2): Bool) might not hold. (domains.vpr@93.10--93.32) [142966]"}
      (Triple_isPrefix(p_1, t2_1): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t5
// ==================================================

procedure t5() returns ()
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
  
  // -- Translating statement: inhale (forall i: Int :: { f1(i), f2(i) } f1(i) > 0) -- domains.vpr@103.10--103.50
    
    // -- Check definedness of (forall i: Int :: { f1(i), f2(i) } f1(i) > 0)
      if (*) {
        assume false;
      }
    assume (forall i_1: int ::
      { (f1_2(i_1): int), (f2_2(i_1): int) }
      (f1_2(i_1): int) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t6
// ==================================================

procedure t6() returns ()
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
  
  // -- Translating statement: assert (foo(1): Int) > 0 -- domains.vpr@119.3--119.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (foo(1): Int) > 0 might not hold. (domains.vpr@119.10--119.20) [142967]"}
      (foo(1): int) > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (foo(null): Int) > 0 -- domains.vpr@120.3--120.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (foo(null): Int) > 0 might not hold. (domains.vpr@120.10--120.23) [142968]"}
      (foo(null): int) > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (foo(none): Int) > 0 -- domains.vpr@121.3--121.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (foo(none): Int) > 0 might not hold. (domains.vpr@121.10--121.23) [142969]"}
      (foo(NoPerm): int) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7
// ==================================================

procedure test7() returns ()
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
  
  // -- Translating statement: assert (barfoo2(101): Int) != 0 -- domains.vpr@140.3--140.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (barfoo2(101): Int) != 0 might not hold. (domains.vpr@140.10--140.27) [142970]"}
      (barfoo2(101): int) != 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test8
// ==================================================

procedure test8() returns ()
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
  
  // -- Translating statement: assert (hide2(101): Int) > 0 -- domains.vpr@156.3--156.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (hide2(101): Int) > 0 might not hold. (domains.vpr@156.10--156.24) [142971]"}
      (hide2(101): int) > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (hide2(null): Int) < 0 -- domains.vpr@157.3--157.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (hide2(null): Int) < 0 might not hold. (domains.vpr@157.10--157.25) [142972]"}
      (hide2(null): int) < 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test9
// ==================================================

procedure test9() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var c1: (CellDomainType int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var c2: (CellDomainType Ref);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: c1 := (Cell_cell(0): Cell[Int]) -- domains.vpr@168.2--168.35
    c1 := (Cell_cell(0): CellDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c1 == (Cell_cell(0): Cell[Int]) -- domains.vpr@170.3--170.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion c1 == (Cell_cell(0): Cell[Int]) might not hold. (domains.vpr@170.10--170.28) [142973]"}
      c1 == (Cell_cell(0): CellDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Cell_get(c1): Int) == 0 -- domains.vpr@171.2--171.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Cell_get(c1): Int) == 0 might not hold. (domains.vpr@171.9--171.26) [142974]"}
      (Cell_get(c1): int) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Cell_get(c1): Int) == (Cell_get((Cell_cell(0): Cell[Int])): Int) -- domains.vpr@172.2--172.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Cell_get(c1): Int) == (Cell_get((Cell_cell(0): Cell[Int])): Int) might not hold. (domains.vpr@172.9--172.47) [142975]"}
      (Cell_get(c1): int) == (Cell_get((Cell_cell(0): CellDomainType int)): int);
    assume state(Heap, Mask);
  
  // -- Translating statement: c2 := (Cell_cell(null): Cell[Ref]) -- domains.vpr@174.2--174.38
    c2 := (Cell_cell(null): CellDomainType Ref);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Cell_get(c2): Ref) == null -- domains.vpr@176.2--176.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Cell_get(c2): Ref) == null might not hold. (domains.vpr@176.9--176.29) [142976]"}
      (Cell_get(c2): Ref) == null;
    assume state(Heap, Mask);
}