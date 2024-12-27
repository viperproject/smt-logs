// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:47:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/encoding_2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/encoding_2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain ADT
// ==================================================

// The type for domain ADT
type ADTDomainType T;

// Translation of domain function C1
function  C1<T>(): ADTDomainType T;

// Translation of domain function C2
function  C2<T>(p21: T, p22: (ADTDomainType T)): ADTDomainType T;

// Translation of domain function C3
function  C3<T>(p31: int): ADTDomainType T;

// Translation of domain function C4
function  C4<T>(p41: bool, p42: (ADTDomainType T), p43: (ADTDomainType int)): ADTDomainType T;

// Translation of domain function C5
function  C5<T>(): ADTDomainType T;

// Translation of domain function C6
function  C6<T>(): ADTDomainType T;

// Translation of domain function get_ADT_p21
function  get_ADT_p21<T>(t_9: (ADTDomainType T)): T;

// Translation of domain function get_ADT_p22
function  get_ADT_p22<T>(t_9: (ADTDomainType T)): ADTDomainType T;

// Translation of domain function get_ADT_p31
function  get_ADT_p31<T>(t_9: (ADTDomainType T)): int;

// Translation of domain function get_ADT_p41
function  get_ADT_p41<T>(t_9: (ADTDomainType T)): bool;

// Translation of domain function get_ADT_p42
function  get_ADT_p42<T>(t_9: (ADTDomainType T)): ADTDomainType T;

// Translation of domain function get_ADT_p43
function  get_ADT_p43<T>(t_9: (ADTDomainType T)): ADTDomainType int;

