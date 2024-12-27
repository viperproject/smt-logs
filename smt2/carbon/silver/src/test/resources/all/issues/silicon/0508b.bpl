// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:40:16
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0508b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0508b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_5: int): bool;
function  neverTriggered3(j_3_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: alwaysTrue
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
// Translation of domain VCTArray
// ==================================================

// The type for domain VCTArray
type VCTArrayDomainType CT;

// Translation of domain function loc
function  loc<CT>(a_3: (VCTArrayDomainType CT), i_79: int): CT;

// Translation of domain axiom loc_inject
axiom (forall <CT> a_2: (VCTArrayDomainType CT), i: int, j_9: int ::
  { (loc(a_2, i): CT), (loc(a_2, j_9): CT) }
  i >= 0 && (j_9 >= 0 && i != j_9) ==> (loc(a_2, i): CT) != (loc(a_2, j_9): CT)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique bool_prop: Field NormalField bool;
axiom !IsPredicateField(bool_prop);
axiom !IsWandField(bool_prop);
const unique item_1: Field NormalField Ref;
axiom !IsPredicateField(item_1);
axiom !IsWandField(item_1);

// ==================================================
// Translation of function alwaysTrue
// ==================================================

// Uninterpreted function definitions
function  alwaysTrue(Heap: HeapType, v_2: Ref): bool;
function  alwaysTrue'(Heap: HeapType, v_2: Ref): bool;
axiom (forall Heap: HeapType, v_2: Ref ::
  { alwaysTrue(Heap, v_2) }
  alwaysTrue(Heap, v_2) == alwaysTrue'(Heap, v_2) && dummyFunction(alwaysTrue#triggerStateless(v_2))
);
axiom (forall Heap: HeapType, v_2: Ref ::
  { alwaysTrue'(Heap, v_2) }
  dummyFunction(alwaysTrue#triggerStateless(v_2))
);

// Framing axioms
function  alwaysTrue#frame(frame: FrameType, v_2: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, v_2: Ref ::
  { state(Heap, Mask), alwaysTrue'(Heap, v_2) }
  state(Heap, Mask) ==> alwaysTrue'(Heap, v_2) == alwaysTrue#frame(EmptyFrame, v_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, v_2: Ref ::
  { state(Heap, Mask), alwaysTrue'(Heap, v_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || alwaysTrue#trigger(EmptyFrame, v_2)) ==> alwaysTrue'(Heap, v_2)
);

// Trigger function (controlling recursive postconditions)
function  alwaysTrue#trigger(frame: FrameType, v_2: Ref): bool;

// State-independent trigger function
function  alwaysTrue#triggerStateless(v_2: Ref): bool;

// Check contract well-formedness and postcondition
procedure alwaysTrue#definedness(v_2: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[v_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume Result;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method some_method
// ==================================================

procedure some_method(trees: (VCTArrayDomainType Ref), g_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var i_2: int;
  var j: int;
  var i_4: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 < g_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (loc(trees, i): Ref).item } 0 <= i && i < g ==> acc((loc(trees, i): Ref).item, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(trees, i): Ref).item might not be injective. (0508b.vpr@19.13--19.104) [202876]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < g_1)) && (0 <= i_1_1 && i_1_1 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(trees, i_1): Ref) != (loc(trees, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(trees, i_1): Ref) } { Heap[(loc(trees, i_1): Ref), item_1] }
        0 <= i_1 && i_1 < g_1 ==> qpRange1((loc(trees, i_1): Ref)) && invRecv1((loc(trees, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (0 <= invRecv1(o_4) && invRecv1(o_4) < g_1) && qpRange1(o_4) ==> (loc(trees, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(trees, i_1): Ref) } { Heap[(loc(trees, i_1): Ref), item_1] }
        0 <= i_1 && i_1 < g_1 ==> (loc(trees, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, item_1] }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < g_1) && qpRange1(o_4) ==> (loc(trees, invRecv1(o_4)): Ref) == o_4 && Mask[o_4, item_1] < QPMask[o_4, item_1]) && (!((0 <= invRecv1(o_4) && invRecv1(o_4) < g_1) && qpRange1(o_4)) ==> QPMask[o_4, item_1] == Mask[o_4, item_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != item_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (loc(trees, i): Ref).item, (loc(trees, j): Ref).item } 0 <= i && (i < j && j < g) ==> (loc(trees, i): Ref).item != (loc(trees, j): Ref).item)
      if (*) {
        if (0 <= i_2 && (i_2 < j && j < g_1)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(trees, i): Ref).item (0508b.vpr@20.13--20.148) [202877]"}
            HasDirectPerm(Mask, (loc(trees, i_2): Ref), item_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(trees, j): Ref).item (0508b.vpr@20.13--20.148) [202878]"}
            HasDirectPerm(Mask, (loc(trees, j): Ref), item_1);
        }
        assume false;
      }
    assume (forall i_3: int, j_1: int ::
      { Heap[(loc(trees, i_3): Ref), item_1], Heap[(loc(trees, j_1): Ref), item_1] }
      0 <= i_3 && (i_3 < j_1 && j_1 < g_1) ==> Heap[(loc(trees, i_3): Ref), item_1] != Heap[(loc(trees, j_1): Ref), item_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (loc(trees, i): Ref).item.bool_prop } 0 <= i && i < g ==> acc((loc(trees, i): Ref).item.bool_prop, wildcard))
      if (*) {
        if (0 <= i_4 && i_4 < g_1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(trees, i): Ref).item (0508b.vpr@21.13--21.124) [202879]"}
            HasDirectPerm(Mask, (loc(trees, i_4): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(trees, i): Ref).item.bool_prop might not be injective. (0508b.vpr@21.13--21.124) [202880]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < g_1)) && (0 <= i_5_1 && i_5_1 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[(loc(trees, i_5): Ref), item_1] != Heap[(loc(trees, i_5_1): Ref), item_1]
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Heap[(loc(trees, i_5): Ref), item_1] } { Heap[Heap[(loc(trees, i_5): Ref), item_1], bool_prop] }
        0 <= i_5 && i_5 < g_1 ==> qpRange2(Heap[(loc(trees, i_5): Ref), item_1]) && invRecv2(Heap[(loc(trees, i_5): Ref), item_1]) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (0 <= invRecv2(o_4) && invRecv2(o_4) < g_1) && qpRange2(o_4) ==> Heap[(loc(trees, invRecv2(o_4)): Ref), item_1] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Heap[(loc(trees, i_5): Ref), item_1] } { Heap[Heap[(loc(trees, i_5): Ref), item_1], bool_prop] }
        0 <= i_5 && i_5 < g_1 ==> Heap[(loc(trees, i_5): Ref), item_1] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < g_1) && qpRange2(o_4) ==> Heap[(loc(trees, invRecv2(o_4)): Ref), item_1] == o_4 && Mask[o_4, bool_prop] < QPMask[o_4, bool_prop]) && (!((0 <= invRecv2(o_4) && invRecv2(o_4) < g_1) && qpRange2(o_4)) ==> QPMask[o_4, bool_prop] == Mask[o_4, bool_prop])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall j: Int ::
  //     { (loc(trees, j): Ref).item.bool_prop }
  //     0 <= j && j < g ==> acc((loc(trees, j): Ref).item.bool_prop, wildcard)) -- 0508b.vpr@24.3--24.121
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of (forall j: Int :: { (loc(trees, j): Ref).item.bool_prop } 0 <= j && j < g ==> acc((loc(trees, j): Ref).item.bool_prop, wildcard))
      if (*) {
        if (0 <= j_2 && j_2 < g_1) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(trees, j): Ref).item (0508b.vpr@24.10--24.121) [202881]"}
            HasDirectPerm(ExhaleWellDef0Mask, (loc(trees, j_2): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(trees, j): Ref).item.bool_prop (0508b.vpr@24.10--24.121) [202882]"}
      (forall j_3_1: int ::
      
      0 <= j_3_1 && j_3_1 < g_1 ==> AssertMask[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop] > NoPerm
    );
    assume (forall j_3_1: int ::
      
      0 <= j_3_1 && j_3_1 < g_1 ==> wildcard < AssertMask[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508b.vpr@24.10--24.121) [202883]"}
        (forall j_3_1: int ::
        { AssertHeap[(loc(trees, j_3_1): Ref), item_1] } { AssertHeap[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop] }
        (0 <= j_3_1 && j_3_1 < g_1) && dummyFunction(AssertHeap[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver (loc(trees, j): Ref).item is injective
      assert {:msg "  Assert might fail. Quantified resource (loc(trees, j): Ref).item.bool_prop might not be injective. (0508b.vpr@24.10--24.121) [202884]"}
        (forall j_3_1: int, j_3_2: int ::
        { neverTriggered3(j_3_1), neverTriggered3(j_3_2) }
        (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < g_1)) && (0 <= j_3_2 && j_3_2 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[(loc(trees, j_3_1): Ref), item_1] != AssertHeap[(loc(trees, j_3_2): Ref), item_1]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(trees, j): Ref).item.bool_prop (0508b.vpr@24.10--24.121) [202885]"}
        (forall j_3_1: int ::
        { AssertHeap[(loc(trees, j_3_1): Ref), item_1] } { AssertHeap[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop] }
        0 <= j_3_1 && j_3_1 < g_1 ==> AssertMask[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver (loc(trees, j): Ref).item
      assume (forall j_3_1: int ::
        { AssertHeap[(loc(trees, j_3_1): Ref), item_1] } { AssertHeap[AssertHeap[(loc(trees, j_3_1): Ref), item_1], bool_prop] }
        (0 <= j_3_1 && j_3_1 < g_1) && NoPerm < wildcard ==> qpRange3(AssertHeap[(loc(trees, j_3_1): Ref), item_1]) && invRecv3(AssertHeap[(loc(trees, j_3_1): Ref), item_1]) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && invRecv3(o_4) < g_1) && (NoPerm < wildcard && qpRange3(o_4)) ==> AssertHeap[(loc(trees, invRecv3(o_4)): Ref), item_1] == o_4
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < g_1) && (NoPerm < wildcard && qpRange3(o_4)) ==> AssertHeap[(loc(trees, invRecv3(o_4)): Ref), item_1] == o_4 && QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop] - wildcard) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < g_1) && (NoPerm < wildcard && qpRange3(o_4))) ==> QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}