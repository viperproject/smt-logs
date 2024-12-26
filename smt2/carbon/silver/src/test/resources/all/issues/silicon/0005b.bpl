// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:23:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0005b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0005b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_42: Ref, f_48: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_42, f_48] }
  Heap[o_42, $allocated] ==> Heap[Heap[o_42, f_48], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref, f_43: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, f_43] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_47, f_43) ==> Heap[o_47, f_43] == ExhaleHeap[o_47, f_43]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52), ExhaleHeap[null, PredicateMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> Heap[null, PredicateMaskField(pm_f_52)] == ExhaleHeap[null, PredicateMaskField(pm_f_52)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> (forall <A, B> o2_52: Ref, f_43: (Field A B) ::
    { ExhaleHeap[o2_52, f_43] }
    Heap[null, PredicateMaskField(pm_f_52)][o2_52, f_43] ==> Heap[o2_52, f_43] == ExhaleHeap[o2_52, f_43]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52), ExhaleHeap[null, WandMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> Heap[null, WandMaskField(pm_f_52)] == ExhaleHeap[null, WandMaskField(pm_f_52)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> (forall <A, B> o2_52: Ref, f_43: (Field A B) ::
    { ExhaleHeap[o2_52, f_43] }
    Heap[null, WandMaskField(pm_f_52)][o2_52, f_43] ==> Heap[o2_52, f_43] == ExhaleHeap[o2_52, f_43]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_47, $allocated] ==> ExhaleHeap[o_47, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_42: Ref, f_45: (Field A B), v: B ::
  { Heap[o_42, f_45:=v] }
  succHeap(Heap, Heap[o_42, f_45:=v])
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
// - height 3: Triggersg$
// - height 2: Triggersf$
// - height 1: Triggersi$
// - height 0: Triggersh$
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
const unique Triggersnext$: Field NormalField Ref;
axiom !IsPredicateField(Triggersnext$);
axiom !IsWandField(Triggersnext$);
const unique par$Triggerstriggers_one$this$_6: Field NormalField Ref;
axiom !IsPredicateField(par$Triggerstriggers_one$this$_6);
axiom !IsWandField(par$Triggerstriggers_one$this$_6);
const unique par$Triggerstriggers_one$k$: Field NormalField Perm;
axiom !IsPredicateField(par$Triggerstriggers_one$k$);
axiom !IsWandField(par$Triggerstriggers_one$k$);
const unique par$Triggerstriggers_two$this$_7: Field NormalField Ref;
axiom !IsPredicateField(par$Triggerstriggers_two$this$_7);
axiom !IsWandField(par$Triggerstriggers_two$this$_7);
const unique par$Triggerstriggers_two$k$_1: Field NormalField Perm;
axiom !IsPredicateField(par$Triggerstriggers_two$k$_1);
axiom !IsWandField(par$Triggerstriggers_two$k$_1);
const unique par$Triggerstriggers_three$this$_8: Field NormalField Ref;
axiom !IsPredicateField(par$Triggerstriggers_three$this$_8);
axiom !IsWandField(par$Triggerstriggers_three$this$_8);
const unique par$Triggerstriggers_three$k$_2: Field NormalField Perm;
axiom !IsPredicateField(par$Triggerstriggers_three$k$_2);
axiom !IsWandField(par$Triggerstriggers_three$k$_2);
const unique par$Triggerstriggers_four$this$_9: Field NormalField Ref;
axiom !IsPredicateField(par$Triggerstriggers_four$this$_9);
axiom !IsWandField(par$Triggerstriggers_four$this$_9);
const unique par$Triggerstriggers_four$k$_3: Field NormalField Perm;
axiom !IsPredicateField(par$Triggerstriggers_four$k$_3);
axiom !IsWandField(par$Triggerstriggers_four$k$_3);
const unique par$Triggerstriggers_five$this$_10: Field NormalField Ref;
axiom !IsPredicateField(par$Triggerstriggers_five$this$_10);
axiom !IsWandField(par$Triggerstriggers_five$this$_10);
const unique par$Triggerstriggers_five$k$_4: Field NormalField Perm;
axiom !IsPredicateField(par$Triggerstriggers_five$k$_4);
axiom !IsWandField(par$Triggerstriggers_five$k$_4);
const unique par$Triggerstriggers_five$c: Field NormalField bool;
axiom !IsPredicateField(par$Triggerstriggers_five$c);
axiom !IsWandField(par$Triggerstriggers_five$c);
const unique par$Triggerstriggers_five$d: Field NormalField bool;
axiom !IsPredicateField(par$Triggerstriggers_five$d);
axiom !IsWandField(par$Triggerstriggers_five$d);
const unique par$Triggerstriggers_six$this$_11: Field NormalField Ref;
axiom !IsPredicateField(par$Triggerstriggers_six$this$_11);
axiom !IsWandField(par$Triggerstriggers_six$this$_11);
const unique par$Triggerstriggers_six$k$_5: Field NormalField Perm;
axiom !IsPredicateField(par$Triggerstriggers_six$k$_5);
axiom !IsWandField(par$Triggerstriggers_six$k$_5);
const unique par$Triggerstriggers_six$c: Field NormalField int;
axiom !IsPredicateField(par$Triggerstriggers_six$c);
axiom !IsWandField(par$Triggerstriggers_six$c);
const unique par$Triggerstriggers_six$d: Field NormalField int;
axiom !IsPredicateField(par$Triggerstriggers_six$d);
axiom !IsWandField(par$Triggerstriggers_six$d);

// ==================================================
// Translation of function Triggersf$
// ==================================================

// Uninterpreted function definitions
function  Triggersf$(Heap: HeapType, this$_2: Ref, x: int, y: int, z: int): bool;
function  Triggersf$'(Heap: HeapType, this$_2: Ref, x: int, y: int, z: int): bool;
axiom (forall Heap: HeapType, this$_2: Ref, x: int, y: int, z: int ::
  { Triggersf$(Heap, this$_2, x, y, z) }
  Triggersf$(Heap, this$_2, x, y, z) == Triggersf$'(Heap, this$_2, x, y, z) && dummyFunction(Triggersf$#triggerStateless(this$_2, x, y, z))
);
axiom (forall Heap: HeapType, this$_2: Ref, x: int, y: int, z: int ::
  { Triggersf$'(Heap, this$_2, x, y, z) }
  dummyFunction(Triggersf$#triggerStateless(this$_2, x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_2: Ref, x: int, y: int, z: int ::
  { state(Heap, Mask), Triggersf$(Heap, this$_2, x, y, z) } { state(Heap, Mask), Triggersf$#triggerStateless(this$_2, x, y, z), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> this$_2 != null ==> Triggersf$(Heap, this$_2, x, y, z) == Triggersf$'(Heap, Heap[this$_2, Triggersnext$], x, y, z)
);

// Framing axioms
function  Triggersf$#frame(frame: FrameType, this$_2: Ref, x: int, y: int, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this$_2: Ref, x: int, y: int, z: int ::
  { state(Heap, Mask), Triggersf$'(Heap, this$_2, x, y, z) } { state(Heap, Mask), Triggersf$#triggerStateless(this$_2, x, y, z), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_2)) }
  state(Heap, Mask) ==> Triggersf$'(Heap, this$_2, x, y, z) == Triggersf$#frame(Heap[null, Triggersvalid$(this$_2)], this$_2, x, y, z)
);

// Trigger function (controlling recursive postconditions)
function  Triggersf$#trigger(frame: FrameType, this$_2: Ref, x: int, y: int, z: int): bool;

// State-independent trigger function
function  Triggersf$#triggerStateless(this$_2: Ref, x: int, y: int, z: int): bool;

// Check contract well-formedness and postcondition
procedure Triggersf$#definedness(this$_2: Ref, x: int, y: int, z: int) returns (Result: bool)
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
    assume Heap[this$_2, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume this$_2 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Triggersvalid$(this$_2):=Mask[null, Triggersvalid$(this$_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Triggersvalid$(this$_2), wildcard) in Triggersf$(this$_2.Triggersnext$, x, y, z))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Triggersvalid$#trigger(UnfoldingHeap, Triggersvalid$(this$_2));
      assume UnfoldingHeap[null, Triggersvalid$(this$_2)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Triggersvalid$(this$_2) (0005b.vpr@51.1--56.2) [216233]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(this$_2)];
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Triggersnext$:=UnfoldingMask[this$_2, Triggersnext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this$_2, Triggersnext$] != null;
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$]):=UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Triggersvalid$(this$_2), UnfoldingHeap[null, Triggersvalid$(this$_2)], Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_2.Triggersnext$ (0005b.vpr@51.1--56.2) [216234]"}
        HasDirectPerm(UnfoldingMask, this$_2, Triggersnext$);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_2.Triggersnext$ != null might not hold. (0005b.vpr@55.56--55.98) [216235]"}
          UnfoldingHeap[this$_2, Triggersnext$] != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_2.Triggersnext$) (0005b.vpr@55.56--55.98) [216236]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume Triggersf$#trigger(UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_2, Triggersnext$])], UnfoldingHeap[this$_2, Triggersnext$], x, y, z);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Triggersvalid$#sm(this$_2):=Heap[null, Triggersvalid$#sm(this$_2)][this$_2, Triggersnext$:=true]];
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          Heap[null, Triggersvalid$#sm(this$_2)][o_15, f_20] || Heap[null, Triggersvalid$#sm(Heap[this$_2, Triggersnext$])][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        Heap := Heap[null, Triggersvalid$#sm(this$_2):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Triggersf$(Heap, Heap[this$_2, Triggersnext$], x, y, z);
}

// ==================================================
// Translation of function Triggersh$
// ==================================================

// Uninterpreted function definitions
function  Triggersh$(Heap: HeapType, this$_3: Ref, x: int, y: int, z: int): bool;
function  Triggersh$'(Heap: HeapType, this$_3: Ref, x: int, y: int, z: int): bool;
axiom (forall Heap: HeapType, this$_3: Ref, x: int, y: int, z: int ::
  { Triggersh$(Heap, this$_3, x, y, z) }
  Triggersh$(Heap, this$_3, x, y, z) == Triggersh$'(Heap, this$_3, x, y, z) && dummyFunction(Triggersh$#triggerStateless(this$_3, x, y, z))
);
axiom (forall Heap: HeapType, this$_3: Ref, x: int, y: int, z: int ::
  { Triggersh$'(Heap, this$_3, x, y, z) }
  dummyFunction(Triggersh$#triggerStateless(this$_3, x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref, x: int, y: int, z: int ::
  { state(Heap, Mask), Triggersh$(Heap, this$_3, x, y, z) } { state(Heap, Mask), Triggersh$#triggerStateless(this$_3, x, y, z), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_3)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this$_3 != null ==> Triggersh$(Heap, this$_3, x, y, z) == Triggersh$'(Heap, Heap[this$_3, Triggersnext$], x, y, z)
);

// Framing axioms
function  Triggersh$#frame(frame: FrameType, this$_3: Ref, x: int, y: int, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref, x: int, y: int, z: int ::
  { state(Heap, Mask), Triggersh$'(Heap, this$_3, x, y, z) } { state(Heap, Mask), Triggersh$#triggerStateless(this$_3, x, y, z), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_3)) }
  state(Heap, Mask) ==> Triggersh$'(Heap, this$_3, x, y, z) == Triggersh$#frame(Heap[null, Triggersvalid$(this$_3)], this$_3, x, y, z)
);

// Trigger function (controlling recursive postconditions)
function  Triggersh$#trigger(frame: FrameType, this$_3: Ref, x: int, y: int, z: int): bool;

// State-independent trigger function
function  Triggersh$#triggerStateless(this$_3: Ref, x: int, y: int, z: int): bool;

// Check contract well-formedness and postcondition
procedure Triggersh$#definedness(this$_3: Ref, x: int, y: int, z: int) returns (Result: bool)
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
    assume Heap[this$_3, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this$_3 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Triggersvalid$(this$_3):=Mask[null, Triggersvalid$(this$_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Triggersvalid$(this$_3), wildcard) in Triggersh$(this$_3.Triggersnext$, x, y, z))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Triggersvalid$#trigger(UnfoldingHeap, Triggersvalid$(this$_3));
      assume UnfoldingHeap[null, Triggersvalid$(this$_3)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_3, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Triggersvalid$(this$_3) (0005b.vpr@58.1--63.2) [216237]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(this$_3)];
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Triggersnext$:=UnfoldingMask[this$_3, Triggersnext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this$_3, Triggersnext$] != null;
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$]):=UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Triggersvalid$(this$_3), UnfoldingHeap[null, Triggersvalid$(this$_3)], Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Triggersnext$ (0005b.vpr@58.1--63.2) [216238]"}
        HasDirectPerm(UnfoldingMask, this$_3, Triggersnext$);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        assert {:msg "  Precondition of function Triggersh$ might not hold. Assertion this$_3.Triggersnext$ != null might not hold. (0005b.vpr@62.56--62.98) [216239]"}
          UnfoldingHeap[this$_3, Triggersnext$] != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Triggersh$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_3.Triggersnext$) (0005b.vpr@62.56--62.98) [216240]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume Triggersh$#trigger(UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_3, Triggersnext$])], UnfoldingHeap[this$_3, Triggersnext$], x, y, z);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Triggersvalid$#sm(this$_3):=Heap[null, Triggersvalid$#sm(this$_3)][this$_3, Triggersnext$:=true]];
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, Triggersvalid$#sm(this$_3)][o_16, f_21] || Heap[null, Triggersvalid$#sm(Heap[this$_3, Triggersnext$])][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        Heap := Heap[null, Triggersvalid$#sm(this$_3):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Triggersh$(Heap, Heap[this$_3, Triggersnext$], x, y, z);
}

// ==================================================
// Translation of function Triggersg$
// ==================================================

// Uninterpreted function definitions
function  Triggersg$(Heap: HeapType, this$_4: Ref, x: int): bool;
function  Triggersg$'(Heap: HeapType, this$_4: Ref, x: int): bool;
axiom (forall Heap: HeapType, this$_4: Ref, x: int ::
  { Triggersg$(Heap, this$_4, x) }
  Triggersg$(Heap, this$_4, x) == Triggersg$'(Heap, this$_4, x) && dummyFunction(Triggersg$#triggerStateless(this$_4, x))
);
axiom (forall Heap: HeapType, this$_4: Ref, x: int ::
  { Triggersg$'(Heap, this$_4, x) }
  dummyFunction(Triggersg$#triggerStateless(this$_4, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref, x: int ::
  { state(Heap, Mask), Triggersg$(Heap, this$_4, x) } { state(Heap, Mask), Triggersg$#triggerStateless(this$_4, x), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_4)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> this$_4 != null ==> Triggersg$(Heap, this$_4, x) == Triggersg$'(Heap, Heap[this$_4, Triggersnext$], x)
);

// Framing axioms
function  Triggersg$#frame(frame: FrameType, this$_4: Ref, x: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this$_4: Ref, x: int ::
  { state(Heap, Mask), Triggersg$'(Heap, this$_4, x) } { state(Heap, Mask), Triggersg$#triggerStateless(this$_4, x), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_4)) }
  state(Heap, Mask) ==> Triggersg$'(Heap, this$_4, x) == Triggersg$#frame(Heap[null, Triggersvalid$(this$_4)], this$_4, x)
);

// Trigger function (controlling recursive postconditions)
function  Triggersg$#trigger(frame: FrameType, this$_4: Ref, x: int): bool;

// State-independent trigger function
function  Triggersg$#triggerStateless(this$_4: Ref, x: int): bool;

// Check contract well-formedness and postcondition
procedure Triggersg$#definedness(this$_4: Ref, x: int) returns (Result: bool)
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
    assume Heap[this$_4, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume this$_4 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Triggersvalid$(this$_4):=Mask[null, Triggersvalid$(this$_4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Triggersvalid$(this$_4), wildcard) in Triggersg$(this$_4.Triggersnext$, x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Triggersvalid$#trigger(UnfoldingHeap, Triggersvalid$(this$_4));
      assume UnfoldingHeap[null, Triggersvalid$(this$_4)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_4, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Triggersvalid$(this$_4) (0005b.vpr@65.1--70.2) [216241]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(this$_4)];
      havoc wildcard;
      perm := wildcard;
      assume this$_4 != null;
      UnfoldingMask := UnfoldingMask[this$_4, Triggersnext$:=UnfoldingMask[this$_4, Triggersnext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this$_4, Triggersnext$] != null;
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$]):=UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Triggersvalid$(this$_4), UnfoldingHeap[null, Triggersvalid$(this$_4)], Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_4.Triggersnext$ (0005b.vpr@65.1--70.2) [216242]"}
        HasDirectPerm(UnfoldingMask, this$_4, Triggersnext$);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_4.Triggersnext$ != null might not hold. (0005b.vpr@69.56--69.92) [216243]"}
          UnfoldingHeap[this$_4, Triggersnext$] != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_4.Triggersnext$) (0005b.vpr@69.56--69.92) [216244]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume Triggersg$#trigger(UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_4, Triggersnext$])], UnfoldingHeap[this$_4, Triggersnext$], x);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Triggersvalid$#sm(this$_4):=Heap[null, Triggersvalid$#sm(this$_4)][this$_4, Triggersnext$:=true]];
        havoc newPMask;
        assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
          { newPMask[o_52, f_55] }
          Heap[null, Triggersvalid$#sm(this$_4)][o_52, f_55] || Heap[null, Triggersvalid$#sm(Heap[this$_4, Triggersnext$])][o_52, f_55] ==> newPMask[o_52, f_55]
        );
        Heap := Heap[null, Triggersvalid$#sm(this$_4):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Triggersg$(Heap, Heap[this$_4, Triggersnext$], x);
}

// ==================================================
// Translation of function Triggersi$
// ==================================================

// Uninterpreted function definitions
function  Triggersi$(Heap: HeapType, this$_5: Ref, x: int, y: bool): bool;
function  Triggersi$'(Heap: HeapType, this$_5: Ref, x: int, y: bool): bool;
axiom (forall Heap: HeapType, this$_5: Ref, x: int, y: bool ::
  { Triggersi$(Heap, this$_5, x, y) }
  Triggersi$(Heap, this$_5, x, y) == Triggersi$'(Heap, this$_5, x, y) && dummyFunction(Triggersi$#triggerStateless(this$_5, x, y))
);
axiom (forall Heap: HeapType, this$_5: Ref, x: int, y: bool ::
  { Triggersi$'(Heap, this$_5, x, y) }
  dummyFunction(Triggersi$#triggerStateless(this$_5, x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_5: Ref, x: int, y: bool ::
  { state(Heap, Mask), Triggersi$(Heap, this$_5, x, y) } { state(Heap, Mask), Triggersi$#triggerStateless(this$_5, x, y), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_5)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this$_5 != null ==> Triggersi$(Heap, this$_5, x, y) == Triggersi$'(Heap, Heap[this$_5, Triggersnext$], x, y)
);

// Framing axioms
function  Triggersi$#frame(frame: FrameType, this$_5: Ref, x: int, y: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this$_5: Ref, x: int, y: bool ::
  { state(Heap, Mask), Triggersi$'(Heap, this$_5, x, y) } { state(Heap, Mask), Triggersi$#triggerStateless(this$_5, x, y), Triggersvalid$#trigger(Heap, Triggersvalid$(this$_5)) }
  state(Heap, Mask) ==> Triggersi$'(Heap, this$_5, x, y) == Triggersi$#frame(Heap[null, Triggersvalid$(this$_5)], this$_5, x, y)
);

// Trigger function (controlling recursive postconditions)
function  Triggersi$#trigger(frame: FrameType, this$_5: Ref, x: int, y: bool): bool;

// State-independent trigger function
function  Triggersi$#triggerStateless(this$_5: Ref, x: int, y: bool): bool;

// Check contract well-formedness and postcondition
procedure Triggersi$#definedness(this$_5: Ref, x: int, y: bool) returns (Result: bool)
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
    assume Heap[this$_5, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this$_5 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Triggersvalid$(this$_5):=Mask[null, Triggersvalid$(this$_5)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Triggersvalid$(this$_5), wildcard) in Triggersi$(this$_5.Triggersnext$, x, y))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Triggersvalid$#trigger(UnfoldingHeap, Triggersvalid$(this$_5));
      assume UnfoldingHeap[null, Triggersvalid$(this$_5)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_5, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Triggersvalid$(this$_5) (0005b.vpr@72.1--77.2) [216245]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(this$_5)];
      havoc wildcard;
      perm := wildcard;
      assume this$_5 != null;
      UnfoldingMask := UnfoldingMask[this$_5, Triggersnext$:=UnfoldingMask[this$_5, Triggersnext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this$_5, Triggersnext$] != null;
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$]):=UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Triggersvalid$(this$_5), UnfoldingHeap[null, Triggersvalid$(this$_5)], Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$]), UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_5.Triggersnext$ (0005b.vpr@72.1--77.2) [216246]"}
        HasDirectPerm(UnfoldingMask, this$_5, Triggersnext$);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        assert {:msg "  Precondition of function Triggersi$ might not hold. Assertion this$_5.Triggersnext$ != null might not hold. (0005b.vpr@76.56--76.95) [216247]"}
          UnfoldingHeap[this$_5, Triggersnext$] != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Triggersi$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_5.Triggersnext$) (0005b.vpr@76.56--76.95) [216248]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume Triggersi$#trigger(UnfoldingHeap[null, Triggersvalid$(UnfoldingHeap[this$_5, Triggersnext$])], UnfoldingHeap[this$_5, Triggersnext$], x, y);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Triggersvalid$#sm(this$_5):=Heap[null, Triggersvalid$#sm(this$_5)][this$_5, Triggersnext$:=true]];
        havoc newPMask;
        assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
          { newPMask[o_53, f_56] }
          Heap[null, Triggersvalid$#sm(this$_5)][o_53, f_56] || Heap[null, Triggersvalid$#sm(Heap[this$_5, Triggersnext$])][o_53, f_56] ==> newPMask[o_53, f_56]
        );
        Heap := Heap[null, Triggersvalid$#sm(this$_5):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Triggersi$(Heap, Heap[this$_5, Triggersnext$], x, y);
}

// ==================================================
// Translation of predicate Triggers$MonitorInvariant
// ==================================================

type PredicateType_Triggers$MonitorInvariant;
function  Triggers$MonitorInvariant(this$: Ref): Field PredicateType_Triggers$MonitorInvariant FrameType;
function  Triggers$MonitorInvariant#sm(this$: Ref): Field PredicateType_Triggers$MonitorInvariant PMaskType;
axiom (forall this$: Ref ::
  { PredicateMaskField(Triggers$MonitorInvariant(this$)) }
  PredicateMaskField(Triggers$MonitorInvariant(this$)) == Triggers$MonitorInvariant#sm(this$)
);
axiom (forall this$: Ref ::
  { Triggers$MonitorInvariant(this$) }
  IsPredicateField(Triggers$MonitorInvariant(this$))
);
axiom (forall this$: Ref ::
  { Triggers$MonitorInvariant(this$) }
  getPredWandId(Triggers$MonitorInvariant(this$)) == 0
);
function  Triggers$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Triggers$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$: Ref, this$2: Ref ::
  { Triggers$MonitorInvariant(this$), Triggers$MonitorInvariant(this$2) }
  Triggers$MonitorInvariant(this$) == Triggers$MonitorInvariant(this$2) ==> this$ == this$2
);
axiom (forall this$: Ref, this$2: Ref ::
  { Triggers$MonitorInvariant#sm(this$), Triggers$MonitorInvariant#sm(this$2) }
  Triggers$MonitorInvariant#sm(this$) == Triggers$MonitorInvariant#sm(this$2) ==> this$ == this$2
);

axiom (forall Heap: HeapType, this$: Ref ::
  { Triggers$MonitorInvariant#trigger(Heap, Triggers$MonitorInvariant(this$)) }
  Triggers$MonitorInvariant#everUsed(Triggers$MonitorInvariant(this$))
);

procedure Triggers$MonitorInvariant#definedness(this$: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Triggers$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Triggersvalid$
// ==================================================

type PredicateType_Triggersvalid$;
function  Triggersvalid$(this$_1: Ref): Field PredicateType_Triggersvalid$ FrameType;
function  Triggersvalid$#sm(this$_1: Ref): Field PredicateType_Triggersvalid$ PMaskType;
axiom (forall this$_1: Ref ::
  { PredicateMaskField(Triggersvalid$(this$_1)) }
  PredicateMaskField(Triggersvalid$(this$_1)) == Triggersvalid$#sm(this$_1)
);
axiom (forall this$_1: Ref ::
  { Triggersvalid$(this$_1) }
  IsPredicateField(Triggersvalid$(this$_1))
);
axiom (forall this$_1: Ref ::
  { Triggersvalid$(this$_1) }
  getPredWandId(Triggersvalid$(this$_1)) == 1
);
function  Triggersvalid$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Triggersvalid$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Triggersvalid$(this$_1), Triggersvalid$(this$_12) }
  Triggersvalid$(this$_1) == Triggersvalid$(this$_12) ==> this$_1 == this$_12
);
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Triggersvalid$#sm(this$_1), Triggersvalid$#sm(this$_12) }
  Triggersvalid$#sm(this$_1) == Triggersvalid$#sm(this$_12) ==> this$_1 == this$_12
);

axiom (forall Heap: HeapType, this$_1: Ref ::
  { Triggersvalid$#trigger(Heap, Triggersvalid$(this$_1)) }
  Triggersvalid$#everUsed(Triggersvalid$(this$_1))
);

procedure Triggersvalid$#definedness(this$_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Triggersvalid$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_1, $allocated];
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Triggersnext$:=Mask[this$_1, Triggersnext$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this$_1.Triggersnext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_1.Triggersnext$ (0005b.vpr@83.1--85.2) [216249]"}
        HasDirectPerm(Mask, this$_1, Triggersnext$);
    assume Heap[this$_1, Triggersnext$] != null;
    
    // -- Check definedness of acc(Triggersvalid$(this$_1.Triggersnext$), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_1.Triggersnext$ (0005b.vpr@83.1--85.2) [216250]"}
        HasDirectPerm(Mask, this$_1, Triggersnext$);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(Heap[this$_1, Triggersnext$]):=Mask[null, Triggersvalid$(Heap[this$_1, Triggersnext$])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Triggerstriggers_one$
// ==================================================

procedure Triggerstriggers_one$(this$_6: Ref, k$: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$: Ref;
  var b_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_6, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_6 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(this$_6):=Mask[null, Triggersvalid$(this$_6)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int :: { Triggersg$(this$_6, a) } true ==> !(Triggersg$(this$_6, a) ==> false))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_6 != null might not hold. (0005b.vpr@92.41--92.63) [216251]"}
            this$_6 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_6) (0005b.vpr@92.41--92.63) [216252]"}
            NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_6)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall a_1_1: int ::
      { Triggersg$#frame(Heap[null, Triggersvalid$(this$_6)], this$_6, a_1_1) }
      !(Triggersg$(Heap, this$_6, a_1_1) ==> false)
    );
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
    PostMask := PostMask[null, Triggersvalid$(this$_6):=PostMask[null, Triggersvalid$(this$_6)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall b: Int :: { Triggersg$(this$_6, b) } true ==> Triggersg$(this$_6, b))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_6 != null might not hold. (0005b.vpr@94.38--94.60) [216253]"}
            this$_6 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_6) (0005b.vpr@94.38--94.60) [216254]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_6)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall b_1_2: int ::
      { Triggersg$#frame(PostHeap[null, Triggersvalid$(this$_6)], this$_6, b_1_2) }
      Triggersg$(PostHeap, this$_6, b_1_2)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$, $allocated];
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Triggerstriggers_one$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_6) (0005b.vpr@93.11--93.46) [216255]"}
        perm <= Mask[null, Triggersvalid$(this$_6)];
    }
    Mask := Mask[null, Triggersvalid$(this$_6):=Mask[null, Triggersvalid$(this$_6)] - perm];
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_one$ might not hold. Assertion Triggersg$(this$_6, b) might not hold. (0005b.vpr@94.12--94.60) [216256]"}
        Triggersg$(Heap, this$_6, b_2_2);
      assume false;
    }
    assume (forall b_3_1: int ::
      { Triggersg$#frame(Heap[null, Triggersvalid$(this$_6)], this$_6, b_3_1) }
      Triggersg$(Heap, this$_6, b_3_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Triggerstriggers_two$
// ==================================================

procedure Triggerstriggers_two$(this$_7: Ref, k$_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var a_13: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$_1: Ref;
  var x_2_2: int;
  var y_2: int;
  var z_2: int;
  var w_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_7, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_7 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_1;
    assume state(Heap, Mask);
    assume k$_1 < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(this$_7):=Mask[null, Triggersvalid$(this$_7)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int, b: Int, c: Int :: { Triggersg$(this$_7, a), Triggersf$(this$_7, a, b, c) } { Triggersf$(this$_7, a, b, c) } true ==> Triggersg$(this$_7, a) && Triggersf$(this$_7, a, b, c))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_7 != null might not hold. (0005b.vpr@106.14--106.36) [216257]"}
            this$_7 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_7) (0005b.vpr@106.14--106.36) [216258]"}
            NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_7)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (Triggersg$(Heap, this$_7, a_13)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_7 != null might not hold. (0005b.vpr@106.40--106.68) [216259]"}
              this$_7 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_7) (0005b.vpr@106.40--106.68) [216260]"}
              NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_7)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall a_1_1: int, b_1_2: int, c_1: int ::
      { Triggersg$#frame(Heap[null, Triggersvalid$(this$_7)], this$_7, a_1_1), Triggersf$#frame(Heap[null, Triggersvalid$(this$_7)], this$_7, a_1_1, b_1_2, c_1) } { Triggersf$#frame(Heap[null, Triggersvalid$(this$_7)], this$_7, a_1_1, b_1_2, c_1) }
      Triggersg$(Heap, this$_7, a_1_1) && Triggersf$(Heap, this$_7, a_1_1, b_1_2, c_1)
    );
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
    PostMask := PostMask[null, Triggersvalid$(this$_7):=PostMask[null, Triggersvalid$(this$_7)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Int, y: Int, z: Int :: { Triggersf$(this$_7, x, y, z) } true ==> Triggersf$(this$_7, x, y, z))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_7 != null might not hold. (0005b.vpr@108.54--108.82) [216261]"}
            this$_7 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_7) (0005b.vpr@108.54--108.82) [216262]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_7)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: int, y_1: int, z_1: int ::
      { Triggersf$#frame(PostHeap[null, Triggersvalid$(this$_7)], this$_7, x_1, y_1, z_1) }
      Triggersf$(PostHeap, this$_7, x_1, y_1, z_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall w: Int :: { Triggersg$(this$_7, w) } true ==> Triggersg$(this$_7, w))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_7 != null might not hold. (0005b.vpr@111.14--111.36) [216263]"}
            this$_7 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_7) (0005b.vpr@111.14--111.36) [216264]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_7)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall w_1: int ::
      { Triggersg$#frame(PostHeap[null, Triggersvalid$(this$_7)], this$_7, w_1) }
      Triggersg$(PostHeap, this$_7, w_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_1, $allocated];
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Triggerstriggers_two$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_7) (0005b.vpr@107.11--107.46) [216265]"}
        perm <= Mask[null, Triggersvalid$(this$_7)];
    }
    Mask := Mask[null, Triggersvalid$(this$_7):=Mask[null, Triggersvalid$(this$_7)] - perm];
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_two$ might not hold. Assertion Triggersf$(this$_7, x, y, z) might not hold. (0005b.vpr@108.12--108.82) [216266]"}
        Triggersf$(Heap, this$_7, x_2_2, y_2, z_2);
      assume false;
    }
    assume (forall x_3_1_1: int, y_3_1: int, z_3_1_1: int ::
      { Triggersf$#frame(Heap[null, Triggersvalid$(this$_7)], this$_7, x_3_1_1, y_3_1, z_3_1_1) }
      Triggersf$(Heap, this$_7, x_3_1_1, y_3_1, z_3_1_1)
    );
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_two$ might not hold. Assertion Triggersg$(this$_7, w) might not hold. (0005b.vpr@110.12--111.36) [216267]"}
        Triggersg$(Heap, this$_7, w_2_2);
      assume false;
    }
    assume (forall w_3_1_1: int ::
      { Triggersg$#frame(Heap[null, Triggersvalid$(this$_7)], this$_7, w_3_1_1) }
      Triggersg$(Heap, this$_7, w_3_1_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Triggerstriggers_three$
// ==================================================

procedure Triggerstriggers_three$(this$_8: Ref, k$_2: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var a_26: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$_2: Ref;
  var x_2_2: int;
  var y_2: int;
  var z_2: int;
  var w_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_8, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_8 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_2;
    assume state(Heap, Mask);
    assume k$_2 < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(this$_8):=Mask[null, Triggersvalid$(this$_8)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int :: { Triggersg$(this$_8, a) } true ==> Triggersg$(this$_8, a) && (forall b: Int, c: Int :: { Triggersf$(this$_8, a, b, c) } true ==> Triggersf$(this$_8, a, b, c)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_8 != null might not hold. (0005b.vpr@123.15--123.37) [216268]"}
            this$_8 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_8) (0005b.vpr@123.15--123.37) [216269]"}
            NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_8)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (Triggersg$(Heap, this$_8, a_26)) {
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_8 != null might not hold. (0005b.vpr@124.50--124.78) [216270]"}
                this$_8 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_8) (0005b.vpr@124.50--124.78) [216271]"}
                NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_8)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            assume false;
          }
        }
        assume false;
      }
    assume (forall a_1_1: int ::
      { Triggersg$#frame(Heap[null, Triggersvalid$(this$_8)], this$_8, a_1_1) }
      Triggersg$(Heap, this$_8, a_1_1) && (forall b_1_2: int, c_1: int ::
        { Triggersf$#frame(Heap[null, Triggersvalid$(this$_8)], this$_8, a_1_1, b_1_2, c_1) }
        Triggersf$(Heap, this$_8, a_1_1, b_1_2, c_1)
      )
    );
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
    PostMask := PostMask[null, Triggersvalid$(this$_8):=PostMask[null, Triggersvalid$(this$_8)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Int, y: Int, z: Int :: { Triggersf$(this$_8, x, y, z) } true ==> Triggersf$(this$_8, x, y, z))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_8 != null might not hold. (0005b.vpr@127.54--127.82) [216272]"}
            this$_8 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_8) (0005b.vpr@127.54--127.82) [216273]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_8)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: int, y_1: int, z_1: int ::
      { Triggersf$#frame(PostHeap[null, Triggersvalid$(this$_8)], this$_8, x_1, y_1, z_1) }
      Triggersf$(PostHeap, this$_8, x_1, y_1, z_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall w: Int :: { Triggersg$(this$_8, w) } true ==> Triggersg$(this$_8, w))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersg$ might not hold. Assertion this$_8 != null might not hold. (0005b.vpr@128.38--128.60) [216274]"}
            this$_8 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersg$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_8) (0005b.vpr@128.38--128.60) [216275]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_8)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall w_1: int ::
      { Triggersg$#frame(PostHeap[null, Triggersvalid$(this$_8)], this$_8, w_1) }
      Triggersg$(PostHeap, this$_8, w_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_2, $allocated];
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Triggerstriggers_three$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_8) (0005b.vpr@125.11--125.46) [216276]"}
        perm <= Mask[null, Triggersvalid$(this$_8)];
    }
    Mask := Mask[null, Triggersvalid$(this$_8):=Mask[null, Triggersvalid$(this$_8)] - perm];
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_three$ might not hold. Assertion Triggersf$(this$_8, x, y, z) might not hold. (0005b.vpr@127.12--127.82) [216277]"}
        Triggersf$(Heap, this$_8, x_2_2, y_2, z_2);
      assume false;
    }
    assume (forall x_3_1_1: int, y_3_1: int, z_3_1_1: int ::
      { Triggersf$#frame(Heap[null, Triggersvalid$(this$_8)], this$_8, x_3_1_1, y_3_1, z_3_1_1) }
      Triggersf$(Heap, this$_8, x_3_1_1, y_3_1, z_3_1_1)
    );
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_three$ might not hold. Assertion Triggersg$(this$_8, w) might not hold. (0005b.vpr@128.12--128.60) [216278]"}
        Triggersg$(Heap, this$_8, w_2_2);
      assume false;
    }
    assume (forall w_3_1_1: int ::
      { Triggersg$#frame(Heap[null, Triggersvalid$(this$_8)], this$_8, w_3_1_1) }
      Triggersg$(Heap, this$_8, w_3_1_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Triggerstriggers_four$
// ==================================================

procedure Triggerstriggers_four$(this$_9: Ref, k$_3: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var a_27: int;
  var b_105: int;
  var c_4: int;
  var d_4: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_27: int;
  var y_36: int;
  var z_32: int;
  var n$_3: Ref;
  var x_4: int;
  var y_4_1: int;
  var z_4: int;
  var x_6: int;
  var y_6_2: int;
  var z_6: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_9, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_9 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_3;
    assume state(Heap, Mask);
    assume k$_3 < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(this$_9):=Mask[null, Triggersvalid$(this$_9)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int, b: Int, c: Int, d: Int, e: Int :: { Triggersf$(this$_9, a, b, c), Triggersh$(this$_9, b, c, d), Triggersf$(this$_9, c, d, e) } { Triggersf$(this$_9, a, b, c), Triggersf$(this$_9, c, d, e) } true ==> Triggersf$(this$_9, a, b, c) && (Triggersh$(this$_9, b, c, d) && Triggersf$(this$_9, c, d, e)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_9 != null might not hold. (0005b.vpr@140.24--140.52) [216279]"}
            this$_9 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@140.24--140.52) [216280]"}
            NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_9)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (Triggersf$(Heap, this$_9, a_27, b_105, c_4)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function Triggersh$ might not hold. Assertion this$_9 != null might not hold. (0005b.vpr@140.56--140.84) [216281]"}
              this$_9 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Triggersh$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@140.56--140.84) [216282]"}
              NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_9)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (Triggersh$(Heap, this$_9, b_105, c_4, d_4)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_9 != null might not hold. (0005b.vpr@140.88--140.116) [216283]"}
                this$_9 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@140.88--140.116) [216284]"}
                NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_9)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    assume (forall a_1_1: int, b_1_2: int, c_1: int, d_1: int, e_1_1: int ::
      { Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, a_1_1, b_1_2, c_1), Triggersh$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, b_1_2, c_1, d_1), Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, c_1, d_1, e_1_1) } { Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, a_1_1, b_1_2, c_1), Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, c_1, d_1, e_1_1) }
      Triggersf$(Heap, this$_9, a_1_1, b_1_2, c_1) && (Triggersh$(Heap, this$_9, b_1_2, c_1, d_1) && Triggersf$(Heap, this$_9, c_1, d_1, e_1_1))
    );
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
    PostMask := PostMask[null, Triggersvalid$(this$_9):=PostMask[null, Triggersvalid$(this$_9)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Int, y: Int, z: Int :: { Triggersf$(this$_9, x, y, z) } true ==> Triggersf$(this$_9, x, y, z))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_9 != null might not hold. (0005b.vpr@143.54--143.82) [216285]"}
            this$_9 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@143.54--143.82) [216286]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_9)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: int, y_1: int, z_1: int ::
      { Triggersf$#frame(PostHeap[null, Triggersvalid$(this$_9)], this$_9, x_1, y_1, z_1) }
      Triggersf$(PostHeap, this$_9, x_1, y_1, z_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Int, y: Int, z: Int :: { Triggersf$(this$_9, x, y, z) } { Triggersf$(this$_9, z, y, x) } true ==> Triggersf$(this$_9, x, y, z) && Triggersf$(this$_9, z, y, x))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_9 != null might not hold. (0005b.vpr@144.54--144.82) [216287]"}
            this$_9 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@144.54--144.82) [216288]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_9)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (Triggersf$(PostHeap, this$_9, x_27, y_36, z_32)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function Triggersf$ might not hold. Assertion this$_9 != null might not hold. (0005b.vpr@144.86--144.114) [216289]"}
              this$_9 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Triggersf$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@144.86--144.114) [216290]"}
              NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_9)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall x_3: int, y_3_2: int, z_3: int ::
      { Triggersf$#frame(PostHeap[null, Triggersvalid$(this$_9)], this$_9, x_3, y_3_2, z_3) } { Triggersf$#frame(PostHeap[null, Triggersvalid$(this$_9)], this$_9, z_3, y_3_2, x_3) }
      Triggersf$(PostHeap, this$_9, x_3, y_3_2, z_3) && Triggersf$(PostHeap, this$_9, z_3, y_3_2, x_3)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_3, $allocated];
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Triggerstriggers_four$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_9) (0005b.vpr@141.11--141.46) [216291]"}
        perm <= Mask[null, Triggersvalid$(this$_9)];
    }
    Mask := Mask[null, Triggersvalid$(this$_9):=Mask[null, Triggersvalid$(this$_9)] - perm];
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_four$ might not hold. Assertion Triggersf$(this$_9, x, y, z) might not hold. (0005b.vpr@143.12--143.82) [216292]"}
        Triggersf$(Heap, this$_9, x_4, y_4_1, z_4);
      assume false;
    }
    assume (forall x_5_1_1: int, y_5_1: int, z_5_1_1: int ::
      { Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, x_5_1_1, y_5_1, z_5_1_1) }
      Triggersf$(Heap, this$_9, x_5_1_1, y_5_1, z_5_1_1)
    );
    if (*) {
      assert {:msg "  Postcondition of Triggerstriggers_four$ might not hold. Assertion Triggersf$(this$_9, x, y, z) might not hold. (0005b.vpr@144.12--144.114) [216293]"}
        Triggersf$(Heap, this$_9, x_6, y_6_2, z_6);
      assert {:msg "  Postcondition of Triggerstriggers_four$ might not hold. Assertion Triggersf$(this$_9, z, y, x) might not hold. (0005b.vpr@144.12--144.114) [216294]"}
        Triggersf$(Heap, this$_9, z_6, y_6_2, x_6);
      assume false;
    }
    assume (forall x_7_1_1: int, y_7_1: int, z_7_1_1: int ::
      { Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, x_7_1_1, y_7_1, z_7_1_1) } { Triggersf$#frame(Heap[null, Triggersvalid$(this$_9)], this$_9, z_7_1_1, y_7_1, x_7_1_1) }
      Triggersf$(Heap, this$_9, x_7_1_1, y_7_1, z_7_1_1) && Triggersf$(Heap, this$_9, z_7_1_1, y_7_1, x_7_1_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Triggerstriggers_five$
// ==================================================

procedure Triggerstriggers_five$(this$_10: Ref, k$_4: Perm, c: bool, d: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$_4: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_10, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_10 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_4;
    assume state(Heap, Mask);
    assume k$_4 < FullPerm;
    assume state(Heap, Mask);
    if (c) {
      assume d;
    }
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(this$_10):=Mask[null, Triggersvalid$(this$_10)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Int, fresh__419: Bool :: { Triggersi$(this$_10, x, fresh__419) } true ==> Triggersi$(this$_10, x, c ==> d))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Triggersi$ might not hold. Assertion this$_10 != null might not hold. (0005b.vpr@156.39--156.71) [216295]"}
            this$_10 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersi$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_10) (0005b.vpr@156.39--156.71) [216296]"}
            NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_10)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: int, fresh__419_1: bool ::
      { Triggersi$#frame(Heap[null, Triggersvalid$(this$_10)], this$_10, x_1, fresh__419_1) }
      Triggersi$(Heap, this$_10, x_1, c ==> d)
    );
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
    PostMask := PostMask[null, Triggersvalid$(this$_10):=PostMask[null, Triggersvalid$(this$_10)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Triggersi$(this$_10, 4, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Triggersi$ might not hold. Assertion this$_10 != null might not hold. (0005b.vpr@158.11--158.40) [216297]"}
          this$_10 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Triggersi$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_10) (0005b.vpr@158.11--158.40) [216298]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_10)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Triggersi$(PostHeap, this$_10, 4, true);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_4, $allocated];
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Triggerstriggers_five$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_10) (0005b.vpr@157.11--157.47) [216299]"}
        perm <= Mask[null, Triggersvalid$(this$_10)];
    }
    Mask := Mask[null, Triggersvalid$(this$_10):=Mask[null, Triggersvalid$(this$_10)] - perm];
    assert {:msg "  Postcondition of Triggerstriggers_five$ might not hold. Assertion Triggersi$(this$_10, 4, true) might not hold. (0005b.vpr@158.11--158.40) [216300]"}
      Triggersi$(Heap, this$_10, 4, true);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Triggerstriggers_six$
