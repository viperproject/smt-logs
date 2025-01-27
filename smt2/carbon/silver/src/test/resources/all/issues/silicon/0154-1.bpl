// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:21:51
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0154-1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0154-1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_98: Ref, f_132: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_98, f_132] }
  Heap[o_98, $allocated] ==> Heap[Heap[o_98, f_132], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_100: Ref, f_133: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_100, f_133] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_100, f_133) ==> Heap[o_100, f_133] == ExhaleHeap[o_100, f_133]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_43), ExhaleHeap[null, PredicateMaskField(pm_f_43)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsPredicateField(pm_f_43) ==> Heap[null, PredicateMaskField(pm_f_43)] == ExhaleHeap[null, PredicateMaskField(pm_f_43)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_43) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsPredicateField(pm_f_43) ==> (forall <A, B> o2_43: Ref, f_133: (Field A B) ::
    { ExhaleHeap[o2_43, f_133] }
    Heap[null, PredicateMaskField(pm_f_43)][o2_43, f_133] ==> Heap[o2_43, f_133] == ExhaleHeap[o2_43, f_133]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_43), ExhaleHeap[null, WandMaskField(pm_f_43)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsWandField(pm_f_43) ==> Heap[null, WandMaskField(pm_f_43)] == ExhaleHeap[null, WandMaskField(pm_f_43)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_43) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsWandField(pm_f_43) ==> (forall <A, B> o2_43: Ref, f_133: (Field A B) ::
    { ExhaleHeap[o2_43, f_133] }
    Heap[null, WandMaskField(pm_f_43)][o2_43, f_133] ==> Heap[o2_43, f_133] == ExhaleHeap[o2_43, f_133]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_100: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_100, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_100, $allocated] ==> ExhaleHeap[o_100, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_98: Ref, f_108: (Field A B), v: B ::
  { Heap[o_98, f_108:=v] }
  succHeap(Heap, Heap[o_98, f_108:=v])
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
// - height 0: NodegetNext$
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

const unique Nodenext$: Field NormalField Ref;
axiom !IsPredicateField(Nodenext$);
axiom !IsWandField(Nodenext$);
const unique Nodevalue$: Field NormalField int;
axiom !IsPredicateField(Nodevalue$);
axiom !IsWandField(Nodevalue$);

// ==================================================
// Translation of function NodegetNext$
// ==================================================

// Uninterpreted function definitions
function  NodegetNext$(Heap: HeapType, this: Ref): Ref;
function  NodegetNext$'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { NodegetNext$(Heap, this) }
  NodegetNext$(Heap, this) == NodegetNext$'(Heap, this) && dummyFunction(NodegetNext$#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { NodegetNext$'(Heap, this) }
  dummyFunction(NodegetNext$#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), NodegetNext$(Heap, this) } { state(Heap, Mask), NodegetNext$#triggerStateless(this), Nodevalid$#trigger(Heap, Nodevalid$(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null ==> NodegetNext$(Heap, this) == Heap[this, Nodenext$]
);

// Framing axioms
function  NodegetNext$#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), NodegetNext$'(Heap, this) }
  state(Heap, Mask) ==> NodegetNext$'(Heap, this) == NodegetNext$#frame(Heap[null, Nodevalid$(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  NodegetNext$#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  NodegetNext$#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure NodegetNext$#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this), wildcard) in this.Nodenext$)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@9.1--14.2) [78758]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@9.1--14.2) [78759]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, Nodevalid$#sm(this)][o_5, f_11] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, Nodenext$];
}

// ==================================================
// Translation of predicate Nodevalid$
// ==================================================

type PredicateType_Nodevalid$;
function  Nodevalid$(this: Ref): Field PredicateType_Nodevalid$ FrameType;
function  Nodevalid$#sm(this: Ref): Field PredicateType_Nodevalid$ PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Nodevalid$(this)) }
  PredicateMaskField(Nodevalid$(this)) == Nodevalid$#sm(this)
);
axiom (forall this: Ref ::
  { Nodevalid$(this) }
  IsPredicateField(Nodevalid$(this))
);
axiom (forall this: Ref ::
  { Nodevalid$(this) }
  getPredWandId(Nodevalid$(this)) == 0
);
function  Nodevalid$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Nodevalid$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Nodevalid$(this), Nodevalid$(this2) }
  Nodevalid$(this) == Nodevalid$(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Nodevalid$#sm(this), Nodevalid$#sm(this2) }
  Nodevalid$#sm(this) == Nodevalid$#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Nodevalid$#trigger(Heap, Nodevalid$(this)) }
  Nodevalid$#everUsed(Nodevalid$(this))
);

