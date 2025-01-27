// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/dutch-flag.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/dutch-flag-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_55: Ref, f_54: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_55, f_54] }
  Heap[o_55, $allocated] ==> Heap[Heap[o_55, f_54], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_7: Ref, f_13: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_7, f_13] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_7, f_13) ==> Heap[o_7, f_13] == ExhaleHeap[o_7, f_13]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_30: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_30), ExhaleHeap[null, PredicateMaskField(pm_f_30)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_30) && IsPredicateField(pm_f_30) ==> Heap[null, PredicateMaskField(pm_f_30)] == ExhaleHeap[null, PredicateMaskField(pm_f_30)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_30: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_30) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_30) && IsPredicateField(pm_f_30) ==> (forall <A, B> o2_30: Ref, f_13: (Field A B) ::
    { ExhaleHeap[o2_30, f_13] }
    Heap[null, PredicateMaskField(pm_f_30)][o2_30, f_13] ==> Heap[o2_30, f_13] == ExhaleHeap[o2_30, f_13]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_30: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_30), ExhaleHeap[null, WandMaskField(pm_f_30)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_30) && IsWandField(pm_f_30) ==> Heap[null, WandMaskField(pm_f_30)] == ExhaleHeap[null, WandMaskField(pm_f_30)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_30: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_30) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_30) && IsWandField(pm_f_30) ==> (forall <A, B> o2_30: Ref, f_13: (Field A B) ::
    { ExhaleHeap[o2_30, f_13] }
    Heap[null, WandMaskField(pm_f_30)][o2_30, f_13] ==> Heap[o2_30, f_13] == ExhaleHeap[o2_30, f_13]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_7: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_7, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_7, $allocated] ==> ExhaleHeap[o_7, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_55: Ref, f_9: (Field A B), v: B ::
  { Heap[o_55, f_9:=v] }
  succHeap(Heap, Heap[o_55, f_9:=v])
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
function  neverTriggered2(i$0_1: int): bool;
function  neverTriggered3(i$0_2_1: int): bool;
function  neverTriggered4(i$1: int): bool;
function  neverTriggered5(i$1_2_1: int): bool;
function  neverTriggered6(i$1_3: int): bool;
function  neverTriggered7(i$1_4_1: int): bool;
function  neverTriggered8(i$1_5_1: int): bool;
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_6: int): Ref;

// Translation of domain function length
function  length_2(a_3: ArrayDomainType): int;

// Translation of domain function inverse_first
function  inverse_first(r_4: Ref): ArrayDomainType;

