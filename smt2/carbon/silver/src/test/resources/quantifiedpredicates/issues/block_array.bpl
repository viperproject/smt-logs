// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:46
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/issues/block_array.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/issues/block_array-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_4_1: int): bool;
function  neverTriggered3(j_6_2: int): bool;
function  neverTriggered4(j_7_1: int): bool;
function  neverTriggered5(j_8_2: int): bool;
function  neverTriggered6(j_1: int): bool;
function  neverTriggered7(j_4_1: int): bool;
function  neverTriggered8(j_10_2: int): bool;
function  neverTriggered9(j_15_2: int): bool;
function  neverTriggered10(j_16_1: int): bool;
function  neverTriggered11(j_1: int): bool;
function  neverTriggered12(j_3: int): bool;
function  neverTriggered13(j_6_2: int): bool;
function  neverTriggered14(j_9_1: int): bool;
function  neverTriggered15(j_10_2: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(a_1_1_1: IArrayDomainType, i_1_1_1: int): int;
function  invRecv2(a_2_1: IArrayDomainType, i_2_1: int): int;
function  invRecv3(a_3_1_1: IArrayDomainType, i_3_1: int): int;
function  invRecv4(a_4_1_1: IArrayDomainType, i_4_1_1: int): int;
function  invRecv5(a_5_1_1: IArrayDomainType, i_5_1_1: int): int;
function  invRecv6(a_1_1_1: IArrayDomainType, i_1_1_1: int): int;
function  invRecv7(a_2_1: IArrayDomainType, i_2_1: int): int;
function  invRecv8(a_3_1_1: IArrayDomainType, i_3_1: int): int;
function  invRecv9(a_4_1_1: IArrayDomainType, i_4_1_1: int): int;
function  invRecv10(a_5_1_1: IArrayDomainType, i_5_1_1: int): int;
function  invRecv11(recv: Ref): int;
function  invRecv12(recv: Ref): int;
function  invRecv13(recv: Ref): int;
function  invRecv14(recv: Ref): int;
function  invRecv15(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(a_1_1_1: IArrayDomainType, i_1_1_1: int): bool;
function  qpRange2(a_2_1: IArrayDomainType, i_2_1: int): bool;
function  qpRange3(a_3_1_1: IArrayDomainType, i_3_1: int): bool;
function  qpRange4(a_4_1_1: IArrayDomainType, i_4_1_1: int): bool;
function  qpRange5(a_5_1_1: IArrayDomainType, i_5_1_1: int): bool;
function  qpRange6(a_1_1_1: IArrayDomainType, i_1_1_1: int): bool;
function  qpRange7(a_2_1: IArrayDomainType, i_2_1: int): bool;
function  qpRange8(a_3_1_1: IArrayDomainType, i_3_1: int): bool;
function  qpRange9(a_4_1_1: IArrayDomainType, i_4_1_1: int): bool;
function  qpRange10(a_5_1_1: IArrayDomainType, i_5_1_1: int): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;

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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: IArrayDomainType, i_6: int): Ref;

// Translation of domain function len
function  len(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first_1(r_4: Ref): IArrayDomainType;

// Translation of domain function second
function  second_1(r_4: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first_1((loc(a_2, i): Ref)): IArrayDomainType) == a_2 && (second_1((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom len_nonneg
axiom (forall a_2: IArrayDomainType ::
  { (len(a_2): int) }
  (len(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of predicate access
// ==================================================

type PredicateType_access;
function  access(a_2: IArrayDomainType, i: int): Field PredicateType_access FrameType;
function  access#sm(a_2: IArrayDomainType, i: int): Field PredicateType_access PMaskType;
axiom (forall a_2: IArrayDomainType, i: int ::
  { PredicateMaskField(access(a_2, i)) }
  PredicateMaskField(access(a_2, i)) == access#sm(a_2, i)
);
axiom (forall a_2: IArrayDomainType, i: int ::
  { access(a_2, i) }
  IsPredicateField(access(a_2, i))
);
axiom (forall a_2: IArrayDomainType, i: int ::
  { access(a_2, i) }
  getPredWandId(access(a_2, i)) == 0
);
function  access#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  access#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: IArrayDomainType, i: int, a2: IArrayDomainType, i2: int ::
  { access(a_2, i), access(a2, i2) }
  access(a_2, i) == access(a2, i2) ==> a_2 == a2 && i == i2
);
axiom (forall a_2: IArrayDomainType, i: int, a2: IArrayDomainType, i2: int ::
  { access#sm(a_2, i), access#sm(a2, i2) }
  access#sm(a_2, i) == access#sm(a2, i2) ==> a_2 == a2 && i == i2
);

axiom (forall Heap: HeapType, a_2: IArrayDomainType, i: int ::
  { access#trigger(Heap, access(a_2, i)) }
  access#everUsed(access(a_2, i))
);

procedure access#definedness(a_2: IArrayDomainType, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of access
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    if (i mod 2 == 0) {
      perm := FullPerm;
      assume (loc(a_2, i): Ref) != null;
      Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume (loc(a_2, i + 1): Ref) != null;
      Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method readTwo
// ==================================================

procedure readTwo(a_2: IArrayDomainType, i: int) returns (sum_3: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] + perm];
    assume state(Heap, Mask);
    assume i mod 2 == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(access(a, i), write) -- block_array.vpr@15.5--15.23
    assume access#trigger(Heap, access(a_2, i));
    assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding access(a, i) might fail. There might be insufficient permission to access access(a, i) (block_array.vpr@15.5--15.23) [200505]"}
        perm <= Mask[null, access(a_2, i)];
    }
    Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, access(a_2, i))) {
        havoc newVersion;
        Heap := Heap[null, access(a_2, i):=newVersion];
      }
    if (i mod 2 == 0) {
      perm := FullPerm;
      assume (loc(a_2, i): Ref) != null;
      Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume (loc(a_2, i + 1): Ref) != null;
      Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sum := loc(a, i).val + loc(a, i + 1).val -- block_array.vpr@16.5--16.43
    
    // -- Check definedness of loc(a, i).val + loc(a, i + 1).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@16.5--16.43) [200508]"}
        HasDirectPerm(Mask, (loc(a_2, i): Ref), val);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@16.5--16.43) [200509]"}
        HasDirectPerm(Mask, (loc(a_2, i + 1): Ref), val);
    sum_3 := Heap[(loc(a_2, i): Ref), val] + Heap[(loc(a_2, i + 1): Ref), val];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method totalSum
// ==================================================

procedure totalSum(a_2: IArrayDomainType, i: int) returns (sum_3: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i >= 0;
    assume i + 1 < (len(a_2): int);
    assume state(Heap, Mask);
    assume i mod 2 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int ::j >= 0 && (j < len(a) && j % 2 == 0) ==> acc(access(a, j), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(access(a, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource access(a, j) might not be injective. (block_array.vpr@23.10--23.82) [200510]"}
        (forall j_1: int, j_1_1: int ::
        { neverTriggered1(j_1), neverTriggered1(j_1_1) }
        (((j_1 != j_1_1 && (j_1 >= 0 && (j_1 < (len(a_2): int) && j_1 mod 2 == 0))) && (j_1_1 >= 0 && (j_1_1 < (len(a_2): int) && j_1_1 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_1 != j_1_1
      );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Heap[null, access(a_2, j_1)] } { Mask[null, access(a_2, j_1)] }
        (j_1 >= 0 && (j_1 < (len(a_2): int) && j_1 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv1(a_2, j_1) == j_1 && qpRange1(a_2, j_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_1_1_1: int ::
        { invRecv1(a_1_1_1, i_1_1_1) }
        ((invRecv1(a_1_1_1, i_1_1_1) >= 0 && (invRecv1(a_1_1_1, i_1_1_1) < (len(a_2): int) && invRecv1(a_1_1_1, i_1_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_1_1_1) ==> a_2 == a_1_1_1 && invRecv1(a_1_1_1, i_1_1_1) == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_1_1_1: int ::
        { QPMask[null, access(a_1_1_1, i_1_1_1)] }
        ((invRecv1(a_1_1_1, i_1_1_1) >= 0 && (invRecv1(a_1_1_1, i_1_1_1) < (len(a_2): int) && invRecv1(a_1_1_1, i_1_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_1_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv1(a_1_1_1, i_1_1_1) == i_1_1_1) && QPMask[null, access(a_1_1_1, i_1_1_1)] == Mask[null, access(a_1_1_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_1_1_1: int ::
        { QPMask[null, access(a_1_1_1, i_1_1_1)] }
        !(((invRecv1(a_1_1_1, i_1_1_1) >= 0 && (invRecv1(a_1_1_1, i_1_1_1) < (len(a_2): int) && invRecv1(a_1_1_1, i_1_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_1_1_1)) ==> QPMask[null, access(a_1_1_1, i_1_1_1)] == Mask[null, access(a_1_1_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume i >= 0;
    assume i <= (len(a_2): int);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int ::j >= 0 && (j < len(a) && j % 2 == 0) ==> acc(access(a, j), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(access(a, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource access(a, j) might not be injective. (block_array.vpr@25.9--25.79) [200511]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered2(j_4_1), neverTriggered2(j_4_2) }
        (((j_4_1 != j_4_2 && (j_4_1 >= 0 && (j_4_1 < (len(a_2): int) && j_4_1 mod 2 == 0))) && (j_4_2 >= 0 && (j_4_2 < (len(a_2): int) && j_4_2 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_4_1 != j_4_2
      );
    
    // -- Define Inverse Function
      assume (forall j_4_1: int ::
        { PostHeap[null, access(a_2, j_4_1)] } { PostMask[null, access(a_2, j_4_1)] }
        (j_4_1 >= 0 && (j_4_1 < (len(a_2): int) && j_4_1 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv2(a_2, j_4_1) == j_4_1 && qpRange2(a_2, j_4_1)
      );
      assume (forall a_2_1: IArrayDomainType, i_2_1: int ::
        { invRecv2(a_2_1, i_2_1) }
        ((invRecv2(a_2_1, i_2_1) >= 0 && (invRecv2(a_2_1, i_2_1) < (len(a_2): int) && invRecv2(a_2_1, i_2_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange2(a_2_1, i_2_1) ==> a_2 == a_2_1 && invRecv2(a_2_1, i_2_1) == i_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: IArrayDomainType, i_2_1: int ::
        { QPMask[null, access(a_2_1, i_2_1)] }
        ((invRecv2(a_2_1, i_2_1) >= 0 && (invRecv2(a_2_1, i_2_1) < (len(a_2): int) && invRecv2(a_2_1, i_2_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange2(a_2_1, i_2_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1 && invRecv2(a_2_1, i_2_1) == i_2_1) && QPMask[null, access(a_2_1, i_2_1)] == PostMask[null, access(a_2_1, i_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: IArrayDomainType, i_2_1: int ::
        { QPMask[null, access(a_2_1, i_2_1)] }
        !(((invRecv2(a_2_1, i_2_1) >= 0 && (invRecv2(a_2_1, i_2_1) < (len(a_2): int) && invRecv2(a_2_1, i_2_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange2(a_2_1, i_2_1)) ==> QPMask[null, access(a_2_1, i_2_1)] == PostMask[null, access(a_2_1, i_2_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i + 3 < len(a)) -- block_array.vpr@27.5--36.6
    if (i + 3 < (len(a_2): int)) {
      
      // -- Translating statement: sum := totalSum(a, i + 2) -- block_array.vpr@28.9--28.31
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_i := i + 2;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method totalSum might not hold. Assertion i + 2 >= 0 might not hold. (block_array.vpr@28.9--28.31) [200512]"}
            arg_i >= 0;
          assert {:msg "  The precondition of method totalSum might not hold. Assertion i + 2 + 1 < len(a) might not hold. (block_array.vpr@28.9--28.31) [200513]"}
            arg_i + 1 < (len(a_2): int);
          assert {:msg "  The precondition of method totalSum might not hold. Assertion (i + 2) % 2 == 0 might not hold. (block_array.vpr@28.9--28.31) [200514]"}
            arg_i mod 2 == 0;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver acc(access(a, j), write) is injective
            assert {:msg "  The precondition of method totalSum might not hold. Quantified resource access(a, j) might not be injective. (block_array.vpr@28.9--28.31) [200515]"}
              (forall j_7_1: int, j_7_2: int ::
              { neverTriggered4(j_7_1), neverTriggered4(j_7_2) }
              (((j_7_1 != j_7_2 && (j_7_1 >= 0 && (j_7_1 < (len(a_2): int) && j_7_1 mod 2 == 0))) && (j_7_2 >= 0 && (j_7_2 < (len(a_2): int) && j_7_2 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_7_1 != j_7_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method totalSum might not hold. There might be insufficient permission to access access(a, j) (block_array.vpr@28.9--28.31) [200516]"}
              (forall j_7_1: int ::
              { Heap[null, access(a_2, j_7_1)] } { Mask[null, access(a_2, j_7_1)] }
              j_7_1 >= 0 && (j_7_1 < (len(a_2): int) && j_7_1 mod 2 == 0) ==> Mask[null, access(a_2, j_7_1)] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver acc(access(a, j), write)
            assume (forall j_7_1: int ::
              { Heap[null, access(a_2, j_7_1)] } { Mask[null, access(a_2, j_7_1)] }
              (j_7_1 >= 0 && (j_7_1 < (len(a_2): int) && j_7_1 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv4(a_2, j_7_1) == j_7_1 && qpRange4(a_2, j_7_1)
            );
            assume (forall a_4_1_1: IArrayDomainType, i_4_1_1: int ::
              { invRecv4(a_4_1_1, i_4_1_1) }
              ((invRecv4(a_4_1_1, i_4_1_1) >= 0 && (invRecv4(a_4_1_1, i_4_1_1) < (len(a_2): int) && invRecv4(a_4_1_1, i_4_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange4(a_4_1_1, i_4_1_1) ==> a_2 == a_4_1_1 && invRecv4(a_4_1_1, i_4_1_1) == i_4_1_1
            );
          
          // -- assume permission updates
            assume (forall a_4_1_1: IArrayDomainType, i_4_1_1: int ::
              { QPMask[null, access(a_4_1_1, i_4_1_1)] }
              ((invRecv4(a_4_1_1, i_4_1_1) >= 0 && (invRecv4(a_4_1_1, i_4_1_1) < (len(a_2): int) && invRecv4(a_4_1_1, i_4_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange4(a_4_1_1, i_4_1_1) ==> (a_2 == a_4_1_1 && invRecv4(a_4_1_1, i_4_1_1) == i_4_1_1) && QPMask[null, access(a_4_1_1, i_4_1_1)] == Mask[null, access(a_4_1_1, i_4_1_1)] - FullPerm
            );
            assume (forall a_4_1_1: IArrayDomainType, i_4_1_1: int ::
              { QPMask[null, access(a_4_1_1, i_4_1_1)] }
              !(((invRecv4(a_4_1_1, i_4_1_1) >= 0 && (invRecv4(a_4_1_1, i_4_1_1) < (len(a_2): int) && invRecv4(a_4_1_1, i_4_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange4(a_4_1_1, i_4_1_1)) ==> QPMask[null, access(a_4_1_1, i_4_1_1)] == Mask[null, access(a_4_1_1, i_4_1_1)]
            );
          
          // -- assume permission updates for independent locations 
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc sum_3;
        
        // -- Inhaling postcondition
          assume arg_i >= 0;
          assume arg_i <= (len(a_2): int);
          havoc QPMask;
          
          // -- check if receiver acc(access(a, j), write) is injective
            assert {:msg "  Method call might fail. Quantified resource access(a, j) might not be injective. (block_array.vpr@28.9--28.31) [200517]"}
              (forall j_8_2: int, j_8_3: int ::
              { neverTriggered5(j_8_2), neverTriggered5(j_8_3) }
              (((j_8_2 != j_8_3 && (j_8_2 >= 0 && (j_8_2 < (len(a_2): int) && j_8_2 mod 2 == 0))) && (j_8_3 >= 0 && (j_8_3 < (len(a_2): int) && j_8_3 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_8_2 != j_8_3
            );
          
          // -- Define Inverse Function
            assume (forall j_8_2: int ::
              { Heap[null, access(a_2, j_8_2)] } { Mask[null, access(a_2, j_8_2)] }
              (j_8_2 >= 0 && (j_8_2 < (len(a_2): int) && j_8_2 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv5(a_2, j_8_2) == j_8_2 && qpRange5(a_2, j_8_2)
            );
            assume (forall a_5_1_1: IArrayDomainType, i_5_1_1: int ::
              { invRecv5(a_5_1_1, i_5_1_1) }
              ((invRecv5(a_5_1_1, i_5_1_1) >= 0 && (invRecv5(a_5_1_1, i_5_1_1) < (len(a_2): int) && invRecv5(a_5_1_1, i_5_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange5(a_5_1_1, i_5_1_1) ==> a_2 == a_5_1_1 && invRecv5(a_5_1_1, i_5_1_1) == i_5_1_1
            );
          
          // -- Define updated permissions
            assume (forall a_5_1_1: IArrayDomainType, i_5_1_1: int ::
              { QPMask[null, access(a_5_1_1, i_5_1_1)] }
              ((invRecv5(a_5_1_1, i_5_1_1) >= 0 && (invRecv5(a_5_1_1, i_5_1_1) < (len(a_2): int) && invRecv5(a_5_1_1, i_5_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange5(a_5_1_1, i_5_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_5_1_1 && invRecv5(a_5_1_1, i_5_1_1) == i_5_1_1) && QPMask[null, access(a_5_1_1, i_5_1_1)] == Mask[null, access(a_5_1_1, i_5_1_1)] + FullPerm
            );
          
          // -- Define independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
            assume (forall a_5_1_1: IArrayDomainType, i_5_1_1: int ::
              { QPMask[null, access(a_5_1_1, i_5_1_1)] }
              !(((invRecv5(a_5_1_1, i_5_1_1) >= 0 && (invRecv5(a_5_1_1, i_5_1_1) < (len(a_2): int) && invRecv5(a_5_1_1, i_5_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange5(a_5_1_1, i_5_1_1)) ==> QPMask[null, access(a_5_1_1, i_5_1_1)] == Mask[null, access(a_5_1_1, i_5_1_1)]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(access(a, i), write) -- block_array.vpr@29.9--29.28
        assume access#trigger(Heap, access(a_2, i));
        assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding access(a, i) might fail. There might be insufficient permission to access access(a, i) (block_array.vpr@29.9--29.28) [200520]"}
            perm <= Mask[null, access(a_2, i)];
        }
        Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, access(a_2, i))) {
            havoc newVersion;
            Heap := Heap[null, access(a_2, i):=newVersion];
          }
        if (i mod 2 == 0) {
          perm := FullPerm;
          assume (loc(a_2, i): Ref) != null;
          Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume (loc(a_2, i + 1): Ref) != null;
          Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: sum := sum + loc(a, i).val + loc(a, i + 1).val -- block_array.vpr@30.9--30.53
        
        // -- Check definedness of sum + loc(a, i).val + loc(a, i + 1).val
          assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@30.9--30.53) [200523]"}
            HasDirectPerm(Mask, (loc(a_2, i): Ref), val);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@30.9--30.53) [200524]"}
            HasDirectPerm(Mask, (loc(a_2, i + 1): Ref), val);
        sum_3 := sum_3 + Heap[(loc(a_2, i): Ref), val] + Heap[(loc(a_2, i + 1): Ref), val];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(access(a, i), write) -- block_array.vpr@31.9--31.26
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (i mod 2 == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding access(a, i) might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@31.9--31.26) [200527]"}
              perm <= Mask[(loc(a_2, i): Ref), val];
          }
          Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding access(a, i) might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@31.9--31.26) [200529]"}
              perm <= Mask[(loc(a_2, i + 1): Ref), val];
          }
          Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] - perm];
        }
        perm := FullPerm;
        Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume access#trigger(Heap, access(a_2, i));
        assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, access(a_2, i))) {
          Heap := Heap[null, access#sm(a_2, i):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, access(a_2, i):=freshVersion];
        }
        if (i mod 2 == 0) {
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: unfold acc(access(a, i), write) -- block_array.vpr@33.9--33.28
        assume access#trigger(Heap, access(a_2, i));
        assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding access(a, i) might fail. There might be insufficient permission to access access(a, i) (block_array.vpr@33.9--33.28) [200533]"}
            perm <= Mask[null, access(a_2, i)];
        }
        Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, access(a_2, i))) {
            havoc newVersion;
            Heap := Heap[null, access(a_2, i):=newVersion];
          }
        if (i mod 2 == 0) {
          perm := FullPerm;
          assume (loc(a_2, i): Ref) != null;
          Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume (loc(a_2, i + 1): Ref) != null;
          Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: sum := loc(a, i).val + loc(a, i + 1).val -- block_array.vpr@34.9--34.47
        
        // -- Check definedness of loc(a, i).val + loc(a, i + 1).val
          assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@34.9--34.47) [200536]"}
            HasDirectPerm(Mask, (loc(a_2, i): Ref), val);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@34.9--34.47) [200537]"}
            HasDirectPerm(Mask, (loc(a_2, i + 1): Ref), val);
        sum_3 := Heap[(loc(a_2, i): Ref), val] + Heap[(loc(a_2, i + 1): Ref), val];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(access(a, i), write) -- block_array.vpr@35.9--35.26
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (i mod 2 == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding access(a, i) might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@35.9--35.26) [200540]"}
              perm <= Mask[(loc(a_2, i): Ref), val];
          }
          Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding access(a, i) might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@35.9--35.26) [200542]"}
              perm <= Mask[(loc(a_2, i + 1): Ref), val];
          }
          Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] - perm];
        }
        perm := FullPerm;
        Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume access#trigger(Heap, access(a_2, i));
        assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, access(a_2, i))) {
          Heap := Heap[null, access#sm(a_2, i):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, access(a_2, i):=freshVersion];
        }
        if (i mod 2 == 0) {
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of totalSum might not hold. Assertion i >= 0 might not hold. (block_array.vpr@24.9--24.30) [200544]"}
      i >= 0;
    assert {:msg "  Postcondition of totalSum might not hold. Assertion i <= len(a) might not hold. (block_array.vpr@24.9--24.30) [200545]"}
      i <= (len(a_2): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(access(a, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource access(a, j) might not be injective. (block_array.vpr@25.9--25.79) [200546]"}
        (forall j_6_2: int, j_6_3: int ::
        { neverTriggered3(j_6_2), neverTriggered3(j_6_3) }
        (((j_6_2 != j_6_3 && (j_6_2 >= 0 && (j_6_2 < (len(a_2): int) && j_6_2 mod 2 == 0))) && (j_6_3 >= 0 && (j_6_3 < (len(a_2): int) && j_6_3 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_6_2 != j_6_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of totalSum might not hold. There might be insufficient permission to access access(a, j) (block_array.vpr@25.9--25.79) [200547]"}
        (forall j_6_2: int ::
        { Heap[null, access(a_2, j_6_2)] } { Mask[null, access(a_2, j_6_2)] }
        j_6_2 >= 0 && (j_6_2 < (len(a_2): int) && j_6_2 mod 2 == 0) ==> Mask[null, access(a_2, j_6_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(access(a, j), write)
      assume (forall j_6_2: int ::
        { Heap[null, access(a_2, j_6_2)] } { Mask[null, access(a_2, j_6_2)] }
        (j_6_2 >= 0 && (j_6_2 < (len(a_2): int) && j_6_2 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv3(a_2, j_6_2) == j_6_2 && qpRange3(a_2, j_6_2)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_3_1: int ::
        { invRecv3(a_3_1_1, i_3_1) }
        ((invRecv3(a_3_1_1, i_3_1) >= 0 && (invRecv3(a_3_1_1, i_3_1) < (len(a_2): int) && invRecv3(a_3_1_1, i_3_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_3_1) ==> a_2 == a_3_1_1 && invRecv3(a_3_1_1, i_3_1) == i_3_1
      );
    
    // -- assume permission updates
      assume (forall a_3_1_1: IArrayDomainType, i_3_1: int ::
        { QPMask[null, access(a_3_1_1, i_3_1)] }
        ((invRecv3(a_3_1_1, i_3_1) >= 0 && (invRecv3(a_3_1_1, i_3_1) < (len(a_2): int) && invRecv3(a_3_1_1, i_3_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_3_1) ==> (a_2 == a_3_1_1 && invRecv3(a_3_1_1, i_3_1) == i_3_1) && QPMask[null, access(a_3_1_1, i_3_1)] == Mask[null, access(a_3_1_1, i_3_1)] - FullPerm
      );
      assume (forall a_3_1_1: IArrayDomainType, i_3_1: int ::
        { QPMask[null, access(a_3_1_1, i_3_1)] }
        !(((invRecv3(a_3_1_1, i_3_1) >= 0 && (invRecv3(a_3_1_1, i_3_1) < (len(a_2): int) && invRecv3(a_3_1_1, i_3_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_3_1)) ==> QPMask[null, access(a_3_1_1, i_3_1)] == Mask[null, access(a_3_1_1, i_3_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method setVal
// ==================================================

procedure setVal(a_2: IArrayDomainType, i: int, newVal: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_2: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var j_16: int;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_i: int;
  var ExhaleHeap: HeapType;
  var j_4: int;
  var j_17: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var j_11_1: int;
  var j_13_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i >= 0;
    assume i < (len(a_2): int);
    assume state(Heap, Mask);
    assume i mod 2 == 0;
    assume state(Heap, Mask);
    assume (len(a_2): int) mod 2 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int ::j >= 0 && (j < len(a) && j % 2 == 0) ==> acc(access(a, j), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(access(a, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource access(a, j) might not be injective. (block_array.vpr@45.10--45.80) [200548]"}
        (forall j_1: int, j_1_1: int ::
        { neverTriggered6(j_1), neverTriggered6(j_1_1) }
        (((j_1 != j_1_1 && (j_1 >= 0 && (j_1 < (len(a_2): int) && j_1 mod 2 == 0))) && (j_1_1 >= 0 && (j_1_1 < (len(a_2): int) && j_1_1 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_1 != j_1_1
      );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Heap[null, access(a_2, j_1)] } { Mask[null, access(a_2, j_1)] }
        (j_1 >= 0 && (j_1 < (len(a_2): int) && j_1 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv6(a_2, j_1) == j_1 && qpRange6(a_2, j_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_1_1_1: int ::
        { invRecv6(a_1_1_1, i_1_1_1) }
        ((invRecv6(a_1_1_1, i_1_1_1) >= 0 && (invRecv6(a_1_1_1, i_1_1_1) < (len(a_2): int) && invRecv6(a_1_1_1, i_1_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange6(a_1_1_1, i_1_1_1) ==> a_2 == a_1_1_1 && invRecv6(a_1_1_1, i_1_1_1) == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_1_1_1: int ::
        { QPMask[null, access(a_1_1_1, i_1_1_1)] }
        ((invRecv6(a_1_1_1, i_1_1_1) >= 0 && (invRecv6(a_1_1_1, i_1_1_1) < (len(a_2): int) && invRecv6(a_1_1_1, i_1_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange6(a_1_1_1, i_1_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv6(a_1_1_1, i_1_1_1) == i_1_1_1) && QPMask[null, access(a_1_1_1, i_1_1_1)] == Mask[null, access(a_1_1_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_1_1_1: int ::
        { QPMask[null, access(a_1_1_1, i_1_1_1)] }
        !(((invRecv6(a_1_1_1, i_1_1_1) >= 0 && (invRecv6(a_1_1_1, i_1_1_1) < (len(a_2): int) && invRecv6(a_1_1_1, i_1_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange6(a_1_1_1, i_1_1_1)) ==> QPMask[null, access(a_1_1_1, i_1_1_1)] == Mask[null, access(a_1_1_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume i >= 0;
    assume i < (len(a_2): int);
    assume state(PostHeap, PostMask);
    assume (len(a_2): int) mod 2 == (len(a_2): int) mod 2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int ::j >= 0 && (j < len(a) && j % 2 == 0) ==> acc(access(a, j), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(access(a, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource access(a, j) might not be injective. (block_array.vpr@48.9--48.79) [200549]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered7(j_4_1), neverTriggered7(j_4_2) }
        (((j_4_1 != j_4_2 && (j_4_1 >= 0 && (j_4_1 < (len(a_2): int) && j_4_1 mod 2 == 0))) && (j_4_2 >= 0 && (j_4_2 < (len(a_2): int) && j_4_2 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_4_1 != j_4_2
      );
    
    // -- Define Inverse Function
      assume (forall j_4_1: int ::
        { PostHeap[null, access(a_2, j_4_1)] } { PostMask[null, access(a_2, j_4_1)] }
        (j_4_1 >= 0 && (j_4_1 < (len(a_2): int) && j_4_1 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv7(a_2, j_4_1) == j_4_1 && qpRange7(a_2, j_4_1)
      );
      assume (forall a_2_1: IArrayDomainType, i_2_1: int ::
        { invRecv7(a_2_1, i_2_1) }
        ((invRecv7(a_2_1, i_2_1) >= 0 && (invRecv7(a_2_1, i_2_1) < (len(a_2): int) && invRecv7(a_2_1, i_2_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange7(a_2_1, i_2_1) ==> a_2 == a_2_1 && invRecv7(a_2_1, i_2_1) == i_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: IArrayDomainType, i_2_1: int ::
        { QPMask[null, access(a_2_1, i_2_1)] }
        ((invRecv7(a_2_1, i_2_1) >= 0 && (invRecv7(a_2_1, i_2_1) < (len(a_2): int) && invRecv7(a_2_1, i_2_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange7(a_2_1, i_2_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1 && invRecv7(a_2_1, i_2_1) == i_2_1) && QPMask[null, access(a_2_1, i_2_1)] == PostMask[null, access(a_2_1, i_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: IArrayDomainType, i_2_1: int ::
        { QPMask[null, access(a_2_1, i_2_1)] }
        !(((invRecv7(a_2_1, i_2_1) >= 0 && (invRecv7(a_2_1, i_2_1) < (len(a_2): int) && invRecv7(a_2_1, i_2_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange7(a_2_1, i_2_1)) ==> QPMask[null, access(a_2_1, i_2_1)] == PostMask[null, access(a_2_1, i_2_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
      if (*) {
        if (j_2 >= 0 && (j_2 < i && j_2 mod 2 == 0)) {
          UnfoldingHeap := PostHeap;
          UnfoldingMask := PostMask;
          assume access#trigger(UnfoldingHeap, access(a_2, j_2));
          assume UnfoldingHeap[null, access(a_2, j_2)] == FrameFragment((if j_2 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_2): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_2 + 1): Ref), val])) else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access access(a, j) (block_array.vpr@50.9--50.157) [200550]"}
              perm <= UnfoldingMask[null, access(a_2, j_2)];
          }
          UnfoldingMask := UnfoldingMask[null, access(a_2, j_2):=UnfoldingMask[null, access(a_2, j_2)] - perm];
          if (j_2 mod 2 == 0) {
            perm := FullPerm;
            assume (loc(a_2, j_2): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_2): Ref), val:=UnfoldingMask[(loc(a_2, j_2): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume (loc(a_2, j_2 + 1): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_2 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_2 + 1): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (block_array.vpr@50.9--50.157) [200551]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, j_2): Ref), val);
          
          // -- Free assumptions (exp module)
            if (j_2 mod 2 == 0) {
              PostHeap := PostHeap[null, access#sm(a_2, j_2):=PostHeap[null, access#sm(a_2, j_2)][(loc(a_2, j_2): Ref), val:=true]];
              PostHeap := PostHeap[null, access#sm(a_2, j_2):=PostHeap[null, access#sm(a_2, j_2)][(loc(a_2, j_2 + 1): Ref), val:=true]];
            }
            assume state(PostHeap, PostMask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume access#trigger(UnfoldingHeap, access(a_2, j_2));
          assume UnfoldingHeap[null, access(a_2, j_2)] == FrameFragment((if j_2 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_2): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_2 + 1): Ref), val])) else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access access(a, j) (block_array.vpr@50.9--50.157) [200552]"}
              perm <= UnfoldingMask[null, access(a_2, j_2)];
          }
          UnfoldingMask := UnfoldingMask[null, access(a_2, j_2):=UnfoldingMask[null, access(a_2, j_2)] - perm];
          if (j_2 mod 2 == 0) {
            perm := FullPerm;
            assume (loc(a_2, j_2): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_2): Ref), val:=UnfoldingMask[(loc(a_2, j_2): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume (loc(a_2, j_2 + 1): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_2 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_2 + 1): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (block_array.vpr@50.9--50.157) [200553]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, j_2): Ref), val);
          
          // -- Free assumptions (exp module)
            if (j_2 mod 2 == 0) {
              PostHeap := PostHeap[null, access#sm(a_2, j_2):=PostHeap[null, access#sm(a_2, j_2)][(loc(a_2, j_2): Ref), val:=true]];
              PostHeap := PostHeap[null, access#sm(a_2, j_2):=PostHeap[null, access#sm(a_2, j_2)][(loc(a_2, j_2 + 1): Ref), val:=true]];
            }
            assume state(PostHeap, PostMask);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { (loc(a_2, j_7_1): Ref) }
      j_7_1 >= 0 && (j_7_1 < i && j_7_1 mod 2 == 0) ==> PostHeap[(loc(a_2, j_7_1): Ref), val] == oldHeap[(loc(a_2, j_7_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int ::j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j + 1).val) == old((unfolding acc(access(a, j), write) in loc(a, j + 1).val)))
      if (*) {
        if (j_16 >= 0 && (j_16 < i && j_16 mod 2 == 0)) {
          UnfoldingHeap := PostHeap;
          UnfoldingMask := PostMask;
          assume access#trigger(UnfoldingHeap, access(a_2, j_16));
          assume UnfoldingHeap[null, access(a_2, j_16)] == FrameFragment((if j_16 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_16): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_16 + 1): Ref), val])) else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access access(a, j) (block_array.vpr@51.9--51.161) [200554]"}
              perm <= UnfoldingMask[null, access(a_2, j_16)];
          }
          UnfoldingMask := UnfoldingMask[null, access(a_2, j_16):=UnfoldingMask[null, access(a_2, j_16)] - perm];
          if (j_16 mod 2 == 0) {
            perm := FullPerm;
            assume (loc(a_2, j_16): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_16): Ref), val:=UnfoldingMask[(loc(a_2, j_16): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume (loc(a_2, j_16 + 1): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_16 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_16 + 1): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j + 1).val (block_array.vpr@51.9--51.161) [200555]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, j_16 + 1): Ref), val);
          
          // -- Free assumptions (exp module)
            if (j_16 mod 2 == 0) {
              PostHeap := PostHeap[null, access#sm(a_2, j_16):=PostHeap[null, access#sm(a_2, j_16)][(loc(a_2, j_16): Ref), val:=true]];
              PostHeap := PostHeap[null, access#sm(a_2, j_16):=PostHeap[null, access#sm(a_2, j_16)][(loc(a_2, j_16 + 1): Ref), val:=true]];
            }
            assume state(PostHeap, PostMask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume access#trigger(UnfoldingHeap, access(a_2, j_16));
          assume UnfoldingHeap[null, access(a_2, j_16)] == FrameFragment((if j_16 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_16): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_16 + 1): Ref), val])) else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access access(a, j) (block_array.vpr@51.9--51.161) [200556]"}
              perm <= UnfoldingMask[null, access(a_2, j_16)];
          }
          UnfoldingMask := UnfoldingMask[null, access(a_2, j_16):=UnfoldingMask[null, access(a_2, j_16)] - perm];
          if (j_16 mod 2 == 0) {
            perm := FullPerm;
            assume (loc(a_2, j_16): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_16): Ref), val:=UnfoldingMask[(loc(a_2, j_16): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume (loc(a_2, j_16 + 1): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, j_16 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_16 + 1): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j + 1).val (block_array.vpr@51.9--51.161) [200557]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, j_16 + 1): Ref), val);
          
          // -- Free assumptions (exp module)
            if (j_16 mod 2 == 0) {
              PostHeap := PostHeap[null, access#sm(a_2, j_16):=PostHeap[null, access#sm(a_2, j_16)][(loc(a_2, j_16): Ref), val:=true]];
              PostHeap := PostHeap[null, access#sm(a_2, j_16):=PostHeap[null, access#sm(a_2, j_16)][(loc(a_2, j_16 + 1): Ref), val:=true]];
            }
            assume state(PostHeap, PostMask);
        }
        assume false;
      }
    assume (forall j_9_1: int ::
      
      j_9_1 >= 0 && (j_9_1 < i && j_9_1 mod 2 == 0) ==> PostHeap[(loc(a_2, j_9_1 + 1): Ref), val] == oldHeap[(loc(a_2, j_9_1 + 1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(access(a, i), write) in loc(a, i).val == newVal)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access access(a, i) (block_array.vpr@52.9--52.131) [200558]"}
          perm <= UnfoldingMask[null, access(a_2, i)];
      }
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (block_array.vpr@52.9--52.131) [200559]"}
        HasDirectPerm(UnfoldingMask, (loc(a_2, i): Ref), val);
      
      // -- Free assumptions (exp module)
        if (i mod 2 == 0) {
          PostHeap := PostHeap[null, access#sm(a_2, i):=PostHeap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
          PostHeap := PostHeap[null, access#sm(a_2, i):=PostHeap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[(loc(a_2, i): Ref), val] == newVal;
    
    // -- Check definedness of (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access access(a, i) (block_array.vpr@52.9--52.131) [200560]"}
          perm <= UnfoldingMask[null, access(a_2, i)];
      }
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@52.9--52.131) [200561]"}
        HasDirectPerm(UnfoldingMask, (loc(a_2, i + 1): Ref), val);
      
      // -- Free assumptions (exp module)
        if (i mod 2 == 0) {
          PostHeap := PostHeap[null, access#sm(a_2, i):=PostHeap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
          PostHeap := PostHeap[null, access#sm(a_2, i):=PostHeap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[(loc(a_2, i + 1): Ref), val] == newVal;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(access(a, i), write) -- block_array.vpr@55.5--55.23
    assume access#trigger(Heap, access(a_2, i));
    assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding access(a, i) might fail. There might be insufficient permission to access access(a, i) (block_array.vpr@55.5--55.23) [200564]"}
        perm <= Mask[null, access(a_2, i)];
    }
    Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, access(a_2, i))) {
        havoc newVersion;
        Heap := Heap[null, access(a_2, i):=newVersion];
      }
    if (i mod 2 == 0) {
      perm := FullPerm;
      assume (loc(a_2, i): Ref) != null;
      Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume (loc(a_2, i + 1): Ref) != null;
      Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, i).val := newVal -- block_array.vpr@56.5--56.27
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@56.5--56.27) [200567]"}
      FullPerm == Mask[(loc(a_2, i): Ref), val];
    Heap := Heap[(loc(a_2, i): Ref), val:=newVal];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, i + 1).val := newVal -- block_array.vpr@57.2--57.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@57.2--57.26) [200568]"}
      FullPerm == Mask[(loc(a_2, i + 1): Ref), val];
    Heap := Heap[(loc(a_2, i + 1): Ref), val:=newVal];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(access(a, i), write) -- block_array.vpr@58.2--58.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (i mod 2 == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding access(a, i) might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@58.2--58.18) [200571]"}
          perm <= Mask[(loc(a_2, i): Ref), val];
      }
      Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding access(a, i) might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@58.2--58.18) [200573]"}
          perm <= Mask[(loc(a_2, i + 1): Ref), val];
      }
      Mask := Mask[(loc(a_2, i + 1): Ref), val:=Mask[(loc(a_2, i + 1): Ref), val] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, access(a_2, i):=Mask[null, access(a_2, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume access#trigger(Heap, access(a_2, i));
    assume Heap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(Heap[(loc(a_2, i): Ref), val]), FrameFragment(Heap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, access(a_2, i))) {
      Heap := Heap[null, access#sm(a_2, i):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, access(a_2, i):=freshVersion];
    }
    if (i mod 2 == 0) {
      Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
      Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i + 2 < len(a)) -- block_array.vpr@60.5--63.6
    if (i + 2 < (len(a_2): int)) {
      
      // -- Translating statement: setVal(a, i + 2, newVal) -- block_array.vpr@61.14--61.36
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_i := i + 2;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method setVal might not hold. Assertion i + 2 >= 0 might not hold. (block_array.vpr@61.14--61.36) [200575]"}
            arg_i >= 0;
          assert {:msg "  The precondition of method setVal might not hold. Assertion i + 2 < len(a) might not hold. (block_array.vpr@61.14--61.36) [200576]"}
            arg_i < (len(a_2): int);
          assert {:msg "  The precondition of method setVal might not hold. Assertion (i + 2) % 2 == 0 might not hold. (block_array.vpr@61.14--61.36) [200577]"}
            arg_i mod 2 == 0;
          assert {:msg "  The precondition of method setVal might not hold. Assertion len(a) % 2 == 0 might not hold. (block_array.vpr@61.14--61.36) [200578]"}
            (len(a_2): int) mod 2 == 0;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver acc(access(a, j), write) is injective
            assert {:msg "  The precondition of method setVal might not hold. Quantified resource access(a, j) might not be injective. (block_array.vpr@61.14--61.36) [200579]"}
              (forall j_15_2: int, j_15_3: int ::
              { neverTriggered9(j_15_2), neverTriggered9(j_15_3) }
              (((j_15_2 != j_15_3 && (j_15_2 >= 0 && (j_15_2 < (len(a_2): int) && j_15_2 mod 2 == 0))) && (j_15_3 >= 0 && (j_15_3 < (len(a_2): int) && j_15_3 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_15_2 != j_15_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method setVal might not hold. There might be insufficient permission to access access(a, j) (block_array.vpr@61.14--61.36) [200580]"}
              (forall j_15_2: int ::
              { Heap[null, access(a_2, j_15_2)] } { Mask[null, access(a_2, j_15_2)] }
              j_15_2 >= 0 && (j_15_2 < (len(a_2): int) && j_15_2 mod 2 == 0) ==> Mask[null, access(a_2, j_15_2)] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver acc(access(a, j), write)
            assume (forall j_15_2: int ::
              { Heap[null, access(a_2, j_15_2)] } { Mask[null, access(a_2, j_15_2)] }
              (j_15_2 >= 0 && (j_15_2 < (len(a_2): int) && j_15_2 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv9(a_2, j_15_2) == j_15_2 && qpRange9(a_2, j_15_2)
            );
            assume (forall a_4_1_1: IArrayDomainType, i_4_1_1: int ::
              { invRecv9(a_4_1_1, i_4_1_1) }
              ((invRecv9(a_4_1_1, i_4_1_1) >= 0 && (invRecv9(a_4_1_1, i_4_1_1) < (len(a_2): int) && invRecv9(a_4_1_1, i_4_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange9(a_4_1_1, i_4_1_1) ==> a_2 == a_4_1_1 && invRecv9(a_4_1_1, i_4_1_1) == i_4_1_1
            );
          
          // -- assume permission updates
            assume (forall a_4_1_1: IArrayDomainType, i_4_1_1: int ::
              { QPMask[null, access(a_4_1_1, i_4_1_1)] }
              ((invRecv9(a_4_1_1, i_4_1_1) >= 0 && (invRecv9(a_4_1_1, i_4_1_1) < (len(a_2): int) && invRecv9(a_4_1_1, i_4_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange9(a_4_1_1, i_4_1_1) ==> (a_2 == a_4_1_1 && invRecv9(a_4_1_1, i_4_1_1) == i_4_1_1) && QPMask[null, access(a_4_1_1, i_4_1_1)] == Mask[null, access(a_4_1_1, i_4_1_1)] - FullPerm
            );
            assume (forall a_4_1_1: IArrayDomainType, i_4_1_1: int ::
              { QPMask[null, access(a_4_1_1, i_4_1_1)] }
              !(((invRecv9(a_4_1_1, i_4_1_1) >= 0 && (invRecv9(a_4_1_1, i_4_1_1) < (len(a_2): int) && invRecv9(a_4_1_1, i_4_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange9(a_4_1_1, i_4_1_1)) ==> QPMask[null, access(a_4_1_1, i_4_1_1)] == Mask[null, access(a_4_1_1, i_4_1_1)]
            );
          
          // -- assume permission updates for independent locations 
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume arg_i >= 0;
          assume arg_i < (len(a_2): int);
          assume (len(a_2): int) mod 2 == (len(a_2): int) mod 2;
          havoc QPMask;
          
          // -- check if receiver acc(access(a, j), write) is injective
            assert {:msg "  Method call might fail. Quantified resource access(a, j) might not be injective. (block_array.vpr@61.14--61.36) [200581]"}
              (forall j_16_1: int, j_16_2: int ::
              { neverTriggered10(j_16_1), neverTriggered10(j_16_2) }
              (((j_16_1 != j_16_2 && (j_16_1 >= 0 && (j_16_1 < (len(a_2): int) && j_16_1 mod 2 == 0))) && (j_16_2 >= 0 && (j_16_2 < (len(a_2): int) && j_16_2 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_16_1 != j_16_2
            );
          
          // -- Define Inverse Function
            assume (forall j_16_1: int ::
              { Heap[null, access(a_2, j_16_1)] } { Mask[null, access(a_2, j_16_1)] }
              (j_16_1 >= 0 && (j_16_1 < (len(a_2): int) && j_16_1 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv10(a_2, j_16_1) == j_16_1 && qpRange10(a_2, j_16_1)
            );
            assume (forall a_5_1_1: IArrayDomainType, i_5_1_1: int ::
              { invRecv10(a_5_1_1, i_5_1_1) }
              ((invRecv10(a_5_1_1, i_5_1_1) >= 0 && (invRecv10(a_5_1_1, i_5_1_1) < (len(a_2): int) && invRecv10(a_5_1_1, i_5_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange10(a_5_1_1, i_5_1_1) ==> a_2 == a_5_1_1 && invRecv10(a_5_1_1, i_5_1_1) == i_5_1_1
            );
          
          // -- Define updated permissions
            assume (forall a_5_1_1: IArrayDomainType, i_5_1_1: int ::
              { QPMask[null, access(a_5_1_1, i_5_1_1)] }
              ((invRecv10(a_5_1_1, i_5_1_1) >= 0 && (invRecv10(a_5_1_1, i_5_1_1) < (len(a_2): int) && invRecv10(a_5_1_1, i_5_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange10(a_5_1_1, i_5_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_5_1_1 && invRecv10(a_5_1_1, i_5_1_1) == i_5_1_1) && QPMask[null, access(a_5_1_1, i_5_1_1)] == Mask[null, access(a_5_1_1, i_5_1_1)] + FullPerm
            );
          
          // -- Define independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
            assume (forall a_5_1_1: IArrayDomainType, i_5_1_1: int ::
              { QPMask[null, access(a_5_1_1, i_5_1_1)] }
              !(((invRecv10(a_5_1_1, i_5_1_1) >= 0 && (invRecv10(a_5_1_1, i_5_1_1) < (len(a_2): int) && invRecv10(a_5_1_1, i_5_1_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange10(a_5_1_1, i_5_1_1)) ==> QPMask[null, access(a_5_1_1, i_5_1_1)] == Mask[null, access(a_5_1_1, i_5_1_1)]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall j_18_1: int ::
            { (loc(a_2, j_18_1): Ref) }
            j_18_1 >= 0 && (j_18_1 < arg_i && j_18_1 mod 2 == 0) ==> Heap[(loc(a_2, j_18_1): Ref), val] == PreCallHeap[(loc(a_2, j_18_1): Ref), val]
          );
          assume (forall j_19_2: int ::
            
            j_19_2 >= 0 && (j_19_2 < arg_i && j_19_2 mod 2 == 0) ==> Heap[(loc(a_2, j_19_2 + 1): Ref), val] == PreCallHeap[(loc(a_2, j_19_2 + 1): Ref), val]
          );
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume access#trigger(UnfoldingHeap, access(a_2, arg_i));
            assume UnfoldingHeap[null, access(a_2, arg_i)] == FrameFragment((if arg_i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, arg_i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, arg_i + 1): Ref), val])) else EmptyFrame));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, access(a_2, arg_i):=UnfoldingMask[null, access(a_2, arg_i)] - perm];
            if (arg_i mod 2 == 0) {
              perm := FullPerm;
              assume (loc(a_2, arg_i): Ref) != null;
              UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i): Ref), val:=UnfoldingMask[(loc(a_2, arg_i): Ref), val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume (loc(a_2, arg_i + 1): Ref) != null;
              UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val:=UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[(loc(a_2, arg_i): Ref), val] == newVal;
          
          // -- Free assumptions (inhale module)
            if (arg_i mod 2 == 0) {
              Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i): Ref), val:=true]];
              Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i + 1): Ref), val:=true]];
            }
            assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume access#trigger(UnfoldingHeap, access(a_2, arg_i));
            assume UnfoldingHeap[null, access(a_2, arg_i)] == FrameFragment((if arg_i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, arg_i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, arg_i + 1): Ref), val])) else EmptyFrame));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, access(a_2, arg_i):=UnfoldingMask[null, access(a_2, arg_i)] - perm];
            if (arg_i mod 2 == 0) {
              perm := FullPerm;
              assume (loc(a_2, arg_i): Ref) != null;
              UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i): Ref), val:=UnfoldingMask[(loc(a_2, arg_i): Ref), val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume (loc(a_2, arg_i + 1): Ref) != null;
              UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val:=UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[(loc(a_2, arg_i + 1): Ref), val] == newVal;
          
          // -- Free assumptions (inhale module)
            if (arg_i mod 2 == 0) {
              Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i): Ref), val:=true]];
              Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i + 1): Ref), val:=true]];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < arg_i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))) without enforcing the checks (e.g., to gain more information)
            if (*) {
              if (j_4 >= 0 && (j_4 < arg_i && j_4 mod 2 == 0)) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume access#trigger(UnfoldingHeap, access(a_2, j_4));
                assume UnfoldingHeap[null, access(a_2, j_4)] == FrameFragment((if j_4 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_4): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_4 + 1): Ref), val])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  An internal error occurred. There might be insufficient permission to access access(a, j) (block_array.vpr@50.9--50.157) [200582]"}
                    perm <= UnfoldingMask[null, access(a_2, j_4)];
                }
                UnfoldingMask := UnfoldingMask[null, access(a_2, j_4):=UnfoldingMask[null, access(a_2, j_4)] - perm];
                if (j_4 mod 2 == 0) {
                  perm := FullPerm;
                  assume (loc(a_2, j_4): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_4): Ref), val:=UnfoldingMask[(loc(a_2, j_4): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                  perm := FullPerm;
                  assume (loc(a_2, j_4 + 1): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_4 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_4 + 1): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (j_4 mod 2 == 0) {
                    Heap := Heap[null, access#sm(a_2, j_4):=Heap[null, access#sm(a_2, j_4)][(loc(a_2, j_4): Ref), val:=true]];
                    Heap := Heap[null, access#sm(a_2, j_4):=Heap[null, access#sm(a_2, j_4)][(loc(a_2, j_4 + 1): Ref), val:=true]];
                  }
                  assume state(Heap, Mask);
                UnfoldingHeap := PreCallHeap;
                UnfoldingMask := PreCallMask;
                assume access#trigger(UnfoldingHeap, access(a_2, j_4));
                assume UnfoldingHeap[null, access(a_2, j_4)] == FrameFragment((if j_4 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_4): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_4 + 1): Ref), val])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  An internal error occurred. There might be insufficient permission to access access(a, j) (block_array.vpr@50.9--50.157) [200583]"}
                    perm <= UnfoldingMask[null, access(a_2, j_4)];
                }
                UnfoldingMask := UnfoldingMask[null, access(a_2, j_4):=UnfoldingMask[null, access(a_2, j_4)] - perm];
                if (j_4 mod 2 == 0) {
                  perm := FullPerm;
                  assume (loc(a_2, j_4): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_4): Ref), val:=UnfoldingMask[(loc(a_2, j_4): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                  perm := FullPerm;
                  assume (loc(a_2, j_4 + 1): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_4 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_4 + 1): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (j_4 mod 2 == 0) {
                    Heap := Heap[null, access#sm(a_2, j_4):=Heap[null, access#sm(a_2, j_4)][(loc(a_2, j_4): Ref), val:=true]];
                    Heap := Heap[null, access#sm(a_2, j_4):=Heap[null, access#sm(a_2, j_4)][(loc(a_2, j_4 + 1): Ref), val:=true]];
                  }
                  assume state(Heap, Mask);
              }
              assume false;
            }
          
          // -- Execute definedness check of (forall j: Int ::j >= 0 && (j < arg_i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j + 1).val) == old((unfolding acc(access(a, j), write) in loc(a, j + 1).val))) without enforcing the checks (e.g., to gain more information)
            if (*) {
              if (j_17 >= 0 && (j_17 < arg_i && j_17 mod 2 == 0)) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume access#trigger(UnfoldingHeap, access(a_2, j_17));
                assume UnfoldingHeap[null, access(a_2, j_17)] == FrameFragment((if j_17 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_17): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_17 + 1): Ref), val])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  An internal error occurred. There might be insufficient permission to access access(a, j) (block_array.vpr@51.9--51.161) [200584]"}
                    perm <= UnfoldingMask[null, access(a_2, j_17)];
                }
                UnfoldingMask := UnfoldingMask[null, access(a_2, j_17):=UnfoldingMask[null, access(a_2, j_17)] - perm];
                if (j_17 mod 2 == 0) {
                  perm := FullPerm;
                  assume (loc(a_2, j_17): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_17): Ref), val:=UnfoldingMask[(loc(a_2, j_17): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                  perm := FullPerm;
                  assume (loc(a_2, j_17 + 1): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_17 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_17 + 1): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (j_17 mod 2 == 0) {
                    Heap := Heap[null, access#sm(a_2, j_17):=Heap[null, access#sm(a_2, j_17)][(loc(a_2, j_17): Ref), val:=true]];
                    Heap := Heap[null, access#sm(a_2, j_17):=Heap[null, access#sm(a_2, j_17)][(loc(a_2, j_17 + 1): Ref), val:=true]];
                  }
                  assume state(Heap, Mask);
                UnfoldingHeap := PreCallHeap;
                UnfoldingMask := PreCallMask;
                assume access#trigger(UnfoldingHeap, access(a_2, j_17));
                assume UnfoldingHeap[null, access(a_2, j_17)] == FrameFragment((if j_17 mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, j_17): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, j_17 + 1): Ref), val])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  An internal error occurred. There might be insufficient permission to access access(a, j) (block_array.vpr@51.9--51.161) [200585]"}
                    perm <= UnfoldingMask[null, access(a_2, j_17)];
                }
                UnfoldingMask := UnfoldingMask[null, access(a_2, j_17):=UnfoldingMask[null, access(a_2, j_17)] - perm];
                if (j_17 mod 2 == 0) {
                  perm := FullPerm;
                  assume (loc(a_2, j_17): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_17): Ref), val:=UnfoldingMask[(loc(a_2, j_17): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                  perm := FullPerm;
                  assume (loc(a_2, j_17 + 1): Ref) != null;
                  UnfoldingMask := UnfoldingMask[(loc(a_2, j_17 + 1): Ref), val:=UnfoldingMask[(loc(a_2, j_17 + 1): Ref), val] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (j_17 mod 2 == 0) {
                    Heap := Heap[null, access#sm(a_2, j_17):=Heap[null, access#sm(a_2, j_17)][(loc(a_2, j_17): Ref), val:=true]];
                    Heap := Heap[null, access#sm(a_2, j_17):=Heap[null, access#sm(a_2, j_17)][(loc(a_2, j_17 + 1): Ref), val:=true]];
                  }
                  assume state(Heap, Mask);
              }
              assume false;
            }
          
          // -- Execute definedness check of (unfolding acc(access(a, arg_i), write) in loc(a, arg_i).val == newVal) && (unfolding acc(access(a, arg_i), write) in loc(a, arg_i + 1).val == newVal) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume access#trigger(UnfoldingHeap, access(a_2, arg_i));
            assume UnfoldingHeap[null, access(a_2, arg_i)] == FrameFragment((if arg_i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, arg_i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, arg_i + 1): Ref), val])) else EmptyFrame));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access access(a, i + 2) (block_array.vpr@52.9--52.131) [200586]"}
                perm <= UnfoldingMask[null, access(a_2, arg_i)];
            }
            UnfoldingMask := UnfoldingMask[null, access(a_2, arg_i):=UnfoldingMask[null, access(a_2, arg_i)] - perm];
            if (arg_i mod 2 == 0) {
              perm := FullPerm;
              assume (loc(a_2, arg_i): Ref) != null;
              UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i): Ref), val:=UnfoldingMask[(loc(a_2, arg_i): Ref), val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume (loc(a_2, arg_i + 1): Ref) != null;
              UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val:=UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              if (arg_i mod 2 == 0) {
                Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i): Ref), val:=true]];
                Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i + 1): Ref), val:=true]];
              }
              assume state(Heap, Mask);
            if (Heap[(loc(a_2, arg_i): Ref), val] == newVal) {
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume access#trigger(UnfoldingHeap, access(a_2, arg_i));
              assume UnfoldingHeap[null, access(a_2, arg_i)] == FrameFragment((if arg_i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, arg_i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, arg_i + 1): Ref), val])) else EmptyFrame));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  An internal error occurred. There might be insufficient permission to access access(a, i + 2) (block_array.vpr@52.9--52.131) [200587]"}
                  perm <= UnfoldingMask[null, access(a_2, arg_i)];
              }
              UnfoldingMask := UnfoldingMask[null, access(a_2, arg_i):=UnfoldingMask[null, access(a_2, arg_i)] - perm];
              if (arg_i mod 2 == 0) {
                perm := FullPerm;
                assume (loc(a_2, arg_i): Ref) != null;
                UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i): Ref), val:=UnfoldingMask[(loc(a_2, arg_i): Ref), val] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                assume (loc(a_2, arg_i + 1): Ref) != null;
                UnfoldingMask := UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val:=UnfoldingMask[(loc(a_2, arg_i + 1): Ref), val] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                if (arg_i mod 2 == 0) {
                  Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i): Ref), val:=true]];
                  Heap := Heap[null, access#sm(a_2, arg_i):=Heap[null, access#sm(a_2, arg_i)][(loc(a_2, arg_i + 1): Ref), val:=true]];
                }
                assume state(Heap, Mask);
            }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (unfolding acc(access(a, i + 2), write) in
  //     loc(a, i + 2).val == newVal) &&
  //   (unfolding acc(access(a, i + 2), write) in loc(a, i + 3).val == newVal) -- block_array.vpr@62.14--62.149
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (unfolding acc(access(a, i + 2), write) in loc(a, i + 2).val == newVal)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume access#trigger(UnfoldingHeap, access(a_2, i + 2));
          assume UnfoldingHeap[null, access(a_2, i + 2)] == FrameFragment((if (i + 2) mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i + 2): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 2 + 1): Ref), val])) else EmptyFrame));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access access(a, i + 2) (block_array.vpr@62.21--62.149) [200588]"}
              perm <= UnfoldingMask[null, access(a_2, i + 2)];
          }
          UnfoldingMask := UnfoldingMask[null, access(a_2, i + 2):=UnfoldingMask[null, access(a_2, i + 2)] - perm];
          if ((i + 2) mod 2 == 0) {
            perm := FullPerm;
            assume (loc(a_2, i + 2): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, i + 2): Ref), val:=UnfoldingMask[(loc(a_2, i + 2): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume (loc(a_2, i + 2 + 1): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, i + 2 + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 2 + 1): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, i + 2).val (block_array.vpr@62.21--62.149) [200589]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, i + 2): Ref), val);
          
          // -- Free assumptions (exp module)
            if ((i + 2) mod 2 == 0) {
              Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2): Ref), val:=true]];
              Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2 + 1): Ref), val:=true]];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion loc(a, i + 2).val == newVal might not hold. (block_array.vpr@62.21--62.149) [200590]"}
          Heap[(loc(a_2, i + 2): Ref), val] == newVal;
        
        // -- Check definedness of (unfolding acc(access(a, i + 2), write) in loc(a, i + 3).val == newVal)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume access#trigger(UnfoldingHeap, access(a_2, i + 2));
          assume UnfoldingHeap[null, access(a_2, i + 2)] == FrameFragment((if (i + 2) mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i + 2): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 2 + 1): Ref), val])) else EmptyFrame));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access access(a, i + 2) (block_array.vpr@62.21--62.149) [200591]"}
              perm <= UnfoldingMask[null, access(a_2, i + 2)];
          }
          UnfoldingMask := UnfoldingMask[null, access(a_2, i + 2):=UnfoldingMask[null, access(a_2, i + 2)] - perm];
          if ((i + 2) mod 2 == 0) {
            perm := FullPerm;
            assume (loc(a_2, i + 2): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, i + 2): Ref), val:=UnfoldingMask[(loc(a_2, i + 2): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume (loc(a_2, i + 2 + 1): Ref) != null;
            UnfoldingMask := UnfoldingMask[(loc(a_2, i + 2 + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 2 + 1): Ref), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, i + 3).val (block_array.vpr@62.21--62.149) [200592]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, i + 3): Ref), val);
          
          // -- Free assumptions (exp module)
            if ((i + 2) mod 2 == 0) {
              Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2): Ref), val:=true]];
              Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2 + 1): Ref), val:=true]];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion loc(a, i + 3).val == newVal might not hold. (block_array.vpr@62.21--62.149) [200593]"}
          Heap[(loc(a_2, i + 3): Ref), val] == newVal;
        
        // -- Free assumptions (exhale module)
          if ((i + 2) mod 2 == 0) {
            Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2): Ref), val:=true]];
            Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2 + 1): Ref), val:=true]];
          }
          assume state(Heap, Mask);
          if ((i + 2) mod 2 == 0) {
            Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2): Ref), val:=true]];
            Heap := Heap[null, access#sm(a_2, i + 2):=Heap[null, access#sm(a_2, i + 2)][(loc(a_2, i + 2 + 1): Ref), val:=true]];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(access(a, i), write) in loc(a, i).val == newVal) &&
  //   (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal) -- block_array.vpr@64.5--64.134
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(access(a, i), write) in loc(a, i).val == newVal)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access access(a, i) (block_array.vpr@64.12--64.134) [200594]"}
          perm <= UnfoldingMask[null, access(a_2, i)];
      }
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@64.12--64.134) [200595]"}
        HasDirectPerm(UnfoldingMask, (loc(a_2, i): Ref), val);
      
      // -- Free assumptions (exp module)
        if (i mod 2 == 0) {
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion loc(a, i).val == newVal might not hold. (block_array.vpr@64.12--64.134) [200596]"}
      Heap[(loc(a_2, i): Ref), val] == newVal;
    
    // -- Check definedness of (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access access(a, i) (block_array.vpr@64.12--64.134) [200597]"}
          perm <= UnfoldingMask[null, access(a_2, i)];
      }
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, i + 1).val (block_array.vpr@64.12--64.134) [200598]"}
        HasDirectPerm(UnfoldingMask, (loc(a_2, i + 1): Ref), val);
      
      // -- Free assumptions (exp module)
        if (i mod 2 == 0) {
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
          Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion loc(a, i + 1).val == newVal might not hold. (block_array.vpr@64.12--64.134) [200599]"}
      Heap[(loc(a_2, i + 1): Ref), val] == newVal;
    
    // -- Free assumptions (exhale module)
      if (i mod 2 == 0) {
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
      }
      assume state(Heap, Mask);
      if (i mod 2 == 0) {
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of setVal might not hold. Assertion i >= 0 might not hold. (block_array.vpr@46.9--46.29) [200600]"}
      i >= 0;
    assert {:msg "  Postcondition of setVal might not hold. Assertion i < len(a) might not hold. (block_array.vpr@46.9--46.29) [200601]"}
      i < (len(a_2): int);
    assert {:msg "  Postcondition of setVal might not hold. Assertion len(a) % 2 == old(len(a) % 2) might not hold. (block_array.vpr@47.9--47.34) [200602]"}
      (len(a_2): int) mod 2 == (len(a_2): int) mod 2;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(access(a, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource access(a, j) might not be injective. (block_array.vpr@48.9--48.79) [200603]"}
        (forall j_10_2: int, j_10_3: int ::
        { neverTriggered8(j_10_2), neverTriggered8(j_10_3) }
        (((j_10_2 != j_10_3 && (j_10_2 >= 0 && (j_10_2 < (len(a_2): int) && j_10_2 mod 2 == 0))) && (j_10_3 >= 0 && (j_10_3 < (len(a_2): int) && j_10_3 mod 2 == 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || j_10_2 != j_10_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of setVal might not hold. There might be insufficient permission to access access(a, j) (block_array.vpr@48.9--48.79) [200604]"}
        (forall j_10_2: int ::
        { Heap[null, access(a_2, j_10_2)] } { Mask[null, access(a_2, j_10_2)] }
        j_10_2 >= 0 && (j_10_2 < (len(a_2): int) && j_10_2 mod 2 == 0) ==> Mask[null, access(a_2, j_10_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(access(a, j), write)
      assume (forall j_10_2: int ::
        { Heap[null, access(a_2, j_10_2)] } { Mask[null, access(a_2, j_10_2)] }
        (j_10_2 >= 0 && (j_10_2 < (len(a_2): int) && j_10_2 mod 2 == 0)) && NoPerm < FullPerm ==> invRecv8(a_2, j_10_2) == j_10_2 && qpRange8(a_2, j_10_2)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_3_1: int ::
        { invRecv8(a_3_1_1, i_3_1) }
        ((invRecv8(a_3_1_1, i_3_1) >= 0 && (invRecv8(a_3_1_1, i_3_1) < (len(a_2): int) && invRecv8(a_3_1_1, i_3_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange8(a_3_1_1, i_3_1) ==> a_2 == a_3_1_1 && invRecv8(a_3_1_1, i_3_1) == i_3_1
      );
    
    // -- assume permission updates
      assume (forall a_3_1_1: IArrayDomainType, i_3_1: int ::
        { QPMask[null, access(a_3_1_1, i_3_1)] }
        ((invRecv8(a_3_1_1, i_3_1) >= 0 && (invRecv8(a_3_1_1, i_3_1) < (len(a_2): int) && invRecv8(a_3_1_1, i_3_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange8(a_3_1_1, i_3_1) ==> (a_2 == a_3_1_1 && invRecv8(a_3_1_1, i_3_1) == i_3_1) && QPMask[null, access(a_3_1_1, i_3_1)] == Mask[null, access(a_3_1_1, i_3_1)] - FullPerm
      );
      assume (forall a_3_1_1: IArrayDomainType, i_3_1: int ::
        { QPMask[null, access(a_3_1_1, i_3_1)] }
        !(((invRecv8(a_3_1_1, i_3_1) >= 0 && (invRecv8(a_3_1_1, i_3_1) < (len(a_2): int) && invRecv8(a_3_1_1, i_3_1) mod 2 == 0)) && NoPerm < FullPerm) && qpRange8(a_3_1_1, i_3_1)) ==> QPMask[null, access(a_3_1_1, i_3_1)] == Mask[null, access(a_3_1_1, i_3_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (j_11_1 >= 0 && (j_11_1 < i && j_11_1 mod 2 == 0)) {
        assert {:msg "  Postcondition of setVal might not hold. Assertion (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)) might not hold. (block_array.vpr@50.9--50.157) [200605]"}
          Heap[(loc(a_2, j_11_1): Ref), val] == oldHeap[(loc(a_2, j_11_1): Ref), val];
      }
      assume false;
    }
    assume (forall j_12_1: int ::
      { (loc(a_2, j_12_1): Ref) }
      j_12_1 >= 0 && (j_12_1 < i && j_12_1 mod 2 == 0) ==> Heap[(loc(a_2, j_12_1): Ref), val] == oldHeap[(loc(a_2, j_12_1): Ref), val]
    );
    if (*) {
      if (j_13_2 >= 0 && (j_13_2 < i && j_13_2 mod 2 == 0)) {
        assert {:msg "  Postcondition of setVal might not hold. Assertion (unfolding acc(access(a, j), write) in loc(a, j + 1).val) == old((unfolding acc(access(a, j), write) in loc(a, j + 1).val)) might not hold. (block_array.vpr@51.9--51.161) [200606]"}
          Heap[(loc(a_2, j_13_2 + 1): Ref), val] == oldHeap[(loc(a_2, j_13_2 + 1): Ref), val];
      }
      assume false;
    }
    assume (forall j_14_1: int ::
      
      j_14_1 >= 0 && (j_14_1 < i && j_14_1 mod 2 == 0) ==> Heap[(loc(a_2, j_14_1 + 1): Ref), val] == oldHeap[(loc(a_2, j_14_1 + 1): Ref), val]
    );
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of setVal might not hold. There might be insufficient permission to access access(a, i) (block_array.vpr@52.9--52.131) [200607]"}
          perm <= UnfoldingMask[null, access(a_2, i)];
      }
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of setVal might not hold. Assertion loc(a, i).val == newVal might not hold. (block_array.vpr@52.9--52.131) [200608]"}
      Heap[(loc(a_2, i): Ref), val] == newVal;
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume access#trigger(UnfoldingHeap, access(a_2, i));
      assume UnfoldingHeap[null, access(a_2, i)] == FrameFragment((if i mod 2 == 0 then CombineFrames(FrameFragment(UnfoldingHeap[(loc(a_2, i): Ref), val]), FrameFragment(UnfoldingHeap[(loc(a_2, i + 1): Ref), val])) else EmptyFrame));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of setVal might not hold. There might be insufficient permission to access access(a, i) (block_array.vpr@52.9--52.131) [200609]"}
          perm <= UnfoldingMask[null, access(a_2, i)];
      }
      UnfoldingMask := UnfoldingMask[null, access(a_2, i):=UnfoldingMask[null, access(a_2, i)] - perm];
      if (i mod 2 == 0) {
        perm := FullPerm;
        assume (loc(a_2, i): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i): Ref), val:=UnfoldingMask[(loc(a_2, i): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume (loc(a_2, i + 1): Ref) != null;
        UnfoldingMask := UnfoldingMask[(loc(a_2, i + 1): Ref), val:=UnfoldingMask[(loc(a_2, i + 1): Ref), val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of setVal might not hold. Assertion loc(a, i + 1).val == newVal might not hold. (block_array.vpr@52.9--52.131) [200610]"}
      Heap[(loc(a_2, i + 1): Ref), val] == newVal;
    
    // -- Free assumptions (exhale module)
      if (i mod 2 == 0) {
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
      }
      assume state(Heap, Mask);
      if (i mod 2 == 0) {
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i): Ref), val:=true]];
        Heap := Heap[null, access#sm(a_2, i):=Heap[null, access#sm(a_2, i)][(loc(a_2, i + 1): Ref), val:=true]];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method setVal2
// ==================================================

procedure setVal2(a_2: IArrayDomainType, i: int, newVal: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_7: int;
  var k: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var j_7_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i >= 0;
    assume i < (len(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { loc(a, j) } j >= 0 && j < len(a) ==> acc(loc(a, j).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j).val might not be injective. (block_array.vpr@70.10--70.68) [200611]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (j_1 >= 0 && j_1 < (len(a_2): int))) && (j_1_1 >= 0 && j_1_1 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_1): Ref) != (loc(a_2, j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(a_2, j_1): Ref) } { (loc(a_2, j_1): Ref) }
        (j_1 >= 0 && j_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange11((loc(a_2, j_1): Ref)) && invRecv11((loc(a_2, j_1): Ref)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((invRecv11(o_9) >= 0 && invRecv11(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(a_2, j_1): Ref) } { (loc(a_2, j_1): Ref) }
        j_1 >= 0 && j_1 < (len(a_2): int) ==> (loc(a_2, j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((invRecv11(o_9) >= 0 && invRecv11(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((invRecv11(o_9) >= 0 && invRecv11(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume i >= 0;
    assume i < (len(a_2): int);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { loc(a, j) } j >= 0 && j < len(a) ==> acc(loc(a, j).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j).val might not be injective. (block_array.vpr@72.9--72.67) [200612]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (j_3 >= 0 && j_3 < (len(a_2): int))) && (j_3_1 >= 0 && j_3_1 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_3): Ref) != (loc(a_2, j_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { (loc(a_2, j_3): Ref) } { (loc(a_2, j_3): Ref) }
        (j_3 >= 0 && j_3 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange12((loc(a_2, j_3): Ref)) && invRecv12((loc(a_2, j_3): Ref)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((invRecv12(o_9) >= 0 && invRecv12(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_9) ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { (loc(a_2, j_3): Ref) } { (loc(a_2, j_3): Ref) }
        j_3 >= 0 && j_3 < (len(a_2): int) ==> (loc(a_2, j_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((invRecv12(o_9) >= 0 && invRecv12(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!(((invRecv12(o_9) >= 0 && invRecv12(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val)
      if (*) {
        if (j_7 >= 0 && (j_7 < (len(a_2): int) && j_7 < i)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (block_array.vpr@73.9--73.94) [200613]"}
            HasDirectPerm(oldMask, (loc(a_2, j_7): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (block_array.vpr@73.9--73.94) [200614]"}
            HasDirectPerm(PostMask, (loc(a_2, j_7): Ref), val);
        }
        assume false;
      }
    assume (forall j_5: int ::
      { (loc(a_2, j_5): Ref) }
      j_5 >= 0 && (j_5 < (len(a_2): int) && j_5 < i) ==> oldHeap[(loc(a_2, j_5): Ref), val] == PostHeap[(loc(a_2, j_5): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale k >= 0 -- block_array.vpr@76.12--76.18
    assume k >= 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k < len(a) -- block_array.vpr@76.22--76.32
    assume k < (len(a_2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k % 2 == 0 -- block_array.vpr@76.37--76.45
    assume k mod 2 == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k != i -- block_array.vpr@76.50--76.55
    assume k != i;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, i).val := newVal -- block_array.vpr@77.5--77.27
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (block_array.vpr@77.5--77.27) [200615]"}
      FullPerm == Mask[(loc(a_2, i): Ref), val];
    Heap := Heap[(loc(a_2, i): Ref), val:=newVal];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i + 2 < len(a)) -- block_array.vpr@79.2--81.6
    if (i + 2 < (len(a_2): int)) {
      
      // -- Translating statement: setVal2(a, i + 1, newVal) -- block_array.vpr@80.9--80.32
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_i := i + 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method setVal2 might not hold. Assertion i + 1 >= 0 might not hold. (block_array.vpr@80.9--80.32) [200616]"}
            arg_i >= 0;
          assert {:msg "  The precondition of method setVal2 might not hold. Assertion i + 1 < len(a) might not hold. (block_array.vpr@80.9--80.32) [200617]"}
            arg_i < (len(a_2): int);
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, j) is injective
            assert {:msg "  The precondition of method setVal2 might not hold. Quantified resource loc(a, j).val might not be injective. (block_array.vpr@80.9--80.32) [200618]"}
              (forall j_9_1: int, j_9_2: int ::
              { neverTriggered14(j_9_1), neverTriggered14(j_9_2) }
              (((j_9_1 != j_9_2 && (j_9_1 >= 0 && j_9_1 < (len(a_2): int))) && (j_9_2 >= 0 && j_9_2 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_9_1): Ref) != (loc(a_2, j_9_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method setVal2 might not hold. There might be insufficient permission to access loc(a, j).val (block_array.vpr@80.9--80.32) [200619]"}
              (forall j_9_1: int ::
              { (loc(a_2, j_9_1): Ref) } { (loc(a_2, j_9_1): Ref) }
              j_9_1 >= 0 && j_9_1 < (len(a_2): int) ==> Mask[(loc(a_2, j_9_1): Ref), val] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, j)
            assume (forall j_9_1: int ::
              { (loc(a_2, j_9_1): Ref) } { (loc(a_2, j_9_1): Ref) }
              (j_9_1 >= 0 && j_9_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange14((loc(a_2, j_9_1): Ref)) && invRecv14((loc(a_2, j_9_1): Ref)) == j_9_1
            );
            assume (forall o_9: Ref ::
              { invRecv14(o_9) }
              (invRecv14(o_9) >= 0 && invRecv14(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange14(o_9)) ==> (loc(a_2, invRecv14(o_9)): Ref) == o_9
            );
          
          // -- assume permission updates for field val
            assume (forall o_9: Ref ::
              { QPMask[o_9, val] }
              ((invRecv14(o_9) >= 0 && invRecv14(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange14(o_9)) ==> (loc(a_2, invRecv14(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((invRecv14(o_9) >= 0 && invRecv14(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume arg_i >= 0;
          assume arg_i < (len(a_2): int);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource loc(a, j).val might not be injective. (block_array.vpr@80.9--80.32) [200620]"}
            (forall j_10_2: int, j_10_3: int ::
            
            (((j_10_2 != j_10_3 && (j_10_2 >= 0 && j_10_2 < (len(a_2): int))) && (j_10_3 >= 0 && j_10_3 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_10_2): Ref) != (loc(a_2, j_10_3): Ref)
          );
          
          // -- Define Inverse Function
            assume (forall j_10_2: int ::
              { (loc(a_2, j_10_2): Ref) } { (loc(a_2, j_10_2): Ref) }
              (j_10_2 >= 0 && j_10_2 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange15((loc(a_2, j_10_2): Ref)) && invRecv15((loc(a_2, j_10_2): Ref)) == j_10_2
            );
            assume (forall o_9: Ref ::
              { invRecv15(o_9) }
              ((invRecv15(o_9) >= 0 && invRecv15(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange15(o_9) ==> (loc(a_2, invRecv15(o_9)): Ref) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall j_10_2: int ::
              { (loc(a_2, j_10_2): Ref) } { (loc(a_2, j_10_2): Ref) }
              j_10_2 >= 0 && j_10_2 < (len(a_2): int) ==> (loc(a_2, j_10_2): Ref) != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, val] }
              (((invRecv15(o_9) >= 0 && invRecv15(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv15(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((invRecv15(o_9) >= 0 && invRecv15(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall j_11_1: int ::
            { (loc(a_2, j_11_1): Ref) }
            j_11_1 >= 0 && (j_11_1 < (len(a_2): int) && j_11_1 < arg_i) ==> PreCallHeap[(loc(a_2, j_11_1): Ref), val] == Heap[(loc(a_2, j_11_1): Ref), val]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of setVal2 might not hold. Assertion i >= 0 might not hold. (block_array.vpr@71.9--71.29) [200621]"}
      i >= 0;
    assert {:msg "  Postcondition of setVal2 might not hold. Assertion i < len(a) might not hold. (block_array.vpr@71.9--71.29) [200622]"}
      i < (len(a_2): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, j) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j).val might not be injective. (block_array.vpr@72.9--72.67) [200623]"}
        (forall j_6_2: int, j_6_3: int ::
        { neverTriggered13(j_6_2), neverTriggered13(j_6_3) }
        (((j_6_2 != j_6_3 && (j_6_2 >= 0 && j_6_2 < (len(a_2): int))) && (j_6_3 >= 0 && j_6_3 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_6_2): Ref) != (loc(a_2, j_6_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of setVal2 might not hold. There might be insufficient permission to access loc(a, j).val (block_array.vpr@72.9--72.67) [200624]"}
        (forall j_6_2: int ::
        { (loc(a_2, j_6_2): Ref) } { (loc(a_2, j_6_2): Ref) }
        j_6_2 >= 0 && j_6_2 < (len(a_2): int) ==> Mask[(loc(a_2, j_6_2): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, j)
      assume (forall j_6_2: int ::
        { (loc(a_2, j_6_2): Ref) } { (loc(a_2, j_6_2): Ref) }
        (j_6_2 >= 0 && j_6_2 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange13((loc(a_2, j_6_2): Ref)) && invRecv13((loc(a_2, j_6_2): Ref)) == j_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (invRecv13(o_9) >= 0 && invRecv13(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange13(o_9)) ==> (loc(a_2, invRecv13(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((invRecv13(o_9) >= 0 && invRecv13(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange13(o_9)) ==> (loc(a_2, invRecv13(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((invRecv13(o_9) >= 0 && invRecv13(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange13(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (j_7_1 >= 0 && (j_7_1 < (len(a_2): int) && j_7_1 < i)) {
        assert {:msg "  Postcondition of setVal2 might not hold. Assertion old(loc(a, j).val) == loc(a, j).val might not hold. (block_array.vpr@73.9--73.94) [200625]"}
          oldHeap[(loc(a_2, j_7_1): Ref), val] == Heap[(loc(a_2, j_7_1): Ref), val];
      }
      assume false;
    }
    assume (forall j_8_1: int ::
      { (loc(a_2, j_8_1): Ref) }
      j_8_1 >= 0 && (j_8_1 < (len(a_2): int) && j_8_1 < i) ==> oldHeap[(loc(a_2, j_8_1): Ref), val] == Heap[(loc(a_2, j_8_1): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}