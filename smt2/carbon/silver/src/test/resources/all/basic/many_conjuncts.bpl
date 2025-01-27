// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:42
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/many_conjuncts.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/many_conjuncts-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain parallelHeaps
// ==================================================

// The type for domain parallelHeaps
type parallelHeapsDomainType;

// Translation of domain function heap
function  heap(x_37: Ref): int;

// Translation of domain function is_ghost
function  is_ghost(x_37: Ref): bool;

// ==================================================
// Translation of domain reads
// ==================================================

// The type for domain reads
type readsDomainType;

// Translation of domain function rd
function  rd_1(): Perm;

// Translation of domain axiom rdPositive
axiom NoPerm < (rd_1(): Perm);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique init_1: Field NormalField bool;
axiom !IsPredicateField(init_1);
axiom !IsWandField(init_1);
const unique rel: Field NormalField int;
axiom !IsPredicateField(rel);
axiom !IsWandField(rel);
const unique acq: Field NormalField bool;
axiom !IsPredicateField(acq);
axiom !IsWandField(acq);

// ==================================================
// Translation of predicate AcqConjunct
// ==================================================

type PredicateType_AcqConjunct;
function  AcqConjunct(x: Ref, idx: int): Field PredicateType_AcqConjunct FrameType;
function  AcqConjunct#sm(x: Ref, idx: int): Field PredicateType_AcqConjunct PMaskType;
axiom (forall x: Ref, idx: int ::
  { PredicateMaskField(AcqConjunct(x, idx)) }
  PredicateMaskField(AcqConjunct(x, idx)) == AcqConjunct#sm(x, idx)
);
axiom (forall x: Ref, idx: int ::
  { AcqConjunct(x, idx) }
  IsPredicateField(AcqConjunct(x, idx))
);
axiom (forall x: Ref, idx: int ::
  { AcqConjunct(x, idx) }
  getPredWandId(AcqConjunct(x, idx)) == 0
);
function  AcqConjunct#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  AcqConjunct#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, idx: int, x2: Ref, idx2: int ::
  { AcqConjunct(x, idx), AcqConjunct(x2, idx2) }
  AcqConjunct(x, idx) == AcqConjunct(x2, idx2) ==> x == x2 && idx == idx2
);
axiom (forall x: Ref, idx: int, x2: Ref, idx2: int ::
  { AcqConjunct#sm(x, idx), AcqConjunct#sm(x2, idx2) }
  AcqConjunct#sm(x, idx) == AcqConjunct#sm(x2, idx2) ==> x == x2 && idx == idx2
);

axiom (forall Heap: HeapType, x: Ref, idx: int ::
  { AcqConjunct#trigger(Heap, AcqConjunct(x, idx)) }
  AcqConjunct#everUsed(AcqConjunct(x, idx))
);

// ==================================================
// Translation of method read
// ==================================================

procedure read_1(data_1: Ref, count: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[data_1, $allocated];
    assume Heap[count, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@31.12--31.312) [101354]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@31.12--31.312) [101355]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, acq:=Mask[count, acq] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@31.12--31.312) [101356]"}
        HasDirectPerm(Mask, count, acq);
    assume !Heap[count, acq];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, rel:=Mask[count, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@31.12--31.312) [101357]"}
        HasDirectPerm(Mask, count, rel);
    assume Heap[count, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, init_1:=Mask[count, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [101358]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [101359]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@32.11--32.364) [101360]"}
            HasDirectPerm(PostMask, count, acq);
        assume !PostHeap[count, acq];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@32.11--32.364) [101361]"}
            HasDirectPerm(PostMask, count, rel);
        assume PostHeap[count, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@32.11--32.364) [101362]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [101363]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [101364]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@32.11--32.364) [101365]"}
          HasDirectPerm(PostMask, count, acq);
      assume !PostHeap[count, acq];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@32.11--32.364) [101366]"}
          HasDirectPerm(PostMask, count, rel);
      assume PostHeap[count, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@32.11--32.364) [101367]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@34.3--34.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@34.3--34.16) [101368]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of read might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [101369]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [101370]"}
      (heap(count): int) == 0;
    assert {:msg "  Postcondition of read might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [101371]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@32.11--32.364) [101372]"}
      (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [101373]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@32.11--32.364) [101374]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [101375]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@32.11--32.364) [101376]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@32.11--32.364) [101377]"}
      Mask[count, acq] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, acq];
    Mask := Mask[count, acq:=Mask[count, acq] - wildcard];
    assert {:msg "  Postcondition of read might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@32.11--32.364) [101378]"}
      !Heap[count, acq];
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@32.11--32.364) [101379]"}
      Mask[null, AcqConjunct(count, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count, 0)];
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] - wildcard];
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@32.11--32.364) [101380]"}
      Mask[count, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, rel];
    Mask := Mask[count, rel:=Mask[count, rel] - wildcard];
    assert {:msg "  Postcondition of read might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [101381]"}
      Heap[count, rel] == 0;
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@32.11--32.364) [101382]"}
      Mask[count, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, init_1];
    Mask := Mask[count, init_1:=Mask[count, init_1] - wildcard];
    assert {:msg "  Postcondition of read might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@32.11--32.364) [101383]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@32.11--32.364) [101384]"}
      Mask[data_1, val] == NoPerm;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method read_erroneous
