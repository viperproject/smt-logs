// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:18:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0118.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0118-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
// - height 2: Nodelen
// - height 1: Nodeget
// - height 0: Listlen
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

const unique Nodev: Field NormalField int;
axiom !IsPredicateField(Nodev);
axiom !IsWandField(Nodev);
const unique Noden: Field NormalField Ref;
axiom !IsPredicateField(Noden);
axiom !IsWandField(Noden);
const unique Listc: Field NormalField Ref;
axiom !IsPredicateField(Listc);
axiom !IsWandField(Listc);

// ==================================================
// Translation of function Nodelen
// ==================================================

// Uninterpreted function definitions
function  Nodelen(Heap: HeapType, this: Ref): int;
function  Nodelen'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Nodelen(Heap, this) }
  Nodelen(Heap, this) == Nodelen'(Heap, this) && dummyFunction(Nodelen#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Nodelen'(Heap, this) }
  dummyFunction(Nodelen#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodelen(Heap, this) } { state(Heap, Mask), Nodelen#triggerStateless(this), Nodeinv#trigger(Heap, Nodeinv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> this != null ==> Nodelen(Heap, this) == (if Heap[this, Noden] == null then 1 else 1 + Nodelen'(Heap, Heap[this, Noden]))
);

// Framing axioms
function  Nodelen#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodelen'(Heap, this) } { state(Heap, Mask), Nodelen#triggerStateless(this), Nodeinv#trigger(Heap, Nodeinv(this)) }
  state(Heap, Mask) ==> Nodelen'(Heap, this) == Nodelen#frame(Heap[null, Nodeinv(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodelen'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Nodelen#trigger(Heap[null, Nodeinv(this)], this)) ==> this != null ==> Nodelen'(Heap, this) > 0
);

// Trigger function (controlling recursive postconditions)
function  Nodelen#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Nodelen#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Nodelen#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Nodeinv(this):=Mask[null, Nodeinv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodeinv(this), wildcard) in (this.Noden == null ? 1 : 1 + Nodelen(this.Noden)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodeinv#trigger(UnfoldingHeap, Nodeinv(this));
      assume UnfoldingHeap[null, Nodeinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Noden]), FrameFragment((if UnfoldingHeap[this, Noden] != null then UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Noden])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodeinv(this) (0118.vpr@10.1--16.2) [216809]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodeinv(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodev:=UnfoldingMask[this, Nodev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Noden:=UnfoldingMask[this, Noden] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Noden] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Noden]):=UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Noden])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodeinv(this), UnfoldingHeap[null, Nodeinv(this)], Nodeinv(UnfoldingHeap[this, Noden]), UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Noden])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Noden (0118.vpr@10.1--16.2) [216810]"}
        HasDirectPerm(UnfoldingMask, this, Noden);
      if (UnfoldingHeap[this, Noden] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Noden (0118.vpr@10.1--16.2) [216811]"}
          HasDirectPerm(UnfoldingMask, this, Noden);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function Nodelen might not hold. Assertion this.Noden != null might not hold. (0118.vpr@15.76--15.95) [216812]"}
            UnfoldingHeap[this, Noden] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodelen might not hold. There might be insufficient permission to access Nodeinv(this.Noden) (0118.vpr@15.76--15.95) [216813]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Noden])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Nodelen#trigger(UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Noden])], UnfoldingHeap[this, Noden]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodeinv#sm(this):=Heap[null, Nodeinv#sm(this)][this, Nodev:=true]];
        Heap := Heap[null, Nodeinv#sm(this):=Heap[null, Nodeinv#sm(this)][this, Noden:=true]];
        if (Heap[this, Noden] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Nodeinv#sm(this)][o_15, f_20] || Heap[null, Nodeinv#sm(Heap[this, Noden])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Nodeinv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, Noden] == null then 1 else 1 + Nodelen(Heap, Heap[this, Noden]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Nodelen might not hold. Assertion result > 0 might not hold. (0118.vpr@13.11--13.21) [216814]"}
      Result > 0;
}

// ==================================================
// Translation of function Nodeget
// ==================================================

// Uninterpreted function definitions
function  Nodeget(Heap: HeapType, this: Ref, i: int): int;
function  Nodeget'(Heap: HeapType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { Nodeget(Heap, this, i) }
  Nodeget(Heap, this, i) == Nodeget'(Heap, this, i) && dummyFunction(Nodeget#triggerStateless(this, i))
);
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { Nodeget'(Heap, this, i) }
  dummyFunction(Nodeget#triggerStateless(this, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), Nodeget(Heap, this, i) } { state(Heap, Mask), Nodeget#triggerStateless(this, i), Nodeinv#trigger(Heap, Nodeinv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this != null && (0 <= i && i < Nodelen(Heap, this)) ==> Nodeget(Heap, this, i) == (if i == 0 then Heap[this, Nodev] else Nodeget'(Heap, Heap[this, Noden], i - 1))
);

// Framing axioms
function  Nodeget#frame(frame: FrameType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), Nodeget'(Heap, this, i) } { state(Heap, Mask), Nodeget#triggerStateless(this, i), Nodeinv#trigger(Heap, Nodeinv(this)) }
  state(Heap, Mask) ==> Nodeget'(Heap, this, i) == Nodeget#frame(Heap[null, Nodeinv(this)], this, i)
);

