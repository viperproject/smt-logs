// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:37:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0059.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0059-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
const unique Lalax$: Field NormalField int;
axiom !IsPredicateField(Lalax$);
axiom !IsWandField(Lalax$);
const unique par$Lalakoko$this$_2: Field NormalField Ref;
axiom !IsPredicateField(par$Lalakoko$this$_2);
axiom !IsWandField(par$Lalakoko$this$_2);
const unique par$Lalakoko$k$: Field NormalField Perm;
axiom !IsPredicateField(par$Lalakoko$k$);
axiom !IsWandField(par$Lalakoko$k$);

// ==================================================
// Translation of predicate Lala$MonitorInvariant
// ==================================================

type PredicateType_Lala$MonitorInvariant;
function  Lala$MonitorInvariant(this$: Ref): Field PredicateType_Lala$MonitorInvariant FrameType;
function  Lala$MonitorInvariant#sm(this$: Ref): Field PredicateType_Lala$MonitorInvariant PMaskType;
axiom (forall this$: Ref ::
  { PredicateMaskField(Lala$MonitorInvariant(this$)) }
  PredicateMaskField(Lala$MonitorInvariant(this$)) == Lala$MonitorInvariant#sm(this$)
);
axiom (forall this$: Ref ::
  { Lala$MonitorInvariant(this$) }
  IsPredicateField(Lala$MonitorInvariant(this$))
);
axiom (forall this$: Ref ::
  { Lala$MonitorInvariant(this$) }
  getPredWandId(Lala$MonitorInvariant(this$)) == 0
);
function  Lala$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Lala$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$: Ref, this$2: Ref ::
  { Lala$MonitorInvariant(this$), Lala$MonitorInvariant(this$2) }
  Lala$MonitorInvariant(this$) == Lala$MonitorInvariant(this$2) ==> this$ == this$2
);
axiom (forall this$: Ref, this$2: Ref ::
  { Lala$MonitorInvariant#sm(this$), Lala$MonitorInvariant#sm(this$2) }
  Lala$MonitorInvariant#sm(this$) == Lala$MonitorInvariant#sm(this$2) ==> this$ == this$2
);

axiom (forall Heap: HeapType, this$: Ref ::
  { Lala$MonitorInvariant#trigger(Heap, Lala$MonitorInvariant(this$)) }
  Lala$MonitorInvariant#everUsed(Lala$MonitorInvariant(this$))
);

procedure Lala$MonitorInvariant#definedness(this$: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Lala$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Lalainv$
// ==================================================

type PredicateType_Lalainv$;
function  Lalainv$(this$_1: Ref): Field PredicateType_Lalainv$ FrameType;
function  Lalainv$#sm(this$_1: Ref): Field PredicateType_Lalainv$ PMaskType;
axiom (forall this$_1: Ref ::
  { PredicateMaskField(Lalainv$(this$_1)) }
  PredicateMaskField(Lalainv$(this$_1)) == Lalainv$#sm(this$_1)
);
axiom (forall this$_1: Ref ::
  { Lalainv$(this$_1) }
  IsPredicateField(Lalainv$(this$_1))
);
axiom (forall this$_1: Ref ::
  { Lalainv$(this$_1) }
  getPredWandId(Lalainv$(this$_1)) == 1
);
function  Lalainv$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Lalainv$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Lalainv$(this$_1), Lalainv$(this$_12) }
  Lalainv$(this$_1) == Lalainv$(this$_12) ==> this$_1 == this$_12
);
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Lalainv$#sm(this$_1), Lalainv$#sm(this$_12) }
  Lalainv$#sm(this$_1) == Lalainv$#sm(this$_12) ==> this$_1 == this$_12
);

axiom (forall Heap: HeapType, this$_1: Ref ::
  { Lalainv$#trigger(Heap, Lalainv$(this$_1)) }
  Lalainv$#everUsed(Lalainv$(this$_1))
);

procedure Lalainv$#definedness(this$_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Lalainv$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_1, $allocated];
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Lalax$:=Mask[this$_1, Lalax$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Lalakoko$
// ==================================================

procedure Lalakoko$(this$_2: Ref, k$: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var n$: Ref;
  var a$: Ref;
  var b$: Ref;
  var c$: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_2 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Lalainv$(this$_2):=Mask[null, Lalainv$(this$_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[n$, $allocated];
    assume Heap[a$, $allocated];
    assume Heap[b$, $allocated];
    assume Heap[c$, $allocated];
  
  // -- Translating statement: assert (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$) ==
  //   old((unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$)) -- 0059.vpr@42.3--42.137
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$) == old((unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Lalainv$#trigger(UnfoldingHeap, Lalainv$(this$_2));
      assume UnfoldingHeap[null, Lalainv$(this$_2)] == FrameFragment(UnfoldingHeap[this$_2, Lalax$]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Lalainv$(this$_2) (0059.vpr@42.10--42.137) [193098]"}
          perm <= UnfoldingMask[null, Lalainv$(this$_2)];
      }
      UnfoldingMask := UnfoldingMask[null, Lalainv$(this$_2):=UnfoldingMask[null, Lalainv$(this$_2)] - perm];
      perm := FullPerm;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Lalax$:=UnfoldingMask[this$_2, Lalax$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this$_2.Lalax$ (0059.vpr@42.10--42.137) [193099]"}
        HasDirectPerm(UnfoldingMask, this$_2, Lalax$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Lalainv$#sm(this$_2):=Heap[null, Lalainv$#sm(this$_2)][this$_2, Lalax$:=true]];
        assume state(Heap, Mask);
      UnfoldingHeap := oldHeap;
      UnfoldingMask := oldMask;
      assume Lalainv$#trigger(UnfoldingHeap, Lalainv$(this$_2));
      assume UnfoldingHeap[null, Lalainv$(this$_2)] == FrameFragment(UnfoldingHeap[this$_2, Lalax$]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Lalainv$(this$_2) (0059.vpr@42.10--42.137) [193100]"}
          perm <= UnfoldingMask[null, Lalainv$(this$_2)];
      }
      UnfoldingMask := UnfoldingMask[null, Lalainv$(this$_2):=UnfoldingMask[null, Lalainv$(this$_2)] - perm];
      perm := FullPerm;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Lalax$:=UnfoldingMask[this$_2, Lalax$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this$_2.Lalax$ (0059.vpr@42.10--42.137) [193101]"}
        HasDirectPerm(UnfoldingMask, this$_2, Lalax$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Lalainv$#sm(this$_2):=Heap[null, Lalainv$#sm(this$_2)][this$_2, Lalax$:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$) == old((unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$)) might not hold. (0059.vpr@42.10--42.137) [193102]"}
      Heap[this$_2, Lalax$] == oldHeap[this$_2, Lalax$];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Lalainv$#sm(this$_2):=Heap[null, Lalainv$#sm(this$_2)][this$_2, Lalax$:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}