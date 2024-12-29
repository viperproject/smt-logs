// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:41:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0055.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0055-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_6: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_6, f_9] }
  Heap[o_6, $allocated] ==> Heap[Heap[o_6, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref, f_35: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, f_35] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_30, f_35) ==> Heap[o_30, f_35] == ExhaleHeap[o_30, f_35]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_30, $allocated] ==> ExhaleHeap[o_30, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_6: Ref, f_16: (Field A B), v: B ::
  { Heap[o_6, f_16:=v] }
  succHeap(Heap, Heap[o_6, f_16:=v])
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
// - height 1: Nodecontains$
// - height 0: Nodesize$
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
// Translation of function Nodesize$
// ==================================================

// Uninterpreted function definitions
function  Nodesize$(Heap: HeapType, this$_3: Ref): int;
function  Nodesize$'(Heap: HeapType, this$_3: Ref): int;
axiom (forall Heap: HeapType, this$_3: Ref ::
  { Nodesize$(Heap, this$_3) }
  Nodesize$(Heap, this$_3) == Nodesize$'(Heap, this$_3) && dummyFunction(Nodesize$#triggerStateless(this$_3))
);
axiom (forall Heap: HeapType, this$_3: Ref ::
  { Nodesize$'(Heap, this$_3) }
  dummyFunction(Nodesize$#triggerStateless(this$_3))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), Nodesize$(Heap, this$_3) } { state(Heap, Mask), Nodesize$#triggerStateless(this$_3), Nodevalid$#trigger(Heap, Nodevalid$(this$_3)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this$_3 != null ==> Nodesize$(Heap, this$_3) == (if Heap[this$_3, Nodenext$] != null then 1 + Nodesize$'(Heap, Heap[this$_3, Nodenext$]) else 1)
);

// Framing axioms
function  Nodesize$#frame(frame: FrameType, this$_3: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), Nodesize$'(Heap, this$_3) } { state(Heap, Mask), Nodesize$#triggerStateless(this$_3), Nodevalid$#trigger(Heap, Nodevalid$(this$_3)) }
  state(Heap, Mask) ==> Nodesize$'(Heap, this$_3) == Nodesize$#frame(Heap[null, Nodevalid$(this$_3)], this$_3)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), Nodesize$'(Heap, this$_3) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || Nodesize$#trigger(Heap[null, Nodevalid$(this$_3)], this$_3)) ==> this$_3 != null ==> Nodesize$'(Heap, this$_3) > 0
);

// Trigger function (controlling recursive postconditions)
function  Nodesize$#trigger(frame: FrameType, this$_3: Ref): bool;

// State-independent trigger function
function  Nodesize$#triggerStateless(this$_3: Ref): int;

// Check contract well-formedness and postcondition
procedure Nodesize$#definedness(this$_3: Ref) returns (Result: int)
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
    assume Heap[this$_3, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this$_3 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Nodevalid$(this$_3):=Mask[null, Nodevalid$(this$_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this$_3), wildcard) in (this$_3.Nodenext$ != null ? 1 + Nodesize$(this$_3.Nodenext$) : 1))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this$_3));
      assume UnfoldingHeap[null, Nodevalid$(this$_3)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_3, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_3, Nodevalue$]), FrameFragment((if UnfoldingHeap[this$_3, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this$_3, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodevalid$(this$_3) (0055.vpr@9.1--15.2) [190870]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(this$_3)];
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Nodenext$:=UnfoldingMask[this$_3, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Nodevalue$:=UnfoldingMask[this$_3, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this$_3, Nodenext$] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this$_3, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this$_3, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this$_3), UnfoldingHeap[null, Nodevalid$(this$_3)], Nodevalid$(UnfoldingHeap[this$_3, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this$_3, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Nodenext$ (0055.vpr@9.1--15.2) [190871]"}
        HasDirectPerm(UnfoldingMask, this$_3, Nodenext$);
      if (UnfoldingHeap[this$_3, Nodenext$] != null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Nodenext$ (0055.vpr@9.1--15.2) [190872]"}
          HasDirectPerm(UnfoldingMask, this$_3, Nodenext$);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          assert {:msg "  Precondition of function Nodesize$ might not hold. Assertion this$_3.Nodenext$ != null might not hold. (0055.vpr@14.85--14.113) [190873]"}
            UnfoldingHeap[this$_3, Nodenext$] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodesize$ might not hold. There might be insufficient permission to access Nodevalid$(this$_3.Nodenext$) (0055.vpr@14.85--14.113) [190874]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this$_3, Nodenext$])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Nodesize$#trigger(UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this$_3, Nodenext$])], UnfoldingHeap[this$_3, Nodenext$]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this$_3):=Heap[null, Nodevalid$#sm(this$_3)][this$_3, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this$_3):=Heap[null, Nodevalid$#sm(this$_3)][this$_3, Nodevalue$:=true]];
        if (Heap[this$_3, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Nodevalid$#sm(this$_3)][o_15, f_20] || Heap[null, Nodevalid$#sm(Heap[this$_3, Nodenext$])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Nodevalid$#sm(this$_3):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this$_3, Nodenext$] != null then 1 + Nodesize$(Heap, Heap[this$_3, Nodenext$]) else 1);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Nodesize$ might not hold. Assertion result > 0 might not hold. (0055.vpr@12.11--12.21) [190875]"}
      Result > 0;
}

// ==================================================
// Translation of function Nodecontains$
// ==================================================

// Uninterpreted function definitions
function  Nodecontains$(Heap: HeapType, this$_4: Ref, i: int): bool;
function  Nodecontains$'(Heap: HeapType, this$_4: Ref, i: int): bool;
axiom (forall Heap: HeapType, this$_4: Ref, i: int ::
  { Nodecontains$(Heap, this$_4, i) }
  Nodecontains$(Heap, this$_4, i) == Nodecontains$'(Heap, this$_4, i) && dummyFunction(Nodecontains$#triggerStateless(this$_4, i))
);
axiom (forall Heap: HeapType, this$_4: Ref, i: int ::
  { Nodecontains$'(Heap, this$_4, i) }
  dummyFunction(Nodecontains$#triggerStateless(this$_4, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref, i: int ::
  { state(Heap, Mask), Nodecontains$(Heap, this$_4, i) } { state(Heap, Mask), Nodecontains$#triggerStateless(this$_4, i), Nodevalid$#trigger(Heap, Nodevalid$(this$_4)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this$_4 != null ==> Nodecontains$(Heap, this$_4, i) == (i == Heap[this$_4, Nodevalue$] || (Heap[this$_4, Nodenext$] != null && Nodecontains$'(Heap, Heap[this$_4, Nodenext$], i)))
);

// Framing axioms
function  Nodecontains$#frame(frame: FrameType, this$_4: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref, i: int ::
  { state(Heap, Mask), Nodecontains$'(Heap, this$_4, i) } { state(Heap, Mask), Nodecontains$#triggerStateless(this$_4, i), Nodevalid$#trigger(Heap, Nodevalid$(this$_4)) }
  state(Heap, Mask) ==> Nodecontains$'(Heap, this$_4, i) == Nodecontains$#frame(Heap[null, Nodevalid$(this$_4)], this$_4, i)
);

// Trigger function (controlling recursive postconditions)
function  Nodecontains$#trigger(frame: FrameType, this$_4: Ref, i: int): bool;

// State-independent trigger function
function  Nodecontains$#triggerStateless(this$_4: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure Nodecontains$#definedness(this$_4: Ref, i: int) returns (Result: bool)
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
    assume Heap[this$_4, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this$_4 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Nodevalid$(this$_4):=Mask[null, Nodevalid$(this$_4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodevalid$(this$_4), wildcard) in i == this$_4.Nodevalue$ || this$_4.Nodenext$ != null && Nodecontains$(this$_4.Nodenext$, i))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodevalid$#trigger(UnfoldingHeap, Nodevalid$(this$_4));
      assume UnfoldingHeap[null, Nodevalid$(this$_4)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_4, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_4, Nodevalue$]), FrameFragment((if UnfoldingHeap[this$_4, Nodenext$] != null then UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this$_4, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodevalid$(this$_4) (0055.vpr@17.1--22.2) [190876]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(this$_4)];
      havoc wildcard;
      perm := wildcard;
      assume this$_4 != null;
      UnfoldingMask := UnfoldingMask[this$_4, Nodenext$:=UnfoldingMask[this$_4, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_4 != null;
      UnfoldingMask := UnfoldingMask[this$_4, Nodevalue$:=UnfoldingMask[this$_4, Nodevalue$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this$_4, Nodenext$] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this$_4, Nodenext$]):=UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this$_4, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodevalid$(this$_4), UnfoldingHeap[null, Nodevalid$(this$_4)], Nodevalid$(UnfoldingHeap[this$_4, Nodenext$]), UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this$_4, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_4.Nodevalue$ (0055.vpr@17.1--22.2) [190877]"}
        HasDirectPerm(UnfoldingMask, this$_4, Nodevalue$);
      if (!(i == UnfoldingHeap[this$_4, Nodevalue$])) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_4.Nodenext$ (0055.vpr@17.1--22.2) [190878]"}
          HasDirectPerm(UnfoldingMask, this$_4, Nodenext$);
        if (UnfoldingHeap[this$_4, Nodenext$] != null) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_4.Nodenext$ (0055.vpr@17.1--22.2) [190879]"}
            HasDirectPerm(UnfoldingMask, this$_4, Nodenext$);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            assert {:msg "  Precondition of function Nodecontains$ might not hold. Assertion this$_4.Nodenext$ != null might not hold. (0055.vpr@21.112--21.147) [190880]"}
              UnfoldingHeap[this$_4, Nodenext$] != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Nodecontains$ might not hold. There might be insufficient permission to access Nodevalid$(this$_4.Nodenext$) (0055.vpr@21.112--21.147) [190881]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodevalid$(UnfoldingHeap[this$_4, Nodenext$])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume Nodecontains$#trigger(UnfoldingHeap[null, Nodevalid$(UnfoldingHeap[this$_4, Nodenext$])], UnfoldingHeap[this$_4, Nodenext$], i);
          }
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodevalid$#sm(this$_4):=Heap[null, Nodevalid$#sm(this$_4)][this$_4, Nodenext$:=true]];
        Heap := Heap[null, Nodevalid$#sm(this$_4):=Heap[null, Nodevalid$#sm(this$_4)][this$_4, Nodevalue$:=true]];
        if (Heap[this$_4, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Nodevalid$#sm(this$_4)][o_16, f_21] || Heap[null, Nodevalid$#sm(Heap[this$_4, Nodenext$])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Nodevalid$#sm(this$_4):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := i == Heap[this$_4, Nodevalue$] || (Heap[this$_4, Nodenext$] != null && Nodecontains$(Heap, Heap[this$_4, Nodenext$], i));
}

// ==================================================
// Translation of predicate Nodevalid$
// ==================================================

type PredicateType_Nodevalid$;
function  Nodevalid$(this$_5: Ref): Field PredicateType_Nodevalid$ FrameType;
function  Nodevalid$#sm(this$_5: Ref): Field PredicateType_Nodevalid$ PMaskType;
axiom (forall this$_5: Ref ::
  { PredicateMaskField(Nodevalid$(this$_5)) }
  PredicateMaskField(Nodevalid$(this$_5)) == Nodevalid$#sm(this$_5)
);
axiom (forall this$_5: Ref ::
  { Nodevalid$(this$_5) }
  IsPredicateField(Nodevalid$(this$_5))
);
axiom (forall this$_5: Ref ::
  { Nodevalid$(this$_5) }
  getPredWandId(Nodevalid$(this$_5)) == 0
);
function  Nodevalid$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Nodevalid$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_5: Ref, this$_52: Ref ::
  { Nodevalid$(this$_5), Nodevalid$(this$_52) }
  Nodevalid$(this$_5) == Nodevalid$(this$_52) ==> this$_5 == this$_52
);
axiom (forall this$_5: Ref, this$_52: Ref ::
  { Nodevalid$#sm(this$_5), Nodevalid$#sm(this$_52) }
  Nodevalid$#sm(this$_5) == Nodevalid$#sm(this$_52) ==> this$_5 == this$_52
);

axiom (forall Heap: HeapType, this$_5: Ref ::
  { Nodevalid$#trigger(Heap, Nodevalid$(this$_5)) }
  Nodevalid$#everUsed(Nodevalid$(this$_5))
);

procedure Nodevalid$#definedness(this$_5: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodevalid$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_5, $allocated];
    perm := FullPerm;
    assume this$_5 != null;
    Mask := Mask[this$_5, Nodenext$:=Mask[this$_5, Nodenext$] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this$_5 != null;
    Mask := Mask[this$_5, Nodevalue$:=Mask[this$_5, Nodevalue$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this$_5.Nodenext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_5.Nodenext$ (0055.vpr@24.1--26.2) [190882]"}
        HasDirectPerm(Mask, this$_5, Nodenext$);
    if (Heap[this$_5, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodevalid$(this$_5.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_5.Nodenext$ (0055.vpr@24.1--26.2) [190883]"}
          HasDirectPerm(Mask, this$_5, Nodenext$);
      perm := FullPerm;
      Mask := Mask[null, Nodevalid$(Heap[this$_5, Nodenext$]):=Mask[null, Nodevalid$(Heap[this$_5, Nodenext$])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Nodeinit$
// ==================================================

procedure Nodeinit$(this: Ref, k$: Perm, v_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var y_2: int;
  
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
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] + perm];
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Nodesize$(this) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Nodesize$ might not hold. Assertion this != null might not hold. (0055.vpr@33.44--33.59) [190884]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Nodesize$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0055.vpr@33.44--33.59) [190885]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Nodevalid$(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Nodesize$(PostHeap, this) == 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall y: Int :: { Nodecontains$(this, y) } true ==> Nodecontains$(this, y) == (y == v))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          assert {:msg "  Precondition of function Nodecontains$ might not hold. Assertion this != null might not hold. (0055.vpr@33.97--33.119) [190886]"}
            this != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodecontains$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0055.vpr@33.97--33.119) [190887]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Nodevalid$(this)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall y_1: int ::
      { Nodecontains$#frame(PostHeap[null, Nodevalid$(this)], this, y_1) }
      Nodecontains$(PostHeap, this, y_1) == (y_1 == v_2)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.Nodenext$ := null -- 0055.vpr@35.3--35.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Nodenext$ (0055.vpr@35.3--35.25) [190888]"}
      FullPerm == Mask[this, Nodenext$];
    Heap := Heap[this, Nodenext$:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Nodevalue$ := v -- 0055.vpr@36.3--36.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Nodevalue$ (0055.vpr@36.3--36.23) [190889]"}
      FullPerm == Mask[this, Nodevalue$];
    Heap := Heap[this, Nodevalue$:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Nodevalid$(this), write) -- 0055.vpr@37.3--37.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access this.Nodenext$ (0055.vpr@37.3--37.36) [190892]"}
        perm <= Mask[this, Nodenext$];
    }
    Mask := Mask[this, Nodenext$:=Mask[this, Nodenext$] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access this.Nodevalue$ (0055.vpr@37.3--37.36) [190894]"}
        perm <= Mask[this, Nodevalue$];
    }
    Mask := Mask[this, Nodevalue$:=Mask[this, Nodevalue$] - perm];
    if (Heap[this, Nodenext$] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Nodevalid$(this) might fail. There might be insufficient permission to access Nodevalid$(this.Nodenext$) (0055.vpr@37.3--37.36) [190896]"}
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
      assume (forall <A, B> o_33: Ref, f_39: (Field A B) ::
        { newPMask[o_33, f_39] }
        Heap[null, Nodevalid$#sm(this)][o_33, f_39] || Heap[null, Nodevalid$#sm(Heap[this, Nodenext$])][o_33, f_39] ==> newPMask[o_33, f_39]
      );
      Heap := Heap[null, Nodevalid$#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Nodeinit$ might not hold. There might be insufficient permission to access Nodevalid$(this) (0055.vpr@33.11--33.133) [190898]"}
        perm <= Mask[null, Nodevalid$(this)];
    }
    Mask := Mask[null, Nodevalid$(this):=Mask[null, Nodevalid$(this)] - perm];
    assert {:msg "  Postcondition of Nodeinit$ might not hold. Assertion Nodesize$(this) == 1 might not hold. (0055.vpr@33.11--33.133) [190899]"}
      Nodesize$(Heap, this) == 1;
    if (*) {
      assert {:msg "  Postcondition of Nodeinit$ might not hold. Assertion Nodecontains$(this, y) == (y == v) might not hold. (0055.vpr@33.11--33.133) [190900]"}
        Nodecontains$(Heap, this, y_2) == (y_2 == v_2);
      assume false;
    }
    assume (forall y_3_1: int ::
      { Nodecontains$#frame(Heap[null, Nodevalid$(this)], this, y_3_1) }
      Nodecontains$(Heap, this, y_3_1) == (y_3_1 == v_2)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}