// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:12:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/adt_as_fields_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/adt_as_fields_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType T;

// Translation of domain function Nil
function  Nil<T>(): ListDomainType T;

// Translation of domain function Cons
function  Cons<T>(value_2: T, tail: (ListDomainType T)): ListDomainType T;

// Translation of domain function get_List_value
function  get_List_value<T>(t_9: (ListDomainType T)): T;

// Translation of domain function get_List_tail
function  get_List_tail<T>(t_9: (ListDomainType T)): ListDomainType T;

// Translation of domain function List_tag
function  List_tag<T>(t_9: (ListDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  value_1 == (get_List_value((Cons(value_1, tail_1): ListDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  tail_1 == (get_List_tail((Cons(value_1, tail_1): ListDomainType T)): ListDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (List_tag((Nil(): ListDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  (List_tag((Cons(value_1, tail_1): ListDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (ListDomainType T) ::
  { (List_tag(t_2): int) } { (get_List_value(t_2): T) } { (get_List_tail(t_2): ListDomainType T) }
  t_2 == (Nil(): ListDomainType T) || t_2 == (Cons((get_List_value(t_2): T), (get_List_tail(t_2): ListDomainType T)): ListDomainType T)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique list: Field NormalField (ListDomainType int);
axiom !IsPredicateField(list);
axiom !IsWandField(list);
const unique condtion: Field NormalField bool;
axiom !IsPredicateField(condtion);
axiom !IsWandField(condtion);

// ==================================================
// Translation of method adt_as_fields_1
// ==================================================

procedure adt_as_fields_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var f_69: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[f_69, $allocated];
  
  // -- Translating statement: f := new(list, condtion) -- adt_as_fields_1.vpr@12.5--12.30
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    f_69 := freshObj;
    Mask := Mask[f_69, list:=Mask[f_69, list] + FullPerm];
    Mask := Mask[f_69, condtion:=Mask[f_69, condtion] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (List_tag(f.list): Int) == 1 || (List_tag(f.list): Int) == 0 -- adt_as_fields_1.vpr@13.5--13.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (List_tag(f.list): Int) == 1 || (List_tag(f.list): Int) == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access f.list (adt_as_fields_1.vpr@13.12--13.41) [222704]"}
        HasDirectPerm(ExhaleWellDef0Mask, f_69, list);
      if (!((List_tag(Heap[f_69, list]): int) == 1)) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access f.list (adt_as_fields_1.vpr@13.12--13.41) [222705]"}
          HasDirectPerm(ExhaleWellDef0Mask, f_69, list);
      }
    assert {:msg "  Assert might fail. Assertion (List_tag(f.list): Int) == 1 || (List_tag(f.list): Int) == 0 might not hold. (adt_as_fields_1.vpr@13.12--13.41) [222706]"}
      (List_tag(Heap[f_69, list]): int) == 1 || (List_tag(Heap[f_69, list]): int) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: f.list := (Cons(42, (Nil(): List[Int])): List[Int]) -- adt_as_fields_1.vpr@16.5--16.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access f.list (adt_as_fields_1.vpr@16.5--16.30) [222707]"}
      FullPerm == Mask[f_69, list];
    Heap := Heap[f_69, list:=(Cons(42, (Nil(): ListDomainType int)): ListDomainType int)];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((List_tag((get_List_tail(f.list): List[Int])): Int) == 0) -- adt_as_fields_1.vpr@17.5--17.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of !((List_tag((get_List_tail(f.list): List[Int])): Int) == 0)
      assert {:msg "  Assert might fail. There might be insufficient permission to access f.list (adt_as_fields_1.vpr@17.12--17.31) [222708]"}
        HasDirectPerm(ExhaleWellDef0Mask, f_69, list);
    assert {:msg "  Assert might fail. Assertion !((List_tag((get_List_tail(f.list): List[Int])): Int) == 0) might not hold. (adt_as_fields_1.vpr@17.12--17.31) [222709]"}
      !((List_tag((get_List_tail(Heap[f_69, list]): ListDomainType int)): int) == 0);
    assume state(Heap, Mask);
  
  // -- Translating statement: f.list := (get_List_tail((Cons(42, (Nil(): List[Int])): List[Int])): List[Int]) -- adt_as_fields_1.vpr@19.5--19.35
    assert {:msg "  Assignment might fail. There might be insufficient permission to access f.list (adt_as_fields_1.vpr@19.5--19.35) [222710]"}
      FullPerm == Mask[f_69, list];
    Heap := Heap[f_69, list:=(get_List_tail((Cons(42, (Nil(): ListDomainType int)): ListDomainType int)): ListDomainType int)];
    assume state(Heap, Mask);
  
  // -- Translating statement: f.condtion := (List_tag((Cons(42, (Nil(): List[Int])): List[Int])): Int) ==
  //   0 -- adt_as_fields_1.vpr@20.5--20.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access f.condtion (adt_as_fields_1.vpr@20.5--20.41) [222711]"}
      FullPerm == Mask[f_69, condtion];
    Heap := Heap[f_69, condtion:=(List_tag((Cons(42, (Nil(): ListDomainType int)): ListDomainType int)): int) == 0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert f.list == (Nil(): List[Int]) -- adt_as_fields_1.vpr@22.5--22.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of f.list == (Nil(): List[Int])
      assert {:msg "  Assert might fail. There might be insufficient permission to access f.list (adt_as_fields_1.vpr@22.12--22.27) [222712]"}
        HasDirectPerm(ExhaleWellDef0Mask, f_69, list);
    assert {:msg "  Assert might fail. Assertion f.list == (Nil(): List[Int]) might not hold. (adt_as_fields_1.vpr@22.12--22.27) [222713]"}
      Heap[f_69, list] == (Nil(): ListDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert f.condtion == true -- adt_as_fields_1.vpr@23.5--23.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of f.condtion == true
      assert {:msg "  Assert might fail. There might be insufficient permission to access f.condtion (adt_as_fields_1.vpr@23.12--23.30) [222714]"}
        HasDirectPerm(ExhaleWellDef0Mask, f_69, condtion);
    assert {:msg "  Assert might fail. Assertion f.condtion == true might not hold. (adt_as_fields_1.vpr@23.12--23.30) [222715]"}
      Heap[f_69, condtion];
    assume state(Heap, Mask);
}