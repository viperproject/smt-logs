// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:34:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/invariants/while1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/invariants/while1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  IdenticalOnKnownLocationsLiberal(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
function  SumHeap(Heap: HeapType, Heap1: HeapType, mask1: MaskType, Heap2: HeapType, mask2: MaskType): bool;
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
// IdenticalOnKnownLiberalLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
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
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission. But don't propagate information  of locations that are not known-folded to allow for equating with multiple different (but compatible) heaps
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> ExhaleHeap[null, PredicateMaskField(pm_f_22)][o2_22, f_37]
  )
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission (but don't propagate information about locations that are not known-folded)
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[null, WandMaskField(pm_f_22)][o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> ExhaleHeap[null, WandMaskField(pm_f_22)][o2_22, f_37]
  )
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// ==================================================
// Sum of heaps
// ==================================================

axiom (forall Heap: HeapType, Heap1: HeapType, Mask1: MaskType, Heap2: HeapType, Mask2: MaskType ::
  { SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) }
  SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) <==> IdenticalOnKnownLocationsLiberal(Heap1, Heap, Mask1) && IdenticalOnKnownLocationsLiberal(Heap2, Heap, Mask2)
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns (b_24: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (while1.vpr@8.12--8.39) [141490]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (while1.vpr@8.12--8.39) [141491]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (b) -- while1.vpr@10.3--14.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (while1.vpr@11.15--11.28) [141492]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (while1.vpr@11.15--11.28) [141493]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc b_24;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (while1.vpr@11.15--11.28) [141494]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@11.15--11.28) [141495]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume b_24;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: b := !b -- while1.vpr@13.5--13.12
            b_24 := !b_24;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (while1.vpr@11.15--11.28) [141496]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (while1.vpr@11.15--11.28) [141497]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !b_24;
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@11.15--11.28) [141498]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (while1.vpr@8.12--8.39) [141499]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test01 might not hold. Assertion x.f == old(x.f) might not hold. (while1.vpr@8.12--8.39) [141500]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns (b_24: bool)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: while (b) -- while1.vpr@18.3--23.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (while1.vpr@20.15--20.28) [141501]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (while1.vpr@20.15--20.28) [141502]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc b_24;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (while1.vpr@20.15--20.28) [141503]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@20.15--20.28) [141504]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume b_24;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: b := !b -- while1.vpr@22.5--22.12
            b_24 := !b_24;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (while1.vpr@20.15--20.28) [141505]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (while1.vpr@20.15--20.28) [141506]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !b_24;
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@20.15--20.28) [141507]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns (b_24: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: while (b) -- while1.vpr@29.3--35.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (while1.vpr@31.15--31.28) [141508]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (while1.vpr@31.15--31.28) [141509]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc b_24;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (while1.vpr@31.15--31.28) [141510]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@31.15--31.28) [141511]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume b_24;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: exhale acc(x.f, 1 / 4) -- while1.vpr@33.5--33.25
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := 1 / 4;
            assert {:msg "  Exhale might fail. Fraction 1 / 4 might be negative. (while1.vpr@33.12--33.25) [141512]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (while1.vpr@33.12--33.25) [141513]"}
                perm <= Mask[x, f_7];
            }
            Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: b := !b -- while1.vpr@34.5--34.12
            b_24 := !b_24;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (while1.vpr@31.15--31.28) [141514]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (while1.vpr@31.15--31.28) [141515]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !b_24;
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@31.15--31.28) [141516]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test20a
// ==================================================

