// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:29:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0005a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0005a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: trigF
// - height 0: trigG
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
// Translation of function trigF
// ==================================================

// Uninterpreted function definitions
function  trigF(Heap: HeapType, x: int, y: int): bool;
function  trigF'(Heap: HeapType, x: int, y: int): bool;
axiom (forall Heap: HeapType, x: int, y: int ::
  { trigF(Heap, x, y) }
  trigF(Heap, x, y) == trigF'(Heap, x, y) && dummyFunction(trigF#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: int, y: int ::
  { trigF'(Heap, x, y) }
  dummyFunction(trigF#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), trigF(Heap, x, y) } { state(Heap, Mask), trigF#triggerStateless(x, y), P#trigger(Heap, P()) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> trigF(Heap, x, y)
);

// Framing axioms
function  trigF#frame(frame: FrameType, x: int, y: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), trigF'(Heap, x, y) }
  state(Heap, Mask) ==> trigF'(Heap, x, y) == trigF#frame(Heap[null, P()], x, y)
);

// Trigger function (controlling recursive postconditions)
function  trigF#trigger(frame: FrameType, x: int, y: int): bool;

// State-independent trigger function
function  trigF#triggerStateless(x: int, y: int): bool;

// Check contract well-formedness and postcondition
procedure trigF#definedness(x: int, y: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function trigG
// ==================================================

// Uninterpreted function definitions
function  trigG(Heap: HeapType, x: int, b_24: bool): bool;
function  trigG'(Heap: HeapType, x: int, b_24: bool): bool;
axiom (forall Heap: HeapType, x: int, b_24: bool ::
  { trigG(Heap, x, b_24) }
  trigG(Heap, x, b_24) == trigG'(Heap, x, b_24) && dummyFunction(trigG#triggerStateless(x, b_24))
);
axiom (forall Heap: HeapType, x: int, b_24: bool ::
  { trigG'(Heap, x, b_24) }
  dummyFunction(trigG#triggerStateless(x, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int, b_24: bool ::
  { state(Heap, Mask), trigG(Heap, x, b_24) } { state(Heap, Mask), trigG#triggerStateless(x, b_24), P#trigger(Heap, P()) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> trigG(Heap, x, b_24) == b_24
);

// Framing axioms
function  trigG#frame(frame: FrameType, x: int, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, b_24: bool ::
  { state(Heap, Mask), trigG'(Heap, x, b_24) }
  state(Heap, Mask) ==> trigG'(Heap, x, b_24) == trigG#frame(Heap[null, P()], x, b_24)
);

// Trigger function (controlling recursive postconditions)
function  trigG#trigger(frame: FrameType, x: int, b_24: bool): bool;

// State-independent trigger function
function  trigG#triggerStateless(x: int, b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure trigG#definedness(x: int, b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := b_24;
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(): Field PredicateType_P FrameType;
function  P#sm(): Field PredicateType_P PMaskType;
axiom PredicateMaskField(P()) == P#sm();
axiom IsPredicateField(P());
axiom getPredWandId(P()) == 0;
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { P#trigger(Heap, P()) }
  P#everUsed(P())
);

procedure P#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(flag_1: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_21: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var a_4: int;
  var a_4_2: int;
  var b_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function trigG might not hold. There might be insufficient permission to access P() (0005a.vpr@16.46--16.60) [219058]"}
            NoPerm < perm ==> NoPerm < Mask[null, P()];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (trigG(Heap, a_21, flag_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function trigF might not hold. There might be insufficient permission to access P() (0005a.vpr@16.64--16.75) [219059]"}
              NoPerm < perm ==> NoPerm < Mask[null, P()];
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
    assume (forall a_1_1: int, b_1_2: int ::
      { trigG#frame(Heap[null, P()], a_1_1, flag_1), trigF#frame(Heap[null, P()], a_1_1, b_1_2) } { trigF#frame(Heap[null, P()], a_1_1, b_1_2) }
      trigG(Heap, a_1_1, flag_1) && trigF(Heap, a_1_1, b_1_2)
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
    perm := FullPerm;
    PostMask := PostMask[null, P():=PostMask[null, P()] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function trigG might not hold. There might be insufficient permission to access P() (0005a.vpr@19.45--19.59) [219060]"}
            NoPerm < perm ==> NoPerm < PostMask[null, P()];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (trigG(PostHeap, a_4, flag_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function trigF might not hold. There might be insufficient permission to access P() (0005a.vpr@19.63--19.74) [219061]"}
              NoPerm < perm ==> NoPerm < PostMask[null, P()];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall a_3_1: int, b_3_2: int ::
      { trigG#frame(PostHeap[null, P()], a_3_1, flag_1), trigF#frame(PostHeap[null, P()], a_3_1, b_3_2) } { trigF#frame(PostHeap[null, P()], a_3_1, b_3_2) }
      trigG(PostHeap, a_3_1, flag_1) && trigF(PostHeap, a_3_1, b_3_2)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test might not hold. There might be insufficient permission to access P() (0005a.vpr@17.12--17.20) [219062]"}
        perm <= Mask[null, P()];
    }
    Mask := Mask[null, P():=Mask[null, P()] - perm];
    if (*) {
      assert {:msg "  Postcondition of test might not hold. Assertion trigG(a, flag) might not hold. (0005a.vpr@19.11--19.74) [219063]"}
        trigG(Heap, a_4_2, flag_1);
      assert {:msg "  Postcondition of test might not hold. Assertion trigF(a, b) might not hold. (0005a.vpr@19.11--19.74) [219064]"}
        trigF(Heap, a_4_2, b_4_1);
      assume false;
    }
    assume (forall a_5_1_1: int, b_5_1: int ::
      { trigG#frame(Heap[null, P()], a_5_1_1, flag_1), trigF#frame(Heap[null, P()], a_5_1_1, b_5_1) } { trigF#frame(Heap[null, P()], a_5_1_1, b_5_1) }
      trigG(Heap, a_5_1_1, flag_1) && trigF(Heap, a_5_1_1, b_5_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(flag_1: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_5: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var a_8: int;
  var b_99: int;
  var a_4_2: int;
  var b_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function trigG might not hold. There might be insufficient permission to access P() (0005a.vpr@26.46--26.60) [219065]"}
            NoPerm < perm ==> NoPerm < Mask[null, P()];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (trigG(Heap, a_5, flag_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function trigF might not hold. There might be insufficient permission to access P() (0005a.vpr@26.64--26.75) [219066]"}
              NoPerm < perm ==> NoPerm < Mask[null, P()];
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
    assume (forall a_1_1: int, b_1_2: int ::
      { trigG#frame(Heap[null, P()], a_1_1, flag_1), trigF#frame(Heap[null, P()], a_1_1, b_1_2) } { trigF#frame(Heap[null, P()], a_1_1, b_1_2) }
      trigG(Heap, a_1_1, flag_1) && trigF(Heap, a_1_1, b_1_2)
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
    perm := FullPerm;
    PostMask := PostMask[null, P():=PostMask[null, P()] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall a: Int, b: Int :: { trigF(a, b) } { trigG(a, flag), trigF(a, b) } true ==> (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function trigF might not hold. There might be insufficient permission to access P() (0005a.vpr@28.46--28.56) [219067]"}
            NoPerm < perm ==> NoPerm < PostMask[null, P()];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (trigF(PostHeap, a_8, b_99)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function trigG might not hold. There might be insufficient permission to access P() (0005a.vpr@28.61--28.75) [219068]"}
              NoPerm < perm ==> NoPerm < PostMask[null, P()];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (trigF(PostHeap, a_8, b_99) ==> trigG(PostHeap, a_8, flag_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function trigF might not hold. There might be insufficient permission to access P() (0005a.vpr@28.80--28.91) [219069]"}
              NoPerm < perm ==> NoPerm < PostMask[null, P()];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall a_3_1: int, b_3_2: int ::
      { trigF#frame(PostHeap[null, P()], a_3_1, b_3_2) } { trigG#frame(PostHeap[null, P()], a_3_1, flag_1), trigF#frame(PostHeap[null, P()], a_3_1, b_3_2) }
      (trigF(PostHeap, a_3_1, b_3_2) ==> trigG(PostHeap, a_3_1, flag_1)) && trigF(PostHeap, a_3_1, b_3_2)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access P() (0005a.vpr@27.12--27.20) [219070]"}
        perm <= Mask[null, P()];
    }
    Mask := Mask[null, P():=Mask[null, P()] - perm];
    if (*) {
      if (trigF(Heap, a_4_2, b_4_1)) {
        assert {:msg "  Postcondition of test2 might not hold. Assertion trigG(a, flag) might not hold. (0005a.vpr@28.11--28.91) [219071]"}
          trigG(Heap, a_4_2, flag_1);
      }
      assert {:msg "  Postcondition of test2 might not hold. Assertion trigF(a, b) might not hold. (0005a.vpr@28.11--28.91) [219072]"}
        trigF(Heap, a_4_2, b_4_1);
      assume false;
    }
    assume (forall a_5_1_1: int, b_5_1: int ::
      { trigF#frame(Heap[null, P()], a_5_1_1, b_5_1) } { trigG#frame(Heap[null, P()], a_5_1_1, flag_1), trigF#frame(Heap[null, P()], a_5_1_1, b_5_1) }
      (trigF(Heap, a_5_1_1, b_5_1) ==> trigG(Heap, a_5_1_1, flag_1)) && trigF(Heap, a_5_1_1, b_5_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}