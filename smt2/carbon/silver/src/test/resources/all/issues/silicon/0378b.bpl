// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:22:04
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0378b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0378b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(i_4_1: int): bool;
function  neverTriggered2(i_5_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: inv
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
// Translation of domain Bar
// ==================================================

// The type for domain Bar
type BarDomainType;

// Translation of domain function foo
function  foo_2(i_6: int): Ref;

// Translation of domain axiom inj
axiom (forall i: int, j: int ::
  { (foo_2(i): Ref), (foo_2(j): Ref) }
  (foo_2(i): Ref) == (foo_2(j): Ref) ==> i == j
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function inv
// ==================================================

// Uninterpreted function definitions
function  inv_1(Heap: HeapType, x: int, k: int): bool;
function  inv'(Heap: HeapType, x: int, k: int): bool;
axiom (forall Heap: HeapType, x: int, k: int ::
  { inv_1(Heap, x, k) }
  inv_1(Heap, x, k) == inv'(Heap, x, k) && dummyFunction(inv#triggerStateless(x, k))
);
axiom (forall Heap: HeapType, x: int, k: int ::
  { inv'(Heap, x, k) }
  dummyFunction(inv#triggerStateless(x, k))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int, k: int ::
  { state(Heap, Mask), inv_1(Heap, x, k) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x >= 0 ==> inv_1(Heap, x, k) == (x != 0 ==> inv'(Heap, x - 1, k))
);

// Framing axioms
function  inv#frame(frame: FrameType, x: int, k: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, k: int ::
  { state(Heap, Mask), inv'(Heap, x, k) }
  state(Heap, Mask) ==> inv'(Heap, x, k) == inv#frame(CombineFrames(FrameFragment(Heap[(foo_2(k): Ref), val]), FrameFragment(inv#condqp1(Heap, x, k))), x, k)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { foo(i) } acc(foo(i).val, 1 / 2)) in function inv
// ==================================================

function  inv#condqp1(Heap: HeapType, x_1_1_1: int, k_1_1_1: int): int;
function  sk_inv#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: int, k: int ::
  { inv#condqp1(Heap2Heap, x, k), inv#condqp1(Heap1Heap, x, k), succHeapTrans(Heap2Heap, Heap1Heap) }
  (NoPerm < 1 / 2 <==> NoPerm < 1 / 2) && (NoPerm < 1 / 2 ==> Heap2Heap[(foo_2(sk_inv#condqp1(inv#condqp1(Heap2Heap, x, k), inv#condqp1(Heap1Heap, x, k))): Ref), val] == Heap1Heap[(foo_2(sk_inv#condqp1(inv#condqp1(Heap2Heap, x, k), inv#condqp1(Heap1Heap, x, k))): Ref), val]) ==> inv#condqp1(Heap2Heap, x, k) == inv#condqp1(Heap1Heap, x, k)
);

// Trigger function (controlling recursive postconditions)
function  inv#trigger_1(frame: FrameType, x: int, k: int): bool;

// State-independent trigger function
function  inv#triggerStateless(x: int, k: int): bool;

// Check contract well-formedness and postcondition
procedure inv#definedness(x: int, k: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume x >= 0;
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0378b.vpr@8.12--8.32) [79079]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> (foo_2(k): Ref) != null;
    Mask := Mask[(foo_2(k): Ref), val:=Mask[(foo_2(k): Ref), val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { foo(i) } acc(foo(i).val, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource foo(i).val might not be injective. (0378b.vpr@9.12--9.58) [79080]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (i_4_1 != i_4_2 && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (foo_2(i_4_1): Ref) != (foo_2(i_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { (foo_2(i_4_1): Ref) } { (foo_2(i_4_1): Ref) }
        NoPerm < 1 / 2 ==> qpRange1((foo_2(i_4_1): Ref)) && invRecv1((foo_2(i_4_1): Ref)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        NoPerm < 1 / 2 && qpRange1(o_9) ==> (foo_2(invRecv1(o_9)): Ref) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0378b.vpr@9.12--9.58) [79081]"}
      (forall i_4_1: int ::
      { (foo_2(i_4_1): Ref) } { (foo_2(i_4_1): Ref) }
      1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { (foo_2(i_4_1): Ref) } { (foo_2(i_4_1): Ref) }
        1 / 2 > NoPerm ==> (foo_2(i_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (NoPerm < 1 / 2 && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> (foo_2(invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + 1 / 2) && (!(NoPerm < 1 / 2 && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x != 0 ==> inv(x - 1, k)
      if (x != 0) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function inv might not hold. Assertion x - 1 >= 0 might not hold. (0378b.vpr@11.14--11.27) [79082]"}
            x - 1 >= 0;
          perm := 1 / 2;
          assert {:msg "  Precondition of function inv might not hold. Fraction 1 / 2 might be negative. (0378b.vpr@11.14--11.27) [79083]"}
            perm >= NoPerm;
          assert {:msg "  Precondition of function inv might not hold. There might be insufficient permission to access foo(k).val (0378b.vpr@11.14--11.27) [79084]"}
            NoPerm < perm ==> NoPerm < Mask[(foo_2(k): Ref), val];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function inv might not hold. Fraction 1 / 2 might be negative. (0378b.vpr@11.14--11.27) [79085]"}
              (forall i_5_1: int ::
              { (foo_2(i_5_1): Ref) } { (foo_2(i_5_1): Ref) }
              dummyFunction(Heap[(foo_2(i_5_1): Ref), val]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver foo(i) is injective
            assert {:msg "  Precondition of function inv might not hold. Quantified resource foo(i).val might not be injective. (0378b.vpr@11.14--11.27) [79086]"}
              (forall i_5_1: int, i_5_2: int ::
              { neverTriggered2(i_5_1), neverTriggered2(i_5_2) }
              (i_5_1 != i_5_2 && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (foo_2(i_5_1): Ref) != (foo_2(i_5_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function inv might not hold. There might be insufficient permission to access foo(i).val (0378b.vpr@11.14--11.27) [79087]"}
              (forall i_5_1: int ::
              { (foo_2(i_5_1): Ref) } { (foo_2(i_5_1): Ref) }
              1 / 2 > NoPerm ==> Mask[(foo_2(i_5_1): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver foo(i)
            assume (forall i_5_1: int ::
              { (foo_2(i_5_1): Ref) } { (foo_2(i_5_1): Ref) }
              NoPerm < 1 / 2 ==> qpRange2((foo_2(i_5_1): Ref)) && invRecv2((foo_2(i_5_1): Ref)) == i_5_1
            );
            assume (forall o_9: Ref ::
              { invRecv2(o_9) }
              NoPerm < 1 / 2 && qpRange2(o_9) ==> (foo_2(invRecv2(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume inv#trigger_1(CombineFrames(FrameFragment(Heap[(foo_2(k): Ref), val]), FrameFragment(inv#condqp1(Heap, x - 1, k))), x - 1, k);
        }
      }
  
  // -- Translate function body
    Result := x != 0 ==> inv_1(Heap, x - 1, k);
}