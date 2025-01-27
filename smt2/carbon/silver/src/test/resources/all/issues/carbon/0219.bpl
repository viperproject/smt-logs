// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0219.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0219-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_56: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_56, f_3] }
  Heap[o_56, $allocated] ==> Heap[Heap[o_56, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_51) ==> Heap[o_38, f_51] == ExhaleHeap[o_38, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26), ExhaleHeap[null, PredicateMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> Heap[null, PredicateMaskField(pm_f_26)] == ExhaleHeap[null, PredicateMaskField(pm_f_26)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_26, f_51] }
    Heap[null, PredicateMaskField(pm_f_26)][o2_26, f_51] ==> Heap[o2_26, f_51] == ExhaleHeap[o2_26, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26), ExhaleHeap[null, WandMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> Heap[null, WandMaskField(pm_f_26)] == ExhaleHeap[null, WandMaskField(pm_f_26)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_26, f_51] }
    Heap[null, WandMaskField(pm_f_26)][o2_26, f_51] ==> Heap[o2_26, f_51] == ExhaleHeap[o2_26, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_56: Ref, f_22: (Field A B), v: B ::
  { Heap[o_56, f_22:=v] }
  succHeap(Heap, Heap[o_56, f_22:=v])
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

function  neverTriggered2(q1_1: int, q2_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange2(recv: Ref): bool;

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
// Translation of domain Matrix
// ==================================================

// The type for domain Matrix
type MatrixDomainType;

// Translation of domain function loc
function  loc(m_19: MatrixDomainType, i_6: int, j_18: int): Ref;

// Translation of domain function width
function  width(m_19: MatrixDomainType): int;

// Translation of domain function height
function  height_1(m_19: MatrixDomainType): int;

// Translation of domain axiom loc_inject
axiom (forall m_18: MatrixDomainType, i1_9: int, i2: int, j1_2: int, j2_2: int ::
  { (loc(m_18, i1_9, j1_2): Ref), (loc(m_18, i2, j2_2): Ref) }
  i1_9 >= 0 && (i2 >= 0 && (j1_2 >= 0 && (j2_2 >= 0 && (i1_9 < (width(m_18): int) && (i2 < (width(m_18): int) && (j1_2 < (height_1(m_18): int) && (j2_2 < (height_1(m_18): int) && (i1_9 != i2 || j1_2 != j2_2)))))))) ==> (loc(m_18, i1_9, j1_2): Ref) != (loc(m_18, i2, j2_2): Ref)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method identity
// ==================================================

procedure identity(m_18: MatrixDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall q1: Int, q2: Int :: { loc(m, q1, q2) } acc(loc(m, q1, q2).val, (q2 >= 0 && (q2 < height(m) && (q1 >= 0 && (q2 - height(m) + 1 <= 0 && (q1 < width(m) && q2 == q1)))) ? write : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(m, q1, q2).val might not be injective. (0219.vpr@6.12--6.171) [82446]"}
      (forall q1_1: int, q2_1: int, q1_1_1: int, q2_1_1: int ::
      
      ((q1_1 != q1_1_1 && q2_1 != q2_1_1) && NoPerm < (if q2_1 >= 0 && (q2_1 < (height_1(m_18): int) && (q1_1 >= 0 && (q2_1 - (height_1(m_18): int) + 1 <= 0 && (q1_1 < (width(m_18): int) && q2_1 == q1_1)))) then FullPerm else NoPerm)) && NoPerm < (if q2_1_1 >= 0 && (q2_1_1 < (height_1(m_18): int) && (q1_1_1 >= 0 && (q2_1_1 - (height_1(m_18): int) + 1 <= 0 && (q1_1_1 < (width(m_18): int) && q2_1_1 == q1_1_1)))) then FullPerm else NoPerm) ==> (loc(m_18, q1_1, q2_1): Ref) != (loc(m_18, q1_1_1, q2_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall q1_1: int, q2_1: int ::
        { (loc(m_18, q1_1, q2_1): Ref) } { (loc(m_18, q1_1, q2_1): Ref) }
        NoPerm < (if q2_1 >= 0 && (q2_1 < (height_1(m_18): int) && (q1_1 >= 0 && (q2_1 - (height_1(m_18): int) + 1 <= 0 && (q1_1 < (width(m_18): int) && q2_1 == q1_1)))) then FullPerm else NoPerm) ==> (qpRange2((loc(m_18, q1_1, q2_1): Ref)) && invRecv1((loc(m_18, q1_1, q2_1): Ref)) == q1_1) && invRecv2((loc(m_18, q1_1, q2_1): Ref)) == q2_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9), invRecv2(o_9) }
        NoPerm < (if invRecv2(o_9) >= 0 && (invRecv2(o_9) < (height_1(m_18): int) && (invRecv1(o_9) >= 0 && (invRecv2(o_9) - (height_1(m_18): int) + 1 <= 0 && (invRecv1(o_9) < (width(m_18): int) && invRecv2(o_9) == invRecv1(o_9))))) then FullPerm else NoPerm) && qpRange2(o_9) ==> (loc(m_18, invRecv1(o_9), invRecv2(o_9)): Ref) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (q2 >= 0 && (q2 < height(m) && (q1 >= 0 && (q2 - height(m) + 1 <= 0 && (q1 < width(m) && q2 == q1)))) ? write : none) might be negative. (0219.vpr@6.12--6.171) [82447]"}
      (forall q1_1: int, q2_1: int ::
      { (loc(m_18, q1_1, q2_1): Ref) } { (loc(m_18, q1_1, q2_1): Ref) }
      (if q2_1 >= 0 && (q2_1 < (height_1(m_18): int) && (q1_1 >= 0 && (q2_1 - (height_1(m_18): int) + 1 <= 0 && (q1_1 < (width(m_18): int) && q2_1 == q1_1)))) then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall q1_1: int, q2_1: int ::
        { (loc(m_18, q1_1, q2_1): Ref) } { (loc(m_18, q1_1, q2_1): Ref) }
        (if q2_1 >= 0 && (q2_1 < (height_1(m_18): int) && (q1_1 >= 0 && (q2_1 - (height_1(m_18): int) + 1 <= 0 && (q1_1 < (width(m_18): int) && q2_1 == q1_1)))) then FullPerm else NoPerm) > NoPerm ==> (loc(m_18, q1_1, q2_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (NoPerm < (if invRecv2(o_9) >= 0 && (invRecv2(o_9) < (height_1(m_18): int) && (invRecv1(o_9) >= 0 && (invRecv2(o_9) - (height_1(m_18): int) + 1 <= 0 && (invRecv1(o_9) < (width(m_18): int) && invRecv2(o_9) == invRecv1(o_9))))) then FullPerm else NoPerm) && qpRange2(o_9) ==> (NoPerm < (if invRecv2(o_9) >= 0 && (invRecv2(o_9) < (height_1(m_18): int) && (invRecv1(o_9) >= 0 && (invRecv2(o_9) - (height_1(m_18): int) + 1 <= 0 && (invRecv1(o_9) < (width(m_18): int) && invRecv2(o_9) == invRecv1(o_9))))) then FullPerm else NoPerm) ==> (loc(m_18, invRecv1(o_9), invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + (if invRecv2(o_9) >= 0 && (invRecv2(o_9) < (height_1(m_18): int) && (invRecv1(o_9) >= 0 && (invRecv2(o_9) - (height_1(m_18): int) + 1 <= 0 && (invRecv1(o_9) < (width(m_18): int) && invRecv2(o_9) == invRecv1(o_9))))) then FullPerm else NoPerm)) && (!(NoPerm < (if invRecv2(o_9) >= 0 && (invRecv2(o_9) < (height_1(m_18): int) && (invRecv1(o_9) >= 0 && (invRecv2(o_9) - (height_1(m_18): int) + 1 <= 0 && (invRecv1(o_9) < (width(m_18): int) && invRecv2(o_9) == invRecv1(o_9))))) then FullPerm else NoPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
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
      oldMask := Mask;
      oldHeap := Heap;
}