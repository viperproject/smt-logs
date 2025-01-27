// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:27:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_78: Ref, f_86: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_78, f_86] }
  Heap[o_78, $allocated] ==> Heap[Heap[o_78, f_86], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_102: Ref, f_156: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_102, f_156] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_102, f_156) ==> Heap[o_102, f_156] == ExhaleHeap[o_102, f_156]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_47: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_47), ExhaleHeap[null, PredicateMaskField(pm_f_47)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_47) && IsPredicateField(pm_f_47) ==> Heap[null, PredicateMaskField(pm_f_47)] == ExhaleHeap[null, PredicateMaskField(pm_f_47)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_47: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_47) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_47) && IsPredicateField(pm_f_47) ==> (forall <A, B> o2_47: Ref, f_156: (Field A B) ::
    { ExhaleHeap[o2_47, f_156] }
    Heap[null, PredicateMaskField(pm_f_47)][o2_47, f_156] ==> Heap[o2_47, f_156] == ExhaleHeap[o2_47, f_156]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_47: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_47), ExhaleHeap[null, WandMaskField(pm_f_47)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_47) && IsWandField(pm_f_47) ==> Heap[null, WandMaskField(pm_f_47)] == ExhaleHeap[null, WandMaskField(pm_f_47)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_47: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_47) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_47) && IsWandField(pm_f_47) ==> (forall <A, B> o2_47: Ref, f_156: (Field A B) ::
    { ExhaleHeap[o2_47, f_156] }
    Heap[null, WandMaskField(pm_f_47)][o2_47, f_156] ==> Heap[o2_47, f_156] == ExhaleHeap[o2_47, f_156]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_102: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_102, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_102, $allocated] ==> ExhaleHeap[o_102, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_78: Ref, f_111: (Field A B), v: B ::
  { Heap[o_78, f_111:=v] }
  succHeap(Heap, Heap[o_78, f_111:=v])
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(r_1: Ref): Field PredicateType_valid FrameType;
function  valid#sm(r_1: Ref): Field PredicateType_valid PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(valid(r_1)) }
  PredicateMaskField(valid(r_1)) == valid#sm(r_1)
);
axiom (forall r_1: Ref ::
  { valid(r_1) }
  IsPredicateField(valid(r_1))
);
axiom (forall r_1: Ref ::
  { valid(r_1) }
  getPredWandId(valid(r_1)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { valid(r_1), valid(r2) }
  valid(r_1) == valid(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { valid#sm(r_1), valid#sm(r2) }
  valid#sm(r_1) == valid#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { valid#trigger(Heap, valid(r_1)) }
  valid#everUsed(valid(r_1))
);

procedure valid#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@7.1--9.2) [97447]"}
        HasDirectPerm(Mask, r_1, next);
    if (Heap[r_1, next] != null) {
      
      // -- Check definedness of acc(valid(r.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@7.1--9.2) [97448]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate deeper
// ==================================================

type PredicateType_deeper;
function  deeper(r_1: Ref): Field PredicateType_deeper FrameType;
function  deeper#sm(r_1: Ref): Field PredicateType_deeper PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(deeper(r_1)) }
  PredicateMaskField(deeper(r_1)) == deeper#sm(r_1)
);
axiom (forall r_1: Ref ::
  { deeper(r_1) }
  IsPredicateField(deeper(r_1))
);
axiom (forall r_1: Ref ::
  { deeper(r_1) }
  getPredWandId(deeper(r_1)) == 1
);
function  deeper#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  deeper#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { deeper(r_1), deeper(r2) }
  deeper(r_1) == deeper(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { deeper#sm(r_1), deeper#sm(r2) }
  deeper#sm(r_1) == deeper#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { deeper#trigger(Heap, deeper(r_1)) }
  deeper#everUsed(deeper(r_1))
);

procedure deeper#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of deeper
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@32.1--36.2) [97449]"}
        HasDirectPerm(Mask, r_1, next);
    if (Heap[r_1, next] != null) {
      
      // -- Check definedness of acc(deeper(r.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@32.1--36.2) [97450]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      Mask := Mask[null, deeper(Heap[r_1, next]):=Mask[null, deeper(Heap[r_1, next])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(deeper(r.next), write) in true)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume deeper#trigger(UnfoldingHeap, deeper(UnfoldingHeap[r_1, next]));
        assume UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access deeper(r.next) (unfolding.vpr@32.1--36.2) [97451]"}
            perm <= UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])];
        }
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])], deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]));
            assume Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])], deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], next:=true]];
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                    { newPMask[o_6, f_12] }
                    Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_6, f_12] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], next])][o_6, f_12] ==> newPMask[o_6, f_12]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], next:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                { newPMask[o_5, f_11] }
                UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_5, f_11] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next])][o_5, f_11] ==> newPMask[o_5, f_11]
              );
              UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@32.1--36.2) [97452]"}
          HasDirectPerm(UnfoldingMask, r_1, next);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], f_7:=true]];
          Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], next:=true]];
          if (Heap[Heap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Heap[null, deeper#sm(Heap[r_1, next])][o_40, f_52] || Heap[null, deeper#sm(Heap[Heap[r_1, next], next])][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Heap := Heap[null, deeper#sm(Heap[r_1, next]):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume deeper#trigger(UnfoldingHeap, deeper(UnfoldingHeap[r_1, next]));
        assume UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])], deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], next:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                { newPMask[o_42, f_55] }
                UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_42, f_55] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next])][o_42, f_55] ==> newPMask[o_42, f_55]
              );
              UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate strange
