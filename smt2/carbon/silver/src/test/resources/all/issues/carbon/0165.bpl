// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:11:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0165.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0165-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(r_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x: Ref, idx_1: int): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x: Ref, idx_1: int): bool;

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
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(x: Ref, idx_1: int): Field PredicateType_p FrameType;
function  p#sm(x: Ref, idx_1: int): Field PredicateType_p PMaskType;
axiom (forall x: Ref, idx_1: int ::
  { PredicateMaskField(p_14(x, idx_1)) }
  PredicateMaskField(p_14(x, idx_1)) == p#sm(x, idx_1)
);
axiom (forall x: Ref, idx_1: int ::
  { p_14(x, idx_1) }
  IsPredicateField(p_14(x, idx_1))
);
axiom (forall x: Ref, idx_1: int ::
  { p_14(x, idx_1) }
  getPredWandId(p_14(x, idx_1)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, idx_1: int, x2: Ref, idx2: int ::
  { p_14(x, idx_1), p_14(x2, idx2) }
  p_14(x, idx_1) == p_14(x2, idx2) ==> x == x2 && idx_1 == idx2
);
axiom (forall x: Ref, idx_1: int, x2: Ref, idx2: int ::
  { p#sm(x, idx_1), p#sm(x2, idx2) }
  p#sm(x, idx_1) == p#sm(x2, idx2) ==> x == x2 && idx_1 == idx2
);

axiom (forall Heap: HeapType, x: Ref, idx_1: int ::
  { p#trigger(Heap, p_14(x, idx_1)) }
  p#everUsed(p_14(x, idx_1))
);

// ==================================================
// Translation of method test
// ==================================================

procedure test() returns ()
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
  
  // -- Translating statement: inhale (forall r: Ref ::acc(p(r, 0), perm(p(r, 0)))) -- 0165.vpr@11.3--11.52
    
    // -- Check definedness of (forall r: Ref ::acc(p(r, 0), perm(p(r, 0))))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(r, 0), perm(p(r, 0))) is injective
      assert {:msg "  Inhale might fail. Quantified resource p(r, 0) might not be injective. (0165.vpr@11.10--11.52) [191155]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered1(r_1_1), neverTriggered1(r_1_2) }
        (r_1_1 != r_1_2 && NoPerm < Mask[null, p_14(r_1_1, 0)]) && NoPerm < Mask[null, p_14(r_1_2, 0)] ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p_14(r_1_1, 0)] } { Mask[null, p_14(r_1_1, 0)] }
        NoPerm < Mask[null, p_14(r_1_1, 0)] ==> invRecv1(r_1_1, 0) == r_1_1 && qpRange1(r_1_1, 0)
      );
      assume (forall x: Ref, idx_1: int ::
        { invRecv1(x, idx_1) }
        NoPerm < Mask[null, p_14(invRecv1(x, idx_1), 0)] && qpRange1(x, idx_1) ==> invRecv1(x, idx_1) == x && 0 == idx_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction perm(p(r, 0)) might be negative. (0165.vpr@11.10--11.52) [191156]"}
      (forall r_1_1: Ref ::
      { Heap[null, p_14(r_1_1, 0)] } { Mask[null, p_14(r_1_1, 0)] }
      Mask[null, p_14(r_1_1, 0)] >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x: Ref, idx_1: int ::
        { QPMask[null, p_14(x, idx_1)] }
        NoPerm < Mask[null, p_14(invRecv1(x, idx_1), 0)] && qpRange1(x, idx_1) ==> (NoPerm < Mask[null, p_14(invRecv1(x, idx_1), 0)] ==> invRecv1(x, idx_1) == x && 0 == idx_1) && QPMask[null, p_14(x, idx_1)] == Mask[null, p_14(x, idx_1)] + Mask[null, p_14(invRecv1(x, idx_1), 0)]
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: Ref, idx_1: int ::
        { QPMask[null, p_14(x, idx_1)] }
        !(NoPerm < Mask[null, p_14(invRecv1(x, idx_1), 0)] && qpRange1(x, idx_1)) ==> QPMask[null, p_14(x, idx_1)] == Mask[null, p_14(x, idx_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}