// Trigger function (controlling recursive postconditions)
function  Nodeget#trigger(frame: FrameType, this: Ref, i: int): bool;

// State-independent trigger function
function  Nodeget#triggerStateless(this: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure Nodeget#definedness(this: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Nodeinv(this):=Mask[null, Nodeinv(this)] + perm];
    assume state(Heap, Mask);
    assume 0 <= i;
    assume state(Heap, Mask);
    
    // -- Check definedness of i < Nodelen(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Nodelen might not hold. Assertion this != null might not hold. (0118.vpr@20.61--20.74) [216815]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Nodelen might not hold. There might be insufficient permission to access Nodeinv(this) (0118.vpr@20.61--20.74) [216816]"}
          NoPerm < perm ==> NoPerm < Mask[null, Nodeinv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < Nodelen(Heap, this);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodeinv(this), wildcard) in (i == 0 ? this.Nodev : Nodeget(this.Noden, i - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodeinv#trigger(UnfoldingHeap, Nodeinv(this));
      assume UnfoldingHeap[null, Nodeinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Noden]), FrameFragment((if UnfoldingHeap[this, Noden] != null then UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Noden])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodeinv(this) (0118.vpr@18.1--23.2) [216817]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodeinv(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodev:=UnfoldingMask[this, Nodev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Noden:=UnfoldingMask[this, Noden] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Noden] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Noden]):=UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Noden])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodeinv(this), UnfoldingHeap[null, Nodeinv(this)], Nodeinv(UnfoldingHeap[this, Noden]), UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Noden])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (i == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Nodev (0118.vpr@18.1--23.2) [216818]"}
          HasDirectPerm(UnfoldingMask, this, Nodev);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Noden (0118.vpr@18.1--23.2) [216819]"}
          HasDirectPerm(UnfoldingMask, this, Noden);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function Nodeget might not hold. Assertion this.Noden != null might not hold. (0118.vpr@22.69--22.95) [216820]"}
            UnfoldingHeap[this, Noden] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodeget might not hold. There might be insufficient permission to access Nodeinv(this.Noden) (0118.vpr@22.69--22.95) [216821]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Noden])];
          assert {:msg "  Precondition of function Nodeget might not hold. Assertion 0 <= i - 1 might not hold. (0118.vpr@22.69--22.95) [216822]"}
            0 <= i - 1;
          assert {:msg "  Precondition of function Nodeget might not hold. Assertion i - 1 < Nodelen(this.Noden) might not hold. (0118.vpr@22.69--22.95) [216823]"}
            i - 1 < Nodelen(UnfoldingHeap, UnfoldingHeap[this, Noden]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Nodeget#trigger(UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Noden])], UnfoldingHeap[this, Noden], i - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodeinv#sm(this):=Heap[null, Nodeinv#sm(this)][this, Nodev:=true]];
        Heap := Heap[null, Nodeinv#sm(this):=Heap[null, Nodeinv#sm(this)][this, Noden:=true]];
        if (Heap[this, Noden] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Nodeinv#sm(this)][o_16, f_21] || Heap[null, Nodeinv#sm(Heap[this, Noden])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Nodeinv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 then Heap[this, Nodev] else Nodeget(Heap, Heap[this, Noden], i - 1));
}

// ==================================================
// Translation of function Listlen
// ==================================================

// Uninterpreted function definitions
function  Listlen(Heap: HeapType, this: Ref): int;
function  Listlen'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Listlen(Heap, this) }
  Listlen(Heap, this) == Listlen'(Heap, this) && dummyFunction(Listlen#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Listlen'(Heap, this) }
  dummyFunction(Listlen#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Listlen(Heap, this) } { state(Heap, Mask), Listlen#triggerStateless(this), Listinv#trigger(Heap, Listinv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null ==> Listlen(Heap, this) == (if Heap[this, Listc] == null then 0 else Nodelen(Heap, Heap[this, Listc]))
);

// Framing axioms
function  Listlen#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Listlen'(Heap, this) } { state(Heap, Mask), Listlen#triggerStateless(this), Listinv#trigger(Heap, Listinv(this)) }
  state(Heap, Mask) ==> Listlen'(Heap, this) == Listlen#frame(Heap[null, Listinv(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Listlen'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || Listlen#trigger(Heap[null, Listinv(this)], this)) ==> this != null ==> Listlen'(Heap, this) >= 0
);

