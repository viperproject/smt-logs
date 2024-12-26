// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const reveal_SnapTree.Tree.Valid: bool;

const reveal_SnapTree.Tree.IsSorted: bool;

const reveal_SnapTree.Node.NodeValid: bool;

const reveal_SnapTree.Iterator.Valid: bool;

const reveal_SnapTree.Iterator.R: bool;

const unique class.SnapTree.__default: ClassName;

// Constructor function declaration
function #SnapTree.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#SnapTree.List.Nil()) == ##SnapTree.List.Nil;
// Constructor $Is
axiom $Is(#SnapTree.List.Nil(), Tclass.SnapTree.List());
// Constructor literal
axiom #SnapTree.List.Nil() == Lit(#SnapTree.List.Nil());
}

const unique ##SnapTree.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#SnapTree.List.Nil()) == ##SnapTree.List.Nil;
}

function SnapTree.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { SnapTree.List.Nil_q(d) } 
  SnapTree.List.Nil_q(d) <==> DatatypeCtorId(d) == ##SnapTree.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { SnapTree.List.Nil_q(d) } 
  SnapTree.List.Nil_q(d) ==> d == #SnapTree.List.Nil());

function Tclass.SnapTree.List() : Ty
uses {
// Tclass.SnapTree.List Tag
axiom Tag(Tclass.SnapTree.List()) == Tagclass.SnapTree.List
   && TagFamily(Tclass.SnapTree.List()) == tytagFamily$List;
}

const unique Tagclass.SnapTree.List: TyTag;

// Box/unbox axiom for Tclass.SnapTree.List
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.List()) } 
  $IsBox(bx, Tclass.SnapTree.List())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.SnapTree.List()));

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#SnapTree.List.Nil(), Tclass.SnapTree.List(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#SnapTree.List.Nil(), Tclass.SnapTree.List(), $h));

// Constructor function declaration
function #SnapTree.List.Cons(ref, DatatypeType) : DatatypeType;

const unique ##SnapTree.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: ref, a#16#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#16#0#0, a#16#1#0) } 
  DatatypeCtorId(#SnapTree.List.Cons(a#16#0#0, a#16#1#0)) == ##SnapTree.List.Cons);
}

function SnapTree.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { SnapTree.List.Cons_q(d) } 
  SnapTree.List.Cons_q(d) <==> DatatypeCtorId(d) == ##SnapTree.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { SnapTree.List.Cons_q(d) } 
  SnapTree.List.Cons_q(d)
     ==> (exists a#17#0#0: ref, a#17#1#0: DatatypeType :: 
      d == #SnapTree.List.Cons(a#17#0#0, a#17#1#0)));

function Tclass.SnapTree.Node() : Ty
uses {
// Tclass.SnapTree.Node Tag
axiom Tag(Tclass.SnapTree.Node()) == Tagclass.SnapTree.Node
   && TagFamily(Tclass.SnapTree.Node()) == tytagFamily$Node;
}

const unique Tagclass.SnapTree.Node: TyTag;

// Box/unbox axiom for Tclass.SnapTree.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.Node()) } 
  $IsBox(bx, Tclass.SnapTree.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.SnapTree.Node()));

// Constructor $Is
axiom (forall a#18#0#0: ref, a#18#1#0: DatatypeType :: 
  { $Is(#SnapTree.List.Cons(a#18#0#0, a#18#1#0), Tclass.SnapTree.List()) } 
  $Is(#SnapTree.List.Cons(a#18#0#0, a#18#1#0), Tclass.SnapTree.List())
     <==> $Is(a#18#0#0, Tclass.SnapTree.Node()) && $Is(a#18#1#0, Tclass.SnapTree.List()));

// Constructor $IsAlloc
axiom (forall a#18#0#0: ref, a#18#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#SnapTree.List.Cons(a#18#0#0, a#18#1#0), Tclass.SnapTree.List(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#SnapTree.List.Cons(a#18#0#0, a#18#1#0), Tclass.SnapTree.List(), $h)
       <==> $IsAlloc(a#18#0#0, Tclass.SnapTree.Node(), $h)
         && $IsAlloc(a#18#1#0, Tclass.SnapTree.List(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(SnapTree.List._h0(d), Tclass.SnapTree.Node(), $h) } 
  $IsGoodHeap($h)
       && 
      SnapTree.List.Cons_q(d)
       && $IsAlloc(d, Tclass.SnapTree.List(), $h)
     ==> $IsAlloc(SnapTree.List._h0(d), Tclass.SnapTree.Node(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(SnapTree.List._h1(d), Tclass.SnapTree.List(), $h) } 
  $IsGoodHeap($h)
       && 
      SnapTree.List.Cons_q(d)
       && $IsAlloc(d, Tclass.SnapTree.List(), $h)
     ==> $IsAlloc(SnapTree.List._h1(d), Tclass.SnapTree.List(), $h));

// Constructor literal
axiom (forall a#19#0#0: ref, a#19#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(Lit(a#19#0#0), Lit(a#19#1#0)) } 
  #SnapTree.List.Cons(Lit(a#19#0#0), Lit(a#19#1#0))
     == Lit(#SnapTree.List.Cons(a#19#0#0, a#19#1#0)));

function SnapTree.List._h0(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#20#0#0: ref, a#20#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#20#0#0, a#20#1#0) } 
  SnapTree.List._h0(#SnapTree.List.Cons(a#20#0#0, a#20#1#0)) == a#20#0#0);

function SnapTree.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#21#0#0: ref, a#21#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#21#0#0, a#21#1#0) } 
  SnapTree.List._h1(#SnapTree.List.Cons(a#21#0#0, a#21#1#0)) == a#21#1#0);

// Inductive rank
axiom (forall a#22#0#0: ref, a#22#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#22#0#0, a#22#1#0) } 
  DtRank(a#22#1#0) < DtRank(#SnapTree.List.Cons(a#22#0#0, a#22#1#0)));

// Depth-one case-split function
function $IsA#SnapTree.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#SnapTree.List(d) } 
  $IsA#SnapTree.List(d) ==> SnapTree.List.Nil_q(d) || SnapTree.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { SnapTree.List.Cons_q(d), $Is(d, Tclass.SnapTree.List()) } 
    { SnapTree.List.Nil_q(d), $Is(d, Tclass.SnapTree.List()) } 
  $Is(d, Tclass.SnapTree.List())
     ==> SnapTree.List.Nil_q(d) || SnapTree.List.Cons_q(d));

// Datatype extensional equality declaration
function SnapTree.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #SnapTree.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { SnapTree.List#Equal(a, b), SnapTree.List.Nil_q(a) } 
    { SnapTree.List#Equal(a, b), SnapTree.List.Nil_q(b) } 
  SnapTree.List.Nil_q(a) && SnapTree.List.Nil_q(b) ==> SnapTree.List#Equal(a, b));

// Datatype extensional equality definition: #SnapTree.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { SnapTree.List#Equal(a, b), SnapTree.List.Cons_q(a) } 
    { SnapTree.List#Equal(a, b), SnapTree.List.Cons_q(b) } 
  SnapTree.List.Cons_q(a) && SnapTree.List.Cons_q(b)
     ==> (SnapTree.List#Equal(a, b)
       <==> SnapTree.List._h0(a) == SnapTree.List._h0(b)
         && SnapTree.List#Equal(SnapTree.List._h1(a), SnapTree.List._h1(b))));

// Datatype extensionality axiom: SnapTree.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { SnapTree.List#Equal(a, b) } 
  SnapTree.List#Equal(a, b) <==> a == b);

const unique class.SnapTree.List: ClassName;

const unique class.SnapTree.Tree?: ClassName;

function Tclass.SnapTree.Tree?() : Ty
uses {
// Tclass.SnapTree.Tree? Tag
axiom Tag(Tclass.SnapTree.Tree?()) == Tagclass.SnapTree.Tree?
   && TagFamily(Tclass.SnapTree.Tree?()) == tytagFamily$Tree;
}

const unique Tagclass.SnapTree.Tree?: TyTag;

// Box/unbox axiom for Tclass.SnapTree.Tree?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.Tree?()) } 
  $IsBox(bx, Tclass.SnapTree.Tree?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.SnapTree.Tree?()));

// $Is axiom for class Tree
axiom (forall $o: ref :: 
  { $Is($o, Tclass.SnapTree.Tree?()) } 
  $Is($o, Tclass.SnapTree.Tree?())
     <==> $o == null || dtype($o) == Tclass.SnapTree.Tree?());

// $IsAlloc axiom for class Tree
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.SnapTree.Tree?(), $h) } 
  $IsAlloc($o, Tclass.SnapTree.Tree?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const SnapTree.Tree.Contents: Field
uses {
axiom FDim(SnapTree.Tree.Contents) == 0
   && FieldOfDecl(class.SnapTree.Tree?, field$Contents) == SnapTree.Tree.Contents
   && $IsGhostField(SnapTree.Tree.Contents);
}

// Tree.Contents: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.Contents)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Tree?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Tree.Contents)): Seq, TSeq(TInt)));

// Tree.Contents: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.Contents)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Tree.Contents)): Seq, TSeq(TInt), $h));

const SnapTree.Tree.IsReadonly: Field
uses {
axiom FDim(SnapTree.Tree.IsReadonly) == 0
   && FieldOfDecl(class.SnapTree.Tree?, field$IsReadonly) == SnapTree.Tree.IsReadonly
   && !$IsGhostField(SnapTree.Tree.IsReadonly);
}

// Tree.IsReadonly: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.IsReadonly)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Tree?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Tree.IsReadonly)): bool, TBool));

// Tree.IsReadonly: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.IsReadonly)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Tree.IsReadonly)): bool, TBool, $h));

const SnapTree.Tree.Repr: Field
uses {
axiom FDim(SnapTree.Tree.Repr) == 0
   && FieldOfDecl(class.SnapTree.Tree?, field$Repr) == SnapTree.Tree.Repr
   && $IsGhostField(SnapTree.Tree.Repr);
}

// Tree.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Tree?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Tree.Repr)): Set, TSet(Tclass._System.object())));

// Tree.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Tree.Repr)): Set, TSet(Tclass._System.object()), $h));

const SnapTree.Tree.MutableRepr: Field
uses {
axiom FDim(SnapTree.Tree.MutableRepr) == 0
   && FieldOfDecl(class.SnapTree.Tree?, field$MutableRepr)
     == SnapTree.Tree.MutableRepr
   && $IsGhostField(SnapTree.Tree.MutableRepr);
}

// Tree.MutableRepr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.MutableRepr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Tree?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Tree.MutableRepr)): Set, 
      TSet(Tclass._System.object())));

// Tree.MutableRepr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.MutableRepr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Tree.MutableRepr)): Set, 
      TSet(Tclass._System.object()), 
      $h));

const SnapTree.Tree.root: Field
uses {
axiom FDim(SnapTree.Tree.root) == 0
   && FieldOfDecl(class.SnapTree.Tree?, field$root) == SnapTree.Tree.root
   && !$IsGhostField(SnapTree.Tree.root);
}

function Tclass.SnapTree.Node?() : Ty
uses {
// Tclass.SnapTree.Node? Tag
axiom Tag(Tclass.SnapTree.Node?()) == Tagclass.SnapTree.Node?
   && TagFamily(Tclass.SnapTree.Node?()) == tytagFamily$Node;
}

const unique Tagclass.SnapTree.Node?: TyTag;

// Box/unbox axiom for Tclass.SnapTree.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.Node?()) } 
  $IsBox(bx, Tclass.SnapTree.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.SnapTree.Node?()));

// Tree.root: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.root)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Tree?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Tree.root)): ref, Tclass.SnapTree.Node?()));

// Tree.root: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.root)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Tree.root)): ref, Tclass.SnapTree.Node?(), $h));

const SnapTree.Tree.reprIsShared: Field
uses {
axiom FDim(SnapTree.Tree.reprIsShared) == 0
   && FieldOfDecl(class.SnapTree.Tree?, field$reprIsShared)
     == SnapTree.Tree.reprIsShared
   && !$IsGhostField(SnapTree.Tree.reprIsShared);
}

// Tree.reprIsShared: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.reprIsShared)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Tree?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Tree.reprIsShared)): bool, TBool));

// Tree.reprIsShared: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Tree.reprIsShared)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Tree.reprIsShared)): bool, TBool, $h));

// function declaration for SnapTree.Tree.Valid
function SnapTree.Tree.Valid($reveal: bool, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for SnapTree.Tree.Valid
axiom 4 <= $FunctionContextHeight
   ==> (forall $reveal: bool, $Heap: Heap, this: ref :: 
    { SnapTree.Tree.Valid($reveal, $Heap, this) } 
    SnapTree.Tree.Valid#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.SnapTree.Tree())
           && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
       ==> (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
           ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box(this))
             && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
              $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set))
         && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
           ==> SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
            $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)));
// definition axiom for SnapTree.Tree.Valid (revealed)
axiom {:id "id0"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { SnapTree.Tree.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
    SnapTree.Tree.Valid#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.SnapTree.Tree())
           && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           ==> 
          Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           ==> 
          ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
           ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
           ==> ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                read($Heap, this, SnapTree.Tree.root))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               ==> SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref))
             && (
              ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                  read($Heap, this, SnapTree.Tree.root))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                      SnapTree.Node.Contents)): Seq))
               ==> SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)))
         && SnapTree.Tree.Valid(true, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
             && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
              $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
             && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
               ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
             && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                  read($Heap, this, SnapTree.Tree.root))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                      SnapTree.Node.Contents)): Seq))
             && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
              $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
             && ($Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
               ==> $Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool)
             && (!$Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool
                 && $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set))
             && ($Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool
               ==> Set#Equal($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(this))))));
}

function SnapTree.Tree.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.SnapTree.Tree() : Ty
uses {
// Tclass.SnapTree.Tree Tag
axiom Tag(Tclass.SnapTree.Tree()) == Tagclass.SnapTree.Tree
   && TagFamily(Tclass.SnapTree.Tree()) == tytagFamily$Tree;
}

const unique Tagclass.SnapTree.Tree: TyTag;

// Box/unbox axiom for Tclass.SnapTree.Tree
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.Tree()) } 
  $IsBox(bx, Tclass.SnapTree.Tree())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.SnapTree.Tree()));

// frame axiom for SnapTree.Tree.Valid
axiom (forall $reveal: bool, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), SnapTree.Tree.Valid($reveal, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.SnapTree.Tree())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, SnapTree.Tree.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> SnapTree.Tree.Valid($reveal, $h0, this)
       == SnapTree.Tree.Valid($reveal, $h1, this));

function SnapTree.Tree.Valid#requires(Heap, ref) : bool;

// #requires axiom for SnapTree.Tree.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { SnapTree.Tree.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.SnapTree.Tree())
       && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap)
     ==> SnapTree.Tree.Valid#requires($Heap, this) == true);

procedure {:verboseName "SnapTree.Tree.Valid (well-formedness)"} CheckWellformed$$SnapTree.Tree.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box(this));
  ensures {:id "id2"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
     ==> Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
      $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set);
  ensures {:id "id3"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
     ==> SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
      $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.Valid (well-formedness)"} CheckWellformed$$SnapTree.Tree.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var ##c#0: Seq;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var ##c#1: Seq;
  var newtype$check#2: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;
  var b$reqreads#27: bool;
  var b$reqreads#28: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;
    b$reqreads#27 := true;
    b$reqreads#28 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, SnapTree.Tree.Repr];
    assert {:id "id4"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
            assert {:id "id5"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || SnapTree.Tree.Valid#canCall($Heap, this);
            assume {:id "id6"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
            assume {:id "id7"} Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box(this));
            assume {:id "id8"} Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
              $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set);
        }
        else
        {
            assume {:id "id9"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box(this))
                 && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set);
        }

        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
            assert {:id "id10"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || SnapTree.Tree.Valid#canCall($Heap, this);
            assume {:id "id11"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
            ##c#0 := $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq;
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#0, TSeq(TInt), $Heap);
            assume SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
            assume {:id "id12"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
              $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
        }
        else
        {
            assume {:id "id13"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
               ==> SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
                $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, SnapTree.Tree.MutableRepr];
        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, SnapTree.Tree.MutableRepr];
            b$reqreads#3 := $_ReadsFrame[this, SnapTree.Tree.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set))
        {
            b$reqreads#4 := $_ReadsFrame[this, SnapTree.Tree.root];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null)
            {
                b$reqreads#5 := $_ReadsFrame[this, SnapTree.Tree.Contents];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
             ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq)))
        {
            b$reqreads#6 := $_ReadsFrame[this, SnapTree.Tree.root];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null)
            {
                b$reqreads#7 := $_ReadsFrame[this, SnapTree.Tree.root];
                b$reqreads#8 := $_ReadsFrame[this, SnapTree.Tree.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                  read($Heap, this, SnapTree.Tree.root)))
                {
                    b$reqreads#9 := $_ReadsFrame[this, SnapTree.Tree.root];
                    assert {:id "id14"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
                    b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr];
                    b$reqreads#11 := $_ReadsFrame[this, SnapTree.Tree.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    read($Heap, this, SnapTree.Tree.root))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set))
                {
                    b$reqreads#12 := $_ReadsFrame[this, SnapTree.Tree.root];
                    assert {:id "id15"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
                    b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    read($Heap, this, SnapTree.Tree.root))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#14 := $_ReadsFrame[this, SnapTree.Tree.root];
                    assert {:id "id16"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, SnapTree.Tree.root), Tclass.SnapTree.Node?(), $Heap);
                    b$reqreads#15 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, SnapTree.Tree.root)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assume SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                    read($Heap, this, SnapTree.Tree.root))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                    $Box(this))
                   && SnapTree.Node.NodeValid($LS($LZ), 
                    reveal_SnapTree.Node.NodeValid, 
                    $Heap, 
                    $Unbox(read($Heap, this, SnapTree.Tree.root)): ref))
                {
                    b$reqreads#16 := $_ReadsFrame[this, SnapTree.Tree.Contents];
                    b$reqreads#17 := $_ReadsFrame[this, SnapTree.Tree.root];
                    assert {:id "id17"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
                    b$reqreads#18 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Contents];
                }
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
             ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                read($Heap, this, SnapTree.Tree.root))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
               && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                    SnapTree.Node.Contents)): Seq)))
        {
            b$reqreads#19 := $_ReadsFrame[this, SnapTree.Tree.Contents];
            ##c#1 := $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq;
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#1, TSeq(TInt), $Heap);
            assume SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
             ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                read($Heap, this, SnapTree.Tree.root))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
               && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                    SnapTree.Node.Contents)): Seq))
           && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
            $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq))
        {
            b$reqreads#20 := $_ReadsFrame[this, SnapTree.Tree.IsReadonly];
            if ($Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool)
            {
                b$reqreads#21 := $_ReadsFrame[this, SnapTree.Tree.reprIsShared];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
             ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                read($Heap, this, SnapTree.Tree.root))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
               && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                    SnapTree.Node.Contents)): Seq))
           && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
            $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
           && ($Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
             ==> $Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool))
        {
            b$reqreads#22 := $_ReadsFrame[this, SnapTree.Tree.reprIsShared];
            if (!$Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool)
            {
                b$reqreads#23 := $_ReadsFrame[this, SnapTree.Tree.root];
                newtype$check#2 := null;
            }

            if (!$Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool
               && $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null)
            {
                b$reqreads#24 := $_ReadsFrame[this, SnapTree.Tree.root];
                assert {:id "id18"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
                b$reqreads#25 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr];
                b$reqreads#26 := $_ReadsFrame[this, SnapTree.Tree.MutableRepr];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
             ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
           && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                read($Heap, this, SnapTree.Tree.root))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
               && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                    SnapTree.Node.Contents)): Seq))
           && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
            $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
           && ($Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
             ==> $Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool)
           && (!$Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool
               && $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
             ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
              $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set)))
        {
            b$reqreads#27 := $_ReadsFrame[this, SnapTree.Tree.reprIsShared];
            if ($Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool)
            {
                b$reqreads#28 := $_ReadsFrame[this, SnapTree.Tree.MutableRepr];
            }
        }

        assume {:id "id19"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
             && Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
              $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
             && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
               ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
             && ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                  read($Heap, this, SnapTree.Tree.root))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                      SnapTree.Node.Contents)): Seq))
             && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
              $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
             && ($Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
               ==> $Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool)
             && (!$Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool
                 && $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set))
             && ($Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool
               ==> Set#Equal($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(this)))));
        assume Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box(this))
           ==> 
          Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
            $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
           ==> 
          ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null
           ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq))
           ==> ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                read($Heap, this, SnapTree.Tree.root))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               ==> SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref))
             && (
              ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
                  read($Heap, this, SnapTree.Tree.root))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Tree.root)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                      SnapTree.Node.Contents)): Seq))
               ==> SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq));
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this), TBool);
        assert {:id "id20"} b$reqreads#1;
        assert {:id "id21"} b$reqreads#2;
        assert {:id "id22"} b$reqreads#3;
        assert {:id "id23"} b$reqreads#4;
        assert {:id "id24"} b$reqreads#5;
        assert {:id "id25"} b$reqreads#6;
        assert {:id "id26"} b$reqreads#7;
        assert {:id "id27"} b$reqreads#8;
        assert {:id "id28"} b$reqreads#9;
        assert {:id "id29"} b$reqreads#10;
        assert {:id "id30"} b$reqreads#11;
        assert {:id "id31"} b$reqreads#12;
        assert {:id "id32"} b$reqreads#13;
        assert {:id "id33"} b$reqreads#14;
        assert {:id "id34"} b$reqreads#15;
        assert {:id "id35"} b$reqreads#16;
        assert {:id "id36"} b$reqreads#17;
        assert {:id "id37"} b$reqreads#18;
        assert {:id "id38"} b$reqreads#19;
        assert {:id "id39"} b$reqreads#20;
        assert {:id "id40"} b$reqreads#21;
        assert {:id "id41"} b$reqreads#22;
        assert {:id "id42"} b$reqreads#23;
        assert {:id "id43"} b$reqreads#24;
        assert {:id "id44"} b$reqreads#25;
        assert {:id "id45"} b$reqreads#26;
        assert {:id "id46"} b$reqreads#27;
        assert {:id "id47"} b$reqreads#28;
        return;

        assume false;
    }
}



