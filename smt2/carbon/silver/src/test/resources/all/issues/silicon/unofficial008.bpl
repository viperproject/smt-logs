// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:17:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial008.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial008-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
// - height 1: get_idx_1
// - height 0: get_idx
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
// Translation of domain PyType
// ==================================================

// The type for domain PyType
type PyTypeDomainType;

// Translation of domain function isInt
function  isInt_1(r_3: Ref): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique path: Field NormalField Ref;
axiom !IsPredicateField(path);
axiom !IsWandField(path);
const unique idx_3: Field NormalField Ref;
axiom !IsPredicateField(idx_3);
axiom !IsWandField(idx_3);

// ==================================================
// Translation of function get_idx
// ==================================================

// Uninterpreted function definitions
function  get_idx(Heap: HeapType, self: Ref): Ref;
function  get_idx'(Heap: HeapType, self: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref ::
  { get_idx(Heap, self) }
  get_idx(Heap, self) == get_idx'(Heap, self) && dummyFunction(get_idx#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { get_idx'(Heap, self) }
  dummyFunction(get_idx#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), get_idx(Heap, self) } { state(Heap, Mask), get_idx#triggerStateless(self), Packet#trigger(Heap, Packet(self)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get_idx(Heap, self) == get_idx_1(Heap, self)
);

// Framing axioms
function  get_idx#frame(frame: FrameType, self: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), get_idx'(Heap, self) } { state(Heap, Mask), get_idx#triggerStateless(self), Packet#trigger(Heap, Packet(self)) }
  state(Heap, Mask) ==> get_idx'(Heap, self) == get_idx#frame(Heap[null, Packet(self)], self)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), get_idx'(Heap, self) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || get_idx#trigger(Heap[null, Packet(self)], self)) ==> (isInt_1(get_idx'(Heap, self)): bool)
);

// Trigger function (controlling recursive postconditions)
function  get_idx#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  get_idx#triggerStateless(self: Ref): Ref;

