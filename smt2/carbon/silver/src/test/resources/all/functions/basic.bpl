// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:16:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/basic.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/basic-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: tern
// - height 1: add3
// - height 0: add
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function add
// ==================================================

// Uninterpreted function definitions
function  add_1(Heap: HeapType, x: Ref): int;
function  add'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { add_1(Heap, x) }
  add_1(Heap, x) == add'(Heap, x) && dummyFunction(add#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { add'(Heap, x) }
  dummyFunction(add#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), add_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> add_1(Heap, x) == Heap[x, f_7] + Heap[x, g]
);

// Framing axioms
function  add#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), add'(Heap, x) }
  state(Heap, Mask) ==> add'(Heap, x) == add#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g])), x)
);

// Trigger function (controlling recursive postconditions)
function  add#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  add#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure add#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + x.g
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (basic.vpr@7.1--9.14) [154368]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (basic.vpr@7.1--9.14) [154369]"}
        HasDirectPerm(Mask, x, g);
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[x, g];
}

// ==================================================
// Translation of function add3
// ==================================================

// Uninterpreted function definitions
function  add3(Heap: HeapType, x: Ref, a_2: int): int;
function  add3'(Heap: HeapType, x: Ref, a_2: int): int;
axiom (forall Heap: HeapType, x: Ref, a_2: int ::
  { add3(Heap, x, a_2) }
  add3(Heap, x, a_2) == add3'(Heap, x, a_2) && dummyFunction(add3#triggerStateless(x, a_2))
);
axiom (forall Heap: HeapType, x: Ref, a_2: int ::
  { add3'(Heap, x, a_2) }
  dummyFunction(add3#triggerStateless(x, a_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, a_2: int ::
  { state(Heap, Mask), add3(Heap, x, a_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> Heap[x, g] > 0 ==> add3(Heap, x, a_2) == Heap[x, f_7] - a_2 + Heap[x, g]
);

// Framing axioms
function  add3#frame(frame: FrameType, x: Ref, a_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, a_2: int ::
  { state(Heap, Mask), add3'(Heap, x, a_2) }
  state(Heap, Mask) ==> add3'(Heap, x, a_2) == add3#frame(CombineFrames(FrameFragment(Heap[x, g]), CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]))), x, a_2)
);

// Trigger function (controlling recursive postconditions)
function  add3#trigger(frame: FrameType, x: Ref, a_2: int): bool;

// State-independent trigger function
function  add3#triggerStateless(x: Ref, a_2: int): int;

// Check contract well-formedness and postcondition
procedure add3#definedness(x: Ref, a_2: int) returns (Result: int)
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
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (basic.vpr@12.12--12.65) [154370]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.g > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (basic.vpr@12.12--12.65) [154371]"}
        HasDirectPerm(Mask, x, g);
    assume Heap[x, g] > 0;
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (basic.vpr@12.12--12.65) [154372]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f - a + x.g
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (basic.vpr@11.1--13.18) [154373]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (basic.vpr@11.1--13.18) [154374]"}
        HasDirectPerm(Mask, x, g);
  
  // -- Translate function body
    Result := Heap[x, f_7] - a_2 + Heap[x, g];
}

// ==================================================
// Translation of function tern
// ==================================================

// Uninterpreted function definitions
function  tern(Heap: HeapType, x: Ref, b_24: bool): int;
function  tern'(Heap: HeapType, x: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { tern(Heap, x, b_24) }
  tern(Heap, x, b_24) == tern'(Heap, x, b_24) && dummyFunction(tern#triggerStateless(x, b_24))
);
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { tern'(Heap, x, b_24) }
  dummyFunction(tern#triggerStateless(x, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), tern(Heap, x, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> tern(Heap, x, b_24) == (if b_24 then Heap[x, f_7] else Heap[x, g])
);

// Framing axioms
function  tern#frame(frame: FrameType, x: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), tern'(Heap, x, b_24) }
  state(Heap, Mask) ==> tern'(Heap, x, b_24) == tern#frame(FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g]))), x, b_24)
);

// Trigger function (controlling recursive postconditions)
function  tern#trigger(frame: FrameType, x: Ref, b_24: bool): bool;

// State-independent trigger function
function  tern#triggerStateless(x: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure tern#definedness(x: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (b ? x.f : x.g)
      if (b_24) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (basic.vpr@39.1--41.18) [154375]"}
          HasDirectPerm(Mask, x, f_7);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (basic.vpr@39.1--41.18) [154376]"}
          HasDirectPerm(Mask, x, g);
      }
  
  // -- Translate function body
    Result := (if b_24 then Heap[x, f_7] else Heap[x, g]);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: x := new(f, g) -- basic.vpr@16.15--16.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f, g) -- basic.vpr@17.15--17.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    Mask := Mask[y, g:=Mask[y, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := y.f -- basic.vpr@19.3--19.13
    
    // -- Check definedness of y.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (basic.vpr@19.3--19.13) [154377]"}
        HasDirectPerm(Mask, y, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@19.3--19.13) [154378]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[y, f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := x.g -- basic.vpr@20.3--20.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (basic.vpr@20.3--20.13) [154379]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (basic.vpr@20.3--20.13) [154380]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=Heap[x, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x) == add(y) -- basic.vpr@21.3--21.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add(x) == add(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.f (basic.vpr@21.10--21.16) [154381]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.g (basic.vpr@21.10--21.16) [154382]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access y.f (basic.vpr@21.20--21.26) [154383]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access y.g (basic.vpr@21.20--21.26) [154384]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x) == add(y) might not hold. (basic.vpr@21.10--21.26) [154385]"}
      add_1(Heap, x) == add_1(Heap, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := x.f + 1 -- basic.vpr@23.3--23.17
    
    // -- Check definedness of x.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@23.3--23.17) [154386]"}
        HasDirectPerm(Mask, x, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@23.3--23.17) [154387]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x) == add(y) -- basic.vpr@25.3--25.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add(x) == add(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.f (basic.vpr@25.10--25.16) [154388]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.g (basic.vpr@25.10--25.16) [154389]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access y.f (basic.vpr@25.20--25.26) [154390]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access y.g (basic.vpr@25.20--25.26) [154391]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x) == add(y) might not hold. (basic.vpr@25.10--25.26) [154392]"}
      add_1(Heap, x) == add_1(Heap, y);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(f, g) -- basic.vpr@29.15--29.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 10 -- basic.vpr@31.3--31.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (basic.vpr@31.3--31.12) [154393]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add3(x, 0) == add(x) -- basic.vpr@32.3--32.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add3(x, 0) == add(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 2;
        assert {:msg "  Precondition of function add3 might not hold. Fraction 1 / 2 might be negative. (basic.vpr@32.10--32.20) [154394]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.g (basic.vpr@32.10--32.20) [154395]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        assert {:msg "  Precondition of function add3 might not hold. Assertion x.g > 0 might not hold. (basic.vpr@32.10--32.20) [154396]"}
          ExhaleWellDef0Heap[x, g] > 0;
        perm := FullPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.f (basic.vpr@32.10--32.20) [154397]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := 1 / 2;
        assert {:msg "  Precondition of function add3 might not hold. Fraction 1 / 2 might be negative. (basic.vpr@32.10--32.20) [154398]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.g (basic.vpr@32.10--32.20) [154399]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.f (basic.vpr@32.24--32.30) [154400]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.g (basic.vpr@32.24--32.30) [154401]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add3(x, 0) == add(x) might not hold. (basic.vpr@32.10--32.30) [154402]"}
      add3(Heap, x, 0) == add_1(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := -5 -- basic.vpr@33.3--33.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@33.3--33.12) [154403]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=-5];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add3(x, 5) == 0 -- basic.vpr@34.3--34.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add3(x, 5) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 2;
        assert {:msg "  Precondition of function add3 might not hold. Fraction 1 / 2 might be negative. (basic.vpr@34.10--34.20) [154404]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.g (basic.vpr@34.10--34.20) [154405]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        assert {:msg "  Precondition of function add3 might not hold. Assertion x.g > 0 might not hold. (basic.vpr@34.10--34.20) [154406]"}
          ExhaleWellDef0Heap[x, g] > 0;
        perm := FullPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.f (basic.vpr@34.10--34.20) [154407]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := 1 / 2;
        assert {:msg "  Precondition of function add3 might not hold. Fraction 1 / 2 might be negative. (basic.vpr@34.10--34.20) [154408]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.g (basic.vpr@34.10--34.20) [154409]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add3(x, 5) == 0 might not hold. (basic.vpr@34.10--34.25) [154410]"}
      add3(Heap, x, 5) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add3(x, 1) == add(x) -- basic.vpr@36.3--36.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add3(x, 1) == add(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 2;
        assert {:msg "  Precondition of function add3 might not hold. Fraction 1 / 2 might be negative. (basic.vpr@36.10--36.20) [154411]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.g (basic.vpr@36.10--36.20) [154412]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        assert {:msg "  Precondition of function add3 might not hold. Assertion x.g > 0 might not hold. (basic.vpr@36.10--36.20) [154413]"}
          ExhaleWellDef0Heap[x, g] > 0;
        perm := FullPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.f (basic.vpr@36.10--36.20) [154414]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := 1 / 2;
        assert {:msg "  Precondition of function add3 might not hold. Fraction 1 / 2 might be negative. (basic.vpr@36.10--36.20) [154415]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add3 might not hold. There might be insufficient permission to access x.g (basic.vpr@36.10--36.20) [154416]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.f (basic.vpr@36.24--36.30) [154417]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access x.g (basic.vpr@36.24--36.30) [154418]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add3(x, 1) == add(x) might not hold. (basic.vpr@36.10--36.30) [154419]"}
      add3(Heap, x, 1) == add_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var b1: bool;
  var b2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(f, g) -- basic.vpr@44.15--44.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 1 -- basic.vpr@46.3--46.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@46.3--46.11) [154420]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 2 -- basic.vpr@47.3--47.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (basic.vpr@47.3--47.11) [154421]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: b1 := x.f > x.g -- basic.vpr@48.3--48.28
    
    // -- Check definedness of x.f > x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@48.3--48.28) [154422]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (basic.vpr@48.3--48.28) [154423]"}
        HasDirectPerm(Mask, x, g);
    b1 := Heap[x, f_7] > Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: b2 := x.f == x.g -- basic.vpr@49.3--49.29
    
    // -- Check definedness of x.f == x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (basic.vpr@49.3--49.29) [154424]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (basic.vpr@49.3--49.29) [154425]"}
        HasDirectPerm(Mask, x, g);
    b2 := Heap[x, f_7] == Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tern(x, b1) == x.g -- basic.vpr@50.3--50.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tern(x, b1) == x.g
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (b1) {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.f (basic.vpr@50.10--50.21) [154426]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.g (basic.vpr@50.10--50.21) [154427]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (basic.vpr@50.10--50.28) [154428]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion tern(x, b1) == x.g might not hold. (basic.vpr@50.10--50.28) [154429]"}
      tern(Heap, x, b1) == Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tern(x, !b1) == x.f -- basic.vpr@51.3--51.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tern(x, !b1) == x.f
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (!b1) {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.f (basic.vpr@51.10--51.22) [154430]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.g (basic.vpr@51.10--51.22) [154431]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (basic.vpr@51.10--51.29) [154432]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion tern(x, !b1) == x.f might not hold. (basic.vpr@51.10--51.29) [154433]"}
      tern(Heap, x, !b1) == Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tern(x, b2) > 0 -- basic.vpr@52.3--52.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tern(x, b2) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (b2) {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.f (basic.vpr@52.10--52.21) [154434]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.g (basic.vpr@52.10--52.21) [154435]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tern(x, b2) > 0 might not hold. (basic.vpr@52.10--52.25) [154436]"}
      tern(Heap, x, b2) > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tern(x, !b2) > 1 -- basic.vpr@54.3--54.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tern(x, !b2) > 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (!b2) {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.f (basic.vpr@54.10--54.22) [154437]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function tern might not hold. There might be insufficient permission to access x.g (basic.vpr@54.10--54.22) [154438]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tern(x, !b2) > 1 might not hold. (basic.vpr@54.10--54.26) [154439]"}
      tern(Heap, x, !b2) > 1;
    assume state(Heap, Mask);
}