// ==================================================

procedure Triggerstriggers_six$(this$_11: Ref, k$_5: Perm, c: int, d: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_11, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_11 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_5;
    assume state(Heap, Mask);
    assume k$_5 < FullPerm;
    assume state(Heap, Mask);
    assume c > d;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Triggersvalid$(this$_11):=Mask[null, Triggersvalid$(this$_11)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Int, fresh__420: Bool :: { Triggersi$(this$_11, x, fresh__420) } true ==> Triggersi$(this$_11, x, c > d))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Triggersi$ might not hold. Assertion this$_11 != null might not hold. (0005b.vpr@170.39--170.69) [216301]"}
            this$_11 != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Triggersi$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_11) (0005b.vpr@170.39--170.69) [216302]"}
            NoPerm < perm ==> NoPerm < Mask[null, Triggersvalid$(this$_11)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: int, fresh__420_1: bool ::
      { Triggersi$#frame(Heap[null, Triggersvalid$(this$_11)], this$_11, x_1, fresh__420_1) }
      Triggersi$(Heap, this$_11, x_1, c > d)
    );
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
    PostMask := PostMask[null, Triggersvalid$(this$_11):=PostMask[null, Triggersvalid$(this$_11)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Triggersi$(this$_11, 4, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Triggersi$ might not hold. Assertion this$_11 != null might not hold. (0005b.vpr@172.11--172.40) [216303]"}
          this$_11 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Triggersi$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_11) (0005b.vpr@172.11--172.40) [216304]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Triggersvalid$(this$_11)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Triggersi$(PostHeap, this$_11, 4, true);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_5, $allocated];
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Triggerstriggers_six$ might not hold. There might be insufficient permission to access Triggersvalid$(this$_11) (0005b.vpr@171.11--171.47) [216305]"}
        perm <= Mask[null, Triggersvalid$(this$_11)];
    }
    Mask := Mask[null, Triggersvalid$(this$_11):=Mask[null, Triggersvalid$(this$_11)] - perm];
    assert {:msg "  Postcondition of Triggerstriggers_six$ might not hold. Assertion Triggersi$(this$_11, 4, true) might not hold. (0005b.vpr@172.11--172.40) [216306]"}
      Triggersi$(Heap, this$_11, 4, true);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}