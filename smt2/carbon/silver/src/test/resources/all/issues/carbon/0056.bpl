// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:35:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0056.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0056-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: PhilosophergetLeft$
// - height 0: PhilosophergetRight$
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
// Translation of domain GlobalKPermission
// ==================================================

// The type for domain GlobalKPermission
type GlobalKPermissionDomainType;

// Translation of domain unique function globalK$
const unique globalK$: Perm;

// Translation of domain axiom globalKReadOnly
axiom NoPerm < globalK$ && globalK$ < FullPerm;

// ==================================================
// Translation of all fields
// ==================================================

const unique old$methodPermission: Field NormalField Perm;
axiom !IsPredicateField(old$methodPermission);
axiom !IsWandField(old$methodPermission);
const unique joinable$: Field NormalField bool;
axiom !IsPredicateField(joinable$);
axiom !IsWandField(joinable$);
const unique Philosopherleft$: Field NormalField Ref;
axiom !IsPredicateField(Philosopherleft$);
axiom !IsWandField(Philosopherleft$);
const unique Philosopherright$: Field NormalField Ref;
axiom !IsPredicateField(Philosopherright$);
axiom !IsWandField(Philosopherright$);
const unique par$Philosopherinit$this$_1: Field NormalField Ref;
axiom !IsPredicateField(par$Philosopherinit$this$_1);
axiom !IsWandField(par$Philosopherinit$this$_1);
const unique par$Philosopherinit$k$: Field NormalField Perm;
axiom !IsPredicateField(par$Philosopherinit$k$);
axiom !IsWandField(par$Philosopherinit$k$);
const unique par$Philosopherinit$f1: Field NormalField Ref;
axiom !IsPredicateField(par$Philosopherinit$f1);
axiom !IsWandField(par$Philosopherinit$f1);
const unique par$Philosopherinit$f2: Field NormalField Ref;
axiom !IsPredicateField(par$Philosopherinit$f2);
axiom !IsWandField(par$Philosopherinit$f2);
const unique par$Philosopherrun$this$_2: Field NormalField Ref;
axiom !IsPredicateField(par$Philosopherrun$this$_2);
axiom !IsWandField(par$Philosopherrun$this$_2);
const unique par$Philosopherrun$k$_1: Field NormalField Perm;
axiom !IsPredicateField(par$Philosopherrun$k$_1);
axiom !IsWandField(par$Philosopherrun$k$_1);
const unique par$Programmain$this$_8: Field NormalField Ref;
axiom !IsPredicateField(par$Programmain$this$_8);
axiom !IsWandField(par$Programmain$this$_8);
const unique par$Programmain$k$_2: Field NormalField Perm;
axiom !IsPredicateField(par$Programmain$k$_2);
axiom !IsWandField(par$Programmain$k$_2);

// ==================================================
// Translation of function PhilosophergetLeft$
// ==================================================

