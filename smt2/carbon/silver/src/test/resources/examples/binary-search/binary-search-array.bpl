// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:42:11
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/binary-search/binary-search-array.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/binary-search/binary-search-array-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
function  neverTriggered2(j$0_1: int): bool;
function  neverTriggered3(j$0_2: int): bool;
function  neverTriggered4(j$2_3: int): bool;
function  neverTriggered5(j$2_2: int): bool;
function  neverTriggered6(j$2_3_2: int): bool;
function  neverTriggered7(j$2_4: int): bool;
function  neverTriggered8(j$2_5: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;

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

// Translation of domain axiom length_nonneg
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
// Translation of method binary_search
// ==================================================

procedure binary_search(a_2: IArrayDomainType, key_1: int) returns (index: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_2: int;
  var j: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j$1_4: int;
  var i_7: int;
  var low: int;
  var high: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j$3: int;
  var i_6_1: int;
  var ExhaleHeap: HeapType;
  var j$3_6: int;
  var i_10: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var mid: int;
  var j$3_5: int;
  var i_11_1: int;
  var j$1_2: int;
  var i_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall j: Int :: { loc(a, j) } 0 <= j && j < len(a) ==> acc(loc(a, j).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j).val might not be injective. (binary-search-array.vpr@10.12--10.21) [116839]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < (len_1(a_2): int))) && (0 <= j_1_1 && j_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_1): Ref) != (loc(a_2, j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(a_2, j_1): Ref) } { (loc(a_2, j_1): Ref) }
        (0 <= j_1 && j_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, j_1): Ref)) && invRecv1((loc(a_2, j_1): Ref)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(a_2, j_1): Ref) } { (loc(a_2, j_1): Ref) }
        0 <= j_1 && j_1 < (len_1(a_2): int) ==> (loc(a_2, j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { loc(a, i), loc(a, j) } 0 <= i && (j < len(a) && i < j) ==> loc(a, i).val < loc(a, j).val)
      if (*) {
        if (0 <= i_2 && (j < (len_1(a_2): int) && i_2 < j)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (binary-search-array.vpr@11.12--11.123) [116840]"}
            HasDirectPerm(Mask, (loc(a_2, i_2): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (binary-search-array.vpr@11.12--11.123) [116841]"}
            HasDirectPerm(Mask, (loc(a_2, j): Ref), val);
        }
        assume false;
      }
    assume (forall i_1: int, j_3_1: int ::
      { (loc(a_2, i_1): Ref), (loc(a_2, j_3_1): Ref) }
      0 <= i_1 && (j_3_1 < (len_1(a_2): int) && i_1 < j_3_1) ==> Heap[(loc(a_2, i_1): Ref), val] < Heap[(loc(a_2, j_3_1): Ref), val]
    );
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
    
    // -- Check definedness of (forall j$0: Int :: { loc(a, j$0) } 0 <= j$0 && j$0 < len(a) ==> acc(loc(a, j$0).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j$0).val might not be injective. (binary-search-array.vpr@12.12--12.37) [116842]"}
      (forall j$0_1: int, j$0_1_1: int ::
      
      (((j$0_1 != j$0_1_1 && (0 <= j$0_1 && j$0_1 < (len_1(a_2): int))) && (0 <= j$0_1_1 && j$0_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$0_1): Ref) != (loc(a_2, j$0_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j$0_1: int ::
        { (loc(a_2, j$0_1): Ref) } { (loc(a_2, j$0_1): Ref) }
        (0 <= j$0_1 && j$0_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, j$0_1): Ref)) && invRecv2((loc(a_2, j$0_1): Ref)) == j$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j$0_1: int ::
        { (loc(a_2, j$0_1): Ref) } { (loc(a_2, j$0_1): Ref) }
        0 <= j$0_1 && j$0_1 < (len_1(a_2): int) ==> (loc(a_2, j$0_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j$1: Int :: { old(loc(a, j$1)) } 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val))
      if (*) {
        if (0 <= j$1_4 && j$1_4 < (len_1(a_2): int)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$1).val (binary-search-array.vpr@12.12--12.37) [116843]"}
            HasDirectPerm(PostMask, (loc(a_2, j$1_4): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$1).val (binary-search-array.vpr@12.12--12.37) [116844]"}
            HasDirectPerm(oldMask, (loc(a_2, j$1_4): Ref), val);
        }
        assume false;
      }
    assume (forall j$1_1: int ::
      { (loc(a_2, j$1_1): Ref) }
      0 <= j$1_1 && j$1_1 < (len_1(a_2): int) ==> PostHeap[(loc(a_2, j$1_1): Ref), val] == oldHeap[(loc(a_2, j$1_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    assume -1 <= index;
    assume index < (len_1(a_2): int);
    assume state(PostHeap, PostMask);
    if (0 <= index) {
      
      // -- Check definedness of loc(a, index).val == key
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, index).val (binary-search-array.vpr@14.12--14.51) [116845]"}
          HasDirectPerm(PostMask, (loc(a_2, index): Ref), val);
      assume PostHeap[(loc(a_2, index): Ref), val] == key_1;
    }
    assume state(PostHeap, PostMask);
    if (-1 == index) {
      
      // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> loc(a, i).val != key)
        if (*) {
          if (0 <= i_7 && i_7 < (len_1(a_2): int)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (binary-search-array.vpr@15.12--15.91) [116846]"}
              HasDirectPerm(PostMask, (loc(a_2, i_7): Ref), val);
          }
          assume false;
        }
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) }
        0 <= i_3 && i_3 < (len_1(a_2): int) ==> PostHeap[(loc(a_2, i_3): Ref), val] != key_1
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: low := 0 -- binary-search-array.vpr@17.3--17.20
    low := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: high := len(a) -- binary-search-array.vpr@18.3--18.26
    high := (len_1(a_2): int);
    assume state(Heap, Mask);
  
  // -- Translating statement: index := -1 -- binary-search-array.vpr@19.3--19.14
    index := -1;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (low < high) -- binary-search-array.vpr@21.3--40.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, j$2) is injective
          assert {:msg "  Loop invariant (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write)) && (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val)) might not hold on entry. Quantified resource loc(a, j$2).val might not be injective. (binary-search-array.vpr@22.15--22.40) [116847]"}
            (forall j$2_3: int, j$2_6: int ::
            { neverTriggered4(j$2_3), neverTriggered4(j$2_6) }
            (((j$2_3 != j$2_6 && (0 <= j$2_3 && j$2_3 < (len_1(a_2): int))) && (0 <= j$2_6 && j$2_6 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$2_3): Ref) != (loc(a_2, j$2_6): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write)) && (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val)) might not hold on entry. There might be insufficient permission to access loc(a, j$2).val (binary-search-array.vpr@22.15--22.40) [116848]"}
            (forall j$2_3: int ::
            { (loc(a_2, j$2_3): Ref) } { (loc(a_2, j$2_3): Ref) }
            0 <= j$2_3 && j$2_3 < (len_1(a_2): int) ==> Mask[(loc(a_2, j$2_3): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, j$2)
          assume (forall j$2_3: int ::
            { (loc(a_2, j$2_3): Ref) } { (loc(a_2, j$2_3): Ref) }
            (0 <= j$2_3 && j$2_3 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, j$2_3): Ref)) && invRecv4((loc(a_2, j$2_3): Ref)) == j$2_3
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            (0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= j$3 && j$3 < (len_1(a_2): int)) {
            assert {:msg "  Loop invariant (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write)) && (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val)) might not hold on entry. Assertion loc(a, j$3).val == old(loc(a, j$3).val) might not hold. (binary-search-array.vpr@22.15--22.40) [116849]"}
              Heap[(loc(a_2, j$3): Ref), val] == oldHeap[(loc(a_2, j$3): Ref), val];
          }
          assume false;
        }
        assume (forall j$3_1_1: int ::
          { (loc(a_2, j$3_1_1): Ref) }
          0 <= j$3_1_1 && j$3_1_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$3_1_1): Ref), val] == oldHeap[(loc(a_2, j$3_1_1): Ref), val]
        );
        assert {:msg "  Loop invariant 0 <= low && (low <= high && high <= len(a)) might not hold on entry. Assertion 0 <= low might not hold. (binary-search-array.vpr@23.15--23.56) [116850]"}
          0 <= low;
        assert {:msg "  Loop invariant 0 <= low && (low <= high && high <= len(a)) might not hold on entry. Assertion low <= high might not hold. (binary-search-array.vpr@23.15--23.56) [116851]"}
          low <= high;
        assert {:msg "  Loop invariant 0 <= low && (low <= high && high <= len(a)) might not hold on entry. Assertion high <= len(a) might not hold. (binary-search-array.vpr@23.15--23.56) [116852]"}
          high <= (len_1(a_2): int);
        if (index == -1) {
          if (*) {
            if (0 <= i_6_1 && (i_6_1 < (len_1(a_2): int) && !(low <= i_6_1 && i_6_1 < high))) {
              assert {:msg "  Loop invariant index == -1 ==> (forall i: Int :: { loc(a, i) } 0 <= i && (i < len(a) && !(low <= i && i < high)) ==> loc(a, i).val != key) might not hold on entry. Assertion loc(a, i).val != key might not hold. (binary-search-array.vpr@24.15--24.133) [116853]"}
                Heap[(loc(a_2, i_6_1): Ref), val] != key_1;
            }
            assume false;
          }
          assume (forall i_7_1_1: int ::
            { (loc(a_2, i_7_1_1): Ref) }
            0 <= i_7_1_1 && (i_7_1_1 < (len_1(a_2): int) && !(low <= i_7_1_1 && i_7_1_1 < high)) ==> Heap[(loc(a_2, i_7_1_1): Ref), val] != key_1
          );
        }
        assert {:msg "  Loop invariant -1 <= index && index < len(a) might not hold on entry. Assertion -1 <= index might not hold. (binary-search-array.vpr@25.15--25.44) [116854]"}
          -1 <= index;
        assert {:msg "  Loop invariant -1 <= index && index < len(a) might not hold on entry. Assertion index < len(a) might not hold. (binary-search-array.vpr@25.15--25.44) [116855]"}
          index < (len_1(a_2): int);
        if (0 <= index) {
          assert {:msg "  Loop invariant 0 <= index ==> loc(a, index).val == key might not hold on entry. Assertion loc(a, index).val == key might not hold. (binary-search-array.vpr@26.15--26.54) [116856]"}
            Heap[(loc(a_2, index): Ref), val] == key_1;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc high, index, low;
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j$2).val might not be injective. (binary-search-array.vpr@22.15--22.40) [116857]"}
          (forall j$2_2: int, j$2_2_1: int ::
          
          (((j$2_2 != j$2_2_1 && (0 <= j$2_2 && j$2_2 < (len_1(a_2): int))) && (0 <= j$2_2_1 && j$2_2_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$2_2): Ref) != (loc(a_2, j$2_2_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall j$2_2: int ::
            { (loc(a_2, j$2_2): Ref) } { (loc(a_2, j$2_2): Ref) }
            (0 <= j$2_2 && j$2_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, j$2_2): Ref)) && invRecv5((loc(a_2, j$2_2): Ref)) == j$2_2
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            ((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall j$2_2: int ::
            { (loc(a_2, j$2_2): Ref) } { (loc(a_2, j$2_2): Ref) }
            0 <= j$2_2 && j$2_2 < (len_1(a_2): int) ==> (loc(a_2, j$2_2): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val))
          if (*) {
            if (0 <= j$3_6 && j$3_6 < (len_1(a_2): int)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$3).val (binary-search-array.vpr@22.15--22.40) [116858]"}
                HasDirectPerm(Mask, (loc(a_2, j$3_6): Ref), val);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$3).val (binary-search-array.vpr@22.15--22.40) [116859]"}
                HasDirectPerm(oldMask, (loc(a_2, j$3_6): Ref), val);
            }
            assume false;
          }
        assume (forall j$3_3: int ::
          { (loc(a_2, j$3_3): Ref) }
          0 <= j$3_3 && j$3_3 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$3_3): Ref), val] == oldHeap[(loc(a_2, j$3_3): Ref), val]
        );
        assume state(Heap, Mask);
        assume 0 <= low;
        assume low <= high;
        assume high <= (len_1(a_2): int);
        assume state(Heap, Mask);
        if (index == -1) {
          
          // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && (i < len(a) && !(low <= i && i < high)) ==> loc(a, i).val != key)
            if (*) {
              if (0 <= i_10 && (i_10 < (len_1(a_2): int) && !(low <= i_10 && i_10 < high))) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (binary-search-array.vpr@24.15--24.133) [116860]"}
                  HasDirectPerm(Mask, (loc(a_2, i_10): Ref), val);
              }
              assume false;
            }
          assume (forall i_9_1: int ::
            { (loc(a_2, i_9_1): Ref) }
            0 <= i_9_1 && (i_9_1 < (len_1(a_2): int) && !(low <= i_9_1 && i_9_1 < high)) ==> Heap[(loc(a_2, i_9_1): Ref), val] != key_1
          );
        }
        assume state(Heap, Mask);
        assume -1 <= index;
        assume index < (len_1(a_2): int);
        assume state(Heap, Mask);
        if (0 <= index) {
          
          // -- Check definedness of loc(a, index).val == key
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, index).val (binary-search-array.vpr@26.15--26.54) [116861]"}
              HasDirectPerm(Mask, (loc(a_2, index): Ref), val);
          assume Heap[(loc(a_2, index): Ref), val] == key_1;
        }
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
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(a, j$2).val might not be injective. (binary-search-array.vpr@22.15--22.40) [116862]"}
          (forall j$2_3_2: int, j$2_3_3: int ::
          
          (((j$2_3_2 != j$2_3_3 && (0 <= j$2_3_2 && j$2_3_2 < (len_1(a_2): int))) && (0 <= j$2_3_3 && j$2_3_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$2_3_2): Ref) != (loc(a_2, j$2_3_3): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall j$2_3_2: int ::
            { (loc(a_2, j$2_3_2): Ref) } { (loc(a_2, j$2_3_2): Ref) }
            (0 <= j$2_3_2 && j$2_3_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, j$2_3_2): Ref)) && invRecv6((loc(a_2, j$2_3_2): Ref)) == j$2_3_2
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            ((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall j$2_3_2: int ::
            { (loc(a_2, j$2_3_2): Ref) } { (loc(a_2, j$2_3_2): Ref) }
            0 <= j$2_3_2 && j$2_3_2 < (len_1(a_2): int) ==> (loc(a_2, j$2_3_2): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall j$3_4: int ::
          { (loc(a_2, j$3_4): Ref) }
          0 <= j$3_4 && j$3_4 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$3_4): Ref), val] == oldHeap[(loc(a_2, j$3_4): Ref), val]
        );
        assume 0 <= low;
        assume low <= high;
        assume high <= (len_1(a_2): int);
        if (index == -1) {
          assume (forall i_10_1: int ::
            { (loc(a_2, i_10_1): Ref) }
            0 <= i_10_1 && (i_10_1 < (len_1(a_2): int) && !(low <= i_10_1 && i_10_1 < high)) ==> Heap[(loc(a_2, i_10_1): Ref), val] != key_1
          );
        }
        assume -1 <= index;
        assume index < (len_1(a_2): int);
        if (0 <= index) {
          assume Heap[(loc(a_2, index): Ref), val] == key_1;
        }
        assume state(Heap, Mask);
        // Check and assume guard
        assume low < high;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: mid := (low + high) \ 2 -- binary-search-array.vpr@28.5--28.37
            mid := (low + high) div 2;
            assume state(Heap, Mask);
          
          // -- Translating statement: if (loc(a, mid).val < key) -- binary-search-array.vpr@30.5--39.6
            
            // -- Check definedness of loc(a, mid).val < key
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, mid).val (binary-search-array.vpr@30.9--30.30) [116863]"}
                HasDirectPerm(Mask, (loc(a_2, mid): Ref), val);
            if (Heap[(loc(a_2, mid): Ref), val] < key_1) {
              
              // -- Translating statement: low := mid + 1 -- binary-search-array.vpr@31.7--31.21
                low := mid + 1;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: if (key < loc(a, mid).val) -- binary-search-array.vpr@33.7--38.8
                
                // -- Check definedness of key < loc(a, mid).val
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, mid).val (binary-search-array.vpr@33.11--33.32) [116864]"}
                    HasDirectPerm(Mask, (loc(a_2, mid): Ref), val);
                if (key_1 < Heap[(loc(a_2, mid): Ref), val]) {
                  
                  // -- Translating statement: high := mid -- binary-search-array.vpr@34.9--34.20
                    high := mid;
                    assume state(Heap, Mask);
                } else {
                  
                  // -- Translating statement: index := mid -- binary-search-array.vpr@36.9--36.21
                    index := mid;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: high := mid -- binary-search-array.vpr@37.9--37.20
                    high := mid;
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, j$2) is injective
          assert {:msg "  Loop invariant (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write)) && (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val)) might not be preserved. Quantified resource loc(a, j$2).val might not be injective. (binary-search-array.vpr@22.15--22.40) [116865]"}
            (forall j$2_4: int, j$2_4_1: int ::
            { neverTriggered7(j$2_4), neverTriggered7(j$2_4_1) }
            (((j$2_4 != j$2_4_1 && (0 <= j$2_4 && j$2_4 < (len_1(a_2): int))) && (0 <= j$2_4_1 && j$2_4_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$2_4): Ref) != (loc(a_2, j$2_4_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write)) && (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val)) might not be preserved. There might be insufficient permission to access loc(a, j$2).val (binary-search-array.vpr@22.15--22.40) [116866]"}
            (forall j$2_4: int ::
            { (loc(a_2, j$2_4): Ref) } { (loc(a_2, j$2_4): Ref) }
            0 <= j$2_4 && j$2_4 < (len_1(a_2): int) ==> Mask[(loc(a_2, j$2_4): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, j$2)
          assume (forall j$2_4: int ::
            { (loc(a_2, j$2_4): Ref) } { (loc(a_2, j$2_4): Ref) }
            (0 <= j$2_4 && j$2_4 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, j$2_4): Ref)) && invRecv7((loc(a_2, j$2_4): Ref)) == j$2_4
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= j$3_5 && j$3_5 < (len_1(a_2): int)) {
            assert {:msg "  Loop invariant (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> acc(loc(a, j$2).val, write)) && (forall j$3: Int :: { old(loc(a, j$3)) } 0 <= j$3 && j$3 < len(a) ==> loc(a, j$3).val == old(loc(a, j$3).val)) might not be preserved. Assertion loc(a, j$3).val == old(loc(a, j$3).val) might not hold. (binary-search-array.vpr@22.15--22.40) [116867]"}
              Heap[(loc(a_2, j$3_5): Ref), val] == oldHeap[(loc(a_2, j$3_5): Ref), val];
          }
          assume false;
        }
        assume (forall j$3_6_1: int ::
          { (loc(a_2, j$3_6_1): Ref) }
          0 <= j$3_6_1 && j$3_6_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$3_6_1): Ref), val] == oldHeap[(loc(a_2, j$3_6_1): Ref), val]
        );
        assert {:msg "  Loop invariant 0 <= low && (low <= high && high <= len(a)) might not be preserved. Assertion 0 <= low might not hold. (binary-search-array.vpr@23.15--23.56) [116868]"}
          0 <= low;
        assert {:msg "  Loop invariant 0 <= low && (low <= high && high <= len(a)) might not be preserved. Assertion low <= high might not hold. (binary-search-array.vpr@23.15--23.56) [116869]"}
          low <= high;
        assert {:msg "  Loop invariant 0 <= low && (low <= high && high <= len(a)) might not be preserved. Assertion high <= len(a) might not hold. (binary-search-array.vpr@23.15--23.56) [116870]"}
          high <= (len_1(a_2): int);
        if (index == -1) {
          if (*) {
            if (0 <= i_11_1 && (i_11_1 < (len_1(a_2): int) && !(low <= i_11_1 && i_11_1 < high))) {
              assert {:msg "  Loop invariant index == -1 ==> (forall i: Int :: { loc(a, i) } 0 <= i && (i < len(a) && !(low <= i && i < high)) ==> loc(a, i).val != key) might not be preserved. Assertion loc(a, i).val != key might not hold. (binary-search-array.vpr@24.15--24.133) [116871]"}
                Heap[(loc(a_2, i_11_1): Ref), val] != key_1;
            }
            assume false;
          }
          assume (forall i_12_1_1: int ::
            { (loc(a_2, i_12_1_1): Ref) }
            0 <= i_12_1_1 && (i_12_1_1 < (len_1(a_2): int) && !(low <= i_12_1_1 && i_12_1_1 < high)) ==> Heap[(loc(a_2, i_12_1_1): Ref), val] != key_1
          );
        }
        assert {:msg "  Loop invariant -1 <= index && index < len(a) might not be preserved. Assertion -1 <= index might not hold. (binary-search-array.vpr@25.15--25.44) [116872]"}
          -1 <= index;
        assert {:msg "  Loop invariant -1 <= index && index < len(a) might not be preserved. Assertion index < len(a) might not hold. (binary-search-array.vpr@25.15--25.44) [116873]"}
          index < (len_1(a_2): int);
        if (0 <= index) {
          assert {:msg "  Loop invariant 0 <= index ==> loc(a, index).val == key might not be preserved. Assertion loc(a, index).val == key might not hold. (binary-search-array.vpr@26.15--26.54) [116874]"}
            Heap[(loc(a_2, index): Ref), val] == key_1;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(low < high);
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(a, j$2).val might not be injective. (binary-search-array.vpr@22.15--22.40) [116875]"}
        (forall j$2_5: int, j$2_5_1: int ::
        
        (((j$2_5 != j$2_5_1 && (0 <= j$2_5 && j$2_5 < (len_1(a_2): int))) && (0 <= j$2_5_1 && j$2_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$2_5): Ref) != (loc(a_2, j$2_5_1): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall j$2_5: int ::
          { (loc(a_2, j$2_5): Ref) } { (loc(a_2, j$2_5): Ref) }
          (0 <= j$2_5 && j$2_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange8((loc(a_2, j$2_5): Ref)) && invRecv8((loc(a_2, j$2_5): Ref)) == j$2_5
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          ((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j$2_5: int ::
          { (loc(a_2, j$2_5): Ref) } { (loc(a_2, j$2_5): Ref) }
          0 <= j$2_5 && j$2_5 < (len_1(a_2): int) ==> (loc(a_2, j$2_5): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall j$3_7: int ::
        { (loc(a_2, j$3_7): Ref) }
        0 <= j$3_7 && j$3_7 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$3_7): Ref), val] == oldHeap[(loc(a_2, j$3_7): Ref), val]
      );
      assume 0 <= low;
      assume low <= high;
      assume high <= (len_1(a_2): int);
      if (index == -1) {
        assume (forall i_13_1: int ::
          { (loc(a_2, i_13_1): Ref) }
          0 <= i_13_1 && (i_13_1 < (len_1(a_2): int) && !(low <= i_13_1 && i_13_1 < high)) ==> Heap[(loc(a_2, i_13_1): Ref), val] != key_1
        );
      }
      assume -1 <= index;
      assume index < (len_1(a_2): int);
      if (0 <= index) {
        assume Heap[(loc(a_2, index): Ref), val] == key_1;
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, j$0) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j$0).val might not be injective. (binary-search-array.vpr@12.12--12.21) [116876]"}
        (forall j$0_2: int, j$0_2_1: int ::
        { neverTriggered3(j$0_2), neverTriggered3(j$0_2_1) }
        (((j$0_2 != j$0_2_1 && (0 <= j$0_2 && j$0_2 < (len_1(a_2): int))) && (0 <= j$0_2_1 && j$0_2_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$0_2): Ref) != (loc(a_2, j$0_2_1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of binary_search might not hold. There might be insufficient permission to access loc(a, j$0).val (binary-search-array.vpr@12.12--12.37) [116877]"}
        (forall j$0_2: int ::
        { (loc(a_2, j$0_2): Ref) } { (loc(a_2, j$0_2): Ref) }
        0 <= j$0_2 && j$0_2 < (len_1(a_2): int) ==> Mask[(loc(a_2, j$0_2): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, j$0)
      assume (forall j$0_2: int ::
        { (loc(a_2, j$0_2): Ref) } { (loc(a_2, j$0_2): Ref) }
        (0 <= j$0_2 && j$0_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, j$0_2): Ref)) && invRecv3((loc(a_2, j$0_2): Ref)) == j$0_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= j$1_2 && j$1_2 < (len_1(a_2): int)) {
        assert {:msg "  Postcondition of binary_search might not hold. Assertion loc(a, j$1).val == old(loc(a, j$1).val) might not hold. (binary-search-array.vpr@12.12--12.37) [116878]"}
          Heap[(loc(a_2, j$1_2): Ref), val] == oldHeap[(loc(a_2, j$1_2): Ref), val];
      }
      assume false;
    }
    assume (forall j$1_3_1: int ::
      { (loc(a_2, j$1_3_1): Ref) }
      0 <= j$1_3_1 && j$1_3_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$1_3_1): Ref), val] == oldHeap[(loc(a_2, j$1_3_1): Ref), val]
    );
    assert {:msg "  Postcondition of binary_search might not hold. Assertion -1 <= index might not hold. (binary-search-array.vpr@13.12--13.41) [116879]"}
      -1 <= index;
    assert {:msg "  Postcondition of binary_search might not hold. Assertion index < len(a) might not hold. (binary-search-array.vpr@13.12--13.41) [116880]"}
      index < (len_1(a_2): int);
    if (0 <= index) {
      assert {:msg "  Postcondition of binary_search might not hold. Assertion loc(a, index).val == key might not hold. (binary-search-array.vpr@14.12--14.51) [116881]"}
        Heap[(loc(a_2, index): Ref), val] == key_1;
    }
    if (-1 == index) {
      if (*) {
        if (0 <= i_4_1 && i_4_1 < (len_1(a_2): int)) {
          assert {:msg "  Postcondition of binary_search might not hold. Assertion loc(a, i).val != key might not hold. (binary-search-array.vpr@15.12--15.91) [116882]"}
            Heap[(loc(a_2, i_4_1): Ref), val] != key_1;
        }
        assume false;
      }
      assume (forall i_5_1_1: int ::
        { (loc(a_2, i_5_1_1): Ref) }
        0 <= i_5_1_1 && i_5_1_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, i_5_1_1): Ref), val] != key_1
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}