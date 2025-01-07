// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:25:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0042.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0042-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// - height 0: fun01
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
// Translation of domain Unknown
// ==================================================

// The type for domain Unknown
type UnknownDomainType;

// Translation of domain function unknown
function  unknown(x_8: int): Perm;

// ==================================================
// Translation of all fields
// ==================================================

const unique unknown_x: Field NormalField int;
axiom !IsPredicateField(unknown_x);
axiom !IsWandField(unknown_x);
const unique unknown_y: Field NormalField int;
axiom !IsPredicateField(unknown_y);
axiom !IsWandField(unknown_y);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: int): Perm;
function  fun01'(Heap: HeapType, x: int): Perm;
axiom (forall Heap: HeapType, x: int ::
  { fun01(Heap, x) }
  fun01(Heap, x) == fun01'(Heap, x) && dummyFunction(fun01#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun01'(Heap, x) }
  dummyFunction(fun01#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun01(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun01(Heap, x) == (if x <= 0 then fun01'(Heap, x + 1) else 1 / x)
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: int): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun01'(Heap, x) }
  state(Heap, Mask) ==> fun01'(Heap, x) == fun01#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: int): Perm;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: int) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x <= 0 ? fun01(x + 1) : 1 / x)
      if (x <= 0) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun01#trigger(EmptyFrame, x + 1);
        }
      } else {
        assert {:msg "  Function might not be well-formed. Divisor x might be zero. (0042.vpr@17.1--18.34) [191925]"}
          x != 0;
      }
  
  // -- Translate function body
    Result := (if x <= 0 then fun01(Heap, x + 1) else 1 / x);
}

// ==================================================
// Translation of predicate token
// ==================================================