// Trigger function (controlling recursive postconditions)
function  Listlen#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Listlen#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Listlen#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Listinv(this):=Mask[null, Listinv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Listinv(this), wildcard) in (this.Listc == null ? 0 : Nodelen(this.Listc)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Listinv#trigger(UnfoldingHeap, Listinv(this));
      assume UnfoldingHeap[null, Listinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Listc]), FrameFragment((if UnfoldingHeap[this, Listc] != null then UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Listc])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Listinv(this) (0118.vpr@25.1--31.2) [216824]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Listinv(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Listc:=UnfoldingMask[this, Listc] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Listc] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Listc]):=UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Listc])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Listinv(this), UnfoldingHeap[null, Listinv(this)], Nodeinv(UnfoldingHeap[this, Listc]), UnfoldingHeap[null, Nodeinv(UnfoldingHeap[this, Listc])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Listc (0118.vpr@25.1--31.2) [216825]"}
        HasDirectPerm(UnfoldingMask, this, Listc);
      if (UnfoldingHeap[this, Listc] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Listc (0118.vpr@25.1--31.2) [216826]"}
          HasDirectPerm(UnfoldingMask, this, Listc);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function Nodelen might not hold. Assertion this.Listc != null might not hold. (0118.vpr@30.72--30.91) [216827]"}
            UnfoldingHeap[this, Listc] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodelen might not hold. There might be insufficient permission to access Nodeinv(this.Listc) (0118.vpr@30.72--30.91) [216828]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodeinv(UnfoldingHeap[this, Listc])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Listinv#sm(this):=Heap[null, Listinv#sm(this)][this, Listc:=true]];
        if (Heap[this, Listc] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, Listinv#sm(this)][o_52, f_55] || Heap[null, Nodeinv#sm(Heap[this, Listc])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, Listinv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, Listc] == null then 0 else Nodelen(Heap, Heap[this, Listc]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Listlen might not hold. Assertion result >= 0 might not hold. (0118.vpr@28.11--28.22) [216829]"}
      Result >= 0;
}

// ==================================================
// Translation of predicate Nodeinv
// ==================================================

type PredicateType_Nodeinv;
function  Nodeinv(this: Ref): Field PredicateType_Nodeinv FrameType;
function  Nodeinv#sm(this: Ref): Field PredicateType_Nodeinv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Nodeinv(this)) }
  PredicateMaskField(Nodeinv(this)) == Nodeinv#sm(this)
);
axiom (forall this: Ref ::
  { Nodeinv(this) }
  IsPredicateField(Nodeinv(this))
);
axiom (forall this: Ref ::
  { Nodeinv(this) }
  getPredWandId(Nodeinv(this)) == 0
);
function  Nodeinv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Nodeinv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Nodeinv(this), Nodeinv(this2) }
  Nodeinv(this) == Nodeinv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Nodeinv#sm(this), Nodeinv#sm(this2) }
  Nodeinv#sm(this) == Nodeinv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Nodeinv#trigger(Heap, Nodeinv(this)) }
  Nodeinv#everUsed(Nodeinv(this))
);

procedure Nodeinv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodeinv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Nodev:=Mask[this, Nodev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Noden:=Mask[this, Noden] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Noden != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Noden (0118.vpr@33.1--35.2) [216830]"}
        HasDirectPerm(Mask, this, Noden);
    if (Heap[this, Noden] != null) {
      
      // -- Check definedness of acc(Nodeinv(this.Noden), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Noden (0118.vpr@33.1--35.2) [216831]"}
          HasDirectPerm(Mask, this, Noden);
      perm := FullPerm;
      Mask := Mask[null, Nodeinv(Heap[this, Noden]):=Mask[null, Nodeinv(Heap[this, Noden])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Listinv
// ==================================================

type PredicateType_Listinv;
function  Listinv(this: Ref): Field PredicateType_Listinv FrameType;
function  Listinv#sm(this: Ref): Field PredicateType_Listinv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Listinv(this)) }
  PredicateMaskField(Listinv(this)) == Listinv#sm(this)
);
axiom (forall this: Ref ::
  { Listinv(this) }
  IsPredicateField(Listinv(this))
);
axiom (forall this: Ref ::
  { Listinv(this) }
  getPredWandId(Listinv(this)) == 1
);
function  Listinv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Listinv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Listinv(this), Listinv(this2) }
  Listinv(this) == Listinv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Listinv#sm(this), Listinv#sm(this2) }
  Listinv#sm(this) == Listinv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Listinv#trigger(Heap, Listinv(this)) }
  Listinv#everUsed(Listinv(this))
);

procedure Listinv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Listinv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Listc:=Mask[this, Listc] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Listc != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Listc (0118.vpr@37.1--39.2) [216832]"}
        HasDirectPerm(Mask, this, Listc);
    if (Heap[this, Listc] != null) {
      
      // -- Check definedness of acc(Nodeinv(this.Listc), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Listc (0118.vpr@37.1--39.2) [216833]"}
          HasDirectPerm(Mask, this, Listc);
      perm := FullPerm;
      Mask := Mask[null, Nodeinv(Heap[this, Listc]):=Mask[null, Nodeinv(Heap[this, Listc])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}