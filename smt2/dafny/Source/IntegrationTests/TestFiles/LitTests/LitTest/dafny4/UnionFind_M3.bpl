// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy

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

const unique class.M3.__default: ClassName;

// function declaration for M3._default.GoodCMap
function M3.__default.GoodCMap(C#0: Map) : bool
uses {
// definition axiom for M3.__default.GoodCMap (revealed)
axiom {:id "id1119"} 3 <= $FunctionContextHeight
   ==> (forall C#0: Map :: 
    { M3.__default.GoodCMap(C#0) } 
    M3.__default.GoodCMap#canCall(C#0)
         || (3 < $FunctionContextHeight
           && $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents())))
       ==> M3.__default.GoodCMap(C#0)
         == (forall f#0: ref :: 
          { $Unbox(Map#Elements(C#0)[$Box(f#0)]): DatatypeType } 
          $Is(f#0, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(C#0), $Box(f#0))
               && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#0)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(C#0), 
              $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#0)]): DatatypeType)))));
// definition axiom for M3.__default.GoodCMap for all literals (revealed)
axiom {:id "id1120"} 3 <= $FunctionContextHeight
   ==> (forall C#0: Map :: 
    {:weight 3} { M3.__default.GoodCMap(Lit(C#0)) } 
    M3.__default.GoodCMap#canCall(Lit(C#0))
         || (3 < $FunctionContextHeight
           && $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents())))
       ==> M3.__default.GoodCMap(Lit(C#0))
         == (forall f#1: ref :: 
          { $Unbox(Map#Elements(C#0)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(C#0), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(Lit(C#0))[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(C#0), 
              $Box(M3.Contents.next($Unbox(Map#Elements(Lit(C#0))[$Box(f#1)]): DatatypeType)))));
}

function M3.__default.GoodCMap#canCall(C#0: Map) : bool;

function Tclass.M3.Element() : Ty
uses {
// Tclass.M3.Element Tag
axiom Tag(Tclass.M3.Element()) == Tagclass.M3.Element
   && TagFamily(Tclass.M3.Element()) == tytagFamily$Element;
}

const unique Tagclass.M3.Element: TyTag;

// Box/unbox axiom for Tclass.M3.Element
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.Element()) } 
  $IsBox(bx, Tclass.M3.Element())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M3.Element()));

function Tclass.M3.Contents() : Ty
uses {
// Tclass.M3.Contents Tag
axiom Tag(Tclass.M3.Contents()) == Tagclass.M3.Contents
   && TagFamily(Tclass.M3.Contents()) == tytagFamily$Contents;
}

const unique Tagclass.M3.Contents: TyTag;

// Box/unbox axiom for Tclass.M3.Contents
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.Contents()) } 
  $IsBox(bx, Tclass.M3.Contents())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M3.Contents()));

function M3.__default.GoodCMap#requires(Map) : bool;

// #requires axiom for M3.__default.GoodCMap
axiom (forall C#0: Map :: 
  { M3.__default.GoodCMap#requires(C#0) } 
  $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
     ==> M3.__default.GoodCMap#requires(C#0) == true);

function Tclass.M3.Element?() : Ty
uses {
// Tclass.M3.Element? Tag
axiom Tag(Tclass.M3.Element?()) == Tagclass.M3.Element?
   && TagFamily(Tclass.M3.Element?()) == tytagFamily$Element;
}

const unique Tagclass.M3.Element?: TyTag;

// Box/unbox axiom for Tclass.M3.Element?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.Element?()) } 
  $IsBox(bx, Tclass.M3.Element?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M3.Element?()));

procedure {:verboseName "M3.GoodCMap (well-formedness)"} CheckWellformed$$M3.__default.GoodCMap(C#0: Map where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.MapsEqual (well-formedness)"} CheckWellFormed$$M3.__default.MapsEqual(M3._default.MapsEqual$D: Ty, 
    m#0: Map
       where $Is(m#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D))
         && $IsAlloc(m#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D))
         && $IsAlloc(n#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.MapsEqual (call)"} Call$$M3.__default.MapsEqual(M3._default.MapsEqual$D: Ty, 
    m#0: Map
       where $Is(m#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D))
         && $IsAlloc(m#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D))
         && $IsAlloc(n#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D), $Heap));
  // user-defined preconditions
  requires {:id "id1134"} (forall d#1: Box :: 
    { Set#IsMember(Map#Domain(n#0), d#1) } { Set#IsMember(Map#Domain(m#0), d#1) } 
    $IsBox(d#1, M3._default.MapsEqual$D)
         && $IsAllocBox(d#1, M3._default.MapsEqual$D, $Heap)
       ==> (Set#IsMember(Map#Domain(m#0), d#1) <==> Set#IsMember(Map#Domain(n#0), d#1)));
  requires {:id "id1135"} (forall d#3: Box :: 
    { Map#Elements(n#0)[d#3] } 
      { Map#Elements(m#0)[d#3] } 
      { Set#IsMember(Map#Domain(m#0), d#3) } 
    $IsBox(d#3, M3._default.MapsEqual$D)
       ==> 
      Set#IsMember(Map#Domain(m#0), d#3)
       ==> Map#Elements(m#0)[d#3] == Map#Elements(n#0)[d#3]);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1136"} Map#Equal(m#0, n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.MapsEqual (correctness)"} Impl$$M3.__default.MapsEqual(M3._default.MapsEqual$D: Ty, 
    m#0: Map
       where $Is(m#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D))
         && $IsAlloc(m#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D))
         && $IsAlloc(n#0, TMap(M3._default.MapsEqual$D, M3._default.MapsEqual$D), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1137"} (forall d#1: Box :: 
    { Set#IsMember(Map#Domain(n#0), d#1) } { Set#IsMember(Map#Domain(m#0), d#1) } 
    $IsBox(d#1, M3._default.MapsEqual$D)
         && $IsAllocBox(d#1, M3._default.MapsEqual$D, $Heap)
       ==> (Set#IsMember(Map#Domain(m#0), d#1) <==> Set#IsMember(Map#Domain(n#0), d#1)));
  requires {:id "id1138"} (forall d#3: Box :: 
    { Map#Elements(n#0)[d#3] } 
      { Map#Elements(m#0)[d#3] } 
      { Set#IsMember(Map#Domain(m#0), d#3) } 
    $IsBox(d#3, M3._default.MapsEqual$D)
       ==> 
      Set#IsMember(Map#Domain(m#0), d#3)
       ==> Map#Elements(m#0)[d#3] == Map#Elements(n#0)[d#3]);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1139"} $_reverifyPost ==> Map#Equal(m#0, n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.MapsEqual (correctness)"} Impl$$M3.__default.MapsEqual(M3._default.MapsEqual$D: Ty, m#0: Map, n#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MapsEqual, Impl$$M3.__default.MapsEqual
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



const unique class.M3.UnionFind?: ClassName;

function Tclass.M3.UnionFind?() : Ty
uses {
// Tclass.M3.UnionFind? Tag
axiom Tag(Tclass.M3.UnionFind?()) == Tagclass.M3.UnionFind?
   && TagFamily(Tclass.M3.UnionFind?()) == tytagFamily$UnionFind;
}

const unique Tagclass.M3.UnionFind?: TyTag;

// Box/unbox axiom for Tclass.M3.UnionFind?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.UnionFind?()) } 
  $IsBox(bx, Tclass.M3.UnionFind?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M3.UnionFind?()));

// $Is axiom for class UnionFind
axiom (forall $o: ref :: 
  { $Is($o, Tclass.M3.UnionFind?()) } 
  $Is($o, Tclass.M3.UnionFind?())
     <==> $o == null || dtype($o) == Tclass.M3.UnionFind?());

// $IsAlloc axiom for class UnionFind
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.M3.UnionFind?(), $h) } 
  $IsAlloc($o, Tclass.M3.UnionFind?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.M3.UnionFind() : Ty
uses {
// Tclass.M3.UnionFind Tag
axiom Tag(Tclass.M3.UnionFind()) == Tagclass.M3.UnionFind
   && TagFamily(Tclass.M3.UnionFind()) == tytagFamily$UnionFind;
}

const unique Tagclass.M3.UnionFind: TyTag;

// Box/unbox axiom for Tclass.M3.UnionFind
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.UnionFind()) } 
  $IsBox(bx, Tclass.M3.UnionFind())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M3.UnionFind()));

procedure {:verboseName "M3.UnionFind.Join (well-formedness)"} CheckWellFormed$$M3.UnionFind.Join(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.Join (well-formedness)"} CheckWellFormed$$M3.UnionFind.Join(this: ref, r0#0: ref, r1#0: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e#0: ref;


    // AddMethodImpl: Join, CheckWellFormed$$M3.UnionFind.Join
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume M3.UnionFind.Valid#canCall($Heap, this);
    assume {:id "id1140"} M3.UnionFind.Valid($Heap, this);
    assume {:id "id1141"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r0#0));
    assume {:id "id1142"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r1#0));
    assume {:id "id1143"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r0#0));
    assume {:id "id1144"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(r0#0)]): ref
       == r0#0;
    assume {:id "id1145"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r1#0));
    assume {:id "id1146"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(r1#0)]): ref
       == r1#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume M3.UnionFind.Valid#canCall($Heap, this);
    assume {:id "id1147"} M3.UnionFind.Valid($Heap, this);
    assert {:id "id1148"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
    assume {:id "id1149"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assume {:id "id1150"} r#0 == r0#0;
    }
    else
    {
        assume {:id "id1151"} r#0 != r0#0;
        assume {:id "id1152"} r#0 == r1#0;
    }

    // Begin Comprehension WF check
    havoc e#0;
    if ($Is(e#0, Tclass.M3.Element?()) && $IsAlloc(e#0, Tclass.M3.Element?(), $Heap))
    {
        assert {:id "id1153"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#0)))
        {
            assert {:id "id1154"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
            assert {:id "id1155"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#0));
            if ($Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
               != r0#0)
            {
                assert {:id "id1156"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                assert {:id "id1157"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#0));
            }

            if ($Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
                 == r0#0
               || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
                 == r1#0)
            {
            }
            else
            {
                assert {:id "id1158"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                assert {:id "id1159"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#0));
            }
        }
    }

    // End Comprehension WF check
    assume {:id "id1160"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
      Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
            $IsBox($w#0, Tclass.M3.Element?())
               && Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $w#0))), 
        (lambda $w#0: Box :: 
          $Box((if $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#0]): ref
                   == r0#0
                 || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#0]): ref
                   == r1#0
               then r#0
               else $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#0]): ref))), 
        TMap(Tclass.M3.Element?(), Tclass.M3.Element?())));
}



procedure {:verboseName "M3.UnionFind.Join (call)"} Call$$M3.UnionFind.Join(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  // user-defined preconditions
  requires {:id "id1161"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  requires {:id "id1162"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  requires {:id "id1163"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  requires {:id "id1164"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#1: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref } 
            $Is(e#1, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)])));
  requires {:id "id1165"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#2: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2)) } 
            $Is(e#2, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]): ref));
  requires {:id "id1166"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#3: ref :: 
            { $Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType } 
            $Is(e#3, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)))));
  requires {:id "id1167"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4)) } 
            $Is(e#4, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#4, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  requires {:id "id1168"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r0#0));
  requires {:id "id1169"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r1#0));
  requires {:id "id1170"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(r0#0)]): ref
     == r0#0;
  requires {:id "id1171"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(r1#0)]): ref
     == r1#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  free ensures {:id "id1172"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  free ensures true;
  ensures {:id "id1173"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1174"} r#0 == r0#0 || r#0 == r1#0;
  free ensures true;
  ensures {:id "id1175"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, Tclass.M3.Element?())
             && Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $w#1))), 
      (lambda $w#1: Box :: 
        $Box((if $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#1]): ref
                 == r0#0
               || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#1]): ref
                 == r1#0
             then r#0
             else $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#1]): ref))), 
      TMap(Tclass.M3.Element?(), Tclass.M3.Element?())));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.UnionFind.Join (correctness)"} Impl$$M3.UnionFind.Join(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1176"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  requires {:id "id1177"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r0#0));
  requires {:id "id1178"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(r1#0));
  requires {:id "id1179"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(r0#0)]): ref
     == r0#0;
  requires {:id "id1180"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(r1#0)]): ref
     == r1#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  ensures {:id "id1181"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  ensures {:id "id1182"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  ensures {:id "id1183"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  ensures {:id "id1184"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#14: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]): ref } 
            $Is(e#14, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#14))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)])));
  ensures {:id "id1185"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#15: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15)) } 
            $Is(e#15, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]): ref));
  ensures {:id "id1186"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#16: ref :: 
            { $Unbox(read($Heap, e#16, M3.Element.c)): DatatypeType } 
            $Is(e#16, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#16, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#16, M3.Element.c)): DatatypeType)))));
  ensures {:id "id1187"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#17: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17)) } 
            $Is(e#17, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#17, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  free ensures true;
  ensures {:id "id1188"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1189"} r#0 == r0#0 || r#0 == r1#0;
  free ensures true;
  ensures {:id "id1190"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
          $IsBox($w#2, Tclass.M3.Element?())
             && Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $w#2))), 
      (lambda $w#2: Box :: 
        $Box((if $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#2]): ref
                 == r0#0
               || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#2]): ref
                 == r1#0
             then r#0
             else $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#2]): ref))), 
      TMap(Tclass.M3.Element?(), Tclass.M3.Element?())));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.Join (correctness)"} Impl$$M3.UnionFind.Join(this: ref, r0#0: ref, r1#0: ref)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m##0_0: Map;
  var n##0_0: Map;
  var e#0_0: ref;
  var $rhs#1_0_0: DatatypeType;
  var $rhs#1_0_1: Map;
  var e#1_0_0: ref;
  var e#1_0_0_0: ref;
  var ##d#1_0_0_0: int;
  var ##e#1_0_0_0: ref;
  var ##r#1_0_0_0: ref;
  var ##C#1_0_0_0: Map;
  var r0##1_0_0_0: ref;
  var r1##1_0_0_0: ref;
  var C##1_0_0_0: Map;
  var C'##1_0_0_0: Map;
  var ##d#1_0_0_1: int;
  var ##e#1_0_0_1: ref;
  var ##r#1_0_0_1: ref;
  var ##C#1_0_0_1: Map;
  var $rhs#1_1_0_0: DatatypeType;
  var $rhs#1_1_0_1: Map;
  var e#1_1_0_0: ref;
  var e#1_1_0_0_0: ref;
  var ##d#1_1_0_0_0: int;
  var ##e#1_1_0_0_0: ref;
  var ##r#1_1_0_0_0: ref;
  var ##C#1_1_0_0_0: Map;
  var r0##1_1_0_0_0: ref;
  var r1##1_1_0_0_0: ref;
  var C##1_1_0_0_0: Map;
  var C'##1_1_0_0_0: Map;
  var ##d#1_1_0_0_1: int;
  var ##e#1_1_0_0_1: ref;
  var ##r#1_1_0_0_1: ref;
  var ##C#1_1_0_0_1: Map;
  var $rhs#1_1_1_0: DatatypeType;
  var $rhs#1_1_1_1: DatatypeType;
  var $rhs#1_1_1_2: Map;
  var e#1_1_1_0: ref;
  var e#1_1_1_0_0: ref;
  var ##d#1_1_1_0_0: int;
  var ##e#1_1_1_0_0: ref;
  var ##r#1_1_1_0_0: ref;
  var ##C#1_1_1_0_0: Map;
  var r0##1_1_1_0_0: ref;
  var r1##1_1_1_0_0: ref;
  var C##1_1_1_0_0: Map;
  var C'##1_1_1_0_0: Map;
  var ##d#1_1_1_0_1: int;
  var ##e#1_1_1_0_1: ref;
  var ##r#1_1_1_0_1: ref;
  var ##C#1_1_1_0_1: Map;

    // AddMethodImpl: Join, Impl$$M3.UnionFind.Join
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(208,7)
    assume true;
    if (r0#0 == r1#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(209,11)
        assume true;
        assume true;
        r#0 := r0#0;
        defass#r#0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(210,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        m##0_0 := $Unbox(read($Heap, this, M3.UnionFind.M)): Map;
        // Begin Comprehension WF check
        havoc e#0_0;
        if ($Is(e#0_0, Tclass.M3.Element?()) && $IsAlloc(e#0_0, Tclass.M3.Element?(), $Heap))
        {
            if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0_0)))
            {
                assert {:id "id1192"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0_0));
                if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0_0)]): ref
                   != r0#0)
                {
                    assert {:id "id1193"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0_0));
                }

                if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0_0)]): ref
                     == r0#0
                   || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0_0)]): ref
                     == r1#0)
                {
                    assert {:id "id1194"} defass#r#0;
                }
                else
                {
                    assert {:id "id1195"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0_0));
                }
            }
        }

        // End Comprehension WF check
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#0_0: Box :: 
              $IsBox($w#0_0, Tclass.M3.Element?())
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#0_0))), 
          (lambda $w#0_0: Box :: 
            $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#0_0]): ref
                     == r0#0
                   || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#0_0]): ref
                     == r1#0
                 then r#0
                 else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#0_0]): ref))), 
          TMap(Tclass.M3.Element?(), Tclass.M3.Element?()));
        call {:id "id1196"} Call$$M3.__default.MapsEqual(Tclass.M3.Element?(), m##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(211,9)
        assert {:id "id1197"} defass#r#0;
        return;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(212,14)
        assert {:id "id1198"} r0#0 != null;
        assert {:id "id1199"} M3.Contents.Root_q($Unbox(read($Heap, r0#0, M3.Element.c)): DatatypeType);
        assert {:id "id1200"} r1#0 != null;
        assert {:id "id1201"} M3.Contents.Root_q($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType);
        assume true;
        if (M3.Contents.depth($Unbox(read($Heap, r0#0, M3.Element.c)): DatatypeType)
           < M3.Contents.depth($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(213,14)
            assert {:id "id1202"} r0#0 != null;
            assume true;
            assert {:id "id1203"} $_ModifiesFrame[r0#0, M3.Element.c];
            assume true;
            $rhs#1_0_0 := #M3.Contents.Link(r1#0);
            $Heap := update($Heap, r0#0, M3.Element.c, $Box($rhs#1_0_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(214,11)
            assume true;
            assume true;
            r#0 := r1#0;
            defass#r#0 := true;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(215,11)
            assume true;
            assert {:id "id1207"} $_ModifiesFrame[this, M3.UnionFind.M];
            // Begin Comprehension WF check
            havoc e#1_0_0;
            if ($Is(e#1_0_0, Tclass.M3.Element())
               && $IsAlloc(e#1_0_0, Tclass.M3.Element(), $Heap))
            {
                if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0)))
                {
                    assert {:id "id1208"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0));
                    if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0)]): ref
                       != r0#0)
                    {
                        assert {:id "id1209"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0));
                    }

                    if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0)]): ref
                         == r0#0
                       || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0)]): ref
                         == r1#0)
                    {
                        assert {:id "id1210"} defass#r#0;
                    }
                    else
                    {
                        assert {:id "id1211"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0));
                    }
                }
            }

            // End Comprehension WF check
            assert {:id "id1212"} $Is(Map#Glue(Set#FromBoogieMap((lambda $w#1_0_0: Box :: 
                    $IsBox($w#1_0_0, Tclass.M3.Element())
                       && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#1_0_0))), 
                (lambda $w#1_0_0: Box :: 
                  $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_0_0]): ref
                           == r0#0
                         || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_0_0]): ref
                           == r1#0
                       then r#0
                       else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_0_0]): ref))), 
                TMap(Tclass.M3.Element(), Tclass.M3.Element?())), 
              TMap(Tclass.M3.Element(), Tclass.M3.Element()));
            assume true;
            $rhs#1_0_1 := Map#Glue(Set#FromBoogieMap((lambda $w#1_0_0: Box :: 
                  $IsBox($w#1_0_0, Tclass.M3.Element())
                     && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#1_0_0))), 
              (lambda $w#1_0_0: Box :: 
                $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_0_0]): ref
                         == r0#0
                       || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_0_0]): ref
                         == r1#0
                     then r#0
                     else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_0_0]): ref))), 
              TMap(Tclass.M3.Element(), Tclass.M3.Element?()));
            $Heap := update($Heap, this, M3.UnionFind.M, $Box($rhs#1_0_1));
            assume $IsGoodHeap($Heap);
            // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(216,9)
            if (*)
            {
                // Assume Fuel Constant
                havoc e#1_0_0_0;
                assume $Is(e#1_0_0_0, Tclass.M3.Element());
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                assert {:id "id1215"} {:subsumption 0} (forall f#1_0_0_0: ref :: 
                  { $Unbox(read($Heap, f#1_0_0_0, M3.Element.c)): DatatypeType } 
                  $Is(f#1_0_0_0, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_0_0_0))
                       && M3.Contents.Link_q($Unbox(read($Heap, f#1_0_0_0, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read($Heap, f#1_0_0_0, M3.Element.c)): DatatypeType))));
                assume M3.UnionFind.Collect#canCall($Heap, this);
                assume M3.UnionFind.Collect#canCall($Heap, this);
                assume {:id "id1216"} Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_0_0_0));
                if (*)
                {
                    assert {:id "id1217"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0_0));
                    assert {:id "id1218"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref
                       != null;
                    if (M3.Contents.Root_q($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType))
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                        assert {:id "id1219"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0_0));
                        assert {:id "id1220"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref
                           != null;
                        assert {:id "id1221"} M3.Contents.Root_q($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType);
                        ##d#1_0_0_0 := M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##d#1_0_0_0, Tclass._System.nat(), $Heap);
                        ##e#1_0_0_0 := e#1_0_0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##e#1_0_0_0, Tclass.M3.Element(), $Heap);
                        assert {:id "id1222"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_0_0_0));
                        ##r#1_0_0_0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##r#1_0_0_0, Tclass.M3.Element(), $Heap);
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                        assert {:id "id1223"} {:subsumption 0} (forall f#1_0_0_1: ref :: 
                          { $Unbox(read($Heap, f#1_0_0_1, M3.Element.c)): DatatypeType } 
                          $Is(f#1_0_0_1, Tclass.M3.Element())
                             ==> 
                            Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_0_0_1))
                               && M3.Contents.Link_q($Unbox(read($Heap, f#1_0_0_1, M3.Element.c)): DatatypeType)
                             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                              $Box(M3.Contents.next($Unbox(read($Heap, f#1_0_0_1, M3.Element.c)): DatatypeType))));
                        assume M3.UnionFind.Collect#canCall($Heap, this);
                        ##C#1_0_0_0 := M3.UnionFind.Collect($Heap, this);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##C#1_0_0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                        assert {:id "id1224"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_0_0_0)
                           ==> M3.__default.GoodCMap(##C#1_0_0_0)
                             || (forall f#1_0_0_2: ref :: 
                              { $Unbox(Map#Elements(##C#1_0_0_0)[$Box(f#1_0_0_2)]): DatatypeType } 
                              $Is(f#1_0_0_2, Tclass.M3.Element?())
                                 ==> 
                                Set#IsMember(Map#Domain(##C#1_0_0_0), $Box(f#1_0_0_2))
                                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_0_0_0)[$Box(f#1_0_0_2)]): DatatypeType)
                                 ==> Set#IsMember(Map#Domain(##C#1_0_0_0), 
                                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_0_0_0)[$Box(f#1_0_0_2)]): DatatypeType))));
                        assert {:id "id1225"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_0_0_0), $Box(##e#1_0_0_0));
                        assume M3.UnionFind.Reaches#canCall(this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this));
                    }

                    assume M3.Contents.Root_q($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType)
                       ==> M3.UnionFind.Collect#canCall($Heap, this)
                         && M3.UnionFind.Reaches#canCall(this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this));
                    assume {:id "id1226"} M3.Contents.Root_q($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType)
                       && M3.UnionFind.Reaches($LS($LZ), 
                        this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this));
                    assume false;
                }

                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(219,32)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                assume true;
                // ProcessCallStmt: CheckSubrange
                r0##1_0_0_0 := r0#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                r1##1_0_0_0 := r1#0;
                assert {:id "id1227"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                assert {:id "id1228"} {:subsumption 0} (forall f#1_0_0_3: ref :: 
                  { $Unbox(read(old($Heap), f#1_0_0_3, M3.Element.c)): DatatypeType } 
                  $Is(f#1_0_0_3, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(f#1_0_0_3))
                       && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_0_0_3, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_0_0_3, M3.Element.c)): DatatypeType))));
                assume (forall f#1_0_0_3: ref :: 
                  { $Unbox(read(old($Heap), f#1_0_0_3, M3.Element.c)): DatatypeType } 
                  $Is(f#1_0_0_3, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(f#1_0_0_3))
                       && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_0_0_3, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_0_0_3, M3.Element.c)): DatatypeType))));
                assume M3.UnionFind.Collect#canCall(old($Heap), this);
                assume M3.UnionFind.Collect#canCall(old($Heap), this);
                // ProcessCallStmt: CheckSubrange
                C##1_0_0_0 := M3.UnionFind.Collect(old($Heap), this);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                assert {:id "id1229"} {:subsumption 0} (forall f#1_0_0_4: ref :: 
                  { $Unbox(read($Heap, f#1_0_0_4, M3.Element.c)): DatatypeType } 
                  $Is(f#1_0_0_4, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_0_0_4))
                       && M3.Contents.Link_q($Unbox(read($Heap, f#1_0_0_4, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read($Heap, f#1_0_0_4, M3.Element.c)): DatatypeType))));
                assume (forall f#1_0_0_4: ref :: 
                  { $Unbox(read($Heap, f#1_0_0_4, M3.Element.c)): DatatypeType } 
                  $Is(f#1_0_0_4, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_0_0_4))
                       && M3.Contents.Link_q($Unbox(read($Heap, f#1_0_0_4, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read($Heap, f#1_0_0_4, M3.Element.c)): DatatypeType))));
                assume M3.UnionFind.Collect#canCall($Heap, this);
                assume M3.UnionFind.Collect#canCall($Heap, this);
                // ProcessCallStmt: CheckSubrange
                C'##1_0_0_0 := M3.UnionFind.Collect($Heap, this);
                call {:id "id1230"} Call$$M3.UnionFind.JoinMaintainsReaches0(this, r0##1_0_0_0, r1##1_0_0_0, C##1_0_0_0, C'##1_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(220,11)
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                assert {:id "id1231"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                assert {:id "id1232"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#1_0_0_0));
                assert {:id "id1233"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref
                   != null;
                assert {:id "id1234"} $IsAlloc($Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                  Tclass.M3.Element(), 
                  old($Heap));
                assert {:id "id1235"} M3.Contents.Root_q($Unbox(read(old($Heap), 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.Element.c)): DatatypeType);
                ##d#1_0_0_1 := M3.Contents.depth($Unbox(read(old($Heap), 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.Element.c)): DatatypeType);
                // assume allocatedness for argument to function
                assume $IsAlloc(##d#1_0_0_1, Tclass._System.nat(), $Heap);
                ##e#1_0_0_1 := e#1_0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e#1_0_0_1, Tclass.M3.Element(), $Heap);
                assert {:id "id1236"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                assert {:id "id1237"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#1_0_0_0));
                ##r#1_0_0_1 := $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_1, Tclass.M3.Element(), $Heap);
                assert {:id "id1238"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                assert {:id "id1239"} {:subsumption 0} (forall f#1_0_0_5: ref :: 
                  { $Unbox(read(old($Heap), f#1_0_0_5, M3.Element.c)): DatatypeType } 
                  $Is(f#1_0_0_5, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(f#1_0_0_5))
                       && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_0_0_5, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_0_0_5, M3.Element.c)): DatatypeType))));
                assume M3.UnionFind.Collect#canCall(old($Heap), this);
                ##C#1_0_0_1 := M3.UnionFind.Collect(old($Heap), this);
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#1_0_0_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                assert {:id "id1240"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_0_0_1)
                   ==> M3.__default.GoodCMap(##C#1_0_0_1)
                     || (forall f#1_0_0_6: ref :: 
                      { $Unbox(Map#Elements(##C#1_0_0_1)[$Box(f#1_0_0_6)]): DatatypeType } 
                      $Is(f#1_0_0_6, Tclass.M3.Element?())
                         ==> 
                        Set#IsMember(Map#Domain(##C#1_0_0_1), $Box(f#1_0_0_6))
                           && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_0_0_1)[$Box(f#1_0_0_6)]): DatatypeType)
                         ==> Set#IsMember(Map#Domain(##C#1_0_0_1), 
                          $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_0_0_1)[$Box(f#1_0_0_6)]): DatatypeType))));
                assert {:id "id1241"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_0_0_1), $Box(##e#1_0_0_1));
                assume M3.UnionFind.Reaches#canCall(this, 
                  M3.Contents.depth($Unbox(read(old($Heap), 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                        M3.Element.c)): DatatypeType), 
                  e#1_0_0_0, 
                  $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                  M3.UnionFind.Collect(old($Heap), this));
                assume M3.UnionFind.Collect#canCall(old($Heap), this)
                   && M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect(old($Heap), this));
                assert {:id "id1242"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect(old($Heap), this))
                   ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this))
                     || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_0_0_0)]): DatatypeType)
                       ==> e#1_0_0_0
                         == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref);
                assert {:id "id1243"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect(old($Heap), this))
                   ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this))
                     || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_0_0_0)]): DatatypeType)
                       ==> (var next#1_0_0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_0_0_0)]): DatatypeType); 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType)
                           != 0));
                assert {:id "id1244"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect(old($Heap), this))
                   ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this))
                     || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_0_0_0)]): DatatypeType)
                       ==> (var next#1_0_0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_0_0_0)]): DatatypeType); 
                        M3.UnionFind.Reaches($LS($LS($LZ)), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                  $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType)
                             - 1, 
                          next#1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))));
                assume {:id "id1245"} M3.UnionFind.Reaches($LS($LZ), 
                  this, 
                  M3.Contents.depth($Unbox(read(old($Heap), 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                        M3.Element.c)): DatatypeType), 
                  e#1_0_0_0, 
                  $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                  M3.UnionFind.Collect(old($Heap), this));
                assert {:id "id1246"} M3.Contents.Root_q($Unbox(read($Heap, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.Element.c)): DatatypeType);
                assert {:id "id1247"} M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect($Heap, this))
                   ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.UnionFind.Collect($Heap, this))
                     || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_0_0_0)]): DatatypeType)
                       ==> e#1_0_0_0
                         == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref);
                assert {:id "id1248"} M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect($Heap, this))
                   ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.UnionFind.Collect($Heap, this))
                     || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_0_0_0)]): DatatypeType)
                       ==> (var next#1_0_0_2 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_0_0_0)]): DatatypeType); 
                        M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType)
                           != 0));
                assert {:id "id1249"} M3.UnionFind.Reaches#canCall(this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#1_0_0_0, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                    M3.UnionFind.Collect($Heap, this))
                   ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                      M3.UnionFind.Collect($Heap, this))
                     || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_0_0_0)]): DatatypeType)
                       ==> (var next#1_0_0_2 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_0_0_0)]): DatatypeType); 
                        M3.UnionFind.Reaches($LS($LS($LZ)), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType)
                             - 1, 
                          next#1_0_0_2, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))));
                assume false;
            }
            else
            {
                assume (forall e#1_0_0_1: ref :: 
                  { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_1)]): ref } 
                    { Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_0_0_1)) } 
                  $Is(e#1_0_0_1, Tclass.M3.Element())
                       && Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_0_0_1))
                     ==> M3.Contents.Root_q($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_1)]): ref, 
                            M3.Element.c)): DatatypeType)
                       && M3.UnionFind.Reaches($LS($LZ), 
                        this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_1)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_0_0_1, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_0_0_1)]): ref, 
                        M3.UnionFind.Collect($Heap, this)));
            }
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(222,14)
            assert {:id "id1250"} r1#0 != null;
            assert {:id "id1251"} M3.Contents.Root_q($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType);
            assert {:id "id1252"} r0#0 != null;
            assert {:id "id1253"} M3.Contents.Root_q($Unbox(read($Heap, r0#0, M3.Element.c)): DatatypeType);
            assume true;
            if (M3.Contents.depth($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType)
               < M3.Contents.depth($Unbox(read($Heap, r0#0, M3.Element.c)): DatatypeType))
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(223,14)
                assert {:id "id1254"} r1#0 != null;
                assume true;
                assert {:id "id1255"} $_ModifiesFrame[r1#0, M3.Element.c];
                assume true;
                $rhs#1_1_0_0 := #M3.Contents.Link(r0#0);
                $Heap := update($Heap, r1#0, M3.Element.c, $Box($rhs#1_1_0_0));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(224,11)
                assume true;
                assume true;
                r#0 := r0#0;
                defass#r#0 := true;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(225,11)
                assume true;
                assert {:id "id1259"} $_ModifiesFrame[this, M3.UnionFind.M];
                // Begin Comprehension WF check
                havoc e#1_1_0_0;
                if ($Is(e#1_1_0_0, Tclass.M3.Element())
                   && $IsAlloc(e#1_1_0_0, Tclass.M3.Element(), $Heap))
                {
                    if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0)))
                    {
                        assert {:id "id1260"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0));
                        if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0)]): ref
                           != r0#0)
                        {
                            assert {:id "id1261"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0));
                        }

                        if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0)]): ref
                             == r0#0
                           || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0)]): ref
                             == r1#0)
                        {
                            assert {:id "id1262"} defass#r#0;
                        }
                        else
                        {
                            assert {:id "id1263"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0));
                        }
                    }
                }

                // End Comprehension WF check
                assert {:id "id1264"} $Is(Map#Glue(Set#FromBoogieMap((lambda $w#1_1_0_0: Box :: 
                        $IsBox($w#1_1_0_0, Tclass.M3.Element())
                           && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#1_1_0_0))), 
                    (lambda $w#1_1_0_0: Box :: 
                      $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_0_0]): ref
                               == r0#0
                             || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_0_0]): ref
                               == r1#0
                           then r#0
                           else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_0_0]): ref))), 
                    TMap(Tclass.M3.Element(), Tclass.M3.Element?())), 
                  TMap(Tclass.M3.Element(), Tclass.M3.Element()));
                assume true;
                $rhs#1_1_0_1 := Map#Glue(Set#FromBoogieMap((lambda $w#1_1_0_0: Box :: 
                      $IsBox($w#1_1_0_0, Tclass.M3.Element())
                         && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#1_1_0_0))), 
                  (lambda $w#1_1_0_0: Box :: 
                    $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_0_0]): ref
                             == r0#0
                           || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_0_0]): ref
                             == r1#0
                         then r#0
                         else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_0_0]): ref))), 
                  TMap(Tclass.M3.Element(), Tclass.M3.Element?()));
                $Heap := update($Heap, this, M3.UnionFind.M, $Box($rhs#1_1_0_1));
                assume $IsGoodHeap($Heap);
                // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(226,9)
                if (*)
                {
                    // Assume Fuel Constant
                    havoc e#1_1_0_0_0;
                    assume $Is(e#1_1_0_0_0, Tclass.M3.Element());
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                    assert {:id "id1267"} {:subsumption 0} (forall f#1_1_0_0_0: ref :: 
                      { $Unbox(read($Heap, f#1_1_0_0_0, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_0_0_0, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_0_0_0))
                           && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_0_0_0, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_0_0_0, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    assume {:id "id1268"} Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_1_0_0_0));
                    if (*)
                    {
                        assert {:id "id1269"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0_0));
                        assert {:id "id1270"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref
                           != null;
                        if (M3.Contents.Root_q($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType))
                        {
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                            assert {:id "id1271"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0_0));
                            assert {:id "id1272"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref
                               != null;
                            assert {:id "id1273"} M3.Contents.Root_q($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType);
                            ##d#1_1_0_0_0 := M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##d#1_1_0_0_0, Tclass._System.nat(), $Heap);
                            ##e#1_1_0_0_0 := e#1_1_0_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##e#1_1_0_0_0, Tclass.M3.Element(), $Heap);
                            assert {:id "id1274"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_0_0_0));
                            ##r#1_1_0_0_0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##r#1_1_0_0_0, Tclass.M3.Element(), $Heap);
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                            assert {:id "id1275"} {:subsumption 0} (forall f#1_1_0_0_1: ref :: 
                              { $Unbox(read($Heap, f#1_1_0_0_1, M3.Element.c)): DatatypeType } 
                              $Is(f#1_1_0_0_1, Tclass.M3.Element())
                                 ==> 
                                Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_0_0_1))
                                   && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_0_0_1, M3.Element.c)): DatatypeType)
                                 ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                                  $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_0_0_1, M3.Element.c)): DatatypeType))));
                            assume M3.UnionFind.Collect#canCall($Heap, this);
                            ##C#1_1_0_0_0 := M3.UnionFind.Collect($Heap, this);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##C#1_1_0_0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                            assert {:id "id1276"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_1_0_0_0)
                               ==> M3.__default.GoodCMap(##C#1_1_0_0_0)
                                 || (forall f#1_1_0_0_2: ref :: 
                                  { $Unbox(Map#Elements(##C#1_1_0_0_0)[$Box(f#1_1_0_0_2)]): DatatypeType } 
                                  $Is(f#1_1_0_0_2, Tclass.M3.Element?())
                                     ==> 
                                    Set#IsMember(Map#Domain(##C#1_1_0_0_0), $Box(f#1_1_0_0_2))
                                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_1_0_0_0)[$Box(f#1_1_0_0_2)]): DatatypeType)
                                     ==> Set#IsMember(Map#Domain(##C#1_1_0_0_0), 
                                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_1_0_0_0)[$Box(f#1_1_0_0_2)]): DatatypeType))));
                            assert {:id "id1277"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_1_0_0_0), $Box(##e#1_1_0_0_0));
                            assume M3.UnionFind.Reaches#canCall(this, 
                              M3.Contents.depth($Unbox(read($Heap, 
                                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType), 
                              e#1_1_0_0_0, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.UnionFind.Collect($Heap, this));
                        }

                        assume M3.Contents.Root_q($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType)
                           ==> M3.UnionFind.Collect#canCall($Heap, this)
                             && M3.UnionFind.Reaches#canCall(this, 
                              M3.Contents.depth($Unbox(read($Heap, 
                                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType), 
                              e#1_1_0_0_0, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.UnionFind.Collect($Heap, this));
                        assume {:id "id1278"} M3.Contents.Root_q($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType)
                           && M3.UnionFind.Reaches($LS($LZ), 
                            this, 
                            M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType), 
                            e#1_1_0_0_0, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                            M3.UnionFind.Collect($Heap, this));
                        assume false;
                    }

                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(229,32)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    r0##1_1_0_0_0 := r1#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    r1##1_1_0_0_0 := r0#0;
                    assert {:id "id1279"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1280"} {:subsumption 0} (forall f#1_1_0_0_3: ref :: 
                      { $Unbox(read(old($Heap), f#1_1_0_0_3, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_0_0_3, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                            $Box(f#1_1_0_0_3))
                           && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_1_0_0_3, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_1_0_0_3, M3.Element.c)): DatatypeType))));
                    assume (forall f#1_1_0_0_3: ref :: 
                      { $Unbox(read(old($Heap), f#1_1_0_0_3, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_0_0_3, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                            $Box(f#1_1_0_0_3))
                           && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_1_0_0_3, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_1_0_0_3, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall(old($Heap), this);
                    assume M3.UnionFind.Collect#canCall(old($Heap), this);
                    // ProcessCallStmt: CheckSubrange
                    C##1_1_0_0_0 := M3.UnionFind.Collect(old($Heap), this);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                    assert {:id "id1281"} {:subsumption 0} (forall f#1_1_0_0_4: ref :: 
                      { $Unbox(read($Heap, f#1_1_0_0_4, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_0_0_4, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_0_0_4))
                           && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_0_0_4, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_0_0_4, M3.Element.c)): DatatypeType))));
                    assume (forall f#1_1_0_0_4: ref :: 
                      { $Unbox(read($Heap, f#1_1_0_0_4, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_0_0_4, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_0_0_4))
                           && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_0_0_4, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_0_0_4, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    // ProcessCallStmt: CheckSubrange
                    C'##1_1_0_0_0 := M3.UnionFind.Collect($Heap, this);
                    call {:id "id1282"} Call$$M3.UnionFind.JoinMaintainsReaches0(this, r0##1_1_0_0_0, r1##1_1_0_0_0, C##1_1_0_0_0, C'##1_1_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(230,11)
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                    assert {:id "id1283"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1284"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(e#1_1_0_0_0));
                    assert {:id "id1285"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref
                       != null;
                    assert {:id "id1286"} $IsAlloc($Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                      Tclass.M3.Element(), 
                      old($Heap));
                    assert {:id "id1287"} M3.Contents.Root_q($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType);
                    ##d#1_1_0_0_1 := M3.Contents.depth($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##d#1_1_0_0_1, Tclass._System.nat(), $Heap);
                    ##e#1_1_0_0_1 := e#1_1_0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##e#1_1_0_0_1, Tclass.M3.Element(), $Heap);
                    assert {:id "id1288"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1289"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(e#1_1_0_0_0));
                    ##r#1_1_0_0_1 := $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##r#1_1_0_0_1, Tclass.M3.Element(), $Heap);
                    assert {:id "id1290"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1291"} {:subsumption 0} (forall f#1_1_0_0_5: ref :: 
                      { $Unbox(read(old($Heap), f#1_1_0_0_5, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_0_0_5, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                            $Box(f#1_1_0_0_5))
                           && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_1_0_0_5, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_1_0_0_5, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall(old($Heap), this);
                    ##C#1_1_0_0_1 := M3.UnionFind.Collect(old($Heap), this);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##C#1_1_0_0_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                    assert {:id "id1292"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_1_0_0_1)
                       ==> M3.__default.GoodCMap(##C#1_1_0_0_1)
                         || (forall f#1_1_0_0_6: ref :: 
                          { $Unbox(Map#Elements(##C#1_1_0_0_1)[$Box(f#1_1_0_0_6)]): DatatypeType } 
                          $Is(f#1_1_0_0_6, Tclass.M3.Element?())
                             ==> 
                            Set#IsMember(Map#Domain(##C#1_1_0_0_1), $Box(f#1_1_0_0_6))
                               && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_1_0_0_1)[$Box(f#1_1_0_0_6)]): DatatypeType)
                             ==> Set#IsMember(Map#Domain(##C#1_1_0_0_1), 
                              $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_1_0_0_1)[$Box(f#1_1_0_0_6)]): DatatypeType))));
                    assert {:id "id1293"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_1_0_0_1), $Box(##e#1_1_0_0_1));
                    assume M3.UnionFind.Reaches#canCall(this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this));
                    assume M3.UnionFind.Collect#canCall(old($Heap), this)
                       && M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this));
                    assert {:id "id1294"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))
                         || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_0_0_0)]): DatatypeType)
                           ==> e#1_1_0_0_0
                             == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref);
                    assert {:id "id1295"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_0_0_0)]): DatatypeType)
                           ==> (var next#1_1_0_0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_0_0_0)]): DatatypeType); 
                            M3.Contents.depth($Unbox(read(old($Heap), 
                                    $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType)
                               != 0));
                    assert {:id "id1296"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_0_0_0)]): DatatypeType)
                           ==> (var next#1_1_0_0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_0_0_0)]): DatatypeType); 
                            M3.UnionFind.Reaches($LS($LS($LZ)), 
                              this, 
                              M3.Contents.depth($Unbox(read(old($Heap), 
                                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                      M3.Element.c)): DatatypeType)
                                 - 1, 
                              next#1_1_0_0_0, 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.UnionFind.Collect(old($Heap), this))));
                    assume {:id "id1297"} M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_1_0_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this));
                    assert {:id "id1298"} M3.Contents.Root_q($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.Element.c)): DatatypeType);
                    assert {:id "id1299"} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))
                         || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_0_0_0)]): DatatypeType)
                           ==> e#1_1_0_0_0
                             == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref);
                    assert {:id "id1300"} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_0_0_0)]): DatatypeType)
                           ==> (var next#1_1_0_0_2 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_0_0_0)]): DatatypeType); 
                            M3.Contents.depth($Unbox(read($Heap, 
                                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType)
                               != 0));
                    assert {:id "id1301"} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_0_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_0_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_0_0_0)]): DatatypeType)
                           ==> (var next#1_1_0_0_2 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_0_0_0)]): DatatypeType); 
                            M3.UnionFind.Reaches($LS($LS($LZ)), 
                              this, 
                              M3.Contents.depth($Unbox(read($Heap, 
                                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                                      M3.Element.c)): DatatypeType)
                                 - 1, 
                              next#1_1_0_0_2, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_0)]): ref, 
                              M3.UnionFind.Collect($Heap, this))));
                    assume false;
                }
                else
                {
                    assume (forall e#1_1_0_0_1: ref :: 
                      { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_1)]): ref } 
                        { Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_1_0_0_1)) } 
                      $Is(e#1_1_0_0_1, Tclass.M3.Element())
                           && Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_1_0_0_1))
                         ==> M3.Contents.Root_q($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_1)]): ref, 
                                M3.Element.c)): DatatypeType)
                           && M3.UnionFind.Reaches($LS($LZ), 
                            this, 
                            M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_1)]): ref, 
                                  M3.Element.c)): DatatypeType), 
                            e#1_1_0_0_1, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_0_0_1)]): ref, 
                            M3.UnionFind.Collect($Heap, this)));
                }
            }
            else
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(233,14)
                assert {:id "id1302"} r0#0 != null;
                assume true;
                assert {:id "id1303"} $_ModifiesFrame[r0#0, M3.Element.c];
                assume true;
                $rhs#1_1_1_0 := #M3.Contents.Link(r1#0);
                $Heap := update($Heap, r0#0, M3.Element.c, $Box($rhs#1_1_1_0));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(234,14)
                assert {:id "id1306"} r1#0 != null;
                assume true;
                assert {:id "id1307"} $_ModifiesFrame[r1#0, M3.Element.c];
                assert {:id "id1308"} r1#0 != null;
                assert {:id "id1309"} M3.Contents.Root_q($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType);
                assert {:id "id1310"} $Is(M3.Contents.depth($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType) + 1, 
                  Tclass._System.nat());
                assume true;
                $rhs#1_1_1_1 := #M3.Contents.Root(M3.Contents.depth($Unbox(read($Heap, r1#0, M3.Element.c)): DatatypeType) + 1);
                $Heap := update($Heap, r1#0, M3.Element.c, $Box($rhs#1_1_1_1));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(235,11)
                assume true;
                assume true;
                r#0 := r1#0;
                defass#r#0 := true;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(236,11)
                assume true;
                assert {:id "id1314"} $_ModifiesFrame[this, M3.UnionFind.M];
                // Begin Comprehension WF check
                havoc e#1_1_1_0;
                if ($Is(e#1_1_1_0, Tclass.M3.Element())
                   && $IsAlloc(e#1_1_1_0, Tclass.M3.Element(), $Heap))
                {
                    if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0)))
                    {
                        assert {:id "id1315"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0));
                        if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0)]): ref
                           != r0#0)
                        {
                            assert {:id "id1316"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0));
                        }

                        if ($Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0)]): ref
                             == r0#0
                           || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0)]): ref
                             == r1#0)
                        {
                            assert {:id "id1317"} defass#r#0;
                        }
                        else
                        {
                            assert {:id "id1318"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0));
                        }
                    }
                }

                // End Comprehension WF check
                assert {:id "id1319"} $Is(Map#Glue(Set#FromBoogieMap((lambda $w#1_1_1_0: Box :: 
                        $IsBox($w#1_1_1_0, Tclass.M3.Element())
                           && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#1_1_1_0))), 
                    (lambda $w#1_1_1_0: Box :: 
                      $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_1_0]): ref
                               == r0#0
                             || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_1_0]): ref
                               == r1#0
                           then r#0
                           else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_1_0]): ref))), 
                    TMap(Tclass.M3.Element(), Tclass.M3.Element?())), 
                  TMap(Tclass.M3.Element(), Tclass.M3.Element()));
                assume true;
                $rhs#1_1_1_2 := Map#Glue(Set#FromBoogieMap((lambda $w#1_1_1_0: Box :: 
                      $IsBox($w#1_1_1_0, Tclass.M3.Element())
                         && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#1_1_1_0))), 
                  (lambda $w#1_1_1_0: Box :: 
                    $Box((if $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_1_0]): ref
                             == r0#0
                           || $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_1_0]): ref
                             == r1#0
                         then r#0
                         else $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$w#1_1_1_0]): ref))), 
                  TMap(Tclass.M3.Element(), Tclass.M3.Element?()));
                $Heap := update($Heap, this, M3.UnionFind.M, $Box($rhs#1_1_1_2));
                assume $IsGoodHeap($Heap);
                // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(237,9)
                if (*)
                {
                    // Assume Fuel Constant
                    havoc e#1_1_1_0_0;
                    assume $Is(e#1_1_1_0_0, Tclass.M3.Element());
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                    assert {:id "id1322"} {:subsumption 0} (forall f#1_1_1_0_0: ref :: 
                      { $Unbox(read($Heap, f#1_1_1_0_0, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_1_0_0, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_1_0_0))
                           && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_1_0_0, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_1_0_0, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    assume {:id "id1323"} Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_1_1_0_0));
                    if (*)
                    {
                        assert {:id "id1324"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0_0));
                        assert {:id "id1325"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref
                           != null;
                        if (M3.Contents.Root_q($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType))
                        {
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                            assert {:id "id1326"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0_0));
                            assert {:id "id1327"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref
                               != null;
                            assert {:id "id1328"} M3.Contents.Root_q($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType);
                            ##d#1_1_1_0_0 := M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##d#1_1_1_0_0, Tclass._System.nat(), $Heap);
                            ##e#1_1_1_0_0 := e#1_1_1_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##e#1_1_1_0_0, Tclass.M3.Element(), $Heap);
                            assert {:id "id1329"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1_1_1_0_0));
                            ##r#1_1_1_0_0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##r#1_1_1_0_0, Tclass.M3.Element(), $Heap);
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                            assert {:id "id1330"} {:subsumption 0} (forall f#1_1_1_0_1: ref :: 
                              { $Unbox(read($Heap, f#1_1_1_0_1, M3.Element.c)): DatatypeType } 
                              $Is(f#1_1_1_0_1, Tclass.M3.Element())
                                 ==> 
                                Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_1_0_1))
                                   && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_1_0_1, M3.Element.c)): DatatypeType)
                                 ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                                  $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_1_0_1, M3.Element.c)): DatatypeType))));
                            assume M3.UnionFind.Collect#canCall($Heap, this);
                            ##C#1_1_1_0_0 := M3.UnionFind.Collect($Heap, this);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##C#1_1_1_0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                            assert {:id "id1331"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_1_1_0_0)
                               ==> M3.__default.GoodCMap(##C#1_1_1_0_0)
                                 || (forall f#1_1_1_0_2: ref :: 
                                  { $Unbox(Map#Elements(##C#1_1_1_0_0)[$Box(f#1_1_1_0_2)]): DatatypeType } 
                                  $Is(f#1_1_1_0_2, Tclass.M3.Element?())
                                     ==> 
                                    Set#IsMember(Map#Domain(##C#1_1_1_0_0), $Box(f#1_1_1_0_2))
                                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_1_1_0_0)[$Box(f#1_1_1_0_2)]): DatatypeType)
                                     ==> Set#IsMember(Map#Domain(##C#1_1_1_0_0), 
                                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_1_1_0_0)[$Box(f#1_1_1_0_2)]): DatatypeType))));
                            assert {:id "id1332"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_1_1_0_0), $Box(##e#1_1_1_0_0));
                            assume M3.UnionFind.Reaches#canCall(this, 
                              M3.Contents.depth($Unbox(read($Heap, 
                                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType), 
                              e#1_1_1_0_0, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.UnionFind.Collect($Heap, this));
                        }

                        assume M3.Contents.Root_q($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType)
                           ==> M3.UnionFind.Collect#canCall($Heap, this)
                             && M3.UnionFind.Reaches#canCall(this, 
                              M3.Contents.depth($Unbox(read($Heap, 
                                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType), 
                              e#1_1_1_0_0, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.UnionFind.Collect($Heap, this));
                        assume {:id "id1333"} M3.Contents.Root_q($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType)
                           && M3.UnionFind.Reaches($LS($LZ), 
                            this, 
                            M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                  M3.Element.c)): DatatypeType), 
                            e#1_1_1_0_0, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                            M3.UnionFind.Collect($Heap, this));
                        assume false;
                    }

                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(240,32)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    r0##1_1_1_0_0 := r0#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    r1##1_1_1_0_0 := r1#0;
                    assert {:id "id1334"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1335"} {:subsumption 0} (forall f#1_1_1_0_3: ref :: 
                      { $Unbox(read(old($Heap), f#1_1_1_0_3, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_1_0_3, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                            $Box(f#1_1_1_0_3))
                           && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_1_1_0_3, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_1_1_0_3, M3.Element.c)): DatatypeType))));
                    assume (forall f#1_1_1_0_3: ref :: 
                      { $Unbox(read(old($Heap), f#1_1_1_0_3, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_1_0_3, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                            $Box(f#1_1_1_0_3))
                           && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_1_1_0_3, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_1_1_0_3, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall(old($Heap), this);
                    assume M3.UnionFind.Collect#canCall(old($Heap), this);
                    // ProcessCallStmt: CheckSubrange
                    C##1_1_1_0_0 := M3.UnionFind.Collect(old($Heap), this);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                    assert {:id "id1336"} {:subsumption 0} (forall f#1_1_1_0_4: ref :: 
                      { $Unbox(read($Heap, f#1_1_1_0_4, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_1_0_4, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_1_0_4))
                           && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_1_0_4, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_1_0_4, M3.Element.c)): DatatypeType))));
                    assume (forall f#1_1_1_0_4: ref :: 
                      { $Unbox(read($Heap, f#1_1_1_0_4, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_1_0_4, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1_1_1_0_4))
                           && M3.Contents.Link_q($Unbox(read($Heap, f#1_1_1_0_4, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read($Heap, f#1_1_1_0_4, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    assume M3.UnionFind.Collect#canCall($Heap, this);
                    // ProcessCallStmt: CheckSubrange
                    C'##1_1_1_0_0 := M3.UnionFind.Collect($Heap, this);
                    call {:id "id1337"} Call$$M3.UnionFind.JoinMaintainsReaches1(this, r0##1_1_1_0_0, r1##1_1_1_0_0, C##1_1_1_0_0, C'##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(241,11)
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                    assert {:id "id1338"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1339"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(e#1_1_1_0_0));
                    assert {:id "id1340"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref
                       != null;
                    assert {:id "id1341"} $IsAlloc($Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                      Tclass.M3.Element(), 
                      old($Heap));
                    assert {:id "id1342"} M3.Contents.Root_q($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.Element.c)): DatatypeType);
                    ##d#1_1_1_0_1 := M3.Contents.depth($Unbox(read(old($Heap), 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.Element.c)): DatatypeType);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##d#1_1_1_0_1, Tclass._System.nat(), $Heap);
                    ##e#1_1_1_0_1 := e#1_1_1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##e#1_1_1_0_1, Tclass.M3.Element(), $Heap);
                    assert {:id "id1343"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1344"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                      $Box(e#1_1_1_0_0));
                    ##r#1_1_1_0_1 := $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##r#1_1_1_0_1, Tclass.M3.Element(), $Heap);
                    assert {:id "id1345"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
                    assert {:id "id1346"} {:subsumption 0} (forall f#1_1_1_0_5: ref :: 
                      { $Unbox(read(old($Heap), f#1_1_1_0_5, M3.Element.c)): DatatypeType } 
                      $Is(f#1_1_1_0_5, Tclass.M3.Element())
                         ==> 
                        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                            $Box(f#1_1_1_0_5))
                           && M3.Contents.Link_q($Unbox(read(old($Heap), f#1_1_1_0_5, M3.Element.c)): DatatypeType)
                         ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                          $Box(M3.Contents.next($Unbox(read(old($Heap), f#1_1_1_0_5, M3.Element.c)): DatatypeType))));
                    assume M3.UnionFind.Collect#canCall(old($Heap), this);
                    ##C#1_1_1_0_1 := M3.UnionFind.Collect(old($Heap), this);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##C#1_1_1_0_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                    assert {:id "id1347"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_1_1_0_1)
                       ==> M3.__default.GoodCMap(##C#1_1_1_0_1)
                         || (forall f#1_1_1_0_6: ref :: 
                          { $Unbox(Map#Elements(##C#1_1_1_0_1)[$Box(f#1_1_1_0_6)]): DatatypeType } 
                          $Is(f#1_1_1_0_6, Tclass.M3.Element?())
                             ==> 
                            Set#IsMember(Map#Domain(##C#1_1_1_0_1), $Box(f#1_1_1_0_6))
                               && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_1_1_0_1)[$Box(f#1_1_1_0_6)]): DatatypeType)
                             ==> Set#IsMember(Map#Domain(##C#1_1_1_0_1), 
                              $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_1_1_0_1)[$Box(f#1_1_1_0_6)]): DatatypeType))));
                    assert {:id "id1348"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_1_1_0_1), $Box(##e#1_1_1_0_1));
                    assume M3.UnionFind.Reaches#canCall(this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_1_1_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this));
                    assume M3.UnionFind.Collect#canCall(old($Heap), this)
                       && M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this));
                    assert {:id "id1349"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_1_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))
                         || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_1_0_0)]): DatatypeType)
                           ==> e#1_1_1_0_0
                             == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref);
                    assert {:id "id1350"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_1_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_1_0_0)]): DatatypeType)
                           ==> (var next#1_1_1_0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_1_0_0)]): DatatypeType); 
                            M3.Contents.depth($Unbox(read(old($Heap), 
                                    $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType)
                               != 0));
                    assert {:id "id1351"} {:subsumption 0} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read(old($Heap), 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect(old($Heap), this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read(old($Heap), 
                                $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_1_0_0, 
                          $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.UnionFind.Collect(old($Heap), this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_1_0_0)]): DatatypeType)
                           ==> (var next#1_1_1_0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect(old($Heap), this))[$Box(e#1_1_1_0_0)]): DatatypeType); 
                            M3.UnionFind.Reaches($LS($LS($LZ)), 
                              this, 
                              M3.Contents.depth($Unbox(read(old($Heap), 
                                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                      M3.Element.c)): DatatypeType)
                                 - 1, 
                              next#1_1_1_0_0, 
                              $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.UnionFind.Collect(old($Heap), this))));
                    assume {:id "id1352"} M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read(old($Heap), 
                            $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#1_1_1_0_0, 
                      $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                      M3.UnionFind.Collect(old($Heap), this));
                    assert {:id "id1353"} M3.Contents.Root_q($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.Element.c)): DatatypeType);
                    assert {:id "id1354"} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_1_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))
                         || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_1_0_0)]): DatatypeType)
                           ==> e#1_1_1_0_0
                             == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref);
                    assert {:id "id1355"} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_1_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_1_0_0)]): DatatypeType)
                           ==> (var next#1_1_1_0_2 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_1_0_0)]): DatatypeType); 
                            M3.Contents.depth($Unbox(read($Heap, 
                                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                    M3.Element.c)): DatatypeType)
                               != 0));
                    assert {:id "id1356"} M3.UnionFind.Reaches#canCall(this, 
                        M3.Contents.depth($Unbox(read($Heap, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.Element.c)): DatatypeType), 
                        e#1_1_1_0_0, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                        M3.UnionFind.Collect($Heap, this))
                       ==> M3.UnionFind.Reaches($LS($LZ), 
                          this, 
                          M3.Contents.depth($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                M3.Element.c)): DatatypeType), 
                          e#1_1_1_0_0, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                          M3.UnionFind.Collect($Heap, this))
                         || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_1_0_0)]): DatatypeType)
                           ==> (var next#1_1_1_0_2 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#1_1_1_0_0)]): DatatypeType); 
                            M3.UnionFind.Reaches($LS($LS($LZ)), 
                              this, 
                              M3.Contents.depth($Unbox(read($Heap, 
                                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                                      M3.Element.c)): DatatypeType)
                                 - 1, 
                              next#1_1_1_0_2, 
                              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_0)]): ref, 
                              M3.UnionFind.Collect($Heap, this))));
                    assume false;
                }
                else
                {
                    assume (forall e#1_1_1_0_1: ref :: 
                      { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_1)]): ref } 
                        { Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_1_1_0_1)) } 
                      $Is(e#1_1_1_0_1, Tclass.M3.Element())
                           && Set#IsMember(Map#Domain(M3.UnionFind.Collect($Heap, this)), $Box(e#1_1_1_0_1))
                         ==> M3.Contents.Root_q($Unbox(read($Heap, 
                                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_1)]): ref, 
                                M3.Element.c)): DatatypeType)
                           && M3.UnionFind.Reaches($LS($LZ), 
                            this, 
                            M3.Contents.depth($Unbox(read($Heap, 
                                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_1)]): ref, 
                                  M3.Element.c)): DatatypeType), 
                            e#1_1_1_0_1, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1_1_1_0_1)]): ref, 
                            M3.UnionFind.Collect($Heap, this)));
                }
            }
        }
    }

    assert {:id "id1357"} defass#r#0;
}