procedure Nodevalid$#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodevalid$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@16.1--18.2) [78760]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@16.1--18.2) [78761]"}
          HasDirectPerm(Mask, this, Nodenext$);
      perm := FullPerm;
      Mask := Mask[null, Nodevalid$(Heap[this, Nodenext$]):=Mask[null, Nodevalid$(Heap[this, Nodenext$])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Nodep$
// ==================================================

type PredicateType_Nodep$;
function  Nodep$(this: Ref): Field PredicateType_Nodep$ FrameType;
function  Nodep$#sm(this: Ref): Field PredicateType_Nodep$ PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Nodep$(this)) }
  PredicateMaskField(Nodep$(this)) == Nodep$#sm(this)
);
axiom (forall this: Ref ::
  { Nodep$(this) }
  IsPredicateField(Nodep$(this))
);
axiom (forall this: Ref ::
  { Nodep$(this) }
  getPredWandId(Nodep$(this)) == 1
);
function  Nodep$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Nodep$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Nodep$(this), Nodep$(this2) }
  Nodep$(this) == Nodep$(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Nodep$#sm(this), Nodep$#sm(this2) }
  Nodep$#sm(this) == Nodep$#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Nodep$#trigger(Heap, Nodep$(this)) }
  Nodep$#everUsed(Nodep$(this))
);

procedure Nodep$#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodep$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@20.1--22.2) [78762]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@20.1--22.2) [78763]"}
          HasDirectPerm(Mask, this, Nodenext$);
      perm := FullPerm;
      Mask := Mask[null, Nodeq$(Heap[this, Nodenext$]):=Mask[null, Nodeq$(Heap[this, Nodenext$])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Nodeq$
// ==================================================

type PredicateType_Nodeq$;
function  Nodeq$(this: Ref): Field PredicateType_Nodeq$ FrameType;
function  Nodeq$#sm(this: Ref): Field PredicateType_Nodeq$ PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Nodeq$(this)) }
  PredicateMaskField(Nodeq$(this)) == Nodeq$#sm(this)
);
axiom (forall this: Ref ::
  { Nodeq$(this) }
  IsPredicateField(Nodeq$(this))
);
axiom (forall this: Ref ::
  { Nodeq$(this) }
  getPredWandId(Nodeq$(this)) == 2
);
function  Nodeq$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Nodeq$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Nodeq$(this), Nodeq$(this2) }
  Nodeq$(this) == Nodeq$(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Nodeq$#sm(this), Nodeq$#sm(this2) }
  Nodeq$#sm(this) == Nodeq$#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Nodeq$#trigger(Heap, Nodeq$(this)) }
  Nodeq$#everUsed(Nodeq$(this))
);

procedure Nodeq$#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodeq$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@24.1--26.2) [78764]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodep$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@24.1--26.2) [78765]"}
          HasDirectPerm(Mask, this, Nodenext$);
      perm := FullPerm;
      Mask := Mask[null, Nodep$(Heap[this, Nodenext$]):=Mask[null, Nodep$(Heap[this, Nodenext$])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingUnfold$
// ==================================================

procedure NodetestNestingUnfold$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(Nodevalid$(this), write) -- 0154-1.vpr@32.3--32.38
    assume Nodevalid$#trigger(Heap, Nodevalid$(this));
    assume Heap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(Heap[this, Nodenext$]), CombineFrames(FrameFragment(Heap[this, Nodevalue$]), FrameFragment((if Heap[this, Nodenext$] != null then Heap[null, Nodevalid$(Heap[this, Nodenext$])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Nodevalid$(this) might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@32.3--32.38) [78768]"}
        perm <= Mask[null, Nodevalid$(this)];
    }
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Nodevalid$(this))) {
        havoc newVersion;
        Heap := Heap[null, Nodevalid$(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      Mask := Mask[null, Nodevalid$(Heap[this, Nodenext$]):=Mask[null, Nodevalid$(Heap[this, Nodenext$])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Nodevalid$(this), Heap[null, Nodevalid$(this)], Nodevalid$(Heap[this, Nodenext$]), Heap[null, Nodevalid$(Heap[this, Nodenext$])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@34.3--34.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@34.10--34.32) [78770]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@34.10--34.32) [78771]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.Nodenext$ != null) -- 0154-1.vpr@35.3--39.4
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@35.7--35.29) [78772]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: unfold acc(Nodevalid$(this.Nodenext$), write) -- 0154-1.vpr@36.5--36.50
        
        // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
          assert {:msg "  Unfolding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@36.5--36.50) [78773]"}
            HasDirectPerm(Mask, this, Nodenext$);
        assume Nodevalid$#trigger(Heap, Nodevalid$(Heap[this, Nodenext$]));
        assume Heap[null, Nodevalid$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@36.5--36.50) [78776]"}
            perm <= Mask[null, Nodevalid$(Heap[this, Nodenext$])];
        }
        Mask := Mask[null, Nodevalid$(Heap[this, Nodenext$]):=Mask[null, Nodevalid$(Heap[this, Nodenext$])] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, Nodevalid$(Heap[this, Nodenext$]))) {
            havoc newVersion;
            Heap := Heap[null, Nodevalid$(Heap[this, Nodenext$]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, Nodenext$] != null;
        Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, Nodenext$] != null;
        Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
          perm := FullPerm;
          Mask := Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Nodevalid$(Heap[this, Nodenext$]), Heap[null, Nodevalid$(Heap[this, Nodenext$])], Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$]), Heap[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@37.5--37.54
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@37.12--37.54) [78778]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@37.12--37.54) [78779]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@37.12--37.54) [78780]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@37.12--37.54) [78781]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@38.5--38.44
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@38.12--38.44) [78782]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@38.12--38.44) [78783]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@38.12--38.44) [78784]"}
          this != Heap[Heap[this, Nodenext$], Nodenext$];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingFold$
// ==================================================