// function declaration for SnapTree.Tree.IsSorted
function SnapTree.Tree.IsSorted($reveal: bool, c#0: Seq) : bool
uses {
// definition axiom for SnapTree.Tree.IsSorted (revealed)
axiom {:id "id48"} 0 <= $FunctionContextHeight
   ==> (forall c#0: Seq :: 
    { SnapTree.Tree.IsSorted(true, c#0) } 
    SnapTree.Tree.IsSorted#canCall(c#0)
         || (0 < $FunctionContextHeight && $Is(c#0, TSeq(TInt)))
       ==> SnapTree.Tree.IsSorted(true, c#0)
         == (forall i#0: int, j#0: int :: 
          { $Unbox(Seq#Index(c#0, j#0)): int, $Unbox(Seq#Index(c#0, i#0)): int } 
          LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(c#0)
             ==> $Unbox(Seq#Index(c#0, i#0)): int < $Unbox(Seq#Index(c#0, j#0)): int));
// definition axiom for SnapTree.Tree.IsSorted for all literals (revealed)
axiom {:id "id49"} 0 <= $FunctionContextHeight
   ==> (forall c#0: Seq :: 
    {:weight 3} { SnapTree.Tree.IsSorted(true, Lit(c#0)) } 
    SnapTree.Tree.IsSorted#canCall(Lit(c#0))
         || (0 < $FunctionContextHeight && $Is(c#0, TSeq(TInt)))
       ==> SnapTree.Tree.IsSorted(true, Lit(c#0))
         == (forall i#1: int, j#1: int :: 
          { $Unbox(Seq#Index(c#0, j#1)): int, $Unbox(Seq#Index(c#0, i#1)): int } 
          LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(Lit(c#0))
             ==> $Unbox(Seq#Index(Lit(c#0), i#1)): int < $Unbox(Seq#Index(Lit(c#0), j#1)): int));
}

function SnapTree.Tree.IsSorted#canCall(c#0: Seq) : bool;

function SnapTree.Tree.IsSorted#requires(Seq) : bool;

// #requires axiom for SnapTree.Tree.IsSorted
axiom (forall c#0: Seq :: 
  { SnapTree.Tree.IsSorted#requires(c#0) } 
  $Is(c#0, TSeq(TInt)) ==> SnapTree.Tree.IsSorted#requires(c#0) == true);

procedure {:verboseName "SnapTree.Tree.IsSorted (well-formedness)"} CheckWellformed$$SnapTree.Tree.IsSorted(c#0: Seq where $Is(c#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.IsSorted (well-formedness)"} CheckWellformed$$SnapTree.Tree.IsSorted(c#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;
  var j#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#2;
        havoc j#2;
        if (true)
        {
            if (LitInt(0) <= i#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < j#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < j#2 && j#2 < Seq#Length(c#0))
            {
                assert {:id "id50"} 0 <= i#2 && i#2 < Seq#Length(c#0);
                assert {:id "id51"} 0 <= j#2 && j#2 < Seq#Length(c#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id52"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, c#0)
           == (forall i#3: int, j#3: int :: 
            { $Unbox(Seq#Index(c#0, j#3)): int, $Unbox(Seq#Index(c#0, i#3)): int } 
            LitInt(0) <= i#3 && i#3 < j#3 && j#3 < Seq#Length(c#0)
               ==> $Unbox(Seq#Index(c#0, i#3)): int < $Unbox(Seq#Index(c#0, j#3)): int);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, c#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "SnapTree.Tree.IsSortedProperty (well-formedness)"} CheckWellFormed$$SnapTree.Tree.IsSortedProperty(c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.IsSortedProperty (well-formedness)"} CheckWellFormed$$SnapTree.Tree.IsSortedProperty(c#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##c#0: Seq;
  var i#0: int;
  var j#0: int;


    // AddMethodImpl: IsSortedProperty, CheckWellFormed$$SnapTree.Tree.IsSortedProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, TSeq(TInt), $Heap);
    assume SnapTree.Tree.IsSorted#canCall(c#0);
    // Begin Comprehension WF check
    havoc i#0;
    havoc j#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(c#0))
        {
            assert {:id "id53"} 0 <= i#0 && i#0 < Seq#Length(c#0);
            assert {:id "id54"} 0 <= j#0 && j#0 < Seq#Length(c#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id55"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, c#0)
       <==> (forall i#1: int, j#1: int :: 
        { $Unbox(Seq#Index(c#0, j#1)): int, $Unbox(Seq#Index(c#0, i#1)): int } 
        LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(c#0)
           ==> $Unbox(Seq#Index(c#0, i#1)): int < $Unbox(Seq#Index(c#0, j#1)): int);
}



procedure {:verboseName "SnapTree.Tree.IsSortedProperty (call)"} Call$$SnapTree.Tree.IsSortedProperty(c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.IsSorted#canCall(c#0);
  ensures {:id "id56"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, c#0)
     <==> (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(c#0, j#1)): int, $Unbox(Seq#Index(c#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(c#0)
         ==> $Unbox(Seq#Index(c#0, i#1)): int < $Unbox(Seq#Index(c#0, j#1)): int);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SnapTree.Tree.IsSortedProperty (correctness)"} Impl$$SnapTree.Tree.IsSortedProperty(c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.IsSorted#canCall(c#0);
  ensures {:id "id57"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, c#0)
     <==> (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(c#0, j#1)): int, $Unbox(Seq#Index(c#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(c#0)
         ==> $Unbox(Seq#Index(c#0, i#1)): int < $Unbox(Seq#Index(c#0, j#1)): int);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.IsSortedProperty (correctness)"} Impl$$SnapTree.Tree.IsSortedProperty(c#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: IsSortedProperty, Impl$$SnapTree.Tree.IsSortedProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(117,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(117,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id58"} Call$$SnapTree.Tree.reveal__IsSorted();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Tree.SmallIsSorted (well-formedness)"} CheckWellFormed$$SnapTree.Tree.SmallIsSorted(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.SmallIsSorted (call)"} Call$$SnapTree.Tree.SmallIsSorted(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures Seq#Length(s#0) <= LitInt(1) ==> SnapTree.Tree.IsSorted#canCall(s#0);
  ensures {:id "id62"} Seq#Length(s#0) <= LitInt(1)
     ==> SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SnapTree.Tree.SmallIsSorted (correctness)"} Impl$$SnapTree.Tree.SmallIsSorted(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures Seq#Length(s#0) <= LitInt(1) ==> SnapTree.Tree.IsSorted#canCall(s#0);
  ensures {:id "id63"} Seq#Length(s#0) <= LitInt(1)
     ==> SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.SmallIsSorted (correctness)"} Impl$$SnapTree.Tree.SmallIsSorted(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: SmallIsSorted, Impl$$SnapTree.Tree.SmallIsSorted
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(122,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(122,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id64"} Call$$SnapTree.Tree.reveal__IsSorted();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for SnapTree.Tree.AllBelow
function SnapTree.Tree.AllBelow(s#0: Seq, d#0: int) : bool
uses {
// definition axiom for SnapTree.Tree.AllBelow (revealed)
axiom {:id "id65"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq, d#0: int :: 
    { SnapTree.Tree.AllBelow(s#0, d#0) } 
    SnapTree.Tree.AllBelow#canCall(s#0, d#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TInt)))
       ==> SnapTree.Tree.AllBelow(s#0, d#0)
         == (forall i#0: int :: 
          { $Unbox(Seq#Index(s#0, i#0)): int } 
          LitInt(0) <= i#0 && i#0 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, i#0)): int < d#0));
// definition axiom for SnapTree.Tree.AllBelow for all literals (revealed)
axiom {:id "id66"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq, d#0: int :: 
    {:weight 3} { SnapTree.Tree.AllBelow(Lit(s#0), LitInt(d#0)) } 
    SnapTree.Tree.AllBelow#canCall(Lit(s#0), LitInt(d#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TInt)))
       ==> SnapTree.Tree.AllBelow(Lit(s#0), LitInt(d#0))
         == (forall i#1: int :: 
          { $Unbox(Seq#Index(s#0, i#1)): int } 
          LitInt(0) <= i#1 && i#1 < Seq#Length(Lit(s#0))
             ==> $Unbox(Seq#Index(Lit(s#0), i#1)): int < d#0));
}

function SnapTree.Tree.AllBelow#canCall(s#0: Seq, d#0: int) : bool;

function SnapTree.Tree.AllBelow#requires(Seq, int) : bool;

// #requires axiom for SnapTree.Tree.AllBelow
axiom (forall s#0: Seq, d#0: int :: 
  { SnapTree.Tree.AllBelow#requires(s#0, d#0) } 
  $Is(s#0, TSeq(TInt)) ==> SnapTree.Tree.AllBelow#requires(s#0, d#0) == true);

procedure {:verboseName "SnapTree.Tree.AllBelow (well-formedness)"} CheckWellformed$$SnapTree.Tree.AllBelow(s#0: Seq where $Is(s#0, TSeq(TInt)), d#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.AllBelow (well-formedness)"} CheckWellformed$$SnapTree.Tree.AllBelow(s#0: Seq, d#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#2;
        if (true)
        {
            if (LitInt(0) <= i#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < Seq#Length(s#0))
            {
                assert {:id "id67"} 0 <= i#2 && i#2 < Seq#Length(s#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id68"} SnapTree.Tree.AllBelow(s#0, d#0)
           == (forall i#3: int :: 
            { $Unbox(Seq#Index(s#0, i#3)): int } 
            LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
               ==> $Unbox(Seq#Index(s#0, i#3)): int < d#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Tree.AllBelow(s#0, d#0), TBool);
        return;

        assume false;
    }
}



// function declaration for SnapTree.Tree.AllAbove
function SnapTree.Tree.AllAbove(d#0: int, s#0: Seq) : bool
uses {
// definition axiom for SnapTree.Tree.AllAbove (revealed)
axiom {:id "id69"} 0 <= $FunctionContextHeight
   ==> (forall d#0: int, s#0: Seq :: 
    { SnapTree.Tree.AllAbove(d#0, s#0) } 
    SnapTree.Tree.AllAbove#canCall(d#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TInt)))
       ==> SnapTree.Tree.AllAbove(d#0, s#0)
         == (forall i#0: int :: 
          { $Unbox(Seq#Index(s#0, i#0)): int } 
          LitInt(0) <= i#0 && i#0 < Seq#Length(s#0)
             ==> d#0 < $Unbox(Seq#Index(s#0, i#0)): int));
// definition axiom for SnapTree.Tree.AllAbove for all literals (revealed)
axiom {:id "id70"} 0 <= $FunctionContextHeight
   ==> (forall d#0: int, s#0: Seq :: 
    {:weight 3} { SnapTree.Tree.AllAbove(LitInt(d#0), Lit(s#0)) } 
    SnapTree.Tree.AllAbove#canCall(LitInt(d#0), Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TInt)))
       ==> SnapTree.Tree.AllAbove(LitInt(d#0), Lit(s#0))
         == (forall i#1: int :: 
          { $Unbox(Seq#Index(s#0, i#1)): int } 
          LitInt(0) <= i#1 && i#1 < Seq#Length(Lit(s#0))
             ==> d#0 < $Unbox(Seq#Index(Lit(s#0), i#1)): int));
}

function SnapTree.Tree.AllAbove#canCall(d#0: int, s#0: Seq) : bool;

function SnapTree.Tree.AllAbove#requires(int, Seq) : bool;

// #requires axiom for SnapTree.Tree.AllAbove
axiom (forall d#0: int, s#0: Seq :: 
  { SnapTree.Tree.AllAbove#requires(d#0, s#0) } 
  $Is(s#0, TSeq(TInt)) ==> SnapTree.Tree.AllAbove#requires(d#0, s#0) == true);

procedure {:verboseName "SnapTree.Tree.AllAbove (well-formedness)"} CheckWellformed$$SnapTree.Tree.AllAbove(d#0: int, s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.AllAbove (well-formedness)"} CheckWellformed$$SnapTree.Tree.AllAbove(d#0: int, s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#2;
        if (true)
        {
            if (LitInt(0) <= i#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < Seq#Length(s#0))
            {
                assert {:id "id71"} 0 <= i#2 && i#2 < Seq#Length(s#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id72"} SnapTree.Tree.AllAbove(d#0, s#0)
           == (forall i#3: int :: 
            { $Unbox(Seq#Index(s#0, i#3)): int } 
            LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
               ==> d#0 < $Unbox(Seq#Index(s#0, i#3)): int);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Tree.AllAbove(d#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for SnapTree.Tree.SortedSplit
function SnapTree.Tree.SortedSplit(left#0: Seq, data#0: int, right#0: Seq) : bool
uses {
// definition axiom for SnapTree.Tree.SortedSplit (revealed)
axiom {:id "id73"} 1 <= $FunctionContextHeight
   ==> (forall left#0: Seq, data#0: int, right#0: Seq :: 
    { SnapTree.Tree.SortedSplit(left#0, data#0, right#0) } 
    SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(left#0, TSeq(TInt))
           && $Is(right#0, TSeq(TInt)))
       ==> SnapTree.Tree.IsSorted#canCall(left#0)
         && (SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, left#0)
           ==> SnapTree.Tree.IsSorted#canCall(right#0)
             && (SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, right#0)
               ==> SnapTree.Tree.AllBelow#canCall(left#0, data#0)
                 && (SnapTree.Tree.AllBelow(left#0, data#0)
                   ==> SnapTree.Tree.AllAbove#canCall(data#0, right#0))))
         && SnapTree.Tree.SortedSplit(left#0, data#0, right#0)
           == (
            SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, left#0)
             && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, right#0)
             && SnapTree.Tree.AllBelow(left#0, data#0)
             && SnapTree.Tree.AllAbove(data#0, right#0)));
// definition axiom for SnapTree.Tree.SortedSplit for all literals (revealed)
axiom {:id "id74"} 1 <= $FunctionContextHeight
   ==> (forall left#0: Seq, data#0: int, right#0: Seq :: 
    {:weight 3} { SnapTree.Tree.SortedSplit(Lit(left#0), LitInt(data#0), Lit(right#0)) } 
    SnapTree.Tree.SortedSplit#canCall(Lit(left#0), LitInt(data#0), Lit(right#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(left#0, TSeq(TInt))
           && $Is(right#0, TSeq(TInt)))
       ==> SnapTree.Tree.IsSorted#canCall(Lit(left#0))
         && (SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, Lit(left#0))
           ==> SnapTree.Tree.IsSorted#canCall(Lit(right#0))
             && (SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, Lit(right#0))
               ==> SnapTree.Tree.AllBelow#canCall(Lit(left#0), LitInt(data#0))
                 && (Lit(SnapTree.Tree.AllBelow(Lit(left#0), LitInt(data#0)))
                   ==> SnapTree.Tree.AllAbove#canCall(LitInt(data#0), Lit(right#0)))))
         && SnapTree.Tree.SortedSplit(Lit(left#0), LitInt(data#0), Lit(right#0))
           == (
            SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, Lit(left#0))
             && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, Lit(right#0))
             && SnapTree.Tree.AllBelow(Lit(left#0), LitInt(data#0))
             && SnapTree.Tree.AllAbove(LitInt(data#0), Lit(right#0))));
}

function SnapTree.Tree.SortedSplit#canCall(left#0: Seq, data#0: int, right#0: Seq) : bool;

function SnapTree.Tree.SortedSplit#requires(Seq, int, Seq) : bool;

// #requires axiom for SnapTree.Tree.SortedSplit
axiom (forall left#0: Seq, data#0: int, right#0: Seq :: 
  { SnapTree.Tree.SortedSplit#requires(left#0, data#0, right#0) } 
  $Is(left#0, TSeq(TInt)) && $Is(right#0, TSeq(TInt))
     ==> SnapTree.Tree.SortedSplit#requires(left#0, data#0, right#0) == true);

procedure {:verboseName "SnapTree.Tree.SortedSplit (well-formedness)"} CheckWellformed$$SnapTree.Tree.SortedSplit(left#0: Seq where $Is(left#0, TSeq(TInt)), 
    data#0: int, 
    right#0: Seq where $Is(right#0, TSeq(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.SortCombineProperty (well-formedness)"} CheckWellFormed$$SnapTree.Tree.SortCombineProperty(left#0: Seq where $Is(left#0, TSeq(TInt)) && $IsAlloc(left#0, TSeq(TInt), $Heap), 
    data#0: int, 
    right#0: Seq
       where $Is(right#0, TSeq(TInt)) && $IsAlloc(right#0, TSeq(TInt), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.SortCombineProperty (call)"} Call$$SnapTree.Tree.SortCombineProperty(left#0: Seq where $Is(left#0, TSeq(TInt)) && $IsAlloc(left#0, TSeq(TInt), $Heap), 
    data#0: int, 
    right#0: Seq
       where $Is(right#0, TSeq(TInt)) && $IsAlloc(right#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id78"} SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
     ==> SnapTree.Tree.SortedSplit(left#0, data#0, right#0)
       || SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, left#0);
  requires {:id "id79"} SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
     ==> SnapTree.Tree.SortedSplit(left#0, data#0, right#0)
       || SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, right#0);
  requires {:id "id80"} SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
     ==> SnapTree.Tree.SortedSplit(left#0, data#0, right#0)
       || (SnapTree.Tree.AllBelow#canCall(left#0, data#0)
         ==> SnapTree.Tree.AllBelow(left#0, data#0)
           || (forall i#0: int :: 
            { $Unbox(Seq#Index(left#0, i#0)): int } 
            LitInt(0) <= i#0 && i#0 < Seq#Length(left#0)
               ==> $Unbox(Seq#Index(left#0, i#0)): int < data#0));
  requires {:id "id81"} SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
     ==> SnapTree.Tree.SortedSplit(left#0, data#0, right#0)
       || (SnapTree.Tree.AllAbove#canCall(data#0, right#0)
         ==> SnapTree.Tree.AllAbove(data#0, right#0)
           || (forall i#1: int :: 
            { $Unbox(Seq#Index(right#0, i#1)): int } 
            LitInt(0) <= i#1 && i#1 < Seq#Length(right#0)
               ==> data#0 < $Unbox(Seq#Index(right#0, i#1)): int));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.IsSorted#canCall(Seq#Append(Seq#Append(left#0, Seq#Build(Seq#Empty(): Seq, $Box(data#0))), right#0));
  ensures {:id "id82"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
    Seq#Append(Seq#Append(left#0, Seq#Build(Seq#Empty(): Seq, $Box(data#0))), right#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SnapTree.Tree.SortCombineProperty (correctness)"} Impl$$SnapTree.Tree.SortCombineProperty(left#0: Seq where $Is(left#0, TSeq(TInt)) && $IsAlloc(left#0, TSeq(TInt), $Heap), 
    data#0: int, 
    right#0: Seq
       where $Is(right#0, TSeq(TInt)) && $IsAlloc(right#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id83"} SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
     && 
    SnapTree.Tree.SortedSplit(left#0, data#0, right#0)
     && 
    SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, left#0)
     && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, right#0)
     && SnapTree.Tree.AllBelow(left#0, data#0)
     && SnapTree.Tree.AllAbove(data#0, right#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.IsSorted#canCall(Seq#Append(Seq#Append(left#0, Seq#Build(Seq#Empty(): Seq, $Box(data#0))), right#0));
  ensures {:id "id84"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
    Seq#Append(Seq#Append(left#0, Seq#Build(Seq#Empty(): Seq, $Box(data#0))), right#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.SortCombineProperty (correctness)"} Impl$$SnapTree.Tree.SortCombineProperty(left#0: Seq, data#0: int, right#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: SortCombineProperty, Impl$$SnapTree.Tree.SortCombineProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(141,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(141,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id85"} Call$$SnapTree.Tree.reveal__IsSorted();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Tree.Empty (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Empty() returns (this: ref);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.Empty (call)"} Call$$SnapTree.Tree.Empty()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id91"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id92"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq);
  ensures {:id "id93"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id94"} Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
    $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set);
  ensures {:id "id95"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.Empty (correctness)"} Impl$$SnapTree.Tree.Empty() returns (this: ref, $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id96"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id97"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq);
  ensures {:id "id98"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id99"} Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
    $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set);
  ensures {:id "id100"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.Empty (correctness)"} Impl$$SnapTree.Tree.Empty() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Seq;
  var this.IsReadonly: bool;
  var this.Repr: Set;
  var this.MutableRepr: Set;
  var this.root: ref;
  var this.reprIsShared: bool;
  var $rhs#0: Seq;
  var $rhs#1: bool;
  var $rhs#2: Set;
  var $rhs#3: Set;
  var $rhs#4: ref;
  var newtype$check#0: ref;
  var $rhs#5: bool;
  var s##0: Seq;

    // AddMethodImpl: Empty, Impl$$SnapTree.Tree.Empty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(147,5)
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(147,5)
    assume this != null && $Is(this, Tclass.SnapTree.Tree?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool == this.IsReadonly;
    assume $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set == this.MutableRepr;
    assume $Unbox(read($Heap, this, SnapTree.Tree.root)): ref == this.root;
    assume $Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool == this.reprIsShared;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(147,5)
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(149,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(149,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id101"} Call$$SnapTree.Tree.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(150,16)
    assume true;
    assert {:id "id102"} $_ModifiesFrame[this, SnapTree.Tree.Contents];
    assume true;
    $rhs#0 := Lit(Seq#Empty(): Seq);
    $Heap := update($Heap, this, SnapTree.Tree.Contents, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(151,18)
    assume true;
    assert {:id "id105"} $_ModifiesFrame[this, SnapTree.Tree.IsReadonly];
    assume true;
    $rhs#1 := Lit(false);
    $Heap := update($Heap, this, SnapTree.Tree.IsReadonly, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(152,19)
    assume true;
    assert {:id "id108"} $_ModifiesFrame[this, SnapTree.Tree.MutableRepr];
    assume true;
    $rhs#2 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, SnapTree.Tree.MutableRepr, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(153,12)
    assume true;
    assert {:id "id111"} $_ModifiesFrame[this, SnapTree.Tree.Repr];
    assume true;
    $rhs#3 := $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set;
    $Heap := update($Heap, this, SnapTree.Tree.Repr, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(154,12)
    assume true;
    assert {:id "id114"} $_ModifiesFrame[this, SnapTree.Tree.root];
    newtype$check#0 := null;
    assume true;
    $rhs#4 := null;
    $Heap := update($Heap, this, SnapTree.Tree.root, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(155,20)
    assume true;
    assert {:id "id117"} $_ModifiesFrame[this, SnapTree.Tree.reprIsShared];
    assume true;
    $rhs#5 := Lit(false);
    $Heap := update($Heap, this, SnapTree.Tree.reprIsShared, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(156,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq;
    call {:id "id120"} Call$$SnapTree.Tree.SmallIsSorted(s##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Tree.CreateSnapshot (well-formedness)"} CheckWellFormed$$SnapTree.Tree.CreateSnapshot(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (snapshot#0: ref
       where $Is(snapshot#0, Tclass.SnapTree.Tree())
         && $IsAlloc(snapshot#0, Tclass.SnapTree.Tree(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.CreateSnapshot (well-formedness)"} CheckWellFormed$$SnapTree.Tree.CreateSnapshot(this: ref) returns (snapshot#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: CreateSnapshot, CheckWellFormed$$SnapTree.Tree.CreateSnapshot
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id121"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc snapshot#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id122"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    assert {:id "id123"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id124"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id125"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id126"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
    assert {:id "id127"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id128"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
       == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
    assert {:id "id129"} snapshot#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(snapshot#0), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, snapshot#0);
    assume {:id "id130"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, snapshot#0);
    assert {:id "id131"} snapshot#0 != null;
    assume {:id "id132"} Seq#Equal($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Contents)): Seq, 
      $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
    assert {:id "id133"} snapshot#0 != null;
    assume {:id "id134"} $Unbox(read($Heap, snapshot#0, SnapTree.Tree.IsReadonly)): bool;
    assert {:id "id135"} snapshot#0 != null;
    assume {:id "id136"} Set#Disjoint($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, 
      $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set);
    assert {:id "id137"} snapshot#0 != null;
    assert {:id "id138"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id139"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "SnapTree.Tree.CreateSnapshot (call)"} Call$$SnapTree.Tree.CreateSnapshot(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (snapshot#0: ref
       where $Is(snapshot#0, Tclass.SnapTree.Tree())
         && $IsAlloc(snapshot#0, Tclass.SnapTree.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id140"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id141"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id142"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id143"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id144"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  free ensures SnapTree.Tree.Valid#canCall($Heap, snapshot#0);
  ensures {:id "id145"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, snapshot#0);
  free ensures true;
  ensures {:id "id146"} Seq#Equal($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id147"} $Unbox(read($Heap, snapshot#0, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id148"} Set#Disjoint($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, 
    $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set);
  free ensures true;
  ensures {:id "id149"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.CreateSnapshot (correctness)"} Impl$$SnapTree.Tree.CreateSnapshot(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (defass#snapshot#0: bool, 
    snapshot#0: ref
       where defass#snapshot#0
         ==> $Is(snapshot#0, Tclass.SnapTree.Tree())
           && $IsAlloc(snapshot#0, Tclass.SnapTree.Tree(), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id150"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id151"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id152"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id153"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id154"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  free ensures SnapTree.Tree.Valid#canCall($Heap, snapshot#0);
  ensures {:id "id155"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, snapshot#0);
  free ensures true;
  ensures {:id "id156"} Seq#Equal($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id157"} $Unbox(read($Heap, snapshot#0, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id158"} Set#Disjoint($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, 
    $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set);
  free ensures true;
  ensures {:id "id159"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.CreateSnapshot (correctness)"} Impl$$SnapTree.Tree.CreateSnapshot(this: ref)
   returns (defass#snapshot#0: bool, snapshot#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Set;
  var $rhs#1: Set;
  var $rhs#2: bool;
  var $nw: ref;
  var $rhs#3: Seq;
  var $rhs#4: bool;
  var $rhs#5: Set;
  var $rhs#6: Set;
  var $rhs#7: ref;
  var $rhs#8: bool;

    // AddMethodImpl: CreateSnapshot, Impl$$SnapTree.Tree.CreateSnapshot
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(171,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(171,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id160"} Call$$SnapTree.Tree.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(173,12)
    assume true;
    assert {:id "id161"} $_ModifiesFrame[this, SnapTree.Tree.Repr];
    assume true;
    $rhs#0 := Set#Union($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
      $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set);
    $Heap := update($Heap, this, SnapTree.Tree.Repr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(174,19)
    assume true;
    assert {:id "id164"} $_ModifiesFrame[this, SnapTree.Tree.MutableRepr];
    assume true;
    $rhs#1 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, SnapTree.Tree.MutableRepr, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(175,20)
    assume true;
    assert {:id "id167"} $_ModifiesFrame[this, SnapTree.Tree.reprIsShared];
    assume true;
    $rhs#2 := Lit(true);
    $Heap := update($Heap, this, SnapTree.Tree.reprIsShared, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(176,16)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(176,28)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id170"} $nw := Call$$SnapTree.Tree.Private();
    // TrCallStmt: After ProcessCallStmt
    snapshot#0 := $nw;
    defass#snapshot#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(177,25)
    assert {:id "id172"} defass#snapshot#0;
    assert {:id "id173"} snapshot#0 != null;
    assume true;
    assert {:id "id174"} $_ModifiesFrame[snapshot#0, SnapTree.Tree.Contents];
    assume true;
    $rhs#3 := $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq;
    $Heap := update($Heap, snapshot#0, SnapTree.Tree.Contents, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(178,27)
    assert {:id "id177"} defass#snapshot#0;
    assert {:id "id178"} snapshot#0 != null;
    assume true;
    assert {:id "id179"} $_ModifiesFrame[snapshot#0, SnapTree.Tree.IsReadonly];
    assume true;
    $rhs#4 := Lit(true);
    $Heap := update($Heap, snapshot#0, SnapTree.Tree.IsReadonly, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(179,28)
    assert {:id "id182"} defass#snapshot#0;
    assert {:id "id183"} snapshot#0 != null;
    assume true;
    assert {:id "id184"} $_ModifiesFrame[snapshot#0, SnapTree.Tree.MutableRepr];
    assert {:id "id185"} defass#snapshot#0;
    assume true;
    $rhs#5 := Set#UnionOne(Set#Empty(): Set, $Box(snapshot#0));
    $Heap := update($Heap, snapshot#0, SnapTree.Tree.MutableRepr, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(180,21)
    assert {:id "id188"} defass#snapshot#0;
    assert {:id "id189"} snapshot#0 != null;
    assume true;
    assert {:id "id190"} $_ModifiesFrame[snapshot#0, SnapTree.Tree.Repr];
    assert {:id "id191"} defass#snapshot#0;
    assume true;
    $rhs#6 := Set#Union(Set#Difference($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
      Set#UnionOne(Set#Empty(): Set, $Box(snapshot#0)));
    $Heap := update($Heap, snapshot#0, SnapTree.Tree.Repr, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(181,21)
    assert {:id "id194"} defass#snapshot#0;
    assert {:id "id195"} snapshot#0 != null;
    assume true;
    assert {:id "id196"} $_ModifiesFrame[snapshot#0, SnapTree.Tree.root];
    assume true;
    $rhs#7 := $Unbox(read($Heap, this, SnapTree.Tree.root)): ref;
    $Heap := update($Heap, snapshot#0, SnapTree.Tree.root, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(182,29)
    assert {:id "id199"} defass#snapshot#0;
    assert {:id "id200"} snapshot#0 != null;
    assume true;
    assert {:id "id201"} $_ModifiesFrame[snapshot#0, SnapTree.Tree.reprIsShared];
    assume true;
    $rhs#8 := Lit(true);
    $Heap := update($Heap, snapshot#0, SnapTree.Tree.reprIsShared, $Box($rhs#8));
    assume $IsGoodHeap($Heap);
    assert {:id "id204"} defass#snapshot#0;
}



procedure {:verboseName "SnapTree.Tree.Private (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Private() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.Private (call)"} Call$$SnapTree.Tree.Private()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.Private (correctness)"} Impl$$SnapTree.Tree.Private() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.Insert (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.Insert (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Insert(this: ref, x#0: int) returns (pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Insert, CheckWellFormed$$SnapTree.Tree.Insert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id205"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    assume {:id "id206"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc pos#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id207"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    assert {:id "id208"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id209"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id210"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id211"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id212"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id213"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
       == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
    if (*)
    {
        assert {:id "id214"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
        assume {:id "id215"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0));
        assume {:id "id216"} pos#0 < 0;
        assert {:id "id217"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
        assume {:id "id218"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
          $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
    }
    else
    {
        assume {:id "id219"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
           ==> pos#0 < 0
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
              $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
    }

    if (*)
    {
        assert {:id "id220"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
        assume {:id "id221"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq))
        {
            assert {:id "id222"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
        }

        assume {:id "id223"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
             == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq) + 1;
        assert {:id "id224"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
        assert {:id "id225"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
        assert {:id "id226"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
        assert {:id "id227"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
        assume {:id "id228"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id229"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
               == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Tree.Insert (call)"} Call$$SnapTree.Tree.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  // user-defined preconditions
  requires {:id "id230"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  requires {:id "id231"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id232"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id233"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id234"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id235"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id236"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id237"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  free ensures true;
  ensures {:id "id238"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id239"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id240"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq) + 1;
  ensures {:id "id241"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.Insert (correctness)"} Impl$$SnapTree.Tree.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap), 
    x#0: int)
   returns (pos#0: int, $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id242"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  requires {:id "id243"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id244"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id245"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id246"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id247"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id248"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id249"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  free ensures true;
  ensures {:id "id250"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id251"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id252"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq) + 1;
  ensures {:id "id253"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.Insert (correctness)"} Impl$$SnapTree.Tree.Insert(this: ref, x#0: int) returns (pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $rhs##0_0: ref;
  var $rhs##0_1: int;
  var n##0_0: ref;
  var x##0_0: int;
  var $rhs#0_0: Seq;
  var $rhs#0_1: Set;
  var $rhs#0_2: Set;
  var newtype$check#1_0: ref;
  var $rhs#1_0_0: ref;
  var $nw: ref;
  var x##1_0_0: int;
  var $rhs#1_0_1: Seq;
  var $rhs#1_0_2: Set;
  var $rhs#1_0_3: Set;
  var $rhs##1_1_0: int;
  var x##1_1_0: int;
  var $rhs#1_1_0: Seq;
  var $rhs#1_1_1: Set;
  var $rhs#1_1_2: Set;

    // AddMethodImpl: Insert, Impl$$SnapTree.Tree.Insert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(198,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(198,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id254"} Call$$SnapTree.Tree.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(199,7)
    assume true;
    if ($Unbox(read($Heap, this, SnapTree.Tree.reprIsShared)): bool)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(200,43)
        assume true;
        $obj0 := this;
        assert {:id "id255"} $_ModifiesFrame[$obj0, SnapTree.Tree.root];
        assume true;
        // TrCallStmt: Adding lhs with type Node?
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := $Unbox(read($Heap, this, SnapTree.Tree.root)): ref;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        call {:id "id256"} $rhs##0_0, $rhs##0_1 := Call$$SnapTree.Node.FunctionalInsert(n##0_0, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        $Heap := update($Heap, $obj0, SnapTree.Tree.root, $Box($rhs##0_0));
        assume $IsGoodHeap($Heap);
        pos#0 := $rhs##0_1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(201,18)
        assume true;
        assert {:id "id259"} $_ModifiesFrame[this, SnapTree.Tree.Contents];
        assert {:id "id260"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, 
            $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
            SnapTree.Node.Contents)): Seq;
        $Heap := update($Heap, this, SnapTree.Tree.Contents, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(202,14)
        assume true;
        assert {:id "id263"} $_ModifiesFrame[this, SnapTree.Tree.Repr];
        assert {:id "id264"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
        assume true;
        $rhs#0_1 := Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(this)));
        $Heap := update($Heap, this, SnapTree.Tree.Repr, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(203,21)
        assume true;
        assert {:id "id267"} $_ModifiesFrame[this, SnapTree.Tree.MutableRepr];
        assume true;
        $rhs#0_2 := Set#UnionOne(Set#Empty(): Set, $Box(this));
        $Heap := update($Heap, this, SnapTree.Tree.MutableRepr, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(204,14)
        newtype$check#1_0 := null;
        assume true;
        if ($Unbox(read($Heap, this, SnapTree.Tree.root)): ref == null)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(205,14)
            assume true;
            assert {:id "id270"} $_ModifiesFrame[this, SnapTree.Tree.root];
            // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(205,26)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := x#0;
            call {:id "id271"} $nw := Call$$SnapTree.Node.Init(x##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            $rhs#1_0_0 := $nw;
            $Heap := update($Heap, this, SnapTree.Tree.root, $Box($rhs#1_0_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(206,18)
            assume true;
            assert {:id "id274"} $_ModifiesFrame[this, SnapTree.Tree.Contents];
            assert {:id "id275"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
            assume true;
            $rhs#1_0_1 := $Unbox(read($Heap, 
                $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                SnapTree.Node.Contents)): Seq;
            $Heap := update($Heap, this, SnapTree.Tree.Contents, $Box($rhs#1_0_1));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(207,13)
            assume true;
            assume true;
            pos#0 := LitInt(0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(208,21)
            assume true;
            assert {:id "id279"} $_ModifiesFrame[this, SnapTree.Tree.MutableRepr];
            assert {:id "id280"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
            assume true;
            $rhs#1_0_2 := Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(this)));
            $Heap := update($Heap, this, SnapTree.Tree.MutableRepr, $Box($rhs#1_0_2));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(209,14)
            assume true;
            assert {:id "id283"} $_ModifiesFrame[this, SnapTree.Tree.Repr];
            assume true;
            $rhs#1_0_3 := $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set;
            $Heap := update($Heap, this, SnapTree.Tree.Repr, $Box($rhs#1_0_3));
            assume $IsGoodHeap($Heap);
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(211,35)
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assert {:id "id286"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_1_0 := x#0;
            assert {:id "id287"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
                    $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id288"} $rhs##1_1_0 := Call$$SnapTree.Node.MutatingInsert($Unbox(read($Heap, this, SnapTree.Tree.root)): ref, x##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            pos#0 := $rhs##1_1_0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(212,18)
            assume true;
            assert {:id "id290"} $_ModifiesFrame[this, SnapTree.Tree.Contents];
            assert {:id "id291"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
            assume true;
            $rhs#1_1_0 := $Unbox(read($Heap, 
                $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, 
                SnapTree.Node.Contents)): Seq;
            $Heap := update($Heap, this, SnapTree.Tree.Contents, $Box($rhs#1_1_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(213,21)
            assume true;
            assert {:id "id294"} $_ModifiesFrame[this, SnapTree.Tree.MutableRepr];
            assert {:id "id295"} $Unbox(read($Heap, this, SnapTree.Tree.root)): ref != null;
            assume true;
            $rhs#1_1_1 := Set#Union($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set);
            $Heap := update($Heap, this, SnapTree.Tree.MutableRepr, $Box($rhs#1_1_1));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(214,14)
            assume true;
            assert {:id "id298"} $_ModifiesFrame[this, SnapTree.Tree.Repr];
            assume true;
            $rhs#1_1_2 := $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set;
            $Heap := update($Heap, this, SnapTree.Tree.Repr, $Box($rhs#1_1_2));
            assume $IsGoodHeap($Heap);
        }
    }
}



function Tclass.SnapTree.Iterator() : Ty
uses {
// Tclass.SnapTree.Iterator Tag
axiom Tag(Tclass.SnapTree.Iterator()) == Tagclass.SnapTree.Iterator
   && TagFamily(Tclass.SnapTree.Iterator()) == tytagFamily$Iterator;
}

const unique Tagclass.SnapTree.Iterator: TyTag;

// Box/unbox axiom for Tclass.SnapTree.Iterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.Iterator()) } 
  $IsBox(bx, Tclass.SnapTree.Iterator())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.SnapTree.Iterator()));

procedure {:verboseName "SnapTree.Tree.CreateIterator (well-formedness)"} CheckWellFormed$$SnapTree.Tree.CreateIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (iter#0: ref
       where $Is(iter#0, Tclass.SnapTree.Iterator())
         && $IsAlloc(iter#0, Tclass.SnapTree.Iterator(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.SnapTree.Iterator?() : Ty
uses {
// Tclass.SnapTree.Iterator? Tag
axiom Tag(Tclass.SnapTree.Iterator?()) == Tagclass.SnapTree.Iterator?
   && TagFamily(Tclass.SnapTree.Iterator?()) == tytagFamily$Iterator;
}

const unique Tagclass.SnapTree.Iterator?: TyTag;

// Box/unbox axiom for Tclass.SnapTree.Iterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SnapTree.Iterator?()) } 
  $IsBox(bx, Tclass.SnapTree.Iterator?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.SnapTree.Iterator?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.CreateIterator (well-formedness)"} CheckWellFormed$$SnapTree.Tree.CreateIterator(this: ref) returns (iter#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: CreateIterator, CheckWellFormed$$SnapTree.Tree.CreateIterator
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id301"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc iter#0;
    assert {:id "id302"} iter#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(iter#0), Tclass.SnapTree.Iterator?(), $Heap);
    assume SnapTree.Iterator.Valid#canCall($Heap, iter#0);
    assume {:id "id303"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, iter#0);
    assert {:id "id304"} iter#0 != null;
    assume {:id "id305"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id306"} iter#0 != null;
    assume {:id "id307"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.T)): ref == this;
    assert {:id "id308"} iter#0 != null;
    assume {:id "id309"} Seq#Equal($Unbox(read($Heap, iter#0, SnapTree.Iterator.Contents)): Seq, 
      $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
    assert {:id "id310"} iter#0 != null;
    assume {:id "id311"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.N)): int == LitInt(-1);
}



procedure {:verboseName "SnapTree.Tree.CreateIterator (call)"} Call$$SnapTree.Tree.CreateIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (iter#0: ref
       where $Is(iter#0, Tclass.SnapTree.Iterator())
         && $IsAlloc(iter#0, Tclass.SnapTree.Iterator(), $Heap));
  // user-defined preconditions
  requires {:id "id312"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, iter#0);
  ensures {:id "id313"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, iter#0);
  ensures {:id "id314"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id315"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.T)): ref == this;
  ensures {:id "id316"} Seq#Equal($Unbox(read($Heap, iter#0, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id317"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.N)): int == LitInt(-1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.CreateIterator (correctness)"} Impl$$SnapTree.Tree.CreateIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (defass#iter#0: bool, 
    iter#0: ref
       where defass#iter#0
         ==> $Is(iter#0, Tclass.SnapTree.Iterator())
           && $IsAlloc(iter#0, Tclass.SnapTree.Iterator(), $Heap), 
    $_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id318"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, iter#0);
  ensures {:id "id319"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, iter#0);
  ensures {:id "id320"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id321"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.T)): ref == this;
  ensures {:id "id322"} Seq#Equal($Unbox(read($Heap, iter#0, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id323"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.N)): int == LitInt(-1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.CreateIterator (correctness)"} Impl$$SnapTree.Tree.CreateIterator(this: ref) returns (defass#iter#0: bool, iter#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var t##0: ref;

    // AddMethodImpl: CreateIterator, Impl$$SnapTree.Tree.CreateIterator
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(223,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(223,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id324"} Call$$SnapTree.Tree.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(224,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(224,28)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := this;
    call {:id "id325"} $nw := Call$$SnapTree.Iterator.Init(t##0);
    // TrCallStmt: After ProcessCallStmt
    iter#0 := $nw;
    defass#iter#0 := true;
    assert {:id "id327"} defass#iter#0;
}



procedure {:verboseName "SnapTree.Tree.Print (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.Print (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Print(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Print, CheckWellFormed$$SnapTree.Tree.Print
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id328"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, this);
    assume {:id "id329"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
    assert {:id "id330"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id331"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id332"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id333"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
    assert {:id "id334"} $IsAlloc(this, Tclass.SnapTree.Tree(), old($Heap));
    assume {:id "id335"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
       == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
}



procedure {:verboseName "SnapTree.Tree.Print (call)"} Call$$SnapTree.Tree.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id336"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id337"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id338"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id339"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id340"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.Print (correctness)"} Impl$$SnapTree.Tree.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id341"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id342"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id343"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id344"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id345"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Tree.Print (correctness)"} Impl$$SnapTree.Tree.Print(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#s#0: bool;
  var s#0: ref
     where defass#s#0
       ==> $Is(s#0, Tclass.SnapTree.Tree()) && $IsAlloc(s#0, Tclass.SnapTree.Tree(), $Heap);
  var $rhs##1_0: ref;
  var defass#it#0: bool;
  var it#0: ref
     where defass#it#0
       ==> $Is(it#0, Tclass.SnapTree.Iterator())
         && $IsAlloc(it#0, Tclass.SnapTree.Iterator(), $Heap);
  var $rhs##0: ref;

    // AddMethodImpl: Print, Impl$$SnapTree.Tree.Print
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(233,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(233,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id346"} Call$$SnapTree.Tree.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    havoc s#0 /* where defass#s#0
       ==> $Is(s#0, Tclass.SnapTree.Tree()) && $IsAlloc(s#0, Tclass.SnapTree.Tree(), $Heap) */;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(235,7)
    assume true;
    if ($Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(236,11)
        assume true;
        assume true;
        s#0 := this;
        defass#s#0 := true;
        pop;
    }
    else
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(238,28)
        assume true;
        // TrCallStmt: Adding lhs with type Tree
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id348"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id349"} $rhs##1_0 := Call$$SnapTree.Tree.CreateSnapshot(this);
        // TrCallStmt: After ProcessCallStmt
        s#0 := $rhs##1_0;
        defass#s#0 := true;
        pop;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(240,33)
    assume true;
    // TrCallStmt: Adding lhs with type Iterator
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id351"} defass#s#0;
    assume true;
    assert {:id "id352"} s#0 != null;
    call {:id "id353"} $rhs##0 := Call$$SnapTree.Tree.CreateIterator(s#0);
    // TrCallStmt: After ProcessCallStmt
    it#0 := $rhs##0;
    defass#it#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(241,15)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id355"} defass#it#0;
    assume true;
    assert {:id "id356"} it#0 != null;
    assert {:id "id357"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id358"} Call$$SnapTree.Iterator.Print(it#0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Tree.reveal_Valid (well-formedness)"} {:verify false} CheckWellFormed$$SnapTree.Tree.reveal__Valid();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.reveal_Valid (call)"} {:verify false} Call$$SnapTree.Tree.reveal__Valid();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_SnapTree.Tree.Valid;



procedure {:verboseName "SnapTree.Tree.reveal_IsSorted (well-formedness)"} {:verify false} CheckWellFormed$$SnapTree.Tree.reveal__IsSorted();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.reveal_IsSorted (call)"} {:verify false} Call$$SnapTree.Tree.reveal__IsSorted();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_SnapTree.Tree.IsSorted;



// $Is axiom for non-null type SnapTree.Tree
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.SnapTree.Tree()) } { $Is(c#0, Tclass.SnapTree.Tree?()) } 
  $Is(c#0, Tclass.SnapTree.Tree())
     <==> $Is(c#0, Tclass.SnapTree.Tree?()) && c#0 != null);

// $IsAlloc axiom for non-null type SnapTree.Tree
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.SnapTree.Tree(), $h) } 
    { $IsAlloc(c#0, Tclass.SnapTree.Tree?(), $h) } 
  $IsAlloc(c#0, Tclass.SnapTree.Tree(), $h)
     <==> $IsAlloc(c#0, Tclass.SnapTree.Tree?(), $h));

const unique class.SnapTree.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.SnapTree.Node?()) } 
  $Is($o, Tclass.SnapTree.Node?())
     <==> $o == null || dtype($o) == Tclass.SnapTree.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.SnapTree.Node?(), $h) } 
  $IsAlloc($o, Tclass.SnapTree.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const SnapTree.Node.Contents: Field
uses {
axiom FDim(SnapTree.Node.Contents) == 0
   && FieldOfDecl(class.SnapTree.Node?, field$Contents) == SnapTree.Node.Contents
   && $IsGhostField(SnapTree.Node.Contents);
}

// Node.Contents: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.Contents)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Node?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Node.Contents)): Seq, TSeq(TInt)));

// Node.Contents: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.Contents)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Node.Contents)): Seq, TSeq(TInt), $h));

const SnapTree.Node.Repr: Field
uses {
axiom FDim(SnapTree.Node.Repr) == 0
   && FieldOfDecl(class.SnapTree.Node?, field$Repr) == SnapTree.Node.Repr
   && $IsGhostField(SnapTree.Node.Repr);
}

// Node.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Node?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Node.Repr)): Set, TSet(Tclass._System.object())));

// Node.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Node.Repr)): Set, TSet(Tclass._System.object()), $h));

const SnapTree.Node.data: Field
uses {
axiom FDim(SnapTree.Node.data) == 0
   && FieldOfDecl(class.SnapTree.Node?, field$data) == SnapTree.Node.data
   && !$IsGhostField(SnapTree.Node.data);
}

// Node.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Node?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Node.data)): int, TInt));

// Node.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Node.data)): int, TInt, $h));

const SnapTree.Node.left: Field
uses {
axiom FDim(SnapTree.Node.left) == 0
   && FieldOfDecl(class.SnapTree.Node?, field$left) == SnapTree.Node.left
   && !$IsGhostField(SnapTree.Node.left);
}

// Node.left: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.left)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Node?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Node.left)): ref, Tclass.SnapTree.Node?()));

// Node.left: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.left)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Node.left)): ref, Tclass.SnapTree.Node?(), $h));

const SnapTree.Node.right: Field
uses {
axiom FDim(SnapTree.Node.right) == 0
   && FieldOfDecl(class.SnapTree.Node?, field$right) == SnapTree.Node.right
   && !$IsGhostField(SnapTree.Node.right);
}

// Node.right: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.right)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Node?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Node.right)): ref, Tclass.SnapTree.Node?()));

// Node.right: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Node.right)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Node.right)): ref, Tclass.SnapTree.Node?(), $h));

// function declaration for SnapTree.Node.NodeValid
function SnapTree.Node.NodeValid($ly: LayerType, $reveal: bool, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for SnapTree.Node.NodeValid
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $reveal: bool, $Heap: Heap, this: ref :: 
    { SnapTree.Node.NodeValid($ly, $reveal, $Heap, this) } 
    SnapTree.Node.NodeValid#canCall($Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.SnapTree.Node())
           && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap))
       ==> 
      SnapTree.Node.NodeValid($ly, reveal_SnapTree.Node.NodeValid, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
         && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
          $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq));
// definition axiom for SnapTree.Node.NodeValid (revealed)
axiom {:id "id359"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { SnapTree.Node.NodeValid($LS($ly), true, $Heap, this), $IsGoodHeap($Heap) } 
    SnapTree.Node.NodeValid#canCall($Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.SnapTree.Node())
           && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           ==> ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               ==> SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
             && (
              ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($ly, 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
               ==> ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
                   ==> 
                  Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    read($Heap, this, SnapTree.Node.right))
                   ==> 
                  Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                   ==> 
                  !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Box(this))
                   ==> SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
                 && (
                  ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
                   ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                      read($Heap, this, SnapTree.Node.right))
                     && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                      $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                     && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                      $Box(this))
                     && SnapTree.Node.NodeValid($ly, 
                      reveal_SnapTree.Node.NodeValid, 
                      $Heap, 
                      $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
                   ==> 
                  ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
                     && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
                   ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set))
                   ==> SnapTree.Node.SortedSplit#canCall($Heap, 
                      $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                      $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                      $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
                     && (SnapTree.Node.SortedSplit($Heap, 
                        $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                        $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                        $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
                       ==> SnapTree.Node.CombineSplit#canCall($Heap, 
                          $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                          $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                          $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
                         && (Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
                            SnapTree.Node.CombineSplit($Heap, 
                              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                              $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
                           ==> SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq))))))
         && SnapTree.Node.NodeValid($LS($ly), true, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($ly, 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
             && ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.right))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($ly, 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
             && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
                 && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
               ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set))
             && SnapTree.Node.SortedSplit($Heap, 
              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
              $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              SnapTree.Node.CombineSplit($Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
             && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
              $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)));
}

function SnapTree.Node.NodeValid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, $Heap: Heap, this: ref :: 
  { SnapTree.Node.NodeValid($LS($ly), $reveal, $Heap, this) } 
  SnapTree.Node.NodeValid($LS($ly), $reveal, $Heap, this)
     == SnapTree.Node.NodeValid($ly, $reveal, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, $Heap: Heap, this: ref :: 
  { SnapTree.Node.NodeValid(AsFuelBottom($ly), $reveal, $Heap, this) } 
  SnapTree.Node.NodeValid($ly, $reveal, $Heap, this)
     == SnapTree.Node.NodeValid($LZ, $reveal, $Heap, this));

// frame axiom for SnapTree.Node.NodeValid
axiom (forall $ly: LayerType, $reveal: bool, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), SnapTree.Node.NodeValid($ly, $reveal, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.SnapTree.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, SnapTree.Node.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> SnapTree.Node.NodeValid($ly, $reveal, $h0, this)
       == SnapTree.Node.NodeValid($ly, $reveal, $h1, this));

function SnapTree.Node.NodeValid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for SnapTree.Node.NodeValid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { SnapTree.Node.NodeValid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.SnapTree.Node())
       && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap)
     ==> SnapTree.Node.NodeValid#requires($ly, $Heap, this) == true);

procedure {:verboseName "SnapTree.Node.NodeValid (well-formedness)"} CheckWellformed$$SnapTree.Node.NodeValid(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id360"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this));
  ensures {:id "id361"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this)
     ==> SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
      $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.NodeValid (well-formedness)"} CheckWellformed$$SnapTree.Node.NodeValid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var ##c#0: Seq;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var ##left#0: ref;
  var ##data#0: int;
  var ##right#0: ref;
  var ##left#1: ref;
  var ##data#1: int;
  var ##right#1: ref;
  var ##c#1: Seq;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;
  var b$reqreads#27: bool;
  var b$reqreads#28: bool;
  var b$reqreads#29: bool;
  var b$reqreads#30: bool;
  var b$reqreads#31: bool;
  var b$reqreads#32: bool;
  var b$reqreads#33: bool;
  var b$reqreads#34: bool;
  var b$reqreads#35: bool;
  var b$reqreads#36: bool;
  var b$reqreads#37: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;
    b$reqreads#27 := true;
    b$reqreads#28 := true;
    b$reqreads#29 := true;
    b$reqreads#30 := true;
    b$reqreads#31 := true;
    b$reqreads#32 := true;
    b$reqreads#33 := true;
    b$reqreads#34 := true;
    b$reqreads#35 := true;
    b$reqreads#36 := true;
    b$reqreads#37 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, SnapTree.Node.Repr];
    assert {:id "id362"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
            assert {:id "id363"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || SnapTree.Node.NodeValid#canCall($Heap, this);
            assume {:id "id364"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
            assume {:id "id365"} Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this));
            ##c#0 := $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq;
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#0, TSeq(TInt), $Heap);
            assume SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
            assume {:id "id366"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
              $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
        }
        else
        {
            assume {:id "id367"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
                 && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
                  $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, SnapTree.Node.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, SnapTree.Node.left];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null)
            {
                b$reqreads#3 := $_ReadsFrame[this, SnapTree.Node.left];
                b$reqreads#4 := $_ReadsFrame[this, SnapTree.Node.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.left)))
                {
                    b$reqreads#5 := $_ReadsFrame[this, SnapTree.Node.left];
                    assert {:id "id368"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
                    b$reqreads#6 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr];
                    b$reqreads#7 := $_ReadsFrame[this, SnapTree.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    read($Heap, this, SnapTree.Node.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set))
                {
                    b$reqreads#8 := $_ReadsFrame[this, SnapTree.Node.left];
                    assert {:id "id369"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
                    b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    read($Heap, this, SnapTree.Node.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#10 := $_ReadsFrame[this, SnapTree.Node.left];
                    assert {:id "id370"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, SnapTree.Node.left), Tclass.SnapTree.Node?(), $Heap);
                    b$reqreads#11 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, SnapTree.Node.left)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id371"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, SnapTree.Node.left))), 
                        Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, SnapTree.Node.left))));
                    assume SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref);
                }
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref)))
        {
            b$reqreads#12 := $_ReadsFrame[this, SnapTree.Node.right];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null)
            {
                b$reqreads#13 := $_ReadsFrame[this, SnapTree.Node.right];
                b$reqreads#14 := $_ReadsFrame[this, SnapTree.Node.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.right)))
                {
                    b$reqreads#15 := $_ReadsFrame[this, SnapTree.Node.right];
                    assert {:id "id372"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
                    b$reqreads#16 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr];
                    b$reqreads#17 := $_ReadsFrame[this, SnapTree.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    read($Heap, this, SnapTree.Node.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set))
                {
                    b$reqreads#18 := $_ReadsFrame[this, SnapTree.Node.right];
                    assert {:id "id373"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
                    b$reqreads#19 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    read($Heap, this, SnapTree.Node.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#20 := $_ReadsFrame[this, SnapTree.Node.right];
                    assert {:id "id374"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, SnapTree.Node.right), Tclass.SnapTree.Node?(), $Heap);
                    b$reqreads#21 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, SnapTree.Node.right)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id375"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, SnapTree.Node.right))), 
                        Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, SnapTree.Node.right))));
                    assume SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref);
                }
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.right)): ref)))
        {
            b$reqreads#22 := $_ReadsFrame[this, SnapTree.Node.left];
            newtype$check#2 := null;
            if ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null)
            {
                b$reqreads#23 := $_ReadsFrame[this, SnapTree.Node.right];
                newtype$check#3 := null;
            }

            if ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null)
            {
                b$reqreads#24 := $_ReadsFrame[this, SnapTree.Node.left];
                assert {:id "id376"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
                b$reqreads#25 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr];
                b$reqreads#26 := $_ReadsFrame[this, SnapTree.Node.right];
                assert {:id "id377"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
                b$reqreads#27 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set)))
        {
            b$reqreads#28 := $_ReadsFrame[this, SnapTree.Node.left];
            ##left#0 := $Unbox(read($Heap, this, SnapTree.Node.left)): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##left#0, Tclass.SnapTree.Node?(), $Heap);
            b$reqreads#29 := $_ReadsFrame[this, SnapTree.Node.data];
            ##data#0 := $Unbox(read($Heap, this, SnapTree.Node.data)): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##data#0, TInt, $Heap);
            b$reqreads#30 := $_ReadsFrame[this, SnapTree.Node.right];
            ##right#0 := $Unbox(read($Heap, this, SnapTree.Node.right)): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##right#0, Tclass.SnapTree.Node?(), $Heap);
            b$reqreads#31 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == ##left#0 || $o == ##right#0)
                 ==> $_ReadsFrame[$o, $f]);
            assume SnapTree.Node.SortedSplit#canCall($Heap, 
              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
              $Unbox(read($Heap, this, SnapTree.Node.right)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set))
           && SnapTree.Node.SortedSplit($Heap, 
            $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
            $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
            $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
        {
            b$reqreads#32 := $_ReadsFrame[this, SnapTree.Node.Contents];
            b$reqreads#33 := $_ReadsFrame[this, SnapTree.Node.left];
            ##left#1 := $Unbox(read($Heap, this, SnapTree.Node.left)): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##left#1, Tclass.SnapTree.Node?(), $Heap);
            b$reqreads#34 := $_ReadsFrame[this, SnapTree.Node.data];
            ##data#1 := $Unbox(read($Heap, this, SnapTree.Node.data)): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##data#1, TInt, $Heap);
            b$reqreads#35 := $_ReadsFrame[this, SnapTree.Node.right];
            ##right#1 := $Unbox(read($Heap, this, SnapTree.Node.right)): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##right#1, Tclass.SnapTree.Node?(), $Heap);
            b$reqreads#36 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == ##left#1 || $o == ##right#1)
                 ==> $_ReadsFrame[$o, $f]);
            assume SnapTree.Node.CombineSplit#canCall($Heap, 
              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
              $Unbox(read($Heap, this, SnapTree.Node.right)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               && SnapTree.Node.NodeValid($LS($LZ), 
                reveal_SnapTree.Node.NodeValid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
           && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
             ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set))
           && SnapTree.Node.SortedSplit($Heap, 
            $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
            $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
            $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
           && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
            SnapTree.Node.CombineSplit($Heap, 
              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
              $Unbox(read($Heap, this, SnapTree.Node.right)): ref)))
        {
            b$reqreads#37 := $_ReadsFrame[this, SnapTree.Node.Contents];
            ##c#1 := $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq;
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#1, TSeq(TInt), $Heap);
            assume SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
        }

        assume {:id "id378"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
             && ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.right))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
             && ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
                 && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
               ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set))
             && SnapTree.Node.SortedSplit($Heap, 
              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
              $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              SnapTree.Node.CombineSplit($Heap, 
                $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
             && SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
              $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq));
        assume Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box(this))
           ==> ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                read($Heap, this, SnapTree.Node.left))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box(this))
               ==> SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
             && (
              ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                  read($Heap, this, SnapTree.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                  $Box(this))
                 && SnapTree.Node.NodeValid($LS($LZ), 
                  reveal_SnapTree.Node.NodeValid, 
                  $Heap, 
                  $Unbox(read($Heap, this, SnapTree.Node.left)): ref))
               ==> ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
                   ==> 
                  Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                    read($Heap, this, SnapTree.Node.right))
                   ==> 
                  Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                   ==> 
                  !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                    $Box(this))
                   ==> SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
                 && (
                  ($Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
                   ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
                      read($Heap, this, SnapTree.Node.right))
                     && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                      $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set)
                     && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                      $Box(this))
                     && SnapTree.Node.NodeValid($LS($LZ), 
                      reveal_SnapTree.Node.NodeValid, 
                      $Heap, 
                      $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
                   ==> 
                  ($Unbox(read($Heap, this, SnapTree.Node.left)): ref != null
                     && $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null
                   ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set))
                   ==> SnapTree.Node.SortedSplit#canCall($Heap, 
                      $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                      $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                      $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
                     && (SnapTree.Node.SortedSplit($Heap, 
                        $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                        $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                        $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
                       ==> SnapTree.Node.CombineSplit#canCall($Heap, 
                          $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                          $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                          $Unbox(read($Heap, this, SnapTree.Node.right)): ref)
                         && (Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
                            SnapTree.Node.CombineSplit($Heap, 
                              $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
                              $Unbox(read($Heap, this, SnapTree.Node.data)): int, 
                              $Unbox(read($Heap, this, SnapTree.Node.right)): ref))
                           ==> SnapTree.Tree.IsSorted#canCall($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)))));
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this), 
          TBool);
        assert {:id "id379"} b$reqreads#1;
        assert {:id "id380"} b$reqreads#2;
        assert {:id "id381"} b$reqreads#3;
        assert {:id "id382"} b$reqreads#4;
        assert {:id "id383"} b$reqreads#5;
        assert {:id "id384"} b$reqreads#6;
        assert {:id "id385"} b$reqreads#7;
        assert {:id "id386"} b$reqreads#8;
        assert {:id "id387"} b$reqreads#9;
        assert {:id "id388"} b$reqreads#10;
        assert {:id "id389"} b$reqreads#11;
        assert {:id "id390"} b$reqreads#12;
        assert {:id "id391"} b$reqreads#13;
        assert {:id "id392"} b$reqreads#14;
        assert {:id "id393"} b$reqreads#15;
        assert {:id "id394"} b$reqreads#16;
        assert {:id "id395"} b$reqreads#17;
        assert {:id "id396"} b$reqreads#18;
        assert {:id "id397"} b$reqreads#19;
        assert {:id "id398"} b$reqreads#20;
        assert {:id "id399"} b$reqreads#21;
        assert {:id "id400"} b$reqreads#22;
        assert {:id "id401"} b$reqreads#23;
        assert {:id "id402"} b$reqreads#24;
        assert {:id "id403"} b$reqreads#25;
        assert {:id "id404"} b$reqreads#26;
        assert {:id "id405"} b$reqreads#27;
        assert {:id "id406"} b$reqreads#28;
        assert {:id "id407"} b$reqreads#29;
        assert {:id "id408"} b$reqreads#30;
        assert {:id "id409"} b$reqreads#31;
        assert {:id "id410"} b$reqreads#32;
        assert {:id "id411"} b$reqreads#33;
        assert {:id "id412"} b$reqreads#34;
        assert {:id "id413"} b$reqreads#35;
        assert {:id "id414"} b$reqreads#36;
        assert {:id "id415"} b$reqreads#37;
        return;

        assume false;
    }
}



// function declaration for SnapTree.Node.SortedSplit
function SnapTree.Node.SortedSplit($heap: Heap, left#0: ref, data#0: int, right#0: ref) : bool
uses {
// definition axiom for SnapTree.Node.SortedSplit (revealed)
axiom {:id "id416"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
    { SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
    SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(left#0, Tclass.SnapTree.Node?())
           && $Is(right#0, Tclass.SnapTree.Node?()))
       ==> SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
         && SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
           == SnapTree.Tree.SortedSplit((if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
            data#0, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)));
}

function SnapTree.Node.SortedSplit#canCall($heap: Heap, left#0: ref, data#0: int, right#0: ref) : bool;

// frame axiom for SnapTree.Node.SortedSplit
axiom (forall $h0: Heap, $h1: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), SnapTree.Node.SortedSplit($h1, left#0, data#0, right#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (SnapTree.Node.SortedSplit#canCall($h0, left#0, data#0, right#0)
         || ($Is(left#0, Tclass.SnapTree.Node?()) && $Is(right#0, Tclass.SnapTree.Node?())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == left#0 || $o == right#0)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> SnapTree.Node.SortedSplit($h0, left#0, data#0, right#0)
       == SnapTree.Node.SortedSplit($h1, left#0, data#0, right#0));

function SnapTree.Node.SortedSplit#requires(Heap, ref, int, ref) : bool;

// #requires axiom for SnapTree.Node.SortedSplit
axiom (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { SnapTree.Node.SortedSplit#requires($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(left#0, Tclass.SnapTree.Node?())
       && $Is(right#0, Tclass.SnapTree.Node?())
     ==> SnapTree.Node.SortedSplit#requires($Heap, left#0, data#0, right#0) == true);

procedure {:verboseName "SnapTree.Node.SortedSplit (well-formedness)"} CheckWellformed$$SnapTree.Node.SortedSplit(left#0: ref where $Is(left#0, Tclass.SnapTree.Node?()), 
    data#0: int, 
    right#0: ref where $Is(right#0, Tclass.SnapTree.Node?()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.SortedSplit (well-formedness)"} CheckWellformed$$SnapTree.Node.SortedSplit(left#0: ref, data#0: int, right#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##left#0: Seq;
  var newtype$check#0: ref;
  var ##data#0: int;
  var ##right#0: Seq;
  var newtype$check#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == left#0 || $o == right#0);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := null;
        if (left#0 == null)
        {
        }
        else
        {
            assert {:id "id417"} left#0 != null;
            b$reqreads#0 := $_ReadsFrame[left#0, SnapTree.Node.Contents];
        }

        ##left#0 := (if left#0 == null
           then Seq#Empty(): Seq
           else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq);
        // assume allocatedness for argument to function
        assume $IsAlloc(##left#0, TSeq(TInt), $Heap);
        ##data#0 := data#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##data#0, TInt, $Heap);
        newtype$check#1 := null;
        if (right#0 == null)
        {
        }
        else
        {
            assert {:id "id418"} right#0 != null;
            b$reqreads#1 := $_ReadsFrame[right#0, SnapTree.Node.Contents];
        }

        ##right#0 := (if right#0 == null
           then Seq#Empty(): Seq
           else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
        // assume allocatedness for argument to function
        assume $IsAlloc(##right#0, TSeq(TInt), $Heap);
        assume SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq));
        assume {:id "id419"} SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
           == SnapTree.Tree.SortedSplit((if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
            data#0, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq));
        assume SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq));
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0), TBool);
        assert {:id "id420"} b$reqreads#0;
        assert {:id "id421"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for SnapTree.Node.CombineSplit
function SnapTree.Node.CombineSplit($heap: Heap, left#0: ref, data#0: int, right#0: ref) : Seq
uses {
// consequence axiom for SnapTree.Node.CombineSplit
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
    { SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0) } 
    SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(left#0, Tclass.SnapTree.Node?())
           && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap)
           && 
          $Is(right#0, Tclass.SnapTree.Node?())
           && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap))
       ==> $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt)));
// definition axiom for SnapTree.Node.CombineSplit (revealed)
axiom {:id "id422"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
    { SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
    SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(left#0, Tclass.SnapTree.Node?())
           && $Is(right#0, Tclass.SnapTree.Node?()))
       ==> SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0)
         == (if left#0 == null && right#0 == null
           then Seq#Build(Seq#Empty(): Seq, $Box(data#0))
           else (if left#0 != null && right#0 == null
             then Seq#Append($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, $Box(data#0)))
             else (if left#0 == null && right#0 != null
               then Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(data#0)), 
                $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
               else Seq#Append(Seq#Append($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, $Box(data#0))), 
                $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)))));
}

function SnapTree.Node.CombineSplit#canCall($heap: Heap, left#0: ref, data#0: int, right#0: ref) : bool;

// frame axiom for SnapTree.Node.CombineSplit
axiom (forall $h0: Heap, $h1: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), SnapTree.Node.CombineSplit($h1, left#0, data#0, right#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (SnapTree.Node.CombineSplit#canCall($h0, left#0, data#0, right#0)
         || ($Is(left#0, Tclass.SnapTree.Node?()) && $Is(right#0, Tclass.SnapTree.Node?())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == left#0 || $o == right#0)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> SnapTree.Node.CombineSplit($h0, left#0, data#0, right#0)
       == SnapTree.Node.CombineSplit($h1, left#0, data#0, right#0));

function SnapTree.Node.CombineSplit#requires(Heap, ref, int, ref) : bool;

// #requires axiom for SnapTree.Node.CombineSplit
axiom (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { SnapTree.Node.CombineSplit#requires($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(left#0, Tclass.SnapTree.Node?())
       && $Is(right#0, Tclass.SnapTree.Node?())
     ==> SnapTree.Node.CombineSplit#requires($Heap, left#0, data#0, right#0) == true);

procedure {:verboseName "SnapTree.Node.CombineSplit (well-formedness)"} CheckWellformed$$SnapTree.Node.CombineSplit(left#0: ref where $Is(left#0, Tclass.SnapTree.Node?()), 
    data#0: int, 
    right#0: ref where $Is(right#0, Tclass.SnapTree.Node?()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.CombineSplit (well-formedness)"} CheckWellformed$$SnapTree.Node.CombineSplit(left#0: ref, data#0: int, right#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == left#0 || $o == right#0);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := null;
        if (left#0 == null)
        {
            newtype$check#1 := null;
        }

        if (left#0 == null && right#0 == null)
        {
            assume {:id "id423"} SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0)
               == Seq#Build(Seq#Empty(): Seq, $Box(data#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt));
            return;
        }
        else
        {
            newtype$check#2 := null;
            if (left#0 != null)
            {
                newtype$check#3 := null;
            }

            if (left#0 != null && right#0 == null)
            {
                assert {:id "id424"} left#0 != null;
                b$reqreads#0 := $_ReadsFrame[left#0, SnapTree.Node.Contents];
                assume {:id "id425"} SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0)
                   == Seq#Append($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, 
                    Seq#Build(Seq#Empty(): Seq, $Box(data#0)));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt));
                assert {:id "id426"} b$reqreads#0;
                return;
            }
            else
            {
                newtype$check#4 := null;
                if (left#0 == null)
                {
                    newtype$check#5 := null;
                }

                if (left#0 == null && right#0 != null)
                {
                    assert {:id "id427"} right#0 != null;
                    b$reqreads#1 := $_ReadsFrame[right#0, SnapTree.Node.Contents];
                    assume {:id "id428"} SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0)
                       == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(data#0)), 
                        $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt));
                    assert {:id "id429"} b$reqreads#0;
                    assert {:id "id430"} b$reqreads#1;
                    return;
                }
                else
                {
                    assert {:id "id431"} left#0 != null;
                    b$reqreads#2 := $_ReadsFrame[left#0, SnapTree.Node.Contents];
                    assert {:id "id432"} right#0 != null;
                    b$reqreads#3 := $_ReadsFrame[right#0, SnapTree.Node.Contents];
                    assume {:id "id433"} SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0)
                       == Seq#Append(Seq#Append($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, 
                          Seq#Build(Seq#Empty(): Seq, $Box(data#0))), 
                        $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt));
                    assert {:id "id434"} b$reqreads#0;
                    assert {:id "id435"} b$reqreads#1;
                    assert {:id "id436"} b$reqreads#2;
                    assert {:id "id437"} b$reqreads#3;
                    return;
                }
            }
        }

        assume false;
    }
}



procedure {:verboseName "SnapTree.Node.CombineSortedSplit (well-formedness)"} CheckWellFormed$$SnapTree.Node.CombineSortedSplit(left#0: ref
       where $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap), 
    data#0: int, 
    right#0: ref
       where $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Node.CombineSortedSplit (call)"} Call$$SnapTree.Node.CombineSortedSplit(left#0: ref
       where $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap), 
    data#0: int, 
    right#0: ref
       where $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap));
  // user-defined preconditions
  requires {:id "id440"} SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
     ==> SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
       || (SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
         ==> SnapTree.Tree.SortedSplit((if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
            data#0, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
           || SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
            (if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq)));
  requires {:id "id441"} SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
     ==> SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
       || (SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
         ==> SnapTree.Tree.SortedSplit((if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
            data#0, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
           || SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)));
  requires {:id "id442"} SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
     ==> SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
       || (SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
         ==> SnapTree.Tree.SortedSplit((if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
            data#0, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
           || (SnapTree.Tree.AllBelow#canCall((if left#0 == null
                 then Seq#Empty(): Seq
                 else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
              data#0)
             ==> SnapTree.Tree.AllBelow((if left#0 == null
                 then Seq#Empty(): Seq
                 else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
              data#0)));
  requires {:id "id443"} SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
     ==> SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
       || (SnapTree.Tree.SortedSplit#canCall((if left#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
          data#0, 
          (if right#0 == null
             then Seq#Empty(): Seq
             else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
         ==> SnapTree.Tree.SortedSplit((if left#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
            data#0, 
            (if right#0 == null
               then Seq#Empty(): Seq
               else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
           || (SnapTree.Tree.AllAbove#canCall(data#0, 
              (if right#0 == null
                 then Seq#Empty(): Seq
                 else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))
             ==> SnapTree.Tree.AllAbove(data#0, 
              (if right#0 == null
                 then Seq#Empty(): Seq
                 else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq))));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0)
     && SnapTree.Tree.IsSorted#canCall(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0));
  ensures {:id "id444"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
    SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SnapTree.Node.CombineSortedSplit (correctness)"} Impl$$SnapTree.Node.CombineSortedSplit(left#0: ref
       where $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap), 
    data#0: int, 
    right#0: ref
       where $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id445"} SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
     && 
    SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0)
     && SnapTree.Tree.SortedSplit((if left#0 == null
         then Seq#Empty(): Seq
         else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq), 
      data#0, 
      (if right#0 == null
         then Seq#Empty(): Seq
         else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0)
     && SnapTree.Tree.IsSorted#canCall(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0));
  ensures {:id "id446"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, 
    SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.CombineSortedSplit (correctness)"} Impl$$SnapTree.Node.CombineSortedSplit(left#0: ref, data#0: int, right#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var L#0: Seq where $Is(L#0, TSeq(TInt)) && $IsAlloc(L#0, TSeq(TInt), $Heap);
  var newtype$check#0: ref;
  var R#0: Seq where $Is(R#0, TSeq(TInt)) && $IsAlloc(R#0, TSeq(TInt), $Heap);
  var newtype$check#1: ref;
  var left##0: Seq;
  var data##0: int;
  var right##0: Seq;
  var ##left#2: ref;
  var ##data#2: int;
  var ##right#2: ref;

    // AddMethodImpl: CombineSortedSplit, Impl$$SnapTree.Node.CombineSortedSplit
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(289,13)
    assume true;
    newtype$check#0 := null;
    if (left#0 == null)
    {
    }
    else
    {
        assert {:id "id447"} left#0 != null;
    }

    assume true;
    L#0 := (if left#0 == null
       then Seq#Empty(): Seq
       else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(290,13)
    assume true;
    newtype$check#1 := null;
    if (right#0 == null)
    {
    }
    else
    {
        assert {:id "id449"} right#0 != null;
    }

    assume true;
    R#0 := (if right#0 == null
       then Seq#Empty(): Seq
       else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(291,31)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    left##0 := L#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    data##0 := data#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    right##0 := R#0;
    call {:id "id451"} Call$$SnapTree.Tree.SortCombineProperty(left##0, data##0, right##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(292,7)
    ##left#2 := left#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##left#2, Tclass.SnapTree.Node?(), $Heap);
    ##data#2 := data#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##data#2, TInt, $Heap);
    ##right#2 := right#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##right#2, Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0);
    assume SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0);
    assert {:id "id452"} Seq#Equal(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), 
      Seq#Append(Seq#Append(L#0, Seq#Build(Seq#Empty(): Seq, $Box(data#0))), R#0));
}



procedure {:verboseName "SnapTree.Node.Init (well-formedness)"} CheckWellFormed$$SnapTree.Node.Init(x#0: int) returns (this: ref);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Node.Init (call)"} Call$$SnapTree.Node.Init(x#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id456"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id457"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id458"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
    Seq#Build(Seq#Empty(): Seq, $Box(x#0)));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.Init (correctness)"} Impl$$SnapTree.Node.Init(x#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id459"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id460"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id461"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
    Seq#Build(Seq#Empty(): Seq, $Box(x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.Init (correctness)"} Impl$$SnapTree.Node.Init(x#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Seq;
  var this.Repr: Set;
  var this.data: int;
  var this.left: ref;
  var this.right: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#0: ref;
  var newtype$check#0: ref;
  var $rhs#1: int;
  var $rhs#2: ref;
  var newtype$check#1: ref;
  var s##0: Seq;
  var s##1: Seq;

    // AddMethodImpl: Init, Impl$$SnapTree.Node.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(298,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(299,16)
    assume true;
    assume true;
    this.Contents := Seq#Build(Seq#Empty(): Seq, $Box(x#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(300,12)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(301,25)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $obj2 := this;
    newtype$check#0 := null;
    assume true;
    $rhs#0 := null;
    assume true;
    $rhs#1 := x#0;
    newtype$check#1 := null;
    assume true;
    $rhs#2 := null;
    this.left := $rhs#0;
    this.data := $rhs#1;
    this.right := $rhs#2;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(298,5)
    assume this != null && $Is(this, Tclass.SnapTree.Node?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, SnapTree.Node.data)): int == this.data;
    assume $Unbox(read($Heap, this, SnapTree.Node.left)): ref == this.left;
    assume $Unbox(read($Heap, this, SnapTree.Node.right)): ref == this.right;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(298,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(303,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Empty(): Seq);
    call {:id "id470"} Call$$SnapTree.Tree.SmallIsSorted(s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(304,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := Seq#Build(Seq#Empty(): Seq, $Box(x#0));
    call {:id "id471"} Call$$SnapTree.Tree.SmallIsSorted(s##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(305,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(305,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id472"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Node.Build (well-formedness)"} CheckWellFormed$$SnapTree.Node.Build(left#0: ref
       where $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap), 
    x#0: int, 
    right#0: ref
       where $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap))
   returns (this: ref);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.Build (well-formedness)"} CheckWellFormed$$SnapTree.Node.Build(left#0: ref, x#0: int, right#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var ##s#0: Seq;
  var ##d#0: int;
  var newtype$check#1: ref;
  var ##d#1: int;
  var ##s#1: Seq;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var ##left#0: ref;
  var ##data#0: int;
  var ##right#0: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;
  var newtype$check#6: ref;
  var newtype$check#7: ref;
  var newtype$check#8: ref;
  var newtype$check#9: ref;
  var newtype$check#10: ref;
  var newtype$check#11: ref;


    // AddMethodImpl: Build, CheckWellFormed$$SnapTree.Node.Build
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id473"} left#0 != null;
        assert {:id "id474"} left#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(left#0), Tclass.SnapTree.Node?(), $Heap);
        assume SnapTree.Node.NodeValid#canCall($Heap, left#0);
        assume {:id "id475"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, left#0);
        assert {:id "id476"} left#0 != null;
        ##s#0 := $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, TSeq(TInt), $Heap);
        ##d#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0, TInt, $Heap);
        assume SnapTree.Tree.AllBelow#canCall($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0);
        assume {:id "id477"} SnapTree.Tree.AllBelow($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0);
    }
    else
    {
        assume {:id "id478"} left#0 != null
           ==> SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, left#0)
             && SnapTree.Tree.AllBelow($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0);
    }

    if (*)
    {
        newtype$check#1 := null;
        assume {:id "id479"} right#0 != null;
        assert {:id "id480"} right#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(right#0), Tclass.SnapTree.Node?(), $Heap);
        assume SnapTree.Node.NodeValid#canCall($Heap, right#0);
        assume {:id "id481"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, right#0);
        ##d#1 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1, TInt, $Heap);
        assert {:id "id482"} right#0 != null;
        ##s#1 := $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#1, TSeq(TInt), $Heap);
        assume SnapTree.Tree.AllAbove#canCall(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
        assume {:id "id483"} SnapTree.Tree.AllAbove(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
    }
    else
    {
        assume {:id "id484"} right#0 != null
           ==> SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, right#0)
             && SnapTree.Tree.AllAbove(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
    }

    if (*)
    {
        newtype$check#2 := null;
        assume {:id "id485"} left#0 != null;
        newtype$check#3 := null;
        assume {:id "id486"} right#0 != null;
        assert {:id "id487"} left#0 != null;
        assert {:id "id488"} right#0 != null;
        assume {:id "id489"} Set#Disjoint($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, 
          $Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set);
    }
    else
    {
        assume {:id "id490"} left#0 != null && right#0 != null
           ==> Set#Disjoint($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, 
            $Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set);
    }

    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass.SnapTree.Node())
       && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id491"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    ##left#0 := left#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##left#0, Tclass.SnapTree.Node?(), $Heap);
    ##data#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##data#0, TInt, $Heap);
    ##right#0 := right#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##right#0, Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.CombineSplit#canCall($Heap, left#0, x#0, right#0);
    assume {:id "id492"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      SnapTree.Node.CombineSplit($Heap, left#0, x#0, right#0));
    if (*)
    {
        newtype$check#4 := null;
        assume {:id "id493"} left#0 == null;
        newtype$check#5 := null;
        assume {:id "id494"} right#0 == null;
        assume {:id "id495"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id496"} left#0 == null && right#0 == null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)) } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    if (*)
    {
        newtype$check#6 := null;
        assume {:id "id497"} left#0 != null;
        newtype$check#7 := null;
        assume {:id "id498"} right#0 == null;
        assert {:id "id499"} left#0 != null;
        assume {:id "id500"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id501"} left#0 != null && right#0 == null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    if (*)
    {
        newtype$check#8 := null;
        assume {:id "id502"} left#0 == null;
        newtype$check#9 := null;
        assume {:id "id503"} right#0 != null;
        assert {:id "id504"} right#0 != null;
        assume {:id "id505"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id506"} left#0 == null && right#0 != null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    if (*)
    {
        newtype$check#10 := null;
        assume {:id "id507"} left#0 != null;
        newtype$check#11 := null;
        assume {:id "id508"} right#0 != null;
        assert {:id "id509"} left#0 != null;
        assert {:id "id510"} right#0 != null;
        assume {:id "id511"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id512"} left#0 != null && right#0 != null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
}



procedure {:verboseName "SnapTree.Node.Build (call)"} Call$$SnapTree.Node.Build(left#0: ref
       where $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap), 
    x#0: int, 
    right#0: ref
       where $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id513"} left#0 != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, left#0);
  requires {:id "id514"} left#0 != null
     ==> 
    SnapTree.Tree.AllBelow#canCall($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0)
     ==> SnapTree.Tree.AllBelow($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, i#0)): int } 
        LitInt(0) <= i#0
             && i#0 < Seq#Length($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, i#0)): int
             < x#0);
  requires {:id "id515"} right#0 != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, right#0);
  requires {:id "id516"} right#0 != null
     ==> 
    SnapTree.Tree.AllAbove#canCall(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
     ==> SnapTree.Tree.AllAbove(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
       || (forall i#1: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq, i#1)): int } 
        LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
           ==> x#0
             < $Unbox(Seq#Index($Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq, i#1)): int);
  requires {:id "id517"} left#0 != null && right#0 != null
     ==> Set#Disjoint($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, 
      $Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id518"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  free ensures SnapTree.Node.CombineSplit#canCall($Heap, left#0, x#0, right#0);
  ensures {:id "id519"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
    SnapTree.Node.CombineSplit($Heap, left#0, x#0, right#0));
  free ensures true;
  ensures {:id "id520"} left#0 == null && right#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id521"} left#0 != null && right#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id522"} left#0 == null && right#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id523"} left#0 != null && right#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.Build (correctness)"} Impl$$SnapTree.Node.Build(left#0: ref
       where $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap), 
    x#0: int, 
    right#0: ref
       where $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id524"} left#0 != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, left#0);
  free requires {:id "id525"} left#0 != null
     ==> SnapTree.Tree.AllBelow#canCall($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0)
       && 
      SnapTree.Tree.AllBelow($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, x#0)
       && (forall i#2: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, i#2)): int } 
        LitInt(0) <= i#2
             && i#2 < Seq#Length($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, i#2)): int
             < x#0);
  requires {:id "id526"} right#0 != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, right#0);
  free requires {:id "id527"} right#0 != null
     ==> SnapTree.Tree.AllAbove#canCall(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
       && 
      SnapTree.Tree.AllAbove(x#0, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
       && (forall i#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq, i#3)): int } 
        LitInt(0) <= i#3
             && i#3 < Seq#Length($Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq)
           ==> x#0
             < $Unbox(Seq#Index($Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq, i#3)): int);
  requires {:id "id528"} left#0 != null && right#0 != null
     ==> Set#Disjoint($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, 
      $Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id529"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  free ensures SnapTree.Node.CombineSplit#canCall($Heap, left#0, x#0, right#0);
  ensures {:id "id530"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
    SnapTree.Node.CombineSplit($Heap, left#0, x#0, right#0));
  free ensures true;
  ensures {:id "id531"} left#0 == null && right#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id532"} left#0 != null && right#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id533"} left#0 == null && right#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id534"} left#0 != null && right#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.Build (correctness)"} Impl$$SnapTree.Node.Build(left#0: ref, x#0: int, right#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Seq;
  var this.Repr: Set;
  var this.data: int;
  var this.left: ref;
  var this.right: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#0: ref;
  var $rhs#1: int;
  var $rhs#2: ref;
  var newtype$check#12: ref;
  var newtype$check#13: ref;
  var L#0: Seq where $Is(L#0, TSeq(TInt)) && $IsAlloc(L#0, TSeq(TInt), $Heap);
  var newtype$check#14: ref;
  var R#0: Seq where $Is(R#0, TSeq(TInt)) && $IsAlloc(R#0, TSeq(TInt), $Heap);
  var newtype$check#15: ref;
  var s##0: Seq;
  var left##0: ref;
  var data##0: int;
  var right##0: ref;

    // AddMethodImpl: Build, Impl$$SnapTree.Node.Build
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(318,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(319,16)
    assume true;
    assume true;
    this.Contents := Seq#Build(Seq#Empty(): Seq, $Box(x#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(320,12)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(321,35)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $obj2 := this;
    assume true;
    $rhs#0 := left#0;
    assume true;
    $rhs#1 := x#0;
    assume true;
    $rhs#2 := right#0;
    this.left := $rhs#0;
    this.data := $rhs#1;
    this.right := $rhs#2;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(322,7)
    newtype$check#12 := null;
    assume true;
    if (left#0 != null)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(323,18)
        assume true;
        assert {:id "id543"} left#0 != null;
        assume true;
        this.Contents := Seq#Append($Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq, this.Contents);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(324,14)
        assume true;
        assert {:id "id545"} left#0 != null;
        assume true;
        this.Repr := Set#Union(this.Repr, $Unbox(read($Heap, left#0, SnapTree.Node.Repr)): Set);
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(326,7)
    newtype$check#13 := null;
    assume true;
    if (right#0 != null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(327,18)
        assume true;
        assert {:id "id547"} right#0 != null;
        assume true;
        this.Contents := Seq#Append(this.Contents, $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(328,14)
        assume true;
        assert {:id "id549"} right#0 != null;
        assume true;
        this.Repr := Set#Union(this.Repr, $Unbox(read($Heap, right#0, SnapTree.Node.Repr)): Set);
    }
    else
    {
    }

    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(318,5)
    assume this != null && $Is(this, Tclass.SnapTree.Node?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, SnapTree.Node.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, SnapTree.Node.data)): int == this.data;
    assume $Unbox(read($Heap, this, SnapTree.Node.left)): ref == this.left;
    assume $Unbox(read($Heap, this, SnapTree.Node.right)): ref == this.right;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(318,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(331,19)
    assume true;
    newtype$check#14 := null;
    if (left#0 == null)
    {
    }
    else
    {
        assert {:id "id551"} left#0 != null;
    }

    assume true;
    L#0 := (if left#0 == null
       then Seq#Empty(): Seq
       else $Unbox(read($Heap, left#0, SnapTree.Node.Contents)): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(332,19)
    assume true;
    newtype$check#15 := null;
    if (right#0 == null)
    {
    }
    else
    {
        assert {:id "id553"} right#0 != null;
    }

    assume true;
    R#0 := (if right#0 == null
       then Seq#Empty(): Seq
       else $Unbox(read($Heap, right#0, SnapTree.Node.Contents)): Seq);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(333,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Empty(): Seq);
    call {:id "id555"} Call$$SnapTree.Tree.SmallIsSorted(s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(334,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    left##0 := left#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    data##0 := x#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    right##0 := right#0;
    call {:id "id556"} Call$$SnapTree.Node.CombineSortedSplit(left##0, data##0, right##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(335,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(335,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id557"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Node.FunctionalInsert (well-formedness)"} CheckWellFormed$$SnapTree.Node.FunctionalInsert(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node?())
         && $IsAlloc(n#0, Tclass.SnapTree.Node?(), $Heap), 
    x#0: int)
   returns (r#0: ref
       where $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.FunctionalInsert (well-formedness)"} CheckWellFormed$$SnapTree.Node.FunctionalInsert(n#0: ref, x#0: int) returns (r#0: ref, pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;
  var newtype$check#6: ref;


    // AddMethodImpl: FunctionalInsert, CheckWellFormed$$SnapTree.Node.FunctionalInsert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id558"} n#0 != null;
        assert {:id "id559"} n#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(n#0), Tclass.SnapTree.Node?(), $Heap);
        assume SnapTree.Node.NodeValid#canCall($Heap, n#0);
        assume {:id "id560"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
    }
    else
    {
        assume {:id "id561"} n#0 != null
           ==> SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
    }

    newtype$check#1 := null;
    if (n#0 == null)
    {
    }
    else
    {
        assert {:id "id562"} n#0 != null;
    }

    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0, pos#0;
    assert {:id "id563"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, r#0);
    assume {:id "id564"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
    if (*)
    {
        newtype$check#2 := null;
        assume {:id "id565"} n#0 == null;
        assert {:id "id566"} r#0 != null;
        assume {:id "id567"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id568"} n#0 == null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o)) } 
              Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    if (*)
    {
        newtype$check#3 := null;
        assume {:id "id569"} n#0 != null;
        assert {:id "id570"} r#0 != null;
        assert {:id "id571"} n#0 != null;
        assume {:id "id572"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id573"} n#0 != null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    if (*)
    {
        newtype$check#4 := null;
        assume {:id "id574"} n#0 == null;
        assert {:id "id575"} r#0 != null;
        assume {:id "id576"} Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0)));
        assume {:id "id577"} pos#0 == LitInt(0);
    }
    else
    {
        assume {:id "id578"} n#0 == null
           ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0)))
             && pos#0 == LitInt(0);
    }

    if (*)
    {
        newtype$check#5 := null;
        assume {:id "id579"} n#0 != null;
        assert {:id "id580"} n#0 != null;
        assume {:id "id581"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0));
        assume {:id "id582"} r#0 == n#0;
        assume {:id "id583"} pos#0 < 0;
    }
    else
    {
        assume {:id "id584"} n#0 != null
             && Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> r#0 == n#0 && pos#0 < 0;
    }

    if (*)
    {
        newtype$check#6 := null;
        assume {:id "id585"} n#0 != null;
        assert {:id "id586"} n#0 != null;
        assume {:id "id587"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
            assert {:id "id588"} r#0 != null;
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq))
        {
            assert {:id "id589"} r#0 != null;
            assert {:id "id590"} n#0 != null;
        }

        assume {:id "id591"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
        assert {:id "id592"} r#0 != null;
        assert {:id "id593"} n#0 != null;
        assert {:id "id594"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq);
        assert {:id "id595"} n#0 != null;
        assert {:id "id596"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq);
        assume {:id "id597"} Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id598"} n#0 != null
             && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
               == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Node.FunctionalInsert (call)"} Call$$SnapTree.Node.FunctionalInsert(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node?())
         && $IsAlloc(n#0, Tclass.SnapTree.Node?(), $Heap), 
    x#0: int)
   returns (r#0: ref
       where $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int);
  // user-defined preconditions
  requires {:id "id599"} n#0 != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, r#0);
  ensures {:id "id600"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
  free ensures true;
  ensures {:id "id601"} n#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id602"} n#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id603"} n#0 == null
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, $Box(x#0)));
  ensures {:id "id604"} n#0 == null ==> pos#0 == LitInt(0);
  free ensures true;
  ensures {:id "id605"} n#0 != null
       && Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> r#0 == n#0;
  ensures {:id "id606"} n#0 != null
       && Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  free ensures true;
  ensures {:id "id607"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id608"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq);
  ensures {:id "id609"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id610"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.FunctionalInsert (correctness)"} Impl$$SnapTree.Node.FunctionalInsert(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node?())
         && $IsAlloc(n#0, Tclass.SnapTree.Node?(), $Heap), 
    x#0: int)
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int, 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id611"} n#0 != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, r#0);
  ensures {:id "id612"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
  free ensures true;
  ensures {:id "id613"} n#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id614"} n#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id615"} n#0 == null
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, $Box(x#0)));
  ensures {:id "id616"} n#0 == null ==> pos#0 == LitInt(0);
  free ensures true;
  ensures {:id "id617"} n#0 != null
       && Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> r#0 == n#0;
  ensures {:id "id618"} n#0 != null
       && Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  free ensures true;
  ensures {:id "id619"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id620"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq);
  ensures {:id "id621"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id622"} n#0 != null
       && !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.FunctionalInsert (correctness)"} Impl$$SnapTree.Node.FunctionalInsert(n#0: ref, x#0: int)
   returns (defass#r#0: bool, r#0: ref, pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#7: ref;
  var $nw: ref;
  var x##0_0: int;
  var $rhs##1_0_0: ref;
  var $rhs##1_0_1: int;
  var n##1_0_0: ref;
  var x##1_0_0: int;
  var $rhs##1_1_0_0: ref;
  var $rhs##1_1_0_1: int;
  var n##1_1_0_0: ref;
  var x##1_1_0_0: int;
  var $rhs#1_1_1_0: ref;
  var $rhs#1_1_1_1: int;

    // AddMethodImpl: FunctionalInsert, Impl$$SnapTree.Node.FunctionalInsert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(350,7)
    newtype$check#7 := null;
    assume true;
    if (n#0 == null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(351,11)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(351,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        call {:id "id623"} $nw := Call$$SnapTree.Node.Init(x##0_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $nw;
        defass#r#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(352,13)
        assume true;
        assume true;
        pos#0 := LitInt(0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(353,14)
        assert {:id "id626"} n#0 != null;
        assume true;
        if (x#0 < $Unbox(read($Heap, n#0, SnapTree.Node.data)): int)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(354,40)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type Node
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id627"} $Is(n#0, Tclass.SnapTree.Node());
            n##1_0_0 := n#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := x#0;
            assert {:id "id628"} Set#Subset($Unbox(read($Heap, n##1_0_0, SnapTree.Node.Repr)): Set, 
              (if n#0 == null
                 then Set#Empty(): Set
                 else $Unbox(read(old($Heap), n#0, SnapTree.Node.Repr)): Set));
            call {:id "id629"} $rhs##1_0_0, $rhs##1_0_1 := Call$$SnapTree.Node.FunctionalInsert__Left(n##1_0_0, x##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            r#0 := $rhs##1_0_0;
            defass#r#0 := true;
            pos#0 := $rhs##1_0_1;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(355,14)
            assert {:id "id632"} n#0 != null;
            assume true;
            if ($Unbox(read($Heap, n#0, SnapTree.Node.data)): int < x#0)
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(356,41)
                assume true;
                assume true;
                // TrCallStmt: Adding lhs with type Node
                // TrCallStmt: Adding lhs with type int
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id633"} $Is(n#0, Tclass.SnapTree.Node());
                n##1_1_0_0 := n#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##1_1_0_0 := x#0;
                assert {:id "id634"} Set#Subset($Unbox(read($Heap, n##1_1_0_0, SnapTree.Node.Repr)): Set, 
                  (if n#0 == null
                     then Set#Empty(): Set
                     else $Unbox(read(old($Heap), n#0, SnapTree.Node.Repr)): Set));
                call {:id "id635"} $rhs##1_1_0_0, $rhs##1_1_0_1 := Call$$SnapTree.Node.FunctionalInsert__Right(n##1_1_0_0, x##1_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                r#0 := $rhs##1_1_0_0;
                defass#r#0 := true;
                pos#0 := $rhs##1_1_0_1;
            }
            else
            {
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(358,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(358,18)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                call {:id "id638"} Call$$SnapTree.Node.reveal__NodeValid();
                // TrCallStmt: After ProcessCallStmt
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(359,16)
                assume true;
                assume true;
                assert {:id "id639"} $Is(n#0, Tclass.SnapTree.Node());
                assume true;
                $rhs#1_1_1_0 := n#0;
                assume true;
                $rhs#1_1_1_1 := LitInt(-1);
                r#0 := $rhs#1_1_1_0;
                defass#r#0 := true;
                pos#0 := $rhs#1_1_1_1;
            }
        }
    }

    assert {:id "id644"} defass#r#0;
}



procedure {:verboseName "SnapTree.Node.FunctionalInsert_Left (well-formedness)"} CheckWellFormed$$SnapTree.Node.FunctionalInsert__Left(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node()) && $IsAlloc(n#0, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (r#0: ref
       where $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.FunctionalInsert_Left (well-formedness)"} CheckWellFormed$$SnapTree.Node.FunctionalInsert__Left(n#0: ref, x#0: int) returns (r#0: ref, pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: FunctionalInsert_Left, CheckWellFormed$$SnapTree.Node.FunctionalInsert__Left
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id645"} n#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(n#0), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, n#0);
    assume {:id "id646"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
    assert {:id "id647"} n#0 != null;
    assume {:id "id648"} x#0 < $Unbox(read($Heap, n#0, SnapTree.Node.data)): int;
    assert {:id "id649"} n#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0, pos#0;
    assert {:id "id650"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, r#0);
    assume {:id "id651"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
    assert {:id "id652"} r#0 != null;
    assert {:id "id653"} n#0 != null;
    assume {:id "id654"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assert {:id "id655"} n#0 != null;
        assume {:id "id656"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0));
        assume {:id "id657"} r#0 == n#0;
        assume {:id "id658"} pos#0 < 0;
    }
    else
    {
        assume {:id "id659"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> r#0 == n#0 && pos#0 < 0;
    }

    if (*)
    {
        assert {:id "id660"} n#0 != null;
        assume {:id "id661"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
            assert {:id "id662"} r#0 != null;
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq))
        {
            assert {:id "id663"} r#0 != null;
            assert {:id "id664"} n#0 != null;
        }

        assume {:id "id665"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
        assert {:id "id666"} r#0 != null;
        assert {:id "id667"} n#0 != null;
        assert {:id "id668"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq);
        assert {:id "id669"} n#0 != null;
        assert {:id "id670"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq);
        assume {:id "id671"} Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id672"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
               == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Node.FunctionalInsert_Left (call)"} Call$$SnapTree.Node.FunctionalInsert__Left(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node()) && $IsAlloc(n#0, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (r#0: ref
       where $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int);
  // user-defined preconditions
  requires {:id "id673"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
  requires {:id "id674"} x#0 < $Unbox(read($Heap, n#0, SnapTree.Node.data)): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, r#0);
  ensures {:id "id675"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
  free ensures true;
  ensures {:id "id676"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id677"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> r#0 == n#0;
  ensures {:id "id678"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  free ensures true;
  ensures {:id "id679"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id680"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq);
  ensures {:id "id681"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id682"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.FunctionalInsert_Left (correctness)"} Impl$$SnapTree.Node.FunctionalInsert__Left(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node()) && $IsAlloc(n#0, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int, 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id683"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
  requires {:id "id684"} x#0 < $Unbox(read($Heap, n#0, SnapTree.Node.data)): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, r#0);
  ensures {:id "id685"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
  free ensures true;
  ensures {:id "id686"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id687"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> r#0 == n#0;
  ensures {:id "id688"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  free ensures true;
  ensures {:id "id689"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id690"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq);
  ensures {:id "id691"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id692"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.FunctionalInsert_Left (correctness)"} Impl$$SnapTree.Node.FunctionalInsert__Left(n#0: ref, x#0: int)
   returns (defass#r#0: bool, r#0: ref, pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#left#0: bool;
  var left#0: ref
     where defass#left#0
       ==> $Is(left#0, Tclass.SnapTree.Node())
         && $IsAlloc(left#0, Tclass.SnapTree.Node(), $Heap);
  var $rhs##0: ref;
  var $rhs##1: int;
  var n##0: ref;
  var x##0: int;
  var $rhs#0_0: ref;
  var $rhs#0_1: int;
  var $nw: ref;
  var left##1_0: ref;
  var x##1_0: int;
  var right##1_0: ref;

    // AddMethodImpl: FunctionalInsert_Left, Impl$$SnapTree.Node.FunctionalInsert__Left
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(373,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(373,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id693"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
    havoc left#0 /* where defass#left#0
       ==> $Is(left#0, Tclass.SnapTree.Node())
         && $IsAlloc(left#0, Tclass.SnapTree.Node(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(375,36)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Node
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id694"} n#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := $Unbox(read($Heap, n#0, SnapTree.Node.left)): ref;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assert {:id "id695"} Set#Subset((if n##0 == null
           then Set#Empty(): Set
           else $Unbox(read($Heap, n##0, SnapTree.Node.Repr)): Set), 
        $Unbox(read(old($Heap), n#0, SnapTree.Node.Repr)): Set)
       && !Set#Subset($Unbox(read(old($Heap), n#0, SnapTree.Node.Repr)): Set, 
        (if n##0 == null
           then Set#Empty(): Set
           else $Unbox(read($Heap, n##0, SnapTree.Node.Repr)): Set));
    call {:id "id696"} $rhs##0, $rhs##1 := Call$$SnapTree.Node.FunctionalInsert(n##0, x##0);
    // TrCallStmt: After ProcessCallStmt
    left#0 := $rhs##0;
    defass#left#0 := true;
    pos#0 := $rhs##1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(376,7)
    assert {:id "id699"} defass#left#0;
    assert {:id "id700"} n#0 != null;
    assume true;
    if (left#0 == $Unbox(read($Heap, n#0, SnapTree.Node.left)): ref)
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(377,16)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := n#0;
        assume true;
        $rhs#0_1 := LitInt(-1);
        r#0 := $rhs#0_0;
        defass#r#0 := true;
        pos#0 := $rhs#0_1;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(379,11)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(379,23)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id705"} defass#left#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        left##1_0 := left#0;
        assert {:id "id706"} n#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := $Unbox(read($Heap, n#0, SnapTree.Node.data)): int;
        assert {:id "id707"} n#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        right##1_0 := $Unbox(read($Heap, n#0, SnapTree.Node.right)): ref;
        call {:id "id708"} $nw := Call$$SnapTree.Node.Build(left##1_0, x##1_0, right##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $nw;
        defass#r#0 := true;
    }

    assert {:id "id710"} defass#r#0;
}



procedure {:verboseName "SnapTree.Node.FunctionalInsert_Right (well-formedness)"} CheckWellFormed$$SnapTree.Node.FunctionalInsert__Right(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node()) && $IsAlloc(n#0, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (r#0: ref
       where $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.FunctionalInsert_Right (well-formedness)"} CheckWellFormed$$SnapTree.Node.FunctionalInsert__Right(n#0: ref, x#0: int) returns (r#0: ref, pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: FunctionalInsert_Right, CheckWellFormed$$SnapTree.Node.FunctionalInsert__Right
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id711"} n#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(n#0), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, n#0);
    assume {:id "id712"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
    assert {:id "id713"} n#0 != null;
    assume {:id "id714"} $Unbox(read($Heap, n#0, SnapTree.Node.data)): int < x#0;
    assert {:id "id715"} n#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0, pos#0;
    assert {:id "id716"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, r#0);
    assume {:id "id717"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
    assert {:id "id718"} r#0 != null;
    assert {:id "id719"} n#0 != null;
    assume {:id "id720"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assert {:id "id721"} n#0 != null;
        assume {:id "id722"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0));
        assume {:id "id723"} r#0 == n#0;
        assume {:id "id724"} pos#0 < 0;
    }
    else
    {
        assume {:id "id725"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> r#0 == n#0 && pos#0 < 0;
    }

    if (*)
    {
        assert {:id "id726"} n#0 != null;
        assume {:id "id727"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
            assert {:id "id728"} r#0 != null;
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq))
        {
            assert {:id "id729"} r#0 != null;
            assert {:id "id730"} n#0 != null;
        }

        assume {:id "id731"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
        assert {:id "id732"} r#0 != null;
        assert {:id "id733"} n#0 != null;
        assert {:id "id734"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq);
        assert {:id "id735"} n#0 != null;
        assert {:id "id736"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq);
        assume {:id "id737"} Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id738"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
               == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Node.FunctionalInsert_Right (call)"} Call$$SnapTree.Node.FunctionalInsert__Right(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node()) && $IsAlloc(n#0, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (r#0: ref
       where $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int);
  // user-defined preconditions
  requires {:id "id739"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
  requires {:id "id740"} $Unbox(read($Heap, n#0, SnapTree.Node.data)): int < x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, r#0);
  ensures {:id "id741"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
  free ensures true;
  ensures {:id "id742"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id743"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> r#0 == n#0;
  ensures {:id "id744"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  free ensures true;
  ensures {:id "id745"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id746"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq);
  ensures {:id "id747"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id748"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.FunctionalInsert_Right (correctness)"} Impl$$SnapTree.Node.FunctionalInsert__Right(n#0: ref
       where $Is(n#0, Tclass.SnapTree.Node()) && $IsAlloc(n#0, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.SnapTree.Node()) && $IsAlloc(r#0, Tclass.SnapTree.Node(), $Heap), 
    pos#0: int, 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id749"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, n#0);
  requires {:id "id750"} $Unbox(read($Heap, n#0, SnapTree.Node.data)): int < x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, r#0);
  ensures {:id "id751"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, r#0);
  free ensures true;
  ensures {:id "id752"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, r#0, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, n#0, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id753"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> r#0 == n#0;
  ensures {:id "id754"} Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  free ensures true;
  ensures {:id "id755"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id756"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq);
  ensures {:id "id757"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id758"} !Seq#Contains($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, r#0, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read($Heap, n#0, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.FunctionalInsert_Right (correctness)"} Impl$$SnapTree.Node.FunctionalInsert__Right(n#0: ref, x#0: int)
   returns (defass#r#0: bool, r#0: ref, pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#right#0: bool;
  var right#0: ref
     where defass#right#0
       ==> $Is(right#0, Tclass.SnapTree.Node())
         && $IsAlloc(right#0, Tclass.SnapTree.Node(), $Heap);
  var $rhs##0: ref;
  var $rhs##1: int;
  var n##0: ref;
  var x##0: int;
  var $rhs#0_0: ref;
  var $rhs#0_1: int;
  var L#1_0: Seq where $Is(L#1_0, TSeq(TInt)) && $IsAlloc(L#1_0, TSeq(TInt), $Heap);
  var newtype$check#1_0: ref;
  var Llen#1_0: int;
  var $nw: ref;
  var left##1_0: ref;
  var x##1_0: int;
  var right##1_0: ref;

    // AddMethodImpl: FunctionalInsert_Right, Impl$$SnapTree.Node.FunctionalInsert__Right
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(393,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(393,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id759"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
    havoc right#0 /* where defass#right#0
       ==> $Is(right#0, Tclass.SnapTree.Node())
         && $IsAlloc(right#0, Tclass.SnapTree.Node(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(395,37)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Node
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id760"} n#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := $Unbox(read($Heap, n#0, SnapTree.Node.right)): ref;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assert {:id "id761"} Set#Subset((if n##0 == null
           then Set#Empty(): Set
           else $Unbox(read($Heap, n##0, SnapTree.Node.Repr)): Set), 
        $Unbox(read(old($Heap), n#0, SnapTree.Node.Repr)): Set)
       && !Set#Subset($Unbox(read(old($Heap), n#0, SnapTree.Node.Repr)): Set, 
        (if n##0 == null
           then Set#Empty(): Set
           else $Unbox(read($Heap, n##0, SnapTree.Node.Repr)): Set));
    call {:id "id762"} $rhs##0, $rhs##1 := Call$$SnapTree.Node.FunctionalInsert(n##0, x##0);
    // TrCallStmt: After ProcessCallStmt
    right#0 := $rhs##0;
    defass#right#0 := true;
    pos#0 := $rhs##1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(396,7)
    assert {:id "id765"} defass#right#0;
    assert {:id "id766"} n#0 != null;
    assume true;
    if (right#0 == $Unbox(read($Heap, n#0, SnapTree.Node.right)): ref)
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(397,16)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := n#0;
        assume true;
        $rhs#0_1 := LitInt(-1);
        r#0 := $rhs#0_0;
        defass#r#0 := true;
        pos#0 := $rhs#0_1;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(399,21)
        assume true;
        assert {:id "id771"} n#0 != null;
        newtype$check#1_0 := null;
        if ($Unbox(read($Heap, n#0, SnapTree.Node.left)): ref == null)
        {
        }
        else
        {
            assert {:id "id772"} n#0 != null;
            assert {:id "id773"} $Unbox(read($Heap, n#0, SnapTree.Node.left)): ref != null;
        }

        assume true;
        L#1_0 := (if $Unbox(read($Heap, n#0, SnapTree.Node.left)): ref == null
           then Seq#Empty(): Seq
           else $Unbox(read($Heap, $Unbox(read($Heap, n#0, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(400,24)
        assume true;
        assume true;
        Llen#1_0 := Seq#Length(L#1_0) + 1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(401,13)
        assume true;
        assume true;
        pos#0 := Llen#1_0 + pos#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(402,11)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(402,23)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id777"} n#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        left##1_0 := $Unbox(read($Heap, n#0, SnapTree.Node.left)): ref;
        assert {:id "id778"} n#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := $Unbox(read($Heap, n#0, SnapTree.Node.data)): int;
        assert {:id "id779"} defass#right#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        right##1_0 := right#0;
        call {:id "id780"} $nw := Call$$SnapTree.Node.Build(left##1_0, x##1_0, right##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $nw;
        defass#r#0 := true;
    }

    assert {:id "id782"} defass#r#0;
}



procedure {:verboseName "SnapTree.Node.MutatingInsert (well-formedness)"} CheckWellFormed$$SnapTree.Node.MutatingInsert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.MutatingInsert (well-formedness)"} CheckWellFormed$$SnapTree.Node.MutatingInsert(this: ref, x#0: int) returns (pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MutatingInsert, CheckWellFormed$$SnapTree.Node.MutatingInsert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id783"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc pos#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id784"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    assert {:id "id785"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
    assume {:id "id786"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assert {:id "id787"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id788"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0));
        assume {:id "id789"} pos#0 < 0;
        assert {:id "id790"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id791"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
          $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
    }
    else
    {
        assume {:id "id792"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> pos#0 < 0
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
    }

    if (*)
    {
        assert {:id "id793"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id794"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq))
        {
            assert {:id "id795"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        }

        assume {:id "id796"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
        assert {:id "id797"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assert {:id "id798"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
        assert {:id "id799"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assert {:id "id800"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
        assume {:id "id801"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id802"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
               == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Node.MutatingInsert (call)"} Call$$SnapTree.Node.MutatingInsert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  // user-defined preconditions
  requires {:id "id803"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id804"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id805"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id806"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id807"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
  free ensures true;
  ensures {:id "id808"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id809"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
  ensures {:id "id810"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id811"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.MutatingInsert (correctness)"} Impl$$SnapTree.Node.MutatingInsert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int, $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id812"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id813"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id814"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id815"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id816"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
  free ensures true;
  ensures {:id "id817"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id818"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
  ensures {:id "id819"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id820"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.MutatingInsert (correctness)"} Impl$$SnapTree.Node.MutatingInsert(this: ref, x#0: int) returns (pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0_0: int;
  var x##0_0: int;
  var $rhs##1_0_0: int;
  var x##1_0_0: int;

    // AddMethodImpl: MutatingInsert, Impl$$SnapTree.Node.MutatingInsert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(416,7)
    assume true;
    if (x#0 < $Unbox(read($Heap, this, SnapTree.Node.data)): int)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(417,35)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        assert {:id "id821"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id822"} Set#Subset($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
          $Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set);
        call {:id "id823"} $rhs##0_0 := Call$$SnapTree.Node.MutatingInsert__Left(this, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        pos#0 := $rhs##0_0;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(418,14)
        assume true;
        if ($Unbox(read($Heap, this, SnapTree.Node.data)): int < x#0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(419,36)
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := x#0;
            assert {:id "id825"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            assert {:id "id826"} Set#Subset($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
              $Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set);
            call {:id "id827"} $rhs##1_0_0 := Call$$SnapTree.Node.MutatingInsert__Right(this, x##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            pos#0 := $rhs##1_0_0;
        }
        else
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(421,9)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(421,16)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id829"} Call$$SnapTree.Node.reveal__NodeValid();
            // TrCallStmt: After ProcessCallStmt
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(422,13)
            assume true;
            assume true;
            pos#0 := LitInt(-1);
        }
    }
}



procedure {:verboseName "SnapTree.Node.MutatingInsert_Left (well-formedness)"} CheckWellFormed$$SnapTree.Node.MutatingInsert__Left(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.MutatingInsert_Left (well-formedness)"} CheckWellFormed$$SnapTree.Node.MutatingInsert__Left(this: ref, x#0: int) returns (pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MutatingInsert_Left, CheckWellFormed$$SnapTree.Node.MutatingInsert__Left
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id831"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    assume {:id "id832"} x#0 < $Unbox(read($Heap, this, SnapTree.Node.data)): int;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc pos#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id833"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    assert {:id "id834"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
    assume {:id "id835"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assert {:id "id836"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id837"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0));
        assume {:id "id838"} pos#0 < 0;
        assert {:id "id839"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id840"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
          $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
    }
    else
    {
        assume {:id "id841"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> pos#0 < 0
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
    }

    if (*)
    {
        assert {:id "id842"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id843"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq))
        {
            assert {:id "id844"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        }

        assume {:id "id845"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
        assert {:id "id846"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assert {:id "id847"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
        assert {:id "id848"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assert {:id "id849"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
        assume {:id "id850"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id851"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
               == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Node.MutatingInsert_Left (call)"} Call$$SnapTree.Node.MutatingInsert__Left(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  // user-defined preconditions
  requires {:id "id852"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  requires {:id "id853"} x#0 < $Unbox(read($Heap, this, SnapTree.Node.data)): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id854"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id855"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id856"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id857"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
  free ensures true;
  ensures {:id "id858"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id859"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
  ensures {:id "id860"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id861"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.MutatingInsert_Left (correctness)"} Impl$$SnapTree.Node.MutatingInsert__Left(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int, $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id862"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  requires {:id "id863"} x#0 < $Unbox(read($Heap, this, SnapTree.Node.data)): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id864"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id865"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id866"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id867"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
  free ensures true;
  ensures {:id "id868"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id869"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
  ensures {:id "id870"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id871"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.MutatingInsert_Left (correctness)"} Impl$$SnapTree.Node.MutatingInsert__Left(this: ref, x#0: int) returns (pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var R#0: Seq where $Is(R#0, TSeq(TInt)) && $IsAlloc(R#0, TSeq(TInt), $Heap);
  var newtype$check#0: ref;
  var s##0: Seq;
  var newtype$check#1: ref;
  var $rhs#0_0: ref;
  var $nw: ref;
  var x##0_0: int;
  var $rhs##1_0: int;
  var x##1_0: int;
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var left##0: Seq;
  var data##0: int;
  var right##0: Seq;

    // AddMethodImpl: MutatingInsert_Left, Impl$$SnapTree.Node.MutatingInsert__Left
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(436,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(436,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id872"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(437,19)
    assume true;
    newtype$check#0 := null;
    if ($Unbox(read($Heap, this, SnapTree.Node.right)): ref == null)
    {
    }
    else
    {
        assert {:id "id873"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
    }

    assume true;
    R#0 := (if $Unbox(read($Heap, this, SnapTree.Node.right)): ref == null
       then Seq#Empty(): Seq
       else $Unbox(read($Heap, 
          $Unbox(read($Heap, this, SnapTree.Node.right)): ref, 
          SnapTree.Node.Contents)): Seq);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(438,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Empty(): Seq);
    call {:id "id875"} Call$$SnapTree.Tree.SmallIsSorted(s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(439,7)
    newtype$check#1 := null;
    assume true;
    if ($Unbox(read($Heap, this, SnapTree.Node.left)): ref == null)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(440,14)
        assume true;
        assert {:id "id876"} $_ModifiesFrame[this, SnapTree.Node.left];
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(440,26)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        call {:id "id877"} $nw := Call$$SnapTree.Node.Init(x##0_0);
        // TrCallStmt: After ProcessCallStmt
        $rhs#0_0 := $nw;
        $Heap := update($Heap, this, SnapTree.Node.left, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(441,13)
        assume true;
        assume true;
        pos#0 := LitInt(0);
        pop;
    }
    else
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(443,35)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id881"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := x#0;
        assert {:id "id882"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
                $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id883"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set);
        call {:id "id884"} $rhs##1_0 := Call$$SnapTree.Node.MutatingInsert($Unbox(read($Heap, this, SnapTree.Node.left)): ref, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        pos#0 := $rhs##1_0;
        pop;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(445,12)
    assume true;
    assert {:id "id886"} $_ModifiesFrame[this, SnapTree.Node.Repr];
    assert {:id "id887"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
    assume true;
    $rhs#0 := Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
      $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.left)): ref, SnapTree.Node.Repr)): Set);
    $Heap := update($Heap, this, SnapTree.Node.Repr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(446,16)
    assume true;
    assert {:id "id890"} $_ModifiesFrame[this, SnapTree.Node.Contents];
    assert {:id "id891"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
    assume true;
    $rhs#1 := Seq#Append(Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
            SnapTree.Node.Contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, SnapTree.Node.data))), 
      R#0);
    $Heap := update($Heap, this, SnapTree.Node.Contents, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(447,31)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id894"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    left##0 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
        SnapTree.Node.Contents)): Seq;
    assume true;
    // ProcessCallStmt: CheckSubrange
    data##0 := $Unbox(read($Heap, this, SnapTree.Node.data)): int;
    assume true;
    // ProcessCallStmt: CheckSubrange
    right##0 := R#0;
    call {:id "id895"} Call$$SnapTree.Tree.SortCombineProperty(left##0, data##0, right##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(448,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(448,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id896"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Node.MutatingInsert_Right (well-formedness)"} CheckWellFormed$$SnapTree.Node.MutatingInsert__Right(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.MutatingInsert_Right (well-formedness)"} CheckWellFormed$$SnapTree.Node.MutatingInsert__Right(this: ref, x#0: int) returns (pos#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MutatingInsert_Right, CheckWellFormed$$SnapTree.Node.MutatingInsert__Right
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id897"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    assume {:id "id898"} $Unbox(read($Heap, this, SnapTree.Node.data)): int < x#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc pos#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, this);
    assume {:id "id899"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, this);
    assert {:id "id900"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
    assume {:id "id901"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assert {:id "id902"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id903"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0));
        assume {:id "id904"} pos#0 < 0;
        assert {:id "id905"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id906"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
          $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
    }
    else
    {
        assume {:id "id907"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> pos#0 < 0
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
    }

    if (*)
    {
        assert {:id "id908"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assume {:id "id909"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0));
        if (LitInt(0) <= pos#0)
        {
        }

        if (LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq))
        {
            assert {:id "id910"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        }

        assume {:id "id911"} LitInt(0) <= pos#0
           && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
        assert {:id "id912"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assert {:id "id913"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
        assert {:id "id914"} $IsAlloc(this, Tclass.SnapTree.Node(), old($Heap));
        assert {:id "id915"} 0 <= pos#0
           && pos#0 <= Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
        assume {:id "id916"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
          Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
              Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
            Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
    }
    else
    {
        assume {:id "id917"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
           ==> LitInt(0) <= pos#0
             && pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
               == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
              Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
                  Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
                Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
    }
}



procedure {:verboseName "SnapTree.Node.MutatingInsert_Right (call)"} Call$$SnapTree.Node.MutatingInsert__Right(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  // user-defined preconditions
  requires {:id "id918"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  requires {:id "id919"} $Unbox(read($Heap, this, SnapTree.Node.data)): int < x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id920"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id921"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id922"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id923"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
  free ensures true;
  ensures {:id "id924"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id925"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
  ensures {:id "id926"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id927"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Node.MutatingInsert_Right (correctness)"} Impl$$SnapTree.Node.MutatingInsert__Right(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Node())
         && $IsAlloc(this, Tclass.SnapTree.Node(), $Heap), 
    x#0: int)
   returns (pos#0: int, $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id928"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  requires {:id "id929"} $Unbox(read($Heap, this, SnapTree.Node.data)): int < x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Node.NodeValid#canCall($Heap, this);
  ensures {:id "id930"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, this);
  ensures {:id "id931"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id932"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id933"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq);
  free ensures true;
  ensures {:id "id934"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id935"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq);
  ensures {:id "id936"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq) + 1;
  ensures {:id "id937"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Node.Contents)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, SnapTree.Node.Contents)): Seq, pos#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Node.MutatingInsert_Right (correctness)"} Impl$$SnapTree.Node.MutatingInsert__Right(this: ref, x#0: int) returns (pos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var L#0: Seq where $Is(L#0, TSeq(TInt)) && $IsAlloc(L#0, TSeq(TInt), $Heap);
  var newtype$check#0: ref;
  var Llen#0: int;
  var newtype$check#1: ref;
  var $rhs#0_0: ref;
  var $nw: ref;
  var x##0_0: int;
  var $rhs##1_0: int;
  var x##1_0: int;
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var s##0: Seq;
  var left##0: Seq;
  var data##0: int;
  var right##0: Seq;

    // AddMethodImpl: MutatingInsert_Right, Impl$$SnapTree.Node.MutatingInsert__Right
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(461,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(461,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id938"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(462,19)
    assume true;
    newtype$check#0 := null;
    if ($Unbox(read($Heap, this, SnapTree.Node.left)): ref == null)
    {
    }
    else
    {
        assert {:id "id939"} $Unbox(read($Heap, this, SnapTree.Node.left)): ref != null;
    }

    assume true;
    L#0 := (if $Unbox(read($Heap, this, SnapTree.Node.left)): ref == null
       then Seq#Empty(): Seq
       else $Unbox(read($Heap, 
          $Unbox(read($Heap, this, SnapTree.Node.left)): ref, 
          SnapTree.Node.Contents)): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(463,22)
    assume true;
    assume true;
    Llen#0 := Seq#Length(L#0) + 1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(464,7)
    newtype$check#1 := null;
    assume true;
    if ($Unbox(read($Heap, this, SnapTree.Node.right)): ref == null)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(465,15)
        assume true;
        assert {:id "id942"} $_ModifiesFrame[this, SnapTree.Node.right];
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(465,27)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        call {:id "id943"} $nw := Call$$SnapTree.Node.Init(x##0_0);
        // TrCallStmt: After ProcessCallStmt
        $rhs#0_0 := $nw;
        $Heap := update($Heap, this, SnapTree.Node.right, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(466,13)
        assume true;
        assume true;
        pos#0 := Llen#0;
        pop;
    }
    else
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(468,36)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id947"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := x#0;
        assert {:id "id948"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
                $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id949"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, SnapTree.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set);
        call {:id "id950"} $rhs##1_0 := Call$$SnapTree.Node.MutatingInsert($Unbox(read($Heap, this, SnapTree.Node.right)): ref, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        pos#0 := $rhs##1_0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(469,9)
        assume true;
        if (pos#0 < 0)
        {
            push;
            pop;
        }
        else
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(471,15)
            assume true;
            assume true;
            pos#0 := Llen#0 + pos#0;
            pop;
        }

        pop;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(474,12)
    assume true;
    assert {:id "id953"} $_ModifiesFrame[this, SnapTree.Node.Repr];
    assert {:id "id954"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
    assume true;
    $rhs#0 := Set#Union($Unbox(read($Heap, this, SnapTree.Node.Repr)): Set, 
      $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Node.right)): ref, SnapTree.Node.Repr)): Set);
    $Heap := update($Heap, this, SnapTree.Node.Repr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(475,16)
    assume true;
    assert {:id "id957"} $_ModifiesFrame[this, SnapTree.Node.Contents];
    assert {:id "id958"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
    assume true;
    $rhs#1 := Seq#Append(Seq#Append(L#0, Seq#Build(Seq#Empty(): Seq, read($Heap, this, SnapTree.Node.data))), 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, SnapTree.Node.right)): ref, 
          SnapTree.Node.Contents)): Seq);
    $Heap := update($Heap, this, SnapTree.Node.Contents, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(476,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Empty(): Seq);
    call {:id "id961"} Call$$SnapTree.Tree.SmallIsSorted(s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(477,31)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    left##0 := L#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    data##0 := $Unbox(read($Heap, this, SnapTree.Node.data)): int;
    assert {:id "id962"} $Unbox(read($Heap, this, SnapTree.Node.right)): ref != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    right##0 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, SnapTree.Node.right)): ref, 
        SnapTree.Node.Contents)): Seq;
    call {:id "id963"} Call$$SnapTree.Tree.SortCombineProperty(left##0, data##0, right##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(478,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(478,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id964"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Node.reveal_NodeValid (well-formedness)"} {:verify false} CheckWellFormed$$SnapTree.Node.reveal__NodeValid();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Node.reveal_NodeValid (call)"} {:verify false} Call$$SnapTree.Node.reveal__NodeValid();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_SnapTree.Node.NodeValid;



// $Is axiom for non-null type SnapTree.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.SnapTree.Node()) } { $Is(c#0, Tclass.SnapTree.Node?()) } 
  $Is(c#0, Tclass.SnapTree.Node())
     <==> $Is(c#0, Tclass.SnapTree.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type SnapTree.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.SnapTree.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.SnapTree.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.SnapTree.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.SnapTree.Node?(), $h));

const unique class.SnapTree.Iterator?: ClassName;

// $Is axiom for class Iterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.SnapTree.Iterator?()) } 
  $Is($o, Tclass.SnapTree.Iterator?())
     <==> $o == null || dtype($o) == Tclass.SnapTree.Iterator?());

// $IsAlloc axiom for class Iterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.SnapTree.Iterator?(), $h) } 
  $IsAlloc($o, Tclass.SnapTree.Iterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const SnapTree.Iterator.IterRepr: Field
uses {
axiom FDim(SnapTree.Iterator.IterRepr) == 0
   && FieldOfDecl(class.SnapTree.Iterator?, field$IterRepr)
     == SnapTree.Iterator.IterRepr
   && $IsGhostField(SnapTree.Iterator.IterRepr);
}

// Iterator.IterRepr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.IterRepr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Iterator?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Iterator.IterRepr)): Set, 
      TSet(Tclass._System.object())));

// Iterator.IterRepr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.IterRepr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Iterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Iterator.IterRepr)): Set, 
      TSet(Tclass._System.object()), 
      $h));

const SnapTree.Iterator.Contents: Field
uses {
axiom FDim(SnapTree.Iterator.Contents) == 0
   && FieldOfDecl(class.SnapTree.Iterator?, field$Contents)
     == SnapTree.Iterator.Contents
   && $IsGhostField(SnapTree.Iterator.Contents);
}

// Iterator.Contents: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.Contents)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Iterator?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Iterator.Contents)): Seq, TSeq(TInt)));

// Iterator.Contents: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.Contents)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Iterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Iterator.Contents)): Seq, TSeq(TInt), $h));

const SnapTree.Iterator.N: Field
uses {
axiom FDim(SnapTree.Iterator.N) == 0
   && FieldOfDecl(class.SnapTree.Iterator?, field$N) == SnapTree.Iterator.N
   && $IsGhostField(SnapTree.Iterator.N);
}

// Iterator.N: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.N)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Iterator?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Iterator.N)): int, TInt));

// Iterator.N: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.N)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Iterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Iterator.N)): int, TInt, $h));

const SnapTree.Iterator.T: Field
uses {
axiom FDim(SnapTree.Iterator.T) == 0
   && FieldOfDecl(class.SnapTree.Iterator?, field$T) == SnapTree.Iterator.T
   && !$IsGhostField(SnapTree.Iterator.T);
}

// Iterator.T: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.T)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Iterator?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Iterator.T)): ref, Tclass.SnapTree.Tree?()));

// Iterator.T: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.T)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Iterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Iterator.T)): ref, Tclass.SnapTree.Tree?(), $h));

const SnapTree.Iterator.initialized: Field
uses {
axiom FDim(SnapTree.Iterator.initialized) == 0
   && FieldOfDecl(class.SnapTree.Iterator?, field$initialized)
     == SnapTree.Iterator.initialized
   && !$IsGhostField(SnapTree.Iterator.initialized);
}

// Iterator.initialized: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.initialized)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Iterator?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Iterator.initialized)): bool, TBool));

// Iterator.initialized: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.initialized)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Iterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Iterator.initialized)): bool, TBool, $h));

const SnapTree.Iterator.stack: Field
uses {
axiom FDim(SnapTree.Iterator.stack) == 0
   && FieldOfDecl(class.SnapTree.Iterator?, field$stack) == SnapTree.Iterator.stack
   && !$IsGhostField(SnapTree.Iterator.stack);
}

// Iterator.stack: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.stack)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.SnapTree.Iterator?()
     ==> $Is($Unbox(read($h, $o, SnapTree.Iterator.stack)): DatatypeType, 
      Tclass.SnapTree.List()));

// Iterator.stack: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, SnapTree.Iterator.stack)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.SnapTree.Iterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, SnapTree.Iterator.stack)): DatatypeType, 
      Tclass.SnapTree.List(), 
      $h));

// function declaration for SnapTree.Iterator.Valid
function SnapTree.Iterator.Valid($reveal: bool, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for SnapTree.Iterator.Valid
axiom 5 <= $FunctionContextHeight
   ==> (forall $reveal: bool, $Heap: Heap, this: ref :: 
    { SnapTree.Iterator.Valid($reveal, $Heap, this) } 
    SnapTree.Iterator.Valid#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.SnapTree.Iterator())
           && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
       ==> 
      SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this)
       ==> $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
         && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set));
// definition axiom for SnapTree.Iterator.Valid (revealed)
axiom {:id "id965"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { SnapTree.Iterator.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
    SnapTree.Iterator.Valid#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.SnapTree.Iterator())
           && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           ==> SnapTree.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
             && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
               ==> 
              Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
               ==> 
              Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                    SnapTree.Tree.Contents)): Seq)
               ==> 
              LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
               ==> 
              $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                 <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
               ==> 
              ($Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
                 <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
               ==> ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
                   ==> SnapTree.Iterator.R#canCall($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                    LitInt(0), 
                    $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
                 && (
                  ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
                   ==> SnapTree.Iterator.R($LS($LZ), 
                    reveal_SnapTree.Iterator.R, 
                    $Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                    LitInt(0), 
                    $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
                   ==> 
                  LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                   ==> SnapTree.Iterator.R#canCall($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.N)): int, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))))
         && SnapTree.Iterator.Valid(true, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
             && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
             && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
              $Heap, 
              $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
             && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                  SnapTree.Tree.Contents)): Seq)
             && 
            LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
               <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
             && ($Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
               <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
             && ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
               ==> SnapTree.Iterator.R($LS($LZ), 
                reveal_SnapTree.Iterator.R, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                LitInt(0), 
                $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
             && (LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
               ==> SnapTree.Iterator.R($LS($LZ), 
                reveal_SnapTree.Iterator.R, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                $Unbox(read($Heap, this, SnapTree.Iterator.N)): int, 
                $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))));
}

function SnapTree.Iterator.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for SnapTree.Iterator.Valid
axiom (forall $reveal: bool, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), SnapTree.Iterator.Valid($reveal, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.SnapTree.Iterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember($Unbox(read($h0, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             || $o == $Unbox(read($h0, this, SnapTree.Iterator.T)): ref
             || Set#IsMember((if $Unbox(read($h0, this, SnapTree.Iterator.T)): ref != null
                 then $Unbox(read($h0, $Unbox(read($h0, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set
                 else Set#Empty(): Set), 
              $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> SnapTree.Iterator.Valid($reveal, $h0, this)
       == SnapTree.Iterator.Valid($reveal, $h1, this));

function SnapTree.Iterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for SnapTree.Iterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { SnapTree.Iterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.SnapTree.Iterator())
       && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap)
     ==> SnapTree.Iterator.Valid#requires($Heap, this) == true);

procedure {:verboseName "SnapTree.Iterator.Valid (well-formedness)"} CheckWellformed$$SnapTree.Iterator.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id966"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
  ensures {:id "id967"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this)
     ==> Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
      $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Valid (well-formedness)"} CheckWellformed$$SnapTree.Iterator.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var ##wlist#0: DatatypeType;
  var ##n#0: int;
  var ##C#0: Seq;
  var ##Nodes#0: Set;
  var ##wlist#1: DatatypeType;
  var ##n#1: int;
  var ##C#1: Seq;
  var ##Nodes#1: Set;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;
  var b$reqreads#27: bool;
  var b$reqreads#28: bool;
  var b$reqreads#29: bool;
  var b$reqreads#30: bool;
  var b$reqreads#31: bool;
  var b$reqreads#32: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;
    b$reqreads#27 := true;
    b$reqreads#28 := true;
    b$reqreads#29 := true;
    b$reqreads#30 := true;
    b$reqreads#31 := true;
    b$reqreads#32 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           || $o == $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref
           || Set#IsMember((if $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
               then $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set
               else Set#Empty(): Set), 
            $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, SnapTree.Iterator.IterRepr];
    b$reqreads#1 := $_ReadsFrame[this, SnapTree.Iterator.T];
    b$reqreads#2 := $_ReadsFrame[this, SnapTree.Iterator.T];
    newtype$check#0 := null;
    if ($Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null)
    {
        b$reqreads#3 := $_ReadsFrame[this, SnapTree.Iterator.T];
        assert {:id "id968"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
        b$reqreads#4 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr];
    }
    else
    {
    }

    assert {:id "id969"} b$reqreads#0;
    assert {:id "id970"} b$reqreads#1;
    assert {:id "id971"} b$reqreads#2;
    assert {:id "id972"} b$reqreads#3;
    assert {:id "id973"} b$reqreads#4;
    // Check well-formedness of the decreases clause
    newtype$check#1 := null;
    if ($Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null)
    {
        assert {:id "id974"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
    }
    else
    {
    }

    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
            assert {:id "id975"} this == this
               || (Set#Subset(Set#Union(Set#Union($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                      (if $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
                         then $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set
                         else Set#Empty(): Set)), 
                    Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
                      read($Heap, this, SnapTree.Iterator.T))), 
                  Set#Union(Set#Union($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                      (if $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
                         then $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set
                         else Set#Empty(): Set)), 
                    Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
                      read($Heap, this, SnapTree.Iterator.T))))
                 && !Set#Subset(Set#Union(Set#Union($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                      (if $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
                         then $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set
                         else Set#Empty(): Set)), 
                    Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
                      read($Heap, this, SnapTree.Iterator.T))), 
                  Set#Union(Set#Union($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                      (if $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
                         then $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set
                         else Set#Empty(): Set)), 
                    Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
                      read($Heap, this, SnapTree.Iterator.T)))));
            assume this == this || SnapTree.Iterator.Valid#canCall($Heap, this);
            assume {:id "id976"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
            newtype$check#2 := null;
            assume {:id "id977"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
            assert {:id "id978"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
            assume {:id "id979"} Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set);
        }
        else
        {
            assume {:id "id980"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this)
               ==> $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
                 && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#5 := $_ReadsFrame[this, SnapTree.Iterator.IterRepr];
        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this)))
        {
            b$reqreads#6 := $_ReadsFrame[this, SnapTree.Iterator.T];
            newtype$check#3 := null;
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null)
        {
            b$reqreads#7 := $_ReadsFrame[this, SnapTree.Iterator.T];
            assert {:id "id981"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, SnapTree.Iterator.T), Tclass.SnapTree.Tree?(), $Heap);
            b$reqreads#8 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume SnapTree.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
            $Heap, 
            $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref))
        {
            b$reqreads#9 := $_ReadsFrame[this, SnapTree.Iterator.IterRepr];
            b$reqreads#10 := $_ReadsFrame[this, SnapTree.Iterator.T];
            assert {:id "id982"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
            b$reqreads#11 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
            $Heap, 
            $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
           && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
        {
            b$reqreads#12 := $_ReadsFrame[this, SnapTree.Iterator.Contents];
            b$reqreads#13 := $_ReadsFrame[this, SnapTree.Iterator.T];
            assert {:id "id983"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
            b$reqreads#14 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Contents];
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
            $Heap, 
            $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
           && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                SnapTree.Tree.Contents)): Seq))
        {
            b$reqreads#15 := $_ReadsFrame[this, SnapTree.Iterator.N];
            if (LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
            {
                b$reqreads#16 := $_ReadsFrame[this, SnapTree.Iterator.N];
                b$reqreads#17 := $_ReadsFrame[this, SnapTree.Iterator.Contents];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
            $Heap, 
            $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
           && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                SnapTree.Tree.Contents)): Seq)
           && 
          LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq))
        {
            b$reqreads#18 := $_ReadsFrame[this, SnapTree.Iterator.initialized];
            b$reqreads#19 := $_ReadsFrame[this, SnapTree.Iterator.N];
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
            $Heap, 
            $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
           && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                SnapTree.Tree.Contents)): Seq)
           && 
          LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
           && ($Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
             <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int))
        {
            b$reqreads#20 := $_ReadsFrame[this, SnapTree.Iterator.N];
            if ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0)
            {
                b$reqreads#21 := $_ReadsFrame[this, SnapTree.Iterator.stack];
                ##wlist#0 := $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##wlist#0, Tclass.SnapTree.List(), $Heap);
                ##n#0 := LitInt(0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, TInt, $Heap);
                b$reqreads#22 := $_ReadsFrame[this, SnapTree.Iterator.Contents];
                ##C#0 := $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq;
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#0, TSeq(TInt), $Heap);
                b$reqreads#23 := $_ReadsFrame[this, SnapTree.Iterator.T];
                assert {:id "id984"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
                b$reqreads#24 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr];
                ##Nodes#0 := $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set;
                // assume allocatedness for argument to function
                assume $IsAlloc(##Nodes#0, TSet(Tclass._System.object()), $Heap);
                b$reqreads#25 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##Nodes#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assume SnapTree.Iterator.R#canCall($Heap, 
                  $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                  LitInt(0), 
                  $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set);
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
            $Heap, 
            $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
           && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                SnapTree.Tree.Contents)): Seq)
           && 
          LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
           && ($Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
             <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
           && ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
             ==> SnapTree.Iterator.R($LS($LZ), 
              reveal_SnapTree.Iterator.R, 
              $Heap, 
              $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
              LitInt(0), 
              $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)))
        {
            b$reqreads#26 := $_ReadsFrame[this, SnapTree.Iterator.N];
            if (LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
            {
                b$reqreads#27 := $_ReadsFrame[this, SnapTree.Iterator.stack];
                ##wlist#1 := $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##wlist#1, Tclass.SnapTree.List(), $Heap);
                b$reqreads#28 := $_ReadsFrame[this, SnapTree.Iterator.N];
                ##n#1 := $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, TInt, $Heap);
                b$reqreads#29 := $_ReadsFrame[this, SnapTree.Iterator.Contents];
                ##C#1 := $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq;
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#1, TSeq(TInt), $Heap);
                b$reqreads#30 := $_ReadsFrame[this, SnapTree.Iterator.T];
                assert {:id "id985"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
                b$reqreads#31 := $_ReadsFrame[$Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr];
                ##Nodes#1 := $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set;
                // assume allocatedness for argument to function
                assume $IsAlloc(##Nodes#1, TSet(Tclass._System.object()), $Heap);
                b$reqreads#32 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##Nodes#1, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assume SnapTree.Iterator.R#canCall($Heap, 
                  $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                  $Unbox(read($Heap, this, SnapTree.Iterator.N)): int, 
                  $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set);
            }
        }

        assume {:id "id986"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
             && $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
             && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
              $Heap, 
              $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
             && Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
             && Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                  SnapTree.Tree.Contents)): Seq)
             && 
            LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
               <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
             && ($Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
               <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
             && ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
               ==> SnapTree.Iterator.R($LS($LZ), 
                reveal_SnapTree.Iterator.R, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                LitInt(0), 
                $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
             && (LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
               ==> SnapTree.Iterator.R($LS($LZ), 
                reveal_SnapTree.Iterator.R, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                $Unbox(read($Heap, this, SnapTree.Iterator.N)): int, 
                $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)));
        assume Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null
           ==> SnapTree.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
             && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, 
                $Heap, 
                $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref)
               ==> 
              Set#Disjoint($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
               ==> 
              Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
                    SnapTree.Tree.Contents)): Seq)
               ==> 
              LitInt(-1) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                 && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                   <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
               ==> 
              ($Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
                 <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
               ==> ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
                   ==> SnapTree.Iterator.R#canCall($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                    LitInt(0), 
                    $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
                 && (
                  ($Unbox(read($Heap, this, SnapTree.Iterator.N)): int < 0
                   ==> SnapTree.Iterator.R($LS($LZ), 
                    reveal_SnapTree.Iterator.R, 
                    $Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                    LitInt(0), 
                    $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
                   ==> 
                  LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                   ==> SnapTree.Iterator.R#canCall($Heap, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.N)): int, 
                    $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)));
        // CheckWellformedWithResult: any expression
        assume $Is(SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this), TBool);
        assert {:id "id987"} b$reqreads#5;
        assert {:id "id988"} b$reqreads#6;
        assert {:id "id989"} b$reqreads#7;
        assert {:id "id990"} b$reqreads#8;
        assert {:id "id991"} b$reqreads#9;
        assert {:id "id992"} b$reqreads#10;
        assert {:id "id993"} b$reqreads#11;
        assert {:id "id994"} b$reqreads#12;
        assert {:id "id995"} b$reqreads#13;
        assert {:id "id996"} b$reqreads#14;
        assert {:id "id997"} b$reqreads#15;
        assert {:id "id998"} b$reqreads#16;
        assert {:id "id999"} b$reqreads#17;
        assert {:id "id1000"} b$reqreads#18;
        assert {:id "id1001"} b$reqreads#19;
        assert {:id "id1002"} b$reqreads#20;
        assert {:id "id1003"} b$reqreads#21;
        assert {:id "id1004"} b$reqreads#22;
        assert {:id "id1005"} b$reqreads#23;
        assert {:id "id1006"} b$reqreads#24;
        assert {:id "id1007"} b$reqreads#25;
        assert {:id "id1008"} b$reqreads#26;
        assert {:id "id1009"} b$reqreads#27;
        assert {:id "id1010"} b$reqreads#28;
        assert {:id "id1011"} b$reqreads#29;
        assert {:id "id1012"} b$reqreads#30;
        assert {:id "id1013"} b$reqreads#31;
        assert {:id "id1014"} b$reqreads#32;
        return;

        assume false;
    }
}



// function declaration for SnapTree.Iterator.R
function SnapTree.Iterator.R($ly: LayerType, 
    $reveal: bool, 
    $heap: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set)
   : bool
uses {
// definition axiom for SnapTree.Iterator.R (revealed)
axiom {:id "id1015"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      $Heap: Heap, 
      wlist#0: DatatypeType, 
      n#0: int, 
      C#0: Seq, 
      Nodes#0: Set :: 
    { SnapTree.Iterator.R($LS($ly), true, $Heap, wlist#0, n#0, C#0, Nodes#0), $IsGoodHeap($Heap) } 
    SnapTree.Iterator.R#canCall($Heap, wlist#0, n#0, C#0, Nodes#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(wlist#0, Tclass.SnapTree.List())
           && $Is(C#0, TSeq(TInt))
           && $Is(Nodes#0, TSet(Tclass._System.object())))
       ==> (!SnapTree.List.Nil_q(wlist#0)
           ==> (var rest#1 := SnapTree.List._h1(wlist#0); 
            (var p#1 := SnapTree.List._h0(wlist#0); 
              Set#IsMember(Nodes#0, $Box(p#1))
                 ==> 
                Set#Subset($Unbox(read($Heap, p#1, SnapTree.Node.Repr)): Set, Nodes#0)
                 ==> SnapTree.Node.NodeValid#canCall($Heap, p#1)
                   && (SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#1)
                     ==> 
                    LitInt(0) <= n#0
                     ==> 
                    n#0 < Seq#Length(C#0)
                     ==> 
                    $Unbox(read($Heap, p#1, SnapTree.Node.data)): int
                       == $Unbox(Seq#Index(C#0, n#0)): int
                     ==> SnapTree.Iterator.R#canCall($Heap, 
                      rest#1, 
                      n#0
                         + 1
                         + (if $Unbox(read($Heap, p#1, SnapTree.Node.right)): ref == null
                           then 0
                           else Seq#Length($Unbox(read($Heap, 
                                $Unbox(read($Heap, p#1, SnapTree.Node.right)): ref, 
                                SnapTree.Node.Contents)): Seq)), 
                      C#0, 
                      Nodes#0)))))
         && SnapTree.Iterator.R($LS($ly), true, $Heap, wlist#0, n#0, C#0, Nodes#0)
           == (if SnapTree.List.Nil_q(wlist#0)
             then n#0 == Seq#Length(C#0)
             else (var rest#0 := SnapTree.List._h1(wlist#0); 
              (var p#0 := SnapTree.List._h0(wlist#0); 
                Set#IsMember(Nodes#0, $Box(p#0))
                   && Set#Subset($Unbox(read($Heap, p#0, SnapTree.Node.Repr)): Set, Nodes#0)
                   && SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#0)
                   && 
                  LitInt(0) <= n#0
                   && n#0 < Seq#Length(C#0)
                   && $Unbox(read($Heap, p#0, SnapTree.Node.data)): int
                     == $Unbox(Seq#Index(C#0, n#0)): int
                   && 
                  SnapTree.Iterator.R($ly, 
                    reveal_SnapTree.Iterator.R, 
                    $Heap, 
                    rest#0, 
                    n#0
                       + 1
                       + (if $Unbox(read($Heap, p#0, SnapTree.Node.right)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, 
                              $Unbox(read($Heap, p#0, SnapTree.Node.right)): ref, 
                              SnapTree.Node.Contents)): Seq)), 
                    C#0, 
                    Nodes#0)
                   && 
                  Seq#Length(Seq#Drop($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq, 
                        (if $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref == null
                           then 0
                           else Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq))))
                     <= Seq#Length(Seq#Drop(C#0, n#0))
                   && Seq#SameUntil(Seq#Drop($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq, 
                      (if $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq))), 
                    Seq#Drop(C#0, n#0), 
                    Seq#Length(Seq#Drop($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq, 
                        (if $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref == null
                           then 0
                           else Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq)))))))));
}

function SnapTree.Iterator.R#canCall($heap: Heap, wlist#0: DatatypeType, n#0: int, C#0: Seq, Nodes#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    $reveal: bool, 
    $Heap: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set :: 
  { SnapTree.Iterator.R($LS($ly), $reveal, $Heap, wlist#0, n#0, C#0, Nodes#0) } 
  SnapTree.Iterator.R($LS($ly), $reveal, $Heap, wlist#0, n#0, C#0, Nodes#0)
     == SnapTree.Iterator.R($ly, $reveal, $Heap, wlist#0, n#0, C#0, Nodes#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    $reveal: bool, 
    $Heap: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set :: 
  { SnapTree.Iterator.R(AsFuelBottom($ly), $reveal, $Heap, wlist#0, n#0, C#0, Nodes#0) } 
  SnapTree.Iterator.R($ly, $reveal, $Heap, wlist#0, n#0, C#0, Nodes#0)
     == SnapTree.Iterator.R($LZ, $reveal, $Heap, wlist#0, n#0, C#0, Nodes#0));

// frame axiom for SnapTree.Iterator.R
axiom (forall $ly: LayerType, 
    $reveal: bool, 
    $h0: Heap, 
    $h1: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), SnapTree.Iterator.R($ly, $reveal, $h1, wlist#0, n#0, C#0, Nodes#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (SnapTree.Iterator.R#canCall($h0, wlist#0, n#0, C#0, Nodes#0)
         || (
          $Is(wlist#0, Tclass.SnapTree.List())
           && $Is(C#0, TSeq(TInt))
           && $Is(Nodes#0, TSet(Tclass._System.object()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(Nodes#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> SnapTree.Iterator.R($ly, $reveal, $h0, wlist#0, n#0, C#0, Nodes#0)
       == SnapTree.Iterator.R($ly, $reveal, $h1, wlist#0, n#0, C#0, Nodes#0));

function SnapTree.Iterator.R#requires(LayerType, Heap, DatatypeType, int, Seq, Set) : bool;

// #requires axiom for SnapTree.Iterator.R
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set :: 
  { SnapTree.Iterator.R#requires($ly, $Heap, wlist#0, n#0, C#0, Nodes#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(wlist#0, Tclass.SnapTree.List())
       && $Is(C#0, TSeq(TInt))
       && $Is(Nodes#0, TSet(Tclass._System.object()))
     ==> SnapTree.Iterator.R#requires($ly, $Heap, wlist#0, n#0, C#0, Nodes#0) == true);

procedure {:verboseName "SnapTree.Iterator.R (well-formedness)"} CheckWellformed$$SnapTree.Iterator.R(wlist#0: DatatypeType where $Is(wlist#0, Tclass.SnapTree.List()), 
    n#0: int, 
    C#0: Seq where $Is(C#0, TSeq(TInt)), 
    Nodes#0: Set where $Is(Nodes#0, TSet(Tclass._System.object())));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.R (well-formedness)"} CheckWellformed$$SnapTree.Iterator.R(wlist#0: DatatypeType, n#0: int, C#0: Seq, Nodes#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: ref;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var p#Z#0: ref;
  var let#1#0#0: ref;
  var ##wlist#0: DatatypeType;
  var ##n#0: int;
  var newtype$check#0: ref;
  var ##C#0: Seq;
  var ##Nodes#0: Set;
  var newtype$check#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(Nodes#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (wlist#0 == #SnapTree.List.Nil())
        {
            assume {:id "id1047"} SnapTree.Iterator.R($LS($LZ), reveal_SnapTree.Iterator.R, $Heap, wlist#0, n#0, C#0, Nodes#0)
               == 
              (n#0
               == Seq#Length(C#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(SnapTree.Iterator.R($LS($LZ), reveal_SnapTree.Iterator.R, $Heap, wlist#0, n#0, C#0, Nodes#0), 
              TBool);
            assert {:id "id1048"} b$reqreads#0;
            assert {:id "id1049"} b$reqreads#1;
            assert {:id "id1050"} b$reqreads#2;
            assert {:id "id1051"} b$reqreads#3;
            assert {:id "id1052"} b$reqreads#4;
            assert {:id "id1053"} b$reqreads#5;
            assert {:id "id1054"} b$reqreads#6;
            assert {:id "id1055"} b$reqreads#7;
            assert {:id "id1056"} b$reqreads#8;
            assert {:id "id1057"} b$reqreads#9;
            assert {:id "id1058"} b$reqreads#10;
            return;
        }
        else if (wlist#0 == #SnapTree.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass.SnapTree.Node());
            assume $Is(_mcc#1#0, Tclass.SnapTree.List());
            havoc rest#Z#0;
            assume {:id "id1016"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.SnapTree.List());
            assume {:id "id1017"} rest#Z#0 == let#0#0#0;
            havoc p#Z#0;
            assume {:id "id1018"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.SnapTree.Node());
            assume {:id "id1019"} p#Z#0 == let#1#0#0;
            if (Set#IsMember(Nodes#0, $Box(p#Z#0)))
            {
                assert {:id "id1020"} p#Z#0 != null;
                b$reqreads#0 := $_ReadsFrame[p#Z#0, SnapTree.Node.Repr];
            }

            if (Set#IsMember(Nodes#0, $Box(p#Z#0))
               && Set#Subset($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, Nodes#0))
            {
                assert {:id "id1021"} p#Z#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(p#Z#0), Tclass.SnapTree.Node?(), $Heap);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && ($o == p#Z#0
                         || Set#IsMember($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, $Box($o)))
                     ==> $_ReadsFrame[$o, $f]);
                assume SnapTree.Node.NodeValid#canCall($Heap, p#Z#0);
            }

            if (Set#IsMember(Nodes#0, $Box(p#Z#0))
               && Set#Subset($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, Nodes#0)
               && SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#Z#0))
            {
                if (LitInt(0) <= n#0)
                {
                }
            }

            if (Set#IsMember(Nodes#0, $Box(p#Z#0))
               && Set#Subset($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, Nodes#0)
               && SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#Z#0)
               && 
              LitInt(0) <= n#0
               && n#0 < Seq#Length(C#0))
            {
                assert {:id "id1022"} p#Z#0 != null;
                b$reqreads#2 := $_ReadsFrame[p#Z#0, SnapTree.Node.data];
                assert {:id "id1023"} 0 <= n#0 && n#0 < Seq#Length(C#0);
            }

            if (Set#IsMember(Nodes#0, $Box(p#Z#0))
               && Set#Subset($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, Nodes#0)
               && SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#Z#0)
               && 
              LitInt(0) <= n#0
               && n#0 < Seq#Length(C#0)
               && $Unbox(read($Heap, p#Z#0, SnapTree.Node.data)): int
                 == $Unbox(Seq#Index(C#0, n#0)): int)
            {
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(523,10)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(523,28)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id1024"} Call$$SnapTree.Node.reveal__NodeValid();
                // TrCallStmt: After ProcessCallStmt
                ##wlist#0 := rest#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##wlist#0, Tclass.SnapTree.List(), $Heap);
                assert {:id "id1025"} p#Z#0 != null;
                b$reqreads#3 := $_ReadsFrame[p#Z#0, SnapTree.Node.right];
                newtype$check#0 := null;
                if ($Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref == null)
                {
                }
                else
                {
                    assert {:id "id1026"} p#Z#0 != null;
                    b$reqreads#4 := $_ReadsFrame[p#Z#0, SnapTree.Node.right];
                    assert {:id "id1027"} $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref != null;
                    b$reqreads#5 := $_ReadsFrame[$Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref, SnapTree.Node.Contents];
                }

                ##n#0 := n#0
                   + 1
                   + (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref == null
                     then 0
                     else Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref, 
                          SnapTree.Node.Contents)): Seq));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, TInt, $Heap);
                ##C#0 := C#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#0, TSeq(TInt), $Heap);
                ##Nodes#0 := Nodes#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##Nodes#0, TSet(Tclass._System.object()), $Heap);
                b$reqreads#6 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##Nodes#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id1028"} DtRank(##wlist#0) < DtRank(wlist#0);
                assume SnapTree.Iterator.R#canCall($Heap, 
                  rest#Z#0, 
                  n#0
                     + 1
                     + (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref == null
                       then 0
                       else Seq#Length($Unbox(read($Heap, 
                            $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref, 
                            SnapTree.Node.Contents)): Seq)), 
                  C#0, 
                  Nodes#0);
                if (SnapTree.Iterator.R($LS($LZ), 
                  reveal_SnapTree.Iterator.R, 
                  $Heap, 
                  rest#Z#0, 
                  n#0
                     + 1
                     + (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref == null
                       then 0
                       else Seq#Length($Unbox(read($Heap, 
                            $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref, 
                            SnapTree.Node.Contents)): Seq)), 
                  C#0, 
                  Nodes#0))
                {
                    assert {:id "id1029"} p#Z#0 != null;
                    b$reqreads#7 := $_ReadsFrame[p#Z#0, SnapTree.Node.Contents];
                    assert {:id "id1030"} p#Z#0 != null;
                    b$reqreads#8 := $_ReadsFrame[p#Z#0, SnapTree.Node.left];
                    newtype$check#1 := null;
                    if ($Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref == null)
                    {
                    }
                    else
                    {
                        assert {:id "id1031"} p#Z#0 != null;
                        b$reqreads#9 := $_ReadsFrame[p#Z#0, SnapTree.Node.left];
                        assert {:id "id1032"} $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref != null;
                        b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref, SnapTree.Node.Contents];
                    }

                    assert {:id "id1033"} 0
                         <= (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref == null
                           then 0
                           else Seq#Length($Unbox(read($Heap, 
                                $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref, 
                                SnapTree.Node.Contents)): Seq))
                       && (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref == null
                           then 0
                           else Seq#Length($Unbox(read($Heap, 
                                $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref, 
                                SnapTree.Node.Contents)): Seq))
                         <= Seq#Length($Unbox(read($Heap, p#Z#0, SnapTree.Node.Contents)): Seq);
                    assert {:id "id1034"} 0 <= n#0 && n#0 <= Seq#Length(C#0);
                }
            }

            assume {:id "id1035"} SnapTree.Iterator.R($LS($LZ), reveal_SnapTree.Iterator.R, $Heap, wlist#0, n#0, C#0, Nodes#0)
               == (
                Set#IsMember(Nodes#0, $Box(p#Z#0))
                 && Set#Subset($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, Nodes#0)
                 && SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#Z#0)
                 && 
                LitInt(0) <= n#0
                 && n#0 < Seq#Length(C#0)
                 && $Unbox(read($Heap, p#Z#0, SnapTree.Node.data)): int
                   == $Unbox(Seq#Index(C#0, n#0)): int
                 && 
                SnapTree.Iterator.R($LS($LZ), 
                  reveal_SnapTree.Iterator.R, 
                  $Heap, 
                  rest#Z#0, 
                  n#0
                     + 1
                     + (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref == null
                       then 0
                       else Seq#Length($Unbox(read($Heap, 
                            $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref, 
                            SnapTree.Node.Contents)): Seq)), 
                  C#0, 
                  Nodes#0)
                 && 
                Seq#Length(Seq#Drop($Unbox(read($Heap, p#Z#0, SnapTree.Node.Contents)): Seq, 
                      (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, 
                              $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref, 
                              SnapTree.Node.Contents)): Seq))))
                   <= Seq#Length(Seq#Drop(C#0, n#0))
                 && Seq#SameUntil(Seq#Drop($Unbox(read($Heap, p#Z#0, SnapTree.Node.Contents)): Seq, 
                    (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref == null
                       then 0
                       else Seq#Length($Unbox(read($Heap, 
                            $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref, 
                            SnapTree.Node.Contents)): Seq))), 
                  Seq#Drop(C#0, n#0), 
                  Seq#Length(Seq#Drop($Unbox(read($Heap, p#Z#0, SnapTree.Node.Contents)): Seq, 
                      (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, 
                              $Unbox(read($Heap, p#Z#0, SnapTree.Node.left)): ref, 
                              SnapTree.Node.Contents)): Seq))))));
            assume Set#IsMember(Nodes#0, $Box(p#Z#0))
               ==> 
              Set#Subset($Unbox(read($Heap, p#Z#0, SnapTree.Node.Repr)): Set, Nodes#0)
               ==> SnapTree.Node.NodeValid#canCall($Heap, p#Z#0)
                 && (SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#Z#0)
                   ==> 
                  LitInt(0) <= n#0
                   ==> 
                  n#0 < Seq#Length(C#0)
                   ==> 
                  $Unbox(read($Heap, p#Z#0, SnapTree.Node.data)): int
                     == $Unbox(Seq#Index(C#0, n#0)): int
                   ==> SnapTree.Iterator.R#canCall($Heap, 
                    rest#Z#0, 
                    n#0
                       + 1
                       + (if $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, 
                              $Unbox(read($Heap, p#Z#0, SnapTree.Node.right)): ref, 
                              SnapTree.Node.Contents)): Seq)), 
                    C#0, 
                    Nodes#0));
            // CheckWellformedWithResult: any expression
            assume $Is(SnapTree.Iterator.R($LS($LZ), reveal_SnapTree.Iterator.R, $Heap, wlist#0, n#0, C#0, Nodes#0), 
              TBool);
            assert {:id "id1036"} b$reqreads#0;
            assert {:id "id1037"} b$reqreads#1;
            assert {:id "id1038"} b$reqreads#2;
            assert {:id "id1039"} b$reqreads#3;
            assert {:id "id1040"} b$reqreads#4;
            assert {:id "id1041"} b$reqreads#5;
            assert {:id "id1042"} b$reqreads#6;
            assert {:id "id1043"} b$reqreads#7;
            assert {:id "id1044"} b$reqreads#8;
            assert {:id "id1045"} b$reqreads#9;
            assert {:id "id1046"} b$reqreads#10;
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "SnapTree.Iterator.Init (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Init(t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap))
   returns (this: ref);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Init (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Init(t#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Init, CheckWellFormed$$SnapTree.Iterator.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1059"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, t#0);
    assume {:id "id1060"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass.SnapTree.Iterator())
       && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
    assume SnapTree.Iterator.Valid#canCall($Heap, this);
    assume {:id "id1061"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
    assume {:id "id1062"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assume {:id "id1063"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == t#0;
    assert {:id "id1064"} t#0 != null;
    assume {:id "id1065"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
      $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq);
    assume {:id "id1066"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == LitInt(-1);
}



procedure {:verboseName "SnapTree.Iterator.Init (call)"} Call$$SnapTree.Iterator.Init(t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap));
  // user-defined preconditions
  requires {:id "id1067"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, this);
  ensures {:id "id1068"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  ensures {:id "id1069"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1070"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == t#0;
  ensures {:id "id1071"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1072"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == LitInt(-1);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.Init (correctness)"} Impl$$SnapTree.Iterator.Init(t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1073"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, this);
  ensures {:id "id1074"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  ensures {:id "id1075"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1076"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == t#0;
  ensures {:id "id1077"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1078"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == LitInt(-1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Init (correctness)"} Impl$$SnapTree.Iterator.Init(t#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.IterRepr: Set;
  var this.Contents: Seq;
  var this.N: int;
  var this.T: ref;
  var this.initialized: bool;
  var this.stack: DatatypeType;
  var t##0: ref;

    // AddMethodImpl: Init, Impl$$SnapTree.Iterator.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(532,5)
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(532,5)
    assume this != null && $Is(this, Tclass.SnapTree.Iterator?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set == this.IterRepr;
    assume $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == this.N;
    assume $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == this.T;
    assume $Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool
       == this.initialized;
    assume $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType == this.stack;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(532,5)
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(534,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(534,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1079"} Call$$SnapTree.Iterator.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(535,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(535,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1080"} Call$$SnapTree.Tree.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(536,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(536,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1081"} Call$$SnapTree.Iterator.reveal__R();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(537,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := t#0;
    assert {:id "id1082"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1083"} Call$$SnapTree.Iterator.Init__Aux(this, t##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Iterator.Init_Aux (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Init__Aux(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Init_Aux (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Init__Aux(this: ref, t#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;


    // AddMethodImpl: Init_Aux, CheckWellFormed$$SnapTree.Iterator.Init__Aux
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assert {:id "id1084"} t#0 != null;
    assume {:id "id1085"} !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box(this));
    if (*)
    {
        assert {:id "id1086"} t#0 != null;
        newtype$check#0 := null;
        assume {:id "id1087"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref == null;
        assert {:id "id1088"} t#0 != null;
        assume {:id "id1089"} Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq) == LitInt(0);
    }
    else
    {
        assume {:id "id1090"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref == null
           ==> Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq) == LitInt(0);
    }

    if (*)
    {
        assert {:id "id1091"} t#0 != null;
        newtype$check#1 := null;
        assume {:id "id1092"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null;
        assert {:id "id1093"} t#0 != null;
        assert {:id "id1094"} t#0 != null;
        assume {:id "id1095"} Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
          read($Heap, t#0, SnapTree.Tree.root));
        assert {:id "id1096"} t#0 != null;
        assert {:id "id1097"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null;
        assert {:id "id1098"} t#0 != null;
        assume {:id "id1099"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
          $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set);
        assert {:id "id1100"} t#0 != null;
        assert {:id "id1101"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(read($Heap, t#0, SnapTree.Tree.root), Tclass.SnapTree.Node?(), $Heap);
        assume SnapTree.Node.NodeValid#canCall($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref);
        assume {:id "id1102"} SnapTree.Node.NodeValid($LS($LZ), 
          reveal_SnapTree.Node.NodeValid, 
          $Heap, 
          $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref);
    }
    else
    {
        assume {:id "id1103"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
              read($Heap, t#0, SnapTree.Tree.root))
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
              $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set)
             && SnapTree.Node.NodeValid($LS($LZ), 
              reveal_SnapTree.Node.NodeValid, 
              $Heap, 
              $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref);
    }

    if (*)
    {
        assert {:id "id1104"} t#0 != null;
        newtype$check#2 := null;
        assume {:id "id1105"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null;
        assert {:id "id1106"} t#0 != null;
        assert {:id "id1107"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null;
        assert {:id "id1108"} t#0 != null;
        assume {:id "id1109"} Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq)
             <= Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
           && Seq#SameUntil($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq, 
            $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
            Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq));
        assert {:id "id1110"} t#0 != null;
        assert {:id "id1111"} t#0 != null;
        assert {:id "id1112"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null;
        assume {:id "id1113"} Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
           == Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq);
    }
    else
    {
        assume {:id "id1114"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
           ==> Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq)
               <= Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
             && Seq#SameUntil($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq, 
              $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
              Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq))
             && Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
               == Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq);
    }

    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    if (*)
    {
        assert {:id "id1115"} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.SnapTree.Tree?(), $Heap);
        assume SnapTree.Tree.Valid#canCall($Heap, t#0);
        assume {:id "id1116"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
        assume SnapTree.Iterator.Valid#canCall($Heap, this);
        assume {:id "id1117"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
    }
    else
    {
        assume {:id "id1118"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
           ==> SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
    }

    assume {:id "id1119"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             && $o != this
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             && $o != this
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assume {:id "id1120"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == t#0;
    assert {:id "id1121"} t#0 != null;
    assume {:id "id1122"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
      $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq);
    assume {:id "id1123"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == LitInt(-1);
}



procedure {:verboseName "SnapTree.Iterator.Init_Aux (call)"} Call$$SnapTree.Iterator.Init__Aux(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id1124"} !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box(this));
  requires {:id "id1125"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref == null
     ==> Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq) == LitInt(0);
  requires {:id "id1126"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
      read($Heap, t#0, SnapTree.Tree.root));
  requires {:id "id1127"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
      $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set);
  requires {:id "id1128"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), 
      reveal_SnapTree.Node.NodeValid, 
      $Heap, 
      $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref);
  requires {:id "id1129"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq)
         <= Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
       && Seq#SameUntil($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq, 
        $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
        Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq));
  requires {:id "id1130"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, t#0)
     && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
       ==> SnapTree.Iterator.Valid#canCall($Heap, this));
  ensures {:id "id1131"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
     ==> SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  free ensures true;
  ensures {:id "id1132"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && $o != this
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && $o != this
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1133"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == t#0;
  ensures {:id "id1134"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1135"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == LitInt(-1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.Init_Aux (correctness)"} Impl$$SnapTree.Iterator.Init__Aux(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1136"} !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box(this));
  requires {:id "id1137"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref == null
     ==> Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq) == LitInt(0);
  requires {:id "id1138"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
      read($Heap, t#0, SnapTree.Tree.root));
  requires {:id "id1139"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Repr)): Set, 
      $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set);
  requires {:id "id1140"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> SnapTree.Node.NodeValid($LS($LS($LZ)), 
      reveal_SnapTree.Node.NodeValid, 
      $Heap, 
      $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref);
  requires {:id "id1141"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq)
         <= Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
       && Seq#SameUntil($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq, 
        $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
        Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq));
  requires {:id "id1142"} $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null
     ==> Seq#Length($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq)
       == Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, SnapTree.Node.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, t#0)
     && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
       ==> SnapTree.Iterator.Valid#canCall($Heap, this));
  ensures {:id "id1143"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
     ==> SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  free ensures true;
  ensures {:id "id1144"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && $o != this
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && $o != this
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1145"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref == t#0;
  ensures {:id "id1146"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1147"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int == LitInt(-1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Init_Aux (correctness)"} Impl$$SnapTree.Iterator.Init__Aux(this: ref, t#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var $rhs#1: Set;
  var $rhs#2: Seq;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#3: bool;
  var $rhs#4: DatatypeType;
  var $rhs#5: int;
  var newtype$check#3: ref;
  var $rhs##0_0: DatatypeType;
  var stIn##0_0: DatatypeType;
  var n##0_0: int;
  var p##0_0: ref;
  var C##0_0: Seq;
  var Nodes##0_0: Set;

    // AddMethodImpl: Init_Aux, Impl$$SnapTree.Iterator.Init__Aux
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(550,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(550,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1148"} Call$$SnapTree.Iterator.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(551,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(551,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1149"} Call$$SnapTree.Iterator.reveal__R();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(552,9)
    assume true;
    assert {:id "id1150"} $_ModifiesFrame[this, SnapTree.Iterator.T];
    assume true;
    $rhs#0 := t#0;
    $Heap := update($Heap, this, SnapTree.Iterator.T, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(553,16)
    assume true;
    assert {:id "id1153"} $_ModifiesFrame[this, SnapTree.Iterator.IterRepr];
    assume true;
    $rhs#1 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, SnapTree.Iterator.IterRepr, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(554,16)
    assume true;
    assert {:id "id1156"} $_ModifiesFrame[this, SnapTree.Iterator.Contents];
    assert {:id "id1157"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
    assume true;
    $rhs#2 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, 
        SnapTree.Tree.Contents)): Seq;
    $Heap := update($Heap, this, SnapTree.Iterator.Contents, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(555,29)
    assume true;
    $obj0 := this;
    assert {:id "id1160"} $_ModifiesFrame[$obj0, SnapTree.Iterator.initialized];
    assume true;
    $obj1 := this;
    assert {:id "id1161"} $_ModifiesFrame[$obj1, SnapTree.Iterator.stack];
    assume true;
    $obj2 := this;
    assert {:id "id1162"} $_ModifiesFrame[$obj2, SnapTree.Iterator.N];
    assume true;
    $rhs#3 := Lit(false);
    assume true;
    $rhs#4 := Lit(#SnapTree.List.Nil());
    assume true;
    $rhs#5 := LitInt(-1);
    $Heap := update($Heap, $obj0, SnapTree.Iterator.initialized, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, SnapTree.Iterator.stack, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, SnapTree.Iterator.N, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(556,7)
    assert {:id "id1169"} t#0 != null;
    newtype$check#3 := null;
    assume true;
    if ($Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(557,22)
        assume true;
        $obj0 := this;
        assert {:id "id1170"} $_ModifiesFrame[$obj0, SnapTree.Iterator.stack];
        // TrCallStmt: Adding lhs with type List
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        stIn##0_0 := $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := LitInt(0);
        assert {:id "id1171"} t#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1172"} $Is($Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref, Tclass.SnapTree.Node());
        p##0_0 := $Unbox(read($Heap, t#0, SnapTree.Tree.root)): ref;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq;
        assert {:id "id1173"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        Nodes##0_0 := $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set;
        call {:id "id1174"} $rhs##0_0 := Call$$SnapTree.Iterator.Push(stIn##0_0, n##0_0, p##0_0, C##0_0, Nodes##0_0);
        // TrCallStmt: After ProcessCallStmt
        $Heap := update($Heap, $obj0, SnapTree.Iterator.stack, $Box($rhs##0_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "SnapTree.Iterator.Print (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Iterator.Print (call)"} Call$$SnapTree.Iterator.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap));
  // user-defined preconditions
  requires {:id "id1177"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.Print (correctness)"} Impl$$SnapTree.Iterator.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1178"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Print (correctness)"} Impl$$SnapTree.Iterator.Print(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var more#0: bool;
  var $rhs##0: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var x#0_0: int;
  var $rhs##0_0: int;
  var $rhs##0_1: bool;

    // AddMethodImpl: Print, Impl$$SnapTree.Iterator.Print
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(565,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(565,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1179"} Call$$SnapTree.Iterator.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(566,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(566,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1180"} Call$$SnapTree.Iterator.reveal__R();
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(567,7)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(568,27)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id1181"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1182"} $rhs##0 := Call$$SnapTree.Iterator.MoveNext(this);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(569,7)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
       - $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> SnapTree.Iterator.Valid#canCall($Heap, this);
      invariant {:id "id1185"} $w$loop#0
         ==> SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
      free invariant true;
      invariant {:id "id1187"} $w$loop#0
         ==> 
        more#0
         ==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
      invariant {:id "id1188"} $w$loop#0
         ==> 
        more#0
         ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
      free invariant true;
      invariant {:id "id1191"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]
             || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
           - $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
            assume SnapTree.Iterator.Valid#canCall($Heap, this);
            assume SnapTree.Iterator.Valid#canCall($Heap, this);
            assume {:id "id1184"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
            if (more#0)
            {
                if (LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
                {
                }
            }

            assume true;
            assume {:id "id1186"} more#0
               ==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                 && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                   < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
            assert {:id "id1189"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
            assume true;
            assume {:id "id1190"} (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                     && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { $Unbox(read(old($Heap), $o, alloc)): bool } 
                Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                     && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assume true;
            assume false;
        }

        assume true;
        if (!more#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
           - $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(575,25)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        call {:id "id1192"} $rhs##0_0 := Call$$SnapTree.Iterator.Current(this);
        // TrCallStmt: After ProcessCallStmt
        x#0_0 := $rhs##0_0;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(576,9)
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(577,25)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1194"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1195"} $rhs##0_1 := Call$$SnapTree.Iterator.MoveNext(this);
        // TrCallStmt: After ProcessCallStmt
        more#0 := $rhs##0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(569,7)
        assert {:id "id1197"} 0 <= $decr$loop#00
           || Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
               - $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             == $decr$loop#00;
        assert {:id "id1198"} Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
             - $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           < $decr$loop#00;
        assume SnapTree.Iterator.Valid#canCall($Heap, this);
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(579,7)
    assume true;
}



procedure {:verboseName "SnapTree.Iterator.Push (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$SnapTree.Iterator.Push(stIn#0: DatatypeType
       where $Is(stIn#0, Tclass.SnapTree.List())
         && $IsAlloc(stIn#0, Tclass.SnapTree.List(), $Heap)
         && $IsA#SnapTree.List(stIn#0), 
    n#0: int, 
    p#0: ref
       where $Is(p#0, Tclass.SnapTree.Node()) && $IsAlloc(p#0, Tclass.SnapTree.Node(), $Heap), 
    C#0: Seq where $Is(C#0, TSeq(TInt)) && $IsAlloc(C#0, TSeq(TInt), $Heap), 
    Nodes#0: Set
       where $Is(Nodes#0, TSet(Tclass._System.object()))
         && $IsAlloc(Nodes#0, TSet(Tclass._System.object()), $Heap))
   returns (st#0: DatatypeType
       where $Is(st#0, Tclass.SnapTree.List())
         && $IsAlloc(st#0, Tclass.SnapTree.List(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Push (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$SnapTree.Iterator.Push(stIn#0: DatatypeType, n#0: int, p#0: ref, C#0: Seq, Nodes#0: Set)
   returns (st#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##wlist#0: DatatypeType;
  var ##n#0: int;
  var ##C#0: Seq;
  var ##Nodes#0: Set;
  var ##wlist#1: DatatypeType;
  var ##n#1: int;
  var ##C#1: Seq;
  var ##Nodes#1: Set;


    // AddMethodImpl: Push, CheckWellFormed$$SnapTree.Iterator.Push
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id1199"} Set#IsMember(Nodes#0, $Box(p#0));
    assert {:id "id1200"} p#0 != null;
    assume {:id "id1201"} Set#Subset($Unbox(read($Heap, p#0, SnapTree.Node.Repr)): Set, Nodes#0);
    assert {:id "id1202"} p#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(p#0), Tclass.SnapTree.Node?(), $Heap);
    assume SnapTree.Node.NodeValid#canCall($Heap, p#0);
    assume {:id "id1203"} SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#0);
    if (LitInt(0) <= n#0)
    {
    }

    assume {:id "id1204"} LitInt(0) <= n#0 && n#0 <= Seq#Length(C#0);
    assert {:id "id1205"} p#0 != null;
    assert {:id "id1206"} 0 <= n#0 && n#0 <= Seq#Length(C#0);
    assume {:id "id1207"} Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq)
         <= Seq#Length(Seq#Drop(C#0, n#0))
       && Seq#SameUntil($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq, 
        Seq#Drop(C#0, n#0), 
        Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq));
    ##wlist#0 := stIn#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##wlist#0, Tclass.SnapTree.List(), $Heap);
    assert {:id "id1208"} p#0 != null;
    ##n#0 := n#0 + Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TSeq(TInt), $Heap);
    ##Nodes#0 := Nodes#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##Nodes#0, TSet(Tclass._System.object()), $Heap);
    assume SnapTree.Iterator.R#canCall($Heap, 
      stIn#0, 
      n#0 + Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq), 
      C#0, 
      Nodes#0);
    assume {:id "id1209"} SnapTree.Iterator.R($LS($LZ), 
      reveal_SnapTree.Iterator.R, 
      $Heap, 
      stIn#0, 
      n#0 + Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq), 
      C#0, 
      Nodes#0);
    assert {:id "id1210"} p#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc st#0;
    ##wlist#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##wlist#1, Tclass.SnapTree.List(), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    ##C#1 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TSeq(TInt), $Heap);
    ##Nodes#1 := Nodes#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##Nodes#1, TSet(Tclass._System.object()), $Heap);
    assume SnapTree.Iterator.R#canCall($Heap, st#0, n#0, C#0, Nodes#0);
    assume {:id "id1211"} SnapTree.Iterator.R($LS($LZ), reveal_SnapTree.Iterator.R, $Heap, st#0, n#0, C#0, Nodes#0);
}



procedure {:verboseName "SnapTree.Iterator.Push (call)"} {:vcs_split_on_every_assert} Call$$SnapTree.Iterator.Push(stIn#0: DatatypeType
       where $Is(stIn#0, Tclass.SnapTree.List())
         && $IsAlloc(stIn#0, Tclass.SnapTree.List(), $Heap)
         && $IsA#SnapTree.List(stIn#0), 
    n#0: int, 
    p#0: ref
       where $Is(p#0, Tclass.SnapTree.Node()) && $IsAlloc(p#0, Tclass.SnapTree.Node(), $Heap), 
    C#0: Seq where $Is(C#0, TSeq(TInt)) && $IsAlloc(C#0, TSeq(TInt), $Heap), 
    Nodes#0: Set
       where $Is(Nodes#0, TSet(Tclass._System.object()))
         && $IsAlloc(Nodes#0, TSet(Tclass._System.object()), $Heap))
   returns (st#0: DatatypeType
       where $Is(st#0, Tclass.SnapTree.List())
         && $IsAlloc(st#0, Tclass.SnapTree.List(), $Heap));
  // user-defined preconditions
  requires {:id "id1212"} Set#IsMember(Nodes#0, $Box(p#0));
  requires {:id "id1213"} Set#Subset($Unbox(read($Heap, p#0, SnapTree.Node.Repr)): Set, Nodes#0);
  requires {:id "id1214"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, p#0);
  requires {:id "id1215"} LitInt(0) <= n#0;
  requires {:id "id1216"} n#0 <= Seq#Length(C#0);
  requires {:id "id1217"} Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq)
       <= Seq#Length(Seq#Drop(C#0, n#0))
     && Seq#SameUntil($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq, 
      Seq#Drop(C#0, n#0), 
      Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq));
  requires {:id "id1218"} SnapTree.Iterator.R($LS($LS($LZ)), 
    reveal_SnapTree.Iterator.R, 
    $Heap, 
    stIn#0, 
    n#0 + Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq), 
    C#0, 
    Nodes#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.R#canCall($Heap, st#0, n#0, C#0, Nodes#0);
  ensures {:id "id1219"} SnapTree.Iterator.R($LS($LS($LZ)), reveal_SnapTree.Iterator.R, $Heap, st#0, n#0, C#0, Nodes#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.Push (correctness)"} {:vcs_split_on_every_assert} Impl$$SnapTree.Iterator.Push(stIn#0: DatatypeType
       where $Is(stIn#0, Tclass.SnapTree.List())
         && $IsAlloc(stIn#0, Tclass.SnapTree.List(), $Heap)
         && $IsA#SnapTree.List(stIn#0), 
    n#0: int, 
    p#0: ref
       where $Is(p#0, Tclass.SnapTree.Node()) && $IsAlloc(p#0, Tclass.SnapTree.Node(), $Heap), 
    C#0: Seq where $Is(C#0, TSeq(TInt)) && $IsAlloc(C#0, TSeq(TInt), $Heap), 
    Nodes#0: Set
       where $Is(Nodes#0, TSet(Tclass._System.object()))
         && $IsAlloc(Nodes#0, TSet(Tclass._System.object()), $Heap))
   returns (st#0: DatatypeType
       where $Is(st#0, Tclass.SnapTree.List())
         && $IsAlloc(st#0, Tclass.SnapTree.List(), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1220"} Set#IsMember(Nodes#0, $Box(p#0));
  requires {:id "id1221"} Set#Subset($Unbox(read($Heap, p#0, SnapTree.Node.Repr)): Set, Nodes#0);
  requires {:id "id1222"} SnapTree.Node.NodeValid($LS($LS($LZ)), reveal_SnapTree.Node.NodeValid, $Heap, p#0);
  requires {:id "id1223"} LitInt(0) <= n#0;
  requires {:id "id1224"} n#0 <= Seq#Length(C#0);
  requires {:id "id1225"} Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq)
       <= Seq#Length(Seq#Drop(C#0, n#0))
     && Seq#SameUntil($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq, 
      Seq#Drop(C#0, n#0), 
      Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq));
  requires {:id "id1226"} SnapTree.Iterator.R($LS($LS($LZ)), 
    reveal_SnapTree.Iterator.R, 
    $Heap, 
    stIn#0, 
    n#0 + Seq#Length($Unbox(read($Heap, p#0, SnapTree.Node.Contents)): Seq), 
    C#0, 
    Nodes#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.R#canCall($Heap, st#0, n#0, C#0, Nodes#0);
  ensures {:id "id1227"} SnapTree.Iterator.R($LS($LS($LZ)), reveal_SnapTree.Iterator.R, $Heap, st#0, n#0, C#0, Nodes#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Push (correctness)"} {:vcs_split_on_every_assert} Impl$$SnapTree.Iterator.Push(stIn#0: DatatypeType, n#0: int, p#0: ref, C#0: Seq, Nodes#0: Set)
   returns (st#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var $rhs##0_0: DatatypeType;
  var stIn##0_0: DatatypeType;
  var n##0_0: int;
  var p##0_0: ref;
  var C##0_0: Seq;
  var Nodes##0_0: Set;

    // AddMethodImpl: Push, Impl$$SnapTree.Iterator.Push
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(591,10)
    assume true;
    assume true;
    st#0 := #SnapTree.List.Cons(p#0, stIn#0);
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(593,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(593,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1229"} Call$$SnapTree.Iterator.reveal__R();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(594,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(594,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1230"} Call$$SnapTree.Node.reveal__NodeValid();
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(595,7)
    assert {:id "id1231"} p#0 != null;
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, p#0, SnapTree.Node.left)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(596,19)
        assume true;
        // TrCallStmt: Adding lhs with type List
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        stIn##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := n#0;
        assert {:id "id1232"} p#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1233"} $Is($Unbox(read($Heap, p#0, SnapTree.Node.left)): ref, Tclass.SnapTree.Node());
        p##0_0 := $Unbox(read($Heap, p#0, SnapTree.Node.left)): ref;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        Nodes##0_0 := Nodes#0;
        assert {:id "id1234"} 0 <= Seq#Length($Unbox(read(old($Heap), p#0, SnapTree.Node.Contents)): Seq)
           || Seq#Length($Unbox(read($Heap, p##0_0, SnapTree.Node.Contents)): Seq)
             == Seq#Length($Unbox(read(old($Heap), p#0, SnapTree.Node.Contents)): Seq);
        assert {:id "id1235"} Seq#Length($Unbox(read($Heap, p##0_0, SnapTree.Node.Contents)): Seq)
           < Seq#Length($Unbox(read(old($Heap), p#0, SnapTree.Node.Contents)): Seq);
        call {:id "id1236"} $rhs##0_0 := Call$$SnapTree.Iterator.Push(stIn##0_0, n##0_0, p##0_0, C##0_0, Nodes##0_0);
        // TrCallStmt: After ProcessCallStmt
        st#0 := $rhs##0_0;
    }
    else
    {
    }
}



procedure {:verboseName "SnapTree.Iterator.Current (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Current(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (x#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Current (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Current(this: ref) returns (x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Current, CheckWellFormed$$SnapTree.Iterator.Current
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
    assume SnapTree.Iterator.Valid#canCall($Heap, this);
    assume {:id "id1238"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
    if (LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
    {
    }

    assume {:id "id1239"} LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
         < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc x#0;
    assert {:id "id1240"} 0 <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
         < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
    assume {:id "id1241"} x#0
       == $Unbox(Seq#Index($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
          $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)): int;
}



procedure {:verboseName "SnapTree.Iterator.Current (call)"} Call$$SnapTree.Iterator.Current(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (x#0: int);
  // user-defined preconditions
  requires {:id "id1242"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  requires {:id "id1243"} LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
  requires {:id "id1244"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
     < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1245"} x#0
     == $Unbox(Seq#Index($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
        $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.Current (correctness)"} Impl$$SnapTree.Iterator.Current(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (x#0: int, $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1246"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  requires {:id "id1247"} LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
  requires {:id "id1248"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
     < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1249"} x#0
     == $Unbox(Seq#Index($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
        $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.Current (correctness)"} Impl$$SnapTree.Iterator.Current(this: ref) returns (x#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: ref;
  var _mcc#1#0_0: DatatypeType;
  var rest#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var y#0_0: ref;
  var let#0_1#0#0: ref;

    // AddMethodImpl: Current, Impl$$SnapTree.Iterator.Current
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(604,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(604,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1250"} Call$$SnapTree.Iterator.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(605,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(605,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1251"} Call$$SnapTree.Iterator.reveal__R();
    // TrCallStmt: After ProcessCallStmt
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if ($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType
       == #SnapTree.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass.SnapTree.Node())
           && $IsAlloc(_mcc#0#0_0, Tclass.SnapTree.Node(), $Heap);
        assume $Is(_mcc#1#0_0, Tclass.SnapTree.List())
           && $IsAlloc(_mcc#1#0_0, Tclass.SnapTree.List(), $Heap);
        havoc rest#0_0;
        assume $Is(rest#0_0, Tclass.SnapTree.List())
           && $IsAlloc(rest#0_0, Tclass.SnapTree.List(), $Heap);
        assume {:id "id1253"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.SnapTree.List());
        assume {:id "id1254"} rest#0_0 == let#0_0#0#0;
        havoc y#0_0;
        assume $Is(y#0_0, Tclass.SnapTree.Node())
           && $IsAlloc(y#0_0, Tclass.SnapTree.Node(), $Heap);
        assume {:id "id1255"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass.SnapTree.Node());
        assume {:id "id1256"} y#0_0 == let#0_1#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(607,31)
        assume true;
        assert {:id "id1257"} y#0_0 != null;
        assume true;
        x#0 := $Unbox(read($Heap, y#0_0, SnapTree.Node.data)): int;
    }
    else if ($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType
       == #SnapTree.List.Nil())
    {
        assert {:id "id1252"} false;
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "SnapTree.Iterator.MoveNext (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$SnapTree.Iterator.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (hasCurrent#0: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.MoveNext (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$SnapTree.Iterator.MoveNext(this: ref) returns (hasCurrent#0: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MoveNext, CheckWellFormed$$SnapTree.Iterator.MoveNext
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
    assume SnapTree.Iterator.Valid#canCall($Heap, this);
    assume {:id "id1259"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
    assume {:id "id1260"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc hasCurrent#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.SnapTree.Iterator?(), $Heap);
    assume SnapTree.Iterator.Valid#canCall($Heap, this);
    assume {:id "id1261"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
    assert {:id "id1262"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
    assume {:id "id1263"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id1264"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
    assert {:id "id1265"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
    assert {:id "id1266"} $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref != null;
    assert {:id "id1267"} $IsAlloc($Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref, 
      Tclass.SnapTree.Tree?(), 
      old($Heap));
    assume {:id "id1268"} Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set, 
      $Unbox(read(old($Heap), 
          $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref, 
          SnapTree.Tree.Repr)): Set);
    assert {:id "id1269"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
    assume {:id "id1270"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Iterator.Contents)): Seq);
    assert {:id "id1271"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
    assume {:id "id1272"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref;
    if (*)
    {
        assert {:id "id1273"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
        assume {:id "id1274"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
           < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
        assert {:id "id1275"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
        assume {:id "id1276"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int + 1;
    }
    else
    {
        assume {:id "id1277"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
             < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
           ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int + 1;
    }

    if (*)
    {
        assert {:id "id1278"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
        assume {:id "id1279"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
           == Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
        assert {:id "id1280"} $IsAlloc(this, Tclass.SnapTree.Iterator(), old($Heap));
        assume {:id "id1281"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int;
    }
    else
    {
        assume {:id "id1282"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
             == Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
           ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
             == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int;
    }

    if (LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)
    {
    }

    assume {:id "id1283"} hasCurrent#0
       <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
         && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
           < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
}



procedure {:verboseName "SnapTree.Iterator.MoveNext (call)"} {:vcs_split_on_every_assert} Call$$SnapTree.Iterator.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (hasCurrent#0: bool);
  // user-defined preconditions
  requires {:id "id1284"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  requires {:id "id1285"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
     <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, this);
  ensures {:id "id1286"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  ensures {:id "id1287"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id1288"} Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set, 
    $Unbox(read(old($Heap), 
        $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref, 
        SnapTree.Tree.Repr)): Set);
  free ensures true;
  ensures {:id "id1289"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Iterator.Contents)): Seq);
  ensures {:id "id1290"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref
     == $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref;
  free ensures true;
  ensures {:id "id1291"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
       < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int + 1;
  free ensures true;
  ensures {:id "id1292"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
       == Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int;
  free ensures true;
  ensures {:id "id1293"} hasCurrent#0
     <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
         < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.MoveNext (correctness)"} {:vcs_split_on_every_assert} Impl$$SnapTree.Iterator.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (hasCurrent#0: bool, $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1294"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  requires {:id "id1295"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
     <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, this);
  ensures {:id "id1296"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  ensures {:id "id1297"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id1298"} Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set, 
    $Unbox(read(old($Heap), 
        $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref, 
        SnapTree.Tree.Repr)): Set);
  free ensures true;
  ensures {:id "id1299"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Iterator.Contents)): Seq);
  ensures {:id "id1300"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref
     == $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref;
  free ensures true;
  ensures {:id "id1301"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
       < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int + 1;
  free ensures true;
  ensures {:id "id1302"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
       == Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int;
  free ensures true;
  ensures {:id "id1303"} hasCurrent#0
     <==> LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
         < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTree.Iterator.MoveNext (correctness)"} {:vcs_split_on_every_assert} Impl$$SnapTree.Iterator.MoveNext(this: ref) returns (hasCurrent#0: bool, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0_0: bool;
  var $rhs#0_1: int;
  var _mcc#0#1_0_0: ref;
  var _mcc#1#1_0_0: DatatypeType;
  var rest#1_0_0: DatatypeType;
  var let#1_0_0#0#0: DatatypeType;
  var p#1_0_0: ref;
  var let#1_0_1#0#0: ref;
  var $rhs#1_0_0: DatatypeType;
  var $rhs#1_0_1: int;
  var newtype$check#1_0_0: ref;
  var $rhs##1_0_0_0: DatatypeType;
  var stIn##1_0_0_0: DatatypeType;
  var n##1_0_0_0: int;
  var p##1_0_0_0: ref;
  var C##1_0_0_0: Seq;
  var Nodes##1_0_0_0: Set;

    // AddMethodImpl: MoveNext, Impl$$SnapTree.Iterator.MoveNext
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(619,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(619,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1304"} Call$$SnapTree.Iterator.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(620,7)
    assume true;
    if (!$Unbox(read($Heap, this, SnapTree.Iterator.initialized)): bool)
    {
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(621,24)
        assume true;
        $obj0 := this;
        assert {:id "id1305"} $_ModifiesFrame[$obj0, SnapTree.Iterator.initialized];
        assume true;
        $obj1 := this;
        assert {:id "id1306"} $_ModifiesFrame[$obj1, SnapTree.Iterator.N];
        assume true;
        $rhs#0_0 := Lit(true);
        assume true;
        $rhs#0_1 := LitInt(0);
        $Heap := update($Heap, $obj0, SnapTree.Iterator.initialized, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, SnapTree.Iterator.N, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(622,20)
        assume true;
        assume $IsA#SnapTree.List($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType);
        hasCurrent#0 := !SnapTree.List#Equal($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
          #SnapTree.List.Nil());
        pop;
    }
    else
    {
        push;
        assume true;
        havoc _mcc#0#1_0_0, _mcc#1#1_0_0;
        if ($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType
           == #SnapTree.List.Nil())
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(626,22)
            assume true;
            assume true;
            hasCurrent#0 := Lit(false);
        }
        else if ($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType
           == #SnapTree.List.Cons(_mcc#0#1_0_0, _mcc#1#1_0_0))
        {
            assume $Is(_mcc#0#1_0_0, Tclass.SnapTree.Node())
               && $IsAlloc(_mcc#0#1_0_0, Tclass.SnapTree.Node(), $Heap);
            assume $Is(_mcc#1#1_0_0, Tclass.SnapTree.List())
               && $IsAlloc(_mcc#1#1_0_0, Tclass.SnapTree.List(), $Heap);
            havoc rest#1_0_0;
            assume $Is(rest#1_0_0, Tclass.SnapTree.List())
               && $IsAlloc(rest#1_0_0, Tclass.SnapTree.List(), $Heap);
            assume {:id "id1312"} let#1_0_0#0#0 == _mcc#1#1_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_0_0#0#0, Tclass.SnapTree.List());
            assume {:id "id1313"} rest#1_0_0 == let#1_0_0#0#0;
            havoc p#1_0_0;
            assume $Is(p#1_0_0, Tclass.SnapTree.Node())
               && $IsAlloc(p#1_0_0, Tclass.SnapTree.Node(), $Heap);
            assume {:id "id1314"} let#1_0_1#0#0 == _mcc#0#1_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_0_1#0#0, Tclass.SnapTree.Node());
            assume {:id "id1315"} p#1_0_0 == let#1_0_1#0#0;
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(629,11)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(629,20)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id1316"} Call$$SnapTree.Node.reveal__NodeValid();
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(631,20)
            assume true;
            $obj0 := this;
            assert {:id "id1317"} $_ModifiesFrame[$obj0, SnapTree.Iterator.stack];
            assume true;
            $obj1 := this;
            assert {:id "id1318"} $_ModifiesFrame[$obj1, SnapTree.Iterator.N];
            assume true;
            $rhs#1_0_0 := rest#1_0_0;
            assume true;
            $rhs#1_0_1 := $Unbox(read($Heap, this, SnapTree.Iterator.N)): int + 1;
            $Heap := update($Heap, $obj0, SnapTree.Iterator.stack, $Box($rhs#1_0_0));
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, $obj1, SnapTree.Iterator.N, $Box($rhs#1_0_1));
            assume $IsGoodHeap($Heap);
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(633,11)
            assert {:id "id1323"} p#1_0_0 != null;
            newtype$check#1_0_0 := null;
            assume true;
            if ($Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref != null)
            {
                push;
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(634,13)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(634,20)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id1324"} Call$$SnapTree.Iterator.reveal__R();
                // TrCallStmt: After ProcessCallStmt
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(635,13)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(635,28)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id1325"} Call$$SnapTree.Node.reveal__NodeValid();
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(636,13)
                assert {:id "id1326"} {:subsumption 0} p#1_0_0 != null;
                assert {:id "id1327"} {:subsumption 0} $Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref != null;
                assert {:id "id1328"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                   && $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
                     <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
                assume true;
                assert {:id "id1329"} Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref, 
                          SnapTree.Node.Contents)): Seq)
                     <= Seq#Length(Seq#Drop($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                        $Unbox(read($Heap, this, SnapTree.Iterator.N)): int))
                   && Seq#SameUntil($Unbox(read($Heap, 
                        $Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref, 
                        SnapTree.Node.Contents)): Seq, 
                    Seq#Drop($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
                      $Unbox(read($Heap, this, SnapTree.Iterator.N)): int), 
                    Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref, 
                          SnapTree.Node.Contents)): Seq));
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(637,26)
                assume true;
                $obj0 := this;
                assert {:id "id1330"} $_ModifiesFrame[$obj0, SnapTree.Iterator.stack];
                // TrCallStmt: Adding lhs with type List
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                stIn##1_0_0_0 := $Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType;
                assume true;
                // ProcessCallStmt: CheckSubrange
                n##1_0_0_0 := $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
                assert {:id "id1331"} p#1_0_0 != null;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id1332"} $Is($Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref, Tclass.SnapTree.Node());
                p##1_0_0_0 := $Unbox(read($Heap, p#1_0_0, SnapTree.Node.right)): ref;
                assume true;
                // ProcessCallStmt: CheckSubrange
                C##1_0_0_0 := $Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq;
                assert {:id "id1333"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref != null;
                assume true;
                // ProcessCallStmt: CheckSubrange
                Nodes##1_0_0_0 := $Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set;
                call {:id "id1334"} $rhs##1_0_0_0 := Call$$SnapTree.Iterator.Push(stIn##1_0_0_0, n##1_0_0_0, p##1_0_0_0, C##1_0_0_0, Nodes##1_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                $Heap := update($Heap, $obj0, SnapTree.Iterator.stack, $Box($rhs##1_0_0_0));
                assume $IsGoodHeap($Heap);
                pop;
            }
            else
            {
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(639,22)
            assume true;
            assume $IsA#SnapTree.List($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType);
            hasCurrent#0 := !SnapTree.List#Equal($Unbox(read($Heap, this, SnapTree.Iterator.stack)): DatatypeType, 
              #SnapTree.List.Nil());
        }
        else
        {
            assume false;
        }

        pop;
    }

    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(641,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(641,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1338"} Call$$SnapTree.Iterator.reveal__R();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTree.Iterator.reveal_Valid (well-formedness)"} {:verify false} CheckWellFormed$$SnapTree.Iterator.reveal__Valid();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Iterator.reveal_Valid (call)"} {:verify false} Call$$SnapTree.Iterator.reveal__Valid();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_SnapTree.Iterator.Valid;



procedure {:verboseName "SnapTree.Iterator.reveal_R (well-formedness)"} {:verify false} CheckWellFormed$$SnapTree.Iterator.reveal__R();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Iterator.reveal_R (call)"} {:verify false} Call$$SnapTree.Iterator.reveal__R();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_SnapTree.Iterator.R;



// $Is axiom for non-null type SnapTree.Iterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.SnapTree.Iterator()) } 
    { $Is(c#0, Tclass.SnapTree.Iterator?()) } 
  $Is(c#0, Tclass.SnapTree.Iterator())
     <==> $Is(c#0, Tclass.SnapTree.Iterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type SnapTree.Iterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.SnapTree.Iterator(), $h) } 
    { $IsAlloc(c#0, Tclass.SnapTree.Iterator?(), $h) } 
  $IsAlloc(c#0, Tclass.SnapTree.Iterator(), $h)
     <==> $IsAlloc(c#0, Tclass.SnapTree.Iterator?(), $h));

const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$Iterator: TyTagFamily;

const unique field$Contents: NameFamily;

const unique field$IsReadonly: NameFamily;

const unique field$Repr: NameFamily;

const unique field$MutableRepr: NameFamily;

const unique field$root: NameFamily;

const unique field$reprIsShared: NameFamily;

const unique field$IterRepr: NameFamily;

const unique field$T: NameFamily;

const unique field$N: NameFamily;

const unique field$data: NameFamily;

const unique field$left: NameFamily;

const unique field$right: NameFamily;

const unique field$initialized: NameFamily;

const unique field$stack: NameFamily;
