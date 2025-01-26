// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0264.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0264-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_16: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_16, f_10] }
  Heap[o_16, $allocated] ==> Heap[Heap[o_16, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_17: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_17, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_17, f_25) ==> Heap[o_17, f_25] == ExhaleHeap[o_17, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6), ExhaleHeap[null, PredicateMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> Heap[null, PredicateMaskField(pm_f_6)] == ExhaleHeap[null, PredicateMaskField(pm_f_6)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_6, f_25] }
    Heap[null, PredicateMaskField(pm_f_6)][o2_6, f_25] ==> Heap[o2_6, f_25] == ExhaleHeap[o2_6, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6), ExhaleHeap[null, WandMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> Heap[null, WandMaskField(pm_f_6)] == ExhaleHeap[null, WandMaskField(pm_f_6)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_6, f_25] }
    Heap[null, WandMaskField(pm_f_6)][o2_6, f_25] ==> Heap[o2_6, f_25] == ExhaleHeap[o2_6, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_17: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_17, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_17, $allocated] ==> ExhaleHeap[o_17, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_16: Ref, f_2: (Field A B), v: B ::
  { Heap[o_16, f_2:=v] }
  succHeap(Heap, Heap[o_16, f_2:=v])
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

function  neverTriggered1(z_3: Ref): bool;
function  neverTriggered2(z: Ref): bool;
function  neverTriggered3(z: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
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
// - height 2: gg
// - height 1: g
// - height 0: h
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function g
// ==================================================

// Uninterpreted function definitions
function  g_2(Heap: HeapType, x: Ref): bool;
function  g'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { g_2(Heap, x) }
  g_2(Heap, x) == g'(Heap, x) && dummyFunction(g#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { g'(Heap, x) }
  dummyFunction(g#triggerStateless(x))
);

// Framing axioms
function  g#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), g'(Heap, x) }
  state(Heap, Mask) ==> g'(Heap, x) == g#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  g#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure g#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function h
// ==================================================

// Uninterpreted function definitions
function  h_2(Heap: HeapType, x: Ref): bool;
function  h'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { h_2(Heap, x) }
  h_2(Heap, x) == h'(Heap, x) && dummyFunction(h#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { h'(Heap, x) }
  dummyFunction(h#triggerStateless(x))
);

// Framing axioms
function  h#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), h'(Heap, x) }
  state(Heap, Mask) ==> h'(Heap, x) == h#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  h#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  h#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure h#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of function gg
// ==================================================

// Uninterpreted function definitions
function  gg(Heap: HeapType, x: Ref): bool;
function  gg'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { gg(Heap, x) }
  gg(Heap, x) == gg'(Heap, x) && dummyFunction(gg#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { gg'(Heap, x) }
  dummyFunction(gg#triggerStateless(x))
);

// Framing axioms
function  gg#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), gg'(Heap, x) }
  state(Heap, Mask) ==> gg'(Heap, x) == gg#frame(FrameFragment(gg#condqp1(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref ::z == x ==> acc(z.f, write)) in function gg
// ==================================================