procedure NodetestNestingFold$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodenext$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [78785]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodevalue$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [78786]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [78787]"}
        HasDirectPerm(Mask, this, Nodenext$);
    assume Heap[this, Nodenext$] != null;
    
    // -- Check definedness of this.Nodenext$.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [78788]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@44.12--44.280) [78789]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    assume Heap[Heap[this, Nodenext$], Nodenext$] != null;
    
    // -- Check definedness of acc(Nodevalid$(this.Nodenext$.Nodenext$), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [78790]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@44.12--44.280) [78791]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(Nodevalid$(this.Nodenext$), write) -- 0154-1.vpr@46.3--46.46
    
    // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
      assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@46.3--46.46) [78792]"}
        HasDirectPerm(Mask, this, Nodenext$);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@46.3--46.46) [78794]"}
      Mask[Heap[this, Nodenext$], Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodenext$];
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] - wildcard];
    assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodevalue$ (0154-1.vpr@46.3--46.46) [78795]"}
      Mask[Heap[this, Nodenext$], Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodevalue$];
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] - wildcard];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$.Nodenext$) (0154-1.vpr@46.3--46.46) [78797]"}
          perm <= Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])];
      }
      Mask := Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Nodevalid$(Heap[this, Nodenext$]), Heap[null, Nodevalid$(Heap[this, Nodenext$])], Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$]), Heap[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(Heap[this, Nodenext$]):=Mask[null, Nodevalid$(Heap[this, Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Nodevalid$#trigger(Heap, Nodevalid$(Heap[this, Nodenext$]));
    assume Heap[null, Nodevalid$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, Nodevalid$(Heap[this, Nodenext$]))) {
      Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Nodevalid$(Heap[this, Nodenext$]):=freshVersion];
    }
    Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
    Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      havoc newPMask;
      assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
        { newPMask[o_6, f_12] }
        Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_6, f_12] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_6, f_12] ==> newPMask[o_6, f_12]
      );
      Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@48.3--48.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@48.10--48.52) [78799]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@48.10--48.52) [78800]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@48.10--48.52) [78801]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@48.10--48.52) [78802]"}
      Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Nodevalid$(this), write) -- 0154-1.vpr@49.3--49.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@49.3--49.36) [78804]"}
      Mask[this, Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodenext$];
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] - wildcard];
    assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access this.Nodevalue$ (0154-1.vpr@49.3--49.36) [78805]"}
      Mask[this, Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodevalue$];
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] - wildcard];
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@49.3--49.36) [78807]"}
          perm <= Mask[null, Nodevalid$(Heap[this, Nodenext$])];
      }
      Mask := Mask[null, Nodevalid$(Heap[this, Nodenext$]):=Mask[null, Nodevalid$(Heap[this, Nodenext$])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Nodevalid$(this), Heap[null, Nodevalid$(this)], Nodevalid$(Heap[this, Nodenext$]), Heap[null, Nodevalid$(Heap[this, Nodenext$])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Nodevalid$#trigger(Heap, Nodevalid$(this));
    assume Heap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(Heap[this, Nodenext$]), CombineFrames(FrameFragment(Heap[this, Nodevalue$]), FrameFragment((if Heap[this, Nodenext$] != null then Heap[null, Nodevalid$(Heap[this, Nodenext$])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, Nodevalid$(this))) {
      Heap := Heap[null, Nodevalid$#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Nodevalid$(this):=freshVersion];
    }
    Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
    Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
    if (Heap[this, Nodenext$] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, Nodevalid$#sm(this)][o_40, f_52] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@50.3--50.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@50.10--50.32) [78809]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@50.10--50.32) [78810]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@51.3--51.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@51.10--51.42) [78811]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@51.10--51.42) [78812]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@51.10--51.42) [78813]"}
      this != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingUnfolding$
// ==================================================

procedure NodetestNestingUnfolding$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert this != (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) -- 0154-1.vpr@59.3--59.76
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != (unfolding acc(Nodevalid$(this), write) in this.Nodenext$)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@59.10--59.76) [78814]"}
          perm <= UnfoldingMask[null, Nodevalid$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@59.10--59.76) [78815]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
            { newPMask[o_42, f_55] }
            Heap[null, Nodevalid$#sm(this)][o_42, f_55] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_42, f_55] ==> newPMask[o_42, f_55]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, Nodevalid$#sm(this)][o_46, f_60] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) might not hold. (0154-1.vpr@59.10--59.76) [78816]"}
      this != Heap[this, Nodenext$];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
      if (Heap[this, Nodenext$] != null) {
        havoc newPMask;
        assume (forall <A, B> o: Ref, f_61: (Field A B) ::
          { newPMask[o, f_61] }
          Heap[null, Nodevalid$#sm(this)][o, f_61] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o, f_61] ==> newPMask[o, f_61]
        );
        Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((unfolding acc(Nodevalid$(this), write) in this.Nodenext$) != null) -- 0154-1.vpr@60.3--63.4
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) != null
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@60.7--60.73) [78817]"}
          perm <= UnfoldingMask[null, Nodevalid$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@60.7--60.73) [78818]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, Nodevalid$#sm(this)][o_14, f_3] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
            { newPMask[o_3, f_24] }
            Heap[null, Nodevalid$#sm(this)][o_3, f_24] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_3, f_24] ==> newPMask[o_3, f_24]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: assert (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) !=
  //   (unfolding acc(Nodevalid$(this), write) in
  //     (unfolding acc(Nodevalid$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@61.5--61.196
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
          assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@61.12--61.196) [78819]"}
              perm <= UnfoldingMask[null, Nodevalid$(this)];
          }
          UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, Nodenext$] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@61.12--61.196) [78820]"}
            HasDirectPerm(UnfoldingMask, this, Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                { newPMask[o_1, f_10] }
                Heap[null, Nodevalid$#sm(this)][o_1, f_10] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_1, f_10] ==> newPMask[o_1, f_10]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
          assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@61.12--61.196) [78821]"}
              perm <= UnfoldingMask[null, Nodevalid$(this)];
          }
          UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, Nodenext$] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume Nodevalid$#trigger(Unfolding1Heap, Nodevalid$(Unfolding1Heap[this, Nodenext$]));
          assume Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null then Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@61.12--61.196) [78822]"}
              perm <= Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])];
          }
          Unfolding1Mask := Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[this, Nodenext$]):=Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])] - perm];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]):=Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodevalid$(Unfolding1Heap[this, Nodenext$]), Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])], Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@61.12--61.196) [78823]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@61.12--61.196) [78824]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@61.12--61.196) [78825]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                { newPMask[o_15, f_51] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_15, f_51] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_15, f_51] ==> newPMask[o_15, f_51]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
                { newPMask[o_4, f_54] }
                Heap[null, Nodevalid$#sm(this)][o_4, f_54] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_4, f_54] ==> newPMask[o_4, f_54]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                { newPMask[o_12, f_25] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_12, f_25] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_12, f_25] ==> newPMask[o_12, f_25]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                { newPMask[o_41, f_21] }
                Heap[null, Nodevalid$#sm(this)][o_41, f_21] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_41, f_21] ==> newPMask[o_41, f_21]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
                { newPMask[o_23, f_13] }
                Heap[null, Nodevalid$#sm(this)][o_23, f_13] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_23, f_13] ==> newPMask[o_23, f_13]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
                { newPMask[o_13, f_65] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_13, f_65] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_13, f_65] ==> newPMask[o_13, f_65]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@61.12--61.196) [78826]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
              { newPMask[o_51, f_66] }
              Heap[null, Nodevalid$#sm(this)][o_51, f_66] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_51, f_66] ==> newPMask[o_51, f_66]
            );
            Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
              { newPMask[o_52, f_14] }
              Heap[null, Nodevalid$#sm(this)][o_52, f_14] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_52, f_14] ==> newPMask[o_52, f_14]
            );
            Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
              { newPMask[o_20, f_50] }
              Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_20, f_50] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_20, f_50] ==> newPMask[o_20, f_50]
            );
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(Nodevalid$(this), write) in
  //     (unfolding acc(Nodevalid$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@62.5--62.142
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
          assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@62.12--62.142) [78827]"}
              perm <= UnfoldingMask[null, Nodevalid$(this)];
          }
          UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, Nodenext$] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume Nodevalid$#trigger(Unfolding1Heap, Nodevalid$(Unfolding1Heap[this, Nodenext$]));
          assume Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null then Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@62.12--62.142) [78828]"}
              perm <= Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])];
          }
          Unfolding1Mask := Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[this, Nodenext$]):=Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])] - perm];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]):=Unfolding1Mask[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodevalid$(Unfolding1Heap[this, Nodenext$]), Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[this, Nodenext$])], Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), Unfolding1Heap[null, Nodevalid$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@62.12--62.142) [78829]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@62.12--62.142) [78830]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@62.12--62.142) [78831]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
                { newPMask[o_58, f_30] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_58, f_30] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_58, f_30] ==> newPMask[o_58, f_30]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                { newPMask[o_10, f_67] }
                Heap[null, Nodevalid$#sm(this)][o_10, f_67] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_10, f_67] ==> newPMask[o_10, f_67]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
                { newPMask[o_18, f_18] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_18, f_18] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_18, f_18] ==> newPMask[o_18, f_18]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
                { newPMask[o_66, f_28] }
                Heap[null, Nodevalid$#sm(this)][o_66, f_28] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_66, f_28] ==> newPMask[o_66, f_28]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
                { newPMask[o_11, f_34] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_11, f_34] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_11, f_34] ==> newPMask[o_11, f_34]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@62.12--62.142) [78832]"}
          this != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
              { newPMask[o_19, f_57] }
              Heap[null, Nodevalid$#sm(this)][o_19, f_57] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_19, f_57] ==> newPMask[o_19, f_57]
            );
            Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
              { newPMask[o_21, f_58] }
              Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_21, f_58] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_21, f_58] ==> newPMask[o_21, f_58]
            );
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingUnfoldTwo$
// ==================================================

