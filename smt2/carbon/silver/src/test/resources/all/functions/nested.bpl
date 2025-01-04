// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:06:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/nested.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/nested-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 6: fun2
// - height 5: fun3
// - height 4: fun1
// - height 3: fun7
// - height 2: fun5
// - height 1: fun4
// - height 0: fun6
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
const unique g: Field NormalField Ref;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function fun3
// ==================================================

// Uninterpreted function definitions
function  fun3(Heap: HeapType, x: Ref): int;
function  fun3'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun3(Heap, x) }
  fun3(Heap, x) == fun3'(Heap, x) && dummyFunction(fun3#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun3'(Heap, x) }
  dummyFunction(fun3#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> fun3(Heap, x) == 1 + fun2(Heap, x)
);

// Framing axioms
function  fun3#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3'(Heap, x) }
  state(Heap, Mask) ==> fun3'(Heap, x) == fun3#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g])), x)
);

// Trigger function (controlling recursive postconditions)
function  fun3#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun3#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun3#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 5;
  
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
    
    // -- Check definedness of 1 + fun2(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access x.f (nested.vpr@9.7--9.14) [154088]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := 1 + fun2(Heap, x);
}

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, x: Ref): int;
function  fun1'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun1(Heap, x) }
  fun1(Heap, x) == fun1'(Heap, x) && dummyFunction(fun1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun1'(Heap, x) }
  dummyFunction(fun1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> fun1(Heap, x) == Heap[x, f_7] + fun2(Heap, Heap[x, g])
);