// ==================================================

procedure read_erroneous(data_1: Ref, count: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[data_1, $allocated];
    assume Heap[count, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@38.12--38.312) [101385]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@38.12--38.312) [101386]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, acq:=Mask[count, acq] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@38.12--38.312) [101387]"}
        HasDirectPerm(Mask, count, acq);
    assume !Heap[count, acq];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, rel:=Mask[count, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@38.12--38.312) [101388]"}
        HasDirectPerm(Mask, count, rel);
    assume Heap[count, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, init_1:=Mask[count, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [101389]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [101390]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@40.11--40.373) [101391]"}
            HasDirectPerm(PostMask, count, acq);
        assume !PostHeap[count, acq];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@40.11--40.373) [101392]"}
            HasDirectPerm(PostMask, count, rel);
        assume PostHeap[count, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@40.11--40.373) [101393]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume false;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [101394]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [101395]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@40.11--40.373) [101396]"}
          HasDirectPerm(PostMask, count, acq);
      assume !PostHeap[count, acq];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@40.11--40.373) [101397]"}
          HasDirectPerm(PostMask, count, rel);
      assume PostHeap[count, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@40.11--40.373) [101398]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume false;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@42.3--42.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@42.3--42.16) [101399]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [101400]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [101401]"}
      (heap(count): int) == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [101402]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@40.11--40.373) [101403]"}
      (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [101404]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@40.11--40.373) [101405]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [101406]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@40.11--40.373) [101407]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@40.11--40.373) [101408]"}
      Mask[count, acq] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, acq];
    Mask := Mask[count, acq:=Mask[count, acq] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@40.11--40.373) [101409]"}
      !Heap[count, acq];
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@40.11--40.373) [101410]"}
      Mask[null, AcqConjunct(count, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count, 0)];
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@40.11--40.373) [101411]"}
      Mask[count, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, rel];
    Mask := Mask[count, rel:=Mask[count, rel] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [101412]"}
      Heap[count, rel] == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@40.11--40.373) [101413]"}
      Mask[count, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, init_1];
    Mask := Mask[count, init_1:=Mask[count, init_1] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@40.11--40.373) [101414]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@40.11--40.373) [101415]"}
      Mask[data_1, val] == NoPerm;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion false might not hold. (many_conjuncts.vpr@40.11--40.373) [101416]"}
      false;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method read2
// ==================================================

