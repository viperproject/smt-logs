// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:52
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0154.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0154-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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
// - height 1: Nodet$
// - height 0: Nodet2$
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

const unique Nodeval$: Field NormalField int;
axiom !IsPredicateField(Nodeval$);
axiom !IsWandField(Nodeval$);
const unique Nodenext$: Field NormalField Ref;
axiom !IsPredicateField(Nodenext$);
axiom !IsWandField(Nodenext$);

// ==================================================
// Translation of function Nodet$
// ==================================================

// Uninterpreted function definitions
function  Nodet$(Heap: HeapType, this: Ref): int;
function  Nodet$'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Nodet$(Heap, this) }
  Nodet$(Heap, this) == Nodet$'(Heap, this) && dummyFunction(Nodet$#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Nodet$'(Heap, this) }
  dummyFunction(Nodet$#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodet$(Heap, this) } { state(Heap, Mask), Nodet$#triggerStateless(this), Nodevalid$#trigger(Heap, Nodevalid$(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this != null ==> Nodet$(Heap, this) == Nodet$'(Heap, this)
);

// Framing axioms
function  Nodet$#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodet$'(Heap, this) } { state(Heap, Mask), Nodet$#triggerStateless(this), Nodevalid$#trigger(Heap, Nodevalid$(this)) }
  state(Heap, Mask) ==> Nodet$'(Heap, this) == Nodet$#frame(Heap[null, Nodevalid$(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Nodet$#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Nodet$#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Nodet$#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
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
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this), wildcard) in Nodet$(this))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this));
      assume UnfoldingHeap[null, Nodevalid$(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Nodeval$]), CombineFrames(FrameFragment(UnfoldingHeap[this, Nodenext$]), FrameFragment((if UnfoldingHeap[this, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodevalid$(this) (0154.vpr@9.1--14.2) [74994]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodeval$:=UnfoldingMask[this, Nodeval$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Nodenext$:=UnfoldingMask[this, Nodenext$] + perm];
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
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        assert {:msg "  Precondition of function Nodet$ might not hold. Assertion this != null might not hold. (0154.vpr@13.49--13.61) [74995]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Nodet$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154.vpr@13.49--13.61) [74996]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume Nodet$#trigger(UnfoldingHeap[null, Nodevalid$(this)], this);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodeval$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this):=Heap[null, Nodevalid$#sm(this)][this, Nodenext$:=true]];
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
    Result := Nodet$(Heap, this);
}

// ==================================================
// Translation of function Nodet2$
// ==================================================

// Uninterpreted function definitions
function  Nodet2$(Heap: HeapType, this: Ref): int;
function  Nodet2$'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Nodet2$(Heap, this) }
  Nodet2$(Heap, this) == Nodet2$'(Heap, this) && dummyFunction(Nodet2$#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Nodet2$'(Heap, this) }
  dummyFunction(Nodet2$#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodet2$(Heap, this) } { state(Heap, Mask), Nodet2$#triggerStateless(this), Nodep$#trigger(Heap, Nodep$(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null ==> Nodet2$(Heap, this) == Nodet$(Heap, this)
);

// Framing axioms
function  Nodet2$#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Nodet2$'(Heap, this) } { state(Heap, Mask), Nodet2$#triggerStateless(this), Nodep$#trigger(Heap, Nodep$(this)) }
  state(Heap, Mask) ==> Nodet2$'(Heap, this) == Nodet2$#frame(Heap[null, Nodep$(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Nodet2$#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Nodet2$#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Nodet2$#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, Nodep$(this):=Mask[null, Nodep$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodep$(this), wildcard) in Nodet$(this))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodep$#trigger(UnfoldingHeap, Nodep$(this));
      assume UnfoldingHeap[null, Nodep$(this)] == UnfoldingHeap[null, Nodep$(this)];
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodep$(this) (0154.vpr@16.1--22.2) [74997]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodep$(this)];
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, Nodep$(this):=UnfoldingMask[null, Nodep$(this)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Nodep$(this), UnfoldingHeap[null, Nodep$(this)], Nodep$(this), UnfoldingHeap[null, Nodep$(this)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        assert {:msg "  Precondition of function Nodet$ might not hold. Assertion this != null might not hold. (0154.vpr@21.45--21.57) [74998]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Nodet$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0154.vpr@21.45--21.57) [74999]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, Nodep$#sm(this)][o_6, f_12] || Heap[null, Nodep$#sm(this)][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        Heap := Heap[null, Nodep$#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Nodet$(Heap, this);
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
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodevalid$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Nodeval$:=Mask[this, Nodeval$] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Nodenext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154.vpr@24.1--26.2) [75000]"}
        HasDirectPerm(Mask, this, Nodenext$);
    if (Heap[this, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodevalid$(this.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Nodenext$ (0154.vpr@24.1--26.2) [75001]"}
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
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodep$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, Nodep$(this):=Mask[null, Nodep$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}