// Framing axioms
function  fun1#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun1'(Heap, x) }
  state(Heap, Mask) ==> fun1'(Heap, x) == fun1#frame(CombineFrames(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g])), FrameFragment(Heap[Heap[x, g], f_7])), x)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun1#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 4;
  
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
    
    // -- Check definedness of acc(x.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (nested.vpr@13.12--13.22) [154089]"}
        HasDirectPerm(Mask, x, g);
    perm := FullPerm;
    assume Heap[x, g] != null;
    Mask := Mask[Heap[x, g], f_7:=Mask[Heap[x, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + fun2(x.g)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (nested.vpr@11.1--14.20) [154090]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (nested.vpr@11.1--14.20) [154091]"}
        HasDirectPerm(Mask, x, g);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access x.g.f (nested.vpr@14.9--14.18) [154092]"}
          NoPerm < perm ==> NoPerm < Mask[Heap[x, g], f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := Heap[x, f_7] + fun2(Heap, Heap[x, g]);
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, x: Ref): int;
function  fun2'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun2(Heap, x) }
  fun2(Heap, x) == fun2'(Heap, x) && dummyFunction(fun2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun2'(Heap, x) }
  dummyFunction(fun2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> fun2(Heap, x) == -Heap[x, f_7]
);

// Framing axioms
function  fun2#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun2'(Heap, x) }
  state(Heap, Mask) ==> fun2'(Heap, x) == fun2#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of -x.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (nested.vpr@16.1--18.9) [154093]"}
        HasDirectPerm(Mask, x, f_7);
  
  // -- Translate function body
    Result := -Heap[x, f_7];
}

// ==================================================
// Translation of function fun4
// ==================================================

// Uninterpreted function definitions
function  fun4(Heap: HeapType, b_24: bool, x: Ref, y: Ref): int;
function  fun4'(Heap: HeapType, b_24: bool, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, b_24: bool, x: Ref, y: Ref ::
  { fun4(Heap, b_24, x, y) }
  fun4(Heap, b_24, x, y) == fun4'(Heap, b_24, x, y) && dummyFunction(fun4#triggerStateless(b_24, x, y))
);
axiom (forall Heap: HeapType, b_24: bool, x: Ref, y: Ref ::
  { fun4'(Heap, b_24, x, y) }
  dummyFunction(fun4#triggerStateless(b_24, x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, x: Ref, y: Ref ::
  { state(Heap, Mask), fun4(Heap, b_24, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> x == y ==> fun4(Heap, b_24, x, y) == 7 - (if !b_24 then fun2(Heap, y) else fun1(Heap, y)) + (if b_24 then Heap[Heap[y, g], f_7] else 99)
);

// Framing axioms
function  fun4#frame(frame: FrameType, b_24: bool, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, x: Ref, y: Ref ::
  { state(Heap, Mask), fun4'(Heap, b_24, x, y) }
  state(Heap, Mask) ==> fun4'(Heap, b_24, x, y) == fun4#frame(CombineFrames(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g])), FrameFragment((if b_24 then FrameFragment(Heap[Heap[x, g], f_7]) else EmptyFrame))), b_24, x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun4#trigger(frame: FrameType, b_24: bool, x: Ref, y: Ref): bool;

// State-independent trigger function
function  fun4#triggerStateless(b_24: bool, x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun4#definedness(b_24: bool, x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
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
    if (b_24) {
      
      // -- Check definedness of acc(x.g.f, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (nested.vpr@41.12--41.28) [154094]"}
          HasDirectPerm(Mask, x, g);
      perm := FullPerm;
      assume Heap[x, g] != null;
      Mask := Mask[Heap[x, g], f_7:=Mask[Heap[x, g], f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume x == y;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 7 - (!b ? fun2(y) : fun1(y)) + (b ? y.g.f : 99)
      if (!b_24) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access y.f (nested.vpr@43.13--43.20) [154095]"}
            NoPerm < perm ==> NoPerm < Mask[y, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access y.f (nested.vpr@43.23--43.30) [154096]"}
            NoPerm < perm ==> NoPerm < Mask[y, f_7];
          perm := FullPerm;
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access y.g (nested.vpr@43.23--43.30) [154097]"}
            NoPerm < perm ==> NoPerm < Mask[y, g];
          perm := FullPerm;
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access y.g.f (nested.vpr@43.23--43.30) [154098]"}
            NoPerm < perm ==> NoPerm < Mask[Heap[y, g], f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
      if (b_24) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.g (nested.vpr@39.1--43.52) [154099]"}
          HasDirectPerm(Mask, y, g);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.g.f (nested.vpr@39.1--43.52) [154100]"}
          HasDirectPerm(Mask, Heap[y, g], f_7);
      }
  
  // -- Translate function body
    Result := 7 - (if !b_24 then fun2(Heap, y) else fun1(Heap, y)) + (if b_24 then Heap[Heap[y, g], f_7] else 99);
}

// ==================================================
// Translation of function fun5
// ==================================================

// Uninterpreted function definitions
function  fun5(Heap: HeapType, x: Ref): int;
function  fun5'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun5(Heap, x) }
  fun5(Heap, x) == fun5'(Heap, x) && dummyFunction(fun5#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun5'(Heap, x) }
  dummyFunction(fun5#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun5(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun5(Heap, x) == fun3(Heap, x)
);

// Framing axioms
function  fun5#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun5'(Heap, x) }
  state(Heap, Mask) ==> fun5'(Heap, x) == fun5#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  fun5#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun5#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun5#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of fun3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun3 might not hold. There might be insufficient permission to access x.f (nested.vpr@63.3--63.10) [154101]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun3 might not hold. There might be insufficient permission to access x.g (nested.vpr@63.3--63.10) [154102]"}
          NoPerm < perm ==> NoPerm < Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := fun3(Heap, x);
}

// ==================================================
// Translation of function fun6
// ==================================================

// Uninterpreted function definitions
function  fun6(Heap: HeapType, x: Ref): int;
function  fun6'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun6(Heap, x) }
  fun6(Heap, x) == fun6'(Heap, x) && dummyFunction(fun6#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun6'(Heap, x) }
  dummyFunction(fun6#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun6(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun6(Heap, x) == fun7(Heap, x)
);

// Framing axioms
function  fun6#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun6'(Heap, x) }
  state(Heap, Mask) ==> fun6'(Heap, x) == fun6#frame(FrameFragment(Heap[x, f_7]), x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun6'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || fun6#trigger(FrameFragment(Heap[x, f_7]), x)) ==> fun6'(Heap, x) >= 0
);

// Trigger function (controlling recursive postconditions)
function  fun6#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun6#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun6#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of fun7(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun7 might not hold. There might be insufficient permission to access x.f (nested.vpr@68.3--68.10) [154103]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := fun7(Heap, x);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of fun6 might not hold. Assertion result >= 0 might not hold. (nested.vpr@67.11--67.22) [154104]"}
      Result >= 0;
}

// ==================================================
// Translation of function fun7
// ==================================================

// Uninterpreted function definitions
function  fun7(Heap: HeapType, x: Ref): int;
function  fun7'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun7(Heap, x) }
  fun7(Heap, x) == fun7'(Heap, x) && dummyFunction(fun7#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun7'(Heap, x) }
  dummyFunction(fun7#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun7(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun7(Heap, x) == (if Heap[x, f_7] < 0 then -Heap[x, f_7] else Heap[x, f_7])
);

// Framing axioms
function  fun7#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun7'(Heap, x) }
  state(Heap, Mask) ==> fun7'(Heap, x) == fun7#frame(FrameFragment(Heap[x, f_7]), x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun7'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || fun7#trigger(FrameFragment(Heap[x, f_7]), x)) ==> fun7'(Heap, x) >= 0
);

// Trigger function (controlling recursive postconditions)
function  fun7#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun7#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun7#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x.f < 0 ? -x.f : x.f)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (nested.vpr@70.1--73.25) [154105]"}
        HasDirectPerm(Mask, x, f_7);
      if (Heap[x, f_7] < 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (nested.vpr@70.1--73.25) [154106]"}
          HasDirectPerm(Mask, x, f_7);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (nested.vpr@70.1--73.25) [154107]"}
          HasDirectPerm(Mask, x, f_7);
      }
  
  // -- Translate function body
    Result := (if Heap[x, f_7] < 0 then -Heap[x, f_7] else Heap[x, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of fun7 might not hold. Assertion result >= 0 might not hold. (nested.vpr@72.11--72.22) [154108]"}
      Result >= 0;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(f, g) -- nested.vpr@22.3--22.17
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 1 -- nested.vpr@23.3--23.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (nested.vpr@23.3--23.11) [154109]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun3(x) == 0 -- nested.vpr@25.3--25.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun3(x) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun3 might not hold. There might be insufficient permission to access x.f (nested.vpr@25.10--25.17) [154110]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun3 might not hold. There might be insufficient permission to access x.g (nested.vpr@25.10--25.17) [154111]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun3(x) == 0 might not hold. (nested.vpr@25.10--25.22) [154112]"}
      fun3(Heap, x) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: x := new(f, g) -- nested.vpr@29.15--29.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f, g) -- nested.vpr@30.15--30.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    Mask := Mask[y, g:=Mask[y, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 3 -- nested.vpr@32.3--32.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (nested.vpr@32.3--32.11) [154113]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := y -- nested.vpr@33.3--33.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (nested.vpr@33.3--33.11) [154114]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=y];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g.f := 9 -- nested.vpr@34.3--34.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (nested.vpr@34.3--34.13) [154115]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g.f (nested.vpr@34.3--34.13) [154116]"}
      FullPerm == Mask[Heap[x, g], f_7];
    Heap := Heap[Heap[x, g], f_7:=9];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun1(x) == -6 -- nested.vpr@36.3--36.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun1(x) == -6
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access x.f (nested.vpr@36.10--36.17) [154117]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access x.g (nested.vpr@36.10--36.17) [154118]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access x.g.f (nested.vpr@36.10--36.17) [154119]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[ExhaleWellDef0Heap[x, g], f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(x) == -6 might not hold. (nested.vpr@36.10--36.23) [154120]"}
      fun1(Heap, x) == -6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: x := new(f, g) -- nested.vpr@46.15--46.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f, g) -- nested.vpr@47.15--47.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    Mask := Mask[y, g:=Mask[y, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 3 -- nested.vpr@49.3--49.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (nested.vpr@49.3--49.11) [154121]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := y -- nested.vpr@50.3--50.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (nested.vpr@50.3--50.11) [154122]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=y];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g.f := 17 -- nested.vpr@51.3--51.14
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (nested.vpr@51.3--51.14) [154123]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g.f (nested.vpr@51.3--51.14) [154124]"}
      FullPerm == Mask[Heap[x, g], f_7];
    Heap := Heap[Heap[x, g], f_7:=17];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun4(true, x, x) == 7 - 3 + 17 + 17 -- nested.vpr@53.3--53.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun4(true, x, x) == 7 - 3 + 17 + 17
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun4 might not hold. There might be insufficient permission to access x.f (nested.vpr@53.10--53.26) [154125]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun4 might not hold. There might be insufficient permission to access x.g (nested.vpr@53.10--53.26) [154126]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun4 might not hold. There might be insufficient permission to access x.g.f (nested.vpr@53.10--53.26) [154127]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[ExhaleWellDef0Heap[x, g], f_7];
        assert {:msg "  Precondition of function fun4 might not hold. Assertion x == x might not hold. (nested.vpr@53.10--53.26) [154128]"}
          x == x;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun4(true, x, x) == 7 - 3 + 17 + 17 might not hold. (nested.vpr@53.10--53.45) [154129]"}
      fun4(Heap, true, x, x) == 38;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun4(false, x, x) == 7 + 3 + 99 -- nested.vpr@54.3--54.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun4(false, x, x) == 7 + 3 + 99
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun4 might not hold. There might be insufficient permission to access x.f (nested.vpr@54.10--54.27) [154130]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun4 might not hold. There might be insufficient permission to access x.g (nested.vpr@54.10--54.27) [154131]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        assert {:msg "  Precondition of function fun4 might not hold. Assertion x == x might not hold. (nested.vpr@54.10--54.27) [154132]"}
          x == x;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun4(false, x, x) == 7 + 3 + 99 might not hold. (nested.vpr@54.10--54.41) [154133]"}
      fun4(Heap, false, x, x) == 109;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- nested.vpr@57.3--57.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (nested.vpr@57.10--57.15) [154134]"}
      false;
    assume state(Heap, Mask);
}