procedure NodetestNestingUnfoldTwo$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodep$(this):=Mask[null, Nodep$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(Nodep$(this), write) -- 0154-1.vpr@70.3--70.34
    assume Nodep$#trigger(Heap, Nodep$(this));
    assume Heap[null, Nodep$(this)] == CombineFrames(FrameFragment(Heap[this, Nodenext$]), CombineFrames(FrameFragment(Heap[this, Nodevalue$]), FrameFragment((if Heap[this, Nodenext$] != null then Heap[null, Nodeq$(Heap[this, Nodenext$])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Nodep$(this) might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@70.3--70.34) [78835]"}
        perm <= Mask[null, Nodep$(this)];
    }
    Mask := Mask[null, Nodep$(this):=Mask[null, Nodep$(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Nodep$(this))) {
        havoc newVersion;
        Heap := Heap[null, Nodep$(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      Mask := Mask[null, Nodeq$(Heap[this, Nodenext$]):=Mask[null, Nodeq$(Heap[this, Nodenext$])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Nodep$(this), Heap[null, Nodep$(this)], Nodeq$(Heap[this, Nodenext$]), Heap[null, Nodeq$(Heap[this, Nodenext$])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@72.3--72.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@72.10--72.32) [78837]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@72.10--72.32) [78838]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.Nodenext$ != null) -- 0154-1.vpr@73.3--79.4
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@73.7--73.29) [78839]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: unfold acc(Nodeq$(this.Nodenext$), write) -- 0154-1.vpr@74.5--74.46
        
        // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
          assert {:msg "  Unfolding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@74.5--74.46) [78840]"}
            HasDirectPerm(Mask, this, Nodenext$);
        assume Nodeq$#trigger(Heap, Nodeq$(Heap[this, Nodenext$]));
        assume Heap[null, Nodeq$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@74.5--74.46) [78843]"}
            perm <= Mask[null, Nodeq$(Heap[this, Nodenext$])];
        }
        Mask := Mask[null, Nodeq$(Heap[this, Nodenext$]):=Mask[null, Nodeq$(Heap[this, Nodenext$])] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, Nodeq$(Heap[this, Nodenext$]))) {
            havoc newVersion;
            Heap := Heap[null, Nodeq$(Heap[this, Nodenext$]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, Nodenext$] != null;
        Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, Nodenext$] != null;
        Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
          perm := FullPerm;
          Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Nodeq$(Heap[this, Nodenext$]), Heap[null, Nodeq$(Heap[this, Nodenext$])], Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]), Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@77.5--77.54
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@77.12--77.54) [78845]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@77.12--77.54) [78846]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@77.12--77.54) [78847]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@77.12--77.54) [78848]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@78.5--78.44
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@78.12--78.44) [78849]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@78.12--78.44) [78850]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@78.12--78.44) [78851]"}
          this != Heap[Heap[this, Nodenext$], Nodenext$];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingFoldTwo$