// Uninterpreted function definitions
function  PhilosophergetLeft$(Heap: HeapType, this$_3: Ref): Ref;
function  PhilosophergetLeft$'(Heap: HeapType, this$_3: Ref): Ref;
axiom (forall Heap: HeapType, this$_3: Ref ::
  { PhilosophergetLeft$(Heap, this$_3) }
  PhilosophergetLeft$(Heap, this$_3) == PhilosophergetLeft$'(Heap, this$_3) && dummyFunction(PhilosophergetLeft$#triggerStateless(this$_3))
);
axiom (forall Heap: HeapType, this$_3: Ref ::
  { PhilosophergetLeft$'(Heap, this$_3) }
  dummyFunction(PhilosophergetLeft$#triggerStateless(this$_3))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), PhilosophergetLeft$(Heap, this$_3) } { state(Heap, Mask), PhilosophergetLeft$#triggerStateless(this$_3), Philosophervalid$#trigger(Heap, Philosophervalid$(this$_3)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this$_3 != null ==> PhilosophergetLeft$(Heap, this$_3) == Heap[this$_3, Philosopherleft$]
);

// Framing axioms
function  PhilosophergetLeft$#frame(frame: FrameType, this$_3: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), PhilosophergetLeft$'(Heap, this$_3) }
  state(Heap, Mask) ==> PhilosophergetLeft$'(Heap, this$_3) == PhilosophergetLeft$#frame(Heap[null, Philosophervalid$(this$_3)], this$_3)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), PhilosophergetLeft$'(Heap, this$_3) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || PhilosophergetLeft$#trigger(Heap[null, Philosophervalid$(this$_3)], this$_3)) ==> this$_3 != null ==> PhilosophergetLeft$'(Heap, this$_3) != null
);

// Trigger function (controlling recursive postconditions)
function  PhilosophergetLeft$#trigger(frame: FrameType, this$_3: Ref): bool;

// State-independent trigger function
function  PhilosophergetLeft$#triggerStateless(this$_3: Ref): Ref;

// Check contract well-formedness and postcondition
procedure PhilosophergetLeft$#definedness(this$_3: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this$_3, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this$_3 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Philosophervalid$(this$_3):=Mask[null, Philosophervalid$(this$_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Philosophervalid$(this$_3), wildcard) in this$_3.Philosopherleft$)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Philosophervalid$#trigger(UnfoldingHeap, Philosophervalid$(this$_3));
      assume UnfoldingHeap[null, Philosophervalid$(this$_3)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_3, Philosopherleft$]), FrameFragment(UnfoldingHeap[this$_3, Philosopherright$]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Philosophervalid$(this$_3) (0056.vpr@38.1--44.2) [191677]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Philosophervalid$(this$_3)];
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Philosopherleft$:=UnfoldingMask[this$_3, Philosopherleft$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Philosopherright$:=UnfoldingMask[this$_3, Philosopherright$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this$_3, Philosopherleft$] != null;
      assume UnfoldingHeap[this$_3, Philosopherright$] != null;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Philosopherleft$ (0056.vpr@38.1--44.2) [191678]"}
        HasDirectPerm(UnfoldingMask, this$_3, Philosopherleft$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Philosophervalid$#sm(this$_3):=Heap[null, Philosophervalid$#sm(this$_3)][this$_3, Philosopherleft$:=true]];
        Heap := Heap[null, Philosophervalid$#sm(this$_3):=Heap[null, Philosophervalid$#sm(this$_3)][this$_3, Philosopherright$:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this$_3, Philosopherleft$];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of PhilosophergetLeft$ might not hold. Assertion result != null might not hold. (0056.vpr@41.11--41.25) [191679]"}
      Result != null;
}

// ==================================================
// Translation of function PhilosophergetRight$
// ==================================================

// Uninterpreted function definitions
function  PhilosophergetRight$(Heap: HeapType, this$_4: Ref): Ref;
function  PhilosophergetRight$'(Heap: HeapType, this$_4: Ref): Ref;
axiom (forall Heap: HeapType, this$_4: Ref ::
  { PhilosophergetRight$(Heap, this$_4) }
  PhilosophergetRight$(Heap, this$_4) == PhilosophergetRight$'(Heap, this$_4) && dummyFunction(PhilosophergetRight$#triggerStateless(this$_4))
);
axiom (forall Heap: HeapType, this$_4: Ref ::
  { PhilosophergetRight$'(Heap, this$_4) }
  dummyFunction(PhilosophergetRight$#triggerStateless(this$_4))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref ::
  { state(Heap, Mask), PhilosophergetRight$(Heap, this$_4) } { state(Heap, Mask), PhilosophergetRight$#triggerStateless(this$_4), Philosophervalid$#trigger(Heap, Philosophervalid$(this$_4)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this$_4 != null ==> PhilosophergetRight$(Heap, this$_4) == Heap[this$_4, Philosopherright$]
);

// Framing axioms
function  PhilosophergetRight$#frame(frame: FrameType, this$_4: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref ::
  { state(Heap, Mask), PhilosophergetRight$'(Heap, this$_4) }
  state(Heap, Mask) ==> PhilosophergetRight$'(Heap, this$_4) == PhilosophergetRight$#frame(Heap[null, Philosophervalid$(this$_4)], this$_4)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref ::
  { state(Heap, Mask), PhilosophergetRight$'(Heap, this$_4) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || PhilosophergetRight$#trigger(Heap[null, Philosophervalid$(this$_4)], this$_4)) ==> this$_4 != null ==> PhilosophergetRight$'(Heap, this$_4) != null
);

// Trigger function (controlling recursive postconditions)
function  PhilosophergetRight$#trigger(frame: FrameType, this$_4: Ref): bool;

// State-independent trigger function
function  PhilosophergetRight$#triggerStateless(this$_4: Ref): Ref;

// Check contract well-formedness and postcondition
procedure PhilosophergetRight$#definedness(this$_4: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this$_4, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this$_4 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Philosophervalid$(this$_4):=Mask[null, Philosophervalid$(this$_4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Philosophervalid$(this$_4), wildcard) in this$_4.Philosopherright$)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Philosophervalid$#trigger(UnfoldingHeap, Philosophervalid$(this$_4));
      assume UnfoldingHeap[null, Philosophervalid$(this$_4)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_4, Philosopherleft$]), FrameFragment(UnfoldingHeap[this$_4, Philosopherright$]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Philosophervalid$(this$_4) (0056.vpr@46.1--52.2) [191680]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Philosophervalid$(this$_4)];
      havoc wildcard;
      perm := wildcard;
      assume this$_4 != null;
      UnfoldingMask := UnfoldingMask[this$_4, Philosopherleft$:=UnfoldingMask[this$_4, Philosopherleft$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_4 != null;
      UnfoldingMask := UnfoldingMask[this$_4, Philosopherright$:=UnfoldingMask[this$_4, Philosopherright$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this$_4, Philosopherleft$] != null;
      assume UnfoldingHeap[this$_4, Philosopherright$] != null;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_4.Philosopherright$ (0056.vpr@46.1--52.2) [191681]"}
        HasDirectPerm(UnfoldingMask, this$_4, Philosopherright$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Philosophervalid$#sm(this$_4):=Heap[null, Philosophervalid$#sm(this$_4)][this$_4, Philosopherleft$:=true]];
        Heap := Heap[null, Philosophervalid$#sm(this$_4):=Heap[null, Philosophervalid$#sm(this$_4)][this$_4, Philosopherright$:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this$_4, Philosopherright$];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of PhilosophergetRight$ might not hold. Assertion result != null might not hold. (0056.vpr@49.11--49.25) [191682]"}
      Result != null;
}

// ==================================================
// Translation of predicate Philosopher$MonitorInvariant
// ==================================================

type PredicateType_Philosopher$MonitorInvariant;
function  Philosopher$MonitorInvariant(this$: Ref): Field PredicateType_Philosopher$MonitorInvariant FrameType;
function  Philosopher$MonitorInvariant#sm(this$: Ref): Field PredicateType_Philosopher$MonitorInvariant PMaskType;
axiom (forall this$: Ref ::
  { PredicateMaskField(Philosopher$MonitorInvariant(this$)) }
  PredicateMaskField(Philosopher$MonitorInvariant(this$)) == Philosopher$MonitorInvariant#sm(this$)
);
axiom (forall this$: Ref ::
  { Philosopher$MonitorInvariant(this$) }
  IsPredicateField(Philosopher$MonitorInvariant(this$))
);
axiom (forall this$: Ref ::
  { Philosopher$MonitorInvariant(this$) }
  getPredWandId(Philosopher$MonitorInvariant(this$)) == 0
);
function  Philosopher$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Philosopher$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$: Ref, this$2: Ref ::
  { Philosopher$MonitorInvariant(this$), Philosopher$MonitorInvariant(this$2) }
  Philosopher$MonitorInvariant(this$) == Philosopher$MonitorInvariant(this$2) ==> this$ == this$2
);
axiom (forall this$: Ref, this$2: Ref ::
  { Philosopher$MonitorInvariant#sm(this$), Philosopher$MonitorInvariant#sm(this$2) }
  Philosopher$MonitorInvariant#sm(this$) == Philosopher$MonitorInvariant#sm(this$2) ==> this$ == this$2
);

axiom (forall Heap: HeapType, this$: Ref ::
  { Philosopher$MonitorInvariant#trigger(Heap, Philosopher$MonitorInvariant(this$)) }
  Philosopher$MonitorInvariant#everUsed(Philosopher$MonitorInvariant(this$))
);

procedure Philosopher$MonitorInvariant#definedness(this$: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Philosopher$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Philosophervalid$
// ==================================================

type PredicateType_Philosophervalid$;
function  Philosophervalid$(this$_5: Ref): Field PredicateType_Philosophervalid$ FrameType;
function  Philosophervalid$#sm(this$_5: Ref): Field PredicateType_Philosophervalid$ PMaskType;
axiom (forall this$_5: Ref ::
  { PredicateMaskField(Philosophervalid$(this$_5)) }
  PredicateMaskField(Philosophervalid$(this$_5)) == Philosophervalid$#sm(this$_5)
);
axiom (forall this$_5: Ref ::
  { Philosophervalid$(this$_5) }
  IsPredicateField(Philosophervalid$(this$_5))
);
axiom (forall this$_5: Ref ::
  { Philosophervalid$(this$_5) }
  getPredWandId(Philosophervalid$(this$_5)) == 1
);
function  Philosophervalid$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Philosophervalid$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_5: Ref, this$_52: Ref ::
  { Philosophervalid$(this$_5), Philosophervalid$(this$_52) }
  Philosophervalid$(this$_5) == Philosophervalid$(this$_52) ==> this$_5 == this$_52
);
axiom (forall this$_5: Ref, this$_52: Ref ::
  { Philosophervalid$#sm(this$_5), Philosophervalid$#sm(this$_52) }
  Philosophervalid$#sm(this$_5) == Philosophervalid$#sm(this$_52) ==> this$_5 == this$_52
);

axiom (forall Heap: HeapType, this$_5: Ref ::
  { Philosophervalid$#trigger(Heap, Philosophervalid$(this$_5)) }
  Philosophervalid$#everUsed(Philosophervalid$(this$_5))
);

procedure Philosophervalid$#definedness(this$_5: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Philosophervalid$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_5, $allocated];
    perm := FullPerm;
    assume this$_5 != null;
    Mask := Mask[this$_5, Philosopherleft$:=Mask[this$_5, Philosopherleft$] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this$_5 != null;
    Mask := Mask[this$_5, Philosopherright$:=Mask[this$_5, Philosopherright$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this$_5.Philosopherleft$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_5.Philosopherleft$ (0056.vpr@58.1--60.2) [191683]"}
        HasDirectPerm(Mask, this$_5, Philosopherleft$);
    assume Heap[this$_5, Philosopherleft$] != null;
    
    // -- Check definedness of this$_5.Philosopherright$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_5.Philosopherright$ (0056.vpr@58.1--60.2) [191684]"}
        HasDirectPerm(Mask, this$_5, Philosopherright$);
    assume Heap[this$_5, Philosopherright$] != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Fork$MonitorInvariant
// ==================================================

type PredicateType_Fork$MonitorInvariant;
function  Fork$MonitorInvariant(this$_6: Ref): Field PredicateType_Fork$MonitorInvariant FrameType;
function  Fork$MonitorInvariant#sm(this$_6: Ref): Field PredicateType_Fork$MonitorInvariant PMaskType;
axiom (forall this$_6: Ref ::
  { PredicateMaskField(Fork$MonitorInvariant(this$_6)) }
  PredicateMaskField(Fork$MonitorInvariant(this$_6)) == Fork$MonitorInvariant#sm(this$_6)
);
axiom (forall this$_6: Ref ::
  { Fork$MonitorInvariant(this$_6) }
  IsPredicateField(Fork$MonitorInvariant(this$_6))
);
axiom (forall this$_6: Ref ::
  { Fork$MonitorInvariant(this$_6) }
  getPredWandId(Fork$MonitorInvariant(this$_6)) == 2
);
function  Fork$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Fork$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_6: Ref, this$_62: Ref ::
  { Fork$MonitorInvariant(this$_6), Fork$MonitorInvariant(this$_62) }
  Fork$MonitorInvariant(this$_6) == Fork$MonitorInvariant(this$_62) ==> this$_6 == this$_62
);
axiom (forall this$_6: Ref, this$_62: Ref ::
  { Fork$MonitorInvariant#sm(this$_6), Fork$MonitorInvariant#sm(this$_62) }
  Fork$MonitorInvariant#sm(this$_6) == Fork$MonitorInvariant#sm(this$_62) ==> this$_6 == this$_62
);

axiom (forall Heap: HeapType, this$_6: Ref ::
  { Fork$MonitorInvariant#trigger(Heap, Fork$MonitorInvariant(this$_6)) }
  Fork$MonitorInvariant#everUsed(Fork$MonitorInvariant(this$_6))
);

procedure Fork$MonitorInvariant#definedness(this$_6: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Fork$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_6, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Program$MonitorInvariant
// ==================================================

type PredicateType_Program$MonitorInvariant;
function  Program$MonitorInvariant(this$_7: Ref): Field PredicateType_Program$MonitorInvariant FrameType;
function  Program$MonitorInvariant#sm(this$_7: Ref): Field PredicateType_Program$MonitorInvariant PMaskType;
axiom (forall this$_7: Ref ::
  { PredicateMaskField(Program$MonitorInvariant(this$_7)) }
  PredicateMaskField(Program$MonitorInvariant(this$_7)) == Program$MonitorInvariant#sm(this$_7)
);
axiom (forall this$_7: Ref ::
  { Program$MonitorInvariant(this$_7) }
  IsPredicateField(Program$MonitorInvariant(this$_7))
);
axiom (forall this$_7: Ref ::
  { Program$MonitorInvariant(this$_7) }
  getPredWandId(Program$MonitorInvariant(this$_7)) == 3
);
function  Program$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Program$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_7: Ref, this$_72: Ref ::
  { Program$MonitorInvariant(this$_7), Program$MonitorInvariant(this$_72) }
  Program$MonitorInvariant(this$_7) == Program$MonitorInvariant(this$_72) ==> this$_7 == this$_72
);
axiom (forall this$_7: Ref, this$_72: Ref ::
  { Program$MonitorInvariant#sm(this$_7), Program$MonitorInvariant#sm(this$_72) }
  Program$MonitorInvariant#sm(this$_7) == Program$MonitorInvariant#sm(this$_72) ==> this$_7 == this$_72
);

axiom (forall Heap: HeapType, this$_7: Ref ::
  { Program$MonitorInvariant#trigger(Heap, Program$MonitorInvariant(this$_7)) }
  Program$MonitorInvariant#everUsed(Program$MonitorInvariant(this$_7))
);

procedure Program$MonitorInvariant#definedness(this$_7: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Program$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_7, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Philosopherinit$
// ==================================================

procedure Philosopherinit$(this$_1: Ref, k$: Perm, f1: Ref, f2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var n$: Ref;
  var a$: Ref;
  var b$: Ref;
  var c$: Ref;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_1, $allocated];
    assume Heap[f1, $allocated];
    assume Heap[f2, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_1 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    assume f1 != null;
    assume f2 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Philosopherright$:=Mask[this$_1, Philosopherright$] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Philosopherleft$:=Mask[this$_1, Philosopherleft$] + perm];
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
    PostMask := PostMask[null, Philosophervalid$(this$_1):=PostMask[null, Philosophervalid$(this$_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of PhilosophergetLeft$(this$_1) == f1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function PhilosophergetLeft$ might not hold. Assertion this$_1 != null might not hold. (0056.vpr@77.12--77.40) [191685]"}
          this$_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function PhilosophergetLeft$ might not hold. There might be insufficient permission to access Philosophervalid$(this$_1) (0056.vpr@77.12--77.40) [191686]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Philosophervalid$(this$_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume PhilosophergetLeft$(PostHeap, this$_1) == f1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of PhilosophergetRight$(this$_1) == f2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function PhilosophergetRight$ might not hold. Assertion this$_1 != null might not hold. (0056.vpr@77.52--77.81) [191687]"}
          this$_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function PhilosophergetRight$ might not hold. There might be insufficient permission to access Philosophervalid$(this$_1) (0056.vpr@77.52--77.81) [191688]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Philosophervalid$(this$_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume PhilosophergetRight$(PostHeap, this$_1) == f2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$, $allocated];
    assume Heap[a$, $allocated];
    assume Heap[b$, $allocated];
    assume Heap[c$, $allocated];
  
  // -- Translating statement: this$_1.Philosopherleft$ := f1 -- 0056.vpr@83.3--83.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this$_1.Philosopherleft$ (0056.vpr@83.3--83.33) [191689]"}
      FullPerm == Mask[this$_1, Philosopherleft$];
    Heap := Heap[this$_1, Philosopherleft$:=f1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this$_1.Philosopherright$ := f2 -- 0056.vpr@84.3--84.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this$_1.Philosopherright$ (0056.vpr@84.3--84.34) [191690]"}
      FullPerm == Mask[this$_1, Philosopherright$];
    Heap := Heap[this$_1, Philosopherright$:=f2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Philosophervalid$(this$_1), write) -- 0056.vpr@85.3--85.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Philosophervalid$(this$_1) might fail. There might be insufficient permission to access this$_1.Philosopherleft$ (0056.vpr@85.3--85.46) [191693]"}
        perm <= Mask[this$_1, Philosopherleft$];
    }
    Mask := Mask[this$_1, Philosopherleft$:=Mask[this$_1, Philosopherleft$] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Philosophervalid$(this$_1) might fail. There might be insufficient permission to access this$_1.Philosopherright$ (0056.vpr@85.3--85.46) [191695]"}
        perm <= Mask[this$_1, Philosopherright$];
    }
    Mask := Mask[this$_1, Philosopherright$:=Mask[this$_1, Philosopherright$] - perm];
    assert {:msg "  Folding Philosophervalid$(this$_1) might fail. Assertion this$_1.Philosopherleft$ != null might not hold. (0056.vpr@85.3--85.46) [191696]"}
      Heap[this$_1, Philosopherleft$] != null;
    assert {:msg "  Folding Philosophervalid$(this$_1) might fail. Assertion this$_1.Philosopherright$ != null might not hold. (0056.vpr@85.3--85.46) [191697]"}
      Heap[this$_1, Philosopherright$] != null;
    perm := FullPerm;
    Mask := Mask[null, Philosophervalid$(this$_1):=Mask[null, Philosophervalid$(this$_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Philosophervalid$#trigger(Heap, Philosophervalid$(this$_1));
    assume Heap[null, Philosophervalid$(this$_1)] == CombineFrames(FrameFragment(Heap[this$_1, Philosopherleft$]), FrameFragment(Heap[this$_1, Philosopherright$]));
    if (!HasDirectPerm(Mask, null, Philosophervalid$(this$_1))) {
      Heap := Heap[null, Philosophervalid$#sm(this$_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Philosophervalid$(this$_1):=freshVersion];
    }
    Heap := Heap[null, Philosophervalid$#sm(this$_1):=Heap[null, Philosophervalid$#sm(this$_1)][this$_1, Philosopherleft$:=true]];
    Heap := Heap[null, Philosophervalid$#sm(this$_1):=Heap[null, Philosophervalid$#sm(this$_1)][this$_1, Philosopherright$:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Philosopherinit$ might not hold. There might be insufficient permission to access Philosophervalid$(this$_1) (0056.vpr@76.11--76.49) [191699]"}
        perm <= Mask[null, Philosophervalid$(this$_1)];
    }
    Mask := Mask[null, Philosophervalid$(this$_1):=Mask[null, Philosophervalid$(this$_1)] - perm];
    assert {:msg "  Postcondition of Philosopherinit$ might not hold. Assertion PhilosophergetLeft$(this$_1) == f1 might not hold. (0056.vpr@77.11--77.88) [191700]"}
      PhilosophergetLeft$(Heap, this$_1) == f1;
    assert {:msg "  Postcondition of Philosopherinit$ might not hold. Assertion PhilosophergetRight$(this$_1) == f2 might not hold. (0056.vpr@77.11--77.88) [191701]"}
      PhilosophergetRight$(Heap, this$_1) == f2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Philosopherrun$
// ==================================================

procedure Philosopherrun$(this$_2: Ref, k$_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var n$_1: Ref;
  var a$_1: Ref;
  var b$_1: Ref;
  var c$_1: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_2 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_1;
    assume state(Heap, Mask);
    assume k$_1 < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[n$_1, $allocated];
    assume Heap[a$_1, $allocated];
    assume Heap[b$_1, $allocated];
    assume Heap[c$_1, $allocated];
  
  // -- Translating statement: while (true) -- 0056.vpr@103.3--116.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Philosophervalid$(this$_2), write) && (true && (true && (true && (true && true)))) might not hold on entry. There might be insufficient permission to access Philosophervalid$(this$_2) (0056.vpr@104.15--104.93) [191702]"}
            perm <= Mask[null, Philosophervalid$(this$_2)];
        }
        Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: unfold acc(Philosophervalid$(this$_2), write) -- 0056.vpr@106.5--106.50
            assume Philosophervalid$#trigger(Heap, Philosophervalid$(this$_2));
            assume Heap[null, Philosophervalid$(this$_2)] == CombineFrames(FrameFragment(Heap[this$_2, Philosopherleft$]), FrameFragment(Heap[this$_2, Philosopherright$]));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding Philosophervalid$(this$_2) might fail. There might be insufficient permission to access Philosophervalid$(this$_2) (0056.vpr@106.5--106.50) [191703]"}
                perm <= Mask[null, Philosophervalid$(this$_2)];
            }
            Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, Philosophervalid$(this$_2))) {
                havoc newVersion;
                Heap := Heap[null, Philosophervalid$(this$_2):=newVersion];
              }
            perm := FullPerm;
            assume this$_2 != null;
            Mask := Mask[this$_2, Philosopherleft$:=Mask[this$_2, Philosopherleft$] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume this$_2 != null;
            Mask := Mask[this$_2, Philosopherright$:=Mask[this$_2, Philosopherright$] + perm];
            assume state(Heap, Mask);
            assume Heap[this$_2, Philosopherleft$] != null;
            assume Heap[this$_2, Philosopherright$] != null;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write) -- 0056.vpr@107.5--107.71
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write)
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this$_2.Philosopherleft$ (0056.vpr@107.12--107.71) [191704]"}
                HasDirectPerm(Mask, this$_2, Philosopherleft$);
            perm := FullPerm;
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write) -- 0056.vpr@108.5--108.71
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write)
              assert {:msg "  Unfolding Fork$MonitorInvariant(this$_2.Philosopherleft$) might fail. There might be insufficient permission to access this$_2.Philosopherleft$ (0056.vpr@108.5--108.71) [191705]"}
                HasDirectPerm(Mask, this$_2, Philosopherleft$);
            assume Fork$MonitorInvariant#trigger(Heap, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]));
            assume Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])] == EmptyFrame;
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding Fork$MonitorInvariant(this$_2.Philosopherleft$) might fail. There might be insufficient permission to access Fork$MonitorInvariant(this$_2.Philosopherleft$) (0056.vpr@108.5--108.71) [191706]"}
                perm <= Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])];
            }
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]))) {
                havoc newVersion;
                Heap := Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]):=newVersion];
              }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write) -- 0056.vpr@109.5--109.72
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write)
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this$_2.Philosopherright$ (0056.vpr@109.12--109.72) [191707]"}
                HasDirectPerm(Mask, this$_2, Philosopherright$);
            perm := FullPerm;
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write) -- 0056.vpr@110.5--110.72
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write)
              assert {:msg "  Unfolding Fork$MonitorInvariant(this$_2.Philosopherright$) might fail. There might be insufficient permission to access this$_2.Philosopherright$ (0056.vpr@110.5--110.72) [191708]"}
                HasDirectPerm(Mask, this$_2, Philosopherright$);
            assume Fork$MonitorInvariant#trigger(Heap, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]));
            assume Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])] == EmptyFrame;
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding Fork$MonitorInvariant(this$_2.Philosopherright$) might fail. There might be insufficient permission to access Fork$MonitorInvariant(this$_2.Philosopherright$) (0056.vpr@110.5--110.72) [191709]"}
                perm <= Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])];
            }
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]))) {
                havoc newVersion;
                Heap := Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]):=newVersion];
              }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write) -- 0056.vpr@111.5--111.69
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write)
              assert {:msg "  Folding Fork$MonitorInvariant(this$_2.Philosopherleft$) might fail. There might be insufficient permission to access this$_2.Philosopherleft$ (0056.vpr@111.5--111.69) [191710]"}
                HasDirectPerm(Mask, this$_2, Philosopherleft$);
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Fork$MonitorInvariant#trigger(Heap, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]));
            assume Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])] == EmptyFrame;
            if (!HasDirectPerm(Mask, null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]))) {
              Heap := Heap[null, Fork$MonitorInvariant#sm(Heap[this$_2, Philosopherleft$]):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]):=freshVersion];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write) -- 0056.vpr@112.5--112.71
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherleft$), write)
              assert {:msg "  Exhale might fail. There might be insufficient permission to access this$_2.Philosopherleft$ (0056.vpr@112.12--112.71) [191711]"}
                HasDirectPerm(ExhaleWellDef0Mask, this$_2, Philosopherleft$);
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access Fork$MonitorInvariant(this$_2.Philosopherleft$) (0056.vpr@112.12--112.71) [191712]"}
                perm <= Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])];
            }
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherleft$])] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write) -- 0056.vpr@113.5--113.70
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write)
              assert {:msg "  Folding Fork$MonitorInvariant(this$_2.Philosopherright$) might fail. There might be insufficient permission to access this$_2.Philosopherright$ (0056.vpr@113.5--113.70) [191713]"}
                HasDirectPerm(Mask, this$_2, Philosopherright$);
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Fork$MonitorInvariant#trigger(Heap, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]));
            assume Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])] == EmptyFrame;
            if (!HasDirectPerm(Mask, null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]))) {
              Heap := Heap[null, Fork$MonitorInvariant#sm(Heap[this$_2, Philosopherright$]):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]):=freshVersion];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write) -- 0056.vpr@114.5--114.72
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of acc(Fork$MonitorInvariant(this$_2.Philosopherright$), write)
              assert {:msg "  Exhale might fail. There might be insufficient permission to access this$_2.Philosopherright$ (0056.vpr@114.12--114.72) [191714]"}
                HasDirectPerm(ExhaleWellDef0Mask, this$_2, Philosopherright$);
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access Fork$MonitorInvariant(this$_2.Philosopherright$) (0056.vpr@114.12--114.72) [191715]"}
                perm <= Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])];
            }
            Mask := Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$]):=Mask[null, Fork$MonitorInvariant(Heap[this$_2, Philosopherright$])] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(Philosophervalid$(this$_2), write) -- 0056.vpr@115.5--115.48
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Philosophervalid$(this$_2) might fail. There might be insufficient permission to access this$_2.Philosopherleft$ (0056.vpr@115.5--115.48) [191716]"}
                perm <= Mask[this$_2, Philosopherleft$];
            }
            Mask := Mask[this$_2, Philosopherleft$:=Mask[this$_2, Philosopherleft$] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Philosophervalid$(this$_2) might fail. There might be insufficient permission to access this$_2.Philosopherright$ (0056.vpr@115.5--115.48) [191717]"}
                perm <= Mask[this$_2, Philosopherright$];
            }
            Mask := Mask[this$_2, Philosopherright$:=Mask[this$_2, Philosopherright$] - perm];
            assert {:msg "  Folding Philosophervalid$(this$_2) might fail. Assertion this$_2.Philosopherleft$ != null might not hold. (0056.vpr@115.5--115.48) [191718]"}
              Heap[this$_2, Philosopherleft$] != null;
            assert {:msg "  Folding Philosophervalid$(this$_2) might fail. Assertion this$_2.Philosopherright$ != null might not hold. (0056.vpr@115.5--115.48) [191719]"}
              Heap[this$_2, Philosopherright$] != null;
            perm := FullPerm;
            Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Philosophervalid$#trigger(Heap, Philosophervalid$(this$_2));
            assume Heap[null, Philosophervalid$(this$_2)] == CombineFrames(FrameFragment(Heap[this$_2, Philosopherleft$]), FrameFragment(Heap[this$_2, Philosopherright$]));
            if (!HasDirectPerm(Mask, null, Philosophervalid$(this$_2))) {
              Heap := Heap[null, Philosophervalid$#sm(this$_2):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, Philosophervalid$(this$_2):=freshVersion];
            }
            Heap := Heap[null, Philosophervalid$#sm(this$_2):=Heap[null, Philosophervalid$#sm(this$_2)][this$_2, Philosopherleft$:=true]];
            Heap := Heap[null, Philosophervalid$#sm(this$_2):=Heap[null, Philosophervalid$#sm(this$_2)][this$_2, Philosopherright$:=true]];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Philosophervalid$(this$_2), write) && (true && (true && (true && (true && true)))) might not be preserved. There might be insufficient permission to access Philosophervalid$(this$_2) (0056.vpr@104.15--104.93) [191720]"}
            perm <= Mask[null, Philosophervalid$(this$_2)];
        }
        Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Philosophervalid$(this$_2):=Mask[null, Philosophervalid$(this$_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}