function  gg#condqp1(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_gg#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { gg#condqp1(Heap2Heap, x), gg#condqp1(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (sk_gg#condqp1(gg#condqp1(Heap2Heap, x), gg#condqp1(Heap1Heap, x)) == x && NoPerm < FullPerm <==> sk_gg#condqp1(gg#condqp1(Heap2Heap, x), gg#condqp1(Heap1Heap, x)) == x && NoPerm < FullPerm) && (sk_gg#condqp1(gg#condqp1(Heap2Heap, x), gg#condqp1(Heap1Heap, x)) == x && NoPerm < FullPerm ==> Heap2Heap[sk_gg#condqp1(gg#condqp1(Heap2Heap, x), gg#condqp1(Heap1Heap, x)), f_7] == Heap1Heap[sk_gg#condqp1(gg#condqp1(Heap2Heap, x), gg#condqp1(Heap1Heap, x)), f_7]) ==> gg#condqp1(Heap2Heap, x) == gg#condqp1(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  gg#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  gg#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure gg#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (0264.vpr@29.12--29.47) [82312]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == x) && z_3_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == x && NoPerm < FullPerm ==> qpRange1(z_3) && invRecv1(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (invRecv1(o_9) == x && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == x ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv1(o_9) == x && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv1(o_9) == x && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_3(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of g(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function g might not hold. There might be insufficient permission to access x.f (0264.vpr@9.24--9.28) [82313]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume g_2(Heap, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(x.f, write) -- 0264.vpr@11.5--11.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (0264.vpr@11.12--11.20) [82315]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- 0264.vpr@12.5--12.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall y: Ref :: { old(g(y)) } h(y)) -- 0264.vpr@13.12--13.45
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { old(g(y)) } h(y))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { g#frame(FrameFragment(oldHeap[y_1, f_7]), y_1) }
      h_2(Heap, y_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h(x) -- 0264.vpr@14.5--14.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of h(x)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion h(x) might not hold. (0264.vpr@14.12--14.16) [82317]"}
      h_2(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method wrong_foo
// ==================================================

procedure wrong_foo(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of g(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function g might not hold. There might be insufficient permission to access x.f (0264.vpr@18.24--18.28) [82318]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume g_2(Heap, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(x.f, write) -- 0264.vpr@20.5--20.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (0264.vpr@20.12--20.20) [82320]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- 0264.vpr@21.5--21.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall y: Ref :: { g(y) } h(y)) -- 0264.vpr@22.12--22.40
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { g(y) } h(y))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { g#frame(FrameFragment(Heap[y_1, f_7]), y_1) }
      h_2(Heap, y_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h(x) -- 0264.vpr@25.5--25.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of h(x)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion h(x) might not hold. (0264.vpr@25.12--25.16) [82322]"}
      h_2(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method bar
// ==================================================

procedure bar_2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of gg(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function gg might not hold. Quantified resource z.f might not be injective. (0264.vpr@32.24--32.29) [82323]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered2(z), neverTriggered2(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function gg might not hold. There might be insufficient permission to access z.f (0264.vpr@32.24--32.29) [82324]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x ==> FullPerm > NoPerm ==> Mask[z, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && NoPerm < FullPerm ==> qpRange2(z) && invRecv2(z) == z
          );
          assume (forall o_9: Ref ::
            { invRecv2(o_9) }
            invRecv2(o_9) == x && (NoPerm < FullPerm && qpRange2(o_9)) ==> invRecv2(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume gg(Heap, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(x.f, write) -- 0264.vpr@34.5--34.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (0264.vpr@34.12--34.20) [82326]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- 0264.vpr@35.5--35.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall y: Ref :: { old(gg(y)) } h(y)) -- 0264.vpr@36.12--36.46
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { old(gg(y)) } h(y))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { gg#frame(FrameFragment(gg#condqp1(oldHeap, y_1)), y_1) }
      h_2(Heap, y_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h(x) -- 0264.vpr@37.5--37.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of h(x)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion h(x) might not hold. (0264.vpr@37.12--37.16) [82328]"}
      h_2(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method wrong_bar
// ==================================================

procedure wrong_bar(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of gg(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function gg might not hold. Quantified resource z.f might not be injective. (0264.vpr@41.24--41.29) [82329]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered3(z), neverTriggered3(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function gg might not hold. There might be insufficient permission to access z.f (0264.vpr@41.24--41.29) [82330]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x ==> FullPerm > NoPerm ==> Mask[z, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && NoPerm < FullPerm ==> qpRange3(z) && invRecv3(z) == z
          );
          assume (forall o_9: Ref ::
            { invRecv3(o_9) }
            invRecv3(o_9) == x && (NoPerm < FullPerm && qpRange3(o_9)) ==> invRecv3(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume gg(Heap, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(x.f, write) -- 0264.vpr@43.5--43.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (0264.vpr@43.12--43.20) [82332]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- 0264.vpr@44.5--44.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall y: Ref :: { gg(y) } h(y)) -- 0264.vpr@45.12--45.41
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { gg(y) } h(y))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { gg#frame(FrameFragment(gg#condqp1(Heap, y_1)), y_1) }
      h_2(Heap, y_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h(x) -- 0264.vpr@48.5--48.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of h(x)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion h(x) might not hold. (0264.vpr@48.12--48.16) [82334]"}
      h_2(Heap, x);
    assume state(Heap, Mask);
}