// ==================================================

procedure NodetestNestingFoldTwo$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodenext$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [78852]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodevalue$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [78853]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [78854]"}
        HasDirectPerm(Mask, this, Nodenext$);
    assume Heap[this, Nodenext$] != null;
    
    // -- Check definedness of this.Nodenext$.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [78855]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@84.12--84.276) [78856]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    assume Heap[Heap[this, Nodenext$], Nodenext$] != null;
    
    // -- Check definedness of acc(Nodep$(this.Nodenext$.Nodenext$), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [78857]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@84.12--84.276) [78858]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    perm := FullPerm;
    Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(Nodeq$(this.Nodenext$), write) -- 0154-1.vpr@86.3--86.42
    
    // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
      assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@86.3--86.42) [78859]"}
        HasDirectPerm(Mask, this, Nodenext$);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@86.3--86.42) [78861]"}
      Mask[Heap[this, Nodenext$], Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodenext$];
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] - wildcard];
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodevalue$ (0154-1.vpr@86.3--86.42) [78862]"}
      Mask[Heap[this, Nodenext$], Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodevalue$];
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] - wildcard];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access Nodep$(this.Nodenext$.Nodenext$) (0154-1.vpr@86.3--86.42) [78864]"}
          perm <= Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])];
      }
      Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Nodeq$(Heap[this, Nodenext$]), Heap[null, Nodeq$(Heap[this, Nodenext$])], Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]), Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Nodeq$(Heap[this, Nodenext$]):=Mask[null, Nodeq$(Heap[this, Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Nodeq$#trigger(Heap, Nodeq$(Heap[this, Nodenext$]));
    assume Heap[null, Nodeq$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, Nodeq$(Heap[this, Nodenext$]))) {
      Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Nodeq$(Heap[this, Nodenext$]):=freshVersion];
    }
    Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
    Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      havoc newPMask;
      assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
        { newPMask[o_43, f_33] }
        Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_43, f_33] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_43, f_33] ==> newPMask[o_43, f_33]
      );
      Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@88.3--88.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@88.10--88.32) [78866]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@88.10--88.32) [78867]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@91.3--91.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@91.10--91.52) [78868]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@91.10--91.52) [78869]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@91.10--91.52) [78870]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@91.10--91.52) [78871]"}
      Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@94.3--94.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@94.10--94.42) [78872]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@94.10--94.42) [78873]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@94.10--94.42) [78874]"}
      this != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingFoldThree$
// ==================================================

