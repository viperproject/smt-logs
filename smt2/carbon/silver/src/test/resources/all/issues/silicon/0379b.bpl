// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:49:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0379b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0379b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
// - height 0: f
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

const unique f1_1: Field NormalField Ref;
axiom !IsPredicateField(f1_1);
axiom !IsWandField(f1_1);
const unique f2_1: Field NormalField Ref;
axiom !IsPredicateField(f2_1);
axiom !IsWandField(f2_1);
const unique val: Field NormalField bool;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function f
// ==================================================

// Uninterpreted function definitions
function  f_6(Heap: HeapType, this: Ref, p_1: Perm): bool;
function  f'(Heap: HeapType, this: Ref, p_1: Perm): bool;
axiom (forall Heap: HeapType, this: Ref, p_1: Perm ::
  { f_6(Heap, this, p_1) }
  f_6(Heap, this, p_1) == f'(Heap, this, p_1) && dummyFunction(f#triggerStateless(this, p_1))
);
axiom (forall Heap: HeapType, this: Ref, p_1: Perm ::
  { f'(Heap, this, p_1) }
  dummyFunction(f#triggerStateless(this, p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, p_1: Perm ::
  { state(Heap, Mask), f_6(Heap, this, p_1) } { state(Heap, Mask), f#triggerStateless(this, p_1), P#trigger(Heap, P(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> NoPerm <= p_1 ==> f_6(Heap, this, p_1)
);

// Framing axioms
function  f#frame(frame: FrameType, this: Ref, p_1: Perm): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, p_1: Perm ::
  { state(Heap, Mask), f'(Heap, this, p_1) }
  state(Heap, Mask) ==> f'(Heap, this, p_1) == f#frame(ConditionalFrame(p_1, Heap[null, P(this)]), this, p_1)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, this: Ref, p_1: Perm): bool;

// State-independent trigger function
function  f#triggerStateless(this: Ref, p_1: Perm): bool;

// Check contract well-formedness and postcondition
procedure f#definedness(this: Ref, p_1: Perm) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    perm := p_1;
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (0379b.vpr@7.12--7.27) [204463]"}
      perm >= NoPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(self: Ref): Field PredicateType_P FrameType;
function  P#sm(self: Ref): Field PredicateType_P PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(P(self)) }
  PredicateMaskField(P(self)) == P#sm(self)
);
axiom (forall self: Ref ::
  { P(self) }
  IsPredicateField(P(self))
);
axiom (forall self: Ref ::
  { P(self) }
  getPredWandId(P(self)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { P(self), P(self2) }
  P(self) == P(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { P#sm(self), P#sm(self2) }
  P#sm(self) == P#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { P#trigger(Heap, P(self)) }
  P#everUsed(P(self))
);

procedure P#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f1_1:=Mask[self, f1_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(u32(self.f1), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.f1 (0379b.vpr@13.1--15.2) [204464]"}
        HasDirectPerm(Mask, self, f1_1);
    perm := FullPerm;
    Mask := Mask[null, u32(Heap[self, f1_1]):=Mask[null, u32(Heap[self, f1_1])] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f2_1:=Mask[self, f2_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(u32(self.f2), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.f2 (0379b.vpr@13.1--15.2) [204465]"}
        HasDirectPerm(Mask, self, f2_1);
    perm := FullPerm;
    Mask := Mask[null, u32(Heap[self, f2_1]):=Mask[null, u32(Heap[self, f2_1])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate u32
// ==================================================

type PredicateType_u32;
function  u32(self: Ref): Field PredicateType_u32 FrameType;
function  u32#sm(self: Ref): Field PredicateType_u32 PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(u32(self)) }
  PredicateMaskField(u32(self)) == u32#sm(self)
);
axiom (forall self: Ref ::
  { u32(self) }
  IsPredicateField(u32(self))
);
axiom (forall self: Ref ::
  { u32(self) }
  getPredWandId(u32(self)) == 1
);
function  u32#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  u32#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { u32(self), u32(self2) }
  u32(self) == u32(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { u32#sm(self), u32#sm(self2) }
  u32#sm(self) == u32#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { u32#trigger(Heap, u32(self)) }
  u32#everUsed(u32(self))
);

procedure u32#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of u32
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, val:=Mask[self, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}