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

const unique class.SnapTreeTestHarness.__default: ClassName;

procedure {:verboseName "SnapTreeTestHarness.Main (well-formedness)"} CheckWellFormed$$SnapTreeTestHarness.__default.Main();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTreeTestHarness.Main (call)"} Call$$SnapTreeTestHarness.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTreeTestHarness.Main (correctness)"} Impl$$SnapTreeTestHarness.__default.Main() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTreeTestHarness.Main (correctness)"} Impl$$SnapTreeTestHarness.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap);
  var $nw: ref;
  var pos#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs##1: int;
  var x##1: int;
  var $rhs##2: int;
  var x##2: int;
  var $rhs##3: int;
  var x##3: int;
  var $rhs##4: int;
  var x##4: int;
  var defass#s#0: bool;
  var s#0: ref
     where defass#s#0
       ==> $Is(s#0, Tclass.SnapTree.Tree()) && $IsAlloc(s#0, Tclass.SnapTree.Tree(), $Heap);
  var $rhs##5: ref;
  var sc#0: Seq where $Is(sc#0, TSeq(TInt)) && $IsAlloc(sc#0, TSeq(TInt), $Heap);
  var defass#it#0: bool;
  var it#0: ref
     where defass#it#0
       ==> $Is(it#0, Tclass.SnapTree.Iterator())
         && $IsAlloc(it#0, Tclass.SnapTree.Iterator(), $Heap);
  var $rhs##6: ref;
  var more#0: bool;
  var $rhs##7: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var x#0_0: int;
  var $rhs##0_0: int;
  var $rhs##0_1: int;
  var x##0_0: int;
  var $rhs##0_2: bool;

    // AddMethodImpl: Main, Impl$$SnapTreeTestHarness.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(15,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(15,32)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1339"} $nw := Call$$SnapTree.Tree.Empty();
    // TrCallStmt: After ProcessCallStmt
    t#0 := $nw;
    defass#t#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(16,30)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1341"} defass#t#0;
    assume true;
    assert {:id "id1342"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(2);
    assert {:id "id1343"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1344"} $rhs##0 := Call$$SnapTree.Tree.Insert(t#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(17,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1346"} defass#t#0;
    assume true;
    assert {:id "id1347"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(1);
    assert {:id "id1348"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1349"} $rhs##1 := Call$$SnapTree.Tree.Insert(t#0, x##1);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(18,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1351"} defass#t#0;
    assume true;
    assert {:id "id1352"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(3);
    assert {:id "id1353"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1354"} $rhs##2 := Call$$SnapTree.Tree.Insert(t#0, x##2);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(19,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1356"} defass#t#0;
    assume true;
    assert {:id "id1357"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := LitInt(-15);
    assert {:id "id1358"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1359"} $rhs##3 := Call$$SnapTree.Tree.Insert(t#0, x##3);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(20,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1361"} defass#t#0;
    assume true;
    assert {:id "id1362"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := LitInt(0);
    assert {:id "id1363"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1364"} $rhs##4 := Call$$SnapTree.Tree.Insert(t#0, x##4);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##4;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(22,30)
    assume true;
    // TrCallStmt: Adding lhs with type Tree
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1366"} defass#t#0;
    assume true;
    assert {:id "id1367"} t#0 != null;
    assert {:id "id1368"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1369"} $rhs##5 := Call$$SnapTree.Tree.CreateSnapshot(t#0);
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##5;
    defass#s#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(23,18)
    assume true;
    assert {:id "id1371"} defass#s#0;
    assert {:id "id1372"} s#0 != null;
    assume true;
    sc#0 := $Unbox(read($Heap, s#0, SnapTree.Tree.Contents)): Seq;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(24,31)
    assume true;
    // TrCallStmt: Adding lhs with type Iterator
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1374"} defass#s#0;
    assume true;
    assert {:id "id1375"} s#0 != null;
    call {:id "id1376"} $rhs##6 := Call$$SnapTree.Tree.CreateIterator(s#0);
    // TrCallStmt: After ProcessCallStmt
    it#0 := $rhs##6;
    defass#it#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(25,28)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1378"} defass#it#0;
    assume true;
    assert {:id "id1379"} it#0 != null;
    assert {:id "id1380"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1381"} $rhs##7 := Call$$SnapTree.Iterator.MoveNext(it#0);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##7;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(26,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq)
       - $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0
         ==> SnapTree.Tree.Valid#canCall($Heap, t#0)
           && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
             ==> 
            !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool
             ==> SnapTree.Iterator.Valid#canCall($Heap, it#0));
      invariant {:id "id1390"} $w$loop#0 ==> SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
      invariant {:id "id1391"} $w$loop#0 ==> !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool;
      invariant {:id "id1392"} $w$loop#0
         ==> SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, it#0);
      free invariant true;
      invariant {:id "id1400"} $w$loop#0
         ==> 
        more#0
         ==> LitInt(0) <= $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int;
      invariant {:id "id1401"} $w$loop#0
         ==> 
        more#0
         ==> $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
           < Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq);
      free invariant true;
      invariant {:id "id1407"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      invariant {:id "id1408"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant true;
      invariant {:id "id1426"} $w$loop#0
         ==> Set#Subset($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
          $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set);
      invariant {:id "id1427"} $w$loop#0
         ==> !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box(it#0));
      invariant {:id "id1428"} $w$loop#0
         ==> Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set);
      invariant {:id "id1429"} $w$loop#0
         ==> Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
          $Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set);
      free invariant $w$loop#0
         ==> 
        $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref == s#0
         ==> SnapTree.Tree.Valid#canCall($Heap, s#0);
      invariant {:id "id1436"} $w$loop#0 ==> $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref == s#0;
      invariant {:id "id1437"} $w$loop#0 ==> SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, s#0);
      free invariant true;
      invariant {:id "id1441"} $w$loop#0
         ==> Seq#Equal($Unbox(read($Heap, s#0, SnapTree.Tree.Contents)): Seq, sc#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq)
           - $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id1383"} defass#t#0;
            assert {:id "id1384"} {:subsumption 0} t#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(t#0), Tclass.SnapTree.Tree?(), $Heap);
            assume SnapTree.Tree.Valid#canCall($Heap, t#0);
            if (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0))
            {
                assert {:id "id1385"} defass#t#0;
                assert {:id "id1386"} {:subsumption 0} t#0 != null;
            }

            if (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
               && !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool)
            {
                assert {:id "id1387"} defass#it#0;
                assert {:id "id1388"} {:subsumption 0} it#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(it#0), Tclass.SnapTree.Iterator?(), $Heap);
                assume SnapTree.Iterator.Valid#canCall($Heap, it#0);
            }

            assume SnapTree.Tree.Valid#canCall($Heap, t#0)
               && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
                 ==> 
                !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool
                 ==> SnapTree.Iterator.Valid#canCall($Heap, it#0));
            assume {:id "id1389"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
               && !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool
               && SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, it#0);
            if (more#0)
            {
                assert {:id "id1393"} defass#it#0;
                assert {:id "id1394"} {:subsumption 0} it#0 != null;
                if (LitInt(0) <= $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int)
                {
                    assert {:id "id1395"} defass#it#0;
                    assert {:id "id1396"} {:subsumption 0} it#0 != null;
                    assert {:id "id1397"} defass#it#0;
                    assert {:id "id1398"} {:subsumption 0} it#0 != null;
                }
            }

            assume true;
            assume {:id "id1399"} more#0
               ==> LitInt(0) <= $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
                 && $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
                   < Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq);
            assert {:id "id1402"} defass#t#0;
            assert {:id "id1403"} {:subsumption 0} t#0 != null;
            if ((forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool))
            {
                assert {:id "id1404"} defass#it#0;
                assert {:id "id1405"} {:subsumption 0} it#0 != null;
            }

            assume true;
            assume {:id "id1406"} (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assert {:id "id1409"} defass#t#0;
            assert {:id "id1410"} {:subsumption 0} t#0 != null;
            assert {:id "id1411"} defass#t#0;
            assert {:id "id1412"} {:subsumption 0} t#0 != null;
            if (Set#Subset($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
              $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set))
            {
                assert {:id "id1413"} defass#it#0;
                assert {:id "id1414"} defass#t#0;
                assert {:id "id1415"} {:subsumption 0} t#0 != null;
            }

            if (Set#Subset($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box(it#0)))
            {
                assert {:id "id1416"} defass#t#0;
                assert {:id "id1417"} {:subsumption 0} t#0 != null;
                assert {:id "id1418"} defass#it#0;
                assert {:id "id1419"} {:subsumption 0} it#0 != null;
                assert {:id "id1420"} {:subsumption 0} $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref != null;
            }

            if (Set#Subset($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box(it#0))
               && Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set))
            {
                assert {:id "id1421"} defass#t#0;
                assert {:id "id1422"} {:subsumption 0} t#0 != null;
                assert {:id "id1423"} defass#it#0;
                assert {:id "id1424"} {:subsumption 0} it#0 != null;
            }

            assume true;
            assume {:id "id1425"} Set#Subset($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box(it#0))
               && Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
               && Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
                $Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set);
            assert {:id "id1430"} defass#it#0;
            assert {:id "id1431"} {:subsumption 0} it#0 != null;
            assert {:id "id1432"} defass#s#0;
            if ($Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref == s#0)
            {
                assert {:id "id1433"} defass#s#0;
                assert {:id "id1434"} {:subsumption 0} s#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(s#0), Tclass.SnapTree.Tree?(), $Heap);
                assume SnapTree.Tree.Valid#canCall($Heap, s#0);
            }

            assume $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref == s#0
               ==> SnapTree.Tree.Valid#canCall($Heap, s#0);
            assume {:id "id1435"} $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref == s#0
               && SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, s#0);
            assert {:id "id1438"} defass#s#0;
            assert {:id "id1439"} {:subsumption 0} s#0 != null;
            assume true;
            assume {:id "id1440"} Seq#Equal($Unbox(read($Heap, s#0, SnapTree.Tree.Contents)): Seq, sc#0);
            assert {:id "id1442"} defass#it#0;
            assert {:id "id1443"} it#0 != null;
            assert {:id "id1444"} defass#it#0;
            assert {:id "id1445"} it#0 != null;
            assume true;
            assume false;
        }

        assume true;
        if (!more#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq)
           - $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(35,26)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id1446"} defass#it#0;
        assume true;
        assert {:id "id1447"} it#0 != null;
        call {:id "id1448"} $rhs##0_0 := Call$$SnapTree.Iterator.Current(it#0);
        // TrCallStmt: After ProcessCallStmt
        x#0_0 := $rhs##0_0;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(36,7)
        assume true;
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(37,22)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id1450"} defass#t#0;
        assume true;
        assert {:id "id1451"} t#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := Mul(x#0_0, LitInt(3));
        assert {:id "id1452"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1453"} $rhs##0_1 := Call$$SnapTree.Tree.Insert(t#0, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        pos#0 := $rhs##0_1;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(38,26)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id1455"} defass#it#0;
        assume true;
        assert {:id "id1456"} it#0 != null;
        assert {:id "id1457"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1458"} $rhs##0_2 := Call$$SnapTree.Iterator.MoveNext(it#0);
        // TrCallStmt: After ProcessCallStmt
        more#0 := $rhs##0_2;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(26,5)
        assert {:id "id1460"} 0 <= $decr$loop#00
           || Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq)
               - $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
             == $decr$loop#00;
        assert {:id "id1461"} Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq)
             - $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
           < $decr$loop#00;
        assume SnapTree.Tree.Valid#canCall($Heap, t#0)
           && (SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0)
             ==> 
            !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool
             ==> SnapTree.Iterator.Valid#canCall($Heap, it#0)
               && (SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, it#0)
                 ==> 
                (more#0
                 ==> LitInt(0) <= $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
                   && $Unbox(read($Heap, it#0, SnapTree.Iterator.N)): int
                     < Seq#Length($Unbox(read($Heap, it#0, SnapTree.Iterator.Contents)): Seq))
                 ==> 
                (forall $o: ref :: 
                    { $o != null } 
                    Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
                       ==> $o != null)
                   && (forall $o: ref :: 
                    { Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o)) } 
                    Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
                       ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
                 ==> 
                (forall $o: ref :: 
                    { $o != null } 
                    Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                       ==> $o != null)
                   && (forall $o: ref :: 
                    { Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
                    Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
                       ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
                 ==> 
                Set#Subset($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                  $Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set)
                 ==> 
                !Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box(it#0))
                 ==> 
                Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set)
                 ==> 
                Set#Disjoint($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, 
                  $Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set)
                 ==> 
                $Unbox(read($Heap, it#0, SnapTree.Iterator.T)): ref == s#0
                 ==> SnapTree.Tree.Valid#canCall($Heap, s#0)));
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(40,5)
    assert {:id "id1462"} defass#s#0;
    assert {:id "id1463"} {:subsumption 0} s#0 != null;
    assume true;
    assert {:id "id1464"} Seq#Equal($Unbox(read($Heap, s#0, SnapTree.Tree.Contents)): Seq, sc#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(41,12)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1465"} defass#t#0;
    assume true;
    assert {:id "id1466"} t#0 != null;
    assert {:id "id1467"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1468"} Call$$SnapTree.Tree.Print(t#0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SnapTreeTestHarness.TestContents (well-formedness)"} CheckWellFormed$$SnapTreeTestHarness.__default.TestContents();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTreeTestHarness.TestContents (call)"} Call$$SnapTreeTestHarness.__default.TestContents();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTreeTestHarness.TestContents (correctness)"} Impl$$SnapTreeTestHarness.__default.TestContents() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTreeTestHarness.TestContents (correctness)"} Impl$$SnapTreeTestHarness.__default.TestContents() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap);
  var $nw: ref;
  var pos#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs##1: int;
  var x##1: int;
  var hc#0: Seq where $Is(hc#0, TSeq(TInt)) && $IsAlloc(hc#0, TSeq(TInt), $Heap);
  var c##0: Seq;
  var ##c#0: Seq;

    // AddMethodImpl: TestContents, Impl$$SnapTreeTestHarness.__default.TestContents
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(46,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(46,32)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1469"} $nw := Call$$SnapTree.Tree.Empty();
    // TrCallStmt: After ProcessCallStmt
    t#0 := $nw;
    defass#t#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(46,43)
    assert {:id "id1471"} defass#t#0;
    assert {:id "id1472"} {:subsumption 0} t#0 != null;
    assume true;
    assert {:id "id1473"} Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(47,30)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1474"} defass#t#0;
    assume true;
    assert {:id "id1475"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(2);
    assert {:id "id1476"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1477"} $rhs##0 := Call$$SnapTree.Tree.Insert(t#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(47,43)
    if (pos#0 == LitInt(0))
    {
        assert {:id "id1479"} defass#t#0;
        assert {:id "id1480"} {:subsumption 0} t#0 != null;
    }

    assume true;
    assert {:id "id1481"} {:subsumption 0} pos#0 == LitInt(0);
    assert {:id "id1482"} {:subsumption 0} Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))));
    assume {:id "id1483"} pos#0 == LitInt(0)
       && Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(49,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1484"} defass#t#0;
    assume true;
    assert {:id "id1485"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(1);
    assert {:id "id1486"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1487"} $rhs##1 := Call$$SnapTree.Tree.Insert(t#0, x##1);
    // TrCallStmt: After ProcessCallStmt
    pos#0 := $rhs##1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(51,5)
    if (pos#0 == LitInt(1))
    {
        assert {:id "id1489"} defass#t#0;
        assert {:id "id1490"} {:subsumption 0} t#0 != null;
    }

    assume true;
    assert {:id "id1491"} {:subsumption 0} pos#0 == LitInt(1)
       ==> Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
        Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(1))));
    assume {:id "id1492"} pos#0 == LitInt(1)
       ==> Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
        Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(1))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(52,18)
    assume true;
    assume true;
    hc#0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(1))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(53,35)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := hc#0;
    call {:id "id1494"} Call$$SnapTree.Tree.IsSortedProperty(c##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(54,5)
    assert {:id "id1495"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(hc#0);
    if ($Unbox(Seq#Index(hc#0, LitInt(0))): int == LitInt(2))
    {
        assert {:id "id1496"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < Seq#Length(hc#0);
    }

    if ($Unbox(Seq#Index(hc#0, LitInt(0))): int == LitInt(2)
       && $Unbox(Seq#Index(hc#0, LitInt(1))): int == LitInt(1))
    {
        ##c#0 := hc#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, TSeq(TInt), $Heap);
        assume SnapTree.Tree.IsSorted#canCall(hc#0);
    }

    assume $Unbox(Seq#Index(hc#0, LitInt(0))): int == LitInt(2)
       ==> 
      $Unbox(Seq#Index(hc#0, LitInt(1))): int == LitInt(1)
       ==> SnapTree.Tree.IsSorted#canCall(hc#0);
    assert {:id "id1497"} {:subsumption 0} $Unbox(Seq#Index(hc#0, LitInt(0))): int == LitInt(2);
    assert {:id "id1498"} {:subsumption 0} $Unbox(Seq#Index(hc#0, LitInt(1))): int == LitInt(1);
    assert {:id "id1499"} {:subsumption 0} !SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, hc#0);
    assume {:id "id1500"} $Unbox(Seq#Index(hc#0, LitInt(0))): int == LitInt(2)
       && $Unbox(Seq#Index(hc#0, LitInt(1))): int == LitInt(1)
       && !SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, hc#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(56,5)
    if (pos#0 == LitInt(0))
    {
        assert {:id "id1501"} defass#t#0;
        assert {:id "id1502"} {:subsumption 0} t#0 != null;
    }

    assume true;
    assert {:id "id1503"} {:subsumption 0} pos#0 == LitInt(0);
    assert {:id "id1504"} {:subsumption 0} Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
      Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))));
    assume {:id "id1505"} pos#0 == LitInt(0)
       && Seq#Equal($Unbox(read($Heap, t#0, SnapTree.Tree.Contents)): Seq, 
        Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))));
}



procedure {:verboseName "SnapTreeTestHarness.TestConcurrentModification (well-formedness)"} CheckWellFormed$$SnapTreeTestHarness.__default.TestConcurrentModification(t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTreeTestHarness.TestConcurrentModification (well-formedness)"} CheckWellFormed$$SnapTreeTestHarness.__default.TestConcurrentModification(t#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: TestConcurrentModification, CheckWellFormed$$SnapTreeTestHarness.__default.TestConcurrentModification
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
    assert {:id "id1506"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.SnapTree.Tree?(), $Heap);
    assume SnapTree.Tree.Valid#canCall($Heap, t#0);
    assume {:id "id1507"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
    assert {:id "id1508"} t#0 != null;
    assume {:id "id1509"} !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool;
    assert {:id "id1510"} t#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "SnapTreeTestHarness.TestConcurrentModification (call)"} Call$$SnapTreeTestHarness.__default.TestConcurrentModification(t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id1511"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
  requires {:id "id1512"} !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTreeTestHarness.TestConcurrentModification (correctness)"} Impl$$SnapTreeTestHarness.__default.TestConcurrentModification(t#0: ref
       where $Is(t#0, Tclass.SnapTree.Tree()) && $IsAlloc(t#0, Tclass.SnapTree.Tree(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1513"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, t#0);
  requires {:id "id1514"} !$Unbox(read($Heap, t#0, SnapTree.Tree.IsReadonly)): bool;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SnapTreeTestHarness.TestConcurrentModification (correctness)"} Impl$$SnapTreeTestHarness.__default.TestConcurrentModification(t#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#it#0: bool;
  var it#0: ref
     where defass#it#0
       ==> $Is(it#0, Tclass.SnapTree.Iterator())
         && $IsAlloc(it#0, Tclass.SnapTree.Iterator(), $Heap);
  var $rhs##0: ref;
  var more#0: bool;
  var $rhs##1: bool;
  var pos#0_0: int;
  var $rhs##0_0: int;
  var x##0_0: int;
  var $rhs##0_1: bool;

    // AddMethodImpl: TestConcurrentModification, Impl$$SnapTreeTestHarness.__default.TestConcurrentModification
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(68,31)
    assume true;
    // TrCallStmt: Adding lhs with type Iterator
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id1515"} t#0 != null;
    call {:id "id1516"} $rhs##0 := Call$$SnapTree.Tree.CreateIterator(t#0);
    // TrCallStmt: After ProcessCallStmt
    it#0 := $rhs##0;
    defass#it#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(69,28)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1518"} defass#it#0;
    assume true;
    assert {:id "id1519"} it#0 != null;
    assert {:id "id1520"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1521"} $rhs##1 := Call$$SnapTree.Iterator.MoveNext(it#0);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(70,5)
    assume true;
    if (more#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(71,26)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1523"} t#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := LitInt(52);
        assert {:id "id1524"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, t#0, SnapTree.Tree.MutableRepr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1525"} $rhs##0_0 := Call$$SnapTree.Tree.Insert(t#0, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        pos#0_0 := $rhs##0_0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/SnapshotableTrees.dfy(72,26)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id1527"} defass#it#0;
        assume true;
        assert {:id "id1528"} it#0 != null;
        assert {:id "id1529"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, it#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1530"} $rhs##0_1 := Call$$SnapTree.Iterator.MoveNext(it#0);
        // TrCallStmt: After ProcessCallStmt
        more#0 := $rhs##0_1;
    }
    else
    {
    }
}



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
axiom (forall a#4#0#0: ref, a#4#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#SnapTree.List.Cons(a#4#0#0, a#4#1#0)) == ##SnapTree.List.Cons);
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
     ==> (exists a#5#0#0: ref, a#5#1#0: DatatypeType :: 
      d == #SnapTree.List.Cons(a#5#0#0, a#5#1#0)));

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
axiom (forall a#6#0#0: ref, a#6#1#0: DatatypeType :: 
  { $Is(#SnapTree.List.Cons(a#6#0#0, a#6#1#0), Tclass.SnapTree.List()) } 
  $Is(#SnapTree.List.Cons(a#6#0#0, a#6#1#0), Tclass.SnapTree.List())
     <==> $Is(a#6#0#0, Tclass.SnapTree.Node()) && $Is(a#6#1#0, Tclass.SnapTree.List()));

// Constructor $IsAlloc
axiom (forall a#6#0#0: ref, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#SnapTree.List.Cons(a#6#0#0, a#6#1#0), Tclass.SnapTree.List(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#SnapTree.List.Cons(a#6#0#0, a#6#1#0), Tclass.SnapTree.List(), $h)
       <==> $IsAlloc(a#6#0#0, Tclass.SnapTree.Node(), $h)
         && $IsAlloc(a#6#1#0, Tclass.SnapTree.List(), $h)));

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
axiom (forall a#7#0#0: ref, a#7#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #SnapTree.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#SnapTree.List.Cons(a#7#0#0, a#7#1#0)));

function SnapTree.List._h0(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#8#0#0: ref, a#8#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#8#0#0, a#8#1#0) } 
  SnapTree.List._h0(#SnapTree.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

function SnapTree.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: ref, a#9#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#9#0#0, a#9#1#0) } 
  SnapTree.List._h1(#SnapTree.List.Cons(a#9#0#0, a#9#1#0)) == a#9#1#0);

// Inductive rank
axiom (forall a#10#0#0: ref, a#10#1#0: DatatypeType :: 
  { #SnapTree.List.Cons(a#10#0#0, a#10#1#0) } 
  DtRank(a#10#1#0) < DtRank(#SnapTree.List.Cons(a#10#0#0, a#10#1#0)));

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
function SnapTree.Tree.Valid($reveal: bool, $heap: Heap, this: ref) : bool;

function SnapTree.Tree.Valid#canCall($heap: Heap, this: ref) : bool;

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

// consequence axiom for SnapTree.Tree.Valid
axiom (forall $reveal: bool, $Heap: Heap, this: ref :: 
  { SnapTree.Tree.Valid($reveal, $Heap, this) } 
  SnapTree.Tree.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
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

// definition axiom for SnapTree.Tree.Valid (revealed)
axiom {:id "id1532"} (forall $Heap: Heap, this: ref :: 
  { SnapTree.Tree.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
  SnapTree.Tree.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
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

// function declaration for SnapTree.Tree.IsSorted
function SnapTree.Tree.IsSorted($reveal: bool, c#0: Seq) : bool;

function SnapTree.Tree.IsSorted#canCall(c#0: Seq) : bool;

function SnapTree.Tree.IsSorted#requires(Seq) : bool;

// #requires axiom for SnapTree.Tree.IsSorted
axiom (forall c#0: Seq :: 
  { SnapTree.Tree.IsSorted#requires(c#0) } 
  $Is(c#0, TSeq(TInt)) ==> SnapTree.Tree.IsSorted#requires(c#0) == true);

// definition axiom for SnapTree.Tree.IsSorted (revealed)
axiom {:id "id1533"} (forall c#0: Seq :: 
  { SnapTree.Tree.IsSorted(true, c#0) } 
  SnapTree.Tree.IsSorted#canCall(c#0) || $Is(c#0, TSeq(TInt))
     ==> SnapTree.Tree.IsSorted(true, c#0)
       == (forall i#4: int, j#4: int :: 
        { $Unbox(Seq#Index(c#0, j#4)): int, $Unbox(Seq#Index(c#0, i#4)): int } 
        LitInt(0) <= i#4 && i#4 < j#4 && j#4 < Seq#Length(c#0)
           ==> $Unbox(Seq#Index(c#0, i#4)): int < $Unbox(Seq#Index(c#0, j#4)): int));

// definition axiom for SnapTree.Tree.IsSorted for all literals (revealed)
axiom {:id "id1534"} (forall c#0: Seq :: 
  {:weight 3} { SnapTree.Tree.IsSorted(true, Lit(c#0)) } 
  SnapTree.Tree.IsSorted#canCall(Lit(c#0)) || $Is(c#0, TSeq(TInt))
     ==> SnapTree.Tree.IsSorted(true, Lit(c#0))
       == (forall i#5: int, j#5: int :: 
        { $Unbox(Seq#Index(c#0, j#5)): int, $Unbox(Seq#Index(c#0, i#5)): int } 
        LitInt(0) <= i#5 && i#5 < j#5 && j#5 < Seq#Length(Lit(c#0))
           ==> $Unbox(Seq#Index(Lit(c#0), i#5)): int < $Unbox(Seq#Index(Lit(c#0), j#5)): int));

procedure {:verboseName "SnapTree.Tree.IsSortedProperty (well-formedness)"} CheckWellFormed$$SnapTree.Tree.IsSortedProperty(c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.IsSortedProperty (call)"} Call$$SnapTree.Tree.IsSortedProperty(c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.IsSorted#canCall(c#0);
  ensures {:id "id1535"} SnapTree.Tree.IsSorted(reveal_SnapTree.Tree.IsSorted, c#0)
     <==> (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(c#0, j#1)): int, $Unbox(Seq#Index(c#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(c#0)
         ==> $Unbox(Seq#Index(c#0, i#1)): int < $Unbox(Seq#Index(c#0, j#1)): int);
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for SnapTree.Tree.AllBelow
function SnapTree.Tree.AllBelow(s#0: Seq, d#0: int) : bool;

function SnapTree.Tree.AllBelow#canCall(s#0: Seq, d#0: int) : bool;

function SnapTree.Tree.AllBelow#requires(Seq, int) : bool;

// #requires axiom for SnapTree.Tree.AllBelow
axiom (forall s#0: Seq, d#0: int :: 
  { SnapTree.Tree.AllBelow#requires(s#0, d#0) } 
  $Is(s#0, TSeq(TInt)) ==> SnapTree.Tree.AllBelow#requires(s#0, d#0) == true);

// definition axiom for SnapTree.Tree.AllBelow (revealed)
axiom {:id "id1536"} (forall s#0: Seq, d#0: int :: 
  { SnapTree.Tree.AllBelow(s#0, d#0) } 
  SnapTree.Tree.AllBelow#canCall(s#0, d#0) || $Is(s#0, TSeq(TInt))
     ==> SnapTree.Tree.AllBelow(s#0, d#0)
       == (forall i#4: int :: 
        { $Unbox(Seq#Index(s#0, i#4)): int } 
        LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#4)): int < d#0));

// definition axiom for SnapTree.Tree.AllBelow for all literals (revealed)
axiom {:id "id1537"} (forall s#0: Seq, d#0: int :: 
  {:weight 3} { SnapTree.Tree.AllBelow(Lit(s#0), LitInt(d#0)) } 
  SnapTree.Tree.AllBelow#canCall(Lit(s#0), LitInt(d#0)) || $Is(s#0, TSeq(TInt))
     ==> SnapTree.Tree.AllBelow(Lit(s#0), LitInt(d#0))
       == (forall i#5: int :: 
        { $Unbox(Seq#Index(s#0, i#5)): int } 
        LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
           ==> $Unbox(Seq#Index(Lit(s#0), i#5)): int < d#0));

// function declaration for SnapTree.Tree.AllAbove
function SnapTree.Tree.AllAbove(d#0: int, s#0: Seq) : bool;

function SnapTree.Tree.AllAbove#canCall(d#0: int, s#0: Seq) : bool;

function SnapTree.Tree.AllAbove#requires(int, Seq) : bool;

// #requires axiom for SnapTree.Tree.AllAbove
axiom (forall d#0: int, s#0: Seq :: 
  { SnapTree.Tree.AllAbove#requires(d#0, s#0) } 
  $Is(s#0, TSeq(TInt)) ==> SnapTree.Tree.AllAbove#requires(d#0, s#0) == true);

// definition axiom for SnapTree.Tree.AllAbove (revealed)
axiom {:id "id1538"} (forall d#0: int, s#0: Seq :: 
  { SnapTree.Tree.AllAbove(d#0, s#0) } 
  SnapTree.Tree.AllAbove#canCall(d#0, s#0) || $Is(s#0, TSeq(TInt))
     ==> SnapTree.Tree.AllAbove(d#0, s#0)
       == (forall i#4: int :: 
        { $Unbox(Seq#Index(s#0, i#4)): int } 
        LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
           ==> d#0 < $Unbox(Seq#Index(s#0, i#4)): int));

// definition axiom for SnapTree.Tree.AllAbove for all literals (revealed)
axiom {:id "id1539"} (forall d#0: int, s#0: Seq :: 
  {:weight 3} { SnapTree.Tree.AllAbove(LitInt(d#0), Lit(s#0)) } 
  SnapTree.Tree.AllAbove#canCall(LitInt(d#0), Lit(s#0)) || $Is(s#0, TSeq(TInt))
     ==> SnapTree.Tree.AllAbove(LitInt(d#0), Lit(s#0))
       == (forall i#5: int :: 
        { $Unbox(Seq#Index(s#0, i#5)): int } 
        LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
           ==> d#0 < $Unbox(Seq#Index(Lit(s#0), i#5)): int));

// function declaration for SnapTree.Tree.SortedSplit
function SnapTree.Tree.SortedSplit(left#0: Seq, data#0: int, right#0: Seq) : bool;

function SnapTree.Tree.SortedSplit#canCall(left#0: Seq, data#0: int, right#0: Seq) : bool;

function SnapTree.Tree.SortedSplit#requires(Seq, int, Seq) : bool;

// #requires axiom for SnapTree.Tree.SortedSplit
axiom (forall left#0: Seq, data#0: int, right#0: Seq :: 
  { SnapTree.Tree.SortedSplit#requires(left#0, data#0, right#0) } 
  $Is(left#0, TSeq(TInt)) && $Is(right#0, TSeq(TInt))
     ==> SnapTree.Tree.SortedSplit#requires(left#0, data#0, right#0) == true);

// definition axiom for SnapTree.Tree.SortedSplit (revealed)
axiom {:id "id1540"} (forall left#0: Seq, data#0: int, right#0: Seq :: 
  { SnapTree.Tree.SortedSplit(left#0, data#0, right#0) } 
  SnapTree.Tree.SortedSplit#canCall(left#0, data#0, right#0)
       || ($Is(left#0, TSeq(TInt)) && $Is(right#0, TSeq(TInt)))
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
axiom {:id "id1541"} (forall left#0: Seq, data#0: int, right#0: Seq :: 
  {:weight 3} { SnapTree.Tree.SortedSplit(Lit(left#0), LitInt(data#0), Lit(right#0)) } 
  SnapTree.Tree.SortedSplit#canCall(Lit(left#0), LitInt(data#0), Lit(right#0))
       || ($Is(left#0, TSeq(TInt)) && $Is(right#0, TSeq(TInt)))
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
  ensures {:id "id1542"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id1543"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, Seq#Empty(): Seq);
  ensures {:id "id1544"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id1545"} Set#Subset($Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set, 
    $Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set);
  ensures {:id "id1546"} (forall $o: ref :: 
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



procedure {:verboseName "SnapTree.Tree.CreateSnapshot (call)"} Call$$SnapTree.Tree.CreateSnapshot(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (snapshot#0: ref
       where $Is(snapshot#0, Tclass.SnapTree.Tree())
         && $IsAlloc(snapshot#0, Tclass.SnapTree.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id1547"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id1548"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id1549"} (forall $o: ref :: 
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
  ensures {:id "id1550"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1551"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  free ensures SnapTree.Tree.Valid#canCall($Heap, snapshot#0);
  ensures {:id "id1552"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, snapshot#0);
  free ensures true;
  ensures {:id "id1553"} Seq#Equal($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1554"} $Unbox(read($Heap, snapshot#0, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id1555"} Set#Disjoint($Unbox(read($Heap, snapshot#0, SnapTree.Tree.Repr)): Set, 
    $Unbox(read($Heap, this, SnapTree.Tree.MutableRepr)): Set);
  free ensures true;
  ensures {:id "id1556"} (forall $o: ref :: 
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



procedure {:verboseName "SnapTree.Tree.Insert (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.Insert (call)"} Call$$SnapTree.Tree.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap), 
    x#0: int)
   returns (pos#0: int);
  // user-defined preconditions
  requires {:id "id1557"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  requires {:id "id1558"} !$Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id1559"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id1560"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Tree.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id1561"} (forall $o: ref :: 
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
  ensures {:id "id1562"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  free ensures true;
  ensures {:id "id1563"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> pos#0 < 0;
  ensures {:id "id1564"} Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
      $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  free ensures true;
  ensures {:id "id1565"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> LitInt(0) <= pos#0;
  ensures {:id "id1566"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> pos#0 < Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1567"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
     ==> Seq#Length($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq) + 1;
  ensures {:id "id1568"} !Seq#Contains($Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq, $Box(x#0))
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



procedure {:verboseName "SnapTree.Tree.CreateIterator (call)"} Call$$SnapTree.Tree.CreateIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap))
   returns (iter#0: ref
       where $Is(iter#0, Tclass.SnapTree.Iterator())
         && $IsAlloc(iter#0, Tclass.SnapTree.Iterator(), $Heap));
  // user-defined preconditions
  requires {:id "id1569"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, iter#0);
  ensures {:id "id1570"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, iter#0);
  ensures {:id "id1571"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, iter#0, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1572"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.T)): ref == this;
  ensures {:id "id1573"} Seq#Equal($Unbox(read($Heap, iter#0, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1574"} $Unbox(read($Heap, iter#0, SnapTree.Iterator.N)): int == LitInt(-1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Tree.Print (well-formedness)"} CheckWellFormed$$SnapTree.Tree.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Tree.Print (call)"} Call$$SnapTree.Tree.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Tree())
         && $IsAlloc(this, Tclass.SnapTree.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id1575"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Tree.Valid#canCall($Heap, this);
  ensures {:id "id1576"} SnapTree.Tree.Valid(reveal_SnapTree.Tree.Valid, $Heap, this);
  ensures {:id "id1577"} (forall $o: ref :: 
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
  ensures {:id "id1578"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Tree.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Tree.Contents)): Seq);
  ensures {:id "id1579"} $Unbox(read($Heap, this, SnapTree.Tree.IsReadonly)): bool
     == $Unbox(read(old($Heap), this, SnapTree.Tree.IsReadonly)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Tree.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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
function SnapTree.Node.NodeValid($ly: LayerType, $reveal: bool, $heap: Heap, this: ref) : bool;

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

// consequence axiom for SnapTree.Node.NodeValid
axiom (forall $ly: LayerType, $reveal: bool, $Heap: Heap, this: ref :: 
  { SnapTree.Node.NodeValid($ly, $reveal, $Heap, this) } 
  SnapTree.Node.NodeValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
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

// definition axiom for SnapTree.Node.NodeValid (revealed)
axiom {:id "id1580"} (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { SnapTree.Node.NodeValid($LS($ly), true, $Heap, this), $IsGoodHeap($Heap) } 
  SnapTree.Node.NodeValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
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

// function declaration for SnapTree.Node.SortedSplit
function SnapTree.Node.SortedSplit($heap: Heap, left#0: ref, data#0: int, right#0: ref) : bool;

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

// definition axiom for SnapTree.Node.SortedSplit (revealed)
axiom {:id "id1581"} (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { SnapTree.Node.SortedSplit($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
  SnapTree.Node.SortedSplit#canCall($Heap, left#0, data#0, right#0)
       || (
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

// function declaration for SnapTree.Node.CombineSplit
function SnapTree.Node.CombineSplit($heap: Heap, left#0: ref, data#0: int, right#0: ref) : Seq;

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

// consequence axiom for SnapTree.Node.CombineSplit
axiom (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0) } 
  SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(left#0, Tclass.SnapTree.Node?())
         && $IsAlloc(left#0, Tclass.SnapTree.Node?(), $Heap)
         && 
        $Is(right#0, Tclass.SnapTree.Node?())
         && $IsAlloc(right#0, Tclass.SnapTree.Node?(), $Heap))
     ==> $Is(SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), TSeq(TInt)));

function SnapTree.Node.CombineSplit#requires(Heap, ref, int, ref) : bool;

// #requires axiom for SnapTree.Node.CombineSplit
axiom (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { SnapTree.Node.CombineSplit#requires($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(left#0, Tclass.SnapTree.Node?())
       && $Is(right#0, Tclass.SnapTree.Node?())
     ==> SnapTree.Node.CombineSplit#requires($Heap, left#0, data#0, right#0) == true);

// definition axiom for SnapTree.Node.CombineSplit (revealed)
axiom {:id "id1582"} (forall $Heap: Heap, left#0: ref, data#0: int, right#0: ref :: 
  { SnapTree.Node.CombineSplit($Heap, left#0, data#0, right#0), $IsGoodHeap($Heap) } 
  SnapTree.Node.CombineSplit#canCall($Heap, left#0, data#0, right#0)
       || (
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
function SnapTree.Iterator.Valid($reveal: bool, $heap: Heap, this: ref) : bool;

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

// consequence axiom for SnapTree.Iterator.Valid
axiom (forall $reveal: bool, $Heap: Heap, this: ref :: 
  { SnapTree.Iterator.Valid($reveal, $Heap, this) } 
  SnapTree.Iterator.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
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

// definition axiom for SnapTree.Iterator.Valid (revealed)
axiom {:id "id1583"} (forall $Heap: Heap, this: ref :: 
  { SnapTree.Iterator.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
  SnapTree.Iterator.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
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

// function declaration for SnapTree.Iterator.R
function SnapTree.Iterator.R($ly: LayerType, 
    $reveal: bool, 
    $heap: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set)
   : bool;

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

// definition axiom for SnapTree.Iterator.R (revealed)
axiom {:id "id1584"} (forall $ly: LayerType, 
    $Heap: Heap, 
    wlist#0: DatatypeType, 
    n#0: int, 
    C#0: Seq, 
    Nodes#0: Set :: 
  { SnapTree.Iterator.R($LS($ly), true, $Heap, wlist#0, n#0, C#0, Nodes#0), $IsGoodHeap($Heap) } 
  SnapTree.Iterator.R#canCall($Heap, wlist#0, n#0, C#0, Nodes#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(wlist#0, Tclass.SnapTree.List())
         && $Is(C#0, TSeq(TInt))
         && $Is(Nodes#0, TSet(Tclass._System.object())))
     ==> (!SnapTree.List.Nil_q(wlist#0)
         ==> (var rest#3 := SnapTree.List._h1(wlist#0); 
          (var p#3 := SnapTree.List._h0(wlist#0); 
            Set#IsMember(Nodes#0, $Box(p#3))
               ==> 
              Set#Subset($Unbox(read($Heap, p#3, SnapTree.Node.Repr)): Set, Nodes#0)
               ==> SnapTree.Node.NodeValid#canCall($Heap, p#3)
                 && (SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#3)
                   ==> 
                  LitInt(0) <= n#0
                   ==> 
                  n#0 < Seq#Length(C#0)
                   ==> 
                  $Unbox(read($Heap, p#3, SnapTree.Node.data)): int
                     == $Unbox(Seq#Index(C#0, n#0)): int
                   ==> SnapTree.Iterator.R#canCall($Heap, 
                    rest#3, 
                    n#0
                       + 1
                       + (if $Unbox(read($Heap, p#3, SnapTree.Node.right)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, 
                              $Unbox(read($Heap, p#3, SnapTree.Node.right)): ref, 
                              SnapTree.Node.Contents)): Seq)), 
                    C#0, 
                    Nodes#0)))))
       && SnapTree.Iterator.R($LS($ly), true, $Heap, wlist#0, n#0, C#0, Nodes#0)
         == (if SnapTree.List.Nil_q(wlist#0)
           then n#0 == Seq#Length(C#0)
           else (var rest#2 := SnapTree.List._h1(wlist#0); 
            (var p#2 := SnapTree.List._h0(wlist#0); 
              Set#IsMember(Nodes#0, $Box(p#2))
                 && Set#Subset($Unbox(read($Heap, p#2, SnapTree.Node.Repr)): Set, Nodes#0)
                 && SnapTree.Node.NodeValid($LS($LZ), reveal_SnapTree.Node.NodeValid, $Heap, p#2)
                 && 
                LitInt(0) <= n#0
                 && n#0 < Seq#Length(C#0)
                 && $Unbox(read($Heap, p#2, SnapTree.Node.data)): int
                   == $Unbox(Seq#Index(C#0, n#0)): int
                 && 
                SnapTree.Iterator.R($ly, 
                  reveal_SnapTree.Iterator.R, 
                  $Heap, 
                  rest#2, 
                  n#0
                     + 1
                     + (if $Unbox(read($Heap, p#2, SnapTree.Node.right)): ref == null
                       then 0
                       else Seq#Length($Unbox(read($Heap, 
                            $Unbox(read($Heap, p#2, SnapTree.Node.right)): ref, 
                            SnapTree.Node.Contents)): Seq)), 
                  C#0, 
                  Nodes#0)
                 && 
                Seq#Length(Seq#Drop($Unbox(read($Heap, p#2, SnapTree.Node.Contents)): Seq, 
                      (if $Unbox(read($Heap, p#2, SnapTree.Node.left)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, p#2, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq))))
                   <= Seq#Length(Seq#Drop(C#0, n#0))
                 && Seq#SameUntil(Seq#Drop($Unbox(read($Heap, p#2, SnapTree.Node.Contents)): Seq, 
                    (if $Unbox(read($Heap, p#2, SnapTree.Node.left)): ref == null
                       then 0
                       else Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, p#2, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq))), 
                  Seq#Drop(C#0, n#0), 
                  Seq#Length(Seq#Drop($Unbox(read($Heap, p#2, SnapTree.Node.Contents)): Seq, 
                      (if $Unbox(read($Heap, p#2, SnapTree.Node.left)): ref == null
                         then 0
                         else Seq#Length($Unbox(read($Heap, $Unbox(read($Heap, p#2, SnapTree.Node.left)): ref, SnapTree.Node.Contents)): Seq)))))))));

procedure {:verboseName "SnapTree.Iterator.Current (well-formedness)"} CheckWellFormed$$SnapTree.Iterator.Current(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (x#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Iterator.Current (call)"} Call$$SnapTree.Iterator.Current(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (x#0: int);
  // user-defined preconditions
  requires {:id "id1585"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  requires {:id "id1586"} LitInt(0) <= $Unbox(read($Heap, this, SnapTree.Iterator.N)): int;
  requires {:id "id1587"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
     < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1588"} x#0
     == $Unbox(Seq#Index($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
        $Unbox(read($Heap, this, SnapTree.Iterator.N)): int)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SnapTree.Iterator.MoveNext (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$SnapTree.Iterator.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (hasCurrent#0: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SnapTree.Iterator.MoveNext (call)"} {:vcs_split_on_every_assert} Call$$SnapTree.Iterator.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass.SnapTree.Iterator())
         && $IsAlloc(this, Tclass.SnapTree.Iterator(), $Heap))
   returns (hasCurrent#0: bool);
  // user-defined preconditions
  requires {:id "id1589"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  requires {:id "id1590"} $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
     <= Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures SnapTree.Iterator.Valid#canCall($Heap, this);
  ensures {:id "id1591"} SnapTree.Iterator.Valid(reveal_SnapTree.Iterator.Valid, $Heap, this);
  ensures {:id "id1592"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, SnapTree.Iterator.IterRepr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id1593"} Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref, SnapTree.Tree.Repr)): Set, 
    $Unbox(read(old($Heap), 
        $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref, 
        SnapTree.Tree.Repr)): Set);
  free ensures true;
  ensures {:id "id1594"} Seq#Equal($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq, 
    $Unbox(read(old($Heap), this, SnapTree.Iterator.Contents)): Seq);
  ensures {:id "id1595"} $Unbox(read($Heap, this, SnapTree.Iterator.T)): ref
     == $Unbox(read(old($Heap), this, SnapTree.Iterator.T)): ref;
  free ensures true;
  ensures {:id "id1596"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
       < Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int + 1;
  free ensures true;
  ensures {:id "id1597"} $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int
       == Seq#Length($Unbox(read($Heap, this, SnapTree.Iterator.Contents)): Seq)
     ==> $Unbox(read($Heap, this, SnapTree.Iterator.N)): int
       == $Unbox(read(old($Heap), this, SnapTree.Iterator.N)): int;
  free ensures true;
  ensures {:id "id1598"} hasCurrent#0
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

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$Iterator: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique field$MutableRepr: NameFamily;

const unique field$Repr: NameFamily;

const unique field$Contents: NameFamily;

const unique field$IterRepr: NameFamily;

const unique field$N: NameFamily;

const unique field$IsReadonly: NameFamily;

const unique field$T: NameFamily;

const unique field$root: NameFamily;

const unique field$reprIsShared: NameFamily;

const unique field$data: NameFamily;

const unique field$left: NameFamily;

const unique field$right: NameFamily;

const unique field$initialized: NameFamily;

const unique field$stack: NameFamily;