// Translation of domain function inverse_second
function  inverse_second(r_4: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (inverse_first((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (inverse_second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (length_2(a_2): int) }
  (length_2(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method DutchFlag
// ==================================================

procedure DutchFlag(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_3: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_14: int;
  var j_13: int;
  var unsorted: int;
  var white: int;
  var blue: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_8_1: int;
  var i_10_1: int;
  var i_12_1: int;
  var i_14_1: int;
  var ExhaleHeap: HeapType;
  var i_15: int;
  var i_7: int;
  var i_21: int;
  var i_8: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var tmp: int;
  var i_28: int;
  var i_30: int;
  var i_32: int;
  var i_34: int;
  var i_6_2: int;
  var j_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < length(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (dutch-flag.vpr@13.12--13.21) [177053]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (length_2(a_2): int))) && (0 <= i_1_1 && i_1_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_1): Ref)) && invRecv1((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (length_2(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < length(a) ==> loc(a, i).val == 0 || (loc(a, i).val == 1 || loc(a, i).val == 2))
      if (*) {
        if (0 <= i_3 && i_3 < (length_2(a_2): int)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@14.12--14.126) [177054]"}
            HasDirectPerm(Mask, (loc(a_2, i_3): Ref), val);
          if (!(Heap[(loc(a_2, i_3): Ref), val] == 0)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@14.12--14.126) [177055]"}
              HasDirectPerm(Mask, (loc(a_2, i_3): Ref), val);
            if (!(Heap[(loc(a_2, i_3): Ref), val] == 1)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@14.12--14.126) [177056]"}
                HasDirectPerm(Mask, (loc(a_2, i_3): Ref), val);
            }
          }
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      { (loc(a_2, i_3_2): Ref) }
      0 <= i_3_2 && i_3_2 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_3_2): Ref), val] == 0 || (Heap[(loc(a_2, i_3_2): Ref), val] == 1 || Heap[(loc(a_2, i_3_2): Ref), val] == 2)
    );
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
    
    // -- Check definedness of (forall i$0: Int :: { loc(a, i$0) } 0 <= i$0 && i$0 < length(a) ==> acc(loc(a, i$0).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i$0).val might not be injective. (dutch-flag.vpr@15.11--15.20) [177057]"}
      (forall i$0_1: int, i$0_1_2: int ::
      
      (((i$0_1 != i$0_1_2 && (0 <= i$0_1 && i$0_1 < (length_2(a_2): int))) && (0 <= i$0_1_2 && i$0_1_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0_1): Ref) != (loc(a_2, i$0_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i$0_1: int ::
        { (loc(a_2, i$0_1): Ref) } { (loc(a_2, i$0_1): Ref) }
        (0 <= i$0_1 && i$0_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i$0_1): Ref)) && invRecv2((loc(a_2, i$0_1): Ref)) == i$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i$0_1: int ::
        { (loc(a_2, i$0_1): Ref) } { (loc(a_2, i$0_1): Ref) }
        0 <= i$0_1 && i$0_1 < (length_2(a_2): int) ==> (loc(a_2, i$0_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { loc(a, i), loc(a, j) } 0 <= i && (i < j && j < length(a)) ==> loc(a, i).val <= loc(a, j).val)
      if (*) {
        if (0 <= i_14 && (i_14 < j_13 && j_13 < (length_2(a_2): int))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@16.11--16.86) [177058]"}
            HasDirectPerm(PostMask, (loc(a_2, i_14): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (dutch-flag.vpr@16.11--16.86) [177059]"}
            HasDirectPerm(PostMask, (loc(a_2, j_13): Ref), val);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_1: int ::
      { (loc(a_2, i_5_1): Ref), (loc(a_2, j_1): Ref) }
      0 <= i_5_1 && (i_5_1 < j_1 && j_1 < (length_2(a_2): int)) ==> PostHeap[(loc(a_2, i_5_1): Ref), val] <= PostHeap[(loc(a_2, j_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unsorted := 0 -- dutch-flag.vpr@18.3--18.26
    unsorted := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: white := 0 -- dutch-flag.vpr@19.3--19.23
    white := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: blue := length(a) -- dutch-flag.vpr@20.3--20.30
    blue := (length_2(a_2): int);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (unsorted < blue) -- dutch-flag.vpr@22.3--43.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i$1) is injective
          assert {:msg "  Loop invariant (forall i$1: Int :: { loc(a, i$1) } 0 <= i$1 && i$1 < length(a) ==> acc(loc(a, i$1).val, write)) might not hold on entry. Quantified resource loc(a, i$1).val might not be injective. (dutch-flag.vpr@23.13--23.22) [177060]"}
            (forall i$1: int, i$1_5: int ::
            { neverTriggered4(i$1), neverTriggered4(i$1_5) }
            (((i$1 != i$1_5 && (0 <= i$1 && i$1 < (length_2(a_2): int))) && (0 <= i$1_5 && i$1_5 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$1): Ref) != (loc(a_2, i$1_5): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i$1: Int :: { loc(a, i$1) } 0 <= i$1 && i$1 < length(a) ==> acc(loc(a, i$1).val, write)) might not hold on entry. There might be insufficient permission to access loc(a, i$1).val (dutch-flag.vpr@23.13--23.22) [177061]"}
            (forall i$1: int ::
            { (loc(a_2, i$1): Ref) } { (loc(a_2, i$1): Ref) }
            0 <= i$1 && i$1 < (length_2(a_2): int) ==> Mask[(loc(a_2, i$1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i$1)
          assume (forall i$1: int ::
            { (loc(a_2, i$1): Ref) } { (loc(a_2, i$1): Ref) }
            (0 <= i$1 && i$1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i$1): Ref)) && invRecv4((loc(a_2, i$1): Ref)) == i$1
          );
          assume (forall o_9: Ref ::
            { invRecv4(o_9) }
            (0 <= invRecv4(o_9) && invRecv4(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((0 <= invRecv4(o_9) && invRecv4(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv4(o_9) && invRecv4(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not hold on entry. Assertion 0 <= white might not hold. (dutch-flag.vpr@24.13--24.85) [177062]"}
          0 <= white;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not hold on entry. Assertion white <= unsorted might not hold. (dutch-flag.vpr@24.13--24.85) [177063]"}
          white <= unsorted;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not hold on entry. Assertion unsorted <= blue might not hold. (dutch-flag.vpr@24.13--24.85) [177064]"}
          unsorted <= blue;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not hold on entry. Assertion blue <= length(a) might not hold. (dutch-flag.vpr@24.13--24.85) [177065]"}
          blue <= (length_2(a_2): int);
        if (*) {
          if (0 <= i_8_1 && i_8_1 < (length_2(a_2): int)) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < length(a) ==> loc(a, i).val == 0 || (loc(a, i).val == 1 || loc(a, i).val == 2)) might not hold on entry. Assertion loc(a, i).val == 0 || (loc(a, i).val == 1 || loc(a, i).val == 2) might not hold. (dutch-flag.vpr@25.13--25.127) [177066]"}
              Heap[(loc(a_2, i_8_1): Ref), val] == 0 || (Heap[(loc(a_2, i_8_1): Ref), val] == 1 || Heap[(loc(a_2, i_8_1): Ref), val] == 2);
          }
          assume false;
        }
        assume (forall i_9_1_1: int ::
          { (loc(a_2, i_9_1_1): Ref) }
          0 <= i_9_1_1 && i_9_1_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_9_1_1): Ref), val] == 0 || (Heap[(loc(a_2, i_9_1_1): Ref), val] == 1 || Heap[(loc(a_2, i_9_1_1): Ref), val] == 2)
        );
        if (*) {
          if (0 <= i_10_1 && i_10_1 < white) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < white ==> loc(a, i).val == 0) might not hold on entry. Assertion loc(a, i).val == 0 might not hold. (dutch-flag.vpr@26.13--26.73) [177067]"}
              Heap[(loc(a_2, i_10_1): Ref), val] == 0;
          }
          assume false;
        }
        assume (forall i_11_1_1: int ::
          { (loc(a_2, i_11_1_1): Ref) }
          0 <= i_11_1_1 && i_11_1_1 < white ==> Heap[(loc(a_2, i_11_1_1): Ref), val] == 0
        );
        if (*) {
          if (white <= i_12_1 && i_12_1 < unsorted) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } white <= i && i < unsorted ==> loc(a, i).val == 1) might not hold on entry. Assertion loc(a, i).val == 1 might not hold. (dutch-flag.vpr@27.13--27.82) [177068]"}
              Heap[(loc(a_2, i_12_1): Ref), val] == 1;
          }
          assume false;
        }
        assume (forall i_13_1_1: int ::
          { (loc(a_2, i_13_1_1): Ref) }
          white <= i_13_1_1 && i_13_1_1 < unsorted ==> Heap[(loc(a_2, i_13_1_1): Ref), val] == 1
        );
        if (*) {
          if (blue <= i_14_1 && i_14_1 < (length_2(a_2): int)) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } blue <= i && i < length(a) ==> loc(a, i).val == 2) might not hold on entry. Assertion loc(a, i).val == 2 might not hold. (dutch-flag.vpr@28.13--28.81) [177069]"}
              Heap[(loc(a_2, i_14_1): Ref), val] == 2;
          }
          assume false;
        }
        assume (forall i_15_1_1: int ::
          { (loc(a_2, i_15_1_1): Ref) }
          blue <= i_15_1_1 && i_15_1_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_15_1_1): Ref), val] == 2
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc blue, unsorted, white;
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall i$1: Int :: { loc(a, i$1) } 0 <= i$1 && i$1 < length(a) ==> acc(loc(a, i$1).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i$1).val might not be injective. (dutch-flag.vpr@23.13--23.22) [177070]"}
          (forall i$1_2_1: int, i$1_2_2: int ::
          
          (((i$1_2_1 != i$1_2_2 && (0 <= i$1_2_1 && i$1_2_1 < (length_2(a_2): int))) && (0 <= i$1_2_2 && i$1_2_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$1_2_1): Ref) != (loc(a_2, i$1_2_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i$1_2_1: int ::
            { (loc(a_2, i$1_2_1): Ref) } { (loc(a_2, i$1_2_1): Ref) }
            (0 <= i$1_2_1 && i$1_2_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i$1_2_1): Ref)) && invRecv5((loc(a_2, i$1_2_1): Ref)) == i$1_2_1
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            ((0 <= invRecv5(o_9) && invRecv5(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i$1_2_1: int ::
            { (loc(a_2, i$1_2_1): Ref) } { (loc(a_2, i$1_2_1): Ref) }
            0 <= i$1_2_1 && i$1_2_1 < (length_2(a_2): int) ==> (loc(a_2, i$1_2_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((0 <= invRecv5(o_9) && invRecv5(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv5(o_9) && invRecv5(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume 0 <= white;
        assume white <= unsorted;
        assume unsorted <= blue;
        assume blue <= (length_2(a_2): int);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < length(a) ==> loc(a, i).val == 0 || (loc(a, i).val == 1 || loc(a, i).val == 2))
          if (*) {
            if (0 <= i_15 && i_15 < (length_2(a_2): int)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@25.13--25.127) [177071]"}
                HasDirectPerm(Mask, (loc(a_2, i_15): Ref), val);
              if (!(Heap[(loc(a_2, i_15): Ref), val] == 0)) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@25.13--25.127) [177072]"}
                  HasDirectPerm(Mask, (loc(a_2, i_15): Ref), val);
                if (!(Heap[(loc(a_2, i_15): Ref), val] == 1)) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@25.13--25.127) [177073]"}
                    HasDirectPerm(Mask, (loc(a_2, i_15): Ref), val);
                }
              }
            }
            assume false;
          }
        assume (forall i_17_1: int ::
          { (loc(a_2, i_17_1): Ref) }
          0 <= i_17_1 && i_17_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_17_1): Ref), val] == 0 || (Heap[(loc(a_2, i_17_1): Ref), val] == 1 || Heap[(loc(a_2, i_17_1): Ref), val] == 2)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < white ==> loc(a, i).val == 0)
          if (*) {
            if (0 <= i_7 && i_7 < white) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@26.13--26.73) [177074]"}
                HasDirectPerm(Mask, (loc(a_2, i_7): Ref), val);
            }
            assume false;
          }
        assume (forall i_19_1: int ::
          { (loc(a_2, i_19_1): Ref) }
          0 <= i_19_1 && i_19_1 < white ==> Heap[(loc(a_2, i_19_1): Ref), val] == 0
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } white <= i && i < unsorted ==> loc(a, i).val == 1)
          if (*) {
            if (white <= i_21 && i_21 < unsorted) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@27.13--27.82) [177075]"}
                HasDirectPerm(Mask, (loc(a_2, i_21): Ref), val);
            }
            assume false;
          }
        assume (forall i_21_1: int ::
          { (loc(a_2, i_21_1): Ref) }
          white <= i_21_1 && i_21_1 < unsorted ==> Heap[(loc(a_2, i_21_1): Ref), val] == 1
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } blue <= i && i < length(a) ==> loc(a, i).val == 2)
          if (*) {
            if (blue <= i_8 && i_8 < (length_2(a_2): int)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (dutch-flag.vpr@28.13--28.81) [177076]"}
                HasDirectPerm(Mask, (loc(a_2, i_8): Ref), val);
            }
            assume false;
          }
        assume (forall i_23_1: int ::
          { (loc(a_2, i_23_1): Ref) }
          blue <= i_23_1 && i_23_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_23_1): Ref), val] == 2
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
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(a, i$1).val might not be injective. (dutch-flag.vpr@23.13--23.22) [177077]"}
          (forall i$1_3: int, i$1_3_1: int ::
          
          (((i$1_3 != i$1_3_1 && (0 <= i$1_3 && i$1_3 < (length_2(a_2): int))) && (0 <= i$1_3_1 && i$1_3_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$1_3): Ref) != (loc(a_2, i$1_3_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i$1_3: int ::
            { (loc(a_2, i$1_3): Ref) } { (loc(a_2, i$1_3): Ref) }
            (0 <= i$1_3 && i$1_3 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i$1_3): Ref)) && invRecv6((loc(a_2, i$1_3): Ref)) == i$1_3
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            ((0 <= invRecv6(o_9) && invRecv6(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_9) ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i$1_3: int ::
            { (loc(a_2, i$1_3): Ref) } { (loc(a_2, i$1_3): Ref) }
            0 <= i$1_3 && i$1_3 < (length_2(a_2): int) ==> (loc(a_2, i$1_3): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((0 <= invRecv6(o_9) && invRecv6(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv6(o_9) && invRecv6(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume 0 <= white;
        assume white <= unsorted;
        assume unsorted <= blue;
        assume blue <= (length_2(a_2): int);
        assume (forall i_24_1: int ::
          { (loc(a_2, i_24_1): Ref) }
          0 <= i_24_1 && i_24_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_24_1): Ref), val] == 0 || (Heap[(loc(a_2, i_24_1): Ref), val] == 1 || Heap[(loc(a_2, i_24_1): Ref), val] == 2)
        );
        assume (forall i_25_1: int ::
          { (loc(a_2, i_25_1): Ref) }
          0 <= i_25_1 && i_25_1 < white ==> Heap[(loc(a_2, i_25_1): Ref), val] == 0
        );
        assume (forall i_26_1: int ::
          { (loc(a_2, i_26_1): Ref) }
          white <= i_26_1 && i_26_1 < unsorted ==> Heap[(loc(a_2, i_26_1): Ref), val] == 1
        );
        assume (forall i_27_2: int ::
          { (loc(a_2, i_27_2): Ref) }
          blue <= i_27_2 && i_27_2 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_27_2): Ref), val] == 2
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume unsorted < blue;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: tmp := loc(a, unsorted).val -- dutch-flag.vpr@30.5--30.41
            
            // -- Check definedness of loc(a, unsorted).val
              assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, unsorted).val (dutch-flag.vpr@30.5--30.41) [177078]"}
                HasDirectPerm(Mask, (loc(a_2, unsorted): Ref), val);
            tmp := Heap[(loc(a_2, unsorted): Ref), val];
            assume state(Heap, Mask);
          
          // -- Translating statement: if (tmp == 1) -- dutch-flag.vpr@31.5--42.6
            if (tmp == 1) {
              
              // -- Translating statement: unsorted := unsorted + 1 -- dutch-flag.vpr@32.7--32.31
                unsorted := unsorted + 1;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: if (tmp == 0) -- dutch-flag.vpr@33.7--42.6
                if (tmp == 0) {
                  
                  // -- Translating statement: loc(a, unsorted).val := loc(a, white).val -- dutch-flag.vpr@34.7--34.46
                    
                    // -- Check definedness of loc(a, white).val
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, white).val (dutch-flag.vpr@34.7--34.46) [177079]"}
                        HasDirectPerm(Mask, (loc(a_2, white): Ref), val);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, unsorted).val (dutch-flag.vpr@34.7--34.46) [177080]"}
                      FullPerm == Mask[(loc(a_2, unsorted): Ref), val];
                    Heap := Heap[(loc(a_2, unsorted): Ref), val:=Heap[(loc(a_2, white): Ref), val]];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: loc(a, white).val := tmp -- dutch-flag.vpr@35.7--35.30
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, white).val (dutch-flag.vpr@35.7--35.30) [177081]"}
                      FullPerm == Mask[(loc(a_2, white): Ref), val];
                    Heap := Heap[(loc(a_2, white): Ref), val:=tmp];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: white := white + 1 -- dutch-flag.vpr@36.7--36.25
                    white := white + 1;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: unsorted := unsorted + 1 -- dutch-flag.vpr@37.7--37.31
                    unsorted := unsorted + 1;
                    assume state(Heap, Mask);
                } else {
                  
                  // -- Translating statement: loc(a, unsorted).val := loc(a, blue - 1).val -- dutch-flag.vpr@39.7--39.49
                    
                    // -- Check definedness of loc(a, blue - 1).val
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, blue - 1).val (dutch-flag.vpr@39.7--39.49) [177082]"}
                        HasDirectPerm(Mask, (loc(a_2, blue - 1): Ref), val);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, unsorted).val (dutch-flag.vpr@39.7--39.49) [177083]"}
                      FullPerm == Mask[(loc(a_2, unsorted): Ref), val];
                    Heap := Heap[(loc(a_2, unsorted): Ref), val:=Heap[(loc(a_2, blue - 1): Ref), val]];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: blue := blue - 1 -- dutch-flag.vpr@40.7--40.23
                    blue := blue - 1;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: loc(a, blue).val := tmp -- dutch-flag.vpr@41.7--41.29
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, blue).val (dutch-flag.vpr@41.7--41.29) [177084]"}
                      FullPerm == Mask[(loc(a_2, blue): Ref), val];
                    Heap := Heap[(loc(a_2, blue): Ref), val:=tmp];
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i$1) is injective
          assert {:msg "  Loop invariant (forall i$1: Int :: { loc(a, i$1) } 0 <= i$1 && i$1 < length(a) ==> acc(loc(a, i$1).val, write)) might not be preserved. Quantified resource loc(a, i$1).val might not be injective. (dutch-flag.vpr@23.13--23.22) [177085]"}
            (forall i$1_4_1: int, i$1_4_2: int ::
            { neverTriggered7(i$1_4_1), neverTriggered7(i$1_4_2) }
            (((i$1_4_1 != i$1_4_2 && (0 <= i$1_4_1 && i$1_4_1 < (length_2(a_2): int))) && (0 <= i$1_4_2 && i$1_4_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$1_4_1): Ref) != (loc(a_2, i$1_4_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i$1: Int :: { loc(a, i$1) } 0 <= i$1 && i$1 < length(a) ==> acc(loc(a, i$1).val, write)) might not be preserved. There might be insufficient permission to access loc(a, i$1).val (dutch-flag.vpr@23.13--23.22) [177086]"}
            (forall i$1_4_1: int ::
            { (loc(a_2, i$1_4_1): Ref) } { (loc(a_2, i$1_4_1): Ref) }
            0 <= i$1_4_1 && i$1_4_1 < (length_2(a_2): int) ==> Mask[(loc(a_2, i$1_4_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i$1)
          assume (forall i$1_4_1: int ::
            { (loc(a_2, i$1_4_1): Ref) } { (loc(a_2, i$1_4_1): Ref) }
            (0 <= i$1_4_1 && i$1_4_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i$1_4_1): Ref)) && invRecv7((loc(a_2, i$1_4_1): Ref)) == i$1_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            (0 <= invRecv7(o_9) && invRecv7(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((0 <= invRecv7(o_9) && invRecv7(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv7(o_9) && invRecv7(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not be preserved. Assertion 0 <= white might not hold. (dutch-flag.vpr@24.13--24.85) [177087]"}
          0 <= white;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not be preserved. Assertion white <= unsorted might not hold. (dutch-flag.vpr@24.13--24.85) [177088]"}
          white <= unsorted;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not be preserved. Assertion unsorted <= blue might not hold. (dutch-flag.vpr@24.13--24.85) [177089]"}
          unsorted <= blue;
        assert {:msg "  Loop invariant 0 <= white && (white <= unsorted && (unsorted <= blue && blue <= length(a))) might not be preserved. Assertion blue <= length(a) might not hold. (dutch-flag.vpr@24.13--24.85) [177090]"}
          blue <= (length_2(a_2): int);
        if (*) {
          if (0 <= i_28 && i_28 < (length_2(a_2): int)) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < length(a) ==> loc(a, i).val == 0 || (loc(a, i).val == 1 || loc(a, i).val == 2)) might not be preserved. Assertion loc(a, i).val == 0 || (loc(a, i).val == 1 || loc(a, i).val == 2) might not hold. (dutch-flag.vpr@25.13--25.127) [177091]"}
              Heap[(loc(a_2, i_28): Ref), val] == 0 || (Heap[(loc(a_2, i_28): Ref), val] == 1 || Heap[(loc(a_2, i_28): Ref), val] == 2);
          }
          assume false;
        }
        assume (forall i_29_1: int ::
          { (loc(a_2, i_29_1): Ref) }
          0 <= i_29_1 && i_29_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_29_1): Ref), val] == 0 || (Heap[(loc(a_2, i_29_1): Ref), val] == 1 || Heap[(loc(a_2, i_29_1): Ref), val] == 2)
        );
        if (*) {
          if (0 <= i_30 && i_30 < white) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < white ==> loc(a, i).val == 0) might not be preserved. Assertion loc(a, i).val == 0 might not hold. (dutch-flag.vpr@26.13--26.73) [177092]"}
              Heap[(loc(a_2, i_30): Ref), val] == 0;
          }
          assume false;
        }
        assume (forall i_31_1: int ::
          { (loc(a_2, i_31_1): Ref) }
          0 <= i_31_1 && i_31_1 < white ==> Heap[(loc(a_2, i_31_1): Ref), val] == 0
        );
        if (*) {
          if (white <= i_32 && i_32 < unsorted) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } white <= i && i < unsorted ==> loc(a, i).val == 1) might not be preserved. Assertion loc(a, i).val == 1 might not hold. (dutch-flag.vpr@27.13--27.82) [177093]"}
              Heap[(loc(a_2, i_32): Ref), val] == 1;
          }
          assume false;
        }
        assume (forall i_33_1: int ::
          { (loc(a_2, i_33_1): Ref) }
          white <= i_33_1 && i_33_1 < unsorted ==> Heap[(loc(a_2, i_33_1): Ref), val] == 1
        );
        if (*) {
          if (blue <= i_34 && i_34 < (length_2(a_2): int)) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } blue <= i && i < length(a) ==> loc(a, i).val == 2) might not be preserved. Assertion loc(a, i).val == 2 might not hold. (dutch-flag.vpr@28.13--28.81) [177094]"}
              Heap[(loc(a_2, i_34): Ref), val] == 2;
          }
          assume false;
        }
        assume (forall i_35_1_1: int ::
          { (loc(a_2, i_35_1_1): Ref) }
          blue <= i_35_1_1 && i_35_1_1 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_35_1_1): Ref), val] == 2
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(unsorted < blue);
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(a, i$1).val might not be injective. (dutch-flag.vpr@23.13--23.22) [177095]"}
        (forall i$1_5_1: int, i$1_5_2: int ::
        
        (((i$1_5_1 != i$1_5_2 && (0 <= i$1_5_1 && i$1_5_1 < (length_2(a_2): int))) && (0 <= i$1_5_2 && i$1_5_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$1_5_1): Ref) != (loc(a_2, i$1_5_2): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i$1_5_1: int ::
          { (loc(a_2, i$1_5_1): Ref) } { (loc(a_2, i$1_5_1): Ref) }
          (0 <= i$1_5_1 && i$1_5_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i$1_5_1): Ref)) && invRecv8((loc(a_2, i$1_5_1): Ref)) == i$1_5_1
        );
        assume (forall o_9: Ref ::
          { invRecv8(o_9) }
          ((0 <= invRecv8(o_9) && invRecv8(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i$1_5_1: int ::
          { (loc(a_2, i$1_5_1): Ref) } { (loc(a_2, i$1_5_1): Ref) }
          0 <= i$1_5_1 && i$1_5_1 < (length_2(a_2): int) ==> (loc(a_2, i$1_5_1): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          (((0 <= invRecv8(o_9) && invRecv8(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv8(o_9) && invRecv8(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume 0 <= white;
      assume white <= unsorted;
      assume unsorted <= blue;
      assume blue <= (length_2(a_2): int);
      assume (forall i_36: int ::
        { (loc(a_2, i_36): Ref) }
        0 <= i_36 && i_36 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_36): Ref), val] == 0 || (Heap[(loc(a_2, i_36): Ref), val] == 1 || Heap[(loc(a_2, i_36): Ref), val] == 2)
      );
      assume (forall i_37: int ::
        { (loc(a_2, i_37): Ref) }
        0 <= i_37 && i_37 < white ==> Heap[(loc(a_2, i_37): Ref), val] == 0
      );
      assume (forall i_38: int ::
        { (loc(a_2, i_38): Ref) }
        white <= i_38 && i_38 < unsorted ==> Heap[(loc(a_2, i_38): Ref), val] == 1
      );
      assume (forall i_39: int ::
        { (loc(a_2, i_39): Ref) }
        blue <= i_39 && i_39 < (length_2(a_2): int) ==> Heap[(loc(a_2, i_39): Ref), val] == 2
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i$0) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i$0).val might not be injective. (dutch-flag.vpr@15.11--15.20) [177096]"}
        (forall i$0_2_1: int, i$0_2_2: int ::
        { neverTriggered3(i$0_2_1), neverTriggered3(i$0_2_2) }
        (((i$0_2_1 != i$0_2_2 && (0 <= i$0_2_1 && i$0_2_1 < (length_2(a_2): int))) && (0 <= i$0_2_2 && i$0_2_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0_2_1): Ref) != (loc(a_2, i$0_2_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of DutchFlag might not hold. There might be insufficient permission to access loc(a, i$0).val (dutch-flag.vpr@15.11--15.20) [177097]"}
        (forall i$0_2_1: int ::
        { (loc(a_2, i$0_2_1): Ref) } { (loc(a_2, i$0_2_1): Ref) }
        0 <= i$0_2_1 && i$0_2_1 < (length_2(a_2): int) ==> Mask[(loc(a_2, i$0_2_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i$0)
      assume (forall i$0_2_1: int ::
        { (loc(a_2, i$0_2_1): Ref) } { (loc(a_2, i$0_2_1): Ref) }
        (0 <= i$0_2_1 && i$0_2_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i$0_2_1): Ref)) && invRecv3((loc(a_2, i$0_2_1): Ref)) == i$0_2_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (0 <= invRecv3(o_9) && invRecv3(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_9)) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_9)) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv3(o_9) && invRecv3(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_6_2 && (i_6_2 < j_2_2 && j_2_2 < (length_2(a_2): int))) {
        assert {:msg "  Postcondition of DutchFlag might not hold. Assertion loc(a, i).val <= loc(a, j).val might not hold. (dutch-flag.vpr@16.11--16.86) [177098]"}
          Heap[(loc(a_2, i_6_2): Ref), val] <= Heap[(loc(a_2, j_2_2): Ref), val];
      }
      assume false;
    }
    assume (forall i_7_1_1: int, j_3_1_1: int ::
      { (loc(a_2, i_7_1_1): Ref), (loc(a_2, j_3_1_1): Ref) }
      0 <= i_7_1_1 && (i_7_1_1 < j_3_1_1 && j_3_1_1 < (length_2(a_2): int)) ==> Heap[(loc(a_2, i_7_1_1): Ref), val] <= Heap[(loc(a_2, j_3_1_1): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}