procedure test20a(x: Ref, y: Ref) returns (n: int)
  modifies Heap, Mask;
{
  var brk_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var frameMask1: MaskType;
  var frameHeap1: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var LabelbrkMask: MaskType;
  var LabelbrkHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    brk_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    if (n == 42) {
      perm := FullPerm;
      assume y != null;
      PostMask := PostMask[y, f_7:=PostMask[y, f_7] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (while1.vpr@41.12--41.39) [141517]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (while1.vpr@41.12--41.39) [141518]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (n != 0) -- while1.vpr@43.3--52.4
    
    // -- Before loop head1
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (while1.vpr@44.15--44.28) [141519]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (while1.vpr@44.15--44.28) [141520]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask1 := Mask;
        frameHeap1 := Heap;
    
    // -- Havoc loop written variables (except locals)
      havoc n;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (while1.vpr@44.15--44.28) [141521]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@44.15--44.28) [141522]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume n != 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: // id = 2
  // n := n - 1 -- while1.vpr@46.5--46.15
            n := n - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: if (n == 42) -- while1.vpr@48.5--51.6
            if (n == 42) {
              
              // -- Translating statement: // id = 3
  // inhale acc(y.f, write) -- while1.vpr@49.7--49.22
                perm := FullPerm;
                assume y != null;
                Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: // id = 4
  // // LoopInfo(None,Set(1))
  // goto brk -- while1.vpr@50.7--50.15
                
                // -- Exiting loops , 1
                  havoc LoopSumHeap;
                  havoc LoopSumMask;
                  assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap1, frameMask1);
                  Heap := LoopSumHeap;
                  assume sumMask(LoopSumMask, Mask, frameMask1);
                  Mask := LoopSumMask;
                  assume state(Heap, Mask);
                goto brk;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: // id = 5
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: // id = 6
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (while1.vpr@44.15--44.28) [141523]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (while1.vpr@44.15--44.28) [141524]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(n != 0);
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@44.15--44.28) [141525]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // // LoopInfo(None,Set())
  // label brk -- while1.vpr@54.3--54.12
    brk:
    LabelbrkMask := Mask;
    LabelbrkHeap := Heap;
    brk_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n == 0) -- while1.vpr@56.3--59.4
    if (n == 0) {
      
      // -- Translating statement: // id = 8
  // assert perm(y.f) == none -- while1.vpr@58.5--58.29
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (while1.vpr@58.12--58.29) [141526]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (n == 42) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test20a might not hold. There might be insufficient permission to access y.f (while1.vpr@40.12--40.32) [141527]"}
          perm <= Mask[y, f_7];
      }
      Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    }
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test20a might not hold. There might be insufficient permission to access x.f (while1.vpr@41.12--41.39) [141528]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test20a might not hold. Assertion x.f == old(x.f) might not hold. (while1.vpr@41.12--41.39) [141529]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test20b
// ==================================================

procedure test20b(x: Ref, y: Ref) returns (n: int)
  modifies Heap, Mask;
{
  var brk_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var frameMask1: MaskType;
  var frameHeap1: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var LabelbrkMask: MaskType;
  var LabelbrkHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    brk_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume x != y;
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
    if (n == 42) {
      perm := FullPerm;
      assume y != null;
      PostMask := PostMask[y, f_7:=PostMask[y, f_7] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (while1.vpr@65.12--65.39) [141530]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (while1.vpr@65.12--65.39) [141531]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: while (n != 0) -- while1.vpr@67.3--76.4
    
    // -- Before loop head1
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (while1.vpr@68.15--68.28) [141532]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (while1.vpr@68.15--68.28) [141533]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask1 := Mask;
        frameHeap1 := Heap;
    
    // -- Havoc loop written variables (except locals)
      havoc n;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (while1.vpr@68.15--68.28) [141534]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@68.15--68.28) [141535]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume n != 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: // id = 2
  // n := n - 1 -- while1.vpr@70.5--70.15
            n := n - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: if (n == 42) -- while1.vpr@72.5--75.6
            if (n == 42) {
              
              // -- Translating statement: // id = 3
  // inhale acc(y.f, write) -- while1.vpr@73.7--73.22
                perm := FullPerm;
                assume y != null;
                Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: // id = 4
  // // LoopInfo(None,Set(1))
  // goto brk -- while1.vpr@74.7--74.15
                
                // -- Exiting loops , 1
                  havoc LoopSumHeap;
                  havoc LoopSumMask;
                  assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap1, frameMask1);
                  Heap := LoopSumHeap;
                  assume sumMask(LoopSumMask, Mask, frameMask1);
                  Mask := LoopSumMask;
                  assume state(Heap, Mask);
                goto brk;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: // id = 5
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: // id = 6
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (while1.vpr@68.15--68.28) [141536]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (while1.vpr@68.15--68.28) [141537]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(n != 0);
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (while1.vpr@68.15--68.28) [141538]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // // LoopInfo(None,Set())
  // label brk -- while1.vpr@78.3--78.12
    brk:
    LabelbrkMask := Mask;
    LabelbrkHeap := Heap;
    brk_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n == 0) -- while1.vpr@80.3--82.4
    if (n == 0) {
      
      // -- Translating statement: // id = 8
  // assert perm(y.f) == none -- while1.vpr@81.5--81.29
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (while1.vpr@81.12--81.29) [141539]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (n == 42) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test20b might not hold. There might be insufficient permission to access y.f (while1.vpr@64.12--64.32) [141540]"}
          perm <= Mask[y, f_7];
      }
      Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    }
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test20b might not hold. There might be insufficient permission to access x.f (while1.vpr@65.12--65.39) [141541]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test20b might not hold. Assertion x.f == old(x.f) might not hold. (while1.vpr@65.12--65.39) [141542]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}