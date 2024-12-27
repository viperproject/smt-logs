// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:47:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0288.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0288-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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

function  neverTriggered1(x_4: int): bool;
function  neverTriggered2(x_5: int): bool;
function  neverTriggered3(x_3: int): bool;
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
// - height 1: g
// - height 0: f
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): ArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
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
// Translation of function f
// ==================================================

// Uninterpreted function definitions
function  f_6(Heap: HeapType, a_2: ArrayDomainType): bool;
function  f'(Heap: HeapType, a_2: ArrayDomainType): bool;
axiom (forall Heap: HeapType, a_2: ArrayDomainType ::
  { f_6(Heap, a_2) }
  f_6(Heap, a_2) == f'(Heap, a_2) && dummyFunction(f#triggerStateless(a_2))
);
axiom (forall Heap: HeapType, a_2: ArrayDomainType ::
  { f'(Heap, a_2) }
  dummyFunction(f#triggerStateless(a_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType ::
  { state(Heap, Mask), f_6(Heap, a_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> f_6(Heap, a_2) == (forall k: int ::
    
    0 <= k && k < (len_1(a_2): int) ==> g_3(Heap, a_2)
  )
);

// Framing axioms
function  f#frame(frame: FrameType, a_2: ArrayDomainType): bool;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType ::
  { state(Heap, Mask), f'(Heap, a_2) }
  state(Heap, Mask) ==> f'(Heap, a_2) == f#frame(FrameFragment(f#condqp1(Heap, a_2)), a_2)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Int :: { loc(a, x) } 0 <= x && x < len(a) ==> acc(loc(a, x).val, write)) in function f
// ==================================================

function  f#condqp1(Heap: HeapType, a_1_1_1: ArrayDomainType): int;
function  sk_f#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType ::
  { f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2)) && sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2)) && sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2)) && sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2))): Ref), val] == Heap1Heap[(loc(a_2, sk_f#condqp1(f#condqp1(Heap2Heap, a_2), f#condqp1(Heap1Heap, a_2))): Ref), val]) ==> f#condqp1(Heap2Heap, a_2) == f#condqp1(Heap1Heap, a_2)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, a_2: ArrayDomainType): bool;

// State-independent trigger function
function  f#triggerStateless(a_2: ArrayDomainType): bool;

// Check contract well-formedness and postcondition
procedure f#definedness(a_2: ArrayDomainType) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var k_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int :: { loc(a, x) } 0 <= x && x < len(a) ==> acc(loc(a, x).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, x).val might not be injective. (0288.vpr@5.14--5.73) [198645]"}
      (forall x_4: int, x_4_1: int ::
      
      (((x_4 != x_4_1 && (0 <= x_4 && x_4 < (len_1(a_2): int))) && (0 <= x_4_1 && x_4_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, x_4): Ref) != (loc(a_2, x_4_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall x_4: int ::
        { (loc(a_2, x_4): Ref) } { (loc(a_2, x_4): Ref) }
        (0 <= x_4 && x_4 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, x_4): Ref)) && invRecv1((loc(a_2, x_4): Ref)) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4: int ::
        { (loc(a_2, x_4): Ref) } { (loc(a_2, x_4): Ref) }
        0 <= x_4 && x_4 < (len_1(a_2): int) ==> (loc(a_2, x_4): Ref) != null
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
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall k: Int ::0 <= k && k < len(a) ==> g(a))
      if (*) {
        if (0 <= k_2 && k_2 < (len_1(a_2): int)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver loc(a, x) is injective
              assert {:msg "  Precondition of function g might not hold. Quantified resource loc(a, x).val might not be injective. (0288.vpr@7.47--7.51) [198646]"}
                (forall x_5: int, x_5_1: int ::
                { neverTriggered2(x_5), neverTriggered2(x_5_1) }
                (((x_5 != x_5_1 && (0 <= x_5 && x_5 < (len_1(a_2): int))) && (0 <= x_5_1 && x_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, x_5): Ref) != (loc(a_2, x_5_1): Ref)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function g might not hold. There might be insufficient permission to access loc(a, x).val (0288.vpr@7.47--7.51) [198647]"}
                (forall x_5: int ::
                { (loc(a_2, x_5): Ref) } { (loc(a_2, x_5): Ref) }
                0 <= x_5 && x_5 < (len_1(a_2): int) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, x_5): Ref), val] > NoPerm
              );
            
            // -- assumptions for inverse of receiver loc(a, x)
              assume (forall x_5: int ::
                { (loc(a_2, x_5): Ref) } { (loc(a_2, x_5): Ref) }
                (0 <= x_5 && x_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, x_5): Ref)) && invRecv2((loc(a_2, x_5): Ref)) == x_5
              );
              assume (forall o_4: Ref ::
                { invRecv2(o_4) }
                (0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall k_2_1: int ::
      
      0 <= k_2_1 && k_2_1 < (len_1(a_2): int) ==> g_3(Heap, a_2)
    );
}

// ==================================================
// Translation of function g
// ==================================================

// Uninterpreted function definitions
function  g_3(Heap: HeapType, a_2: ArrayDomainType): bool;
function  g'(Heap: HeapType, a_2: ArrayDomainType): bool;
axiom (forall Heap: HeapType, a_2: ArrayDomainType ::
  { g_3(Heap, a_2) }
  g_3(Heap, a_2) == g'(Heap, a_2) && dummyFunction(g#triggerStateless(a_2))
);
axiom (forall Heap: HeapType, a_2: ArrayDomainType ::
  { g'(Heap, a_2) }
  dummyFunction(g#triggerStateless(a_2))
);

// Framing axioms
function  g#frame(frame: FrameType, a_2: ArrayDomainType): bool;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType ::
  { state(Heap, Mask), g'(Heap, a_2) }
  state(Heap, Mask) ==> g'(Heap, a_2) == g#frame(FrameFragment(g#condqp2(Heap, a_2)), a_2)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Int :: { loc(a, x) } 0 <= x && x < len(a) ==> acc(loc(a, x).val, write)) in function g
// ==================================================

function  g#condqp2(Heap: HeapType, a_1_1_1: ArrayDomainType): int;
function  sk_g#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType ::
  { g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2)) && sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2)) && sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2)) && sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2))): Ref), val] == Heap1Heap[(loc(a_2, sk_g#condqp2(g#condqp2(Heap2Heap, a_2), g#condqp2(Heap1Heap, a_2))): Ref), val]) ==> g#condqp2(Heap2Heap, a_2) == g#condqp2(Heap1Heap, a_2)
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, a_2: ArrayDomainType): bool;

// State-independent trigger function
function  g#triggerStateless(a_2: ArrayDomainType): bool;

// Check contract well-formedness and postcondition
procedure g#definedness(a_2: ArrayDomainType) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int :: { loc(a, x) } 0 <= x && x < len(a) ==> acc(loc(a, x).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, x).val might not be injective. (0288.vpr@11.14--11.73) [198648]"}
      (forall x_3: int, x_3_1: int ::
      
      (((x_3 != x_3_1 && (0 <= x_3 && x_3 < (len_1(a_2): int))) && (0 <= x_3_1 && x_3_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, x_3): Ref) != (loc(a_2, x_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall x_3: int ::
        { (loc(a_2, x_3): Ref) } { (loc(a_2, x_3): Ref) }
        (0 <= x_3 && x_3 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, x_3): Ref)) && invRecv3((loc(a_2, x_3): Ref)) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: int ::
        { (loc(a_2, x_3): Ref) } { (loc(a_2, x_3): Ref) }
        0 <= x_3 && x_3 < (len_1(a_2): int) ==> (loc(a_2, x_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}