// Translation of domain function ADT_tag
function  ADT_tag<T>(t_9: (ADTDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> p21_1: T, p22_1: (ADTDomainType T) ::
  { (C2(p21_1, p22_1): ADTDomainType T) }
  p21_1 == (get_ADT_p21((C2(p21_1, p22_1): ADTDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> p21_1: T, p22_1: (ADTDomainType T) ::
  { (C2(p21_1, p22_1): ADTDomainType T) }
  p22_1 == (get_ADT_p22((C2(p21_1, p22_1): ADTDomainType T)): ADTDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T> p31_1: int ::
  { (C3(p31_1): ADTDomainType T) }
  p31_1 == (get_ADT_p31((C3(p31_1): ADTDomainType T)): int)
);

// Translation of anonymous domain axiom
axiom (forall <T> p41_1: bool, p42_1: (ADTDomainType T), p43_1: (ADTDomainType int) ::
  { (C4(p41_1, p42_1, p43_1): ADTDomainType T) }
  p41_1 == (get_ADT_p41((C4(p41_1, p42_1, p43_1): ADTDomainType T)): bool)
);

// Translation of anonymous domain axiom
axiom (forall <T> p41_1: bool, p42_1: (ADTDomainType T), p43_1: (ADTDomainType int) ::
  { (C4(p41_1, p42_1, p43_1): ADTDomainType T) }
  p42_1 == (get_ADT_p42((C4(p41_1, p42_1, p43_1): ADTDomainType T)): ADTDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T> p41_1: bool, p42_1: (ADTDomainType T), p43_1: (ADTDomainType int) ::
  { (C4(p41_1, p42_1, p43_1): ADTDomainType T) }
  p43_1 == (get_ADT_p43((C4(p41_1, p42_1, p43_1): ADTDomainType T)): ADTDomainType int)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (ADT_tag((C1(): ADTDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> p21_1: T, p22_1: (ADTDomainType T) ::
  { (C2(p21_1, p22_1): ADTDomainType T) }
  (ADT_tag((C2(p21_1, p22_1): ADTDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> p31_1: int ::
  { (C3(p31_1): ADTDomainType T) }
  (ADT_tag((C3(p31_1): ADTDomainType T)): int) == 2
);

// Translation of anonymous domain axiom
axiom (forall <T> p41_1: bool, p42_1: (ADTDomainType T), p43_1: (ADTDomainType int) ::
  { (C4(p41_1, p42_1, p43_1): ADTDomainType T) }
  (ADT_tag((C4(p41_1, p42_1, p43_1): ADTDomainType T)): int) == 3
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (ADT_tag((C5(): ADTDomainType T)): int) == 4
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (ADT_tag((C6(): ADTDomainType T)): int) == 5
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (ADTDomainType T) ::
  { (ADT_tag(t_2): int) }
  ((((t_2 == (C1(): ADTDomainType T) || t_2 == (C2((get_ADT_p21(t_2): T), (get_ADT_p22(t_2): ADTDomainType T)): ADTDomainType T)) || t_2 == (C3((get_ADT_p31(t_2): int)): ADTDomainType T)) || t_2 == (C4((get_ADT_p41(t_2): bool), (get_ADT_p42(t_2): ADTDomainType T), (get_ADT_p43(t_2): ADTDomainType int)): ADTDomainType T)) || t_2 == (C5(): ADTDomainType T)) || t_2 == (C6(): ADTDomainType T)
);

// ==================================================
// Translation of method encoding_2
// ==================================================

procedure encoding_2(a_2: (ADTDomainType bool)) returns ()
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
  
  // -- Translating statement: assert (ADT_tag(a): Int) == 0 ||
  //   ((ADT_tag(a): Int) == 1 ||
  //   ((ADT_tag(a): Int) == 2 ||
  //   ((ADT_tag(a): Int) == 3 ||
  //   ((ADT_tag(a): Int) == 4 || (ADT_tag(a): Int) == 5)))) -- encoding_2.vpr@12.3--12.66
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (ADT_tag(a): Int) == 0 || ((ADT_tag(a): Int) == 1 || ((ADT_tag(a): Int) == 2 || ((ADT_tag(a): Int) == 3 || ((ADT_tag(a): Int) == 4 || (ADT_tag(a): Int) == 5)))) might not hold. (encoding_2.vpr@12.10--12.66) [222588]"}
      (ADT_tag(a_2): int) == 0 || ((ADT_tag(a_2): int) == 1 || ((ADT_tag(a_2): int) == 2 || ((ADT_tag(a_2): int) == 3 || ((ADT_tag(a_2): int) == 4 || (ADT_tag(a_2): int) == 5))));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert ((ADT_tag(a): Int) == 0) == (a == (C1(): ADT[Bool])) -- encoding_2.vpr@14.3--14.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion ((ADT_tag(a): Int) == 0) == (a == (C1(): ADT[Bool])) might not hold. (encoding_2.vpr@14.10--14.31) [222589]"}
      ((ADT_tag(a_2): int) == 0) == (a_2 == (C1(): ADTDomainType bool));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (ADT_tag(a): Int) == 1 ==> a != (C1(): ADT[Bool]) -- encoding_2.vpr@15.3--15.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if ((ADT_tag(a_2): int) == 1) {
      assert {:msg "  Assert might fail. Assertion a != (C1(): ADT[Bool]) might not hold. (encoding_2.vpr@15.10--15.30) [222590]"}
        a_2 != (C1(): ADTDomainType bool);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert ((ADT_tag(a): Int) == 1) ==
  //   (a ==
  //   (C2((get_ADT_p21(a): Bool), (get_ADT_p22(a): ADT[Bool])): ADT[Bool])) -- encoding_2.vpr@16.3--16.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion ((ADT_tag(a): Int) == 1) == (a == (C2((get_ADT_p21(a): Bool), (get_ADT_p22(a): ADT[Bool])): ADT[Bool])) might not hold. (encoding_2.vpr@16.10--16.43) [222591]"}
      ((ADT_tag(a_2): int) == 1) == (a_2 == (C2((get_ADT_p21(a_2): bool), (get_ADT_p22(a_2): ADTDomainType bool)): ADTDomainType bool));
    assume state(Heap, Mask);
}