// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:04:10
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0252.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0252-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(x: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(x: Ref): bool;

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
function  loc(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): IArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): IArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom len_nonneg
axiom (forall a_2: IArrayDomainType ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume x != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(arr1: IArrayDomainType, arr2: IArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { loc(arr1, i) }
  //     true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) -- 0252.vpr@5.3--5.92
    
    // -- Check definedness of (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource loc(arr1, i).val might not be injective. (0252.vpr@5.10--5.92) [200964]"}
      (forall i_1: int, i_1_1: int ::
      
      (i_1 != i_1_1 && NoPerm < (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_1_1 && i_1_1 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_1): Ref) != (loc(arr1, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(arr1, i_1): Ref) } { (loc(arr1, i_1): Ref) }
        NoPerm < (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) ==> qpRange1((loc(arr1, i_1): Ref)) && invRecv1((loc(arr1, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) && qpRange1(o_4) ==> (loc(arr1, invRecv1(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0252.vpr@5.10--5.92) [200965]"}
      (forall i_1: int ::
      { (loc(arr1, i_1): Ref) } { (loc(arr1, i_1): Ref) }
      (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(arr1, i_1): Ref) } { (loc(arr1, i_1): Ref) }
        (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) > NoPerm ==> (loc(arr1, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) && qpRange1(o_4) ==> (NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) ==> (loc(arr1, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(arr1, 0).val := 0 -- 0252.vpr@7.3--7.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(arr1, 0).val (0252.vpr@7.3--7.24) [200966]"}
      FullPerm == Mask[(loc(arr1, 0): Ref), val];
    Heap := Heap[(loc(arr1, 0): Ref), val:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(arr2, 0).val := 0 -- 0252.vpr@9.3--9.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(arr2, 0).val (0252.vpr@9.3--9.24) [200967]"}
      FullPerm == Mask[(loc(arr2, 0): Ref), val];
    Heap := Heap[(loc(arr2, 0): Ref), val:=0];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(arr1: IArrayDomainType, arr2: IArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { loc(arr1, i) }
  //     true ==> acc(P(loc(arr1, i)), (0 <= i && i < 10 ? write : none))) -- 0252.vpr@15.4--15.92
    
    // -- Check definedness of (forall i: Int :: { loc(arr1, i) } true ==> acc(P(loc(arr1, i)), (0 <= i && i < 10 ? write : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(loc(arr1, i)), (0 <= i && i < 10 ? write : none)) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(loc(arr1, i)) might not be injective. (0252.vpr@15.11--15.92) [200968]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered2(i_1), neverTriggered2(i_1_1) }
        (i_1 != i_1_1 && NoPerm < (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_1_1 && i_1_1 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_1): Ref) != (loc(arr1, i_1_1): Ref)
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, P((loc(arr1, i_1): Ref))] } { Mask[null, P((loc(arr1, i_1): Ref))] } { (loc(arr1, i_1): Ref) }
        NoPerm < (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) ==> invRecv2((loc(arr1, i_1): Ref)) == i_1 && qpRange2((loc(arr1, i_1): Ref))
      );
      assume (forall x: Ref ::
        { invRecv2(x) }
        NoPerm < (if 0 <= invRecv2(x) && invRecv2(x) < 10 then FullPerm else NoPerm) && qpRange2(x) ==> (loc(arr1, invRecv2(x)): Ref) == x
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0252.vpr@15.11--15.92) [200969]"}
      (forall i_1: int ::
      { Heap[null, P((loc(arr1, i_1): Ref))] } { Mask[null, P((loc(arr1, i_1): Ref))] } { (loc(arr1, i_1): Ref) }
      (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x: Ref ::
        { QPMask[null, P(x)] }
        NoPerm < (if 0 <= invRecv2(x) && invRecv2(x) < 10 then FullPerm else NoPerm) && qpRange2(x) ==> (NoPerm < (if 0 <= invRecv2(x) && invRecv2(x) < 10 then FullPerm else NoPerm) ==> (loc(arr1, invRecv2(x)): Ref) == x) && QPMask[null, P(x)] == Mask[null, P(x)] + (if 0 <= invRecv2(x) && invRecv2(x) < 10 then FullPerm else NoPerm)
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: Ref ::
        { QPMask[null, P(x)] }
        !(NoPerm < (if 0 <= invRecv2(x) && invRecv2(x) < 10 then FullPerm else NoPerm) && qpRange2(x)) ==> QPMask[null, P(x)] == Mask[null, P(x)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(P(loc(arr1, 0)), write) in loc(arr1, 0) != null) -- 0252.vpr@17.4--17.60
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(P(loc(arr1, 0)), write) in loc(arr1, 0) != null)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P((loc(arr1, 0): Ref)));
      assume UnfoldingHeap[null, P((loc(arr1, 0): Ref))] == EmptyFrame;
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P(loc(arr1, 0)) (0252.vpr@17.11--17.60) [200970]"}
          perm <= UnfoldingMask[null, P((loc(arr1, 0): Ref))];
      }
      UnfoldingMask := UnfoldingMask[null, P((loc(arr1, 0): Ref)):=UnfoldingMask[null, P((loc(arr1, 0): Ref))] - perm];
      assume (loc(arr1, 0): Ref) != null;
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion loc(arr1, 0) != null might not hold. (0252.vpr@17.11--17.60) [200971]"}
      (loc(arr1, 0): Ref) != null;
    
    // -- Free assumptions (exhale module)
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(loc(arr2, 0)), write) -- 0252.vpr@19.4--19.26
    assume P#trigger(Heap, P((loc(arr2, 0): Ref)));
    assume Heap[null, P((loc(arr2, 0): Ref))] == EmptyFrame;
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(loc(arr2, 0)) might fail. There might be insufficient permission to access P(loc(arr2, 0)) (0252.vpr@19.4--19.26) [200974]"}
        perm <= Mask[null, P((loc(arr2, 0): Ref))];
    }
    Mask := Mask[null, P((loc(arr2, 0): Ref)):=Mask[null, P((loc(arr2, 0): Ref))] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P((loc(arr2, 0): Ref)))) {
        havoc newVersion;
        Heap := Heap[null, P((loc(arr2, 0): Ref)):=newVersion];
      }
    assume (loc(arr2, 0): Ref) != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}