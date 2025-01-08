// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:05:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0183.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0183-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique v_36: Field NormalField int;
axiom !IsPredicateField(v_36);
axiom !IsWandField(v_36);

// ==================================================
// Translation of predicate valid__Cell
// ==================================================

type PredicateType_valid__Cell;
function  valid__Cell(self: Ref, rd_1: Perm): Field PredicateType_valid__Cell FrameType;
function  valid__Cell#sm(self: Ref, rd_1: Perm): Field PredicateType_valid__Cell PMaskType;
axiom (forall self: Ref, rd_1: Perm ::
  { PredicateMaskField(valid__Cell(self, rd_1)) }
  PredicateMaskField(valid__Cell(self, rd_1)) == valid__Cell#sm(self, rd_1)
);
axiom (forall self: Ref, rd_1: Perm ::
  { valid__Cell(self, rd_1) }
  IsPredicateField(valid__Cell(self, rd_1))
);
axiom (forall self: Ref, rd_1: Perm ::
  { valid__Cell(self, rd_1) }
  getPredWandId(valid__Cell(self, rd_1)) == 0
);
function  valid__Cell#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid__Cell#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, rd_1: Perm, self2: Ref, rd2: Perm ::
  { valid__Cell(self, rd_1), valid__Cell(self2, rd2) }
  valid__Cell(self, rd_1) == valid__Cell(self2, rd2) ==> self == self2 && rd_1 == rd2
);
axiom (forall self: Ref, rd_1: Perm, self2: Ref, rd2: Perm ::
  { valid__Cell#sm(self, rd_1), valid__Cell#sm(self2, rd2) }
  valid__Cell#sm(self, rd_1) == valid__Cell#sm(self2, rd2) ==> self == self2 && rd_1 == rd2
);

axiom (forall Heap: HeapType, self: Ref, rd_1: Perm ::
  { valid__Cell#trigger(Heap, valid__Cell(self, rd_1)) }
  valid__Cell#everUsed(valid__Cell(self, rd_1))
);

procedure valid__Cell#definedness(self: Ref, rd_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid__Cell
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := rd_1;
    assert {:msg "  Predicate might not be well-formed. Fraction rd might be negative. (0183.vpr@7.1--9.2) [203559]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> self != null;
    Mask := Mask[self, v_36:=Mask[self, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo_ok
// ==================================================

procedure foo_ok(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0183.vpr@12.12--12.44) [203560]"}
      perm >= NoPerm;
    Mask := Mask[null, valid__Cell(self, 1 / 2):=Mask[null, valid__Cell(self, 1 / 2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid__Cell(self, 1 / 2), 1 / 2) in self.v) == 1
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid__Cell#trigger(UnfoldingHeap, valid__Cell(self, 1 / 2));
      assume UnfoldingHeap[null, valid__Cell(self, 1 / 2)] == ConditionalFrame(1 / 2, FrameFragment(UnfoldingHeap[self, v_36]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0183.vpr@13.12--13.71) [203561]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Cell(self, 1 / 2) (0183.vpr@13.12--13.71) [203562]"}
          perm <= UnfoldingMask[null, valid__Cell(self, 1 / 2)];
      }
      UnfoldingMask := UnfoldingMask[null, valid__Cell(self, 1 / 2):=UnfoldingMask[null, valid__Cell(self, 1 / 2)] - perm];
      perm := 1 / 2 * (1 / 2);
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 * (1 / 2) might be negative. (0183.vpr@13.12--13.71) [203563]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> self != null;
      UnfoldingMask := UnfoldingMask[self, v_36:=UnfoldingMask[self, v_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self.v (0183.vpr@13.12--13.71) [203564]"}
        HasDirectPerm(UnfoldingMask, self, v_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__Cell#sm(self, 1 / 2):=Heap[null, valid__Cell#sm(self, 1 / 2)][self, v_36:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__Cell#sm(self, 1 / 2):=Heap[null, valid__Cell#sm(self, 1 / 2)][self, v_36:=true]];
        assume state(Heap, Mask);
    assume Heap[self, v_36] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
}

// ==================================================
// Translation of method foo_fail
// ==================================================

procedure foo_fail(self: Ref, rd_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume rd_1 < FullPerm;
    assume state(Heap, Mask);
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0183.vpr@18.12--18.42) [203565]"}
      perm >= NoPerm;
    Mask := Mask[null, valid__Cell(self, rd_1):=Mask[null, valid__Cell(self, rd_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid__Cell(self, rd), rd) in self.v) == 1
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assert {:msg "  Contract might not be well-formed. Fraction rd might not be positive. (0183.vpr@21.12--21.69) [203566]"}
        rd_1 > NoPerm;
      assume valid__Cell#trigger(UnfoldingHeap, valid__Cell(self, rd_1));
      assume UnfoldingHeap[null, valid__Cell(self, rd_1)] == ConditionalFrame(rd_1, FrameFragment(UnfoldingHeap[self, v_36]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := rd_1;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0183.vpr@21.12--21.69) [203567]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Cell(self, rd) (0183.vpr@21.12--21.69) [203568]"}
          perm <= UnfoldingMask[null, valid__Cell(self, rd_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid__Cell(self, rd_1):=UnfoldingMask[null, valid__Cell(self, rd_1)] - perm];
      perm := rd_1 * rd_1;
      assert {:msg "  Contract might not be well-formed. Fraction rd * rd might be negative. (0183.vpr@21.12--21.69) [203569]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> self != null;
      UnfoldingMask := UnfoldingMask[self, v_36:=UnfoldingMask[self, v_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self.v (0183.vpr@21.12--21.69) [203570]"}
        HasDirectPerm(UnfoldingMask, self, v_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__Cell#sm(self, rd_1):=Heap[null, valid__Cell#sm(self, rd_1)][self, v_36:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__Cell#sm(self, rd_1):=Heap[null, valid__Cell#sm(self, rd_1)][self, v_36:=true]];
        assume state(Heap, Mask);
    assume Heap[self, v_36] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
}

// ==================================================
// Translation of method foo_fail_gist
// ==================================================

procedure foo_fail_gist(self: Ref, rd_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume rd_1 < FullPerm;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert none < rd * rd -- 0183.vpr@29.3--29.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion none < rd * rd might not hold. (0183.vpr@29.10--29.24) [203571]"}
      NoPerm < rd_1 * rd_1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method bar
// ==================================================

procedure bar_1(self: Ref, rd_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume rd_1 < FullPerm;
    assume state(Heap, Mask);
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0183.vpr@34.12--34.42) [203572]"}
      perm >= NoPerm;
    Mask := Mask[null, valid__Cell(self, rd_1):=Mask[null, valid__Cell(self, rd_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid__Cell(self, rd), rd) -- 0183.vpr@36.3--36.40
    assert {:msg "  Unfolding valid__Cell(self, rd) might fail. Fraction rd might not be positive. (0183.vpr@36.3--36.40) [203573]"}
      rd_1 > NoPerm;
    assume valid__Cell#trigger(Heap, valid__Cell(self, rd_1));
    assume Heap[null, valid__Cell(self, rd_1)] == ConditionalFrame(rd_1, FrameFragment(Heap[self, v_36]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := rd_1;
    assert {:msg "  Unfolding valid__Cell(self, rd) might fail. Fraction rd might be negative. (0183.vpr@36.3--36.40) [203574]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid__Cell(self, rd) might fail. There might be insufficient permission to access valid__Cell(self, rd) (0183.vpr@36.3--36.40) [203575]"}
        perm <= Mask[null, valid__Cell(self, rd_1)];
    }
    Mask := Mask[null, valid__Cell(self, rd_1):=Mask[null, valid__Cell(self, rd_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid__Cell(self, rd_1))) {
        havoc newVersion;
        Heap := Heap[null, valid__Cell(self, rd_1):=newVersion];
      }
    perm := rd_1 * rd_1;
    assert {:msg "  Unfolding valid__Cell(self, rd) might fail. Fraction rd * rd might be negative. (0183.vpr@36.3--36.40) [203576]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> self != null;
    Mask := Mask[self, v_36:=Mask[self, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert self.v >= self.v -- 0183.vpr@39.3--39.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of self.v >= self.v
      assert {:msg "  Assert might fail. There might be insufficient permission to access self.v (0183.vpr@39.10--39.26) [203577]"}
        HasDirectPerm(ExhaleWellDef0Mask, self, v_36);
      assert {:msg "  Assert might fail. There might be insufficient permission to access self.v (0183.vpr@39.10--39.26) [203578]"}
        HasDirectPerm(ExhaleWellDef0Mask, self, v_36);
    assert {:msg "  Assert might fail. Assertion self.v >= self.v might not hold. (0183.vpr@39.10--39.26) [203579]"}
      Heap[self, v_36] >= Heap[self, v_36];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method bar_gist
// ==================================================

procedure bar_gist(self: Ref, rd_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume rd_1 < FullPerm;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert none < rd * rd -- 0183.vpr@47.3--47.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion none < rd * rd might not hold. (0183.vpr@47.10--47.24) [203580]"}
      NoPerm < rd_1 * rd_1;
    assume state(Heap, Mask);
}