procedure NodetestNestingFoldThree$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodenext$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [78875]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodevalue$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [78876]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [78877]"}
        HasDirectPerm(Mask, this, Nodenext$);
    assume Heap[this, Nodenext$] != null;
    
    // -- Check definedness of this.Nodenext$.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [78878]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@99.12--99.276) [78879]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    assume Heap[Heap[this, Nodenext$], Nodenext$] != null;
    
    // -- Check definedness of acc(Nodep$(this.Nodenext$.Nodenext$), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [78880]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@99.12--99.276) [78881]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    perm := FullPerm;
    Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(Nodeq$(this.Nodenext$), write) -- 0154-1.vpr@101.3--101.42
    
    // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
      assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@101.3--101.42) [78882]"}
        HasDirectPerm(Mask, this, Nodenext$);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@101.3--101.42) [78884]"}
      Mask[Heap[this, Nodenext$], Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodenext$];
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] - wildcard];
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodevalue$ (0154-1.vpr@101.3--101.42) [78885]"}
      Mask[Heap[this, Nodenext$], Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodevalue$];
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] - wildcard];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access Nodep$(this.Nodenext$.Nodenext$) (0154-1.vpr@101.3--101.42) [78887]"}
          perm <= Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])];
      }
      Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Nodeq$(Heap[this, Nodenext$]), Heap[null, Nodeq$(Heap[this, Nodenext$])], Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]), Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Nodeq$(Heap[this, Nodenext$]):=Mask[null, Nodeq$(Heap[this, Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Nodeq$#trigger(Heap, Nodeq$(Heap[this, Nodenext$]));
    assume Heap[null, Nodeq$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, Nodeq$(Heap[this, Nodenext$]))) {
      Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Nodeq$(Heap[this, Nodenext$]):=freshVersion];
    }
    Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
    Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      havoc newPMask;
      assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
        { newPMask[o_50, f_75] }
        Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_50, f_75] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_50, f_75] ==> newPMask[o_50, f_75]
      );
      Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Nodep$(this), write) -- 0154-1.vpr@102.3--102.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Nodep$(this) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@102.3--102.32) [78890]"}
      Mask[this, Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodenext$];
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] - wildcard];
    assert {:msg "  Folding Nodep$(this) might fail. There might be insufficient permission to access this.Nodevalue$ (0154-1.vpr@102.3--102.32) [78891]"}
      Mask[this, Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodevalue$];
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] - wildcard];
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodep$(this) might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@102.3--102.32) [78893]"}
          perm <= Mask[null, Nodeq$(Heap[this, Nodenext$])];
      }
      Mask := Mask[null, Nodeq$(Heap[this, Nodenext$]):=Mask[null, Nodeq$(Heap[this, Nodenext$])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Nodep$(this), Heap[null, Nodep$(this)], Nodeq$(Heap[this, Nodenext$]), Heap[null, Nodeq$(Heap[this, Nodenext$])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Nodep$(this):=Mask[null, Nodep$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Nodep$#trigger(Heap, Nodep$(this));
    assume Heap[null, Nodep$(this)] == CombineFrames(FrameFragment(Heap[this, Nodenext$]), CombineFrames(FrameFragment(Heap[this, Nodevalue$]), FrameFragment((if Heap[this, Nodenext$] != null then Heap[null, Nodeq$(Heap[this, Nodenext$])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, Nodep$(this))) {
      Heap := Heap[null, Nodep$#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Nodep$(this):=freshVersion];
    }
    Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
    Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
    if (Heap[this, Nodenext$] != null) {
      havoc newPMask;
      assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
        { newPMask[o_22, f_59] }
        Heap[null, Nodep$#sm(this)][o_22, f_59] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_22, f_59] ==> newPMask[o_22, f_59]
      );
      Heap := Heap[null, Nodep$#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@104.3--104.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@104.10--104.32) [78895]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@104.10--104.32) [78896]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@107.3--107.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@107.10--107.52) [78897]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@107.10--107.52) [78898]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@107.10--107.52) [78899]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@107.10--107.52) [78900]"}
      Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@108.3--108.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@108.10--108.42) [78901]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@108.10--108.42) [78902]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@108.10--108.42) [78903]"}
      this != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingUnfoldingTwo$
// ==================================================

procedure NodetestNestingUnfoldingTwo$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodep$(this):=Mask[null, Nodep$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert this != (unfolding acc(Nodep$(this), write) in this.Nodenext$) -- 0154-1.vpr@116.3--116.72
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != (unfolding acc(Nodep$(this), write) in this.Nodenext$)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
      assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@116.10--116.72) [78904]"}
          perm <= UnfoldingMask[null, Nodep$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodep$(this):=UnfoldingMask[null, Nodep$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodep$(this), UnfoldingHeap[null, Nodep$(this)], Nodeq$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@116.10--116.72) [78905]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
            { newPMask[o_67, f_69] }
            Heap[null, Nodep$#sm(this)][o_67, f_69] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_67, f_69] ==> newPMask[o_67, f_69]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
            { newPMask[o_68, f_76] }
            Heap[null, Nodep$#sm(this)][o_68, f_76] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_68, f_76] ==> newPMask[o_68, f_76]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodep$(this), write) in this.Nodenext$) might not hold. (0154-1.vpr@116.10--116.72) [78906]"}
      this != Heap[this, Nodenext$];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
      Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
      if (Heap[this, Nodenext$] != null) {
        havoc newPMask;
        assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
          { newPMask[o_69, f_77] }
          Heap[null, Nodep$#sm(this)][o_69, f_77] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_69, f_77] ==> newPMask[o_69, f_77]
        );
        Heap := Heap[null, Nodep$#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((unfolding acc(Nodep$(this), write) in this.Nodenext$) != null) -- 0154-1.vpr@117.3--122.4
    
    // -- Check definedness of (unfolding acc(Nodep$(this), write) in this.Nodenext$) != null
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
      assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@117.7--117.69) [78907]"}
          perm <= UnfoldingMask[null, Nodep$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodep$(this):=UnfoldingMask[null, Nodep$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodep$(this), UnfoldingHeap[null, Nodep$(this)], Nodeq$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@117.7--117.69) [78908]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
            { newPMask[o_70, f_78] }
            Heap[null, Nodep$#sm(this)][o_70, f_78] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_70, f_78] ==> newPMask[o_70, f_78]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
            { newPMask[o_71, f_35] }
            Heap[null, Nodep$#sm(this)][o_71, f_35] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_71, f_35] ==> newPMask[o_71, f_35]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: assert (unfolding acc(Nodep$(this), write) in this.Nodenext$) !=
  //   (unfolding acc(Nodep$(this), write) in
  //     (unfolding acc(Nodeq$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@120.5--120.184
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (unfolding acc(Nodep$(this), write) in this.Nodenext$) != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
          assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@120.12--120.184) [78909]"}
              perm <= UnfoldingMask[null, Nodep$(this)];
          }
          UnfoldingMask := UnfoldingMask[null, Nodep$(this):=UnfoldingMask[null, Nodep$(this)] - perm];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, Nodenext$] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodep$(this), UnfoldingHeap[null, Nodep$(this)], Nodeq$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@120.12--120.184) [78910]"}
            HasDirectPerm(UnfoldingMask, this, Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
                { newPMask[o_72, f_79] }
                Heap[null, Nodep$#sm(this)][o_72, f_79] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_72, f_79] ==> newPMask[o_72, f_79]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
          assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@120.12--120.184) [78911]"}
              perm <= UnfoldingMask[null, Nodep$(this)];
          }
          UnfoldingMask := UnfoldingMask[null, Nodep$(this):=UnfoldingMask[null, Nodep$(this)] - perm];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, Nodenext$] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodep$(this), UnfoldingHeap[null, Nodep$(this)], Nodeq$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume Nodeq$#trigger(Unfolding1Heap, Nodeq$(Unfolding1Heap[this, Nodenext$]));
          assume Unfolding1Heap[null, Nodeq$(Unfolding1Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null then Unfolding1Heap[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@120.12--120.184) [78912]"}
              perm <= Unfolding1Mask[null, Nodeq$(Unfolding1Heap[this, Nodenext$])];
          }
          Unfolding1Mask := Unfolding1Mask[null, Nodeq$(Unfolding1Heap[this, Nodenext$]):=Unfolding1Mask[null, Nodeq$(Unfolding1Heap[this, Nodenext$])] - perm];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]):=Unfolding1Mask[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodeq$(Unfolding1Heap[this, Nodenext$]), Unfolding1Heap[null, Nodeq$(Unfolding1Heap[this, Nodenext$])], Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), Unfolding1Heap[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@120.12--120.184) [78913]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@120.12--120.184) [78914]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@120.12--120.184) [78915]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
                { newPMask[o_30, f_80] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_30, f_80] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_30, f_80] ==> newPMask[o_30, f_80]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
                { newPMask[o_79, f_36] }
                Heap[null, Nodep$#sm(this)][o_79, f_36] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_79, f_36] ==> newPMask[o_79, f_36]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
                { newPMask[o_80, f_88] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_80, f_88] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_80, f_88] ==> newPMask[o_80, f_88]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
                { newPMask[o_31, f_89] }
                Heap[null, Nodep$#sm(this)][o_31, f_89] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_31, f_89] ==> newPMask[o_31, f_89]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
                { newPMask[o_81, f_90] }
                Heap[null, Nodep$#sm(this)][o_81, f_90] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_81, f_90] ==> newPMask[o_81, f_90]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
                { newPMask[o_82, f_91] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_82, f_91] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_82, f_91] ==> newPMask[o_82, f_91]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(Nodep$(this), write) in this.Nodenext$) != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@120.12--120.184) [78916]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
              { newPMask[o_62, f_47] }
              Heap[null, Nodep$#sm(this)][o_62, f_47] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_62, f_47] ==> newPMask[o_62, f_47]
            );
            Heap := Heap[null, Nodep$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
              { newPMask[o_83, f_72] }
              Heap[null, Nodep$#sm(this)][o_83, f_72] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_83, f_72] ==> newPMask[o_83, f_72]
            );
            Heap := Heap[null, Nodep$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
              { newPMask[o_84, f_92] }
              Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_84, f_92] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_84, f_92] ==> newPMask[o_84, f_92]
            );
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(Nodep$(this), write) in
  //     (unfolding acc(Nodeq$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@121.5--121.134
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
          assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@121.12--121.134) [78917]"}
              perm <= UnfoldingMask[null, Nodep$(this)];
          }
          UnfoldingMask := UnfoldingMask[null, Nodep$(this):=UnfoldingMask[null, Nodep$(this)] - perm];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, Nodenext$] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodep$(this), UnfoldingHeap[null, Nodep$(this)], Nodeq$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume Nodeq$#trigger(Unfolding1Heap, Nodeq$(Unfolding1Heap[this, Nodenext$]));
          assume Unfolding1Heap[null, Nodeq$(Unfolding1Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null then Unfolding1Heap[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@121.12--121.134) [78918]"}
              perm <= Unfolding1Mask[null, Nodeq$(Unfolding1Heap[this, Nodenext$])];
          }
          Unfolding1Mask := Unfolding1Mask[null, Nodeq$(Unfolding1Heap[this, Nodenext$]):=Unfolding1Mask[null, Nodeq$(Unfolding1Heap[this, Nodenext$])] - perm];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodenext$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, Nodenext$] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$:=Unfolding1Mask[Unfolding1Heap[this, Nodenext$], Nodevalue$] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]):=Unfolding1Mask[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Nodeq$(Unfolding1Heap[this, Nodenext$]), Unfolding1Heap[null, Nodeq$(Unfolding1Heap[this, Nodenext$])], Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$]), Unfolding1Heap[null, Nodep$(Unfolding1Heap[Unfolding1Heap[this, Nodenext$], Nodenext$])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@121.12--121.134) [78919]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@121.12--121.134) [78920]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@121.12--121.134) [78921]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
                { newPMask[o_63, f_48] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_63, f_48] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_63, f_48] ==> newPMask[o_63, f_48]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
                { newPMask[o_28, f_93] }
                Heap[null, Nodep$#sm(this)][o_28, f_93] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_28, f_93] ==> newPMask[o_28, f_93]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
                { newPMask[o_85, f_41] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_85, f_41] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_85, f_41] ==> newPMask[o_85, f_41]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
                { newPMask[o_86, f_94] }
                Heap[null, Nodep$#sm(this)][o_86, f_94] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_86, f_94] ==> newPMask[o_86, f_94]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
                { newPMask[o_29, f_95] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_29, f_95] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_29, f_95] ==> newPMask[o_29, f_95]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@121.12--121.134) [78922]"}
          this != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
              { newPMask[o_87, f_96] }
              Heap[null, Nodep$#sm(this)][o_87, f_96] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_87, f_96] ==> newPMask[o_87, f_96]
            );
            Heap := Heap[null, Nodep$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
              { newPMask[o_88, f_97] }
              Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_88, f_97] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_88, f_97] ==> newPMask[o_88, f_97]
            );
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingUnfoldingPrecondition$
// ==================================================

