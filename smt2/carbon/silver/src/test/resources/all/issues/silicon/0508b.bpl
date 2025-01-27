// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:32
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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
function  neverTriggered2(i_5_1: int): bool;
function  neverTriggered3(j_3: int): bool;
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
function  loc<CT>(a_3: (VCTArrayDomainType CT), i_6: int): CT;

// Translation of domain axiom loc_inject
axiom (forall <CT> a_2: (VCTArrayDomainType CT), i: int, j: int ::
  { (loc(a_2, i): CT), (loc(a_2, j): CT) }
  i >= 0 && (j >= 0 && i != j) ==> (loc(a_2, i): CT) != (loc(a_2, j): CT)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique bool_prop: Field NormalField bool;
axiom !IsPredicateField(bool_prop);
axiom !IsWandField(bool_prop);
const unique item: Field NormalField Ref;
axiom !IsPredicateField(item);
axiom !IsWandField(item);

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
  var i_3: int;
  var j_15: int;
  var i_4: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_13: int;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(trees, i): Ref).item might not be injective. (0508b.vpr@19.13--19.104) [57927]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < g_1)) && (0 <= i_1_1 && i_1_1 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(trees, i_1): Ref) != (loc(trees, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(trees, i_1): Ref) } { Heap[(loc(trees, i_1): Ref), item] }
        0 <= i_1 && i_1 < g_1 ==> qpRange1((loc(trees, i_1): Ref)) && invRecv1((loc(trees, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (0 <= invRecv1(o_9) && invRecv1(o_9) < g_1) && qpRange1(o_9) ==> (loc(trees, invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(trees, i_1): Ref) } { Heap[(loc(trees, i_1): Ref), item] }
        0 <= i_1 && i_1 < g_1 ==> (loc(trees, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < g_1) && qpRange1(o_9) ==> (loc(trees, invRecv1(o_9)): Ref) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv1(o_9) && invRecv1(o_9) < g_1) && qpRange1(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (loc(trees, i): Ref).item, (loc(trees, j): Ref).item } 0 <= i && (i < j && j < g) ==> (loc(trees, i): Ref).item != (loc(trees, j): Ref).item)
      if (*) {
        if (0 <= i_3 && (i_3 < j_15 && j_15 < g_1)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(trees, i): Ref).item (0508b.vpr@20.13--20.148) [57928]"}
            HasDirectPerm(Mask, (loc(trees, i_3): Ref), item);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(trees, j): Ref).item (0508b.vpr@20.13--20.148) [57929]"}
            HasDirectPerm(Mask, (loc(trees, j_15): Ref), item);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_1: int ::
      { Heap[(loc(trees, i_3_2): Ref), item], Heap[(loc(trees, j_1): Ref), item] }
      0 <= i_3_2 && (i_3_2 < j_1 && j_1 < g_1) ==> Heap[(loc(trees, i_3_2): Ref), item] != Heap[(loc(trees, j_1): Ref), item]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (loc(trees, i): Ref).item.bool_prop } 0 <= i && i < g ==> acc((loc(trees, i): Ref).item.bool_prop, wildcard))
      if (*) {
        if (0 <= i_4 && i_4 < g_1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(trees, i): Ref).item (0508b.vpr@21.13--21.124) [57930]"}
            HasDirectPerm(Mask, (loc(trees, i_4): Ref), item);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(trees, i): Ref).item.bool_prop might not be injective. (0508b.vpr@21.13--21.124) [57931]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < g_1)) && (0 <= i_5_2 && i_5_2 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[(loc(trees, i_5_1): Ref), item] != Heap[(loc(trees, i_5_2): Ref), item]
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Heap[(loc(trees, i_5_1): Ref), item] } { Heap[Heap[(loc(trees, i_5_1): Ref), item], bool_prop] }
        0 <= i_5_1 && i_5_1 < g_1 ==> qpRange2(Heap[(loc(trees, i_5_1): Ref), item]) && invRecv2(Heap[(loc(trees, i_5_1): Ref), item]) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (0 <= invRecv2(o_9) && invRecv2(o_9) < g_1) && qpRange2(o_9) ==> Heap[(loc(trees, invRecv2(o_9)): Ref), item] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Heap[(loc(trees, i_5_1): Ref), item] } { Heap[Heap[(loc(trees, i_5_1): Ref), item], bool_prop] }
        0 <= i_5_1 && i_5_1 < g_1 ==> Heap[(loc(trees, i_5_1): Ref), item] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, bool_prop] }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < g_1) && qpRange2(o_9) ==> Heap[(loc(trees, invRecv2(o_9)): Ref), item] == o_9 && Mask[o_9, bool_prop] < QPMask[o_9, bool_prop]) && (!((0 <= invRecv2(o_9) && invRecv2(o_9) < g_1) && qpRange2(o_9)) ==> QPMask[o_9, bool_prop] == Mask[o_9, bool_prop])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != bool_prop ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall j: Int ::
  //     { (loc(trees, j): Ref).item.bool_prop }
  //     0 <= j && j < g ==> acc((loc(trees, j): Ref).item.bool_prop, wildcard)) -- 0508b.vpr@24.3--24.121
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { (loc(trees, j): Ref).item.bool_prop } 0 <= j && j < g ==> acc((loc(trees, j): Ref).item.bool_prop, wildcard))
      if (*) {
        if (0 <= j_13 && j_13 < g_1) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(trees, j): Ref).item (0508b.vpr@24.10--24.121) [57932]"}
            HasDirectPerm(ExhaleWellDef0Mask, (loc(trees, j_13): Ref), item);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(trees, j): Ref).item.bool_prop (0508b.vpr@24.10--24.121) [57933]"}
      (forall j_3: int ::
      
      0 <= j_3 && j_3 < g_1 ==> AssertMask[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop] > NoPerm
    );
    assume (forall j_3: int ::
      
      0 <= j_3 && j_3 < g_1 ==> wildcard < AssertMask[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508b.vpr@24.10--24.121) [57934]"}
        (forall j_3: int ::
        { AssertHeap[(loc(trees, j_3): Ref), item] } { AssertHeap[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop] }
        (0 <= j_3 && j_3 < g_1) && dummyFunction(AssertHeap[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver (loc(trees, j): Ref).item is injective
      assert {:msg "  Assert might fail. Quantified resource (loc(trees, j): Ref).item.bool_prop might not be injective. (0508b.vpr@24.10--24.121) [57935]"}
        (forall j_3: int, j_3_1: int ::
        { neverTriggered3(j_3), neverTriggered3(j_3_1) }
        (((j_3 != j_3_1 && (0 <= j_3 && j_3 < g_1)) && (0 <= j_3_1 && j_3_1 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[(loc(trees, j_3): Ref), item] != AssertHeap[(loc(trees, j_3_1): Ref), item]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(trees, j): Ref).item.bool_prop (0508b.vpr@24.10--24.121) [57936]"}
        (forall j_3: int ::
        { AssertHeap[(loc(trees, j_3): Ref), item] } { AssertHeap[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop] }
        0 <= j_3 && j_3 < g_1 ==> AssertMask[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver (loc(trees, j): Ref).item
      assume (forall j_3: int ::
        { AssertHeap[(loc(trees, j_3): Ref), item] } { AssertHeap[AssertHeap[(loc(trees, j_3): Ref), item], bool_prop] }
        (0 <= j_3 && j_3 < g_1) && NoPerm < wildcard ==> qpRange3(AssertHeap[(loc(trees, j_3): Ref), item]) && invRecv3(AssertHeap[(loc(trees, j_3): Ref), item]) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (0 <= invRecv3(o_9) && invRecv3(o_9) < g_1) && (NoPerm < wildcard && qpRange3(o_9)) ==> AssertHeap[(loc(trees, invRecv3(o_9)): Ref), item] == o_9
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_9: Ref ::
        { QPMask[o_9, bool_prop] }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < g_1) && (NoPerm < wildcard && qpRange3(o_9)) ==> AssertHeap[(loc(trees, invRecv3(o_9)): Ref), item] == o_9 && QPMask[o_9, bool_prop] == AssertMask[o_9, bool_prop] - wildcard) && (!((0 <= invRecv3(o_9) && invRecv3(o_9) < g_1) && (NoPerm < wildcard && qpRange3(o_9))) ==> QPMask[o_9, bool_prop] == AssertMask[o_9, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != bool_prop ==> AssertMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}