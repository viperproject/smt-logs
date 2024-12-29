// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:22:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/max_array/max-array-standard.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/max_array/max-array-standard-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_27: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_27, f_24] }
  Heap[o_27, $allocated] ==> Heap[Heap[o_27, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_25) ==> Heap[o_23, f_25] == ExhaleHeap[o_23, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_27: Ref, f_30: (Field A B), v: B ::
  { Heap[o_27, f_30:=v] }
  succHeap(Heap, Heap[o_27, f_30:=v])
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
function  neverTriggered4(j$3: int): bool;
function  neverTriggered5(j$3_2: int): bool;
function  neverTriggered6(j$3_3: int): bool;
function  neverTriggered7(j$3_4: int): bool;
function  neverTriggered8(j$3_5: int): bool;
function  neverTriggered9(j_1: int): bool;
function  neverTriggered10(j_2_1: int): bool;
function  neverTriggered11(j$0: int): bool;
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
function  invRecv9(recv: Ref): int;
function  invRecv10(recv: Ref): int;
function  invRecv11(recv: Ref): int;
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
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;

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
// Translation of method max
// ==================================================

procedure vmax_1(a_2: IArrayDomainType) returns (at: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j$1: int;
  var j$2: int;
  var k: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j$4: int;
  var j$5: int;
  var ExhaleHeap: HeapType;
  var j$4_1: int;
  var j$5_1: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var j$4_5: int;
  var j$5_5: int;
  var j$1_2: int;
  var j$2_2: int;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j).val might not be injective. (max-array-standard.vpr@18.12--18.21) [110907]"}
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
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j$0).val might not be injective. (max-array-standard.vpr@19.12--19.37) [110908]"}
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
        if (0 <= j$1 && j$1 < (len_1(a_2): int)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$1).val (max-array-standard.vpr@19.12--19.37) [110909]"}
            HasDirectPerm(PostMask, (loc(a_2, j$1): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$1).val (max-array-standard.vpr@19.12--19.37) [110910]"}
            HasDirectPerm(oldMask, (loc(a_2, j$1): Ref), val);
        }
        assume false;
      }
    assume (forall j$1_1: int ::
      { (loc(a_2, j$1_1): Ref) }
      0 <= j$1_1 && j$1_1 < (len_1(a_2): int) ==> PostHeap[(loc(a_2, j$1_1): Ref), val] == oldHeap[(loc(a_2, j$1_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    if ((len_1(a_2): int) == 0) {
      assume at == -1;
    } else {
      assume 0 <= at;
      assume at < (len_1(a_2): int);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, at).val)
      if (*) {
        if (0 <= j$2 && j$2 < (len_1(a_2): int)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$2).val (max-array-standard.vpr@21.12--21.33) [110911]"}
            HasDirectPerm(PostMask, (loc(a_2, j$2): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, at).val (max-array-standard.vpr@21.12--21.33) [110912]"}
            HasDirectPerm(PostMask, (loc(a_2, at): Ref), val);
        }
        assume false;
      }
    assume (forall j$2_1: int ::
      { (loc(a_2, j$2_1): Ref) }
      0 <= j$2_1 && j$2_1 < (len_1(a_2): int) ==> PostHeap[(loc(a_2, j$2_1): Ref), val] <= PostHeap[(loc(a_2, at): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (len(a) == 0) -- max-array-standard.vpr@23.3--40.4
    if ((len_1(a_2): int) == 0) {
      
      // -- Translating statement: at := -1 -- max-array-standard.vpr@24.5--24.13
        at := -1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: at := 0 -- max-array-standard.vpr@26.5--26.12
        at := 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: k := 1 -- max-array-standard.vpr@27.5--27.20
        k := 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (k < len(a)) -- max-array-standard.vpr@28.5--39.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Loop invariant 1 <= k && k <= len(a) might not hold on entry. Assertion 1 <= k might not hold. (max-array-standard.vpr@29.17--29.38) [110913]"}
              1 <= k;
            assert {:msg "  Loop invariant 1 <= k && k <= len(a) might not hold on entry. Assertion k <= len(a) might not hold. (max-array-standard.vpr@29.17--29.38) [110914]"}
              k <= (len_1(a_2): int);
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver loc(a, j$3) is injective
              assert {:msg "  Loop invariant (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write)) && (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)) might not hold on entry. Quantified resource loc(a, j$3).val might not be injective. (max-array-standard.vpr@30.17--30.42) [110915]"}
                (forall j$3: int, j$3_1: int ::
                { neverTriggered4(j$3), neverTriggered4(j$3_1) }
                (((j$3 != j$3_1 && (0 <= j$3 && j$3 < (len_1(a_2): int))) && (0 <= j$3_1 && j$3_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$3): Ref) != (loc(a_2, j$3_1): Ref)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write)) && (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)) might not hold on entry. There might be insufficient permission to access loc(a, j$3).val (max-array-standard.vpr@30.17--30.42) [110916]"}
                (forall j$3: int ::
                { (loc(a_2, j$3): Ref) } { (loc(a_2, j$3): Ref) }
                0 <= j$3 && j$3 < (len_1(a_2): int) ==> Mask[(loc(a_2, j$3): Ref), val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver loc(a, j$3)
              assume (forall j$3: int ::
                { (loc(a_2, j$3): Ref) } { (loc(a_2, j$3): Ref) }
                (0 <= j$3 && j$3 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, j$3): Ref)) && invRecv4((loc(a_2, j$3): Ref)) == j$3
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
              if (0 <= j$4 && j$4 < (len_1(a_2): int)) {
                assert {:msg "  Loop invariant (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write)) && (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)) might not hold on entry. Assertion loc(a, j$4).val == old(loc(a, j$4).val) might not hold. (max-array-standard.vpr@30.17--30.42) [110917]"}
                  Heap[(loc(a_2, j$4): Ref), val] == oldHeap[(loc(a_2, j$4): Ref), val];
              }
              assume false;
            }
            assume (forall j$4_1_1: int ::
              { (loc(a_2, j$4_1_1): Ref) }
              0 <= j$4_1_1 && j$4_1_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$4_1_1): Ref), val] == oldHeap[(loc(a_2, j$4_1_1): Ref), val]
            );
            assert {:msg "  Loop invariant 0 <= at && at < k might not hold on entry. Assertion 0 <= at might not hold. (max-array-standard.vpr@31.17--31.34) [110918]"}
              0 <= at;
            assert {:msg "  Loop invariant 0 <= at && at < k might not hold on entry. Assertion at < k might not hold. (max-array-standard.vpr@31.17--31.34) [110919]"}
              at < k;
            if (*) {
              if (0 <= j$5 && j$5 < k) {
                assert {:msg "  Loop invariant (forall j$5: Int :: { loc(a, j$5) } 0 <= j$5 && j$5 < k ==> loc(a, j$5).val <= loc(a, at).val) might not hold on entry. Assertion loc(a, j$5).val <= loc(a, at).val might not hold. (max-array-standard.vpr@32.17--32.33) [110920]"}
                  Heap[(loc(a_2, j$5): Ref), val] <= Heap[(loc(a_2, at): Ref), val];
              }
              assume false;
            }
            assume (forall j$5_1_1: int ::
              { (loc(a_2, j$5_1_1): Ref) }
              0 <= j$5_1_1 && j$5_1_1 < k ==> Heap[(loc(a_2, j$5_1_1): Ref), val] <= Heap[(loc(a_2, at): Ref), val]
            );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc k, at;
        
        // -- Check definedness of invariant
          if (*) {
            assume 1 <= k;
            assume k <= (len_1(a_2): int);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j$3).val might not be injective. (max-array-standard.vpr@30.17--30.42) [110921]"}
              (forall j$3_2: int, j$3_2_1: int ::
              
              (((j$3_2 != j$3_2_1 && (0 <= j$3_2 && j$3_2 < (len_1(a_2): int))) && (0 <= j$3_2_1 && j$3_2_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$3_2): Ref) != (loc(a_2, j$3_2_1): Ref)
            );
            
            // -- Define Inverse Function
              assume (forall j$3_2: int ::
                { (loc(a_2, j$3_2): Ref) } { (loc(a_2, j$3_2): Ref) }
                (0 <= j$3_2 && j$3_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, j$3_2): Ref)) && invRecv5((loc(a_2, j$3_2): Ref)) == j$3_2
              );
              assume (forall o_4: Ref ::
                { invRecv5(o_4) }
                ((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall j$3_2: int ::
                { (loc(a_2, j$3_2): Ref) } { (loc(a_2, j$3_2): Ref) }
                0 <= j$3_2 && j$3_2 < (len_1(a_2): int) ==> (loc(a_2, j$3_2): Ref) != null
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
            
            // -- Check definedness of (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val))
              if (*) {
                if (0 <= j$4_1 && j$4_1 < (len_1(a_2): int)) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$4).val (max-array-standard.vpr@30.17--30.42) [110922]"}
                    HasDirectPerm(Mask, (loc(a_2, j$4_1): Ref), val);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$4).val (max-array-standard.vpr@30.17--30.42) [110923]"}
                    HasDirectPerm(oldMask, (loc(a_2, j$4_1): Ref), val);
                }
                assume false;
              }
            assume (forall j$4_3: int ::
              { (loc(a_2, j$4_3): Ref) }
              0 <= j$4_3 && j$4_3 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$4_3): Ref), val] == oldHeap[(loc(a_2, j$4_3): Ref), val]
            );
            assume state(Heap, Mask);
            assume 0 <= at;
            assume at < k;
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall j$5: Int :: { loc(a, j$5) } 0 <= j$5 && j$5 < k ==> loc(a, j$5).val <= loc(a, at).val)
              if (*) {
                if (0 <= j$5_1 && j$5_1 < k) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j$5).val (max-array-standard.vpr@32.17--32.33) [110924]"}
                    HasDirectPerm(Mask, (loc(a_2, j$5_1): Ref), val);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, at).val (max-array-standard.vpr@32.17--32.33) [110925]"}
                    HasDirectPerm(Mask, (loc(a_2, at): Ref), val);
                }
                assume false;
              }
            assume (forall j$5_3: int ::
              { (loc(a_2, j$5_3): Ref) }
              0 <= j$5_3 && j$5_3 < k ==> Heap[(loc(a_2, j$5_3): Ref), val] <= Heap[(loc(a_2, at): Ref), val]
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
            assume 1 <= k;
            assume k <= (len_1(a_2): int);
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource loc(a, j$3).val might not be injective. (max-array-standard.vpr@30.17--30.42) [110926]"}
              (forall j$3_3: int, j$3_3_1: int ::
              
              (((j$3_3 != j$3_3_1 && (0 <= j$3_3 && j$3_3 < (len_1(a_2): int))) && (0 <= j$3_3_1 && j$3_3_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$3_3): Ref) != (loc(a_2, j$3_3_1): Ref)
            );
            
            // -- Define Inverse Function
              assume (forall j$3_3: int ::
                { (loc(a_2, j$3_3): Ref) } { (loc(a_2, j$3_3): Ref) }
                (0 <= j$3_3 && j$3_3 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, j$3_3): Ref)) && invRecv6((loc(a_2, j$3_3): Ref)) == j$3_3
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                ((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall j$3_3: int ::
                { (loc(a_2, j$3_3): Ref) } { (loc(a_2, j$3_3): Ref) }
                0 <= j$3_3 && j$3_3 < (len_1(a_2): int) ==> (loc(a_2, j$3_3): Ref) != null
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
            assume (forall j$4_4: int ::
              { (loc(a_2, j$4_4): Ref) }
              0 <= j$4_4 && j$4_4 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$4_4): Ref), val] == oldHeap[(loc(a_2, j$4_4): Ref), val]
            );
            assume 0 <= at;
            assume at < k;
            assume (forall j$5_4: int ::
              { (loc(a_2, j$5_4): Ref) }
              0 <= j$5_4 && j$5_4 < k ==> Heap[(loc(a_2, j$5_4): Ref), val] <= Heap[(loc(a_2, at): Ref), val]
            );
            assume state(Heap, Mask);
            // Check and assume guard
            assume k < (len_1(a_2): int);
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: if (loc(a, at).val < loc(a, k).val) -- max-array-standard.vpr@34.7--36.8
                
                // -- Check definedness of loc(a, at).val < loc(a, k).val
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, at).val (max-array-standard.vpr@34.11--34.41) [110927]"}
                    HasDirectPerm(Mask, (loc(a_2, at): Ref), val);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, k).val (max-array-standard.vpr@34.11--34.41) [110928]"}
                    HasDirectPerm(Mask, (loc(a_2, k): Ref), val);
                if (Heap[(loc(a_2, at): Ref), val] < Heap[(loc(a_2, k): Ref), val]) {
                  
                  // -- Translating statement: at := k -- max-array-standard.vpr@35.9--35.16
                    at := k;
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: k := k + 1 -- max-array-standard.vpr@38.7--38.17
                k := k + 1;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Loop invariant 1 <= k && k <= len(a) might not be preserved. Assertion 1 <= k might not hold. (max-array-standard.vpr@29.17--29.38) [110929]"}
              1 <= k;
            assert {:msg "  Loop invariant 1 <= k && k <= len(a) might not be preserved. Assertion k <= len(a) might not hold. (max-array-standard.vpr@29.17--29.38) [110930]"}
              k <= (len_1(a_2): int);
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver loc(a, j$3) is injective
              assert {:msg "  Loop invariant (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write)) && (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)) might not be preserved. Quantified resource loc(a, j$3).val might not be injective. (max-array-standard.vpr@30.17--30.42) [110931]"}
                (forall j$3_4: int, j$3_4_1: int ::
                { neverTriggered7(j$3_4), neverTriggered7(j$3_4_1) }
                (((j$3_4 != j$3_4_1 && (0 <= j$3_4 && j$3_4 < (len_1(a_2): int))) && (0 <= j$3_4_1 && j$3_4_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$3_4): Ref) != (loc(a_2, j$3_4_1): Ref)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write)) && (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)) might not be preserved. There might be insufficient permission to access loc(a, j$3).val (max-array-standard.vpr@30.17--30.42) [110932]"}
                (forall j$3_4: int ::
                { (loc(a_2, j$3_4): Ref) } { (loc(a_2, j$3_4): Ref) }
                0 <= j$3_4 && j$3_4 < (len_1(a_2): int) ==> Mask[(loc(a_2, j$3_4): Ref), val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver loc(a, j$3)
              assume (forall j$3_4: int ::
                { (loc(a_2, j$3_4): Ref) } { (loc(a_2, j$3_4): Ref) }
                (0 <= j$3_4 && j$3_4 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, j$3_4): Ref)) && invRecv7((loc(a_2, j$3_4): Ref)) == j$3_4
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
              if (0 <= j$4_5 && j$4_5 < (len_1(a_2): int)) {
                assert {:msg "  Loop invariant (forall j$3: Int :: { loc(a, j$3) } 0 <= j$3 && j$3 < len(a) ==> acc(loc(a, j$3).val, write)) && (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)) might not be preserved. Assertion loc(a, j$4).val == old(loc(a, j$4).val) might not hold. (max-array-standard.vpr@30.17--30.42) [110933]"}
                  Heap[(loc(a_2, j$4_5): Ref), val] == oldHeap[(loc(a_2, j$4_5): Ref), val];
              }
              assume false;
            }
            assume (forall j$4_6_1: int ::
              { (loc(a_2, j$4_6_1): Ref) }
              0 <= j$4_6_1 && j$4_6_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$4_6_1): Ref), val] == oldHeap[(loc(a_2, j$4_6_1): Ref), val]
            );
            assert {:msg "  Loop invariant 0 <= at && at < k might not be preserved. Assertion 0 <= at might not hold. (max-array-standard.vpr@31.17--31.34) [110934]"}
              0 <= at;
            assert {:msg "  Loop invariant 0 <= at && at < k might not be preserved. Assertion at < k might not hold. (max-array-standard.vpr@31.17--31.34) [110935]"}
              at < k;
            if (*) {
              if (0 <= j$5_5 && j$5_5 < k) {
                assert {:msg "  Loop invariant (forall j$5: Int :: { loc(a, j$5) } 0 <= j$5 && j$5 < k ==> loc(a, j$5).val <= loc(a, at).val) might not be preserved. Assertion loc(a, j$5).val <= loc(a, at).val might not hold. (max-array-standard.vpr@32.17--32.33) [110936]"}
                  Heap[(loc(a_2, j$5_5): Ref), val] <= Heap[(loc(a_2, at): Ref), val];
              }
              assume false;
            }
            assume (forall j$5_6_1: int ::
              { (loc(a_2, j$5_6_1): Ref) }
              0 <= j$5_6_1 && j$5_6_1 < k ==> Heap[(loc(a_2, j$5_6_1): Ref), val] <= Heap[(loc(a_2, at): Ref), val]
            );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(k < (len_1(a_2): int));
          assume state(Heap, Mask);
          assume 1 <= k;
          assume k <= (len_1(a_2): int);
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource loc(a, j$3).val might not be injective. (max-array-standard.vpr@30.17--30.42) [110937]"}
            (forall j$3_5: int, j$3_5_1: int ::
            
            (((j$3_5 != j$3_5_1 && (0 <= j$3_5 && j$3_5 < (len_1(a_2): int))) && (0 <= j$3_5_1 && j$3_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$3_5): Ref) != (loc(a_2, j$3_5_1): Ref)
          );
          
          // -- Define Inverse Function
            assume (forall j$3_5: int ::
              { (loc(a_2, j$3_5): Ref) } { (loc(a_2, j$3_5): Ref) }
              (0 <= j$3_5 && j$3_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange8((loc(a_2, j$3_5): Ref)) && invRecv8((loc(a_2, j$3_5): Ref)) == j$3_5
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              ((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall j$3_5: int ::
              { (loc(a_2, j$3_5): Ref) } { (loc(a_2, j$3_5): Ref) }
              0 <= j$3_5 && j$3_5 < (len_1(a_2): int) ==> (loc(a_2, j$3_5): Ref) != null
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
          assume (forall j$4_7: int ::
            { (loc(a_2, j$4_7): Ref) }
            0 <= j$4_7 && j$4_7 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$4_7): Ref), val] == oldHeap[(loc(a_2, j$4_7): Ref), val]
          );
          assume 0 <= at;
          assume at < k;
          assume (forall j$5_7: int ::
            { (loc(a_2, j$5_7): Ref) }
            0 <= j$5_7 && j$5_7 < k ==> Heap[(loc(a_2, j$5_7): Ref), val] <= Heap[(loc(a_2, at): Ref), val]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, j$0) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, j$0).val might not be injective. (max-array-standard.vpr@19.12--19.21) [110938]"}
        (forall j$0_2: int, j$0_2_1: int ::
        { neverTriggered3(j$0_2), neverTriggered3(j$0_2_1) }
        (((j$0_2 != j$0_2_1 && (0 <= j$0_2 && j$0_2 < (len_1(a_2): int))) && (0 <= j$0_2_1 && j$0_2_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$0_2): Ref) != (loc(a_2, j$0_2_1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of max might not hold. There might be insufficient permission to access loc(a, j$0).val (max-array-standard.vpr@19.12--19.37) [110939]"}
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
        assert {:msg "  Postcondition of max might not hold. Assertion loc(a, j$1).val == old(loc(a, j$1).val) might not hold. (max-array-standard.vpr@19.12--19.37) [110940]"}
          Heap[(loc(a_2, j$1_2): Ref), val] == oldHeap[(loc(a_2, j$1_2): Ref), val];
      }
      assume false;
    }
    assume (forall j$1_3_1: int ::
      { (loc(a_2, j$1_3_1): Ref) }
      0 <= j$1_3_1 && j$1_3_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$1_3_1): Ref), val] == oldHeap[(loc(a_2, j$1_3_1): Ref), val]
    );
    if ((len_1(a_2): int) == 0) {
      assert {:msg "  Postcondition of max might not hold. Assertion at == -1 might not hold. (max-array-standard.vpr@20.12--20.61) [110941]"}
        at == -1;
    } else {
      assert {:msg "  Postcondition of max might not hold. Assertion 0 <= at might not hold. (max-array-standard.vpr@20.12--20.61) [110942]"}
        0 <= at;
      assert {:msg "  Postcondition of max might not hold. Assertion at < len(a) might not hold. (max-array-standard.vpr@20.12--20.61) [110943]"}
        at < (len_1(a_2): int);
    }
    if (*) {
      if (0 <= j$2_2 && j$2_2 < (len_1(a_2): int)) {
        assert {:msg "  Postcondition of max might not hold. Assertion loc(a, j$2).val <= loc(a, at).val might not hold. (max-array-standard.vpr@21.12--21.33) [110944]"}
          Heap[(loc(a_2, j$2_2): Ref), val] <= Heap[(loc(a_2, at): Ref), val];
      }
      assume false;
    }
    assume (forall j$2_3_1: int ::
      { (loc(a_2, j$2_3_1): Ref) }
      0 <= j$2_3_1 && j$2_3_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$2_3_1): Ref), val] <= Heap[(loc(a_2, at): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method client
// ==================================================

procedure client() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: IArrayDomainType;
  var QPMask: MaskType;
  var i_11: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var x: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale len(a) == 3 -- max-array-standard.vpr@45.3--45.21
    assume (len_1(a_2): int) == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int ::
  //     { loc(a, j) }
  //     0 <= j && j < len(a) ==> acc(loc(a, j).val, write)) -- max-array-standard.vpr@46.3--46.19
    
    // -- Check definedness of (forall j: Int :: { loc(a, j) } 0 <= j && j < len(a) ==> acc(loc(a, j).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource loc(a, j).val might not be injective. (max-array-standard.vpr@46.10--46.19) [110945]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < (len_1(a_2): int))) && (0 <= j_1_1 && j_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_1): Ref) != (loc(a_2, j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(a_2, j_1): Ref) } { (loc(a_2, j_1): Ref) }
        (0 <= j_1 && j_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange9((loc(a_2, j_1): Ref)) && invRecv9((loc(a_2, j_1): Ref)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (loc(a_2, invRecv9(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(a_2, j_1): Ref) } { (loc(a_2, j_1): Ref) }
        0 <= j_1 && j_1 < (len_1(a_2): int) ==> (loc(a_2, j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv9(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> loc(a, i).val == i) -- max-array-standard.vpr@47.3--47.70
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> loc(a, i).val == i)
      if (*) {
        if (0 <= i_11 && i_11 < (len_1(a_2): int)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i).val (max-array-standard.vpr@47.10--47.70) [110946]"}
            HasDirectPerm(Mask, (loc(a_2, i_11): Ref), val);
        }
        assume false;
      }
    assume (forall i_1: int ::
      { (loc(a_2, i_1): Ref) }
      0 <= i_1 && i_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, i_1): Ref), val] == i_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x := max(a) -- max-array-standard.vpr@50.3--50.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver loc(a, j) is injective
        assert {:msg "  The precondition of method max might not hold. Quantified resource loc(a, j).val might not be injective. (max-array-standard.vpr@50.3--50.14) [110947]"}
          (forall j_2_1: int, j_2_2: int ::
          { neverTriggered10(j_2_1), neverTriggered10(j_2_2) }
          (((j_2_1 != j_2_2 && (0 <= j_2_1 && j_2_1 < (len_1(a_2): int))) && (0 <= j_2_2 && j_2_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j_2_1): Ref) != (loc(a_2, j_2_2): Ref)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method max might not hold. There might be insufficient permission to access loc(a, j).val (max-array-standard.vpr@50.3--50.14) [110948]"}
          (forall j_2_1: int ::
          { (loc(a_2, j_2_1): Ref) } { (loc(a_2, j_2_1): Ref) }
          0 <= j_2_1 && j_2_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, j_2_1): Ref), val] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver loc(a, j)
        assume (forall j_2_1: int ::
          { (loc(a_2, j_2_1): Ref) } { (loc(a_2, j_2_1): Ref) }
          (0 <= j_2_1 && j_2_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange10((loc(a_2, j_2_1): Ref)) && invRecv10((loc(a_2, j_2_1): Ref)) == j_2_1
        );
        assume (forall o_4: Ref ::
          { invRecv10(o_4) }
          (0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> (loc(a_2, invRecv10(o_4)): Ref) == o_4
        );
      
      // -- assume permission updates for field val
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          ((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> (loc(a_2, invRecv10(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc x;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource loc(a, j$0).val might not be injective. (max-array-standard.vpr@50.3--50.14) [110949]"}
        (forall j$0: int, j$0_3: int ::
        
        (((j$0 != j$0_3 && (0 <= j$0 && j$0 < (len_1(a_2): int))) && (0 <= j$0_3 && j$0_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, j$0): Ref) != (loc(a_2, j$0_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall j$0: int ::
          { (loc(a_2, j$0): Ref) } { (loc(a_2, j$0): Ref) }
          (0 <= j$0 && j$0 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange11((loc(a_2, j$0): Ref)) && invRecv11((loc(a_2, j$0): Ref)) == j$0
        );
        assume (forall o_4: Ref ::
          { invRecv11(o_4) }
          ((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (loc(a_2, invRecv11(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j$0: int ::
          { (loc(a_2, j$0): Ref) } { (loc(a_2, j$0): Ref) }
          0 <= j$0 && j$0 < (len_1(a_2): int) ==> (loc(a_2, j$0): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv11(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall j$1_3: int ::
        { (loc(a_2, j$1_3): Ref) }
        0 <= j$1_3 && j$1_3 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$1_3): Ref), val] == PreCallHeap[(loc(a_2, j$1_3): Ref), val]
      );
      if ((len_1(a_2): int) == 0) {
        assume x == -1;
      } else {
        assume 0 <= x;
        assume x < (len_1(a_2): int);
      }
      assume (forall j$2_3: int ::
        { (loc(a_2, j$2_3): Ref) }
        0 <= j$2_3 && j$2_3 < (len_1(a_2): int) ==> Heap[(loc(a_2, j$2_3): Ref), val] <= Heap[(loc(a_2, x): Ref), val]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert loc(a, 0).val <= x -- max-array-standard.vpr@52.3--52.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of loc(a, 0).val <= x
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 0).val (max-array-standard.vpr@52.10--52.28) [110950]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, 0): Ref), val);
    assert {:msg "  Assert might fail. Assertion loc(a, 0).val <= x might not hold. (max-array-standard.vpr@52.10--52.28) [110951]"}
      Heap[(loc(a_2, 0): Ref), val] <= x;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x == loc(a, len(a) - 1).val -- max-array-standard.vpr@53.3--53.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x == loc(a, len(a) - 1).val
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, len(a) - 1).val (max-array-standard.vpr@53.10--53.37) [110952]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, (len_1(a_2): int) - 1): Ref), val);
    assert {:msg "  Assert might fail. Assertion x == loc(a, len(a) - 1).val might not hold. (max-array-standard.vpr@53.10--53.37) [110953]"}
      x == Heap[(loc(a_2, (len_1(a_2): int) - 1): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x == 2 -- max-array-standard.vpr@54.3--54.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion x == 2 might not hold. (max-array-standard.vpr@54.10--54.16) [110954]"}
      x == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert loc(a, 1).val < x -- max-array-standard.vpr@55.3--55.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of loc(a, 1).val < x
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 1).val (max-array-standard.vpr@55.10--55.27) [110955]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, 1): Ref), val);
    assert {:msg "  Assert might fail. Assertion loc(a, 1).val < x might not hold. (max-array-standard.vpr@55.10--55.27) [110956]"}
      Heap[(loc(a_2, 1): Ref), val] < x;
    assume state(Heap, Mask);
}