procedure read2(data_1: Ref, count: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[data_1, $allocated];
    assume Heap[count, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@47.5--58.30) [101417]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@47.5--58.30) [101418]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, acq:=Mask[count, acq] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@47.5--58.30) [101419]"}
        HasDirectPerm(Mask, count, acq);
    assume !Heap[count, acq];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, rel:=Mask[count, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@47.5--58.30) [101420]"}
        HasDirectPerm(Mask, count, rel);
    assume Heap[count, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, init_1:=Mask[count, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [101421]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [101422]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@61.5--74.35) [101423]"}
            HasDirectPerm(PostMask, count, acq);
        assume !PostHeap[count, acq];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@61.5--74.35) [101424]"}
            HasDirectPerm(PostMask, count, rel);
        assume PostHeap[count, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@61.5--74.35) [101425]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [101426]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [101427]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@61.5--74.35) [101428]"}
          HasDirectPerm(PostMask, count, acq);
      assume !PostHeap[count, acq];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@61.5--74.35) [101429]"}
          HasDirectPerm(PostMask, count, rel);
      assume PostHeap[count, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@61.5--74.35) [101430]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@76.3--76.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@76.3--76.16) [101431]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of read2 might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [101432]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read2 might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [101433]"}
      (heap(count): int) == 0;
    assert {:msg "  Postcondition of read2 might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [101434]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read2 might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@61.5--74.35) [101435]"}
      (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read2 might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [101436]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@61.5--74.35) [101437]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read2 might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [101438]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@61.5--74.35) [101439]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@61.5--74.35) [101440]"}
      Mask[count, acq] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, acq];
    Mask := Mask[count, acq:=Mask[count, acq] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@61.5--74.35) [101441]"}
      !Heap[count, acq];
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@61.5--74.35) [101442]"}
      Mask[null, AcqConjunct(count, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count, 0)];
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@61.5--74.35) [101443]"}
      Mask[count, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, rel];
    Mask := Mask[count, rel:=Mask[count, rel] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [101444]"}
      Heap[count, rel] == 0;
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@61.5--74.35) [101445]"}
      Mask[count, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, init_1];
    Mask := Mask[count, init_1:=Mask[count, init_1] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@61.5--74.35) [101446]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read2 might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@61.5--74.35) [101447]"}
      Mask[data_1, val] == NoPerm;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method read2_erroneous
// ==================================================

procedure read2_erroneous(data_1: Ref, count: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[data_1, $allocated];
    assume Heap[count, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@81.5--92.30) [101448]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd_1(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@81.5--92.30) [101449]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, acq:=Mask[count, acq] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@81.5--92.30) [101450]"}
        HasDirectPerm(Mask, count, acq);
    assume !Heap[count, acq];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, rel:=Mask[count, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@81.5--92.30) [101451]"}
        HasDirectPerm(Mask, count, rel);
    assume Heap[count, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count != null;
    Mask := Mask[count, init_1:=Mask[count, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [101452]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd_1(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [101453]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@96.5--110.10) [101454]"}
            HasDirectPerm(PostMask, count, acq);
        assume !PostHeap[count, acq];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@96.5--110.10) [101455]"}
            HasDirectPerm(PostMask, count, rel);
        assume PostHeap[count, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count != null;
        PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@96.5--110.10) [101456]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume false;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [101457]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd_1(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [101458]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, acq:=PostMask[count, acq] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@96.5--110.10) [101459]"}
          HasDirectPerm(PostMask, count, acq);
      assume !PostHeap[count, acq];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count, 0):=PostMask[null, AcqConjunct(count, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, rel:=PostMask[count, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@96.5--110.10) [101460]"}
          HasDirectPerm(PostMask, count, rel);
      assume PostHeap[count, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count != null;
      PostMask := PostMask[count, init_1:=PostMask[count, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@96.5--110.10) [101461]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume false;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@112.3--112.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@112.3--112.16) [101462]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [101463]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [101464]"}
      (heap(count): int) == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [101465]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@96.5--110.10) [101466]"}
      (is_ghost(ghost): bool);
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read2_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [101467]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@96.5--110.10) [101468]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd_1(): Perm);
    assert {:msg "  Postcondition of read2_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [101469]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@96.5--110.10) [101470]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@96.5--110.10) [101471]"}
      Mask[count, acq] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, acq];
    Mask := Mask[count, acq:=Mask[count, acq] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@96.5--110.10) [101472]"}
      !Heap[count, acq];
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@96.5--110.10) [101473]"}
      Mask[null, AcqConjunct(count, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count, 0)];
    Mask := Mask[null, AcqConjunct(count, 0):=Mask[null, AcqConjunct(count, 0)] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@96.5--110.10) [101474]"}
      Mask[count, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, rel];
    Mask := Mask[count, rel:=Mask[count, rel] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [101475]"}
      Heap[count, rel] == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@96.5--110.10) [101476]"}
      Mask[count, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count, init_1];
    Mask := Mask[count, init_1:=Mask[count, init_1] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@96.5--110.10) [101477]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@96.5--110.10) [101478]"}
      Mask[data_1, val] == NoPerm;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion false might not hold. (many_conjuncts.vpr@96.5--110.10) [101479]"}
      false;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}