// Check contract well-formedness and postcondition
procedure get_idx#definedness(self: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
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
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Packet(self):=Mask[null, Packet(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Packet(self), write) in get_idx_1(self))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Packet#trigger(UnfoldingHeap, Packet(self));
      assume UnfoldingHeap[null, Packet(self)] == CombineFrames(FrameFragment(UnfoldingHeap[self, path]), FrameFragment((if UnfoldingHeap[self, path] != null then UnfoldingHeap[null, Path(UnfoldingHeap[self, path])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Packet(self) (unofficial008.vpr@21.1--26.2) [209689]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Packet(self)];
      perm := FullPerm;
      assume self != null;
      UnfoldingMask := UnfoldingMask[self, path:=UnfoldingMask[self, path] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[self, path] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Path(UnfoldingHeap[self, path]):=UnfoldingMask[null, Path(UnfoldingHeap[self, path])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Packet(self), UnfoldingHeap[null, Packet(self)], Path(UnfoldingHeap[self, path]), UnfoldingHeap[null, Path(UnfoldingHeap[self, path])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume UnfoldingHeap[self, path] != null;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_idx_1 might not hold. There might be insufficient permission to access self.path (unofficial008.vpr@25.42--25.57) [209690]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[self, path];
        perm := FullPerm;
        assert {:msg "  Precondition of function get_idx_1 might not hold. There might be insufficient permission to access Path(self.path) (unofficial008.vpr@25.42--25.57) [209691]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Path(UnfoldingHeap[self, path])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Packet#sm(self):=Heap[null, Packet#sm(self)][self, path:=true]];
        if (Heap[self, path] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Packet#sm(self)][o_15, f_20] || Heap[null, Path#sm(Heap[self, path])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Packet#sm(self):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := get_idx_1(Heap, self);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of get_idx might not hold. Assertion isInt(result) might not hold. (unofficial008.vpr@23.11--23.24) [209692]"}
      (isInt_1(Result): bool);
}

// ==================================================
// Translation of function get_idx_1
// ==================================================

// Uninterpreted function definitions
function  get_idx_1(Heap: HeapType, self: Ref): Ref;
function  get_idx_1'(Heap: HeapType, self: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref ::
  { get_idx_1(Heap, self) }
  get_idx_1(Heap, self) == get_idx_1'(Heap, self) && dummyFunction(get_idx_1#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { get_idx_1'(Heap, self) }
  dummyFunction(get_idx_1#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), get_idx_1(Heap, self) } { state(Heap, Mask), get_idx_1#triggerStateless(self), Path#trigger(Heap, Path(Heap[self, path])) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> get_idx_1(Heap, self) == Heap[Heap[self, path], idx_3]
);

// Framing axioms
function  get_idx_1#frame(frame: FrameType, self: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), get_idx_1'(Heap, self) }
  state(Heap, Mask) ==> get_idx_1'(Heap, self) == get_idx_1#frame(CombineFrames(FrameFragment(Heap[self, path]), Heap[null, Path(Heap[self, path])]), self)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), get_idx_1'(Heap, self) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || get_idx_1#trigger(CombineFrames(FrameFragment(Heap[self, path]), Heap[null, Path(Heap[self, path])]), self)) ==> (isInt_1(get_idx_1'(Heap, self)): bool)
);

// Trigger function (controlling recursive postconditions)
function  get_idx_1#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  get_idx_1#triggerStateless(self: Ref): Ref;

// Check contract well-formedness and postcondition
procedure get_idx_1#definedness(self: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, path:=Mask[self, path] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Path(self.path), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self.path (unofficial008.vpr@30.12--30.39) [209693]"}
        HasDirectPerm(Mask, self, path);
    perm := FullPerm;
    Mask := Mask[null, Path(Heap[self, path]):=Mask[null, Path(Heap[self, path])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Path(self.path), write) in self.path.idx)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Path#trigger(UnfoldingHeap, Path(UnfoldingHeap[self, path]));
      assume UnfoldingHeap[null, Path(UnfoldingHeap[self, path])] == FrameFragment(UnfoldingHeap[UnfoldingHeap[self, path], idx_3]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Path(self.path) (unofficial008.vpr@28.1--35.1) [209694]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Path(UnfoldingHeap[self, path])];
      perm := FullPerm;
      assume UnfoldingHeap[self, path] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[self, path], idx_3:=UnfoldingMask[UnfoldingHeap[self, path], idx_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (isInt_1(UnfoldingHeap[UnfoldingHeap[self, path], idx_3]): bool);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.path (unofficial008.vpr@28.1--35.1) [209695]"}
        HasDirectPerm(UnfoldingMask, self, path);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.path (unofficial008.vpr@28.1--35.1) [209696]"}
        HasDirectPerm(UnfoldingMask, self, path);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.path.idx (unofficial008.vpr@28.1--35.1) [209697]"}
        HasDirectPerm(UnfoldingMask, UnfoldingHeap[self, path], idx_3);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Path#sm(Heap[self, path]):=Heap[null, Path#sm(Heap[self, path])][Heap[self, path], idx_3:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[Heap[self, path], idx_3];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of get_idx_1 might not hold. Assertion isInt(result) might not hold. (unofficial008.vpr@31.11--31.24) [209698]"}
      (isInt_1(Result): bool);
}

// ==================================================
// Translation of predicate Packet
// ==================================================

type PredicateType_Packet;
function  Packet(self: Ref): Field PredicateType_Packet FrameType;
function  Packet#sm(self: Ref): Field PredicateType_Packet PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(Packet(self)) }
  PredicateMaskField(Packet(self)) == Packet#sm(self)
);
axiom (forall self: Ref ::
  { Packet(self) }
  IsPredicateField(Packet(self))
);
axiom (forall self: Ref ::
  { Packet(self) }
  getPredWandId(Packet(self)) == 0
);
function  Packet#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Packet#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { Packet(self), Packet(self2) }
  Packet(self) == Packet(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { Packet#sm(self), Packet#sm(self2) }
  Packet#sm(self) == Packet#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { Packet#trigger(Heap, Packet(self)) }
  Packet#everUsed(Packet(self))
);

procedure Packet#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Packet
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, path:=Mask[self, path] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.path != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.path (unofficial008.vpr@11.1--15.2) [209699]"}
        HasDirectPerm(Mask, self, path);
    if (Heap[self, path] != null) {
      
      // -- Check definedness of acc(Path(self.path), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.path (unofficial008.vpr@11.1--15.2) [209700]"}
          HasDirectPerm(Mask, self, path);
      perm := FullPerm;
      Mask := Mask[null, Path(Heap[self, path]):=Mask[null, Path(Heap[self, path])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of self.path != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.path (unofficial008.vpr@11.1--15.2) [209701]"}
        HasDirectPerm(Mask, self, path);
    assume Heap[self, path] != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Path
// ==================================================

type PredicateType_Path;
function  Path(self: Ref): Field PredicateType_Path FrameType;
function  Path#sm(self: Ref): Field PredicateType_Path PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(Path(self)) }
  PredicateMaskField(Path(self)) == Path#sm(self)
);
axiom (forall self: Ref ::
  { Path(self) }
  IsPredicateField(Path(self))
);
axiom (forall self: Ref ::
  { Path(self) }
  getPredWandId(Path(self)) == 1
);
function  Path#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Path#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { Path(self), Path(self2) }
  Path(self) == Path(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { Path#sm(self), Path#sm(self2) }
  Path#sm(self) == Path#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { Path#trigger(Heap, Path(self)) }
  Path#everUsed(Path(self))
);

procedure Path#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Path
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, idx_3:=Mask[self, idx_3] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of isInt(self.idx)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.idx (unofficial008.vpr@17.1--19.2) [209702]"}
        HasDirectPerm(Mask, self, idx_3);
    assume (isInt_1(Heap[self, idx_3]): bool);
    assume state(Heap, Mask);
}