procedure NodetestNestingUnfoldingPrecondition$(this: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this), write) in this.Nodenext$ == x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@127.12--127.107) [78923]"}
          perm <= UnfoldingMask[null, Nodevalid$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@127.12--127.107) [78924]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
            { newPMask[o_89, f_98] }
            Heap[null, Nodevalid$#sm(this)][o_89, f_98] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_89, f_98] ==> newPMask[o_89, f_98]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, Nodenext$] == x;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert this != x -- 0154-1.vpr@130.3--130.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion this != x might not hold. (0154-1.vpr@130.10--130.19) [78925]"}
      this != x;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method NodetestNestingUnfoldingPostcondition$
// ==================================================

procedure NodetestNestingUnfoldingPostcondition$(this: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
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
    PostMask := PostMask[null, Nodevalid$(this):=PostMask[null, Nodevalid$(this)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this), write) in true)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.11--137.123) [78926]"}
          perm <= UnfoldingMask[null, Nodevalid$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, Nodevalid$#sm(this):=PostHeap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        PostHeap := PostHeap[null, Nodevalid$#sm(this):=PostHeap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (PostHeap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
            { newPMask[o_90, f_99] }
            PostHeap[null, Nodevalid$#sm(this)][o_90, f_99] || PostHeap[null, Nodevalid$#sm(PostHeap[this, Nodenext$])][o_90, f_99] ==> newPMask[o_90, f_99]
          );
          PostHeap := PostHeap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this != NodegetNext$(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function NodegetNext$ might not hold. Assertion this != null might not hold. (0154-1.vpr@137.104--137.122) [78927]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function NodegetNext$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.104--137.122) [78928]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Nodevalid$(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume this != NodegetNext$(PostHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of NodetestNestingUnfoldingPostcondition$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.11--137.123) [78929]"}
        perm <= Mask[null, Nodevalid$(this)];
    }
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of NodetestNestingUnfoldingPostcondition$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.11--137.123) [78930]"}
          perm <= UnfoldingMask[null, Nodevalid$(this)];
      }
      UnfoldingMask := UnfoldingMask[null, Nodevalid$(this):=UnfoldingMask[null, Nodevalid$(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodevalue$:=UnfoldingMask[this, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Nodenext$] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this), UnfoldingHeap[null, Nodevalid$(this)], Nodevalid$(UnfoldingHeap[this, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of NodetestNestingUnfoldingPostcondition$ might not hold. Assertion this != NodegetNext$(this) might not hold. (0154-1.vpr@137.11--137.123) [78931]"}
      this != NodegetNext$(Heap, this);
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
      if (Heap[this, Nodenext$] != null) {
        havoc newPMask;
        assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
          { newPMask[o_93, f_105] }
          Heap[null, Nodevalid$#sm(this)][o_93, f_105] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_93, f_105] ==> newPMask[o_93, f_105]
        );
        Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}