// ==================================================

type PredicateType_strange;
function  strange_1(r_1: Ref): Field PredicateType_strange FrameType;
function  strange#sm(r_1: Ref): Field PredicateType_strange PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(strange_1(r_1)) }
  PredicateMaskField(strange_1(r_1)) == strange#sm(r_1)
);
axiom (forall r_1: Ref ::
  { strange_1(r_1) }
  IsPredicateField(strange_1(r_1))
);
axiom (forall r_1: Ref ::
  { strange_1(r_1) }
  getPredWandId(strange_1(r_1)) == 2
);
function  strange#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  strange#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { strange_1(r_1), strange_1(r2) }
  strange_1(r_1) == strange_1(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { strange#sm(r_1), strange#sm(r2) }
  strange#sm(r_1) == strange#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { strange#trigger(Heap, strange_1(r_1)) }
  strange#everUsed(strange_1(r_1))
);

procedure strange#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of strange
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@64.1--70.2) [97453]"}
        HasDirectPerm(Mask, r_1, next);
    if (Heap[r_1, next] != null) {
      
      // -- Check definedness of acc(r.next.f, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@64.1--70.2) [97454]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], f_7:=Mask[Heap[r_1, next], f_7] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(r.next.next, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@64.1--70.2) [97455]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], next:=Mask[Heap[r_1, next], next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, strange_1(r_1):=Mask[null, strange_1(r_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(strange(r), write) in true)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume strange#trigger(UnfoldingHeap, strange_1(r_1));
        assume UnfoldingHeap[null, strange_1(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange_1(r_1)])) else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access strange(r) (unfolding.vpr@64.1--70.2) [97456]"}
            perm <= UnfoldingMask[null, strange_1(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)], strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume strange#trigger(Unfolding1Heap, strange_1(r_1));
            assume Unfolding1Heap[null, strange_1(r_1)] == CombineFrames(FrameFragment(Unfolding1Heap[r_1, f_7]), CombineFrames(FrameFragment(Unfolding1Heap[r_1, next]), FrameFragment((if Unfolding1Heap[r_1, next] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, strange_1(r_1)])) else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, strange_1(r_1):=Unfolding1Mask[null, strange_1(r_1)] - perm];
            perm := FullPerm;
            assume r_1 != null;
            Unfolding1Mask := Unfolding1Mask[r_1, f_7:=Unfolding1Mask[r_1, f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume r_1 != null;
            Unfolding1Mask := Unfolding1Mask[r_1, next:=Unfolding1Mask[r_1, next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[r_1, next] != null) {
              perm := FullPerm;
              assume Unfolding1Heap[r_1, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              assume Unfolding1Heap[r_1, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, strange_1(r_1):=Unfolding1Mask[null, strange_1(r_1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(strange_1(r_1), Unfolding1Heap[null, strange_1(r_1)], strange_1(r_1), Unfolding1Heap[null, strange_1(r_1)]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, next:=true]];
                if (Unfolding1Heap[r_1, next] != null) {
                  Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], f_7:=true]];
                  Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o: Ref, f_61: (Field A B) ::
                    { newPMask[o, f_61] }
                    Unfolding1Heap[null, strange#sm(r_1)][o, f_61] || Unfolding1Heap[null, strange#sm(r_1)][o, f_61] ==> newPMask[o, f_61]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
            if (UnfoldingHeap[r_1, next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                { newPMask[o_46, f_60] }
                UnfoldingHeap[null, strange#sm(r_1)][o_46, f_60] || UnfoldingHeap[null, strange#sm(r_1)][o_46, f_60] ==> newPMask[o_46, f_60]
              );
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
            Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
              { newPMask[o_14, f_3] }
              Heap[null, strange#sm(r_1)][o_14, f_3] || Heap[null, strange#sm(r_1)][o_14, f_3] ==> newPMask[o_14, f_3]
            );
            Heap := Heap[null, strange#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume strange#trigger(UnfoldingHeap, strange_1(r_1));
        assume UnfoldingHeap[null, strange_1(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange_1(r_1)])) else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)], strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
            if (UnfoldingHeap[r_1, next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
                { newPMask[o_3, f_24] }
                UnfoldingHeap[null, strange#sm(r_1)][o_3, f_24] || UnfoldingHeap[null, strange#sm(r_1)][o_3, f_24] ==> newPMask[o_3, f_24]
              );
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate deeperfalse
// ==================================================

type PredicateType_deeperfalse;
function  deeperfalse(r_1: Ref): Field PredicateType_deeperfalse FrameType;
function  deeperfalse#sm(r_1: Ref): Field PredicateType_deeperfalse PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(deeperfalse(r_1)) }
  PredicateMaskField(deeperfalse(r_1)) == deeperfalse#sm(r_1)
);
axiom (forall r_1: Ref ::
  { deeperfalse(r_1) }
  IsPredicateField(deeperfalse(r_1))
);
axiom (forall r_1: Ref ::
  { deeperfalse(r_1) }
  getPredWandId(deeperfalse(r_1)) == 3
);
function  deeperfalse#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  deeperfalse#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { deeperfalse(r_1), deeperfalse(r2) }
  deeperfalse(r_1) == deeperfalse(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { deeperfalse#sm(r_1), deeperfalse#sm(r2) }
  deeperfalse#sm(r_1) == deeperfalse#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { deeperfalse#trigger(Heap, deeperfalse(r_1)) }
  deeperfalse#everUsed(deeperfalse(r_1))
);

procedure deeperfalse#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of deeperfalse
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@120.1--122.2) [97457]"}
        HasDirectPerm(Mask, r_1, next);
    assume Heap[r_1, next] != null;
    
    // -- Check definedness of acc(valid(r.next), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@120.1--122.2) [97458]"}
        HasDirectPerm(Mask, r_1, next);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(r.next), write) in false)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[r_1, next]));
      assume UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access valid(r.next) (unfolding.vpr@120.1--122.2) [97459]"}
          perm <= UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])];
      }
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] - perm];
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])], valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@120.1--122.2) [97460]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(Heap[r_1, next]):=Heap[null, valid#sm(Heap[r_1, next])][Heap[r_1, next], f_7:=true]];
        Heap := Heap[null, valid#sm(Heap[r_1, next]):=Heap[null, valid#sm(Heap[r_1, next])][Heap[r_1, next], next:=true]];
        if (Heap[Heap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
            { newPMask[o_1, f_10] }
            Heap[null, valid#sm(Heap[r_1, next])][o_1, f_10] || Heap[null, valid#sm(Heap[Heap[r_1, next], next])][o_1, f_10] ==> newPMask[o_1, f_10]
          );
          Heap := Heap[null, valid#sm(Heap[r_1, next]):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[r_1, next]));
      assume UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] - perm];
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])], valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1_2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := (unfolding acc(valid(r), write) in r.f) -- unfolding.vpr@14.5--14.58
    
    // -- Check definedness of (unfolding acc(valid(r), write) in r.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@14.5--14.58) [97461]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@14.5--14.58) [97462]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
            { newPMask[o_15, f_51] }
            Heap[null, valid#sm(r_1)][o_15, f_51] || Heap[null, valid#sm(Heap[r_1, next])][o_15, f_51] ==> newPMask[o_15, f_51]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2_2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := (unfolding acc(valid(r), write) in r.f) -- unfolding.vpr@21.5--21.58
    
    // -- Check definedness of (unfolding acc(valid(r), write) in r.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@21.5--21.58) [97463]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@21.5--21.58) [97464]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
            { newPMask[o_4, f_54] }
            Heap[null, valid#sm(r_1)][o_4, f_54] || Heap[null, valid#sm(Heap[r_1, next])][o_4, f_54] ==> newPMask[o_4, f_54]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := (unfolding acc(valid(r), write) in
  //     (unfolding acc(valid(r), write) in r.f)) -- unfolding.vpr@28.5--28.96
    
    // -- Check definedness of (unfolding acc(valid(r), write) in (unfolding acc(valid(r), write) in r.f))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@28.5--28.96) [97465]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume valid#trigger(Unfolding1Heap, valid(r_1));
      assume Unfolding1Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Unfolding1Heap[r_1, f_7]), CombineFrames(FrameFragment(Unfolding1Heap[r_1, next]), FrameFragment((if Unfolding1Heap[r_1, next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := Unfolding1Heap;
      ExhaleWellDef0Mask := Unfolding1Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@28.5--28.96) [97466]"}
          perm <= Unfolding1Mask[null, valid(r_1)];
      }
      Unfolding1Mask := Unfolding1Mask[null, valid(r_1):=Unfolding1Mask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      Unfolding1Mask := Unfolding1Mask[r_1, f_7:=Unfolding1Mask[r_1, f_7] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume r_1 != null;
      Unfolding1Mask := Unfolding1Mask[r_1, next:=Unfolding1Mask[r_1, next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[r_1, next] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), Unfolding1Heap[null, valid(r_1)], valid(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@28.5--28.96) [97467]"}
        HasDirectPerm(Unfolding1Mask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(r_1):=UnfoldingHeap[null, valid#sm(r_1)][r_1, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(r_1):=UnfoldingHeap[null, valid#sm(r_1)][r_1, next:=true]];
        if (UnfoldingHeap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
            { newPMask[o_12, f_25] }
            UnfoldingHeap[null, valid#sm(r_1)][o_12, f_25] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_12, f_25] ==> newPMask[o_12, f_25]
          );
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(r_1):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
            { newPMask[o_41, f_21] }
            Heap[null, valid#sm(r_1)][o_41, f_21] || Heap[null, valid#sm(Heap[r_1, next])][o_41, f_21] ==> newPMask[o_41, f_21]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
            { newPMask[o_23, f_13] }
            Heap[null, valid#sm(r_1)][o_23, f_13] || Heap[null, valid#sm(Heap[r_1, next])][o_23, f_13] ==> newPMask[o_23, f_13]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeper(r_1):=Mask[null, deeper(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := (unfolding acc(deeper(r), write) in (r.next == null ? 0 : r.next.f)) -- unfolding.vpr@44.5--44.87
    
    // -- Check definedness of (unfolding acc(deeper(r), write) in (r.next == null ? 0 : r.next.f))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeper#trigger(UnfoldingHeap, deeper(r_1));
      assume UnfoldingHeap[null, deeper(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r) (unfolding.vpr@44.5--44.87) [97468]"}
          perm <= UnfoldingMask[null, deeper(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeper(r_1):=UnfoldingMask[null, deeper(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeper(r_1), UnfoldingHeap[null, deeper(r_1)], deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Heap := Unfolding1Heap;
          ExhaleWellDef0Mask := Unfolding1Mask;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
              if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                  { newPMask[o_51, f_66] }
                  Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_51, f_66] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_51, f_66] ==> newPMask[o_51, f_66]
                );
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
              { newPMask[o_13, f_65] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_13, f_65] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_13, f_65] ==> newPMask[o_13, f_65]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@44.5--44.87) [97469]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      if (UnfoldingHeap[r_1, next] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@44.5--44.87) [97470]"}
          HasDirectPerm(UnfoldingMask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.f (unfolding.vpr@44.5--44.87) [97471]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[r_1, next], f_7);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
            { newPMask[o_52, f_14] }
            Heap[null, deeper#sm(r_1)][o_52, f_14] || Heap[null, deeper#sm(Heap[r_1, next])][o_52, f_14] ==> newPMask[o_52, f_14]
          );
          Heap := Heap[null, deeper#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := (if Heap[r_1, next] == null then 0 else Heap[Heap[r_1, next], f_7]);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t5
// ==================================================

procedure t5(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding2Heap: HeapType;
  var Unfolding2Mask: MaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeper(r_1):=Mask[null, deeper(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := (unfolding acc(deeper(r), write) in
  //     (r.next == null ?
  //       0 :
  //       (unfolding acc(deeper(r.next), write) in r.next.f))) -- unfolding.vpr@50.5--50.117
    
    // -- Check definedness of (unfolding acc(deeper(r), write) in (r.next == null ? 0 : (unfolding acc(deeper(r.next), write) in r.next.f)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeper#trigger(UnfoldingHeap, deeper(r_1));
      assume UnfoldingHeap[null, deeper(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r) (unfolding.vpr@50.5--50.117) [97472]"}
          perm <= UnfoldingMask[null, deeper(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeper(r_1):=UnfoldingMask[null, deeper(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeper(r_1), UnfoldingHeap[null, deeper(r_1)], deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Heap := Unfolding1Heap;
          ExhaleWellDef0Mask := Unfolding1Mask;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
              if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
                  { newPMask[o_58, f_30] }
                  Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_58, f_30] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_58, f_30] ==> newPMask[o_58, f_30]
                );
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
              { newPMask[o_20, f_50] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_20, f_50] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_20, f_50] ==> newPMask[o_20, f_50]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@50.5--50.117) [97473]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      if (UnfoldingHeap[r_1, next] == null) {
      } else {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
        assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r.next) (unfolding.vpr@50.5--50.117) [97474]"}
            perm <= Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])];
        }
        Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
          
          // -- Execute unfolding (for extra information)
            Unfolding2Heap := Unfolding1Heap;
            Unfolding2Mask := Unfolding1Mask;
            assume deeper#trigger(Unfolding2Heap, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next]));
            assume Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next])] == CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], f_7]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]), FrameFragment((if Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next] != null then Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding2Heap;
            ExhaleWellDef0Mask := Unfolding2Mask;
            perm := FullPerm;
            Unfolding2Mask := Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next]):=Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next])] - perm];
            perm := FullPerm;
            assume Unfolding2Heap[Unfolding2Heap[r_1, next], next] != null;
            Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], f_7:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], f_7] + perm];
            assume state(Unfolding2Heap, Unfolding2Mask);
            perm := FullPerm;
            assume Unfolding2Heap[Unfolding2Heap[r_1, next], next] != null;
            Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next] + perm];
            assume state(Unfolding2Heap, Unfolding2Mask);
            if (Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next] != null) {
              perm := FullPerm;
              Unfolding2Mask := Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next]), Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next])], deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]), Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])]);
              assume state(Unfolding2Heap, Unfolding2Mask);
              
              // -- Free assumptions (inhale module)
                Unfolding2Heap := Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], f_7:=true]];
                Unfolding2Heap := Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], next:=true]];
                if (Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
                    { newPMask[o_18, f_18] }
                    Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])][o_18, f_18] || Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], next])][o_18, f_18] ==> newPMask[o_18, f_18]
                  );
                  Unfolding2Heap := Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=newPMask];
                }
                assume state(Unfolding2Heap, Unfolding2Mask);
            }
            assume state(Unfolding2Heap, Unfolding2Mask);
          
          // -- Free assumptions (inhale module)
            Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
            Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                { newPMask[o_10, f_67] }
                Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_10, f_67] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_10, f_67] ==> newPMask[o_10, f_67]
              );
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@50.5--50.117) [97475]"}
          HasDirectPerm(Unfolding1Mask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@50.5--50.117) [97476]"}
          HasDirectPerm(Unfolding1Mask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.f (unfolding.vpr@50.5--50.117) [97477]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[r_1, next], f_7);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
              { newPMask[o_66, f_28] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_66, f_28] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_66, f_28] ==> newPMask[o_66, f_28]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
            { newPMask[o_11, f_34] }
            Heap[null, deeper#sm(r_1)][o_11, f_34] || Heap[null, deeper#sm(Heap[r_1, next])][o_11, f_34] ==> newPMask[o_11, f_34]
          );
          Heap := Heap[null, deeper#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], f_7:=true]];
        Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], next:=true]];
        if (Heap[Heap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
            { newPMask[o_19, f_57] }
            Heap[null, deeper#sm(Heap[r_1, next])][o_19, f_57] || Heap[null, deeper#sm(Heap[Heap[r_1, next], next])][o_19, f_57] ==> newPMask[o_19, f_57]
          );
          Heap := Heap[null, deeper#sm(Heap[r_1, next]):=newPMask];
        }
        assume state(Heap, Mask);
    i := (if Heap[r_1, next] == null then 0 else Heap[Heap[r_1, next], f_7]);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t6
// ==================================================

procedure t6_1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeper(r_1):=Mask[null, deeper(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := (unfolding acc(deeper(r), write) in
  //     (r.next == null ? 0 : (r.next.next == null ? 0 : r.next.next.f))) -- unfolding.vpr@57.5--57.122
    
    // -- Check definedness of (unfolding acc(deeper(r), write) in (r.next == null ? 0 : (r.next.next == null ? 0 : r.next.next.f)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeper#trigger(UnfoldingHeap, deeper(r_1));
      assume UnfoldingHeap[null, deeper(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r) (unfolding.vpr@57.5--57.122) [97478]"}
          perm <= UnfoldingMask[null, deeper(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeper(r_1):=UnfoldingMask[null, deeper(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeper(r_1), UnfoldingHeap[null, deeper(r_1)], deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Heap := Unfolding1Heap;
          ExhaleWellDef0Mask := Unfolding1Mask;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
              if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
                  { newPMask[o_43, f_33] }
                  Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_43, f_33] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_43, f_33] ==> newPMask[o_43, f_33]
                );
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
              { newPMask[o_21, f_58] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_21, f_58] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_21, f_58] ==> newPMask[o_21, f_58]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@57.5--57.122) [97479]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      if (UnfoldingHeap[r_1, next] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@57.5--57.122) [97480]"}
          HasDirectPerm(UnfoldingMask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.next (unfolding.vpr@57.5--57.122) [97481]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[r_1, next], next);
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] == null) {
        } else {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@57.5--57.122) [97482]"}
            HasDirectPerm(UnfoldingMask, r_1, next);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.next (unfolding.vpr@57.5--57.122) [97483]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[r_1, next], next);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.next.f (unfolding.vpr@57.5--57.122) [97484]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[UnfoldingHeap[r_1, next], next], f_7);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
            { newPMask[o_50, f_75] }
            Heap[null, deeper#sm(r_1)][o_50, f_75] || Heap[null, deeper#sm(Heap[r_1, next])][o_50, f_75] ==> newPMask[o_50, f_75]
          );
          Heap := Heap[null, deeper#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := (if Heap[r_1, next] == null then 0 else (if Heap[Heap[r_1, next], next] == null then 0 else Heap[Heap[Heap[r_1, next], next], f_7]));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t7
// ==================================================

procedure t7(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, strange_1(r_1):=Mask[null, strange_1(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert false -- unfolding.vpr@76.4--76.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (unfolding.vpr@76.11--76.16) [97485]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t8
// ==================================================

procedure t8(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, strange_1(r_1):=Mask[null, strange_1(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(strange(r), write) in false) -- unfolding.vpr@83.3--83.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(strange(r), write) in false)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume strange#trigger(UnfoldingHeap, strange_1(r_1));
      assume UnfoldingHeap[null, strange_1(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange_1(r_1)])) else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access strange(r) (unfolding.vpr@83.10--83.39) [97486]"}
          perm <= UnfoldingMask[null, strange_1(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)], strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume strange#trigger(Unfolding1Heap, strange_1(r_1));
          assume Unfolding1Heap[null, strange_1(r_1)] == CombineFrames(FrameFragment(Unfolding1Heap[r_1, f_7]), CombineFrames(FrameFragment(Unfolding1Heap[r_1, next]), FrameFragment((if Unfolding1Heap[r_1, next] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, strange_1(r_1)])) else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, strange_1(r_1):=Unfolding1Mask[null, strange_1(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          Unfolding1Mask := Unfolding1Mask[r_1, f_7:=Unfolding1Mask[r_1, f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume r_1 != null;
          Unfolding1Mask := Unfolding1Mask[r_1, next:=Unfolding1Mask[r_1, next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[r_1, next] != null) {
            perm := FullPerm;
            assume Unfolding1Heap[r_1, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[r_1, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, strange_1(r_1):=Unfolding1Mask[null, strange_1(r_1)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(strange_1(r_1), Unfolding1Heap[null, strange_1(r_1)], strange_1(r_1), Unfolding1Heap[null, strange_1(r_1)]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, next:=true]];
              if (Unfolding1Heap[r_1, next] != null) {
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
                  { newPMask[o_67, f_69] }
                  Unfolding1Heap[null, strange#sm(r_1)][o_67, f_69] || Unfolding1Heap[null, strange#sm(r_1)][o_67, f_69] ==> newPMask[o_67, f_69]
                );
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
          if (UnfoldingHeap[r_1, next] != null) {
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
              { newPMask[o_22, f_59] }
              UnfoldingHeap[null, strange#sm(r_1)][o_22, f_59] || UnfoldingHeap[null, strange#sm(r_1)][o_22, f_59] ==> newPMask[o_22, f_59]
            );
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
            { newPMask[o_68, f_76] }
            Heap[null, strange#sm(r_1)][o_68, f_76] || Heap[null, strange#sm(r_1)][o_68, f_76] ==> newPMask[o_68, f_76]
          );
          Heap := Heap[null, strange#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion false might not hold. (unfolding.vpr@83.10--83.39) [97487]"}
      false;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
      Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
      if (Heap[r_1, next] != null) {
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
          { newPMask[o_69, f_77] }
          Heap[null, strange#sm(r_1)][o_69, f_77] || Heap[null, strange#sm(r_1)][o_69, f_77] ==> newPMask[o_69, f_77]
        );
        Heap := Heap[null, strange#sm(r_1):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t9
// ==================================================

procedure t9(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, strange_1(r_1):=Mask[null, strange_1(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(strange(r), write) -- unfolding.vpr@89.3--89.20
    assume strange#trigger(Heap, strange_1(r_1));
    assume Heap[null, strange_1(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then CombineFrames(FrameFragment(Heap[Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Heap[Heap[r_1, next], next]), Heap[null, strange_1(r_1)])) else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding strange(r) might fail. There might be insufficient permission to access strange(r) (unfolding.vpr@89.3--89.20) [97490]"}
        perm <= Mask[null, strange_1(r_1)];
    }
    Mask := Mask[null, strange_1(r_1):=Mask[null, strange_1(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, strange_1(r_1))) {
        havoc newVersion;
        Heap := Heap[null, strange_1(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], f_7:=Mask[Heap[r_1, next], f_7] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], next:=Mask[Heap[r_1, next], next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, strange_1(r_1):=Mask[null, strange_1(r_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(strange_1(r_1), Heap[null, strange_1(r_1)], strange_1(r_1), Heap[null, strange_1(r_1)]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume strange#trigger(UnfoldingHeap, strange_1(r_1));
        assume UnfoldingHeap[null, strange_1(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange_1(r_1)])) else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, strange_1(r_1):=UnfoldingMask[null, strange_1(r_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)], strange_1(r_1), UnfoldingHeap[null, strange_1(r_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
            if (UnfoldingHeap[r_1, next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
                { newPMask[o_71, f_35] }
                UnfoldingHeap[null, strange#sm(r_1)][o_71, f_35] || UnfoldingHeap[null, strange#sm(r_1)][o_71, f_35] ==> newPMask[o_71, f_35]
              );
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
            { newPMask[o_70, f_78] }
            Heap[null, strange#sm(r_1)][o_70, f_78] || Heap[null, strange#sm(r_1)][o_70, f_78] ==> newPMask[o_70, f_78]
          );
          Heap := Heap[null, strange#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.next == null -- unfolding.vpr@91.3--91.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.next (unfolding.vpr@91.10--91.24) [97496]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, next);
    assert {:msg "  Assert might fail. Assertion r.next == null might not hold. (unfolding.vpr@91.10--91.24) [97497]"}
      Heap[r_1, next] == null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t10
// ==================================================

procedure t10(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var j: int;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
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
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(r), write) in r.f > 2)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [97498]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@96.11--96.59) [97499]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(r_1):=PostHeap[null, valid#sm(r_1)][r_1, f_7:=true]];
        PostHeap := PostHeap[null, valid#sm(r_1):=PostHeap[null, valid#sm(r_1)][r_1, next:=true]];
        if (PostHeap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
            { newPMask[o_72, f_79] }
            PostHeap[null, valid#sm(r_1)][o_72, f_79] || PostHeap[null, valid#sm(PostHeap[r_1, next])][o_72, f_79] ==> newPMask[o_72, f_79]
          );
          PostHeap := PostHeap[null, valid#sm(r_1):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[r_1, f_7] > 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: j := i -- unfolding.vpr@98.3--98.19
    j := i;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- unfolding.vpr@99.3--99.18
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@99.3--99.18) [97502]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(r_1))) {
        havoc newVersion;
        Heap := Heap[null, valid(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.f := 3 -- unfolding.vpr@100.3--100.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@100.3--100.11) [97506]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(r), write) -- unfolding.vpr@101.3--101.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.f (unfolding.vpr@101.3--101.16) [97509]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.next (unfolding.vpr@101.3--101.16) [97511]"}
        perm <= Mask[r_1, next];
    }
    Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access valid(r.next) (unfolding.vpr@101.3--101.16) [97513]"}
          perm <= Mask[null, valid(Heap[r_1, next])];
      }
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(r_1))) {
      Heap := Heap[null, valid#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(r_1):=freshVersion];
    }
    Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
    Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
    if (Heap[r_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
        { newPMask[o_79, f_36] }
        Heap[null, valid#sm(r_1)][o_79, f_36] || Heap[null, valid#sm(Heap[r_1, next])][o_79, f_36] ==> newPMask[o_79, f_36]
      );
      Heap := Heap[null, valid#sm(r_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j > 0) -- unfolding.vpr@102.3--109.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        
        // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97515]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
                { newPMask[o_80, f_88] }
                Heap[null, valid#sm(r_1)][o_80, f_88] || Heap[null, valid#sm(Heap[r_1, next])][o_80, f_88] ==> newPMask[o_80, f_88]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97516]"}
            perm <= Mask[null, valid(r_1)];
        }
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97517]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. Assertion r.f > 2 might not hold. (unfolding.vpr@103.15--103.63) [97518]"}
          Heap[r_1, f_7] > 2;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
              { newPMask[o_31, f_89] }
              Heap[null, valid#sm(r_1)][o_31, f_89] || Heap[null, valid#sm(Heap[r_1, next])][o_31, f_89] ==> newPMask[o_31, f_89]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of (unfolding acc(valid(r), write) in r.f > 2)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97519]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@103.15--103.63) [97520]"}
            HasDirectPerm(UnfoldingMask, r_1, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
                { newPMask[o_81, f_90] }
                Heap[null, valid#sm(r_1)][o_81, f_90] || Heap[null, valid#sm(Heap[r_1, next])][o_81, f_90] ==> newPMask[o_81, f_90]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume Heap[r_1, f_7] > 2;
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
        perm := FullPerm;
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
        assume state(Heap, Mask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume Heap[r_1, f_7] > 2;
        
        // -- Free assumptions (inhale module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
              { newPMask[o_82, f_91] }
              Heap[null, valid#sm(r_1)][o_82, f_91] || Heap[null, valid#sm(Heap[r_1, next])][o_82, f_91] ==> newPMask[o_82, f_91]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97521]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
                { newPMask[o_62, f_47] }
                Heap[null, valid#sm(r_1)][o_62, f_47] || Heap[null, valid#sm(Heap[r_1, next])][o_62, f_47] ==> newPMask[o_62, f_47]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        // Check and assume guard
        assume j > 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: j := j - 1 -- unfolding.vpr@105.5--105.15
            j := j - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(valid(r), write) -- unfolding.vpr@106.5--106.20
            assume valid#trigger(Heap, valid(r_1));
            assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@106.5--106.20) [97522]"}
                perm <= Mask[null, valid(r_1)];
            }
            Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, valid(r_1))) {
                havoc newVersion;
                Heap := Heap[null, valid(r_1):=newVersion];
              }
            perm := FullPerm;
            assume r_1 != null;
            Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume r_1 != null;
            Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
            assume state(Heap, Mask);
            if (Heap[r_1, next] != null) {
              perm := FullPerm;
              Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: r.f := r.f + 1 -- unfolding.vpr@107.5--107.19
            
            // -- Check definedness of r.f + 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@107.5--107.19) [97523]"}
                HasDirectPerm(Mask, r_1, f_7);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@107.5--107.19) [97524]"}
              FullPerm == Mask[r_1, f_7];
            Heap := Heap[r_1, f_7:=Heap[r_1, f_7] + 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(valid(r), write) -- unfolding.vpr@108.5--108.18
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.f (unfolding.vpr@108.5--108.18) [97525]"}
                perm <= Mask[r_1, f_7];
            }
            Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.next (unfolding.vpr@108.5--108.18) [97526]"}
                perm <= Mask[r_1, next];
            }
            Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
            if (Heap[r_1, next] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access valid(r.next) (unfolding.vpr@108.5--108.18) [97527]"}
                  perm <= Mask[null, valid(Heap[r_1, next])];
              }
              Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] - perm];
              
              // -- Record predicate instance information
                assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
            }
            perm := FullPerm;
            Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume valid#trigger(Heap, valid(r_1));
            assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
            if (!HasDirectPerm(Mask, null, valid(r_1))) {
              Heap := Heap[null, valid#sm(r_1):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, valid(r_1):=freshVersion];
            }
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
                { newPMask[o_83, f_72] }
                Heap[null, valid#sm(r_1)][o_83, f_72] || Heap[null, valid#sm(Heap[r_1, next])][o_83, f_72] ==> newPMask[o_83, f_72]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        
        // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97528]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
                { newPMask[o_84, f_92] }
                Heap[null, valid#sm(r_1)][o_84, f_92] || Heap[null, valid#sm(Heap[r_1, next])][o_84, f_92] ==> newPMask[o_84, f_92]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97529]"}
            perm <= Mask[null, valid(r_1)];
        }
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97530]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. Assertion r.f > 2 might not hold. (unfolding.vpr@103.15--103.63) [97531]"}
          Heap[r_1, f_7] > 2;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
              { newPMask[o_63, f_48] }
              Heap[null, valid#sm(r_1)][o_63, f_48] || Heap[null, valid#sm(Heap[r_1, next])][o_63, f_48] ==> newPMask[o_63, f_48]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j > 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[r_1, f_7] > 2;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
            { newPMask[o_28, f_93] }
            Heap[null, valid#sm(r_1)][o_28, f_93] || Heap[null, valid#sm(Heap[r_1, next])][o_28, f_93] ==> newPMask[o_28, f_93]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [97532]"}
            perm <= UnfoldingMask[null, valid(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
              { newPMask[o_85, f_41] }
              Heap[null, valid#sm(r_1)][o_85, f_41] || Heap[null, valid#sm(Heap[r_1, next])][o_85, f_41] ==> newPMask[o_85, f_41]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t10 might not hold. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [97533]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t10 might not hold. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [97534]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t10 might not hold. Assertion r.f > 2 might not hold. (unfolding.vpr@96.11--96.59) [97535]"}
      Heap[r_1, f_7] > 2;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
      Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
      if (Heap[r_1, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
          { newPMask[o_30, f_80] }
          Heap[null, valid#sm(r_1)][o_30, f_80] || Heap[null, valid#sm(Heap[r_1, next])][o_30, f_80] ==> newPMask[o_30, f_80]
        );
        Heap := Heap[null, valid#sm(r_1):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t11
// ==================================================

procedure t11(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
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
    assume r_1 != null;
    PostMask := PostMask[r_1, f_7:=PostMask[r_1, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.f > 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@114.11--114.30) [97536]"}
        HasDirectPerm(PostMask, r_1, f_7);
    assume PostHeap[r_1, f_7] > 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: t10(r, 0) -- unfolding.vpr@116.3--116.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method t10 might not hold. There might be insufficient permission to access valid(r) (unfolding.vpr@116.3--116.11) [97537]"}
          perm <= Mask[null, valid(r_1)];
      }
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[r_1, f_7] > 2;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
            { newPMask[o_86, f_94] }
            Heap[null, valid#sm(r_1)][o_86, f_94] || Heap[null, valid#sm(Heap[r_1, next])][o_86, f_94] ==> newPMask[o_86, f_94]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [97538]"}
            perm <= UnfoldingMask[null, valid(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
              { newPMask[o_29, f_95] }
              Heap[null, valid#sm(r_1)][o_29, f_95] || Heap[null, valid#sm(Heap[r_1, next])][o_29, f_95] ==> newPMask[o_29, f_95]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- unfolding.vpr@117.3--117.18
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@117.3--117.18) [97541]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(r_1))) {
        havoc newVersion;
        Heap := Heap[null, valid(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t11 might not hold. There might be insufficient permission to access r.f (unfolding.vpr@114.11--114.30) [97545]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    assert {:msg "  Postcondition of t11 might not hold. Assertion r.f > 2 might not hold. (unfolding.vpr@114.11--114.30) [97546]"}
      Heap[r_1, f_7] > 2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t12
// ==================================================

procedure t12(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeperfalse(r_1):=Mask[null, deeperfalse(r_1)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(deeperfalse(r), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
      assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@125.12--125.67) [97547]"}
          perm <= UnfoldingMask[null, deeperfalse(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[r_1, next] != null;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[r_1, next]));
        assume Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])], valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume false;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
            { newPMask[o_87, f_96] }
            UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_87, f_96] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_87, f_96] ==> newPMask[o_87, f_96]
          );
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeperfalse#sm(r_1):=Heap[null, deeperfalse#sm(r_1)][r_1, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
          { newPMask[o_88, f_97] }
          Heap[null, deeperfalse#sm(r_1)][o_88, f_97] || Heap[null, valid#sm(Heap[r_1, next])][o_88, f_97] ==> newPMask[o_88, f_97]
        );
        Heap := Heap[null, deeperfalse#sm(r_1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
      assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[r_1, next] != null;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume false;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
            { newPMask[o_89, f_98] }
            UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_89, f_98] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_89, f_98] ==> newPMask[o_89, f_98]
          );
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
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
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t12 might not hold. Assertion false might not hold. (unfolding.vpr@126.11--126.16) [97548]"}
      false;
}

// ==================================================
// Translation of method t13
// ==================================================

procedure t13(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeperfalse(r_1):=Mask[null, deeperfalse(r_1)] + perm];
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
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: t12(r) -- unfolding.vpr@134.3--134.9
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      
      // -- Execute definedness check of acc(deeperfalse(r), write) && (unfolding acc(deeperfalse(r), write) in true) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
        assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method t12 might not hold. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@134.3--134.9) [97549]"}
            perm <= UnfoldingMask[null, deeperfalse(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Heap := Unfolding1Heap;
          ExhaleWellDef0Mask := Unfolding1Mask;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])], valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume false;
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
              { newPMask[o_90, f_99] }
              UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_90, f_99] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_90, f_99] ==> newPMask[o_90, f_99]
            );
            UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, deeperfalse#sm(r_1):=Heap[null, deeperfalse#sm(r_1)][r_1, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
            { newPMask[o_93, f_105] }
            Heap[null, deeperfalse#sm(r_1)][o_93, f_105] || Heap[null, valid#sm(Heap[r_1, next])][o_93, f_105] ==> newPMask[o_93, f_105]
          );
          Heap := Heap[null, deeperfalse#sm(r_1):=newPMask];
          assume state(Heap, Mask);
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method t12 might not hold. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@134.3--134.9) [97550]"}
          perm <= Mask[null, deeperfalse(r_1)];
      }
      Mask := Mask[null, deeperfalse(r_1):=Mask[null, deeperfalse(r_1)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
        assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method t12 might not hold. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@134.3--134.9) [97551]"}
            perm <= UnfoldingMask[null, deeperfalse(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume false;
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_94: Ref, f_44: (Field A B) ::
              { newPMask[o_94, f_44] }
              UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_94, f_44] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_94, f_44] ==> newPMask[o_94, f_44]
            );
            UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, deeperfalse#sm(r_1):=Heap[null, deeperfalse#sm(r_1)][r_1, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_97: Ref, f_107: (Field A B) ::
          { newPMask[o_97, f_107] }
          Heap[null, deeperfalse#sm(r_1)][o_97, f_107] || Heap[null, valid#sm(Heap[r_1, next])][o_97, f_107] ==> newPMask[o_97, f_107]
        );
        Heap := Heap[null, deeperfalse#sm(r_1):=newPMask];
        assume state(Heap, Mask);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume false;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t13 might not hold. Assertion false might not hold. (unfolding.vpr@132.11--132.16) [97552]"}
      false;
}