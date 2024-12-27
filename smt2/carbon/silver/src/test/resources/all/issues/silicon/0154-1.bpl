// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:40:30
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
axiom (forall o_104: Ref, f_200: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_104, f_200] }
  Heap[o_104, $allocated] ==> Heap[Heap[o_104, f_200], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_107: Ref, f_201: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_107, f_201] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_107, f_201) ==> Heap[o_107, f_201] == ExhaleHeap[o_107, f_201]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_51), ExhaleHeap[null, PredicateMaskField(pm_f_51)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsPredicateField(pm_f_51) ==> Heap[null, PredicateMaskField(pm_f_51)] == ExhaleHeap[null, PredicateMaskField(pm_f_51)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_51) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsPredicateField(pm_f_51) ==> (forall <A, B> o2_51: Ref, f_201: (Field A B) ::
    { ExhaleHeap[o2_51, f_201] }
    Heap[null, PredicateMaskField(pm_f_51)][o2_51, f_201] ==> Heap[o2_51, f_201] == ExhaleHeap[o2_51, f_201]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_51), ExhaleHeap[null, WandMaskField(pm_f_51)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsWandField(pm_f_51) ==> Heap[null, WandMaskField(pm_f_51)] == ExhaleHeap[null, WandMaskField(pm_f_51)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_51) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsWandField(pm_f_51) ==> (forall <A, B> o2_51: Ref, f_201: (Field A B) ::
    { ExhaleHeap[o2_51, f_201] }
    Heap[null, WandMaskField(pm_f_51)][o2_51, f_201] ==> Heap[o2_51, f_201] == ExhaleHeap[o2_51, f_201]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_107: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_107, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_107, $allocated] ==> ExhaleHeap[o_107, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_104: Ref, f_106: (Field A B), v: B ::
  { Heap[o_104, f_106:=v] }
  succHeap(Heap, Heap[o_104, f_106:=v])
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@9.1--14.2) [204035]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@9.1--14.2) [204036]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Nodevalid$#sm(this)][o_15, f_20] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_15, f_20] ==> newPMask[o_15, f_20]
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@16.1--18.2) [204037]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@16.1--18.2) [204038]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@20.1--22.2) [204039]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@20.1--22.2) [204040]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@24.1--26.2) [204041]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodep$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@24.1--26.2) [204042]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(Nodevalid$(this), write) -- 0154-1.vpr@32.3--32.38
    assume Nodevalid$#trigger(Heap, Nodevalid$(this));
    assume Heap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(Heap[this, Nodenext$]), CombineFrames(FrameFragment(Heap[this, Nodevalue$]), FrameFragment((if Heap[this, Nodenext$] != null then Heap[null, Nodevalid$(Heap[this, Nodenext$])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Nodevalid$(this) might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@32.3--32.38) [204045]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@34.10--34.32) [204047]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@34.10--34.32) [204048]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.Nodenext$ != null) -- 0154-1.vpr@35.3--39.4
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@35.7--35.29) [204049]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: unfold acc(Nodevalid$(this.Nodenext$), write) -- 0154-1.vpr@36.5--36.50
        
        // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
          assert {:msg "  Unfolding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@36.5--36.50) [204050]"}
            HasDirectPerm(Mask, this, Nodenext$);
        assume Nodevalid$#trigger(Heap, Nodevalid$(Heap[this, Nodenext$]));
        assume Heap[null, Nodevalid$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@36.5--36.50) [204053]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@37.12--37.54) [204055]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@37.12--37.54) [204056]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@37.12--37.54) [204057]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@37.12--37.54) [204058]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@38.5--38.44
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@38.12--38.44) [204059]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@38.12--38.44) [204060]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@38.12--38.44) [204061]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [204062]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodevalue$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [204063]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [204064]"}
        HasDirectPerm(Mask, this, Nodenext$);
    assume Heap[this, Nodenext$] != null;
    
    // -- Check definedness of this.Nodenext$.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [204065]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@44.12--44.280) [204066]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    assume Heap[Heap[this, Nodenext$], Nodenext$] != null;
    
    // -- Check definedness of acc(Nodevalid$(this.Nodenext$.Nodenext$), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@44.12--44.280) [204067]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@44.12--44.280) [204068]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    perm := FullPerm;
    Mask := Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodevalid$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(Nodevalid$(this.Nodenext$), write) -- 0154-1.vpr@46.3--46.46
    
    // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
      assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@46.3--46.46) [204069]"}
        HasDirectPerm(Mask, this, Nodenext$);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@46.3--46.46) [204071]"}
      Mask[Heap[this, Nodenext$], Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodenext$];
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] - wildcard];
    assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodevalue$ (0154-1.vpr@46.3--46.46) [204072]"}
      Mask[Heap[this, Nodenext$], Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodevalue$];
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] - wildcard];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodevalid$(this.Nodenext$) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$.Nodenext$) (0154-1.vpr@46.3--46.46) [204074]"}
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
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_16, f_21] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@48.3--48.52
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@48.10--48.52) [204076]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@48.10--48.52) [204077]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@48.10--48.52) [204078]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@48.10--48.52) [204079]"}
      Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Nodevalid$(this), write) -- 0154-1.vpr@49.3--49.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@49.3--49.36) [204081]"}
      Mask[this, Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodenext$];
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] - wildcard];
    assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access this.Nodevalue$ (0154-1.vpr@49.3--49.36) [204082]"}
      Mask[this, Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodevalue$];
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] - wildcard];
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@49.3--49.36) [204084]"}
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
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, Nodevalid$#sm(this)][o_52, f_55] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@50.3--50.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@50.10--50.32) [204086]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@50.10--50.32) [204087]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@51.3--51.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@51.10--51.42) [204088]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@51.10--51.42) [204089]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@51.10--51.42) [204090]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert this != (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) -- 0154-1.vpr@59.3--59.76
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != (unfolding acc(Nodevalid$(this), write) in this.Nodenext$)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@59.10--59.76) [204091]"}
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
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@59.10--59.76) [204092]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, Nodevalid$#sm(this)][o_53, f_56] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Heap[null, Nodevalid$#sm(this)][o_26, f_29] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) might not hold. (0154-1.vpr@59.10--59.76) [204093]"}
      this != Heap[this, Nodenext$];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
      if (Heap[this, Nodenext$] != null) {
        havoc newPMask;
        assume (forall <A, B> o: Ref, f_85: (Field A B) ::
          { newPMask[o, f_85] }
          Heap[null, Nodevalid$#sm(this)][o, f_85] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o, f_85] ==> newPMask[o, f_85]
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@60.7--60.73) [204094]"}
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@60.7--60.73) [204095]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
            { newPMask[o_11, f_3] }
            Heap[null, Nodevalid$#sm(this)][o_11, f_3] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_11, f_3] ==> newPMask[o_11, f_3]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
            { newPMask[o_35, f_17] }
            Heap[null, Nodevalid$#sm(this)][o_35, f_17] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_35, f_17] ==> newPMask[o_35, f_17]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: assert (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) !=
  //   (unfolding acc(Nodevalid$(this), write) in
  //     (unfolding acc(Nodevalid$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@61.5--61.196
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
          assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@61.12--61.196) [204096]"}
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@61.12--61.196) [204097]"}
            HasDirectPerm(UnfoldingMask, this, Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
                { newPMask[o_1, f_11] }
                Heap[null, Nodevalid$#sm(this)][o_1, f_11] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_1, f_11] ==> newPMask[o_1, f_11]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
          assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@61.12--61.196) [204098]"}
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
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@61.12--61.196) [204099]"}
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@61.12--61.196) [204100]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@61.12--61.196) [204101]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@61.12--61.196) [204102]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
                { newPMask[o_12, f_9] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_12, f_9] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_12, f_9] ==> newPMask[o_12, f_9]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
                { newPMask[o_22, f_24] }
                Heap[null, Nodevalid$#sm(this)][o_22, f_24] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_22, f_24] ==> newPMask[o_22, f_24]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
                { newPMask[o_3, f_12] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_3, f_12] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_3, f_12] ==> newPMask[o_3, f_12]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
                { newPMask[o_46, f_35] }
                Heap[null, Nodevalid$#sm(this)][o_46, f_35] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_46, f_35] ==> newPMask[o_46, f_35]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
                { newPMask[o_41, f_25] }
                Heap[null, Nodevalid$#sm(this)][o_41, f_25] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_41, f_25] ==> newPMask[o_41, f_25]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
                { newPMask[o_34, f_44] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_34, f_44] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_34, f_44] ==> newPMask[o_34, f_44]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(Nodevalid$(this), write) in this.Nodenext$) != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@61.12--61.196) [204103]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
              { newPMask[o_55, f_36] }
              Heap[null, Nodevalid$#sm(this)][o_55, f_36] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_55, f_36] ==> newPMask[o_55, f_36]
            );
            Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
              { newPMask[o_42, f_26] }
              Heap[null, Nodevalid$#sm(this)][o_42, f_26] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_42, f_26] ==> newPMask[o_42, f_26]
            );
            Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
              { newPMask[o_13, f_45] }
              Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_13, f_45] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_13, f_45] ==> newPMask[o_13, f_45]
            );
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(Nodevalid$(this), write) in
  //     (unfolding acc(Nodevalid$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@62.5--62.142
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
          assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@62.12--62.142) [204104]"}
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
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0154-1.vpr@62.12--62.142) [204105]"}
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@62.12--62.142) [204106]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@62.12--62.142) [204107]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@62.12--62.142) [204108]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
                { newPMask[o_43, f_13] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_43, f_13] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_43, f_13] ==> newPMask[o_43, f_13]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
                { newPMask[o_47, f_41] }
                Heap[null, Nodevalid$#sm(this)][o_47, f_41] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_47, f_41] ==> newPMask[o_47, f_41]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
                { newPMask[o_14, f_51] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_14, f_51] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_14, f_51] ==> newPMask[o_14, f_51]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
                { newPMask[o_44, f_14] }
                Heap[null, Nodevalid$#sm(this)][o_44, f_14] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_44, f_14] ==> newPMask[o_44, f_14]
              );
              Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
                { newPMask[o_28, f_42] }
                Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_28, f_42] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_28, f_42] ==> newPMask[o_28, f_42]
              );
              Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodevalid$(this), write) in (unfolding acc(Nodevalid$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@62.12--62.142) [204109]"}
          this != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
              { newPMask[o_76, f_34] }
              Heap[null, Nodevalid$#sm(this)][o_76, f_34] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_76, f_34] ==> newPMask[o_76, f_34]
            );
            Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodevalid$#sm(Heap[this, Nodenext$]):=Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
              { newPMask[o_51, f_46] }
              Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_51, f_46] || Heap[null, Nodevalid$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_51, f_46] ==> newPMask[o_51, f_46]
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(Nodep$(this), write) -- 0154-1.vpr@70.3--70.34
    assume Nodep$#trigger(Heap, Nodep$(this));
    assume Heap[null, Nodep$(this)] == CombineFrames(FrameFragment(Heap[this, Nodenext$]), CombineFrames(FrameFragment(Heap[this, Nodevalue$]), FrameFragment((if Heap[this, Nodenext$] != null then Heap[null, Nodeq$(Heap[this, Nodenext$])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Nodep$(this) might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@70.3--70.34) [204112]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@72.10--72.32) [204114]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@72.10--72.32) [204115]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.Nodenext$ != null) -- 0154-1.vpr@73.3--79.4
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@73.7--73.29) [204116]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: unfold acc(Nodeq$(this.Nodenext$), write) -- 0154-1.vpr@74.5--74.46
        
        // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
          assert {:msg "  Unfolding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@74.5--74.46) [204117]"}
            HasDirectPerm(Mask, this, Nodenext$);
        assume Nodeq$#trigger(Heap, Nodeq$(Heap[this, Nodenext$]));
        assume Heap[null, Nodeq$(Heap[this, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[this, Nodenext$], Nodevalue$]), FrameFragment((if Heap[Heap[this, Nodenext$], Nodenext$] != null then Heap[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] else EmptyFrame))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@74.5--74.46) [204120]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@77.12--77.54) [204122]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@77.12--77.54) [204123]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@77.12--77.54) [204124]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@77.12--77.54) [204125]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@78.5--78.44
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != this.Nodenext$.Nodenext$
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@78.12--78.44) [204126]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@78.12--78.44) [204127]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
        assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@78.12--78.44) [204128]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [204129]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodevalue$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [204130]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [204131]"}
        HasDirectPerm(Mask, this, Nodenext$);
    assume Heap[this, Nodenext$] != null;
    
    // -- Check definedness of this.Nodenext$.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [204132]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@84.12--84.276) [204133]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    assume Heap[Heap[this, Nodenext$], Nodenext$] != null;
    
    // -- Check definedness of acc(Nodep$(this.Nodenext$.Nodenext$), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@84.12--84.276) [204134]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@84.12--84.276) [204135]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    perm := FullPerm;
    Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(Nodeq$(this.Nodenext$), write) -- 0154-1.vpr@86.3--86.42
    
    // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
      assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@86.3--86.42) [204136]"}
        HasDirectPerm(Mask, this, Nodenext$);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@86.3--86.42) [204138]"}
      Mask[Heap[this, Nodenext$], Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodenext$];
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] - wildcard];
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodevalue$ (0154-1.vpr@86.3--86.42) [204139]"}
      Mask[Heap[this, Nodenext$], Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodevalue$];
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] - wildcard];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access Nodep$(this.Nodenext$.Nodenext$) (0154-1.vpr@86.3--86.42) [204141]"}
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
      assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
        { newPMask[o_29, f_81] }
        Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_29, f_81] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_29, f_81] ==> newPMask[o_29, f_81]
      );
      Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@88.3--88.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@88.10--88.32) [204143]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@88.10--88.32) [204144]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@91.3--91.52
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@91.10--91.52) [204145]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@91.10--91.52) [204146]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@91.10--91.52) [204147]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@91.10--91.52) [204148]"}
      Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@94.3--94.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@94.10--94.42) [204149]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@94.10--94.42) [204150]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@94.10--94.42) [204151]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [204152]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Nodenext$.Nodevalue$, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [204153]"}
        HasDirectPerm(Mask, this, Nodenext$);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, Nodenext$] != null;
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [204154]"}
        HasDirectPerm(Mask, this, Nodenext$);
    assume Heap[this, Nodenext$] != null;
    
    // -- Check definedness of this.Nodenext$.Nodenext$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [204155]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@99.12--99.276) [204156]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    assume Heap[Heap[this, Nodenext$], Nodenext$] != null;
    
    // -- Check definedness of acc(Nodep$(this.Nodenext$.Nodenext$), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@99.12--99.276) [204157]"}
        HasDirectPerm(Mask, this, Nodenext$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@99.12--99.276) [204158]"}
        HasDirectPerm(Mask, Heap[this, Nodenext$], Nodenext$);
    perm := FullPerm;
    Mask := Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$]):=Mask[null, Nodep$(Heap[Heap[this, Nodenext$], Nodenext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(Nodeq$(this.Nodenext$), write) -- 0154-1.vpr@101.3--101.42
    
    // -- Check definedness of acc(Nodeq$(this.Nodenext$), write)
      assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@101.3--101.42) [204159]"}
        HasDirectPerm(Mask, this, Nodenext$);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@101.3--101.42) [204161]"}
      Mask[Heap[this, Nodenext$], Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodenext$];
    Mask := Mask[Heap[this, Nodenext$], Nodenext$:=Mask[Heap[this, Nodenext$], Nodenext$] - wildcard];
    assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access this.Nodenext$.Nodevalue$ (0154-1.vpr@101.3--101.42) [204162]"}
      Mask[Heap[this, Nodenext$], Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, Nodenext$], Nodevalue$];
    Mask := Mask[Heap[this, Nodenext$], Nodevalue$:=Mask[Heap[this, Nodenext$], Nodevalue$] - wildcard];
    if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodeq$(this.Nodenext$) might fail. There might be insufficient permission to access Nodep$(this.Nodenext$.Nodenext$) (0154-1.vpr@101.3--101.42) [204164]"}
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
      assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
        { newPMask[o_77, f_52] }
        Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_77, f_52] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_77, f_52] ==> newPMask[o_77, f_52]
      );
      Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Nodep$(this), write) -- 0154-1.vpr@102.3--102.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Nodep$(this) might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@102.3--102.32) [204167]"}
      Mask[this, Nodenext$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodenext$];
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] - wildcard];
    assert {:msg "  Folding Nodep$(this) might fail. There might be insufficient permission to access this.Nodevalue$ (0154-1.vpr@102.3--102.32) [204168]"}
      Mask[this, Nodevalue$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Nodevalue$];
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] - wildcard];
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodep$(this) might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@102.3--102.32) [204170]"}
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
      assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
        { newPMask[o_78, f_49] }
        Heap[null, Nodep$#sm(this)][o_78, f_49] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_78, f_49] ==> newPMask[o_78, f_49]
      );
      Heap := Heap[null, Nodep$#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$ -- 0154-1.vpr@104.3--104.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@104.10--104.32) [204172]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$ might not hold. (0154-1.vpr@104.10--104.32) [204173]"}
      this != Heap[this, Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.Nodenext$ != this.Nodenext$.Nodenext$ -- 0154-1.vpr@107.3--107.52
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.Nodenext$ != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@107.10--107.52) [204174]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@107.10--107.52) [204175]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@107.10--107.52) [204176]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this.Nodenext$ != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@107.10--107.52) [204177]"}
      Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.Nodenext$.Nodenext$ -- 0154-1.vpr@108.3--108.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.Nodenext$.Nodenext$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@108.10--108.42) [204178]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Nodenext$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@108.10--108.42) [204179]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Nodenext$], Nodenext$);
    assert {:msg "  Assert might fail. Assertion this != this.Nodenext$.Nodenext$ might not hold. (0154-1.vpr@108.10--108.42) [204180]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert this != (unfolding acc(Nodep$(this), write) in this.Nodenext$) -- 0154-1.vpr@116.3--116.72
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != (unfolding acc(Nodep$(this), write) in this.Nodenext$)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
      assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@116.10--116.72) [204181]"}
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
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@116.10--116.72) [204182]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
            { newPMask[o_63, f_86] }
            Heap[null, Nodep$#sm(this)][o_63, f_86] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_63, f_86] ==> newPMask[o_63, f_86]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
            { newPMask[o_79, f_87] }
            Heap[null, Nodep$#sm(this)][o_79, f_87] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_79, f_87] ==> newPMask[o_79, f_87]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodep$(this), write) in this.Nodenext$) might not hold. (0154-1.vpr@116.10--116.72) [204183]"}
      this != Heap[this, Nodenext$];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
      Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
      if (Heap[this, Nodenext$] != null) {
        havoc newPMask;
        assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
          { newPMask[o_80, f_88] }
          Heap[null, Nodep$#sm(this)][o_80, f_88] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_80, f_88] ==> newPMask[o_80, f_88]
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@117.7--117.69) [204184]"}
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@117.7--117.69) [204185]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
            { newPMask[o_81, f_57] }
            Heap[null, Nodep$#sm(this)][o_81, f_57] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_81, f_57] ==> newPMask[o_81, f_57]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
            { newPMask[o_82, f_70] }
            Heap[null, Nodep$#sm(this)][o_82, f_70] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_82, f_70] ==> newPMask[o_82, f_70]
          );
          Heap := Heap[null, Nodep$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Translating statement: assert (unfolding acc(Nodep$(this), write) in this.Nodenext$) !=
  //   (unfolding acc(Nodep$(this), write) in
  //     (unfolding acc(Nodeq$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@120.5--120.184
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (unfolding acc(Nodep$(this), write) in this.Nodenext$) != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
          assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@120.12--120.184) [204186]"}
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@120.12--120.184) [204187]"}
            HasDirectPerm(UnfoldingMask, this, Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
                { newPMask[o_83, f_89] }
                Heap[null, Nodep$#sm(this)][o_83, f_89] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_83, f_89] ==> newPMask[o_83, f_89]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
          assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@120.12--120.184) [204188]"}
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
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@120.12--120.184) [204189]"}
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@120.12--120.184) [204190]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@120.12--120.184) [204191]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@120.12--120.184) [204192]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
                { newPMask[o_68, f_58] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_68, f_58] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_68, f_58] ==> newPMask[o_68, f_58]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_84: Ref, f_71: (Field A B) ::
                { newPMask[o_84, f_71] }
                Heap[null, Nodep$#sm(this)][o_84, f_71] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_84, f_71] ==> newPMask[o_84, f_71]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_85: Ref, f_60: (Field A B) ::
                { newPMask[o_85, f_60] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_85, f_60] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_85, f_60] ==> newPMask[o_85, f_60]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_69: Ref, f_90: (Field A B) ::
                { newPMask[o_69, f_90] }
                Heap[null, Nodep$#sm(this)][o_69, f_90] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_69, f_90] ==> newPMask[o_69, f_90]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_86: Ref, f_91: (Field A B) ::
                { newPMask[o_86, f_91] }
                Heap[null, Nodep$#sm(this)][o_86, f_91] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_86, f_91] ==> newPMask[o_86, f_91]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_87: Ref, f_61: (Field A B) ::
                { newPMask[o_87, f_61] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_87, f_61] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_87, f_61] ==> newPMask[o_87, f_61]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(Nodep$(this), write) in this.Nodenext$) != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@120.12--120.184) [204193]"}
          Heap[this, Nodenext$] != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_88: Ref, f_78: (Field A B) ::
              { newPMask[o_88, f_78] }
              Heap[null, Nodep$#sm(this)][o_88, f_78] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_88, f_78] ==> newPMask[o_88, f_78]
            );
            Heap := Heap[null, Nodep$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_89: Ref, f_92: (Field A B) ::
              { newPMask[o_89, f_92] }
              Heap[null, Nodep$#sm(this)][o_89, f_92] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_89, f_92] ==> newPMask[o_89, f_92]
            );
            Heap := Heap[null, Nodep$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_90: Ref, f_93: (Field A B) ::
              { newPMask[o_90, f_93] }
              Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_90, f_93] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_90, f_93] ==> newPMask[o_90, f_93]
            );
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(Nodep$(this), write) in
  //     (unfolding acc(Nodeq$(this.Nodenext$), write) in
  //       this.Nodenext$.Nodenext$)) -- 0154-1.vpr@121.5--121.134
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
          assume UnfoldingHeap[null, Nodep$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodeq$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodep$(this) (0154-1.vpr@121.12--121.134) [204194]"}
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
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Nodeq$(this.Nodenext$) (0154-1.vpr@121.12--121.134) [204195]"}
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@121.12--121.134) [204196]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@121.12--121.134) [204197]"}
            HasDirectPerm(Unfolding1Mask, this, Nodenext$);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Nodenext$.Nodenext$ (0154-1.vpr@121.12--121.134) [204198]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, Nodenext$], Nodenext$);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_91: Ref, f_79: (Field A B) ::
                { newPMask[o_91, f_79] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_91, f_79] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_91, f_79] ==> newPMask[o_91, f_79]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_64: Ref, f_94: (Field A B) ::
                { newPMask[o_64, f_94] }
                Heap[null, Nodep$#sm(this)][o_64, f_94] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_64, f_94] ==> newPMask[o_64, f_94]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_92: Ref, f_68: (Field A B) ::
                { newPMask[o_92, f_68] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_92, f_68] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_92, f_68] ==> newPMask[o_92, f_68]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
            Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
            if (Heap[this, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_93: Ref, f_95: (Field A B) ::
                { newPMask[o_93, f_95] }
                Heap[null, Nodep$#sm(this)][o_93, f_95] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_93, f_95] ==> newPMask[o_93, f_95]
              );
              Heap := Heap[null, Nodep$#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
            Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
            if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_65: Ref, f_96: (Field A B) ::
                { newPMask[o_65, f_96] }
                Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_65, f_96] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_65, f_96] ==> newPMask[o_65, f_96]
              );
              Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(Nodep$(this), write) in (unfolding acc(Nodeq$(this.Nodenext$), write) in this.Nodenext$.Nodenext$)) might not hold. (0154-1.vpr@121.12--121.134) [204199]"}
          this != Heap[Heap[this, Nodenext$], Nodenext$];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodenext$:=true]];
          Heap := Heap[null, Nodep$#sm(this):=Heap[null, Nodep$#sm(this)][this, Nodevalue$:=true]];
          if (Heap[this, Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_94: Ref, f_97: (Field A B) ::
              { newPMask[o_94, f_97] }
              Heap[null, Nodep$#sm(this)][o_94, f_97] || Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_94, f_97] ==> newPMask[o_94, f_97]
            );
            Heap := Heap[null, Nodep$#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodenext$:=true]];
          Heap := Heap[null, Nodeq$#sm(Heap[this, Nodenext$]):=Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][Heap[this, Nodenext$], Nodevalue$:=true]];
          if (Heap[Heap[this, Nodenext$], Nodenext$] != null) {
            havoc newPMask;
            assume (forall <A, B> o_95: Ref, f_98: (Field A B) ::
              { newPMask[o_95, f_98] }
              Heap[null, Nodeq$#sm(Heap[this, Nodenext$])][o_95, f_98] || Heap[null, Nodep$#sm(Heap[Heap[this, Nodenext$], Nodenext$])][o_95, f_98] ==> newPMask[o_95, f_98]
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@127.12--127.107) [204200]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154-1.vpr@127.12--127.107) [204201]"}
        HasDirectPerm(UnfoldingMask, this, Nodenext$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
        if (Heap[this, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_96: Ref, f_99: (Field A B) ::
            { newPMask[o_96, f_99] }
            Heap[null, Nodevalid$#sm(this)][o_96, f_99] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_96, f_99] ==> newPMask[o_96, f_99]
          );
          Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert this != x -- 0154-1.vpr@130.3--130.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion this != x might not hold. (0154-1.vpr@130.10--130.19) [204202]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
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
      oldMask := Mask;
      oldHeap := Heap;
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.11--137.123) [204203]"}
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
          assume (forall <A, B> o_97: Ref, f_100: (Field A B) ::
            { newPMask[o_97, f_100] }
            PostHeap[null, Nodevalid$#sm(this)][o_97, f_100] || PostHeap[null, Nodevalid$#sm(PostHeap[this, Nodenext$])][o_97, f_100] ==> newPMask[o_97, f_100]
          );
          PostHeap := PostHeap[null, Nodevalid$#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function NodegetNext$ might not hold. Assertion this != null might not hold. (0154-1.vpr@137.104--137.122) [204204]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function NodegetNext$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.104--137.122) [204205]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of NodetestNestingUnfoldingPostcondition$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.11--137.123) [204206]"}
        perm <= Mask[null, Nodevalid$(this)];
    }
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodevalue$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of NodetestNestingUnfoldingPostcondition$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154-1.vpr@137.11--137.123) [204207]"}
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
    assert {:msg "  Postcondition of NodetestNestingUnfoldingPostcondition$ might not hold. Assertion this != NodegetNext$(this) might not hold. (0154-1.vpr@137.11--137.123) [204208]"}
      this != NodegetNext$(Heap, this);
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
      Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodevalue$:=true]];
      if (Heap[this, Nodenext$] != null) {
        havoc newPMask;
        assume (forall <A, B> o_98: Ref, f_101: (Field A B) ::
          { newPMask[o_98, f_101] }
          Heap[null, Nodevalid$#sm(this)][o_98, f_101] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_98, f_101] ==> newPMask[o_98, f_101]
        );
        Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}