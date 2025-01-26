// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0509.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0509-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: len
// - height 0: lookup
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

const unique v_35: Field NormalField Ref;
axiom !IsPredicateField(v_35);
axiom !IsWandField(v_35);

// ==================================================
// Translation of function len
// ==================================================

// Uninterpreted function definitions
function  len_1(Heap: HeapType, x: Ref): int;
function  len'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { len_1(Heap, x) }
  len_1(Heap, x) == len'(Heap, x) && dummyFunction(len#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { len'(Heap, x) }
  dummyFunction(len#triggerStateless(x))
);

// Framing axioms
function  len#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), len'(Heap, x) }
  state(Heap, Mask) ==> len'(Heap, x) == len#frame(Heap[null, VecI32(x)], x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), len'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || len#trigger(Heap[null, VecI32(x)], x)) ==> len'(Heap, x) >= 0
);

// Trigger function (controlling recursive postconditions)
function  len#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  len#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure len#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0509.vpr@9.12--9.30) [63654]"}
      perm >= NoPerm;
    Mask := Mask[null, VecI32(x):=Mask[null, VecI32(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume Result >= 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function lookup
// ==================================================

// Uninterpreted function definitions
function  lookup(Heap: HeapType, self: Ref, index: int): int;
function  lookup'(Heap: HeapType, self: Ref, index: int): int;
axiom (forall Heap: HeapType, self: Ref, index: int ::
  { lookup(Heap, self, index) }
  lookup(Heap, self, index) == lookup'(Heap, self, index) && dummyFunction(lookup#triggerStateless(self, index))
);
axiom (forall Heap: HeapType, self: Ref, index: int ::
  { lookup'(Heap, self, index) }
  dummyFunction(lookup#triggerStateless(self, index))
);

// Framing axioms
function  lookup#frame(frame: FrameType, self: Ref, index: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, index: int ::
  { state(Heap, Mask), lookup'(Heap, self, index) }
  state(Heap, Mask) ==> lookup'(Heap, self, index) == lookup#frame(Heap[null, VecI32(self)], self, index)
);

// Trigger function (controlling recursive postconditions)
function  lookup#trigger(frame: FrameType, self: Ref, index: int): bool;

// State-independent trigger function
function  lookup#triggerStateless(self: Ref, index: int): int;

// Check contract well-formedness and postcondition
procedure lookup#definedness(self: Ref, index: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, VecI32(self):=Mask[null, VecI32(self)] + perm];
    assume state(Heap, Mask);
    assume 0 <= index;
    assume state(Heap, Mask);
    
    // -- Check definedness of index < len(self)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@13.55--13.64) [63655]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@13.55--13.64) [63656]"}
          NoPerm < perm ==> NoPerm < Mask[null, VecI32(self)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume index < len_1(Heap, self);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate VecI32
// ==================================================

type PredicateType_VecI32;
function  VecI32(x: Ref): Field PredicateType_VecI32 FrameType;
function  VecI32#sm(x: Ref): Field PredicateType_VecI32 PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(VecI32(x)) }
  PredicateMaskField(VecI32(x)) == VecI32#sm(x)
);
axiom (forall x: Ref ::
  { VecI32(x) }
  IsPredicateField(VecI32(x))
);
axiom (forall x: Ref ::
  { VecI32(x) }
  getPredWandId(VecI32(x)) == 0
);
function  VecI32#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  VecI32#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { VecI32(x), VecI32(x2) }
  VecI32(x) == VecI32(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { VecI32#sm(x), VecI32#sm(x2) }
  VecI32#sm(x) == VecI32#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { VecI32#trigger(Heap, VecI32(x)) }
  VecI32#everUsed(VecI32(x))
);

// ==================================================
// Translation of method store
// ==================================================

procedure vstore(self: Ref, index: int, value: int) returns ()
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
  var i_18: int;
  var i_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, VecI32(self):=Mask[null, VecI32(self)] + perm];
    assume state(Heap, Mask);
    assume 0 <= index;
    assume state(Heap, Mask);
    
    // -- Check definedness of index < len(self)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@16.49--16.58) [63657]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@16.49--16.58) [63658]"}
          NoPerm < perm ==> NoPerm < Mask[null, VecI32(self)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume index < len_1(Heap, self);
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
    PostMask := PostMask[null, VecI32(self):=PostMask[null, VecI32(self)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of len(self) == old(len(self))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@17.27--17.36) [63659]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@17.27--17.36) [63660]"}
          NoPerm < perm ==> NoPerm < PostMask[null, VecI32(self)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@17.44--17.53) [63661]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@17.44--17.53) [63662]"}
          NoPerm < perm ==> NoPerm < oldMask[null, VecI32(self)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume len_1(PostHeap, self) == len_1(oldHeap, self);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of lookup(self, index) == value
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@18.11--18.30) [63663]"}
          NoPerm < perm ==> NoPerm < PostMask[null, VecI32(self)];
        assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= index might not hold. (0509.vpr@18.11--18.30) [63664]"}
          0 <= index;
        assert {:msg "  Precondition of function lookup might not hold. Assertion index < len(self) might not hold. (0509.vpr@18.11--18.30) [63665]"}
          index < len_1(PostHeap, self);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume lookup(PostHeap, self, index) == value;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { lookup(self, i) } 0 <= i && (i < len(self) && i != index) ==> lookup(self, i) == old(lookup(self, i)))
      if (*) {
        if (0 <= i_18) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := 1 / 2;
            assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@19.59--19.68) [63666]"}
              perm >= NoPerm;
            assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@19.59--19.68) [63667]"}
              NoPerm < perm ==> NoPerm < PostMask[null, VecI32(self)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i_18 && (i_18 < len_1(PostHeap, self) && i_18 != index)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@20.5--20.20) [63668]"}
              NoPerm < perm ==> NoPerm < PostMask[null, VecI32(self)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= i might not hold. (0509.vpr@20.5--20.20) [63669]"}
              0 <= i_18;
            assert {:msg "  Precondition of function lookup might not hold. Assertion i < len(self) might not hold. (0509.vpr@20.5--20.20) [63670]"}
              i_18 < len_1(PostHeap, self);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@20.28--20.42) [63671]"}
              NoPerm < perm ==> NoPerm < oldMask[null, VecI32(self)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= i might not hold. (0509.vpr@20.28--20.42) [63672]"}
              0 <= i_18;
            assert {:msg "  Precondition of function lookup might not hold. Assertion i < len(self) might not hold. (0509.vpr@20.28--20.42) [63673]"}
              i_18 < len_1(oldHeap, self);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { lookup#frame(PostHeap[null, VecI32(self)], self, i_1) }
      0 <= i_1 && (i_1 < len_1(PostHeap, self) && i_1 != index) ==> lookup(PostHeap, self, i_1) == lookup(oldHeap, self, i_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of store might not hold. There might be insufficient permission to access VecI32(self) (0509.vpr@17.11--17.54) [63674]"}
        perm <= Mask[null, VecI32(self)];
    }
    Mask := Mask[null, VecI32(self):=Mask[null, VecI32(self)] - perm];
    assert {:msg "  Postcondition of store might not hold. Assertion len(self) == old(len(self)) might not hold. (0509.vpr@17.11--17.54) [63675]"}
      len_1(Heap, self) == len_1(oldHeap, self);
    assert {:msg "  Postcondition of store might not hold. Assertion lookup(self, index) == value might not hold. (0509.vpr@18.11--18.39) [63676]"}
      lookup(Heap, self, index) == value;
    if (*) {
      if (0 <= i_2 && (i_2 < len_1(Heap, self) && i_2 != index)) {
        assert {:msg "  Postcondition of store might not hold. Assertion lookup(self, i) == old(lookup(self, i)) might not hold. (0509.vpr@19.11--20.43) [63677]"}
          lookup(Heap, self, i_2) == lookup(oldHeap, self, i_2);
      }
      assume false;
    }
    assume (forall i_3_1: int ::
      { lookup#frame(Heap[null, VecI32(self)], self, i_3_1) }
      0 <= i_3_1 && (i_3_1 < len_1(Heap, self) && i_3_1 != index) ==> lookup(Heap, self, i_3_1) == lookup(oldHeap, self, i_3_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method merge_sort_part
// ==================================================

procedure merge_sort_part(arr: Ref, from_1: int, until: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var left_copy: Ref;
  var mid: int;
  var index: int;
  var left_index: int;
  var right_index: int;
  var i_3: int;
  var j_15: int;
  var i_4: int;
  var j_12: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var i_3_2: int;
  var j_3: int;
  var left_value: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i_14: int;
  var j_13: int;
  var i_7_1: int;
  var j_6_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[arr, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, VecI32(arr):=Mask[null, VecI32(arr)] + perm];
    assume state(Heap, Mask);
    assume 0 <= from_1;
    assume from_1 <= until;
    assume state(Heap, Mask);
    
    // -- Check definedness of until <= len(arr)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@23.66--23.74) [63678]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@23.66--23.74) [63679]"}
          NoPerm < perm ==> NoPerm < Mask[null, VecI32(arr)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume until <= len_1(Heap, arr);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[left_copy, $allocated];
  
  // -- Translating statement: inhale until - from > 1 -- 0509.vpr@25.11--25.27
    assume until - from_1 > 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: mid := from + (until - from) \ 2 -- 0509.vpr@27.3--27.45
    mid := from_1 + (until - from_1) div 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: index := from -- 0509.vpr@29.3--29.26
    index := from_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: left_index := 0 -- 0509.vpr@30.3--30.28
    left_index := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: right_index := mid -- 0509.vpr@31.3--31.31
    right_index := mid;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(VecI32(left_copy), write) -- 0509.vpr@33.3--33.32
    perm := FullPerm;
    Mask := Mask[null, VecI32(left_copy):=Mask[null, VecI32(left_copy)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { lookup(arr, i), lookup(arr, j) }
  //     right_index <= i && (i < j && j < until) ==>
  //     lookup(arr, i) <= lookup(arr, j)) -- 0509.vpr@34.3--34.132
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { lookup(arr, i), lookup(arr, j) } right_index <= i && (i < j && j < until) ==> lookup(arr, i) <= lookup(arr, j))
      if (*) {
        if (right_index <= i_3 && (i_3 < j_15 && j_15 < until)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@34.102--34.115) [63681]"}
              NoPerm < perm ==> NoPerm < Mask[null, VecI32(arr)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= i might not hold. (0509.vpr@34.102--34.115) [63682]"}
              0 <= i_3;
            assert {:msg "  Precondition of function lookup might not hold. Assertion i < len(arr) might not hold. (0509.vpr@34.102--34.115) [63683]"}
              i_3 < len_1(Heap, arr);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@34.119--34.132) [63684]"}
              NoPerm < perm ==> NoPerm < Mask[null, VecI32(arr)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= j might not hold. (0509.vpr@34.119--34.132) [63685]"}
              0 <= j_15;
            assert {:msg "  Precondition of function lookup might not hold. Assertion j < len(arr) might not hold. (0509.vpr@34.119--34.132) [63686]"}
              j_15 < len_1(Heap, arr);
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
    assume (forall i_1: int, j_1: int ::
      { lookup#frame(Heap[null, VecI32(arr)], arr, i_1), lookup#frame(Heap[null, VecI32(arr)], arr, j_1) }
      right_index <= i_1 && (i_1 < j_1 && j_1 < until) ==> lookup(Heap, arr, i_1) <= lookup(Heap, arr, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale left_index < len(left_copy) -- 0509.vpr@36.10--36.37
    assume state(Heap, Mask);
    
    // -- Check definedness of left_index < len(left_copy)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function len might not hold. Fraction 1 / 2 might be negative. (0509.vpr@36.23--36.37) [63687]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function len might not hold. There might be insufficient permission to access VecI32(left_copy) (0509.vpr@36.23--36.37) [63688]"}
          NoPerm < perm ==> NoPerm < Mask[null, VecI32(left_copy)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume left_index < len_1(Heap, left_copy);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int, j: Int ::
  //     { lookup(arr, i), lookup(arr, j) }
  //     right_index <= i && (i < j && j < until) ==>
  //     lookup(arr, i) <= lookup(arr, j)) -- 0509.vpr@38.3--38.131
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, j: Int :: { lookup(arr, i), lookup(arr, j) } right_index <= i && (i < j && j < until) ==> lookup(arr, i) <= lookup(arr, j))
      if (*) {
        if (right_index <= i_4 && (i_4 < j_12 && j_12 < until)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@38.101--38.114) [63689]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, VecI32(arr)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= i might not hold. (0509.vpr@38.101--38.114) [63690]"}
              0 <= i_4;
            assert {:msg "  Precondition of function lookup might not hold. Assertion i < len(arr) might not hold. (0509.vpr@38.101--38.114) [63691]"}
              i_4 < len_1(ExhaleWellDef0Heap, arr);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@38.118--38.131) [63692]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, VecI32(arr)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= j might not hold. (0509.vpr@38.118--38.131) [63693]"}
              0 <= j_12;
            assert {:msg "  Precondition of function lookup might not hold. Assertion j < len(arr) might not hold. (0509.vpr@38.118--38.131) [63694]"}
              j_12 < len_1(ExhaleWellDef0Heap, arr);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (right_index <= i_3_2 && (i_3_2 < j_3 && j_3 < until)) {
        assert {:msg "  Assert might fail. Assertion lookup(arr, i) <= lookup(arr, j) might not hold. (0509.vpr@38.10--38.131) [63695]"}
          lookup(Heap, arr, i_3_2) <= lookup(Heap, arr, j_3);
      }
      assume false;
    }
    assume (forall i_4_1_1: int, j_4_1_1: int ::
      { lookup#frame(Heap[null, VecI32(arr)], arr, i_4_1_1), lookup#frame(Heap[null, VecI32(arr)], arr, j_4_1_1) }
      right_index <= i_4_1_1 && (i_4_1_1 < j_4_1_1 && j_4_1_1 < until) ==> lookup(Heap, arr, i_4_1_1) <= lookup(Heap, arr, j_4_1_1)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: left_value := lookup(left_copy, left_index) -- 0509.vpr@39.3--39.55
    
    // -- Check definedness of lookup(left_copy, left_index)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(left_copy) (0509.vpr@39.27--39.55) [63696]"}
          NoPerm < perm ==> NoPerm < Mask[null, VecI32(left_copy)];
        assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= left_index might not hold. (0509.vpr@39.27--39.55) [63697]"}
          0 <= left_index;
        assert {:msg "  Precondition of function lookup might not hold. Assertion left_index < len(left_copy) might not hold. (0509.vpr@39.27--39.55) [63698]"}
          left_index < len_1(Heap, left_copy);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    left_value := lookup(Heap, left_copy, left_index);
    assume state(Heap, Mask);
  
  // -- Translating statement: store(arr, index, left_value) -- 0509.vpr@41.3--41.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method store might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@41.3--41.31) [63699]"}
          perm <= Mask[null, VecI32(arr)];
      }
      Mask := Mask[null, VecI32(arr):=Mask[null, VecI32(arr)] - perm];
      assert {:msg "  The precondition of method store might not hold. Assertion 0 <= index might not hold. (0509.vpr@41.3--41.31) [63700]"}
        0 <= index;
      assert {:msg "  The precondition of method store might not hold. Assertion index < len(arr) might not hold. (0509.vpr@41.3--41.31) [63701]"}
        index < len_1(Heap, arr);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, VecI32(arr):=Mask[null, VecI32(arr)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume len_1(Heap, arr) == len_1(PreCallHeap, arr);
      assume state(Heap, Mask);
      assume lookup(Heap, arr, index) == left_value;
      assume state(Heap, Mask);
      assume (forall i_5_1: int ::
        { lookup#frame(Heap[null, VecI32(arr)], arr, i_5_1) }
        0 <= i_5_1 && (i_5_1 < len_1(Heap, arr) && i_5_1 != index) ==> lookup(Heap, arr, i_5_1) == lookup(PreCallHeap, arr, i_5_1)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int, j: Int ::
  //     { lookup(arr, i), lookup(arr, j) }
  //     right_index <= i && (i < j && j < until) ==>
  //     lookup(arr, i) <= lookup(arr, j)) -- 0509.vpr@43.3--43.131
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, j: Int :: { lookup(arr, i), lookup(arr, j) } right_index <= i && (i < j && j < until) ==> lookup(arr, i) <= lookup(arr, j))
      if (*) {
        if (right_index <= i_14 && (i_14 < j_13 && j_13 < until)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@43.101--43.114) [63702]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, VecI32(arr)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= i might not hold. (0509.vpr@43.101--43.114) [63703]"}
              0 <= i_14;
            assert {:msg "  Precondition of function lookup might not hold. Assertion i < len(arr) might not hold. (0509.vpr@43.101--43.114) [63704]"}
              i_14 < len_1(ExhaleWellDef0Heap, arr);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access VecI32(arr) (0509.vpr@43.118--43.131) [63705]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, VecI32(arr)];
            assert {:msg "  Precondition of function lookup might not hold. Assertion 0 <= j might not hold. (0509.vpr@43.118--43.131) [63706]"}
              0 <= j_13;
            assert {:msg "  Precondition of function lookup might not hold. Assertion j < len(arr) might not hold. (0509.vpr@43.118--43.131) [63707]"}
              j_13 < len_1(ExhaleWellDef0Heap, arr);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (right_index <= i_7_1 && (i_7_1 < j_6_2 && j_6_2 < until)) {
        assert {:msg "  Assert might fail. Assertion lookup(arr, i) <= lookup(arr, j) might not hold. (0509.vpr@43.10--43.131) [63708]"}
          lookup(Heap, arr, i_7_1) <= lookup(Heap, arr, j_6_2);
      }
      assume false;
    }
    assume (forall i_8_1_1: int, j_7_1_1: int ::
      { lookup#frame(Heap[null, VecI32(arr)], arr, i_8_1_1), lookup#frame(Heap[null, VecI32(arr)], arr, j_7_1_1) }
      right_index <= i_8_1_1 && (i_8_1_1 < j_7_1_1 && j_7_1_1 < until) ==> lookup(Heap, arr, i_8_1_1) <= lookup(Heap, arr, j_7_1_1)
    );
    assume state(Heap, Mask);
}