type PredicateType_token;
function  token(diz: Ref): Field PredicateType_token FrameType;
function  token#sm(diz: Ref): Field PredicateType_token PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(token(diz)) }
  PredicateMaskField(token(diz)) == token#sm(diz)
);
axiom (forall diz: Ref ::
  { token(diz) }
  IsPredicateField(token(diz))
);
axiom (forall diz: Ref ::
  { token(diz) }
  getPredWandId(token(diz)) == 0
);
function  token#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  token#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { token(diz), token(diz2) }
  token(diz) == token(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { token#sm(diz), token#sm(diz2) }
  token#sm(diz) == token#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { token#trigger(Heap, token(diz)) }
  token#everUsed(token(diz))
);

procedure token#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of token
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, unknown_x:=Mask[diz, unknown_x] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of unknown(diz.unknown_x) >= none
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.unknown_x (0042.vpr@26.1--28.2) [191926]"}
        HasDirectPerm(Mask, diz, unknown_x);
    assume NoPerm <= (unknown(Heap[diz, unknown_x]): Perm);
    
    // -- Check definedness of acc(diz.unknown_y, unknown(diz.unknown_x))
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.unknown_x (0042.vpr@26.1--28.2) [191927]"}
        HasDirectPerm(Mask, diz, unknown_x);
    perm := (unknown(Heap[diz, unknown_x]): Perm);
    assert {:msg "  Predicate might not be well-formed. Fraction unknown(diz.unknown_x) might be negative. (0042.vpr@26.1--28.2) [191928]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, unknown_y:=Mask[diz, unknown_y] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert unknown(x) >= none -- 0042.vpr@14.3--14.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion unknown(x) >= none might not hold. (0042.vpr@14.10--14.28) [191929]"}
      NoPerm <= (unknown(x): Perm);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert fun01(x) >= none -- 0042.vpr@23.3--23.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun01(x) >= none
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x) >= none might not hold. (0042.vpr@23.10--23.26) [191930]"}
      NoPerm <= fun01(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, token(diz):=Mask[null, token(diz)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, token(diz):=PostMask[null, token(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(token(diz), write) -- 0042.vpr@34.3--34.25
    assume token#trigger(Heap, token(diz));
    assume Heap[null, token(diz)] == CombineFrames(FrameFragment(Heap[diz, unknown_x]), ConditionalFrame((unknown(Heap[diz, unknown_x]): Perm), FrameFragment(Heap[diz, unknown_y])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding token(diz) might fail. There might be insufficient permission to access token(diz) (0042.vpr@34.3--34.25) [191933]"}
        perm <= Mask[null, token(diz)];
    }
    Mask := Mask[null, token(diz):=Mask[null, token(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, token(diz))) {
        havoc newVersion;
        Heap := Heap[null, token(diz):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, unknown_x:=Mask[diz, unknown_x] + perm];
    assume state(Heap, Mask);
    assume NoPerm <= (unknown(Heap[diz, unknown_x]): Perm);
    perm := (unknown(Heap[diz, unknown_x]): Perm);
    assert {:msg "  Unfolding token(diz) might fail. Fraction unknown(diz.unknown_x) might be negative. (0042.vpr@34.3--34.25) [191934]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, unknown_y:=Mask[diz, unknown_y] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(token(diz), write) -- 0042.vpr@35.3--35.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding token(diz) might fail. There might be insufficient permission to access diz.unknown_x (0042.vpr@35.3--35.23) [191936]"}
      Mask[diz, unknown_x] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, unknown_x];
    Mask := Mask[diz, unknown_x:=Mask[diz, unknown_x] - wildcard];
    assert {:msg "  Folding token(diz) might fail. Assertion unknown(diz.unknown_x) >= none might not hold. (0042.vpr@35.3--35.23) [191937]"}
      NoPerm <= (unknown(Heap[diz, unknown_x]): Perm);
    perm := (unknown(Heap[diz, unknown_x]): Perm);
    assert {:msg "  Folding token(diz) might fail. Fraction unknown(diz.unknown_x) might be negative. (0042.vpr@35.3--35.23) [191938]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding token(diz) might fail. There might be insufficient permission to access diz.unknown_y (0042.vpr@35.3--35.23) [191939]"}
        perm <= Mask[diz, unknown_y];
    }
    Mask := Mask[diz, unknown_y:=Mask[diz, unknown_y] - perm];
    perm := FullPerm;
    Mask := Mask[null, token(diz):=Mask[null, token(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume token#trigger(Heap, token(diz));
    assume Heap[null, token(diz)] == CombineFrames(FrameFragment(Heap[diz, unknown_x]), ConditionalFrame((unknown(Heap[diz, unknown_x]): Perm), FrameFragment(Heap[diz, unknown_y])));
    if (!HasDirectPerm(Mask, null, token(diz))) {
      Heap := Heap[null, token#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, token(diz):=freshVersion];
    }
    Heap := Heap[null, token#sm(diz):=Heap[null, token#sm(diz)][diz, unknown_x:=true]];
    Heap := Heap[null, token#sm(diz):=Heap[null, token#sm(diz)][diz, unknown_y:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(token(diz), write) -- 0042.vpr@37.3--37.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding token(diz) might fail. There might be insufficient permission to access diz.unknown_x (0042.vpr@37.3--37.23) [191942]"}
      Mask[diz, unknown_x] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, unknown_x];
    Mask := Mask[diz, unknown_x:=Mask[diz, unknown_x] - wildcard];
    assert {:msg "  Folding token(diz) might fail. Assertion unknown(diz.unknown_x) >= none might not hold. (0042.vpr@37.3--37.23) [191943]"}
      NoPerm <= (unknown(Heap[diz, unknown_x]): Perm);
    perm := (unknown(Heap[diz, unknown_x]): Perm);
    assert {:msg "  Folding token(diz) might fail. Fraction unknown(diz.unknown_x) might be negative. (0042.vpr@37.3--37.23) [191944]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding token(diz) might fail. There might be insufficient permission to access diz.unknown_y (0042.vpr@37.3--37.23) [191945]"}
        perm <= Mask[diz, unknown_y];
    }
    Mask := Mask[diz, unknown_y:=Mask[diz, unknown_y] - perm];
    perm := FullPerm;
    Mask := Mask[null, token(diz):=Mask[null, token(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume token#trigger(Heap, token(diz));
    assume Heap[null, token(diz)] == CombineFrames(FrameFragment(Heap[diz, unknown_x]), ConditionalFrame((unknown(Heap[diz, unknown_x]): Perm), FrameFragment(Heap[diz, unknown_y])));
    if (!HasDirectPerm(Mask, null, token(diz))) {
      Heap := Heap[null, token#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, token(diz):=freshVersion];
    }
    Heap := Heap[null, token#sm(diz):=Heap[null, token#sm(diz)][diz, unknown_x:=true]];
    Heap := Heap[null, token#sm(diz):=Heap[null, token#sm(diz)][diz, unknown_y:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access token(diz) (0042.vpr@32.12--32.27) [191947]"}
        perm <= Mask[null, token(diz)];
    }
    Mask := Mask[null, token(diz):=Mask[null, token(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}