procedure {:verboseName "M3.UnionFind.JoinMaintainsReaches1 (well-formedness)"} CheckWellFormed$$M3.UnionFind.JoinMaintainsReaches1(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.JoinMaintainsReaches1 (well-formedness)"} CheckWellFormed$$M3.UnionFind.JoinMaintainsReaches1(this: ref, r0#0: ref, r1#0: ref, C#0: Map, C'#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##C#0: Map;
  var ##C#1: Map;
  var d#0: int;
  var e#0: ref;
  var r#0: ref;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#2: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#3: Map;
  var e#2: ref;
  var ##d#2: int;
  var ##e#2: ref;
  var ##r#2: ref;
  var ##C#4: Map;
  var ##d#3: int;
  var ##e#3: ref;
  var ##r#3: ref;
  var ##C#5: Map;
  var e#4: ref;
  var ##d#4: int;
  var ##e#4: ref;
  var ##r#4: ref;
  var ##C#6: Map;
  var ##d#5: int;
  var ##e#5: ref;
  var ##r#5: ref;
  var ##C#7: Map;


    // AddMethodImpl: JoinMaintainsReaches1, CheckWellFormed$$M3.UnionFind.JoinMaintainsReaches1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C#0);
    assume {:id "id1358"} M3.__default.GoodCMap(C#0);
    assume {:id "id1359"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1360"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1361"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1362"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1363"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1364"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1365"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assert {:id "id1366"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1367"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1368"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1369"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
       == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1370"} r0#0 != r1#0;
    assert {:id "id1371"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1372"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1373"} $Is(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1, 
      Tclass._System.nat());
    assume {:id "id1374"} Map#Equal(C'#0, 
      Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
        $Box(r1#0), 
        $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
    ##C#1 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C'#0);
    assume {:id "id1375"} M3.__default.GoodCMap(C'#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc d#0;
    havoc e#0;
    havoc r#0;
    assume LitInt(0) <= d#0
       && 
      $Is(e#0, Tclass.M3.Element())
       && $IsAlloc(e#0, Tclass.M3.Element(), $Heap)
       && 
      $Is(r#0, Tclass.M3.Element())
       && $IsAlloc(r#0, Tclass.M3.Element(), $Heap);
    if (*)
    {
        assume {:id "id1376"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        ##d#0 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
        ##e#0 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
        ##r#0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
        ##C#2 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#2, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1377"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#2)
           ==> M3.__default.GoodCMap(##C#2)
             || (forall f#0: ref :: 
              { $Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType } 
              $Is(f#0, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#2), $Box(f#0))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#2), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#2);
        assert {:id "id1378"} {:subsumption 0} Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
        assume Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
        assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0);
        assume {:id "id1379"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0);
        assume {:id "id1380"} r#0 != r0#0;
        assume {:id "id1381"} r#0 != r1#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        ##d#1 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
        ##e#1 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
        ##r#1 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
        ##C#3 := C'#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#3, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1382"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#3)
           ==> M3.__default.GoodCMap(##C#3)
             || (forall f#1: ref :: 
              { $Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType } 
              $Is(f#1, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#3), $Box(f#1))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#3), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#3);
        assert {:id "id1383"} {:subsumption 0} Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
        assume Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
        assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
        assume {:id "id1384"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0);
    }
    else
    {
        assume {:id "id1385"} Set#IsMember(Map#Domain(C#0), $Box(e#0))
             && M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
             && r#0 != r0#0
             && r#0 != r1#0
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0);
    }

    assume {:id "id1386"} (forall d#1: int, e#1: ref, r#1: ref :: 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
        { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
      LitInt(0) <= d#1
           && $Is(e#1, Tclass.M3.Element())
           && 
          $Is(r#1, Tclass.M3.Element())
           && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(e#1))
           && M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           && r#1 != r0#0
           && r#1 != r1#0
         ==> M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0));
    havoc e#2;
    assume $Is(e#2, Tclass.M3.Element()) && $IsAlloc(e#2, Tclass.M3.Element(), $Heap);
    if (*)
    {
        assume {:id "id1387"} Set#IsMember(Map#Domain(C#0), $Box(e#2));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assert {:id "id1388"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
        assert {:id "id1389"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        ##d#2 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#2, Tclass._System.nat(), $Heap);
        ##e#2 := e#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2, Tclass.M3.Element(), $Heap);
        ##r#2 := r0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#2, Tclass.M3.Element(), $Heap);
        ##C#4 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#4, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1390"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#4)
           ==> M3.__default.GoodCMap(##C#4)
             || (forall f#2: ref :: 
              { $Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType } 
              $Is(f#2, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#4), $Box(f#2))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#4), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#4);
        assert {:id "id1391"} {:subsumption 0} Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
        assume Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
        assume M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#2, 
          r0#0, 
          C#0);
        assume {:id "id1392"} M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#2, 
          r0#0, 
          C#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assert {:id "id1393"} Set#IsMember(Map#Domain(C'#0), $Box(r1#0));
        assert {:id "id1394"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
        ##d#3 := M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#3, Tclass._System.nat(), $Heap);
        ##e#3 := e#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#3, Tclass.M3.Element(), $Heap);
        ##r#3 := r1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#3, Tclass.M3.Element(), $Heap);
        ##C#5 := C'#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#5, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1395"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#5)
           ==> M3.__default.GoodCMap(##C#5)
             || (forall f#3: ref :: 
              { $Unbox(Map#Elements(##C#5)[$Box(f#3)]): DatatypeType } 
              $Is(f#3, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#5), $Box(f#3))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#5)[$Box(f#3)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#5), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#5)[$Box(f#3)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#5);
        assert {:id "id1396"} {:subsumption 0} Set#IsMember(Map#Domain(##C#5), $Box(##e#3));
        assume Set#IsMember(Map#Domain(##C#5), $Box(##e#3));
        assume M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#2, 
          r1#0, 
          C'#0);
        assume {:id "id1397"} M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#2, 
          r1#0, 
          C'#0);
    }
    else
    {
        assume {:id "id1398"} Set#IsMember(Map#Domain(C#0), $Box(e#2))
             && M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
              e#2, 
              r0#0, 
              C#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#2, 
            r1#0, 
            C'#0);
    }

    assume {:id "id1399"} (forall e#3: ref :: 
      { M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#3, 
          r1#0, 
          C'#0) } 
        { M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0) } 
        { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
      $Is(e#3, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(e#3))
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#3, 
            r0#0, 
            C#0)
         ==> M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#3, 
          r1#0, 
          C'#0));
    havoc e#4;
    assume $Is(e#4, Tclass.M3.Element()) && $IsAlloc(e#4, Tclass.M3.Element(), $Heap);
    if (*)
    {
        assume {:id "id1400"} Set#IsMember(Map#Domain(C#0), $Box(e#4));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assert {:id "id1401"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
        assert {:id "id1402"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        ##d#4 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#4, Tclass._System.nat(), $Heap);
        ##e#4 := e#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#4, Tclass.M3.Element(), $Heap);
        ##r#4 := r1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#4, Tclass.M3.Element(), $Heap);
        ##C#6 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#6, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1403"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#6)
           ==> M3.__default.GoodCMap(##C#6)
             || (forall f#4: ref :: 
              { $Unbox(Map#Elements(##C#6)[$Box(f#4)]): DatatypeType } 
              $Is(f#4, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#6), $Box(f#4))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#6)[$Box(f#4)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#6), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#6)[$Box(f#4)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#6);
        assert {:id "id1404"} {:subsumption 0} Set#IsMember(Map#Domain(##C#6), $Box(##e#4));
        assume Set#IsMember(Map#Domain(##C#6), $Box(##e#4));
        assume M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#4, 
          r1#0, 
          C#0);
        assume {:id "id1405"} M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#4, 
          r1#0, 
          C#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assert {:id "id1406"} Set#IsMember(Map#Domain(C'#0), $Box(r1#0));
        assert {:id "id1407"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
        ##d#5 := M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#5, Tclass._System.nat(), $Heap);
        ##e#5 := e#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#5, Tclass.M3.Element(), $Heap);
        ##r#5 := r1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#5, Tclass.M3.Element(), $Heap);
        ##C#7 := C'#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#7, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1408"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#7)
           ==> M3.__default.GoodCMap(##C#7)
             || (forall f#5: ref :: 
              { $Unbox(Map#Elements(##C#7)[$Box(f#5)]): DatatypeType } 
              $Is(f#5, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#7), $Box(f#5))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#7)[$Box(f#5)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#7), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#7)[$Box(f#5)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#7);
        assert {:id "id1409"} {:subsumption 0} Set#IsMember(Map#Domain(##C#7), $Box(##e#5));
        assume Set#IsMember(Map#Domain(##C#7), $Box(##e#5));
        assume M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#4, 
          r1#0, 
          C'#0);
        assume {:id "id1410"} M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#4, 
          r1#0, 
          C'#0);
    }
    else
    {
        assume {:id "id1411"} Set#IsMember(Map#Domain(C#0), $Box(e#4))
             && M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#4, 
              r1#0, 
              C#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#4, 
            r1#0, 
            C'#0);
    }

    assume {:id "id1412"} (forall e#5: ref :: 
      { M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C'#0) } 
        { M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C#0) } 
        { Set#IsMember(Map#Domain(C#0), $Box(e#5)) } 
      $Is(e#5, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(e#5))
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#5, 
            r1#0, 
            C#0)
         ==> M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C'#0));
}



procedure {:verboseName "M3.UnionFind.JoinMaintainsReaches1 (call)"} Call$$M3.UnionFind.JoinMaintainsReaches1(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1413"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#6: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType } 
        $Is(f#6, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#6))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType))));
  requires {:id "id1414"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1415"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1416"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1417"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1418"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1419"} r0#0 != r1#0;
  requires {:id "id1420"} Map#Equal(C'#0, 
    Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
      $Box(r1#0), 
      $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
  requires {:id "id1421"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#7: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType } 
        $Is(f#7, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#7))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && $Is(r#1, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
       ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C#0)
         && (M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           ==> 
          r#1 != r0#0
           ==> 
          r#1 != r1#0
           ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C'#0)));
  free ensures {:id "id1422"} (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && 
        $Is(r#1, Tclass.M3.Element())
         && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
         && M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
         && r#1 != r0#0
         && r#1 != r1#0
       ==> M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0));
  free ensures (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
       ==> M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
         && (M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#3, 
            r0#0, 
            C#0)
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#3, 
            r1#0, 
            C'#0)));
  free ensures {:id "id1423"} (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
         && M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
       ==> M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0));
  free ensures (forall e#5: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#5)) } 
    $Is(e#5, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#5))
       ==> M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C#0)
         && (M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#5, 
            r1#0, 
            C#0)
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#5, 
            r1#0, 
            C'#0)));
  free ensures {:id "id1424"} (forall e#5: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#5)) } 
    $Is(e#5, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#5))
         && M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C#0)
       ==> M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C'#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.JoinMaintainsReaches1 (correctness)"} Impl$$M3.UnionFind.JoinMaintainsReaches1(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1425"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#8: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#8)]): DatatypeType } 
      $Is(f#8, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#8))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#8)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#8)]): DatatypeType))));
  requires {:id "id1426"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1427"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1428"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1429"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1430"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1431"} r0#0 != r1#0;
  requires {:id "id1432"} Map#Equal(C'#0, 
    Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
      $Box(r1#0), 
      $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
  free requires {:id "id1433"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#9: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#9)]): DatatypeType } 
      $Is(f#9, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#9))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#9)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#9)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && $Is(r#1, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
       ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C#0)
         && (M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           ==> 
          r#1 != r0#0
           ==> 
          r#1 != r1#0
           ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C'#0)));
  ensures {:id "id1434"} (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && 
        $Is(r#1, Tclass.M3.Element())
         && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
         && (forall d$ih#0#0: int, e$ih#0#0: ref, r$ih#0#0: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), this, d$ih#0#0, e$ih#0#0, r$ih#0#0, C'#0) } 
            { M3.UnionFind.Reaches($LS($LZ), this, d$ih#0#0, e$ih#0#0, r$ih#0#0, C#0) } 
          LitInt(0) <= d$ih#0#0
               && $Is(e$ih#0#0, Tclass.M3.Element())
               && $Is(r$ih#0#0, Tclass.M3.Element())
             ==> 
            (0 <= d$ih#0#0 && d$ih#0#0 < d#1)
               || (d$ih#0#0 == d#1
                 && ((e$ih#0#0 == null && e#1 != null)
                   || ((e$ih#0#0 != null <==> e#1 != null) && r$ih#0#0 == null && r#1 != null)))
             ==> 
            Set#IsMember(Map#Domain(C#0), $Box(e$ih#0#0))
               && M3.UnionFind.Reaches($LS($LZ), this, d$ih#0#0, e$ih#0#0, r$ih#0#0, C#0)
               && r$ih#0#0 != r0#0
               && r$ih#0#0 != r1#0
             ==> M3.UnionFind.Reaches($LS($LZ), this, d$ih#0#0, e$ih#0#0, r$ih#0#0, C'#0))
         && true
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
         && M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C#0)
         && r#1 != r0#0
         && r#1 != r1#0
       ==> M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C'#0));
  free ensures (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
       ==> M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
         && (M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#3, 
            r0#0, 
            C#0)
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#3, 
            r1#0, 
            C'#0)));
  ensures {:id "id1435"} (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
         && M3.UnionFind.Reaches($LS($LS($LZ)), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
       ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0));
  free ensures (forall e#5: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#5)) } 
    $Is(e#5, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#5))
       ==> M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C#0)
         && (M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#5, 
            r1#0, 
            C#0)
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#5, 
            r1#0, 
            C'#0)));
  ensures {:id "id1436"} (forall e#5: ref :: 
    { M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#5)) } 
    $Is(e#5, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#5))
         && M3.UnionFind.Reaches($LS($LS($LZ)), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#5, 
          r1#0, 
          C#0)
       ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
        e#5, 
        r1#0, 
        C'#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.JoinMaintainsReaches1 (correctness)"} Impl$$M3.UnionFind.JoinMaintainsReaches1(this: ref, r0#0: ref, r1#0: ref, C#0: Map, C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var e#0_0: ref;
  var ##d#0_0: int;
  var ##e#0_0: ref;
  var ##r#0_0: ref;
  var ##C#0_0: Map;
  var ##d#0_1: int;
  var ##e#0_1: ref;
  var ##r#0_1: ref;
  var ##C#0_1: Map;
  var e##0_0: ref;
  var C##0_0: Map;
  var d0##0_0: int;
  var d1##0_0: int;
  var r0##0_0: ref;
  var r1##0_0: ref;
  var C'##0_0: Map;
  var e#1_0: ref;
  var ##d#1_0: int;
  var ##e#1_0: ref;
  var ##r#1_0: ref;
  var ##C#1_0: Map;
  var ##d#1_1: int;
  var ##e#1_1: ref;
  var ##r#1_1: ref;
  var ##C#1_1: Map;
  var d##1_0: int;
  var e##1_0: ref;
  var r##1_0: ref;
  var C##1_0: Map;
  var td##1_0: int;
  var r0##1_0: ref;
  var r1##1_0: ref;
  var C'##1_0: Map;

    // AddMethodImpl: JoinMaintainsReaches1, Impl$$M3.UnionFind.JoinMaintainsReaches1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#r00#0: ref, $ih#r10#0: ref, $ih#C0#0: Map, $ih#C'0#0: Map :: 
      { $Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType, $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType } 
        { $Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType, Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0)) } 
        { M3.__default.GoodCMap($ih#C'0#0), #M3.Contents.Link($ih#r10#0), $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType } 
        { M3.__default.GoodCMap($ih#C'0#0), #M3.Contents.Link($ih#r10#0), Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0)) } 
        { M3.__default.GoodCMap($ih#C'0#0), M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType), M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType) } 
        { M3.__default.GoodCMap($ih#C'0#0), M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType), M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType) } 
        { M3.__default.GoodCMap($ih#C'0#0), $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType, M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType) } 
        { M3.__default.GoodCMap($ih#C'0#0), $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType, Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0)) } 
        { M3.__default.GoodCMap($ih#C'0#0), Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0)), Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0)) } 
      $Is($ih#r00#0, Tclass.M3.Element())
           && $Is($ih#r10#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0))
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0))
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
             == M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && $ih#r00#0 != $ih#r10#0
           && Map#Equal($ih#C'0#0, 
            Map#Build(Map#Build($ih#C0#0, $Box($ih#r00#0), $Box(#M3.Contents.Link($ih#r10#0))), 
              $Box($ih#r10#0), 
              $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
                     + 1))))
           && M3.__default.GoodCMap($ih#C'0#0)
           && (($ih#r00#0 == null && r0#0 != null)
             || (($ih#r00#0 != null <==> r0#0 != null)
               && (($ih#r10#0 == null && r1#0 != null)
                 || (($ih#r10#0 != null <==> r1#0 != null)
                   && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                       && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                     || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                       && 
                      Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                       && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))
         ==> (forall d#2: int, e#6: ref, r#2: ref :: 
            { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#6, r#2, $ih#C'0#0) } 
              { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#6, r#2, $ih#C0#0) } 
            LitInt(0) <= d#2
                 && $Is(e#6, Tclass.M3.Element())
                 && 
                $Is(r#2, Tclass.M3.Element())
                 && $IsAlloc(r#2, Tclass.M3.Element(), $Heap)
               ==> 
              Set#IsMember(Map#Domain($ih#C0#0), $Box(e#6))
                 && M3.UnionFind.Reaches($LS($LZ), this, d#2, e#6, r#2, $ih#C0#0)
                 && r#2 != $ih#r00#0
                 && r#2 != $ih#r10#0
               ==> M3.UnionFind.Reaches($LS($LZ), this, d#2, e#6, r#2, $ih#C'0#0))
           && (forall e#7: ref :: 
            { M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#7, 
                $ih#r10#0, 
                $ih#C'0#0) } 
              { M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType), 
                e#7, 
                $ih#r00#0, 
                $ih#C0#0) } 
              { Set#IsMember(Map#Domain($ih#C0#0), $Box(e#7)) } 
            $Is(e#7, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($ih#C0#0), $Box(e#7))
                 && M3.UnionFind.Reaches($LS($LZ), 
                  this, 
                  M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType), 
                  e#7, 
                  $ih#r00#0, 
                  $ih#C0#0)
               ==> M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#7, 
                $ih#r10#0, 
                $ih#C'0#0))
           && (forall e#8: ref :: 
            { M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#8, 
                $ih#r10#0, 
                $ih#C'0#0) } 
              { M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#8, 
                $ih#r10#0, 
                $ih#C0#0) } 
              { Set#IsMember(Map#Domain($ih#C0#0), $Box(e#8)) } 
            $Is(e#8, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($ih#C0#0), $Box(e#8))
                 && M3.UnionFind.Reaches($LS($LZ), 
                  this, 
                  M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType), 
                  e#8, 
                  $ih#r10#0, 
                  $ih#C0#0)
               ==> M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#8, 
                $ih#r10#0, 
                $ih#C'0#0)));
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(255,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc e#0_0;
        assume $Is(e#0_0, Tclass.M3.Element());
        if (Set#IsMember(Map#Domain(C#0), $Box(e#0_0)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assert {:id "id1437"} {:subsumption 0} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
            assert {:id "id1438"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
            ##d#0_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0_0, Tclass._System.nat(), $Heap);
            ##e#0_0 := e#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_0, Tclass.M3.Element(), $Heap);
            ##r#0_0 := r0#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0_0, Tclass.M3.Element(), $Heap);
            ##C#0_0 := C#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1439"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_0)
               ==> M3.__default.GoodCMap(##C#0_0)
                 || (forall f#0_0: ref :: 
                  { $Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType } 
                  $Is(f#0_0, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#0_0), $Box(f#0_0))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#0_0), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType))));
            assert {:id "id1440"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_0), $Box(##e#0_0));
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
              e#0_0, 
              r0#0, 
              C#0);
        }

        assume Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#0_0, 
            r0#0, 
            C#0);
        assume {:id "id1441"} Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#0_0, 
            r0#0, 
            C#0);
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assert {:id "id1442"} {:subsumption 0} Set#IsMember(Map#Domain(C'#0), $Box(r1#0));
            assert {:id "id1443"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
            ##d#0_1 := M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0_1, Tclass._System.nat(), $Heap);
            ##e#0_1 := e#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_1, Tclass.M3.Element(), $Heap);
            ##r#0_1 := r1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0_1, Tclass.M3.Element(), $Heap);
            ##C#0_1 := C'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1444"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_1)
               ==> M3.__default.GoodCMap(##C#0_1)
                 || (forall f#0_1: ref :: 
                  { $Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType } 
                  $Is(f#0_1, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#0_1), $Box(f#0_1))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#0_1), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType))));
            assert {:id "id1445"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_1), $Box(##e#0_1));
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_0, 
              r1#0, 
              C'#0);
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_0, 
              r1#0, 
              C'#0);
            assume {:id "id1446"} M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_0, 
              r1#0, 
              C'#0);
            assume false;
        }

        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(258,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        assert {:id "id1447"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
        assert {:id "id1448"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        d0##0_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assert {:id "id1449"} Set#IsMember(Map#Domain(C'#0), $Box(r1#0));
        assert {:id "id1450"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        d1##0_0 := M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        r0##0_0 := r0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r1##0_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##0_0 := C'#0;
        call {:id "id1451"} Call$$M3.UnionFind.ExtendedReach_k(this, e##0_0, C##0_0, d0##0_0, d1##0_0, r0##0_0, r1##0_0, C'##0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        assert {:id "id1452"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#0_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_0, 
              r1#0, 
              C'#0)
             || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> e#0_0 == r1#0);
        assert {:id "id1453"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#0_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_0, 
              r1#0, 
              C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType); 
                M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType) != 0));
        assert {:id "id1454"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#0_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_0, 
              r1#0, 
              C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType); 
                M3.UnionFind.Reaches($LS($LS($LZ)), 
                  this, 
                  M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType) - 1, 
                  next#0_0, 
                  r1#0, 
                  C'#0)));
        assume false;
    }
    else
    {
        assume (forall e#0_1: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_1, 
              r1#0, 
              C'#0) } 
            { M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
              e#0_1, 
              r0#0, 
              C#0) } 
            { Set#IsMember(Map#Domain(C#0), $Box(e#0_1)) } 
          $Is(e#0_1, Tclass.M3.Element())
               && 
              Set#IsMember(Map#Domain(C#0), $Box(e#0_1))
               && M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
                e#0_1, 
                r0#0, 
                C#0)
             ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#0_1, 
              r1#0, 
              C'#0));
    }

    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(260,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc e#1_0;
        assume $Is(e#1_0, Tclass.M3.Element());
        if (Set#IsMember(Map#Domain(C#0), $Box(e#1_0)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assert {:id "id1455"} {:subsumption 0} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
            assert {:id "id1456"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
            ##d#1_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1_0, Tclass._System.nat(), $Heap);
            ##e#1_0 := e#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_0, Tclass.M3.Element(), $Heap);
            ##r#1_0 := r1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#1_0, Tclass.M3.Element(), $Heap);
            ##C#1_0 := C#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#1_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1457"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_0)
               ==> M3.__default.GoodCMap(##C#1_0)
                 || (forall f#1_0: ref :: 
                  { $Unbox(Map#Elements(##C#1_0)[$Box(f#1_0)]): DatatypeType } 
                  $Is(f#1_0, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#1_0), $Box(f#1_0))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_0)[$Box(f#1_0)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#1_0), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_0)[$Box(f#1_0)]): DatatypeType))));
            assert {:id "id1458"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_0), $Box(##e#1_0));
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C#0);
        }

        assume Set#IsMember(Map#Domain(C#0), $Box(e#1_0))
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C#0);
        assume {:id "id1459"} Set#IsMember(Map#Domain(C#0), $Box(e#1_0))
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C#0);
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assert {:id "id1460"} {:subsumption 0} Set#IsMember(Map#Domain(C'#0), $Box(r1#0));
            assert {:id "id1461"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
            ##d#1_1 := M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1_1, Tclass._System.nat(), $Heap);
            ##e#1_1 := e#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_1, Tclass.M3.Element(), $Heap);
            ##r#1_1 := r1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#1_1, Tclass.M3.Element(), $Heap);
            ##C#1_1 := C'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#1_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1462"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_1)
               ==> M3.__default.GoodCMap(##C#1_1)
                 || (forall f#1_1: ref :: 
                  { $Unbox(Map#Elements(##C#1_1)[$Box(f#1_1)]): DatatypeType } 
                  $Is(f#1_1, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#1_1), $Box(f#1_1))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_1)[$Box(f#1_1)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#1_1), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_1)[$Box(f#1_1)]): DatatypeType))));
            assert {:id "id1463"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_1), $Box(##e#1_1));
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0);
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0);
            assume {:id "id1464"} M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0);
            assume false;
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(263,41)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1465"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
        assert {:id "id1466"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r##1_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##1_0 := C#0;
        assert {:id "id1467"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
        assert {:id "id1468"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        td##1_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        r0##1_0 := r0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r1##1_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##1_0 := C'#0;
        call {:id "id1469"} Call$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k(this, d##1_0, e##1_0, r##1_0, C##1_0, td##1_0, r0##1_0, r1##1_0, C'##1_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id1470"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0)
             || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType)
               ==> e#1_0 == r1#0);
        assert {:id "id1471"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType)
               ==> (var next#1_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType); 
                M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType) != 0));
        assert {:id "id1472"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType)
               ==> (var next#1_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType); 
                M3.UnionFind.Reaches($LS($LS($LZ)), 
                  this, 
                  M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType) - 1, 
                  next#1_0, 
                  r1#0, 
                  C'#0)));
        assume false;
    }
    else
    {
        assume (forall e#1_1: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_1, 
              r1#0, 
              C'#0) } 
            { M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_1, 
              r1#0, 
              C#0) } 
            { Set#IsMember(Map#Domain(C#0), $Box(e#1_1)) } 
          $Is(e#1_1, Tclass.M3.Element())
               && 
              Set#IsMember(Map#Domain(C#0), $Box(e#1_1))
               && M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
                e#1_1, 
                r1#0, 
                C#0)
             ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType), 
              e#1_1, 
              r1#0, 
              C'#0));
    }
}



procedure {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot' (well-formedness)"} CheckWellFormed$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot' (well-formedness)"} CheckWellFormed$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k(this: ref, 
    d#0: int, 
    e#0: ref, 
    r#0: ref, 
    C#0: Map, 
    td#0: int, 
    r0#0: ref, 
    r1#0: ref, 
    C'#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##C#0: Map;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#1: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#2: Map;
  var ##C#3: Map;
  var ##d#2: int;
  var ##e#2: ref;
  var ##r#2: ref;
  var ##C#4: Map;


    // AddMethodImpl: ReachUnaffectedByChangeFromRoot', CheckWellFormed$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C#0);
    assume {:id "id1473"} M3.__default.GoodCMap(C#0);
    assume {:id "id1474"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#0 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
    ##r#0 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
    ##C#1 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1475"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1)
       ==> M3.__default.GoodCMap(##C#1)
         || (forall f#0: ref :: 
          { $Unbox(Map#Elements(##C#1)[$Box(f#0)]): DatatypeType } 
          $Is(f#0, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#1), $Box(f#0))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#1)[$Box(f#0)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#1), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#1)[$Box(f#0)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#1);
    assert {:id "id1476"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1), $Box(##e#0));
    assume Set#IsMember(Map#Domain(##C#1), $Box(##e#0));
    assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0);
    assume {:id "id1477"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0);
    assume {:id "id1478"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1479"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1480"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1481"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1482"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1483"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1484"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assert {:id "id1485"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1486"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1487"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1488"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
       == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1489"} r0#0 != r1#0;
    assert {:id "id1490"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1491"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1492"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1493"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1494"} $Is(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1, 
      Tclass._System.nat());
    assume {:id "id1495"} Map#Equal(C'#0, 
      Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
        $Box(r1#0), 
        $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#1 := td#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
    ##e#1 := r0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
    ##r#1 := r0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
    ##C#2 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#2, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1496"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#2)
       ==> M3.__default.GoodCMap(##C#2)
         || (forall f#1: ref :: 
          { $Unbox(Map#Elements(##C#2)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#2), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#2)[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#2), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#2)[$Box(f#1)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#2);
    assert {:id "id1497"} {:subsumption 0} Set#IsMember(Map#Domain(##C#2), $Box(##e#1));
    assume Set#IsMember(Map#Domain(##C#2), $Box(##e#1));
    assume M3.UnionFind.Reaches#canCall(this, td#0, r0#0, r0#0, C#0);
    assume {:id "id1498"} M3.UnionFind.Reaches($LS($LZ), this, td#0, r0#0, r0#0, C#0);
    assume {:id "id1499"} r0#0 != r#0;
    ##C#3 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#3, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C'#0);
    assume {:id "id1500"} M3.__default.GoodCMap(C'#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assert {:id "id1501"} $Is(d#0 + 1, Tclass._System.nat());
    ##d#2 := d#0 + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#2, Tclass._System.nat(), $Heap);
    ##e#2 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.M3.Element(), $Heap);
    ##r#2 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#2, Tclass.M3.Element(), $Heap);
    ##C#4 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#4, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1502"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#4)
       ==> M3.__default.GoodCMap(##C#4)
         || (forall f#2: ref :: 
          { $Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType } 
          $Is(f#2, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#4), $Box(f#2))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#4), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#4);
    assert {:id "id1503"} {:subsumption 0} Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
    assume Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
    assume M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0);
    assume {:id "id1504"} M3.UnionFind.Reaches($LS($LZ), this, d#0 + 1, e#0, r#0, C'#0);
}



procedure {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot' (call)"} Call$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1505"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#3: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType } 
        $Is(f#3, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#3))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType))));
  requires {:id "id1506"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id1507"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  requires {:id "id1508"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  requires {:id "id1509"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#0, r#0, C#0)));
  requires {:id "id1510"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1511"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1512"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1513"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1514"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1515"} r0#0 != r1#0;
  requires {:id "id1516"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1517"} Map#Equal(C'#0, 
    Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
      $Box(r1#0), 
      $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
  requires {:id "id1518"} M3.UnionFind.Reaches#canCall(this, td#0, r0#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, r0#0, r0#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
         ==> r0#0 == r0#0);
  requires {:id "id1519"} M3.UnionFind.Reaches#canCall(this, td#0, r0#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, r0#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType); 
          td#0 != 0));
  requires {:id "id1520"} M3.UnionFind.Reaches#canCall(this, td#0, r0#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, r0#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, td#0 - 1, next#2, r0#0, C#0)));
  requires {:id "id1521"} r0#0 != r#0;
  requires {:id "id1522"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#4: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType } 
        $Is(f#4, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#4))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0);
  free ensures {:id "id1523"} M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0 + 1, e#0, r#0, C'#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
        d#0 + 1 != 0
           && M3.UnionFind.Reaches($LS($LZ), this, d#0 + 1 - 1, next#5, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot' (correctness)"} Impl$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1524"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#5: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType } 
      $Is(f#5, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#5))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id1525"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id1526"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#7 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#7, r#0, C#0)));
  requires {:id "id1527"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1528"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1529"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1530"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1531"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1532"} r0#0 != r1#0;
  requires {:id "id1533"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1534"} Map#Equal(C'#0, 
    Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
      $Box(r1#0), 
      $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
  free requires {:id "id1535"} M3.UnionFind.Reaches#canCall(this, td#0, r0#0, r0#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, td#0, r0#0, r0#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
       then r0#0 == r0#0
       else (var next#9 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType); 
        td#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, td#0 - 1, next#9, r0#0, C#0)));
  requires {:id "id1536"} r0#0 != r#0;
  free requires {:id "id1537"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#6: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType } 
      $Is(f#6, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#6))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0);
  ensures {:id "id1538"} M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0 + 1, e#0, r#0, C'#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  ensures {:id "id1539"} M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0 + 1, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#10 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          d#0 + 1 != 0));
  ensures {:id "id1540"} M3.UnionFind.Reaches#canCall(this, d#0 + 1, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0 + 1, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#10 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 + 1 - 1, next#10, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot' (correctness)"} Impl$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k(this: ref, 
    d#0: int, 
    e#0: ref, 
    r#0: ref, 
    C#0: Map, 
    td#0: int, 
    r0#0: ref, 
    r1#0: ref, 
    C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: ReachUnaffectedByChangeFromRoot', Impl$$M3.UnionFind.ReachUnaffectedByChangeFromRoot_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#d0#0: int, $ih#e0#0: ref, $ih#r0#0: ref, $ih#C0#0: Map :: 
      LitInt(0) <= $ih#d0#0
           && $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#r0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box(r0#0))
           && Set#IsMember(Map#Domain($ih#C0#0), $Box(r1#0))
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box(r0#0)]): DatatypeType)
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box(r1#0)]): DatatypeType)
           && M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box(r0#0)]): DatatypeType)
             == M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box(r1#0)]): DatatypeType)
           && r0#0 != r1#0
           && 
          M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box(r0#0)]): DatatypeType)
           && Map#Equal(C'#0, 
            Map#Build(Map#Build($ih#C0#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
              $Box(r1#0), 
              $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box(r1#0)]): DatatypeType) + 1))))
           && 
          M3.UnionFind.Reaches($LS($LZ), this, td#0, r0#0, r0#0, $ih#C0#0)
           && r0#0 != $ih#r0#0
           && M3.__default.GoodCMap(C'#0)
           && ((0 <= $ih#d0#0 && $ih#d0#0 < d#0)
             || ($ih#d0#0 == d#0
               && (($ih#e0#0 == null && e#0 != null)
                 || (($ih#e0#0 != null <==> e#0 != null)
                   && (($ih#r0#0 == null && r#0 != null)
                     || (($ih#r0#0 != null <==> r#0 != null)
                       && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                         || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && ((0 <= td#0 && td#0 < td#0)
                             || (td#0 == td#0
                               && ((r0#0 == null && r0#0 != null)
                                 || ((r0#0 != null <==> r0#0 != null)
                                   && ((r1#0 == null && r1#0 != null)
                                     || ((r1#0 != null <==> r1#0 != null)
                                       && 
                                      Set#Subset(Map#Domain(C'#0), Map#Domain(C'#0))
                                       && !Set#Subset(Map#Domain(C'#0), Map#Domain(C'#0))))))))))))))))
         ==> M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0 + 1, $ih#e0#0, $ih#r0#0, C'#0));
    $_reverifyPost := false;
}



procedure {:verboseName "M3.UnionFind.ExtendedReach' (well-formedness)"} CheckWellFormed$$M3.UnionFind.ExtendedReach_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ExtendedReach' (well-formedness)"} CheckWellFormed$$M3.UnionFind.ExtendedReach_k(this: ref, 
    e#0: ref, 
    C#0: Map, 
    d0#0: int, 
    d1#0: int, 
    r0#0: ref, 
    r1#0: ref, 
    C'#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##C#0: Map;
  var ##C#1: Map;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#2: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#3: Map;


    // AddMethodImpl: ExtendedReach', CheckWellFormed$$M3.UnionFind.ExtendedReach_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C#0);
    assume {:id "id1541"} M3.__default.GoodCMap(C#0);
    ##C#1 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C'#0);
    assume {:id "id1542"} M3.__default.GoodCMap(C'#0);
    assume {:id "id1543"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1544"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1545"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1546"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1547"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1548"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1549"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assert {:id "id1550"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1551"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1552"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1553"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
       == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1554"} r0#0 != r1#0;
    assert {:id "id1555"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1556"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1557"} $Is(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1, 
      Tclass._System.nat());
    assume {:id "id1558"} Map#Equal(C'#0, 
      Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
        $Box(r1#0), 
        $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
    assert {:id "id1559"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1560"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1561"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assert {:id "id1562"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assume {:id "id1563"} d0#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1564"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1565"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1566"} Set#IsMember(Map#Domain(C'#0), $Box(r1#0));
    assert {:id "id1567"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1568"} d1#0 <= M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1569"} d0#0 < d1#0;
    assume {:id "id1570"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#0 := d0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
    ##r#0 := r0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
    ##C#2 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#2, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1571"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#2)
       ==> M3.__default.GoodCMap(##C#2)
         || (forall f#0: ref :: 
          { $Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType } 
          $Is(f#0, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#2), $Box(f#0))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#2), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#2);
    assert {:id "id1572"} {:subsumption 0} Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
    assume Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
    assume M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0);
    assume {:id "id1573"} M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#1 := d1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
    ##r#1 := r1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
    ##C#3 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#3, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1574"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#3)
       ==> M3.__default.GoodCMap(##C#3)
         || (forall f#1: ref :: 
          { $Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#3), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#3), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#3);
    assert {:id "id1575"} {:subsumption 0} Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
    assume Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
    assume M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0);
    assume {:id "id1576"} M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0);
}



procedure {:verboseName "M3.UnionFind.ExtendedReach' (call)"} Call$$M3.UnionFind.ExtendedReach_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1577"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#2: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType } 
        $Is(f#2, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#2))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType))));
  requires {:id "id1578"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#3: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#3)]): DatatypeType } 
        $Is(f#3, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#3))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#3)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#3)]): DatatypeType))));
  requires {:id "id1579"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1580"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1581"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1582"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1583"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1584"} r0#0 != r1#0;
  requires {:id "id1585"} Map#Equal(C'#0, 
    Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
      $Box(r1#0), 
      $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
  requires {:id "id1586"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1587"} d0#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1588"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1589"} d1#0 <= M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1590"} d0#0 < d1#0;
  requires {:id "id1591"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id1592"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r0#0);
  requires {:id "id1593"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d0#0 != 0));
  requires {:id "id1594"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d0#0 - 1, next#0, r0#0, C#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0);
  free ensures {:id "id1595"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r1#0
       else (var next#3 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
        d1#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d1#0 - 1, next#3, r1#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.ExtendedReach' (correctness)"} Impl$$M3.UnionFind.ExtendedReach_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1596"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#4: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType } 
      $Is(f#4, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#4))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType))));
  free requires {:id "id1597"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#5: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType } 
      $Is(f#5, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#5))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id1598"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1599"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1600"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1601"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1602"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     == M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1603"} r0#0 != r1#0;
  requires {:id "id1604"} Map#Equal(C'#0, 
    Map#Build(Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))), 
      $Box(r1#0), 
      $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) + 1))));
  requires {:id "id1605"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1606"} d0#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1607"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1608"} d1#0 <= M3.Contents.depth($Unbox(Map#Elements(C'#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1609"} d0#0 < d1#0;
  requires {:id "id1610"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id1611"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r0#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d0#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d0#0 - 1, next#5, r0#0, C#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0);
  ensures {:id "id1612"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r1#0);
  ensures {:id "id1613"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#6 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          d1#0 != 0));
  ensures {:id "id1614"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#6 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d1#0 - 1, next#6, r1#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ExtendedReach' (correctness)"} Impl$$M3.UnionFind.ExtendedReach_k(this: ref, 
    e#0: ref, 
    C#0: Map, 
    d0#0: int, 
    d1#0: int, 
    r0#0: ref, 
    r1#0: ref, 
    C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#1#0_0: ref;
  var next#0_0: ref;
  var let#0_0#0#0: ref;
  var e##0_0: ref;
  var C##0_0: Map;
  var d0##0_0: int;
  var d1##0_0: int;
  var r0##0_0: ref;
  var r1##0_0: ref;
  var C'##0_0: Map;
  var _mcc#0#1_0: int;

    // AddMethodImpl: ExtendedReach', Impl$$M3.UnionFind.ExtendedReach_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#e0#0: ref, 
        $ih#C0#0: Map, 
        $ih#d00#0: int, 
        $ih#d10#0: int, 
        $ih#r00#0: ref, 
        $ih#r10#0: ref, 
        $ih#C'0#0: Map :: 
      { M3.UnionFind.Reaches($LS($LZ), this, $ih#d10#0, $ih#e0#0, $ih#r10#0, $ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d00#0, $ih#e0#0, $ih#r00#0, $ih#C0#0) } 
      $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && LitInt(0) <= $ih#d00#0
           && LitInt(0) <= $ih#d10#0
           && $Is($ih#r00#0, Tclass.M3.Element())
           && $Is($ih#r10#0, Tclass.M3.Element())
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && M3.__default.GoodCMap($ih#C'0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0))
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0))
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
             == M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && $ih#r00#0 != $ih#r10#0
           && Map#Equal($ih#C'0#0, 
            Map#Build(Map#Build($ih#C0#0, $Box($ih#r00#0), $Box(#M3.Contents.Link($ih#r10#0))), 
              $Box($ih#r10#0), 
              $Box(#M3.Contents.Root(M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
                     + 1))))
           && 
          M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && $ih#d00#0
             <= M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && $ih#d10#0
             <= M3.Contents.depth($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#r10#0)]): DatatypeType)
           && $ih#d00#0 < $ih#d10#0
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#d00#0, $ih#e0#0, $ih#r00#0, $ih#C0#0)
           && (($ih#e0#0 == null && e#0 != null)
             || (($ih#e0#0 != null <==> e#0 != null)
               && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                   && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                 || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                   && ((0 <= $ih#d00#0 && $ih#d00#0 < d0#0)
                     || ($ih#d00#0 == d0#0
                       && ((0 <= $ih#d10#0 && $ih#d10#0 < d1#0)
                         || ($ih#d10#0 == d1#0
                           && (($ih#r00#0 == null && r0#0 != null)
                             || (($ih#r00#0 != null <==> r0#0 != null)
                               && (($ih#r10#0 == null && r1#0 != null)
                                 || (($ih#r10#0 != null <==> r1#0 != null)
                                   && 
                                  Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                                   && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))))))))
         ==> M3.UnionFind.Reaches($LS($LZ), this, $ih#d10#0, $ih#e0#0, $ih#r10#0, $ih#C'0#0));
    $_reverifyPost := false;
    assert {:id "id1615"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
    assume true;
    havoc _mcc#1#0_0;
    havoc _mcc#0#1_0;
    if ($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType
       == #M3.Contents.Root(_mcc#0#1_0))
    {
        assume LitInt(0) <= _mcc#0#1_0;
    }
    else if ($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType
       == #M3.Contents.Link(_mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass.M3.Element());
        havoc next#0_0;
        assume $Is(next#0_0, Tclass.M3.Element())
           && $IsAlloc(next#0_0, Tclass.M3.Element(), $Heap);
        assume {:id "id1616"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.M3.Element());
        assume {:id "id1617"} next#0_0 == let#0_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(289,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := next#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1618"} $Is(d0#0 - 1, Tclass._System.nat());
        d0##0_0 := d0#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1619"} $Is(d1#0 - 1, Tclass._System.nat());
        d1##0_0 := d1#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r0##0_0 := r0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r1##0_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##0_0 := C'#0;
        assert {:id "id1620"} 0 <= d0#0
           || (e##0_0 == null && e#0 != null)
           || (Set#Subset(Map#Domain(C##0_0), Map#Domain(C#0))
             && !Set#Subset(Map#Domain(C#0), Map#Domain(C##0_0)))
           || d0##0_0 == d0#0;
        assert {:id "id1621"} 0 <= d1#0
           || (e##0_0 == null && e#0 != null)
           || (Set#Subset(Map#Domain(C##0_0), Map#Domain(C#0))
             && !Set#Subset(Map#Domain(C#0), Map#Domain(C##0_0)))
           || d0##0_0 < d0#0
           || d1##0_0 == d1#0;
        assert {:id "id1622"} (e##0_0 == null && e#0 != null)
           || ((e##0_0 != null <==> e#0 != null)
             && ((Set#Subset(Map#Domain(C##0_0), Map#Domain(C#0))
                 && !Set#Subset(Map#Domain(C#0), Map#Domain(C##0_0)))
               || (Set#Equal(Map#Domain(C##0_0), Map#Domain(C#0))
                 && (d0##0_0 < d0#0
                   || (d0##0_0 == d0#0
                     && (d1##0_0 < d1#0
                       || (d1##0_0 == d1#0
                         && ((r0##0_0 == null && r0#0 != null)
                           || ((r0##0_0 != null <==> r0#0 != null)
                             && ((r1##0_0 == null && r1#0 != null)
                               || ((r1##0_0 != null <==> r1#0 != null)
                                 && 
                                Set#Subset(Map#Domain(C'##0_0), Map#Domain(C'#0))
                                 && !Set#Subset(Map#Domain(C'#0), Map#Domain(C'##0_0)))))))))))));
        call {:id "id1623"} Call$$M3.UnionFind.ExtendedReach_k(this, e##0_0, C##0_0, d0##0_0, d1##0_0, r0##0_0, r1##0_0, C'##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "M3.UnionFind.JoinMaintainsReaches0 (well-formedness)"} CheckWellFormed$$M3.UnionFind.JoinMaintainsReaches0(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.JoinMaintainsReaches0 (well-formedness)"} CheckWellFormed$$M3.UnionFind.JoinMaintainsReaches0(this: ref, r0#0: ref, r1#0: ref, C#0: Map, C'#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##C#0: Map;
  var ##C#1: Map;
  var d#0: int;
  var e#0: ref;
  var r#0: ref;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#2: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#3: Map;
  var e#2: ref;
  var ##d#2: int;
  var ##e#2: ref;
  var ##r#2: ref;
  var ##C#4: Map;
  var ##d#3: int;
  var ##e#3: ref;
  var ##r#3: ref;
  var ##C#5: Map;


    // AddMethodImpl: JoinMaintainsReaches0, CheckWellFormed$$M3.UnionFind.JoinMaintainsReaches0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C#0);
    assume {:id "id1624"} M3.__default.GoodCMap(C#0);
    assume {:id "id1625"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1626"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1627"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1628"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1629"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1630"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1631"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assert {:id "id1632"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1633"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1634"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1635"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
       < M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1636"} Map#Equal(C'#0, Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))));
    ##C#1 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C'#0);
    assume {:id "id1637"} M3.__default.GoodCMap(C'#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc d#0;
    havoc e#0;
    havoc r#0;
    assume LitInt(0) <= d#0
       && 
      $Is(e#0, Tclass.M3.Element())
       && $IsAlloc(e#0, Tclass.M3.Element(), $Heap)
       && 
      $Is(r#0, Tclass.M3.Element())
       && $IsAlloc(r#0, Tclass.M3.Element(), $Heap);
    if (*)
    {
        assume {:id "id1638"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        ##d#0 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
        ##e#0 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
        ##r#0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
        ##C#2 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#2, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1639"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#2)
           ==> M3.__default.GoodCMap(##C#2)
             || (forall f#0: ref :: 
              { $Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType } 
              $Is(f#0, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#2), $Box(f#0))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#2), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#2);
        assert {:id "id1640"} {:subsumption 0} Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
        assume Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
        assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0);
        assume {:id "id1641"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0);
        assume {:id "id1642"} r#0 != r0#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        ##d#1 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
        ##e#1 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
        ##r#1 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
        ##C#3 := C'#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#3, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1643"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#3)
           ==> M3.__default.GoodCMap(##C#3)
             || (forall f#1: ref :: 
              { $Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType } 
              $Is(f#1, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#3), $Box(f#1))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#3), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#3);
        assert {:id "id1644"} {:subsumption 0} Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
        assume Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
        assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
        assume {:id "id1645"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0);
    }
    else
    {
        assume {:id "id1646"} Set#IsMember(Map#Domain(C#0), $Box(e#0))
             && M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
             && r#0 != r0#0
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0);
    }

    assume {:id "id1647"} (forall d#1: int, e#1: ref, r#1: ref :: 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
        { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
      LitInt(0) <= d#1
           && $Is(e#1, Tclass.M3.Element())
           && 
          $Is(r#1, Tclass.M3.Element())
           && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(e#1))
           && M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           && r#1 != r0#0
         ==> M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0));
    havoc e#2;
    assume $Is(e#2, Tclass.M3.Element()) && $IsAlloc(e#2, Tclass.M3.Element(), $Heap);
    if (*)
    {
        assume {:id "id1648"} Set#IsMember(Map#Domain(C#0), $Box(e#2));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assert {:id "id1649"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
        assert {:id "id1650"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        ##d#2 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#2, Tclass._System.nat(), $Heap);
        ##e#2 := e#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2, Tclass.M3.Element(), $Heap);
        ##r#2 := r0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#2, Tclass.M3.Element(), $Heap);
        ##C#4 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#4, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1651"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#4)
           ==> M3.__default.GoodCMap(##C#4)
             || (forall f#2: ref :: 
              { $Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType } 
              $Is(f#2, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#4), $Box(f#2))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#4), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#4);
        assert {:id "id1652"} {:subsumption 0} Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
        assume Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
        assume M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#2, 
          r0#0, 
          C#0);
        assume {:id "id1653"} M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#2, 
          r0#0, 
          C#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assert {:id "id1654"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
        assert {:id "id1655"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        ##d#3 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#3, Tclass._System.nat(), $Heap);
        ##e#3 := e#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#3, Tclass.M3.Element(), $Heap);
        ##r#3 := r1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##r#3, Tclass.M3.Element(), $Heap);
        ##C#5 := C'#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#5, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
        assert {:id "id1656"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#5)
           ==> M3.__default.GoodCMap(##C#5)
             || (forall f#3: ref :: 
              { $Unbox(Map#Elements(##C#5)[$Box(f#3)]): DatatypeType } 
              $Is(f#3, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain(##C#5), $Box(f#3))
                   && M3.Contents.Link_q($Unbox(Map#Elements(##C#5)[$Box(f#3)]): DatatypeType)
                 ==> Set#IsMember(Map#Domain(##C#5), 
                  $Box(M3.Contents.next($Unbox(Map#Elements(##C#5)[$Box(f#3)]): DatatypeType))));
        assume M3.__default.GoodCMap(##C#5);
        assert {:id "id1657"} {:subsumption 0} Set#IsMember(Map#Domain(##C#5), $Box(##e#3));
        assume Set#IsMember(Map#Domain(##C#5), $Box(##e#3));
        assume M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#2, 
          r1#0, 
          C'#0);
        assume {:id "id1658"} M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#2, 
          r1#0, 
          C'#0);
    }
    else
    {
        assume {:id "id1659"} Set#IsMember(Map#Domain(C#0), $Box(e#2))
             && M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
              e#2, 
              r0#0, 
              C#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#2, 
            r1#0, 
            C'#0);
    }

    assume {:id "id1660"} (forall e#3: ref :: 
      { M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#3, 
          r1#0, 
          C'#0) } 
        { M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0) } 
        { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
      $Is(e#3, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(e#3))
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#3, 
            r0#0, 
            C#0)
         ==> M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
          e#3, 
          r1#0, 
          C'#0));
}



procedure {:verboseName "M3.UnionFind.JoinMaintainsReaches0 (call)"} Call$$M3.UnionFind.JoinMaintainsReaches0(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1661"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#4: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType } 
        $Is(f#4, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#4))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType))));
  requires {:id "id1662"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1663"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1664"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1665"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1666"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     < M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1667"} Map#Equal(C'#0, Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))));
  requires {:id "id1668"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#5: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType } 
        $Is(f#5, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#5))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && $Is(r#1, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
       ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C#0)
         && (M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           ==> 
          r#1 != r0#0
           ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C'#0)));
  free ensures {:id "id1669"} (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && 
        $Is(r#1, Tclass.M3.Element())
         && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
         && M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
         && r#1 != r0#0
       ==> M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0));
  free ensures (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
       ==> M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
         && (M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#3, 
            r0#0, 
            C#0)
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#3, 
            r1#0, 
            C'#0)));
  free ensures {:id "id1670"} (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
         && M3.UnionFind.Reaches($LS($LZ), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
       ==> M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.JoinMaintainsReaches0 (correctness)"} Impl$$M3.UnionFind.JoinMaintainsReaches0(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1671"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#6: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType } 
      $Is(f#6, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#6))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType))));
  requires {:id "id1672"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1673"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1674"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1675"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1676"} M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType)
     < M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1677"} Map#Equal(C'#0, Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))));
  free requires {:id "id1678"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#7: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType } 
      $Is(f#7, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#7))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && $Is(r#1, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
       ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C#0)
         && (M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           ==> 
          r#1 != r0#0
           ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C'#0)));
  ensures {:id "id1679"} (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && 
        $Is(r#1, Tclass.M3.Element())
         && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
         && M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C#0)
         && r#1 != r0#0
       ==> M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C'#0));
  free ensures (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
       ==> M3.UnionFind.Reaches#canCall(this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
         && (M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#3, 
            r0#0, 
            C#0)
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#3, 
            r1#0, 
            C'#0)));
  ensures {:id "id1680"} (forall e#3: ref :: 
    { M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0) } 
      { M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
        e#3, 
        r0#0, 
        C#0) } 
      { Set#IsMember(Map#Domain(C#0), $Box(e#3)) } 
    $Is(e#3, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#3))
         && M3.UnionFind.Reaches($LS($LS($LZ)), 
          this, 
          M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
          e#3, 
          r0#0, 
          C#0)
       ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
        this, 
        M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
        e#3, 
        r1#0, 
        C'#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.JoinMaintainsReaches0 (correctness)"} Impl$$M3.UnionFind.JoinMaintainsReaches0(this: ref, r0#0: ref, r1#0: ref, C#0: Map, C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var d#0_0: int;
  var e#0_0: ref;
  var r#0_0: ref;
  var ##d#0_0: int;
  var ##e#0_0: ref;
  var ##r#0_0: ref;
  var ##C#0_0: Map;
  var ##d#0_1: int;
  var ##e#0_1: ref;
  var ##r#0_1: ref;
  var ##C#0_1: Map;
  var d##0_0: int;
  var e##0_0: ref;
  var r##0_0: ref;
  var C##0_0: Map;
  var td##0_0: int;
  var tt##0_0: ref;
  var tm##0_0: ref;
  var C'##0_0: Map;
  var e#1_0: ref;
  var ##d#1_0: int;
  var ##e#1_0: ref;
  var ##r#1_0: ref;
  var ##C#1_0: Map;
  var ##d#1_1: int;
  var ##e#1_1: ref;
  var ##r#1_1: ref;
  var ##C#1_1: Map;
  var e##1_0: ref;
  var C##1_0: Map;
  var d0##1_0: int;
  var d1##1_0: int;
  var r0##1_0: ref;
  var r1##1_0: ref;
  var C'##1_0: Map;

    // AddMethodImpl: JoinMaintainsReaches0, Impl$$M3.UnionFind.JoinMaintainsReaches0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#r00#0: ref, $ih#r10#0: ref, $ih#C0#0: Map, $ih#C'0#0: Map :: 
      { M3.__default.GoodCMap($ih#C'0#0), #M3.Contents.Link($ih#r10#0), $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType } 
        { M3.__default.GoodCMap($ih#C'0#0), #M3.Contents.Link($ih#r10#0), Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0)) } 
        { M3.__default.GoodCMap($ih#C'0#0), M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType), M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType) } 
        { M3.__default.GoodCMap($ih#C'0#0), M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType), M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType) } 
        { M3.__default.GoodCMap($ih#C'0#0), $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType, M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType) } 
        { M3.__default.GoodCMap($ih#C'0#0), $Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType, Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0)) } 
        { M3.__default.GoodCMap($ih#C'0#0), Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0)), Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0)) } 
      $Is($ih#r00#0, Tclass.M3.Element())
           && $Is($ih#r10#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0))
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0))
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
             < M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && Map#Equal($ih#C'0#0, 
            Map#Build($ih#C0#0, $Box($ih#r00#0), $Box(#M3.Contents.Link($ih#r10#0))))
           && M3.__default.GoodCMap($ih#C'0#0)
           && (($ih#r00#0 == null && r0#0 != null)
             || (($ih#r00#0 != null <==> r0#0 != null)
               && (($ih#r10#0 == null && r1#0 != null)
                 || (($ih#r10#0 != null <==> r1#0 != null)
                   && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                       && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                     || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                       && 
                      Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                       && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))
         ==> (forall d#2: int, e#4: ref, r#2: ref :: 
            { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#4, r#2, $ih#C'0#0) } 
              { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#4, r#2, $ih#C0#0) } 
            LitInt(0) <= d#2
                 && $Is(e#4, Tclass.M3.Element())
                 && 
                $Is(r#2, Tclass.M3.Element())
                 && $IsAlloc(r#2, Tclass.M3.Element(), $Heap)
               ==> 
              Set#IsMember(Map#Domain($ih#C0#0), $Box(e#4))
                 && M3.UnionFind.Reaches($LS($LZ), this, d#2, e#4, r#2, $ih#C0#0)
                 && r#2 != $ih#r00#0
               ==> M3.UnionFind.Reaches($LS($LZ), this, d#2, e#4, r#2, $ih#C'0#0))
           && (forall e#5: ref :: 
            { M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#5, 
                $ih#r10#0, 
                $ih#C'0#0) } 
              { M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType), 
                e#5, 
                $ih#r00#0, 
                $ih#C0#0) } 
              { Set#IsMember(Map#Domain($ih#C0#0), $Box(e#5)) } 
            $Is(e#5, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($ih#C0#0), $Box(e#5))
                 && M3.UnionFind.Reaches($LS($LZ), 
                  this, 
                  M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType), 
                  e#5, 
                  $ih#r00#0, 
                  $ih#C0#0)
               ==> M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType), 
                e#5, 
                $ih#r10#0, 
                $ih#C'0#0)));
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(300,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc d#0_0, e#0_0, r#0_0;
        assume LitInt(0) <= d#0_0
           && $Is(e#0_0, Tclass.M3.Element())
           && 
          $Is(r#0_0, Tclass.M3.Element())
           && $IsAlloc(r#0_0, Tclass.M3.Element(), $Heap);
        if (Set#IsMember(Map#Domain(C#0), $Box(e#0_0)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            ##d#0_0 := d#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0_0, Tclass._System.nat(), $Heap);
            ##e#0_0 := e#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_0, Tclass.M3.Element(), $Heap);
            ##r#0_0 := r#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0_0, Tclass.M3.Element(), $Heap);
            ##C#0_0 := C#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1681"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_0)
               ==> M3.__default.GoodCMap(##C#0_0)
                 || (forall f#0_0: ref :: 
                  { $Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType } 
                  $Is(f#0_0, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#0_0), $Box(f#0_0))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#0_0), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType))));
            assert {:id "id1682"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_0), $Box(##e#0_0));
            assume M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C#0);
        }

        if (Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           && M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C#0))
        {
        }

        assume Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           ==> M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C#0);
        assume {:id "id1683"} Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           && M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C#0)
           && r#0_0 != r0#0;
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            ##d#0_1 := d#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0_1, Tclass._System.nat(), $Heap);
            ##e#0_1 := e#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_1, Tclass.M3.Element(), $Heap);
            ##r#0_1 := r#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0_1, Tclass.M3.Element(), $Heap);
            ##C#0_1 := C'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1684"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_1)
               ==> M3.__default.GoodCMap(##C#0_1)
                 || (forall f#0_1: ref :: 
                  { $Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType } 
                  $Is(f#0_1, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#0_1), $Box(f#0_1))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#0_1), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType))));
            assert {:id "id1685"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_1), $Box(##e#0_1));
            assume M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0);
            assume M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0);
            assume {:id "id1686"} M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0);
            assume false;
        }

        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(303,40)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##0_0 := d#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r##0_0 := r#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        assert {:id "id1687"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
        assert {:id "id1688"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        td##0_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        tt##0_0 := r0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tm##0_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##0_0 := C'#0;
        call {:id "id1689"} Call$$M3.UnionFind.ReachUnaffectedByChangeFromRoot(this, d##0_0, e##0_0, r##0_0, C##0_0, td##0_0, tt##0_0, tm##0_0, C'##0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        assert {:id "id1690"} M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0)
             || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> e#0_0 == r#0_0);
        assert {:id "id1691"} M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType); 
                d#0_0 != 0));
        assert {:id "id1692"} M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType); 
                M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0_0 - 1, next#0_0, r#0_0, C'#0)));
        assume false;
    }
    else
    {
        assume (forall d#0_1: int, e#0_1: ref, r#0_1: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C'#0) } 
            { M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C#0) } 
          LitInt(0) <= d#0_1
               && $Is(e#0_1, Tclass.M3.Element())
               && 
              $Is(r#0_1, Tclass.M3.Element())
               && $IsAlloc(r#0_1, Tclass.M3.Element(), $Heap)
               && 
              Set#IsMember(Map#Domain(C#0), $Box(e#0_1))
               && M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C#0)
               && r#0_1 != r0#0
             ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C'#0));
    }

    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(305,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc e#1_0;
        assume $Is(e#1_0, Tclass.M3.Element());
        if (Set#IsMember(Map#Domain(C#0), $Box(e#1_0)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assert {:id "id1693"} {:subsumption 0} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
            assert {:id "id1694"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
            ##d#1_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1_0, Tclass._System.nat(), $Heap);
            ##e#1_0 := e#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_0, Tclass.M3.Element(), $Heap);
            ##r#1_0 := r0#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#1_0, Tclass.M3.Element(), $Heap);
            ##C#1_0 := C#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#1_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1695"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_0)
               ==> M3.__default.GoodCMap(##C#1_0)
                 || (forall f#1_0: ref :: 
                  { $Unbox(Map#Elements(##C#1_0)[$Box(f#1_0)]): DatatypeType } 
                  $Is(f#1_0, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#1_0), $Box(f#1_0))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_0)[$Box(f#1_0)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#1_0), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_0)[$Box(f#1_0)]): DatatypeType))));
            assert {:id "id1696"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_0), $Box(##e#1_0));
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
              e#1_0, 
              r0#0, 
              C#0);
        }

        assume Set#IsMember(Map#Domain(C#0), $Box(e#1_0))
           ==> M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#1_0, 
            r0#0, 
            C#0);
        assume {:id "id1697"} Set#IsMember(Map#Domain(C#0), $Box(e#1_0))
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
            e#1_0, 
            r0#0, 
            C#0);
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assert {:id "id1698"} {:subsumption 0} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
            assert {:id "id1699"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
            ##d#1_1 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1_1, Tclass._System.nat(), $Heap);
            ##e#1_1 := e#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_1, Tclass.M3.Element(), $Heap);
            ##r#1_1 := r1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#1_1, Tclass.M3.Element(), $Heap);
            ##C#1_1 := C'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#1_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assert {:id "id1700"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1_1)
               ==> M3.__default.GoodCMap(##C#1_1)
                 || (forall f#1_1: ref :: 
                  { $Unbox(Map#Elements(##C#1_1)[$Box(f#1_1)]): DatatypeType } 
                  $Is(f#1_1, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#1_1), $Box(f#1_1))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#1_1)[$Box(f#1_1)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#1_1), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#1_1)[$Box(f#1_1)]): DatatypeType))));
            assert {:id "id1701"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1_1), $Box(##e#1_1));
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0);
            assume M3.UnionFind.Reaches#canCall(this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0);
            assume {:id "id1702"} M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0);
            assume false;
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(308,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##1_0 := C#0;
        assert {:id "id1703"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
        assert {:id "id1704"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        d0##1_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
        assert {:id "id1705"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
        assert {:id "id1706"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        d1##1_0 := M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
        assume true;
        // ProcessCallStmt: CheckSubrange
        r0##1_0 := r0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r1##1_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##1_0 := C'#0;
        call {:id "id1707"} Call$$M3.UnionFind.ExtendedReach(this, e##1_0, C##1_0, d0##1_0, d1##1_0, r0##1_0, r1##1_0, C'##1_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id1708"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0)
             || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType)
               ==> e#1_0 == r1#0);
        assert {:id "id1709"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType)
               ==> (var next#1_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType); 
                M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) != 0));
        assert {:id "id1710"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
            e#1_0, 
            r1#0, 
            C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_0, 
              r1#0, 
              C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType)
               ==> (var next#1_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#1_0)]): DatatypeType); 
                M3.UnionFind.Reaches($LS($LS($LZ)), 
                  this, 
                  M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType) - 1, 
                  next#1_0, 
                  r1#0, 
                  C'#0)));
        assume false;
    }
    else
    {
        assume (forall e#1_1: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_1, 
              r1#0, 
              C'#0) } 
            { M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
              e#1_1, 
              r0#0, 
              C#0) } 
            { Set#IsMember(Map#Domain(C#0), $Box(e#1_1)) } 
          $Is(e#1_1, Tclass.M3.Element())
               && 
              Set#IsMember(Map#Domain(C#0), $Box(e#1_1))
               && M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType), 
                e#1_1, 
                r0#0, 
                C#0)
             ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType), 
              e#1_1, 
              r1#0, 
              C'#0));
    }
}



procedure {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot (well-formedness)"} CheckWellFormed$$M3.UnionFind.ReachUnaffectedByChangeFromRoot(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot (well-formedness)"} CheckWellFormed$$M3.UnionFind.ReachUnaffectedByChangeFromRoot(this: ref, 
    d#0: int, 
    e#0: ref, 
    r#0: ref, 
    C#0: Map, 
    td#0: int, 
    tt#0: ref, 
    tm#0: ref, 
    C'#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##C#0: Map;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#1: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#2: Map;
  var ##C#3: Map;
  var ##d#2: int;
  var ##e#2: ref;
  var ##r#2: ref;
  var ##C#4: Map;


    // AddMethodImpl: ReachUnaffectedByChangeFromRoot, CheckWellFormed$$M3.UnionFind.ReachUnaffectedByChangeFromRoot
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C#0);
    assume {:id "id1711"} M3.__default.GoodCMap(C#0);
    assume {:id "id1712"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#0 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
    ##r#0 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
    ##C#1 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1713"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1)
       ==> M3.__default.GoodCMap(##C#1)
         || (forall f#0: ref :: 
          { $Unbox(Map#Elements(##C#1)[$Box(f#0)]): DatatypeType } 
          $Is(f#0, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#1), $Box(f#0))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#1)[$Box(f#0)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#1), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#1)[$Box(f#0)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#1);
    assert {:id "id1714"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1), $Box(##e#0));
    assume Set#IsMember(Map#Domain(##C#1), $Box(##e#0));
    assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0);
    assume {:id "id1715"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0);
    assume {:id "id1716"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#1 := td#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
    ##e#1 := tt#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
    ##r#1 := tt#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
    ##C#2 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#2, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1717"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#2)
       ==> M3.__default.GoodCMap(##C#2)
         || (forall f#1: ref :: 
          { $Unbox(Map#Elements(##C#2)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#2), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#2)[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#2), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#2)[$Box(f#1)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#2);
    assert {:id "id1718"} {:subsumption 0} Set#IsMember(Map#Domain(##C#2), $Box(##e#1));
    assume Set#IsMember(Map#Domain(##C#2), $Box(##e#1));
    assume M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tt#0, C#0);
    assume {:id "id1719"} M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tt#0, C#0);
    assume {:id "id1720"} tt#0 != r#0;
    assert {:id "id1721"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
    assume {:id "id1722"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType);
    assume {:id "id1723"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
    ##C#3 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#3, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C'#0);
    assume {:id "id1724"} M3.__default.GoodCMap(C'#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#2 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#2, Tclass._System.nat(), $Heap);
    ##e#2 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.M3.Element(), $Heap);
    ##r#2 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#2, Tclass.M3.Element(), $Heap);
    ##C#4 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#4, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1725"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#4)
       ==> M3.__default.GoodCMap(##C#4)
         || (forall f#2: ref :: 
          { $Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType } 
          $Is(f#2, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#4), $Box(f#2))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#4), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#4)[$Box(f#2)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#4);
    assert {:id "id1726"} {:subsumption 0} Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
    assume Set#IsMember(Map#Domain(##C#4), $Box(##e#2));
    assume M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
    assume {:id "id1727"} M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0);
}



procedure {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot (call)"} Call$$M3.UnionFind.ReachUnaffectedByChangeFromRoot(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1728"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#3: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType } 
        $Is(f#3, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#3))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType))));
  requires {:id "id1729"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id1730"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  requires {:id "id1731"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  requires {:id "id1732"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#0, r#0, C#0)));
  requires {:id "id1733"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
  requires {:id "id1734"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tt#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tt#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> tt#0 == tt#0);
  requires {:id "id1735"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tt#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tt#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
          td#0 != 0));
  requires {:id "id1736"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tt#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tt#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, td#0 - 1, next#2, tt#0, C#0)));
  requires {:id "id1737"} tt#0 != r#0;
  requires {:id "id1738"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType);
  requires {:id "id1739"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
  requires {:id "id1740"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#4: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType } 
        $Is(f#4, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#4))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
  free ensures {:id "id1741"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#5, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot (correctness)"} Impl$$M3.UnionFind.ReachUnaffectedByChangeFromRoot(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1742"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#5: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType } 
      $Is(f#5, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#5))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id1743"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id1744"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#7 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#7, r#0, C#0)));
  requires {:id "id1745"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
  free requires {:id "id1746"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tt#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tt#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
       then tt#0 == tt#0
       else (var next#9 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
        td#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, td#0 - 1, next#9, tt#0, C#0)));
  requires {:id "id1747"} tt#0 != r#0;
  requires {:id "id1748"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType);
  requires {:id "id1749"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
  free requires {:id "id1750"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#6: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType } 
      $Is(f#6, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#6))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
  ensures {:id "id1751"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  ensures {:id "id1752"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#10 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  ensures {:id "id1753"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#10 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#10, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ReachUnaffectedByChangeFromRoot (correctness)"} Impl$$M3.UnionFind.ReachUnaffectedByChangeFromRoot(this: ref, 
    d#0: int, 
    e#0: ref, 
    r#0: ref, 
    C#0: Map, 
    td#0: int, 
    tt#0: ref, 
    tm#0: ref, 
    C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: ReachUnaffectedByChangeFromRoot, Impl$$M3.UnionFind.ReachUnaffectedByChangeFromRoot
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#d0#0: int, 
        $ih#e0#0: ref, 
        $ih#r0#0: ref, 
        $ih#C0#0: Map, 
        $ih#td0#0: int, 
        $ih#tt0#0: ref, 
        $ih#C'0#0: Map :: 
      { M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tt0#0, $ih#C0#0) } 
        { M3.__default.GoodCMap($ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tt0#0, $ih#C0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0) } 
      LitInt(0) <= $ih#d0#0
           && $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#r0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && LitInt(0) <= $ih#td0#0
           && $Is($ih#tt0#0, Tclass.M3.Element())
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#tt0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tt0#0, $ih#C0#0)
           && $ih#tt0#0 != $ih#r0#0
           && 
          M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#tt0#0)]): DatatypeType)
           && Map#Equal($ih#C'0#0, Map#Build($ih#C0#0, $Box($ih#tt0#0), $Box(#M3.Contents.Link(tm#0))))
           && M3.__default.GoodCMap($ih#C'0#0)
           && ((0 <= $ih#d0#0 && $ih#d0#0 < d#0)
             || ($ih#d0#0 == d#0
               && (($ih#e0#0 == null && e#0 != null)
                 || (($ih#e0#0 != null <==> e#0 != null)
                   && (($ih#r0#0 == null && r#0 != null)
                     || (($ih#r0#0 != null <==> r#0 != null)
                       && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                         || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && ((0 <= $ih#td0#0 && $ih#td0#0 < td#0)
                             || ($ih#td0#0 == td#0
                               && (($ih#tt0#0 == null && tt#0 != null)
                                 || (($ih#tt0#0 != null <==> tt#0 != null)
                                   && ((tm#0 == null && tm#0 != null)
                                     || ((tm#0 != null <==> tm#0 != null)
                                       && 
                                      Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                                       && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))))))))))
         ==> M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "M3.UnionFind.ExtendedReach (well-formedness)"} CheckWellFormed$$M3.UnionFind.ExtendedReach(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ExtendedReach (well-formedness)"} CheckWellFormed$$M3.UnionFind.ExtendedReach(this: ref, 
    e#0: ref, 
    C#0: Map, 
    d0#0: int, 
    d1#0: int, 
    r0#0: ref, 
    r1#0: ref, 
    C'#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##C#0: Map;
  var ##C#1: Map;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#2: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#3: Map;


    // AddMethodImpl: ExtendedReach, CheckWellFormed$$M3.UnionFind.ExtendedReach
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C#0);
    assume {:id "id1754"} M3.__default.GoodCMap(C#0);
    ##C#1 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume M3.__default.GoodCMap#canCall(C'#0);
    assume {:id "id1755"} M3.__default.GoodCMap(C'#0);
    assume {:id "id1756"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1757"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1758"} r0#0 != r1#0;
    assume {:id "id1759"} Map#Equal(C'#0, Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))));
    assert {:id "id1760"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assume {:id "id1761"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1762"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
    assert {:id "id1763"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assume {:id "id1764"} d0#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
    assert {:id "id1765"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assume {:id "id1766"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assert {:id "id1767"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
    assert {:id "id1768"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1769"} d1#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
    assume {:id "id1770"} d0#0 < d1#0;
    assume {:id "id1771"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#0 := d0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
    ##r#0 := r0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
    ##C#2 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#2, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1772"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#2)
       ==> M3.__default.GoodCMap(##C#2)
         || (forall f#0: ref :: 
          { $Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType } 
          $Is(f#0, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#2), $Box(f#0))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#2), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#2)[$Box(f#0)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#2);
    assert {:id "id1773"} {:subsumption 0} Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
    assume Set#IsMember(Map#Domain(##C#2), $Box(##e#0));
    assume M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0);
    assume {:id "id1774"} M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#1 := d1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
    ##r#1 := r1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
    ##C#3 := C'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#3, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assert {:id "id1775"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#3)
       ==> M3.__default.GoodCMap(##C#3)
         || (forall f#1: ref :: 
          { $Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#3), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#3), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#3)[$Box(f#1)]): DatatypeType))));
    assume M3.__default.GoodCMap(##C#3);
    assert {:id "id1776"} {:subsumption 0} Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
    assume Set#IsMember(Map#Domain(##C#3), $Box(##e#1));
    assume M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0);
    assume {:id "id1777"} M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0);
}



procedure {:verboseName "M3.UnionFind.ExtendedReach (call)"} Call$$M3.UnionFind.ExtendedReach(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1778"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#2: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType } 
        $Is(f#2, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#2))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType))));
  requires {:id "id1779"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#3: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#3)]): DatatypeType } 
        $Is(f#3, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#3))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#3)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#3)]): DatatypeType))));
  requires {:id "id1780"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1781"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1782"} r0#0 != r1#0;
  requires {:id "id1783"} Map#Equal(C'#0, Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))));
  requires {:id "id1784"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1785"} d0#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1786"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1787"} d1#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1788"} d0#0 < d1#0;
  requires {:id "id1789"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id1790"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r0#0);
  requires {:id "id1791"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d0#0 != 0));
  requires {:id "id1792"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d0#0 - 1, next#0, r0#0, C#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0);
  free ensures {:id "id1793"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r1#0
       else (var next#3 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
        d1#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d1#0 - 1, next#3, r1#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.ExtendedReach (correctness)"} Impl$$M3.UnionFind.ExtendedReach(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1794"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#4: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType } 
      $Is(f#4, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#4))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType))));
  free requires {:id "id1795"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#5: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType } 
      $Is(f#5, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#5))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id1796"} Set#IsMember(Map#Domain(C#0), $Box(r0#0));
  requires {:id "id1797"} Set#IsMember(Map#Domain(C#0), $Box(r1#0));
  requires {:id "id1798"} r0#0 != r1#0;
  requires {:id "id1799"} Map#Equal(C'#0, Map#Build(C#0, $Box(r0#0), $Box(#M3.Contents.Link(r1#0))));
  requires {:id "id1800"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1801"} d0#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r0#0)]): DatatypeType);
  requires {:id "id1802"} M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1803"} d1#0 <= M3.Contents.depth($Unbox(Map#Elements(C#0)[$Box(r1#0)]): DatatypeType);
  requires {:id "id1804"} d0#0 < d1#0;
  requires {:id "id1805"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id1806"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r0#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d0#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d0#0 - 1, next#5, r0#0, C#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0);
  ensures {:id "id1807"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r1#0);
  ensures {:id "id1808"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#6 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          d1#0 != 0));
  ensures {:id "id1809"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#6 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d1#0 - 1, next#6, r1#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ExtendedReach (correctness)"} Impl$$M3.UnionFind.ExtendedReach(this: ref, 
    e#0: ref, 
    C#0: Map, 
    d0#0: int, 
    d1#0: int, 
    r0#0: ref, 
    r1#0: ref, 
    C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#1#0_0: ref;
  var next#0_0: ref;
  var let#0_0#0#0: ref;
  var e##0_0: ref;
  var C##0_0: Map;
  var d0##0_0: int;
  var d1##0_0: int;
  var r0##0_0: ref;
  var r1##0_0: ref;
  var C'##0_0: Map;
  var _mcc#0#1_0: int;

    // AddMethodImpl: ExtendedReach, Impl$$M3.UnionFind.ExtendedReach
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#e0#0: ref, 
        $ih#C0#0: Map, 
        $ih#d00#0: int, 
        $ih#d10#0: int, 
        $ih#r00#0: ref, 
        $ih#r10#0: ref, 
        $ih#C'0#0: Map :: 
      { M3.UnionFind.Reaches($LS($LZ), this, $ih#d10#0, $ih#e0#0, $ih#r10#0, $ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d00#0, $ih#e0#0, $ih#r00#0, $ih#C0#0) } 
      $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && LitInt(0) <= $ih#d00#0
           && LitInt(0) <= $ih#d10#0
           && $Is($ih#r00#0, Tclass.M3.Element())
           && $Is($ih#r10#0, Tclass.M3.Element())
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && M3.__default.GoodCMap($ih#C'0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r00#0))
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#r10#0))
           && $ih#r00#0 != $ih#r10#0
           && Map#Equal($ih#C'0#0, 
            Map#Build($ih#C0#0, $Box($ih#r00#0), $Box(#M3.Contents.Link($ih#r10#0))))
           && 
          M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && $ih#d00#0
             <= M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r00#0)]): DatatypeType)
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && $ih#d10#0
             <= M3.Contents.depth($Unbox(Map#Elements($ih#C0#0)[$Box($ih#r10#0)]): DatatypeType)
           && $ih#d00#0 < $ih#d10#0
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#d00#0, $ih#e0#0, $ih#r00#0, $ih#C0#0)
           && (($ih#e0#0 == null && e#0 != null)
             || (($ih#e0#0 != null <==> e#0 != null)
               && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                   && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                 || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                   && ((0 <= $ih#d00#0 && $ih#d00#0 < d0#0)
                     || ($ih#d00#0 == d0#0
                       && ((0 <= $ih#d10#0 && $ih#d10#0 < d1#0)
                         || ($ih#d10#0 == d1#0
                           && (($ih#r00#0 == null && r0#0 != null)
                             || (($ih#r00#0 != null <==> r0#0 != null)
                               && (($ih#r10#0 == null && r1#0 != null)
                                 || (($ih#r10#0 != null <==> r1#0 != null)
                                   && 
                                  Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                                   && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))))))))
         ==> M3.UnionFind.Reaches($LS($LZ), this, $ih#d10#0, $ih#e0#0, $ih#r10#0, $ih#C'0#0));
    $_reverifyPost := false;
    assert {:id "id1810"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
    assume true;
    havoc _mcc#1#0_0;
    havoc _mcc#0#1_0;
    if ($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType
       == #M3.Contents.Root(_mcc#0#1_0))
    {
        assume LitInt(0) <= _mcc#0#1_0;
    }
    else if ($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType
       == #M3.Contents.Link(_mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass.M3.Element());
        havoc next#0_0;
        assume $Is(next#0_0, Tclass.M3.Element())
           && $IsAlloc(next#0_0, Tclass.M3.Element(), $Heap);
        assume {:id "id1811"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.M3.Element());
        assume {:id "id1812"} next#0_0 == let#0_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(333,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := next#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1813"} $Is(d0#0 - 1, Tclass._System.nat());
        d0##0_0 := d0#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1814"} $Is(d1#0 - 1, Tclass._System.nat());
        d1##0_0 := d1#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r0##0_0 := r0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r1##0_0 := r1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##0_0 := C'#0;
        assert {:id "id1815"} 0 <= d0#0
           || (e##0_0 == null && e#0 != null)
           || (Set#Subset(Map#Domain(C##0_0), Map#Domain(C#0))
             && !Set#Subset(Map#Domain(C#0), Map#Domain(C##0_0)))
           || d0##0_0 == d0#0;
        assert {:id "id1816"} 0 <= d1#0
           || (e##0_0 == null && e#0 != null)
           || (Set#Subset(Map#Domain(C##0_0), Map#Domain(C#0))
             && !Set#Subset(Map#Domain(C#0), Map#Domain(C##0_0)))
           || d0##0_0 < d0#0
           || d1##0_0 == d1#0;
        assert {:id "id1817"} (e##0_0 == null && e#0 != null)
           || ((e##0_0 != null <==> e#0 != null)
             && ((Set#Subset(Map#Domain(C##0_0), Map#Domain(C#0))
                 && !Set#Subset(Map#Domain(C#0), Map#Domain(C##0_0)))
               || (Set#Equal(Map#Domain(C##0_0), Map#Domain(C#0))
                 && (d0##0_0 < d0#0
                   || (d0##0_0 == d0#0
                     && (d1##0_0 < d1#0
                       || (d1##0_0 == d1#0
                         && ((r0##0_0 == null && r0#0 != null)
                           || ((r0##0_0 != null <==> r0#0 != null)
                             && ((r1##0_0 == null && r1#0 != null)
                               || ((r1##0_0 != null <==> r1#0 != null)
                                 && 
                                Set#Subset(Map#Domain(C'##0_0), Map#Domain(C'#0))
                                 && !Set#Subset(Map#Domain(C'#0), Map#Domain(C'##0_0)))))))))))));
        call {:id "id1818"} Call$$M3.UnionFind.ExtendedReach(this, e##0_0, C##0_0, d0##0_0, d1##0_0, r0##0_0, r1##0_0, C'##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "M3.UnionFind.Find (well-formedness)"} CheckWellFormed$$M3.UnionFind.Find(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.Find (call)"} Call$$M3.UnionFind.Find(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  // user-defined preconditions
  requires {:id "id1828"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  requires {:id "id1829"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  requires {:id "id1830"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  requires {:id "id1831"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#1: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref } 
            $Is(e#1, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)])));
  requires {:id "id1832"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#2: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2)) } 
            $Is(e#2, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]): ref));
  requires {:id "id1833"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#3: ref :: 
            { $Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType } 
            $Is(e#3, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)))));
  requires {:id "id1834"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4)) } 
            $Is(e#4, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#4, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  requires {:id "id1835"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  free ensures {:id "id1836"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  free ensures true;
  ensures {:id "id1837"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1838"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
    $Unbox(read(old($Heap), this, M3.UnionFind.M)): Map);
  ensures {:id "id1839"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
     == r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.UnionFind.Find (correctness)"} Impl$$M3.UnionFind.Find(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    $_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1840"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  requires {:id "id1841"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  ensures {:id "id1842"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  ensures {:id "id1843"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  ensures {:id "id1844"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  ensures {:id "id1845"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#13: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#13)]): ref } 
            $Is(e#13, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#13))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#13)])));
  ensures {:id "id1846"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#14: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#14)) } 
            $Is(e#14, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#14))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]): ref));
  ensures {:id "id1847"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#15: ref :: 
            { $Unbox(read($Heap, e#15, M3.Element.c)): DatatypeType } 
            $Is(e#15, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#15, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#15, M3.Element.c)): DatatypeType)))));
  ensures {:id "id1848"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#16: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16)) } 
            $Is(e#16, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#16, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  free ensures true;
  ensures {:id "id1849"} $_reverifyPost
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1850"} $_reverifyPost
     ==> Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
      $Unbox(read(old($Heap), this, M3.UnionFind.M)): Map);
  ensures {:id "id1851"} $_reverifyPost
     ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
       == r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.Find (correctness)"} Impl$$M3.UnionFind.Find(this: ref, e#0: ref) returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: ref;
  var d##0: int;
  var e##0: ref;

    // AddMethodImpl: Find, Impl$$M3.UnionFind.Find
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](129,19)
    assume true;
    // TrCallStmt: Adding lhs with type Element
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume {:id "id1852"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
    assume {:id "id1853"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
       != null;
    assume {:id "id1854"} M3.Contents.Root_q($Unbox(read($Heap, 
          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
          M3.Element.c)): DatatypeType);
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := M3.Contents.depth($Unbox(read($Heap, 
          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
          M3.Element.c)): DatatypeType);
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := e#0;
    assume {:id "id1855"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1856"} $rhs##0 := Call$$M3.UnionFind.FindAux(this, d##0, e##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    defass#r#0 := true;
    assert {:id "id1858"} defass#r#0;
}



procedure {:verboseName "M3.UnionFind.NextReachesSame (well-formedness)"} CheckWellFormed$$M3.UnionFind.NextReachesSame(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.NextReachesSame (call)"} Call$$M3.UnionFind.NextReachesSame(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap));
  // user-defined preconditions
  requires {:id "id1868"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  requires {:id "id1869"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  requires {:id "id1870"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  requires {:id "id1871"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#1: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref } 
            $Is(e#1, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)])));
  requires {:id "id1872"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#2: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2)) } 
            $Is(e#2, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]): ref));
  requires {:id "id1873"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#3: ref :: 
            { $Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType } 
            $Is(e#3, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)))));
  requires {:id "id1874"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4)) } 
            $Is(e#4, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#4, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  requires {:id "id1875"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
  requires {:id "id1876"} M3.Contents.Link_q($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1877"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
     == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(M3.Contents.next($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType))]): ref;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.NextReachesSame (correctness)"} Impl$$M3.UnionFind.NextReachesSame(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1878"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  requires {:id "id1879"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
  requires {:id "id1880"} M3.Contents.Link_q($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1881"} $_reverifyPost
     ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
       == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(M3.Contents.next($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType))]): ref;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.NextReachesSame (correctness)"} Impl$$M3.UnionFind.NextReachesSame(this: ref, e#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#next#0: bool;
  var next#0: ref
     where defass#next#0
       ==> $Is(next#0, Tclass.M3.Element()) && $IsAlloc(next#0, Tclass.M3.Element(), $Heap);
  var d0#0: int where LitInt(0) <= d0#0;
  var d1#0: int where LitInt(0) <= d1#0;
  var $rhs#0: int;
  var $rhs#1: int;
  var ##d#0: int;
  var newtype$check#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#0: Map;
  var ##d#1: int;
  var ##e#1: ref;
  var ##r#1: ref;
  var ##C#1: Map;
  var d0##0: int;
  var newtype$check#1: int;
  var d1##0: int;
  var e##0: ref;
  var r0##0: ref;
  var r1##0: ref;
  var C##0: Map;

    // AddMethodImpl: NextReachesSame, Impl$$M3.UnionFind.NextReachesSame
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(136,16)
    assume true;
    assume {:id "id1882"} e#0 != null;
    assume {:id "id1883"} M3.Contents.Link_q($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType);
    assume true;
    next#0 := M3.Contents.next($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType);
    defass#next#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(137,18)
    assume true;
    assume true;
    assume {:id "id1885"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
    assume {:id "id1886"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
       != null;
    assume {:id "id1887"} M3.Contents.Root_q($Unbox(read($Heap, 
          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
          M3.Element.c)): DatatypeType);
    assume true;
    $rhs#0 := M3.Contents.depth($Unbox(read($Heap, 
          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
          M3.Element.c)): DatatypeType);
    assume {:id "id1889"} defass#next#0;
    assume {:id "id1890"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(next#0));
    assume {:id "id1891"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref
       != null;
    assume {:id "id1892"} M3.Contents.Root_q($Unbox(read($Heap, 
          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref, 
          M3.Element.c)): DatatypeType);
    assume true;
    $rhs#1 := M3.Contents.depth($Unbox(read($Heap, 
          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref, 
          M3.Element.c)): DatatypeType);
    d0#0 := $rhs#0;
    d1#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](138,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    newtype$check#0 := d0#0 - 1;
    assume {:id "id1896"} LitInt(0) <= newtype$check#0;
    ##d#0 := d0#0 - 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
    assume {:id "id1897"} defass#next#0;
    ##e#0 := next#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
    assume {:id "id1898"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
    ##r#0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume {:id "id1899"} {:subsumption 0} (forall f#0: ref :: 
      { $Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType } 
      $Is(f#0, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0))
           && M3.Contents.Link_q($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType)
         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
          $Box(M3.Contents.next($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType))));
    assume M3.UnionFind.Collect#canCall($Heap, this);
    ##C#0 := M3.UnionFind.Collect($Heap, this);
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume {:id "id1900"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0)
       ==> M3.__default.GoodCMap(##C#0)
         || (forall f#1: ref :: 
          { $Unbox(Map#Elements(##C#0)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#0), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#0)[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#0), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#0)[$Box(f#1)]): DatatypeType))));
    assume {:id "id1901"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0), $Box(##e#0));
    assume M3.UnionFind.Reaches#canCall(this, 
      d0#0 - 1, 
      next#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this));
    assume M3.UnionFind.Collect#canCall($Heap, this)
       && M3.UnionFind.Reaches#canCall(this, 
        d0#0 - 1, 
        next#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
        M3.UnionFind.Collect($Heap, this));
    assume true;
    assume true;
    assume true;
    assume {:id "id1902"} M3.UnionFind.Reaches($LS($LZ), 
      this, 
      d0#0 - 1, 
      next#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](139,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    ##d#1 := d1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, Tclass._System.nat(), $Heap);
    assume {:id "id1903"} defass#next#0;
    ##e#1 := next#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.M3.Element(), $Heap);
    assume {:id "id1904"} defass#next#0;
    assume {:id "id1905"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(next#0));
    ##r#1 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#1, Tclass.M3.Element(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume {:id "id1906"} {:subsumption 0} (forall f#2: ref :: 
      { $Unbox(read($Heap, f#2, M3.Element.c)): DatatypeType } 
      $Is(f#2, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#2))
           && M3.Contents.Link_q($Unbox(read($Heap, f#2, M3.Element.c)): DatatypeType)
         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
          $Box(M3.Contents.next($Unbox(read($Heap, f#2, M3.Element.c)): DatatypeType))));
    assume M3.UnionFind.Collect#canCall($Heap, this);
    ##C#1 := M3.UnionFind.Collect($Heap, this);
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume {:id "id1907"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#1)
       ==> M3.__default.GoodCMap(##C#1)
         || (forall f#3: ref :: 
          { $Unbox(Map#Elements(##C#1)[$Box(f#3)]): DatatypeType } 
          $Is(f#3, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#1), $Box(f#3))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#1)[$Box(f#3)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#1), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#1)[$Box(f#3)]): DatatypeType))));
    assume {:id "id1908"} {:subsumption 0} Set#IsMember(Map#Domain(##C#1), $Box(##e#1));
    assume M3.UnionFind.Reaches#canCall(this, 
      d1#0, 
      next#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref, 
      M3.UnionFind.Collect($Heap, this));
    assume M3.UnionFind.Collect#canCall($Heap, this)
       && M3.UnionFind.Reaches#canCall(this, 
        d1#0, 
        next#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref, 
        M3.UnionFind.Collect($Heap, this));
    assume true;
    assume true;
    assume true;
    assume {:id "id1909"} M3.UnionFind.Reaches($LS($LZ), 
      this, 
      d1#0, 
      next#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref, 
      M3.UnionFind.Collect($Heap, this));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](140,36)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    newtype$check#1 := d0#0 - 1;
    assume {:id "id1910"} LitInt(0) <= newtype$check#1;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d0##0 := d0#0 - 1;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d1##0 := d1#0;
    assume {:id "id1911"} defass#next#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := next#0;
    assume {:id "id1912"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
    assume true;
    // ProcessCallStmt: CheckSubrange
    r0##0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref;
    assume {:id "id1913"} defass#next#0;
    assume {:id "id1914"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(next#0));
    assume true;
    // ProcessCallStmt: CheckSubrange
    r1##0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(next#0)]): ref;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume true;
    assume (forall f#4: ref :: 
      { $Unbox(read($Heap, f#4, M3.Element.c)): DatatypeType } 
      $Is(f#4, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#4))
           && M3.Contents.Link_q($Unbox(read($Heap, f#4, M3.Element.c)): DatatypeType)
         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
          $Box(M3.Contents.next($Unbox(read($Heap, f#4, M3.Element.c)): DatatypeType))));
    assume M3.UnionFind.Collect#canCall($Heap, this);
    assume M3.UnionFind.Collect#canCall($Heap, this);
    // ProcessCallStmt: CheckSubrange
    C##0 := M3.UnionFind.Collect($Heap, this);
    call {:id "id1915"} Call$$M3.UnionFind.Reaches__SinkIsFunctionOfStart(this, d0##0, d1##0, e##0, r0##0, r1##0, C##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "M3.UnionFind.Reaches_SinkIsFunctionOfStart (well-formedness)"} CheckWellFormed$$M3.UnionFind.Reaches__SinkIsFunctionOfStart(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.Reaches_SinkIsFunctionOfStart (call)"} Call$$M3.UnionFind.Reaches__SinkIsFunctionOfStart(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id1921"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#2: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType } 
        $Is(f#2, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#2))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType))));
  requires {:id "id1922"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id1923"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r0#0);
  requires {:id "id1924"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d0#0 != 0));
  requires {:id "id1925"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d0#0 - 1, next#0, r0#0, C#0)));
  requires {:id "id1926"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r1#0);
  requires {:id "id1927"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d1#0 != 0));
  requires {:id "id1928"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d1#0 - 1, next#2, r1#0, C#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1929"} r0#0 == r1#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.Reaches_SinkIsFunctionOfStart (correctness)"} Impl$$M3.UnionFind.Reaches__SinkIsFunctionOfStart(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d0#0: int where LitInt(0) <= d0#0, 
    d1#0: int where LitInt(0) <= d1#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r0#0: ref
       where $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap), 
    r1#0: ref
       where $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1930"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#3: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType } 
      $Is(f#3, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#3))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType))));
  requires {:id "id1931"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id1932"} M3.UnionFind.Reaches#canCall(this, d0#0, e#0, r0#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d0#0, e#0, r0#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r0#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d0#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d0#0 - 1, next#5, r0#0, C#0)));
  free requires {:id "id1933"} M3.UnionFind.Reaches#canCall(this, d1#0, e#0, r1#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d1#0, e#0, r1#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r1#0
       else (var next#7 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d1#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d1#0 - 1, next#7, r1#0, C#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1934"} $_reverifyPost ==> r0#0 == r1#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.Reaches_SinkIsFunctionOfStart (correctness)"} Impl$$M3.UnionFind.Reaches__SinkIsFunctionOfStart(this: ref, d0#0: int, d1#0: int, e#0: ref, r0#0: ref, r1#0: ref, C#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Reaches_SinkIsFunctionOfStart, Impl$$M3.UnionFind.Reaches__SinkIsFunctionOfStart
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#d00#0: int, 
        $ih#d10#0: int, 
        $ih#e0#0: ref, 
        $ih#r00#0: ref, 
        $ih#r10#0: ref, 
        $ih#C0#0: Map :: 
      { M3.UnionFind.Reaches($LS($LZ), this, $ih#d10#0, $ih#e0#0, $ih#r10#0, $ih#C0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d00#0, $ih#e0#0, $ih#r00#0, $ih#C0#0) } 
      LitInt(0) <= $ih#d00#0
           && LitInt(0) <= $ih#d10#0
           && $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#r00#0, Tclass.M3.Element())
           && $Is($ih#r10#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && 
          M3.UnionFind.Reaches($LS($LZ), this, $ih#d00#0, $ih#e0#0, $ih#r00#0, $ih#C0#0)
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#d10#0, $ih#e0#0, $ih#r10#0, $ih#C0#0)
           && ((0 <= $ih#d00#0 && $ih#d00#0 < d0#0)
             || ($ih#d00#0 == d0#0
               && ((0 <= $ih#d10#0 && $ih#d10#0 < d1#0)
                 || ($ih#d10#0 == d1#0
                   && (($ih#e0#0 == null && e#0 != null)
                     || (($ih#e0#0 != null <==> e#0 != null)
                       && (($ih#r00#0 == null && r0#0 != null)
                         || (($ih#r00#0 != null <==> r0#0 != null)
                           && (($ih#r10#0 == null && r1#0 != null)
                             || (($ih#r10#0 != null <==> r1#0 != null)
                               && 
                              Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                               && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0))))))))))))
         ==> $ih#r00#0 == $ih#r10#0);
    $_reverifyPost := false;
}



procedure {:verboseName "M3.UnionFind.FindAux (well-formedness)"} CheckWellFormed$$M3.UnionFind.FindAux(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.FindAux (call)"} Call$$M3.UnionFind.FindAux(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  // user-defined preconditions
  requires {:id "id1953"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  requires {:id "id1954"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  requires {:id "id1955"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  requires {:id "id1956"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#3: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref } 
            $Is(e#3, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)])));
  requires {:id "id1957"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4)) } 
            $Is(e#4, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref));
  requires {:id "id1958"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#5: ref :: 
            { $Unbox(read($Heap, e#5, M3.Element.c)): DatatypeType } 
            $Is(e#5, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#5))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#5, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#5, M3.Element.c)): DatatypeType)))));
  requires {:id "id1959"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#6: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#6)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#6)) } 
            $Is(e#6, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#6))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#6)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#6))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#6)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#6, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#6)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  requires {:id "id1960"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
  requires {:id "id1961"} M3.UnionFind.Reaches#canCall(this, 
      d#0, 
      e#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this))
     ==> M3.UnionFind.Reaches($LS($LZ), 
        this, 
        d#0, 
        e#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
        M3.UnionFind.Collect($Heap, this))
       || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType)
         ==> e#0
           == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref);
  requires {:id "id1962"} M3.UnionFind.Reaches#canCall(this, 
      d#0, 
      e#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this))
     ==> M3.UnionFind.Reaches($LS($LZ), 
        this, 
        d#0, 
        e#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
        M3.UnionFind.Collect($Heap, this))
       || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  requires {:id "id1963"} M3.UnionFind.Reaches#canCall(this, 
      d#0, 
      e#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this))
     ==> M3.UnionFind.Reaches($LS($LZ), 
        this, 
        d#0, 
        e#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
        M3.UnionFind.Collect($Heap, this))
       || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), 
            this, 
            d#0 - 1, 
            next#0, 
            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
            M3.UnionFind.Collect($Heap, this))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  free ensures {:id "id1964"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  free ensures true;
  ensures {:id "id1965"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1966"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
    $Unbox(read(old($Heap), this, M3.UnionFind.M)): Map);
  ensures {:id "id1967"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
     == r#0;
  free ensures (forall d#2: int, e#2: ref, r#2: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this)) } 
    LitInt(0) <= d#2
         && $Is(e#2, Tclass.M3.Element())
         && $Is(r#2, Tclass.M3.Element())
       ==> M3.UnionFind.Collect#canCall(old($Heap), this)
         && (Set#IsMember(Map#Domain(M3.UnionFind.Collect(old($Heap), this)), $Box(e#2))
           ==> M3.UnionFind.Collect#canCall(old($Heap), this)
             && M3.UnionFind.Reaches#canCall(this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this))
             && (M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this))
               ==> M3.UnionFind.Collect#canCall($Heap, this)
                 && M3.UnionFind.Reaches#canCall(this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)))));
  free ensures {:id "id1968"} (forall d#2: int, e#2: ref, r#2: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this)) } 
    LitInt(0) <= d#2
         && $Is(e#2, Tclass.M3.Element())
         && 
        $Is(r#2, Tclass.M3.Element())
         && $IsAlloc(r#2, Tclass.M3.Element(), $Heap)
       ==> 
      Set#IsMember(Map#Domain(M3.UnionFind.Collect(old($Heap), this)), $Box(e#2))
         && M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this))
       ==> M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.UnionFind.FindAux (correctness)"} Impl$$M3.UnionFind.FindAux(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    $_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1969"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  requires {:id "id1970"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0));
  free requires {:id "id1971"} M3.UnionFind.Reaches#canCall(this, 
      d#0, 
      e#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this))
     && 
    M3.UnionFind.Reaches($LS($LZ), 
      this, 
      d#0, 
      e#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
      M3.UnionFind.Collect($Heap, this))
     && (if M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType)
       then e#0
         == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
       else (var next#3 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(e#0)]): DatatypeType); 
        d#0 != 0
           && M3.UnionFind.Reaches($LS($LZ), 
            this, 
            d#0 - 1, 
            next#3, 
            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref, 
            M3.UnionFind.Collect($Heap, this))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  ensures {:id "id1972"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  ensures {:id "id1973"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  ensures {:id "id1974"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  ensures {:id "id1975"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#15: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]): ref } 
            $Is(e#15, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)])));
  ensures {:id "id1976"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#16: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16)) } 
            $Is(e#16, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref));
  ensures {:id "id1977"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#17: ref :: 
            { $Unbox(read($Heap, e#17, M3.Element.c)): DatatypeType } 
            $Is(e#17, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#17, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#17, M3.Element.c)): DatatypeType)))));
  ensures {:id "id1978"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#18: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#18)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#18)) } 
            $Is(e#18, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#18))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#18)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#18))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#18)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#18, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#18)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  free ensures true;
  ensures {:id "id1979"} $_reverifyPost
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1980"} $_reverifyPost
     ==> Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
      $Unbox(read(old($Heap), this, M3.UnionFind.M)): Map);
  ensures {:id "id1981"} $_reverifyPost
     ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref
       == r#0;
  free ensures (forall d#2: int, e#2: ref, r#2: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this)) } 
    LitInt(0) <= d#2
         && $Is(e#2, Tclass.M3.Element())
         && $Is(r#2, Tclass.M3.Element())
       ==> M3.UnionFind.Collect#canCall(old($Heap), this)
         && (Set#IsMember(Map#Domain(M3.UnionFind.Collect(old($Heap), this)), $Box(e#2))
           ==> M3.UnionFind.Collect#canCall(old($Heap), this)
             && M3.UnionFind.Reaches#canCall(this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this))
             && (M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this))
               ==> M3.UnionFind.Collect#canCall($Heap, this)
                 && M3.UnionFind.Reaches#canCall(this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)))));
  ensures {:id "id1982"} $_reverifyPost
     ==> (forall d#2: int, e#2: ref, r#2: ref :: 
      { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)) } 
        { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this)) } 
      LitInt(0) <= d#2
           && $Is(e#2, Tclass.M3.Element())
           && 
          $Is(r#2, Tclass.M3.Element())
           && $IsAlloc(r#2, Tclass.M3.Element(), $Heap)
         ==> 
        Set#IsMember(Map#Domain(M3.UnionFind.Collect(old($Heap), this)), $Box(e#2))
           && M3.UnionFind.Reaches($LS($LS($LZ)), this, d#2, e#2, r#2, M3.UnionFind.Collect(old($Heap), this))
         ==> M3.UnionFind.Reaches($LS($LS($LZ)), this, d#2, e#2, r#2, M3.UnionFind.Collect($Heap, this)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.FindAux (correctness)"} Impl$$M3.UnionFind.FindAux(this: ref, d#0: int, e#0: ref)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#1#0_0: ref;
  var next#0_0: ref;
  var let#0_0#0#0: ref;
  var e##0_0: ref;
  var $rhs##0_0: ref;
  var d##0_0: int;
  var e##0_1: ref;
  var C#0_0: Map
     where $Is(C#0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
       && $IsAlloc(C#0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
  var $rhs#0_0: DatatypeType;
  var td##0_0: int;
  var tt##0_0: ref;
  var tm##0_0: ref;
  var C##0_0: Map;
  var C'##0_0: Map;
  var _mcc#0#1_0: int;

    // AddMethodImpl: FindAux, Impl$$M3.UnionFind.FindAux
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    assume {:id "id1983"} e#0 != null;
    assume true;
    havoc _mcc#1#0_0;
    havoc _mcc#0#1_0;
    if ($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType
       == #M3.Contents.Root(_mcc#0#1_0))
    {
        assume LitInt(0) <= _mcc#0#1_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(158,11)
        assume true;
        assume true;
        r#0 := e#0;
        defass#r#0 := true;
    }
    else if ($Unbox(read($Heap, e#0, M3.Element.c)): DatatypeType
       == #M3.Contents.Link(_mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass.M3.Element())
           && $IsAlloc(_mcc#1#0_0, Tclass.M3.Element(), $Heap);
        havoc next#0_0;
        assume $Is(next#0_0, Tclass.M3.Element())
           && $IsAlloc(next#0_0, Tclass.M3.Element(), $Heap);
        assume {:id "id1984"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.M3.Element());
        assume {:id "id1985"} next#0_0 == let#0_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](160,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0;
        call {:id "id1986"} Call$$M3.UnionFind.NextReachesSame(this, e##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](161,21)
        assume true;
        // TrCallStmt: Adding lhs with type Element
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id1987"} $Is(d#0 - 1, Tclass._System.nat());
        d##0_0 := d#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_1 := next#0_0;
        assume {:id "id1988"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assume {:id "id1989"} 0 <= d#0 || d##0_0 == d#0;
        assume {:id "id1990"} d##0_0 < d#0 || (d##0_0 == d#0 && e##0_1 == null && e#0 != null);
        call {:id "id1991"} $rhs##0_0 := Call$$M3.UnionFind.FindAux(this, d##0_0, e##0_1);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##0_0;
        defass#r#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(162,21)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assume true;
        assume (forall f#0_0: ref :: 
          { $Unbox(read($Heap, f#0_0, M3.Element.c)): DatatypeType } 
          $Is(f#0_0, Tclass.M3.Element())
             ==> 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0))
               && M3.Contents.Link_q($Unbox(read($Heap, f#0_0, M3.Element.c)): DatatypeType)
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
              $Box(M3.Contents.next($Unbox(read($Heap, f#0_0, M3.Element.c)): DatatypeType))));
        assume M3.UnionFind.Collect#canCall($Heap, this);
        assume M3.UnionFind.Collect#canCall($Heap, this);
        C#0_0 := M3.UnionFind.Collect($Heap, this);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(163,13)
        assume {:id "id1994"} e#0 != null;
        assume true;
        assume {:id "id1995"} $_ModifiesFrame[e#0, M3.Element.c];
        assume {:id "id1996"} defass#r#0;
        assume true;
        $rhs#0_0 := #M3.Contents.Link(r#0);
        $Heap := update($Heap, e#0, M3.Element.c, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](164,31)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        td##0_0 := d#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tt##0_0 := e#0;
        assume {:id "id1999"} defass#r#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tm##0_0 := r#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0_0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
        assume true;
        assume (forall f#0_1: ref :: 
          { $Unbox(read($Heap, f#0_1, M3.Element.c)): DatatypeType } 
          $Is(f#0_1, Tclass.M3.Element())
             ==> 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_1))
               && M3.Contents.Link_q($Unbox(read($Heap, f#0_1, M3.Element.c)): DatatypeType)
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
              $Box(M3.Contents.next($Unbox(read($Heap, f#0_1, M3.Element.c)): DatatypeType))));
        assume M3.UnionFind.Collect#canCall($Heap, this);
        assume M3.UnionFind.Collect#canCall($Heap, this);
        // ProcessCallStmt: CheckSubrange
        C'##0_0 := M3.UnionFind.Collect($Heap, this);
        call {:id "id2000"} Call$$M3.UnionFind.UpdateMaintainsReaches(this, td##0_0, tt##0_0, tm##0_0, C##0_0, C'##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }

    assert {:id "id2002"} defass#r#0;
}



procedure {:verboseName "M3.UnionFind.UpdateMaintainsReaches (well-formedness)"} CheckWellFormed$$M3.UnionFind.UpdateMaintainsReaches(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.UpdateMaintainsReaches (call)"} Call$$M3.UnionFind.UpdateMaintainsReaches(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id2025"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#5: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType } 
        $Is(f#5, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#5))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id2026"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
  requires {:id "id2027"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> tt#0 == tm#0);
  requires {:id "id2028"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
          td#0 != 0));
  requires {:id "id2029"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, td#0 - 1, next#0, tm#0, C#0)));
  requires {:id "id2030"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
  requires {:id "id2031"} M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(tt#0)]): DatatypeType);
  requires {:id "id2032"} Set#IsMember(Map#Domain(C'#0), $Box(tm#0));
  requires {:id "id2033"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(tm#0)]): DatatypeType);
  requires {:id "id2034"} (forall f#2: ref :: 
    { $Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType } 
    $Is(f#2, Tclass.M3.Element?())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(f#2))
         && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType)
       ==> Set#IsMember(Map#Domain(C#0), 
        $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && $Is(r#1, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
       ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C#0)
         && (M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C'#0)));
  free ensures {:id "id2035"} (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && 
        $Is(r#1, Tclass.M3.Element())
         && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
         && M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
       ==> M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.UpdateMaintainsReaches (correctness)"} Impl$$M3.UnionFind.UpdateMaintainsReaches(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id2036"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#6: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType } 
      $Is(f#6, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#6))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType))));
  requires {:id "id2037"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
  free requires {:id "id2038"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
       then tt#0 == tm#0
       else (var next#3 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
        td#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, td#0 - 1, next#3, tm#0, C#0)));
  requires {:id "id2039"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
  requires {:id "id2040"} M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(tt#0)]): DatatypeType);
  requires {:id "id2041"} Set#IsMember(Map#Domain(C'#0), $Box(tm#0));
  requires {:id "id2042"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(tm#0)]): DatatypeType);
  requires {:id "id2043"} (forall f#2: ref :: 
    { $Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType } 
    $Is(f#2, Tclass.M3.Element?())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(f#2))
         && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType)
       ==> Set#IsMember(Map#Domain(C#0), 
        $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int, e#1: ref, r#1: ref :: 
    { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C'#0) } 
      { M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0) } 
    LitInt(0) <= d#1
         && $Is(e#1, Tclass.M3.Element())
         && $Is(r#1, Tclass.M3.Element())
       ==> 
      Set#IsMember(Map#Domain(C#0), $Box(e#1))
       ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C#0)
         && (M3.UnionFind.Reaches($LS($LZ), this, d#1, e#1, r#1, C#0)
           ==> M3.UnionFind.Reaches#canCall(this, d#1, e#1, r#1, C'#0)));
  ensures {:id "id2044"} $_reverifyPost
     ==> (forall d#1: int, e#1: ref, r#1: ref :: 
      { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C'#0) } 
        { M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C#0) } 
      LitInt(0) <= d#1
           && $Is(e#1, Tclass.M3.Element())
           && 
          $Is(r#1, Tclass.M3.Element())
           && $IsAlloc(r#1, Tclass.M3.Element(), $Heap)
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(e#1))
           && M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C#0)
         ==> M3.UnionFind.Reaches($LS($LS($LZ)), this, d#1, e#1, r#1, C'#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.UpdateMaintainsReaches (correctness)"} Impl$$M3.UnionFind.UpdateMaintainsReaches(this: ref, td#0: int, tt#0: ref, tm#0: ref, C#0: Map, C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var d#0_0: int;
  var e#0_0: ref;
  var r#0_0: ref;
  var ##d#0_0: int;
  var ##e#0_0: ref;
  var ##r#0_0: ref;
  var ##C#0_0: Map;
  var ##d#0_1: int;
  var ##e#0_1: ref;
  var ##r#0_1: ref;
  var ##C#0_1: Map;
  var d##0_0: int;
  var e##0_0: ref;
  var r##0_0: ref;
  var C##0_0: Map;
  var td##0_0: int;
  var tt##0_0: ref;
  var tm##0_0: ref;
  var C'##0_0: Map;

    // AddMethodImpl: UpdateMaintainsReaches, Impl$$M3.UnionFind.UpdateMaintainsReaches
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#td0#0: int, $ih#tt0#0: ref, $ih#tm0#0: ref, $ih#C0#0: Map, $ih#C'0#0: Map :: 
      { $Unbox(Map#Elements($ih#C'0#0)[$Box($ih#tt0#0)]): DatatypeType, M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tm0#0, $ih#C0#0) } 
      LitInt(0) <= $ih#td0#0
           && $Is($ih#tt0#0, Tclass.M3.Element())
           && $Is($ih#tm0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#tt0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tm0#0, $ih#C0#0)
           && 
          Map#Equal($ih#C'0#0, 
            Map#Build($ih#C0#0, $Box($ih#tt0#0), $Box(#M3.Contents.Link($ih#tm0#0))))
           && M3.Contents.Link_q($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#tt0#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($ih#C'0#0), $Box($ih#tm0#0))
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#tm0#0)]): DatatypeType)
           && (forall f#7: ref :: 
            { $Unbox(Map#Elements($ih#C'0#0)[$Box(f#7)]): DatatypeType } 
            $Is(f#7, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($ih#C0#0), $Box(f#7))
                 && M3.Contents.Link_q($Unbox(Map#Elements($ih#C'0#0)[$Box(f#7)]): DatatypeType)
               ==> Set#IsMember(Map#Domain($ih#C0#0), 
                $Box(M3.Contents.next($Unbox(Map#Elements($ih#C'0#0)[$Box(f#7)]): DatatypeType))))
           && ((0 <= $ih#td0#0 && $ih#td0#0 < td#0)
             || ($ih#td0#0 == td#0
               && (($ih#tt0#0 == null && tt#0 != null)
                 || (($ih#tt0#0 != null <==> tt#0 != null)
                   && (($ih#tm0#0 == null && tm#0 != null)
                     || (($ih#tm0#0 != null <==> tm#0 != null)
                       && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                         || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && 
                          Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                           && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))))
         ==> (forall d#2: int, e#2: ref, r#2: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, $ih#C'0#0) } 
            { M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, $ih#C0#0) } 
          LitInt(0) <= d#2
               && $Is(e#2, Tclass.M3.Element())
               && 
              $Is(r#2, Tclass.M3.Element())
               && $IsAlloc(r#2, Tclass.M3.Element(), $Heap)
             ==> 
            Set#IsMember(Map#Domain($ih#C0#0), $Box(e#2))
               && M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, $ih#C0#0)
             ==> M3.UnionFind.Reaches($LS($LZ), this, d#2, e#2, r#2, $ih#C'0#0)));
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](174,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc d#0_0, e#0_0, r#0_0;
        assume LitInt(0) <= d#0_0
           && $Is(e#0_0, Tclass.M3.Element())
           && 
          $Is(r#0_0, Tclass.M3.Element())
           && $IsAlloc(r#0_0, Tclass.M3.Element(), $Heap);
        if (Set#IsMember(Map#Domain(C#0), $Box(e#0_0)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            ##d#0_0 := d#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0_0, Tclass._System.nat(), $Heap);
            ##e#0_0 := e#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_0, Tclass.M3.Element(), $Heap);
            ##r#0_0 := r#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0_0, Tclass.M3.Element(), $Heap);
            ##C#0_0 := C#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assume {:id "id2045"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_0)
               ==> M3.__default.GoodCMap(##C#0_0)
                 || (forall f#0_0: ref :: 
                  { $Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType } 
                  $Is(f#0_0, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#0_0), $Box(f#0_0))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#0_0), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_0)[$Box(f#0_0)]): DatatypeType))));
            assume {:id "id2046"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_0), $Box(##e#0_0));
            assume M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C#0);
        }

        assume Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           ==> M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C#0);
        assume {:id "id2047"} Set#IsMember(Map#Domain(C#0), $Box(e#0_0))
           && M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C#0);
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            ##d#0_1 := d#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0_1, Tclass._System.nat(), $Heap);
            ##e#0_1 := e#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_1, Tclass.M3.Element(), $Heap);
            ##r#0_1 := r#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0_1, Tclass.M3.Element(), $Heap);
            ##C#0_1 := C'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0_1, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
            assume {:id "id2048"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_1)
               ==> M3.__default.GoodCMap(##C#0_1)
                 || (forall f#0_1: ref :: 
                  { $Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType } 
                  $Is(f#0_1, Tclass.M3.Element?())
                     ==> 
                    Set#IsMember(Map#Domain(##C#0_1), $Box(f#0_1))
                       && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType)
                     ==> Set#IsMember(Map#Domain(##C#0_1), 
                      $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_1)[$Box(f#0_1)]): DatatypeType))));
            assume {:id "id2049"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_1), $Box(##e#0_1));
            assume M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0);
            assume M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0);
            assume {:id "id2050"} M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0);
            assume false;
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](177,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##0_0 := d#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r##0_0 := r#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        td##0_0 := td#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tt##0_0 := tt#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tm##0_0 := tm#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C'##0_0 := C'#0;
        call {:id "id2051"} Call$$M3.UnionFind.ConstructReach(this, d##0_0, e##0_0, r##0_0, C##0_0, td##0_0, tt##0_0, tm##0_0, C'##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume {:id "id2052"} M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0)
             || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> e#0_0 == r#0_0);
        assume {:id "id2053"} M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType); 
                d#0_0 != 0));
        assume {:id "id2054"} M3.UnionFind.Reaches#canCall(this, d#0_0, e#0_0, r#0_0, C'#0)
           ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_0, e#0_0, r#0_0, C'#0)
             || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0_0)]): DatatypeType); 
                M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0_0 - 1, next#0_0, r#0_0, C'#0)));
        assume false;
    }
    else
    {
        assume (forall d#0_1: int, e#0_1: ref, r#0_1: ref :: 
          { M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C'#0) } 
            { M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C#0) } 
          LitInt(0) <= d#0_1
               && $Is(e#0_1, Tclass.M3.Element())
               && 
              $Is(r#0_1, Tclass.M3.Element())
               && $IsAlloc(r#0_1, Tclass.M3.Element(), $Heap)
               && 
              Set#IsMember(Map#Domain(C#0), $Box(e#0_1))
               && M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C#0)
             ==> M3.UnionFind.Reaches($LS($LZ), this, d#0_1, e#0_1, r#0_1, C'#0));
    }
}



procedure {:verboseName "M3.UnionFind.ConstructReach (well-formedness)"} CheckWellFormed$$M3.UnionFind.ConstructReach(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.ConstructReach (call)"} Call$$M3.UnionFind.ConstructReach(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id2068"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#3: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType } 
        $Is(f#3, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#3))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#3)]): DatatypeType))));
  requires {:id "id2069"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id2070"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  requires {:id "id2071"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  requires {:id "id2072"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#0, r#0, C#0)));
  requires {:id "id2073"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
  requires {:id "id2074"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> tt#0 == tm#0);
  requires {:id "id2075"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
          td#0 != 0));
  requires {:id "id2076"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
         ==> (var next#2 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, td#0 - 1, next#2, tm#0, C#0)));
  requires {:id "id2077"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
  requires {:id "id2078"} M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(tt#0)]): DatatypeType);
  requires {:id "id2079"} Set#IsMember(Map#Domain(C'#0), $Box(tm#0));
  requires {:id "id2080"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(tm#0)]): DatatypeType);
  requires {:id "id2081"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#4: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType } 
        $Is(f#4, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#4))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#4)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
  free ensures {:id "id2082"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#5, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.ConstructReach (correctness)"} Impl$$M3.UnionFind.ConstructReach(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    td#0: int where LitInt(0) <= td#0, 
    tt#0: ref
       where $Is(tt#0, Tclass.M3.Element()) && $IsAlloc(tt#0, Tclass.M3.Element(), $Heap), 
    tm#0: ref
       where $Is(tm#0, Tclass.M3.Element()) && $IsAlloc(tm#0, Tclass.M3.Element(), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id2083"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#5: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType } 
      $Is(f#5, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#5))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id2084"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id2085"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#7 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#7, r#0, C#0)));
  requires {:id "id2086"} Set#IsMember(Map#Domain(C#0), $Box(tt#0));
  free requires {:id "id2087"} M3.UnionFind.Reaches#canCall(this, td#0, tt#0, tm#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, td#0, tt#0, tm#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType)
       then tt#0 == tm#0
       else (var next#9 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(tt#0)]): DatatypeType); 
        td#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, td#0 - 1, next#9, tm#0, C#0)));
  requires {:id "id2088"} Map#Equal(C'#0, Map#Build(C#0, $Box(tt#0), $Box(#M3.Contents.Link(tm#0))));
  requires {:id "id2089"} M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(tt#0)]): DatatypeType);
  requires {:id "id2090"} Set#IsMember(Map#Domain(C'#0), $Box(tm#0));
  requires {:id "id2091"} M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(tm#0)]): DatatypeType);
  free requires {:id "id2092"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#6: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType } 
      $Is(f#6, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#6))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#6)]): DatatypeType))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
  ensures {:id "id2093"} $_reverifyPost
     ==> 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  ensures {:id "id2094"} $_reverifyPost
     ==> 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#10 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  ensures {:id "id2095"} $_reverifyPost
     ==> 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#10 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#10, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.ConstructReach (correctness)"} Impl$$M3.UnionFind.ConstructReach(this: ref, 
    d#0: int, 
    e#0: ref, 
    r#0: ref, 
    C#0: Map, 
    td#0: int, 
    tt#0: ref, 
    tm#0: ref, 
    C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var d0##0_0: int;
  var d1##0_0: int;
  var e##0_0: ref;
  var r0##0_0: ref;
  var r1##0_0: ref;
  var C##0_0: Map;
  var _mcc#1#1_0_0: ref;
  var next#1_0_0: ref;
  var let#1_0_0#0#0: ref;
  var d##1_0_0: int;
  var e##1_0_0: ref;
  var r##1_0_0: ref;
  var C##1_0_0: Map;
  var td##1_0_0: int;
  var tt##1_0_0: ref;
  var tm##1_0_0: ref;
  var C'##1_0_0: Map;
  var _mcc#0#1_1_0: int;

    // AddMethodImpl: ConstructReach, Impl$$M3.UnionFind.ConstructReach
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#d0#0: int, 
        $ih#e0#0: ref, 
        $ih#r0#0: ref, 
        $ih#C0#0: Map, 
        $ih#td0#0: int, 
        $ih#tt0#0: ref, 
        $ih#tm0#0: ref, 
        $ih#C'0#0: Map :: 
      { M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tm0#0, $ih#C0#0) } 
        { M3.__default.GoodCMap($ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tm0#0, $ih#C0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0) } 
        { $Unbox(Map#Elements($ih#C'0#0)[$Box($ih#tt0#0)]): DatatypeType, M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tm0#0, $ih#C0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0) } 
      LitInt(0) <= $ih#d0#0
           && $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#r0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && LitInt(0) <= $ih#td0#0
           && $Is($ih#tt0#0, Tclass.M3.Element())
           && $Is($ih#tm0#0, Tclass.M3.Element())
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0)
           && 
          Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#tt0#0))
           && M3.UnionFind.Reaches($LS($LZ), this, $ih#td0#0, $ih#tt0#0, $ih#tm0#0, $ih#C0#0)
           && 
          Map#Equal($ih#C'0#0, 
            Map#Build($ih#C0#0, $Box($ih#tt0#0), $Box(#M3.Contents.Link($ih#tm0#0))))
           && M3.Contents.Link_q($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#tt0#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($ih#C'0#0), $Box($ih#tm0#0))
           && M3.Contents.Root_q($Unbox(Map#Elements($ih#C'0#0)[$Box($ih#tm0#0)]): DatatypeType)
           && M3.__default.GoodCMap($ih#C'0#0)
           && ((0 <= $ih#d0#0 && $ih#d0#0 < d#0)
             || ($ih#d0#0 == d#0
               && (($ih#e0#0 == null && e#0 != null)
                 || (($ih#e0#0 != null <==> e#0 != null)
                   && (($ih#r0#0 == null && r#0 != null)
                     || (($ih#r0#0 != null <==> r#0 != null)
                       && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                         || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && ((0 <= $ih#td0#0 && $ih#td0#0 < td#0)
                             || ($ih#td0#0 == td#0
                               && (($ih#tt0#0 == null && tt#0 != null)
                                 || (($ih#tt0#0 != null <==> tt#0 != null)
                                   && (($ih#tm0#0 == null && tm#0 != null)
                                     || (($ih#tm0#0 != null <==> tm#0 != null)
                                       && 
                                      Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                                       && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))))))))))
         ==> M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](190,7)
    assume true;
    if (e#0 == tt#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](191,38)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d0##0_0 := d#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d1##0_0 := td#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r0##0_0 := r#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r1##0_0 := tm#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := C#0;
        call {:id "id2096"} Call$$M3.UnionFind.Reaches__SinkIsFunctionOfStart(this, d0##0_0, d1##0_0, e##0_0, r0##0_0, r1##0_0, C##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume {:id "id2097"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
        assume true;
        havoc _mcc#1#1_0_0;
        havoc _mcc#0#1_1_0;
        if ($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType
           == #M3.Contents.Root(_mcc#0#1_1_0))
        {
            assume LitInt(0) <= _mcc#0#1_1_0;
        }
        else if ($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType
           == #M3.Contents.Link(_mcc#1#1_0_0))
        {
            assume $Is(_mcc#1#1_0_0, Tclass.M3.Element());
            havoc next#1_0_0;
            assume $Is(next#1_0_0, Tclass.M3.Element())
               && $IsAlloc(next#1_0_0, Tclass.M3.Element(), $Heap);
            assume {:id "id2098"} let#1_0_0#0#0 == _mcc#1#1_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_0_0#0#0, Tclass.M3.Element());
            assume {:id "id2099"} next#1_0_0 == let#1_0_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M3](196,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id2100"} $Is(d#0 - 1, Tclass._System.nat());
            d##1_0_0 := d#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##1_0_0 := next#1_0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            r##1_0_0 := r#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            C##1_0_0 := C#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            td##1_0_0 := td#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            tt##1_0_0 := tt#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            tm##1_0_0 := tm#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            C'##1_0_0 := C'#0;
            assume {:id "id2101"} 0 <= d#0 || d##1_0_0 == d#0;
            assume {:id "id2102"} 0 <= td#0
               || d##1_0_0 < d#0
               || (e##1_0_0 == null && e#0 != null)
               || (r##1_0_0 == null && r#0 != null)
               || (Set#Subset(Map#Domain(C##1_0_0), Map#Domain(C#0))
                 && !Set#Subset(Map#Domain(C#0), Map#Domain(C##1_0_0)))
               || td##1_0_0 == td#0;
            assume {:id "id2103"} d##1_0_0 < d#0
               || (d##1_0_0 == d#0
                 && ((e##1_0_0 == null && e#0 != null)
                   || ((e##1_0_0 != null <==> e#0 != null)
                     && ((r##1_0_0 == null && r#0 != null)
                       || ((r##1_0_0 != null <==> r#0 != null)
                         && ((Set#Subset(Map#Domain(C##1_0_0), Map#Domain(C#0))
                             && !Set#Subset(Map#Domain(C#0), Map#Domain(C##1_0_0)))
                           || (Set#Equal(Map#Domain(C##1_0_0), Map#Domain(C#0))
                             && (td##1_0_0 < td#0
                               || (td##1_0_0 == td#0
                                 && ((tt##1_0_0 == null && tt#0 != null)
                                   || ((tt##1_0_0 != null <==> tt#0 != null)
                                     && ((tm##1_0_0 == null && tm#0 != null)
                                       || ((tm##1_0_0 != null <==> tm#0 != null)
                                         && 
                                        Set#Subset(Map#Domain(C'##1_0_0), Map#Domain(C'#0))
                                         && !Set#Subset(Map#Domain(C'#0), Map#Domain(C'##1_0_0)))))))))))))));
            call {:id "id2104"} Call$$M3.UnionFind.ConstructReach(this, d##1_0_0, e##1_0_0, r##1_0_0, C##1_0_0, td##1_0_0, tt##1_0_0, tm##1_0_0, C'##1_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
}



// function declaration for M3.UnionFind.ValidM1
function M3.UnionFind.ValidM1($heap: Heap, this: ref) : bool
uses {
// consequence axiom for M3.UnionFind.ValidM1
axiom 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { M3.UnionFind.ValidM1($Heap, this) } 
    M3.UnionFind.ValidM1#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.M3.UnionFind())
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
       ==> 
      Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, Map#Empty(): Map)
       ==> M3.UnionFind.ValidM1($Heap, this));
// definition axiom for M3.UnionFind.ValidM1 (revealed)
axiom {:id "id2105"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { M3.UnionFind.ValidM1($Heap, this), $IsGoodHeap($Heap) } 
    M3.UnionFind.ValidM1#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.M3.UnionFind())
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
       ==> (Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set)
           ==> 
          (forall e#0: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref } 
            $Is(e#0, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]))
           ==> 
          (forall e#1: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1)) } 
            $Is(e#1, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref)
           ==> 
          (forall e#2: ref :: 
            { $Unbox(read($Heap, e#2, M3.Element.c)): DatatypeType } 
            $Is(e#2, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#2, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#2, M3.Element.c)): DatatypeType))))
           ==> (forall e#3: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3)) } 
            $Is(e#3, Tclass.M3.Element())
               ==> 
              (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
               ==> M3.Contents.Root_q($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref, 
                    M3.Element.c)): DatatypeType))
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
               ==> M3.UnionFind.Collect#canCall($Heap, this)
                 && M3.UnionFind.Reaches#canCall(this, 
                  M3.Contents.depth($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref, 
                        M3.Element.c)): DatatypeType), 
                  e#3, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref, 
                  M3.UnionFind.Collect($Heap, this))))
         && M3.UnionFind.ValidM1($Heap, this)
           == (
            Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
              $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set)
             && 
            (forall e#0: ref :: 
              { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]): ref } 
              $Is(e#0, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#0))
                 ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                  Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#0)]))
             && (forall e#1: ref :: 
              { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]]): ref } 
                { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1)) } 
              $Is(e#1, Tclass.M3.Element?())
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
                 ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]]): ref
                   == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref)
             && (forall e#2: ref :: 
              { $Unbox(read($Heap, e#2, M3.Element.c)): DatatypeType } 
              $Is(e#2, Tclass.M3.Element())
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
                   && M3.Contents.Link_q($Unbox(read($Heap, e#2, M3.Element.c)): DatatypeType)
                 ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                  $Box(M3.Contents.next($Unbox(read($Heap, e#2, M3.Element.c)): DatatypeType))))
             && (forall e#3: ref :: 
              { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref } 
                { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3)) } 
              $Is(e#3, Tclass.M3.Element())
                 ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                     ==> M3.Contents.Root_q($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref, 
                          M3.Element.c)): DatatypeType))
                   && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                     ==> M3.UnionFind.Reaches($LS($LZ), 
                      this, 
                      M3.Contents.depth($Unbox(read($Heap, 
                            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref, 
                            M3.Element.c)): DatatypeType), 
                      e#3, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#3)]): ref, 
                      M3.UnionFind.Collect($Heap, this))))));
}

function M3.UnionFind.ValidM1#canCall($heap: Heap, this: ref) : bool;

// frame axiom for M3.UnionFind.ValidM1
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), M3.UnionFind.ValidM1($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.M3.UnionFind())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, M3.UnionFind.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> M3.UnionFind.ValidM1($h0, this) == M3.UnionFind.ValidM1($h1, this));

function M3.UnionFind.ValidM1#requires(Heap, ref) : bool;

// #requires axiom for M3.UnionFind.ValidM1
axiom (forall $Heap: Heap, this: ref :: 
  { M3.UnionFind.ValidM1#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.M3.UnionFind())
       && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap)
     ==> M3.UnionFind.ValidM1#requires($Heap, this) == true);

procedure {:verboseName "M3.UnionFind.ValidM1 (well-formedness)"} CheckWellformed$$M3.UnionFind.ValidM1(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M3.UnionFind.Collect
function M3.UnionFind.Collect($heap: Heap, this: ref) : Map
uses {
// consequence axiom for M3.UnionFind.Collect
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { M3.UnionFind.Collect($Heap, this) } 
    M3.UnionFind.Collect#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.M3.UnionFind())
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap)
           && (forall f#0: ref :: 
            { $Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType } 
            $Is(f#0, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0))
                 && M3.Contents.Link_q($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType)))))
       ==> M3.__default.GoodCMap(M3.UnionFind.Collect($Heap, this))
         && $Is(M3.UnionFind.Collect($Heap, this), 
          TMap(Tclass.M3.Element(), Tclass.M3.Contents())));
// alloc consequence axiom for M3.UnionFind.Collect
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { $IsAlloc(M3.UnionFind.Collect($Heap, this), 
        TMap(Tclass.M3.Element(), Tclass.M3.Contents()), 
        $Heap) } 
    M3.UnionFind.Collect#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap)
           && (forall f#0: ref :: 
            { $Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType } 
            $Is(f#0, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0))
                 && M3.Contents.Link_q($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType)))))
       ==> $IsAlloc(M3.UnionFind.Collect($Heap, this), 
        TMap(Tclass.M3.Element(), Tclass.M3.Contents()), 
        $Heap));
// definition axiom for M3.UnionFind.Collect (revealed)
axiom {:id "id2144"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { M3.UnionFind.Collect($Heap, this), $IsGoodHeap($Heap) } 
    M3.UnionFind.Collect#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.M3.UnionFind())
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap)
           && (forall f#1: ref :: 
            { $Unbox(read($Heap, f#1, M3.Element.c)): DatatypeType } 
            $Is(f#1, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1))
                 && M3.Contents.Link_q($Unbox(read($Heap, f#1, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, f#1, M3.Element.c)): DatatypeType)))))
       ==> M3.UnionFind.Collect($Heap, this)
         == Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
              $IsBox($w#0, Tclass.M3.Element())
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $w#0))), 
          (lambda $w#0: Box :: read($Heap, $Unbox($w#0): ref, M3.Element.c)), 
          TMap(Tclass.M3.Element(), Tclass.M3.Contents())));
}

function M3.UnionFind.Collect#canCall($heap: Heap, this: ref) : bool;

// frame axiom for M3.UnionFind.Collect
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), M3.UnionFind.Collect($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.M3.UnionFind())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || ($Is($o, Tclass.M3.Element())
               && Set#IsMember(Map#Domain($Unbox(read($h0, this, M3.UnionFind.M)): Map), $Box($o))))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> M3.UnionFind.Collect($h0, this) == M3.UnionFind.Collect($h1, this));

function M3.UnionFind.Collect#requires(Heap, ref) : bool;

// #requires axiom for M3.UnionFind.Collect
axiom (forall $Heap: Heap, this: ref :: 
  { M3.UnionFind.Collect#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.M3.UnionFind())
       && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap)
     ==> M3.UnionFind.Collect#requires($Heap, this)
       == (forall f#1: ref :: 
        { $Unbox(read($Heap, f#1, M3.Element.c)): DatatypeType } 
        $Is(f#1, Tclass.M3.Element())
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#1))
             && M3.Contents.Link_q($Unbox(read($Heap, f#1, M3.Element.c)): DatatypeType)
           ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Box(M3.Contents.next($Unbox(read($Heap, f#1, M3.Element.c)): DatatypeType)))));

procedure {:verboseName "M3.UnionFind.Collect (well-formedness)"} CheckWellformed$$M3.UnionFind.Collect(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M3.UnionFind.Reaches
function M3.UnionFind.Reaches($ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map) : bool
uses {
// definition axiom for M3.UnionFind.Reaches (revealed)
axiom {:id "id2164"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map :: 
    { M3.UnionFind.Reaches($LS($ly), this, d#0, e#0, r#0, C#0) } 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.M3.UnionFind())
           && LitInt(0) <= d#0
           && $Is(e#0, Tclass.M3.Element())
           && $Is(r#0, Tclass.M3.Element())
           && $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap(C#0)
           && Set#IsMember(Map#Domain(C#0), $Box(e#0)))
       ==> (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
           ==> (var next#1 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
            d#0 != 0 ==> M3.UnionFind.Reaches#canCall(this, d#0 - 1, next#1, r#0, C#0)))
         && M3.UnionFind.Reaches($LS($ly), this, d#0, e#0, r#0, C#0)
           == (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
             then e#0 == r#0
             else (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
              d#0 != 0 && M3.UnionFind.Reaches($ly, this, d#0 - 1, next#0, r#0, C#0))));
// definition axiom for M3.UnionFind.Reaches for decreasing-related literals (revealed)
axiom {:id "id2165"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map :: 
    {:weight 3} { M3.UnionFind.Reaches($LS($ly), this, LitInt(d#0), Lit(e#0), Lit(r#0), Lit(C#0)) } 
    M3.UnionFind.Reaches#canCall(this, LitInt(d#0), Lit(e#0), Lit(r#0), Lit(C#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.M3.UnionFind())
           && LitInt(0) <= d#0
           && $Is(e#0, Tclass.M3.Element())
           && $Is(r#0, Tclass.M3.Element())
           && $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          Lit(M3.__default.GoodCMap(Lit(C#0)))
           && Set#IsMember(Map#Domain(C#0), $Box(e#0)))
       ==> (!M3.Contents.Root_q($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType)
           ==> (var next#3 := M3.Contents.next($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType); 
            Lit(d#0 != 0)
               ==> M3.UnionFind.Reaches#canCall(this, LitInt(d#0 - 1), next#3, Lit(r#0), Lit(C#0))))
         && M3.UnionFind.Reaches($LS($ly), this, LitInt(d#0), Lit(e#0), Lit(r#0), Lit(C#0))
           == (if M3.Contents.Root_q($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType)
             then Lit(e#0) == Lit(r#0)
             else (var next#2 := M3.Contents.next($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType); 
              d#0 != 0
                 && M3.UnionFind.Reaches($LS($ly), this, LitInt(d#0 - 1), next#2, Lit(r#0), Lit(C#0)))));
// definition axiom for M3.UnionFind.Reaches for all literals (revealed)
axiom {:id "id2166"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map :: 
    {:weight 3} { M3.UnionFind.Reaches($LS($ly), Lit(this), LitInt(d#0), Lit(e#0), Lit(r#0), Lit(C#0)) } 
    M3.UnionFind.Reaches#canCall(Lit(this), LitInt(d#0), Lit(e#0), Lit(r#0), Lit(C#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.M3.UnionFind())
           && LitInt(0) <= d#0
           && $Is(e#0, Tclass.M3.Element())
           && $Is(r#0, Tclass.M3.Element())
           && $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          Lit(M3.__default.GoodCMap(Lit(C#0)))
           && Set#IsMember(Map#Domain(C#0), $Box(e#0)))
       ==> (!M3.Contents.Root_q($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType)
           ==> (var next#5 := M3.Contents.next($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType); 
            Lit(d#0 != 0)
               ==> M3.UnionFind.Reaches#canCall(Lit(this), LitInt(d#0 - 1), next#5, Lit(r#0), Lit(C#0))))
         && M3.UnionFind.Reaches($LS($ly), Lit(this), LitInt(d#0), Lit(e#0), Lit(r#0), Lit(C#0))
           == (if M3.Contents.Root_q($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType)
             then Lit(e#0) == Lit(r#0)
             else (var next#4 := M3.Contents.next($Unbox(Map#Elements(Lit(C#0))[$Box(Lit(e#0))]): DatatypeType); 
              d#0 != 0
                 && M3.UnionFind.Reaches($LS($ly), Lit(this), LitInt(d#0 - 1), next#4, Lit(r#0), Lit(C#0)))));
}

function M3.UnionFind.Reaches#canCall(this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map :: 
  { M3.UnionFind.Reaches($LS($ly), this, d#0, e#0, r#0, C#0) } 
  M3.UnionFind.Reaches($LS($ly), this, d#0, e#0, r#0, C#0)
     == M3.UnionFind.Reaches($ly, this, d#0, e#0, r#0, C#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map :: 
  { M3.UnionFind.Reaches(AsFuelBottom($ly), this, d#0, e#0, r#0, C#0) } 
  M3.UnionFind.Reaches($ly, this, d#0, e#0, r#0, C#0)
     == M3.UnionFind.Reaches($LZ, this, d#0, e#0, r#0, C#0));

function M3.UnionFind.Reaches#requires(LayerType, ref, int, ref, ref, Map) : bool;

// #requires axiom for M3.UnionFind.Reaches
axiom (forall $ly: LayerType, this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map :: 
  { M3.UnionFind.Reaches#requires($ly, this, d#0, e#0, r#0, C#0) } 
  this != null
       && $Is(this, Tclass.M3.UnionFind())
       && LitInt(0) <= d#0
       && $Is(e#0, Tclass.M3.Element())
       && $Is(r#0, Tclass.M3.Element())
       && $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
     ==> M3.UnionFind.Reaches#requires($ly, this, d#0, e#0, r#0, C#0)
       == (M3.__default.GoodCMap(C#0) && Set#IsMember(Map#Domain(C#0), $Box(e#0))));

procedure {:verboseName "M3.UnionFind.Reaches (well-formedness)"} CheckWellformed$$M3.UnionFind.Reaches(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref where $Is(e#0, Tclass.M3.Element()), 
    r#0: ref where $Is(r#0, Tclass.M3.Element()), 
    C#0: Map where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents())));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.Reaches_Monotonic (well-formedness)"} CheckWellFormed$$M3.UnionFind.Reaches__Monotonic(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.Reaches_Monotonic (call)"} Call$$M3.UnionFind.Reaches__Monotonic(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap));
  // user-defined preconditions
  requires {:id "id2189"} M3.__default.GoodCMap#canCall(C#0)
     ==> M3.__default.GoodCMap(C#0)
       || (forall f#4: ref :: 
        { $Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType } 
        $Is(f#4, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C#0), $Box(f#4))
             && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#4)]): DatatypeType))));
  requires {:id "id2190"} M3.__default.GoodCMap#canCall(C'#0)
     ==> M3.__default.GoodCMap(C'#0)
       || (forall f#5: ref :: 
        { $Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType } 
        $Is(f#5, Tclass.M3.Element?())
           ==> 
          Set#IsMember(Map#Domain(C'#0), $Box(f#5))
             && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType)
           ==> Set#IsMember(Map#Domain(C'#0), 
            $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#5)]): DatatypeType))));
  requires {:id "id2191"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  requires {:id "id2192"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  requires {:id "id2193"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  requires {:id "id2194"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#0 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#0, r#0, C#0)));
  requires {:id "id2195"} (forall f#2: ref :: 
    { $Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType } 
      { $Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType } 
      { Set#IsMember(Map#Domain(C'#0), $Box(f#2)) } 
      { Set#IsMember(Map#Domain(C#0), $Box(f#2)) } 
    $Is(f#2, Tclass.M3.Element?())
       ==> (Set#IsMember(Map#Domain(C#0), $Box(f#2))
           ==> Set#IsMember(Map#Domain(C'#0), $Box(f#2)))
         && (Set#IsMember(Map#Domain(C#0), $Box(f#2))
           ==> M3.Contents#Equal($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType, 
            $Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
  free ensures {:id "id2196"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#3 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#3, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M3.UnionFind.Reaches_Monotonic (correctness)"} Impl$$M3.UnionFind.Reaches__Monotonic(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    d#0: int where LitInt(0) <= d#0, 
    e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    C#0: Map
       where $Is(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap), 
    C'#0: Map
       where $Is(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
         && $IsAlloc(C'#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id2197"} M3.__default.GoodCMap#canCall(C#0)
     && 
    M3.__default.GoodCMap(C#0)
     && (forall f#6: ref :: 
      { $Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType } 
      $Is(f#6, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C#0), $Box(f#6))
           && M3.Contents.Link_q($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(f#6)]): DatatypeType))));
  free requires {:id "id2198"} M3.__default.GoodCMap#canCall(C'#0)
     && 
    M3.__default.GoodCMap(C'#0)
     && (forall f#7: ref :: 
      { $Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType } 
      $Is(f#7, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain(C'#0), $Box(f#7))
           && M3.Contents.Link_q($Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType)
         ==> Set#IsMember(Map#Domain(C'#0), 
          $Box(M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(f#7)]): DatatypeType))));
  requires {:id "id2199"} Set#IsMember(Map#Domain(C#0), $Box(e#0));
  free requires {:id "id2200"} M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C#0)
     && 
    M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C#0)
     && (if M3.Contents.Root_q($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType)
       then e#0 == r#0
       else (var next#5 := M3.Contents.next($Unbox(Map#Elements(C#0)[$Box(e#0)]): DatatypeType); 
        d#0 != 0 && M3.UnionFind.Reaches($LS($LZ), this, d#0 - 1, next#5, r#0, C#0)));
  requires {:id "id2201"} (forall f#2: ref :: 
    { $Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType } 
      { $Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType } 
      { Set#IsMember(Map#Domain(C'#0), $Box(f#2)) } 
      { Set#IsMember(Map#Domain(C#0), $Box(f#2)) } 
    $Is(f#2, Tclass.M3.Element?())
       ==> (Set#IsMember(Map#Domain(C#0), $Box(f#2))
           ==> Set#IsMember(Map#Domain(C'#0), $Box(f#2)))
         && (Set#IsMember(Map#Domain(C#0), $Box(f#2))
           ==> M3.Contents#Equal($Unbox(Map#Elements(C#0)[$Box(f#2)]): DatatypeType, 
            $Unbox(Map#Elements(C'#0)[$Box(f#2)]): DatatypeType)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0);
  ensures {:id "id2202"} $_reverifyPost
     ==> 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> e#0 == r#0);
  ensures {:id "id2203"} $_reverifyPost
     ==> 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#6 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          d#0 != 0));
  ensures {:id "id2204"} $_reverifyPost
     ==> 
    M3.UnionFind.Reaches#canCall(this, d#0, e#0, r#0, C'#0)
     ==> M3.UnionFind.Reaches($LS($LZ), this, d#0, e#0, r#0, C'#0)
       || (!M3.Contents.Root_q($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType)
         ==> (var next#6 := M3.Contents.next($Unbox(Map#Elements(C'#0)[$Box(e#0)]): DatatypeType); 
          M3.UnionFind.Reaches($LS($LS($LZ)), this, d#0 - 1, next#6, r#0, C'#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.Reaches_Monotonic (correctness)"} Impl$$M3.UnionFind.Reaches__Monotonic(this: ref, d#0: int, e#0: ref, r#0: ref, C#0: Map, C'#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Reaches_Monotonic, Impl$$M3.UnionFind.Reaches__Monotonic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#d0#0: int, $ih#e0#0: ref, $ih#r0#0: ref, $ih#C0#0: Map, $ih#C'0#0: Map :: 
      { M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0), M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0) } 
        { M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0), M3.__default.GoodCMap($ih#C0#0) } 
        { M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0), M3.__default.GoodCMap($ih#C'0#0) } 
      LitInt(0) <= $ih#d0#0
           && $Is($ih#e0#0, Tclass.M3.Element())
           && $Is($ih#r0#0, Tclass.M3.Element())
           && $Is($ih#C0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && $Is($ih#C'0#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()))
           && 
          M3.__default.GoodCMap($ih#C0#0)
           && M3.__default.GoodCMap($ih#C'0#0)
           && Set#IsMember(Map#Domain($ih#C0#0), $Box($ih#e0#0))
           && 
          M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C0#0)
           && (forall f#8: ref :: 
            { $Unbox(Map#Elements($ih#C'0#0)[$Box(f#8)]): DatatypeType } 
              { $Unbox(Map#Elements($ih#C0#0)[$Box(f#8)]): DatatypeType } 
              { Set#IsMember(Map#Domain($ih#C'0#0), $Box(f#8)) } 
              { Set#IsMember(Map#Domain($ih#C0#0), $Box(f#8)) } 
            $Is(f#8, Tclass.M3.Element?())
               ==> (Set#IsMember(Map#Domain($ih#C0#0), $Box(f#8))
                   ==> Set#IsMember(Map#Domain($ih#C'0#0), $Box(f#8)))
                 && (Set#IsMember(Map#Domain($ih#C0#0), $Box(f#8))
                   ==> M3.Contents#Equal($Unbox(Map#Elements($ih#C0#0)[$Box(f#8)]): DatatypeType, 
                    $Unbox(Map#Elements($ih#C'0#0)[$Box(f#8)]): DatatypeType)))
           && ((0 <= $ih#d0#0 && $ih#d0#0 < d#0)
             || ($ih#d0#0 == d#0
               && (($ih#e0#0 == null && e#0 != null)
                 || (($ih#e0#0 != null <==> e#0 != null)
                   && (($ih#r0#0 == null && r#0 != null)
                     || (($ih#r0#0 != null <==> r#0 != null)
                       && ((Set#Subset(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && !Set#Subset(Map#Domain(C#0), Map#Domain($ih#C0#0)))
                         || (Set#Equal(Map#Domain($ih#C0#0), Map#Domain(C#0))
                           && 
                          Set#Subset(Map#Domain($ih#C'0#0), Map#Domain(C'#0))
                           && !Set#Subset(Map#Domain(C'#0), Map#Domain($ih#C'0#0))))))))))
         ==> M3.UnionFind.Reaches($LS($LZ), this, $ih#d0#0, $ih#e0#0, $ih#r0#0, $ih#C'0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "M3.UnionFind.New (well-formedness)"} CheckWellFormed$$M3.UnionFind.New(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
   returns (e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.New (call)"} Call$$M3.UnionFind.New(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
   returns (e#0: ref
       where $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap));
  // user-defined preconditions
  requires {:id "id2216"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  requires {:id "id2217"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  requires {:id "id2218"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  requires {:id "id2219"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#1: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref } 
            $Is(e#1, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)])));
  requires {:id "id2220"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#2: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2)) } 
            $Is(e#2, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]): ref));
  requires {:id "id2221"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#3: ref :: 
            { $Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType } 
            $Is(e#3, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)))));
  requires {:id "id2222"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4)) } 
            $Is(e#4, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#4, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  free ensures {:id "id2223"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  free ensures true;
  ensures {:id "id2224"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id2225"} !Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#0));
  ensures {:id "id2226"} (forall e'#1: ref :: 
    { $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e'#1)]): ref } 
      { Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e'#1)) } 
    $Is(e'#1, Tclass.M3.Element?())
       ==> 
      Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e'#1))
       ==> $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e'#1)]): ref
         != e#0);
  free ensures true;
  ensures {:id "id2227"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
    Map#Build($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map, $Box(e#0), $Box(e#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.UnionFind.New (correctness)"} Impl$$M3.UnionFind.New(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
   returns (defass#e#0: bool, 
    e#0: ref
       where defass#e#0
         ==> $Is(e#0, Tclass.M3.Element()) && $IsAlloc(e#0, Tclass.M3.Element(), $Heap), 
    $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id2228"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  ensures {:id "id2229"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  ensures {:id "id2230"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  ensures {:id "id2231"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  ensures {:id "id2232"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#13: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#13)]): ref } 
            $Is(e#13, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#13))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#13)])));
  ensures {:id "id2233"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#14: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#14)) } 
            $Is(e#14, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#14))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]): ref));
  ensures {:id "id2234"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#15: ref :: 
            { $Unbox(read($Heap, e#15, M3.Element.c)): DatatypeType } 
            $Is(e#15, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#15, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#15, M3.Element.c)): DatatypeType)))));
  ensures {:id "id2235"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#16: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16)) } 
            $Is(e#16, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#16, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#16)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  free ensures true;
  ensures {:id "id2236"} $_reverifyPost
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id2237"} $_reverifyPost
     ==> !Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e#0));
  ensures {:id "id2238"} $_reverifyPost
     ==> (forall e'#1: ref :: 
      { $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e'#1)]): ref } 
        { Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e'#1)) } 
      $Is(e'#1, Tclass.M3.Element?())
         ==> 
        Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(e'#1))
         ==> $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e'#1)]): ref
           != e#0);
  free ensures true;
  ensures {:id "id2239"} $_reverifyPost
     ==> Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
      Map#Build($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map, $Box(e#0), $Box(e#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.New (correctness)"} Impl$$M3.UnionFind.New(this: ref) returns (defass#e#0: bool, e#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0: DatatypeType;
  var $rhs#1: Set;
  var $rhs#2: Map;
  var ##d#0: int;
  var ##e#0: ref;
  var ##r#0: ref;
  var ##C#0: Map;
  var f#0_0: ref;
  var ##d#0_0: int;
  var ##e#0_0: ref;
  var ##r#0_0: ref;
  var ##C#0_0: Map;
  var d##0_0_0: int;
  var e##0_0_0: ref;
  var r##0_0_0: ref;
  var C##0_0_0: Map;
  var C'##0_0_0: Map;

    // AddMethodImpl: New, Impl$$M3.UnionFind.New
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(88,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass.M3.Element?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    e#0 := $nw;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(89,11)
    assume {:id "id2241"} defass#e#0;
    assume {:id "id2242"} e#0 != null;
    assume true;
    assume {:id "id2243"} $_ModifiesFrame[e#0, M3.Element.c];
    assume {:id "id2244"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    $rhs#0 := Lit(#M3.Contents.Root(LitInt(0)));
    $Heap := update($Heap, e#0, M3.Element.c, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(90,12)
    assume true;
    assume {:id "id2247"} $_ModifiesFrame[this, M3.UnionFind.Repr];
    assume {:id "id2248"} defass#e#0;
    assume true;
    $rhs#1 := Set#Union($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(e#0)));
    $Heap := update($Heap, this, M3.UnionFind.Repr, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(91,9)
    assume true;
    assume {:id "id2251"} $_ModifiesFrame[this, M3.UnionFind.M];
    assume {:id "id2252"} defass#e#0;
    assume {:id "id2253"} defass#e#0;
    assume true;
    $rhs#2 := Map#Build($Unbox(read($Heap, this, M3.UnionFind.M)): Map, $Box(e#0), $Box(e#0));
    $Heap := update($Heap, this, M3.UnionFind.M, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](92,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume {:id "id2256"} $Is(LitInt(0), Tclass._System.nat());
    ##d#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._System.nat(), $Heap);
    assume {:id "id2257"} defass#e#0;
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.M3.Element(), $Heap);
    assume {:id "id2258"} defass#e#0;
    ##r#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass.M3.Element(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
    assume {:id "id2259"} {:subsumption 0} (forall f#0: ref :: 
      { $Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType } 
      $Is(f#0, Tclass.M3.Element())
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0))
           && M3.Contents.Link_q($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType)
         ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
          $Box(M3.Contents.next($Unbox(read($Heap, f#0, M3.Element.c)): DatatypeType))));
    assume M3.UnionFind.Collect#canCall($Heap, this);
    ##C#0 := M3.UnionFind.Collect($Heap, this);
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
    assume {:id "id2260"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0)
       ==> M3.__default.GoodCMap(##C#0)
         || (forall f#1: ref :: 
          { $Unbox(Map#Elements(##C#0)[$Box(f#1)]): DatatypeType } 
          $Is(f#1, Tclass.M3.Element?())
             ==> 
            Set#IsMember(Map#Domain(##C#0), $Box(f#1))
               && M3.Contents.Link_q($Unbox(Map#Elements(##C#0)[$Box(f#1)]): DatatypeType)
             ==> Set#IsMember(Map#Domain(##C#0), 
              $Box(M3.Contents.next($Unbox(Map#Elements(##C#0)[$Box(f#1)]): DatatypeType))));
    assume {:id "id2261"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0), $Box(##e#0));
    assume M3.UnionFind.Reaches#canCall(this, LitInt(0), e#0, e#0, M3.UnionFind.Collect($Heap, this));
    assume M3.UnionFind.Collect#canCall($Heap, this)
       && M3.UnionFind.Reaches#canCall(this, LitInt(0), e#0, e#0, M3.UnionFind.Collect($Heap, this));
    assume true;
    assume true;
    assume true;
    assume {:id "id2262"} M3.UnionFind.Reaches($LS($LZ), this, LitInt(0), e#0, e#0, M3.UnionFind.Collect($Heap, this));
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](93,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc f#0_0;
        assume $Is(f#0_0, Tclass.M3.Element());
        assume true;
        assume {:id "id2263"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0));
        if (*)
        {
            assume {:id "id2264"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0));
            assume {:id "id2265"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref
               != null;
            if (M3.Contents.Root_q($Unbox(read($Heap, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.Element.c)): DatatypeType))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                assume {:id "id2266"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0));
                assume {:id "id2267"} {:subsumption 0} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref
                   != null;
                assume {:id "id2268"} M3.Contents.Root_q($Unbox(read($Heap, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                      M3.Element.c)): DatatypeType);
                ##d#0_0 := M3.Contents.depth($Unbox(read($Heap, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                      M3.Element.c)): DatatypeType);
                // assume allocatedness for argument to function
                assume $IsAlloc(##d#0_0, Tclass._System.nat(), $Heap);
                ##e#0_0 := f#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e#0_0, Tclass.M3.Element(), $Heap);
                assume {:id "id2269"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0));
                ##r#0_0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0_0, Tclass.M3.Element(), $Heap);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
                assume {:id "id2270"} {:subsumption 0} (forall f#0_1: ref :: 
                  { $Unbox(read($Heap, f#0_1, M3.Element.c)): DatatypeType } 
                  $Is(f#0_1, Tclass.M3.Element())
                     ==> 
                    Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_1))
                       && M3.Contents.Link_q($Unbox(read($Heap, f#0_1, M3.Element.c)): DatatypeType)
                     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                      $Box(M3.Contents.next($Unbox(read($Heap, f#0_1, M3.Element.c)): DatatypeType))));
                assume M3.UnionFind.Collect#canCall($Heap, this);
                ##C#0_0 := M3.UnionFind.Collect($Heap, this);
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#0_0, TMap(Tclass.M3.Element(), Tclass.M3.Contents()), $Heap);
                assume {:id "id2271"} {:subsumption 0} M3.__default.GoodCMap#canCall(##C#0_0)
                   ==> M3.__default.GoodCMap(##C#0_0)
                     || (forall f#0_2: ref :: 
                      { $Unbox(Map#Elements(##C#0_0)[$Box(f#0_2)]): DatatypeType } 
                      $Is(f#0_2, Tclass.M3.Element?())
                         ==> 
                        Set#IsMember(Map#Domain(##C#0_0), $Box(f#0_2))
                           && M3.Contents.Link_q($Unbox(Map#Elements(##C#0_0)[$Box(f#0_2)]): DatatypeType)
                         ==> Set#IsMember(Map#Domain(##C#0_0), 
                          $Box(M3.Contents.next($Unbox(Map#Elements(##C#0_0)[$Box(f#0_2)]): DatatypeType))));
                assume {:id "id2272"} {:subsumption 0} Set#IsMember(Map#Domain(##C#0_0), $Box(##e#0_0));
                assume M3.UnionFind.Reaches#canCall(this, 
                  M3.Contents.depth($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                        M3.Element.c)): DatatypeType), 
                  f#0_0, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.UnionFind.Collect($Heap, this));
            }

            assume M3.Contents.Root_q($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                    M3.Element.c)): DatatypeType)
               ==> M3.UnionFind.Collect#canCall($Heap, this)
                 && M3.UnionFind.Reaches#canCall(this, 
                  M3.Contents.depth($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                        M3.Element.c)): DatatypeType), 
                  f#0_0, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.UnionFind.Collect($Heap, this));
            assume {:id "id2273"} M3.Contents.Root_q($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                    M3.Element.c)): DatatypeType)
               && M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(read($Heap, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                      M3.Element.c)): DatatypeType), 
                f#0_0, 
                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                M3.UnionFind.Collect($Heap, this));
            assume false;
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](96,9)
        assume {:id "id2274"} defass#e#0;
        assume true;
        if (f#0_0 != e#0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](97,28)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume {:id "id2275"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0));
            assume {:id "id2276"} $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref
               != null;
            assume {:id "id2277"} M3.Contents.Root_q($Unbox(read($Heap, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.Element.c)): DatatypeType);
            assume true;
            // ProcessCallStmt: CheckSubrange
            d##0_0_0 := M3.Contents.depth($Unbox(read($Heap, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.Element.c)): DatatypeType);
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##0_0_0 := f#0_0;
            assume {:id "id2278"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0));
            assume true;
            // ProcessCallStmt: CheckSubrange
            r##0_0_0 := $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref;
            assume {:id "id2279"} $IsAlloc(this, Tclass.M3.UnionFind(), old($Heap));
            assume true;
            assume (forall f#0_0_0: ref :: 
              { $Unbox(read(old($Heap), f#0_0_0, M3.Element.c)): DatatypeType } 
              $Is(f#0_0_0, Tclass.M3.Element())
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(f#0_0_0))
                   && M3.Contents.Link_q($Unbox(read(old($Heap), f#0_0_0, M3.Element.c)): DatatypeType)
                 ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), 
                  $Box(M3.Contents.next($Unbox(read(old($Heap), f#0_0_0, M3.Element.c)): DatatypeType))));
            assume M3.UnionFind.Collect#canCall(old($Heap), this);
            assume M3.UnionFind.Collect#canCall(old($Heap), this);
            // ProcessCallStmt: CheckSubrange
            C##0_0_0 := M3.UnionFind.Collect(old($Heap), this);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass.M3.UnionFind?(), $Heap);
            assume true;
            assume (forall f#0_0_1: ref :: 
              { $Unbox(read($Heap, f#0_0_1, M3.Element.c)): DatatypeType } 
              $Is(f#0_0_1, Tclass.M3.Element())
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_0_1))
                   && M3.Contents.Link_q($Unbox(read($Heap, f#0_0_1, M3.Element.c)): DatatypeType)
                 ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                  $Box(M3.Contents.next($Unbox(read($Heap, f#0_0_1, M3.Element.c)): DatatypeType))));
            assume M3.UnionFind.Collect#canCall($Heap, this);
            assume M3.UnionFind.Collect#canCall($Heap, this);
            // ProcessCallStmt: CheckSubrange
            C'##0_0_0 := M3.UnionFind.Collect($Heap, this);
            call {:id "id2280"} Call$$M3.UnionFind.Reaches__Monotonic(this, d##0_0_0, e##0_0_0, r##0_0_0, C##0_0_0, C'##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }

        assume {:id "id2281"} M3.Contents.Root_q($Unbox(read($Heap, 
              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
              M3.Element.c)): DatatypeType);
        assume {:id "id2282"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(read($Heap, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.Element.c)): DatatypeType), 
            f#0_0, 
            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
            M3.UnionFind.Collect($Heap, this))
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                    M3.Element.c)): DatatypeType), 
              f#0_0, 
              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
              M3.UnionFind.Collect($Heap, this))
             || (M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(f#0_0)]): DatatypeType)
               ==> f#0_0
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref);
        assume {:id "id2283"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(read($Heap, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.Element.c)): DatatypeType), 
            f#0_0, 
            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
            M3.UnionFind.Collect($Heap, this))
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                    M3.Element.c)): DatatypeType), 
              f#0_0, 
              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
              M3.UnionFind.Collect($Heap, this))
             || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(f#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(f#0_0)]): DatatypeType); 
                M3.Contents.depth($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                        M3.Element.c)): DatatypeType)
                   != 0));
        assume {:id "id2284"} M3.UnionFind.Reaches#canCall(this, 
            M3.Contents.depth($Unbox(read($Heap, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.Element.c)): DatatypeType), 
            f#0_0, 
            $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
            M3.UnionFind.Collect($Heap, this))
           ==> M3.UnionFind.Reaches($LS($LZ), 
              this, 
              M3.Contents.depth($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                    M3.Element.c)): DatatypeType), 
              f#0_0, 
              $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
              M3.UnionFind.Collect($Heap, this))
             || (!M3.Contents.Root_q($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(f#0_0)]): DatatypeType)
               ==> (var next#0_0 := M3.Contents.next($Unbox(Map#Elements(M3.UnionFind.Collect($Heap, this))[$Box(f#0_0)]): DatatypeType); 
                M3.UnionFind.Reaches($LS($LS($LZ)), 
                  this, 
                  M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                          M3.Element.c)): DatatypeType)
                     - 1, 
                  next#0_0, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_0)]): ref, 
                  M3.UnionFind.Collect($Heap, this))));
        assume false;
    }
    else
    {
        assume (forall f#0_3: ref :: 
          { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_3)]): ref } 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_3)) } 
          $Is(f#0_3, Tclass.M3.Element())
               && Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(f#0_3))
             ==> M3.Contents.Root_q($Unbox(read($Heap, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_3)]): ref, 
                    M3.Element.c)): DatatypeType)
               && M3.UnionFind.Reaches($LS($LZ), 
                this, 
                M3.Contents.depth($Unbox(read($Heap, 
                      $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_3)]): ref, 
                      M3.Element.c)): DatatypeType), 
                f#0_3, 
                $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(f#0_3)]): ref, 
                M3.UnionFind.Collect($Heap, this)));
    }

    assert {:id "id2285"} defass#e#0;
}



procedure {:verboseName "M3.UnionFind.Union (well-formedness)"} CheckWellFormed$$M3.UnionFind.Union(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e0#0: ref
       where $Is(e0#0, Tclass.M3.Element()) && $IsAlloc(e0#0, Tclass.M3.Element(), $Heap), 
    e1#0: ref
       where $Is(e1#0, Tclass.M3.Element()) && $IsAlloc(e1#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  free requires 10 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind.Union (call)"} Call$$M3.UnionFind.Union(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e0#0: ref
       where $Is(e0#0, Tclass.M3.Element()) && $IsAlloc(e0#0, Tclass.M3.Element(), $Heap), 
    e1#0: ref
       where $Is(e1#0, Tclass.M3.Element()) && $IsAlloc(e1#0, Tclass.M3.Element(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap));
  // user-defined preconditions
  requires {:id "id2315"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  requires {:id "id2316"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  requires {:id "id2317"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  requires {:id "id2318"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#1: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)]): ref } 
            $Is(e#1, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#1)])));
  requires {:id "id2319"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#2: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2)) } 
            $Is(e#2, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#2))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#2)]): ref));
  requires {:id "id2320"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#3: ref :: 
            { $Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType } 
            $Is(e#3, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#3))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#3, M3.Element.c)): DatatypeType)))));
  requires {:id "id2321"} M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4)) } 
            $Is(e#4, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#4, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  requires {:id "id2322"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e0#0));
  requires {:id "id2323"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e1#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  free ensures {:id "id2324"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  free ensures true;
  ensures {:id "id2325"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id2326"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(r#0));
  ensures {:id "id2327"} $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(r#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e0#0)]): ref
     || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(r#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e1#0)]): ref;
  free ensures true;
  ensures {:id "id2328"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, Tclass.M3.Element?())
             && Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $w#1))), 
      (lambda $w#1: Box :: 
        $Box((if $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#1]): ref
                 == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e0#0)]): ref
               || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#1]): ref
                 == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e1#0)]): ref
             then r#0
             else $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#1]): ref))), 
      TMap(Tclass.M3.Element?(), Tclass.M3.Element?())));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.UnionFind.Union (correctness)"} Impl$$M3.UnionFind.Union(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap), 
    e0#0: ref
       where $Is(e0#0, Tclass.M3.Element()) && $IsAlloc(e0#0, Tclass.M3.Element(), $Heap), 
    e1#0: ref
       where $Is(e1#0, Tclass.M3.Element()) && $IsAlloc(e1#0, Tclass.M3.Element(), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass.M3.Element()) && $IsAlloc(r#0, Tclass.M3.Element(), $Heap), 
    $_reverifyPost: bool);
  free requires 10 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id2329"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  requires {:id "id2330"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e0#0));
  requires {:id "id2331"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e1#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  ensures {:id "id2332"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  ensures {:id "id2333"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  ensures {:id "id2334"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  ensures {:id "id2335"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#14: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)]): ref } 
            $Is(e#14, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#14))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#14)])));
  ensures {:id "id2336"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#15: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15)) } 
            $Is(e#15, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#15))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#15)]): ref));
  ensures {:id "id2337"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#16: ref :: 
            { $Unbox(read($Heap, e#16, M3.Element.c)): DatatypeType } 
            $Is(e#16, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#16))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#16, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#16, M3.Element.c)): DatatypeType)))));
  ensures {:id "id2338"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#17: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17)) } 
            $Is(e#17, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#17))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#17, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#17)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  free ensures true;
  ensures {:id "id2339"} $_reverifyPost
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id2340"} $_reverifyPost
     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $Box(r#0));
  ensures {:id "id2341"} $_reverifyPost
     ==> $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(r#0)]): ref
         == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e0#0)]): ref
       || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(r#0)]): ref
         == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e1#0)]): ref;
  free ensures true;
  ensures {:id "id2342"} $_reverifyPost
     ==> Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, 
      Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
            $IsBox($w#2, Tclass.M3.Element?())
               && Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map), $w#2))), 
        (lambda $w#2: Box :: 
          $Box((if $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#2]): ref
                   == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e0#0)]): ref
                 || $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#2]): ref
                   == $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$Box(e1#0)]): ref
               then r#0
               else $Unbox(Map#Elements($Unbox(read(old($Heap), this, M3.UnionFind.M)): Map)[$w#2]): ref))), 
        TMap(Tclass.M3.Element?(), Tclass.M3.Element?())));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, M3.UnionFind.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind.Union (correctness)"} Impl$$M3.UnionFind.Union(this: ref, e0#0: ref, e1#0: ref)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#r0#0: bool;
  var r0#0: ref
     where defass#r0#0
       ==> $Is(r0#0, Tclass.M3.Element()) && $IsAlloc(r0#0, Tclass.M3.Element(), $Heap);
  var $rhs##0: ref;
  var e##0: ref;
  var defass#r1#0: bool;
  var r1#0: ref
     where defass#r1#0
       ==> $Is(r1#0, Tclass.M3.Element()) && $IsAlloc(r1#0, Tclass.M3.Element(), $Heap);
  var $rhs##1: ref;
  var e##1: ref;
  var $rhs##2: ref;
  var r0##0: ref;
  var r1##0: ref;

    // AddMethodImpl: Union, Impl$$M3.UnionFind.Union
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](104,21)
    assume true;
    // TrCallStmt: Adding lhs with type Element
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := e0#0;
    assume {:id "id2343"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id2344"} $rhs##0 := Call$$M3.UnionFind.Find(this, e##0);
    // TrCallStmt: After ProcessCallStmt
    r0#0 := $rhs##0;
    defass#r0#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](105,21)
    assume true;
    // TrCallStmt: Adding lhs with type Element
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##1 := e1#0;
    assume {:id "id2346"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id2347"} $rhs##1 := Call$$M3.UnionFind.Find(this, e##1);
    // TrCallStmt: After ProcessCallStmt
    r1#0 := $rhs##1;
    defass#r1#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M2][M3](106,16)
    assume true;
    // TrCallStmt: Adding lhs with type Element
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume {:id "id2349"} defass#r0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r0##0 := r0#0;
    assume {:id "id2350"} defass#r1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r1##0 := r1#0;
    assume {:id "id2351"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id2352"} $rhs##2 := Call$$M3.UnionFind.Join(this, r0##0, r1##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##2;
    defass#r#0 := true;
    assert {:id "id2354"} defass#r#0;
}



const M3.UnionFind.M: Field
uses {
axiom FDim(M3.UnionFind.M) == 0
   && FieldOfDecl(class.M3.UnionFind?, field$M) == M3.UnionFind.M
   && $IsGhostField(M3.UnionFind.M);
}

// UnionFind.M: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.UnionFind.M)): Map } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.UnionFind?()
     ==> $Is($Unbox(read($h, $o, M3.UnionFind.M)): Map, 
      TMap(Tclass.M3.Element(), Tclass.M3.Element())));

// UnionFind.M: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.UnionFind.M)): Map } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.UnionFind?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.UnionFind.M)): Map, 
      TMap(Tclass.M3.Element(), Tclass.M3.Element()), 
      $h));

// function declaration for M3.UnionFind.Valid
function M3.UnionFind.Valid($heap: Heap, this: ref) : bool
uses {
// consequence axiom for M3.UnionFind.Valid
axiom 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { M3.UnionFind.Valid($Heap, this) } 
    M3.UnionFind.Valid#canCall($Heap, this)
         || (6 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.M3.UnionFind())
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
       ==> 
      M3.UnionFind.Valid($Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this)));
// definition axiom for M3.UnionFind.Valid (revealed)
axiom {:id "id2355"} 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { M3.UnionFind.Valid($Heap, this), $IsGoodHeap($Heap) } 
    M3.UnionFind.Valid#canCall($Heap, this)
         || (6 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.M3.UnionFind())
           && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
           ==> M3.UnionFind.ValidM1#canCall($Heap, this))
         && M3.UnionFind.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
             && M3.UnionFind.ValidM1($Heap, this)));
}

function M3.UnionFind.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for M3.UnionFind.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), M3.UnionFind.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.M3.UnionFind())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, M3.UnionFind.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> M3.UnionFind.Valid($h0, this) == M3.UnionFind.Valid($h1, this));

function M3.UnionFind.Valid#requires(Heap, ref) : bool;

// #requires axiom for M3.UnionFind.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { M3.UnionFind.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.M3.UnionFind())
       && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap)
     ==> M3.UnionFind.Valid#requires($Heap, this) == true);

procedure {:verboseName "M3.UnionFind.Valid (well-formedness)"} CheckWellformed$$M3.UnionFind.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind._ctor (well-formedness)"} CheckWellFormed$$M3.UnionFind.__ctor() returns (this: ref);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3.UnionFind._ctor (call)"} Call$$M3.UnionFind.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.M3.UnionFind())
         && $IsAlloc(this, Tclass.M3.UnionFind(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  free ensures {:id "id2368"} M3.UnionFind.Valid#canCall($Heap, this)
     && 
    M3.UnionFind.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null))
     && M3.UnionFind.ValidM1($Heap, this);
  free ensures true;
  ensures {:id "id2369"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id2370"} Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, Map#Empty(): Map);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.UnionFind._ctor (correctness)"} Impl$$M3.UnionFind.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures M3.UnionFind.Valid#canCall($Heap, this);
  ensures {:id "id2371"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(this));
  ensures {:id "id2372"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box(null));
  ensures {:id "id2373"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || Set#Subset(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
            $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set));
  ensures {:id "id2374"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#4: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)]): ref } 
            $Is(e#4, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#4))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#4)])));
  ensures {:id "id2375"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#5: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#5)]]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#5)) } 
            $Is(e#5, Tclass.M3.Element?())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#5))
               ==> $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#5)]]): ref
                 == $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#5)]): ref));
  ensures {:id "id2376"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#6: ref :: 
            { $Unbox(read($Heap, e#6, M3.Element.c)): DatatypeType } 
            $Is(e#6, Tclass.M3.Element())
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#6))
                 && M3.Contents.Link_q($Unbox(read($Heap, e#6, M3.Element.c)): DatatypeType)
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), 
                $Box(M3.Contents.next($Unbox(read($Heap, e#6, M3.Element.c)): DatatypeType)))));
  ensures {:id "id2377"} $_reverifyPost
     ==> 
    M3.UnionFind.Valid#canCall($Heap, this)
     ==> M3.UnionFind.Valid($Heap, this)
       || (M3.UnionFind.ValidM1#canCall($Heap, this)
         ==> M3.UnionFind.ValidM1($Heap, this)
           || (forall e#7: ref :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#7)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#7)) } 
            $Is(e#7, Tclass.M3.Element())
               ==> (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#7))
                   ==> M3.Contents.Root_q($Unbox(read($Heap, 
                        $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#7)]): ref, 
                        M3.Element.c)): DatatypeType))
                 && (Set#IsMember(Map#Domain($Unbox(read($Heap, this, M3.UnionFind.M)): Map), $Box(e#7))
                   ==> M3.UnionFind.Reaches($LS($LS($LZ)), 
                    this, 
                    M3.Contents.depth($Unbox(read($Heap, 
                          $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#7)]): ref, 
                          M3.Element.c)): DatatypeType), 
                    e#7, 
                    $Unbox(Map#Elements($Unbox(read($Heap, this, M3.UnionFind.M)): Map)[$Box(e#7)]): ref, 
                    M3.UnionFind.Collect($Heap, this)))));
  free ensures true;
  ensures {:id "id2378"} $_reverifyPost
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, this, M3.UnionFind.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id2379"} $_reverifyPost
     ==> Map#Equal($Unbox(read($Heap, this, M3.UnionFind.M)): Map, Map#Empty(): Map);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.UnionFind._ctor (correctness)"} Impl$$M3.UnionFind.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.M: Map;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: Set;
  var $rhs#1: Map;
  var $rhs#2: Set;

    // AddMethodImpl: _ctor, Impl$$M3.UnionFind.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M1][M2][M3](19,5)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(20,15)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    assume true;
    $rhs#1 := Lit(Map#Empty(): Map);
    this.Repr := $rhs#0;
    this.M := $rhs#1;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M1][M2][M3](19,5)
    assume this != null && $Is(this, Tclass.M3.UnionFind?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, M3.UnionFind.M)): Map == this.M;
    assume $Unbox(read($Heap, this, M3.UnionFind.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy[M1][M2][M3](19,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/UnionFind.dfy(8,26)
    assume true;
    assume {:id "id2384"} $_ModifiesFrame[this, M3.UnionFind.Repr];
    assume true;
    $rhs#2 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, M3.UnionFind.Repr, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



const M3.UnionFind.Repr: Field
uses {
axiom FDim(M3.UnionFind.Repr) == 0
   && FieldOfDecl(class.M3.UnionFind?, field$Repr) == M3.UnionFind.Repr
   && $IsGhostField(M3.UnionFind.Repr);
}

// UnionFind.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.UnionFind.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.UnionFind?()
     ==> $Is($Unbox(read($h, $o, M3.UnionFind.Repr)): Set, TSet(Tclass._System.object?())));

// UnionFind.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.UnionFind.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.UnionFind?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.UnionFind.Repr)): Set, TSet(Tclass._System.object?()), $h));

// $Is axiom for non-null type M3.UnionFind
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.M3.UnionFind()) } { $Is(c#0, Tclass.M3.UnionFind?()) } 
  $Is(c#0, Tclass.M3.UnionFind())
     <==> $Is(c#0, Tclass.M3.UnionFind?()) && c#0 != null);

// $IsAlloc axiom for non-null type M3.UnionFind
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.M3.UnionFind(), $h) } 
    { $IsAlloc(c#0, Tclass.M3.UnionFind?(), $h) } 
  $IsAlloc(c#0, Tclass.M3.UnionFind(), $h)
     <==> $IsAlloc(c#0, Tclass.M3.UnionFind?(), $h));

// Constructor function declaration
function #M3.Contents.Root(int) : DatatypeType;

const unique ##M3.Contents.Root: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #M3.Contents.Root(a#0#0#0) } 
  DatatypeCtorId(#M3.Contents.Root(a#0#0#0)) == ##M3.Contents.Root);
}

function M3.Contents.Root_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M3.Contents.Root_q(d) } 
  M3.Contents.Root_q(d) <==> DatatypeCtorId(d) == ##M3.Contents.Root);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M3.Contents.Root_q(d) } 
  M3.Contents.Root_q(d)
     ==> (exists a#1#0#0: int :: d == #M3.Contents.Root(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#M3.Contents.Root(a#2#0#0), Tclass.M3.Contents()) } 
  $Is(#M3.Contents.Root(a#2#0#0), Tclass.M3.Contents())
     <==> $Is(a#2#0#0, Tclass._System.nat()));

// Constructor $IsAlloc
axiom (forall a#2#0#0: int, $h: Heap :: 
  { $IsAlloc(#M3.Contents.Root(a#2#0#0), Tclass.M3.Contents(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M3.Contents.Root(a#2#0#0), Tclass.M3.Contents(), $h)
       <==> $IsAlloc(a#2#0#0, Tclass._System.nat(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M3.Contents.depth(d), Tclass._System.nat(), $h) } 
  $IsGoodHeap($h)
       && 
      M3.Contents.Root_q(d)
       && $IsAlloc(d, Tclass.M3.Contents(), $h)
     ==> $IsAlloc(M3.Contents.depth(d), Tclass._System.nat(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #M3.Contents.Root(LitInt(a#3#0#0)) } 
  #M3.Contents.Root(LitInt(a#3#0#0)) == Lit(#M3.Contents.Root(a#3#0#0)));

function M3.Contents.depth(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #M3.Contents.Root(a#4#0#0) } 
  M3.Contents.depth(#M3.Contents.Root(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #M3.Contents.Link(ref) : DatatypeType;

const unique ##M3.Contents.Link: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: ref :: 
  { #M3.Contents.Link(a#5#0#0) } 
  DatatypeCtorId(#M3.Contents.Link(a#5#0#0)) == ##M3.Contents.Link);
}

function M3.Contents.Link_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M3.Contents.Link_q(d) } 
  M3.Contents.Link_q(d) <==> DatatypeCtorId(d) == ##M3.Contents.Link);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M3.Contents.Link_q(d) } 
  M3.Contents.Link_q(d)
     ==> (exists a#6#0#0: ref :: d == #M3.Contents.Link(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: ref :: 
  { $Is(#M3.Contents.Link(a#7#0#0), Tclass.M3.Contents()) } 
  $Is(#M3.Contents.Link(a#7#0#0), Tclass.M3.Contents())
     <==> $Is(a#7#0#0, Tclass.M3.Element()));

// Constructor $IsAlloc
axiom (forall a#7#0#0: ref, $h: Heap :: 
  { $IsAlloc(#M3.Contents.Link(a#7#0#0), Tclass.M3.Contents(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M3.Contents.Link(a#7#0#0), Tclass.M3.Contents(), $h)
       <==> $IsAlloc(a#7#0#0, Tclass.M3.Element(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M3.Contents.next(d), Tclass.M3.Element(), $h) } 
  $IsGoodHeap($h)
       && 
      M3.Contents.Link_q(d)
       && $IsAlloc(d, Tclass.M3.Contents(), $h)
     ==> $IsAlloc(M3.Contents.next(d), Tclass.M3.Element(), $h));

// Constructor literal
axiom (forall a#8#0#0: ref :: 
  { #M3.Contents.Link(Lit(a#8#0#0)) } 
  #M3.Contents.Link(Lit(a#8#0#0)) == Lit(#M3.Contents.Link(a#8#0#0)));

function M3.Contents.next(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#9#0#0: ref :: 
  { #M3.Contents.Link(a#9#0#0) } 
  M3.Contents.next(#M3.Contents.Link(a#9#0#0)) == a#9#0#0);

// Depth-one case-split function
function $IsA#M3.Contents(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M3.Contents(d) } 
  $IsA#M3.Contents(d) ==> M3.Contents.Root_q(d) || M3.Contents.Link_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M3.Contents.Link_q(d), $Is(d, Tclass.M3.Contents()) } 
    { M3.Contents.Root_q(d), $Is(d, Tclass.M3.Contents()) } 
  $Is(d, Tclass.M3.Contents()) ==> M3.Contents.Root_q(d) || M3.Contents.Link_q(d));

// Datatype extensional equality declaration
function M3.Contents#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M3.Contents.Root
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M3.Contents#Equal(a, b), M3.Contents.Root_q(a) } 
    { M3.Contents#Equal(a, b), M3.Contents.Root_q(b) } 
  M3.Contents.Root_q(a) && M3.Contents.Root_q(b)
     ==> (M3.Contents#Equal(a, b) <==> M3.Contents.depth(a) == M3.Contents.depth(b)));

// Datatype extensional equality definition: #M3.Contents.Link
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M3.Contents#Equal(a, b), M3.Contents.Link_q(a) } 
    { M3.Contents#Equal(a, b), M3.Contents.Link_q(b) } 
  M3.Contents.Link_q(a) && M3.Contents.Link_q(b)
     ==> (M3.Contents#Equal(a, b) <==> M3.Contents.next(a) == M3.Contents.next(b)));

// Datatype extensionality axiom: M3.Contents
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M3.Contents#Equal(a, b) } 
  M3.Contents#Equal(a, b) <==> a == b);

const unique class.M3.Contents: ClassName;

const unique class.M3.Element?: ClassName;

// $Is axiom for class Element
axiom (forall $o: ref :: 
  { $Is($o, Tclass.M3.Element?()) } 
  $Is($o, Tclass.M3.Element?())
     <==> $o == null || dtype($o) == Tclass.M3.Element?());

// $IsAlloc axiom for class Element
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.M3.Element?(), $h) } 
  $IsAlloc($o, Tclass.M3.Element?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const M3.Element.c: Field
uses {
axiom FDim(M3.Element.c) == 0
   && FieldOfDecl(class.M3.Element?, field$c) == M3.Element.c
   && !$IsGhostField(M3.Element.c);
}

// Element.c: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Element.c)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.Element?()
     ==> $Is($Unbox(read($h, $o, M3.Element.c)): DatatypeType, Tclass.M3.Contents()));

// Element.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Element.c)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.Element?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.Element.c)): DatatypeType, Tclass.M3.Contents(), $h));

// $Is axiom for non-null type M3.Element
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.M3.Element()) } { $Is(c#0, Tclass.M3.Element?()) } 
  $Is(c#0, Tclass.M3.Element()) <==> $Is(c#0, Tclass.M3.Element?()) && c#0 != null);

// $IsAlloc axiom for non-null type M3.Element
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.M3.Element(), $h) } 
    { $IsAlloc(c#0, Tclass.M3.Element?(), $h) } 
  $IsAlloc(c#0, Tclass.M3.Element(), $h)
     <==> $IsAlloc(c#0, Tclass.M3.Element?(), $h));

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

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Element: TyTagFamily;

const unique tytagFamily$Contents: TyTagFamily;

const unique tytagFamily$UnionFind: TyTagFamily;

const unique field$Repr: NameFamily;

const unique field$M: NameFamily;

const unique field$c: NameFamily;