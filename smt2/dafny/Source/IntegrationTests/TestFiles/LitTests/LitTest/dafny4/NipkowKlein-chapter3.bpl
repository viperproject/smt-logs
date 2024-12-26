// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.append
function _module.__default.append(_module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.append
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { _module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0) } 
    _module.__default.append#canCall(_module._default.append$_T0, xs#0, ys#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
           && $Is(ys#0, Tclass._module.List(_module._default.append$_T0)))
       ==> $Is(_module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0), 
        Tclass._module.List(_module._default.append$_T0)));
// alloc consequence axiom for _module.__default.append
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { $IsAlloc(_module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0), 
        Tclass._module.List(_module._default.append$_T0), 
        $Heap) } 
    (_module.__default.append#canCall(_module._default.append$_T0, xs#0, ys#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
             && $IsAlloc(xs#0, Tclass._module.List(_module._default.append$_T0), $Heap)
             && 
            $Is(ys#0, Tclass._module.List(_module._default.append$_T0))
             && $IsAlloc(ys#0, Tclass._module.List(_module._default.append$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0), 
        Tclass._module.List(_module._default.append$_T0), 
        $Heap));
// definition axiom for _module.__default.append (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0) } 
    _module.__default.append#canCall(_module._default.append$_T0, xs#0, ys#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
           && $Is(ys#0, Tclass._module.List(_module._default.append$_T0)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List.tail(xs#0); 
            _module.__default.append#canCall(_module._default.append$_T0, tail#1, ys#0)))
         && _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0)
           == (if _module.List.Nil_q(xs#0)
             then ys#0
             else (var tail#0 := _module.List.tail(xs#0); 
              (var x#0 := _module.List.head(xs#0); 
                #_module.List.Cons(x#0, _module.__default.append(_module._default.append$_T0, $ly, tail#0, ys#0))))));
// definition axiom for _module.__default.append for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    {:weight 3} { _module.__default.append(_module._default.append$_T0, $LS($ly), Lit(xs#0), Lit(ys#0)) } 
    _module.__default.append#canCall(_module._default.append$_T0, Lit(xs#0), Lit(ys#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
           && $Is(ys#0, Tclass._module.List(_module._default.append$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#3 := Lit(_module.List.tail(Lit(xs#0))); 
            _module.__default.append#canCall(_module._default.append$_T0, tail#3, Lit(ys#0))))
         && _module.__default.append(_module._default.append$_T0, $LS($ly), Lit(xs#0), Lit(ys#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then ys#0
             else (var tail#2 := Lit(_module.List.tail(Lit(xs#0))); 
              (var x#2 := Lit(_module.List.head(Lit(xs#0))); 
                Lit(#_module.List.Cons(x#2, 
                    Lit(_module.__default.append(_module._default.append$_T0, $LS($ly), tail#2, Lit(ys#0)))))))));
}

function _module.__default.append#canCall(_module._default.append$_T0: Ty, xs#0: DatatypeType, ys#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0) } 
  _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0)
     == _module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0));

// fuel synonym axiom
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { _module.__default.append(_module._default.append$_T0, AsFuelBottom($ly), xs#0, ys#0) } 
  _module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0)
     == _module.__default.append(_module._default.append$_T0, $LZ, xs#0, ys#0));

function Tclass._module.List(Ty) : Ty;

const unique Tagclass._module.List: TyTag;

// Tclass._module.List Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tag(Tclass._module.List(_module.List$T)) == Tagclass._module.List
     && TagFamily(Tclass._module.List(_module.List$T)) == tytagFamily$List);

function Tclass._module.List_0(Ty) : Ty;

// Tclass._module.List injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tclass._module.List_0(Tclass._module.List(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List(_module.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List(_module.List$T)));

function _module.__default.append#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.append
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { _module.__default.append#requires(_module._default.append$_T0, $ly, xs#0, ys#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
       && $Is(ys#0, Tclass._module.List(_module._default.append$_T0))
     ==> _module.__default.append#requires(_module._default.append$_T0, $ly, xs#0, ys#0)
       == true);

procedure {:verboseName "append (well-formedness)"} CheckWellformed$$_module.__default.append(_module._default.append$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.append$_T0)), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.append$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "append (well-formedness)"} CheckWellformed$$_module.__default.append(_module._default.append$_T0: Ty, xs#0: DatatypeType, ys#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##xs#0: DatatypeType;
  var ##ys#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0), 
          Tclass._module.List(_module._default.append$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id8"} _module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0)
               == ys#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0), 
              Tclass._module.List(_module._default.append$_T0));
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.append$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.append$_T0));
            havoc tail#Z#0;
            assume {:id "id2"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.append$_T0));
            assume {:id "id3"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id4"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.append$_T0);
            assume {:id "id5"} x#Z#0 == let#1#0#0;
            ##xs#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.append$_T0), $Heap);
            ##ys#0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass._module.List(_module._default.append$_T0), $Heap);
            assert {:id "id6"} DtRank(##xs#0) < DtRank(xs#0)
               || (DtRank(##xs#0) == DtRank(xs#0) && DtRank(##ys#0) < DtRank(ys#0));
            assume _module.__default.append#canCall(_module._default.append$_T0, tail#Z#0, ys#0);
            assume {:id "id7"} _module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0)
               == #_module.List.Cons(x#Z#0, 
                _module.__default.append(_module._default.append$_T0, $LS($LZ), tail#Z#0, ys#0));
            assume _module.__default.append#canCall(_module._default.append$_T0, tail#Z#0, ys#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0), 
              Tclass._module.List(_module._default.append$_T0));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.aval
function _module.__default.aval($ly: LayerType, a#0: DatatypeType, s#0: HandleType) : int
uses {
// definition axiom for _module.__default.aval (revealed)
axiom {:id "id9"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, a#0: DatatypeType, s#0: HandleType :: 
    { _module.__default.aval($LS($ly), a#0, s#0), $IsGoodHeap($Heap) } 
    _module.__default.aval#canCall(a#0, s#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(a#0, Tclass._module.aexp())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)))
       ==> (!_module.aexp.N_q(a#0)
           ==> 
          !_module.aexp.V_q(a#0)
           ==> (var a1#1 := _module.aexp._h2(a#0); 
            (var a0#1 := _module.aexp._h1(a#0); 
              _module.__default.aval#canCall(a0#1, s#0)
                 && _module.__default.aval#canCall(a1#1, s#0))))
         && _module.__default.aval($LS($ly), a#0, s#0)
           == (if _module.aexp.N_q(a#0)
             then (var n#0 := _module.aexp.n(a#0); n#0)
             else (if _module.aexp.V_q(a#0)
               then (var x#0 := _module.aexp._h0(a#0); 
                $Unbox(Apply1(TSeq(TChar), TInt, $Heap, s#0, $Box(x#0))): int)
               else (var a1#0 := _module.aexp._h2(a#0); 
                (var a0#0 := _module.aexp._h1(a#0); 
                  _module.__default.aval($ly, a0#0, s#0) + _module.__default.aval($ly, a1#0, s#0))))));
// definition axiom for _module.__default.aval for decreasing-related literals (revealed)
axiom {:id "id10"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, a#0: DatatypeType, s#0: HandleType :: 
    {:weight 3} { _module.__default.aval($LS($ly), Lit(a#0), s#0), $IsGoodHeap($Heap) } 
    _module.__default.aval#canCall(Lit(a#0), s#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(a#0, Tclass._module.aexp())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)))
       ==> (!Lit(_module.aexp.N_q(Lit(a#0)))
           ==> 
          !Lit(_module.aexp.V_q(Lit(a#0)))
           ==> (var a1#3 := Lit(_module.aexp._h2(Lit(a#0))); 
            (var a0#3 := Lit(_module.aexp._h1(Lit(a#0))); 
              _module.__default.aval#canCall(a0#3, s#0)
                 && _module.__default.aval#canCall(a1#3, s#0))))
         && _module.__default.aval($LS($ly), Lit(a#0), s#0)
           == (if _module.aexp.N_q(Lit(a#0))
             then (var n#2 := LitInt(_module.aexp.n(Lit(a#0))); n#2)
             else (if _module.aexp.V_q(Lit(a#0))
               then (var x#2 := Lit(_module.aexp._h0(Lit(a#0))); 
                $Unbox(Apply1(TSeq(TChar), TInt, $Heap, s#0, $Box(x#2))): int)
               else (var a1#2 := Lit(_module.aexp._h2(Lit(a#0))); 
                (var a0#2 := Lit(_module.aexp._h1(Lit(a#0))); 
                  _module.__default.aval($LS($ly), a0#2, s#0)
                     + _module.__default.aval($LS($ly), a1#2, s#0))))));
// definition axiom for _module.__default.aval for all literals (revealed)
axiom {:id "id11"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, a#0: DatatypeType, s#0: HandleType :: 
    {:weight 3} { _module.__default.aval($LS($ly), Lit(a#0), Lit(s#0)), $IsGoodHeap($Heap) } 
    _module.__default.aval#canCall(Lit(a#0), Lit(s#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(a#0, Tclass._module.aexp())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)))
       ==> (!Lit(_module.aexp.N_q(Lit(a#0)))
           ==> 
          !Lit(_module.aexp.V_q(Lit(a#0)))
           ==> (var a1#5 := Lit(_module.aexp._h2(Lit(a#0))); 
            (var a0#5 := Lit(_module.aexp._h1(Lit(a#0))); 
              _module.__default.aval#canCall(a0#5, Lit(s#0))
                 && _module.__default.aval#canCall(a1#5, Lit(s#0)))))
         && _module.__default.aval($LS($ly), Lit(a#0), Lit(s#0))
           == (if _module.aexp.N_q(Lit(a#0))
             then (var n#4 := LitInt(_module.aexp.n(Lit(a#0))); n#4)
             else (if _module.aexp.V_q(Lit(a#0))
               then (var x#4 := Lit(_module.aexp._h0(Lit(a#0))); 
                $Unbox(Apply1(TSeq(TChar), TInt, $Heap, Lit(s#0), $Box(x#4))): int)
               else (var a1#4 := Lit(_module.aexp._h2(Lit(a#0))); 
                (var a0#4 := Lit(_module.aexp._h1(Lit(a#0))); 
                  LitInt(_module.__default.aval($LS($ly), a0#4, Lit(s#0))
                       + _module.__default.aval($LS($ly), a1#4, Lit(s#0))))))));
}

function _module.__default.aval#canCall(a#0: DatatypeType, s#0: HandleType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, s#0: HandleType :: 
  { _module.__default.aval($LS($ly), a#0, s#0) } 
  _module.__default.aval($LS($ly), a#0, s#0)
     == _module.__default.aval($ly, a#0, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, s#0: HandleType :: 
  { _module.__default.aval(AsFuelBottom($ly), a#0, s#0) } 
  _module.__default.aval($ly, a#0, s#0) == _module.__default.aval($LZ, a#0, s#0));

function Tclass._module.aexp() : Ty
uses {
// Tclass._module.aexp Tag
axiom Tag(Tclass._module.aexp()) == Tagclass._module.aexp
   && TagFamily(Tclass._module.aexp()) == tytagFamily$aexp;
}

const unique Tagclass._module.aexp: TyTag;

// Box/unbox axiom for Tclass._module.aexp
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.aexp()) } 
  $IsBox(bx, Tclass._module.aexp())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.aexp()));

function _module.__default.aval#requires(LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.aval
axiom (forall $ly: LayerType, $Heap: Heap, a#0: DatatypeType, s#0: HandleType :: 
  { _module.__default.aval#requires($ly, a#0, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(a#0, Tclass._module.aexp())
       && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
     ==> _module.__default.aval#requires($ly, a#0, s#0) == true);

procedure {:verboseName "aval (well-formedness)"} CheckWellformed$$_module.__default.aval(a#0: DatatypeType where $Is(a#0, Tclass._module.aexp()), 
    s#0: HandleType where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "aval (well-formedness)"} CheckWellformed$$_module.__default.aval(a#0: DatatypeType, s#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var a1#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a0#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##a#0: DatatypeType;
  var ##s#0: HandleType;
  var ##a#1: DatatypeType;
  var ##s#1: HandleType;
  var _mcc#1#0: Seq;
  var x#Z#0: Seq;
  var let#2#0#0: Seq;
  var _mcc#0#0: int;
  var n#Z#0: int;
  var let#3#0#0: int;


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
        if (a#0 == #_module.aexp.N(_mcc#0#0))
        {
            havoc n#Z#0;
            assume {:id "id22"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TInt);
            assume {:id "id23"} n#Z#0 == let#3#0#0;
            assume {:id "id24"} _module.__default.aval($LS($LZ), a#0, s#0) == n#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.aval($LS($LZ), a#0, s#0), TInt);
            return;
        }
        else if (a#0 == #_module.aexp.V(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            havoc x#Z#0;
            assume {:id "id19"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TSeq(TChar));
            assume {:id "id20"} x#Z#0 == let#2#0#0;
            assume {:id "id21"} _module.__default.aval($LS($LZ), a#0, s#0)
               == $Unbox(Apply1(TSeq(TChar), TInt, $Heap, s#0, $Box(x#Z#0))): int;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.aval($LS($LZ), a#0, s#0), TInt);
            return;
        }
        else if (a#0 == #_module.aexp.Plus(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.aexp());
            assume $Is(_mcc#3#0, Tclass._module.aexp());
            havoc a1#Z#0;
            assume {:id "id12"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.aexp());
            assume {:id "id13"} a1#Z#0 == let#0#0#0;
            havoc a0#Z#0;
            assume {:id "id14"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.aexp());
            assume {:id "id15"} a0#Z#0 == let#1#0#0;
            ##a#0 := a0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
            ##s#0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assert {:id "id16"} DtRank(##a#0) < DtRank(a#0);
            assume _module.__default.aval#canCall(a0#Z#0, s#0);
            ##a#1 := a1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, Tclass._module.aexp(), $Heap);
            ##s#1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assert {:id "id17"} DtRank(##a#1) < DtRank(a#0);
            assume _module.__default.aval#canCall(a1#Z#0, s#0);
            assume {:id "id18"} _module.__default.aval($LS($LZ), a#0, s#0)
               == _module.__default.aval($LS($LZ), a0#Z#0, s#0)
                 + _module.__default.aval($LS($LZ), a1#Z#0, s#0);
            assume _module.__default.aval#canCall(a0#Z#0, s#0)
               && _module.__default.aval#canCall(a1#Z#0, s#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.aval($LS($LZ), a#0, s#0), TInt);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "Example0 (well-formedness)"} CheckWellFormed$$_module.__default.Example0();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Example0 (call)"} Call$$_module.__default.Example0();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Example0 (correctness)"} Impl$$_module.__default.Example0() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Example0 (correctness)"} Impl$$_module.__default.Example0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0: int;
  var ##a#0: DatatypeType;
  var ##s#0: HandleType;
  var $lambdaHeap#0: Heap;
  var x#0: Seq;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;

    // AddMethodImpl: Example0, Impl$$_module.__default.Example0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(36,9)
    assume true;
    ##a#0 := Lit(#_module.aexp.Plus(Lit(#_module.aexp.N(LitInt(3))), 
        Lit(#_module.aexp.V(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc x#0;
        if ($Is(x#0, TSeq(TChar)) && $IsAlloc(x#0, TSeq(TChar), $lambdaHeap#0))
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id25"} lambdaResult#0 == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    ##s#0 := Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
          Handle1((lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: $Box(LitInt(0))), 
            (lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: $IsBox($l#2#x#0, TSeq(TChar))), 
            (lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: 
              SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
        $LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
    assume _module.__default.aval#canCall(Lit(#_module.aexp.Plus(Lit(#_module.aexp.N(LitInt(3))), 
          Lit(#_module.aexp.V(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))))), 
      Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
            Handle1((lambda $l#3#heap#0: Heap, $l#3#x#0: Box :: $Box(LitInt(0))), 
              (lambda $l#3#heap#0: Heap, $l#3#x#0: Box :: $IsBox($l#3#x#0, TSeq(TChar))), 
              (lambda $l#3#heap#0: Heap, $l#3#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
          $LS($LZ))));
    assume _module.__default.aval#canCall(Lit(#_module.aexp.Plus(Lit(#_module.aexp.N(LitInt(3))), 
          Lit(#_module.aexp.V(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))))), 
      Lit(AtLayer((lambda $l#5#ly#0: LayerType :: 
            Handle1((lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: $Box(LitInt(0))), 
              (lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: $IsBox($l#5#x#0, TSeq(TChar))), 
              (lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#5#o#0: ref :: false))))), 
          $LS($LZ))));
    y#0 := LitInt(_module.__default.aval($LS($LZ), 
        Lit(#_module.aexp.Plus(Lit(#_module.aexp.N(LitInt(3))), 
            Lit(#_module.aexp.V(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))))), 
        Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
              Handle1((lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: $Box(LitInt(0))), 
                (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: $IsBox($l#0#x#0, TSeq(TChar))), 
                (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: 
                  SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
            $LS($LZ)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(47,3)
    assume true;
    assert {:id "id27"} y#0 == LitInt(3);
}



// function declaration for _module._default.asimp_const
function _module.__default.asimp__const($ly: LayerType, a#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.asimp__const
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.asimp__const($ly, a#0) } 
    _module.__default.asimp__const#canCall(a#0)
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> $Is(_module.__default.asimp__const($ly, a#0), Tclass._module.aexp()));
// definition axiom for _module.__default.asimp__const (revealed)
axiom {:id "id28"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.asimp__const($LS($ly), a#0) } 
    _module.__default.asimp__const#canCall(a#0)
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> (!_module.aexp.N_q(a#0)
           ==> 
          !_module.aexp.V_q(a#0)
           ==> (var a1#1 := _module.aexp._h2(a#0); 
            (var a0#1 := _module.aexp._h1(a#0); 
              _module.__default.asimp__const#canCall(a0#1)
                 && _module.__default.asimp__const#canCall(a1#1))))
         && _module.__default.asimp__const($LS($ly), a#0)
           == (if _module.aexp.N_q(a#0)
             then (var n#0 := _module.aexp.n(a#0); a#0)
             else (if _module.aexp.V_q(a#0)
               then (var x#0 := _module.aexp._h0(a#0); a#0)
               else (var a1#0 := _module.aexp._h2(a#0); 
                (var a0#0 := _module.aexp._h1(a#0); 
                  (var as0#0, as1#0 := _module.__default.asimp__const($ly, a0#0), 
                      _module.__default.asimp__const($ly, a1#0); 
                    (if _module.aexp.N_q(as0#0) && _module.aexp.N_q(as1#0)
                       then #_module.aexp.N(_module.aexp.n(as0#0) + _module.aexp.n(as1#0))
                       else #_module.aexp.Plus(as0#0, as1#0))))))));
// definition axiom for _module.__default.asimp__const for all literals (revealed)
axiom {:id "id29"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    {:weight 3} { _module.__default.asimp__const($LS($ly), Lit(a#0)) } 
    _module.__default.asimp__const#canCall(Lit(a#0))
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> (!Lit(_module.aexp.N_q(Lit(a#0)))
           ==> 
          !Lit(_module.aexp.V_q(Lit(a#0)))
           ==> (var a1#3 := Lit(_module.aexp._h2(Lit(a#0))); 
            (var a0#3 := Lit(_module.aexp._h1(Lit(a#0))); 
              _module.__default.asimp__const#canCall(a0#3)
                 && _module.__default.asimp__const#canCall(a1#3))))
         && _module.__default.asimp__const($LS($ly), Lit(a#0))
           == (if _module.aexp.N_q(Lit(a#0))
             then (var n#2 := LitInt(_module.aexp.n(Lit(a#0))); Lit(a#0))
             else (if _module.aexp.V_q(Lit(a#0))
               then (var x#2 := Lit(_module.aexp._h0(Lit(a#0))); Lit(a#0))
               else (var a1#2 := Lit(_module.aexp._h2(Lit(a#0))); 
                (var a0#2 := Lit(_module.aexp._h1(Lit(a#0))); 
                  (var as0#2, as1#2 := Lit(_module.__default.asimp__const($LS($ly), a0#2)), 
                      Lit(_module.__default.asimp__const($LS($ly), a1#2)); 
                    (if _module.aexp.N_q(as0#2) && _module.aexp.N_q(as1#2)
                       then #_module.aexp.N(_module.aexp.n(as0#2) + _module.aexp.n(as1#2))
                       else #_module.aexp.Plus(as0#2, as1#2))))))));
}

function _module.__default.asimp__const#canCall(a#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.asimp__const($LS($ly), a#0) } 
  _module.__default.asimp__const($LS($ly), a#0)
     == _module.__default.asimp__const($ly, a#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.asimp__const(AsFuelBottom($ly), a#0) } 
  _module.__default.asimp__const($ly, a#0)
     == _module.__default.asimp__const($LZ, a#0));

function _module.__default.asimp__const#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.asimp__const
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.asimp__const#requires($ly, a#0) } 
  $Is(a#0, Tclass._module.aexp())
     ==> _module.__default.asimp__const#requires($ly, a#0) == true);

procedure {:verboseName "asimp_const (well-formedness)"} CheckWellformed$$_module.__default.asimp__const(a#0: DatatypeType where $Is(a#0, Tclass._module.aexp()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "asimp_const (well-formedness)"} CheckWellformed$$_module.__default.asimp__const(a#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var a1#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a0#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var as0#Z#0: DatatypeType;
  var as1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var ##a#0: DatatypeType;
  var let#2#1#0: DatatypeType;
  var ##a#1: DatatypeType;
  var _mcc#1#0: Seq;
  var x#Z#0: Seq;
  var let#3#0#0: Seq;
  var _mcc#0#0: int;
  var n#Z#0: int;
  var let#4#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.asimp__const($LS($LZ), a#0), Tclass._module.aexp());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.aexp.N(_mcc#0#0))
        {
            havoc n#Z#0;
            assume {:id "id47"} let#4#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, TInt);
            assume {:id "id48"} n#Z#0 == let#4#0#0;
            assume {:id "id49"} _module.__default.asimp__const($LS($LZ), a#0) == a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.asimp__const($LS($LZ), a#0), Tclass._module.aexp());
            return;
        }
        else if (a#0 == #_module.aexp.V(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            havoc x#Z#0;
            assume {:id "id44"} let#3#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TSeq(TChar));
            assume {:id "id45"} x#Z#0 == let#3#0#0;
            assume {:id "id46"} _module.__default.asimp__const($LS($LZ), a#0) == a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.asimp__const($LS($LZ), a#0), Tclass._module.aexp());
            return;
        }
        else if (a#0 == #_module.aexp.Plus(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.aexp());
            assume $Is(_mcc#3#0, Tclass._module.aexp());
            havoc a1#Z#0;
            assume {:id "id30"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.aexp());
            assume {:id "id31"} a1#Z#0 == let#0#0#0;
            havoc a0#Z#0;
            assume {:id "id32"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.aexp());
            assume {:id "id33"} a0#Z#0 == let#1#0#0;
            havoc as0#Z#0;
            havoc as1#Z#0;
            ##a#0 := a0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
            assert {:id "id34"} DtRank(##a#0) < DtRank(a#0);
            assume _module.__default.asimp__const#canCall(a0#Z#0);
            assume {:id "id35"} let#2#0#0 == _module.__default.asimp__const($LS($LZ), a0#Z#0);
            assume _module.__default.asimp__const#canCall(a0#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.aexp());
            assume {:id "id36"} as0#Z#0 == let#2#0#0;
            ##a#1 := a1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, Tclass._module.aexp(), $Heap);
            assert {:id "id37"} DtRank(##a#1) < DtRank(a#0);
            assume _module.__default.asimp__const#canCall(a1#Z#0);
            assume {:id "id38"} let#2#1#0 == _module.__default.asimp__const($LS($LZ), a1#Z#0);
            assume _module.__default.asimp__const#canCall(a1#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#1#0, Tclass._module.aexp());
            assume {:id "id39"} as1#Z#0 == let#2#1#0;
            if (_module.aexp.N_q(as0#Z#0))
            {
            }

            if (_module.aexp.N_q(as0#Z#0) && _module.aexp.N_q(as1#Z#0))
            {
                assert {:id "id40"} _module.aexp.N_q(as0#Z#0);
                assert {:id "id41"} _module.aexp.N_q(as1#Z#0);
                assume {:id "id42"} _module.__default.asimp__const($LS($LZ), a#0)
                   == #_module.aexp.N(_module.aexp.n(as0#Z#0) + _module.aexp.n(as1#Z#0));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.asimp__const($LS($LZ), a#0), Tclass._module.aexp());
                return;
            }
            else
            {
                assume {:id "id43"} _module.__default.asimp__const($LS($LZ), a#0)
                   == #_module.aexp.Plus(as0#Z#0, as1#Z#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.asimp__const($LS($LZ), a#0), Tclass._module.aexp());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "AsimpConst (well-formedness)"} CheckWellFormed$$_module.__default.AsimpConst(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AsimpConst (call)"} Call$$_module.__default.AsimpConst(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.asimp__const#canCall(a#0)
     && _module.__default.aval#canCall(_module.__default.asimp__const($LS($LZ), a#0), s#0)
     && _module.__default.aval#canCall(a#0, s#0);
  ensures {:id "id51"} _module.__default.aval($LS($LS($LZ)), _module.__default.asimp__const($LS($LS($LZ)), a#0), s#0)
     == _module.__default.aval($LS($LS($LZ)), a#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AsimpConst (correctness)"} Impl$$_module.__default.AsimpConst(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.asimp__const#canCall(a#0)
     && _module.__default.aval#canCall(_module.__default.asimp__const($LS($LZ), a#0), s#0)
     && _module.__default.aval#canCall(a#0, s#0);
  ensures {:id "id52"} _module.__default.aval($LS($LS($LZ)), _module.__default.asimp__const($LS($LS($LZ)), a#0), s#0)
     == _module.__default.aval($LS($LS($LZ)), a#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AsimpConst (correctness)"} Impl$$_module.__default.AsimpConst(a#0: DatatypeType, s#0: HandleType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var a'#0_0: DatatypeType;
  var a##0_0: DatatypeType;
  var s##0_0: HandleType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: AsimpConst, Impl$$_module.__default.AsimpConst
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.aexp(a#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: DatatypeType :: 
      { _module.__default.asimp__const($LS($LZ), $ih#a0#0) } 
      $Is($ih#a0#0, Tclass._module.aexp())
           && Lit(true)
           && DtRank($ih#a0#0) < DtRank(a#0)
         ==> _module.__default.aval($LS($LZ), _module.__default.asimp__const($LS($LZ), $ih#a0#0), s#0)
           == _module.__default.aval($LS($LZ), $ih#a0#0, s#0));
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(69,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a'#0_0;
        assume $Is(a'#0_0, Tclass._module.aexp());
        assume true;
        assume DtRank(a'#0_0) < DtRank(a#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(70,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a'#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        assert {:id "id53"} DtRank(a##0_0) < DtRank(a#0);
        call {:id "id54"} Call$$_module.__default.AsimpConst(a##0_0, s##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall a'#0_1: DatatypeType :: 
          { _module.__default.asimp__const($LS($LZ), a'#0_1) } 
          $Is(a'#0_1, Tclass._module.aexp()) && DtRank(a'#0_1) < DtRank(a#0)
             ==> _module.__default.aval($LS($LZ), _module.__default.asimp__const($LS($LZ), a'#0_1), s#0)
               == _module.__default.aval($LS($LZ), a'#0_1, s#0));
    }
}



// function declaration for _module._default.plus
function _module.__default.plus(a0#0: DatatypeType, a1#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.plus
axiom 2 <= $FunctionContextHeight
   ==> (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
    { _module.__default.plus(a0#0, a1#0) } 
    _module.__default.plus#canCall(a0#0, a1#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(a0#0, Tclass._module.aexp())
           && $Is(a1#0, Tclass._module.aexp()))
       ==> $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp()));
// definition axiom for _module.__default.plus (revealed)
axiom {:id "id55"} 2 <= $FunctionContextHeight
   ==> (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
    { _module.__default.plus(a0#0, a1#0) } 
    _module.__default.plus#canCall(a0#0, a1#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(a0#0, Tclass._module.aexp())
           && $Is(a1#0, Tclass._module.aexp()))
       ==> _module.__default.plus(a0#0, a1#0)
         == (if _module.aexp.N_q(a0#0) && _module.aexp.N_q(a1#0)
           then #_module.aexp.N(_module.aexp.n(a0#0) + _module.aexp.n(a1#0))
           else (if _module.aexp.N_q(a0#0)
             then (if _module.aexp.n(a0#0) == LitInt(0)
               then a1#0
               else #_module.aexp.Plus(a0#0, a1#0))
             else (if _module.aexp.N_q(a1#0)
               then (if _module.aexp.n(a1#0) == LitInt(0)
                 then a0#0
                 else #_module.aexp.Plus(a0#0, a1#0))
               else #_module.aexp.Plus(a0#0, a1#0)))));
// definition axiom for _module.__default.plus for all literals (revealed)
axiom {:id "id56"} 2 <= $FunctionContextHeight
   ==> (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
    {:weight 3} { _module.__default.plus(Lit(a0#0), Lit(a1#0)) } 
    _module.__default.plus#canCall(Lit(a0#0), Lit(a1#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(a0#0, Tclass._module.aexp())
           && $Is(a1#0, Tclass._module.aexp()))
       ==> _module.__default.plus(Lit(a0#0), Lit(a1#0))
         == (if _module.aexp.N_q(Lit(a0#0)) && _module.aexp.N_q(Lit(a1#0))
           then #_module.aexp.N(LitInt(_module.aexp.n(Lit(a0#0)) + _module.aexp.n(Lit(a1#0))))
           else (if _module.aexp.N_q(Lit(a0#0))
             then (if LitInt(_module.aexp.n(Lit(a0#0))) == LitInt(0)
               then a1#0
               else #_module.aexp.Plus(Lit(a0#0), Lit(a1#0)))
             else (if _module.aexp.N_q(Lit(a1#0))
               then (if LitInt(_module.aexp.n(Lit(a1#0))) == LitInt(0)
                 then a0#0
                 else #_module.aexp.Plus(Lit(a0#0), Lit(a1#0)))
               else #_module.aexp.Plus(Lit(a0#0), Lit(a1#0))))));
}

function _module.__default.plus#canCall(a0#0: DatatypeType, a1#0: DatatypeType) : bool;

function _module.__default.plus#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.plus
axiom (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
  { _module.__default.plus#requires(a0#0, a1#0) } 
  $Is(a0#0, Tclass._module.aexp()) && $Is(a1#0, Tclass._module.aexp())
     ==> _module.__default.plus#requires(a0#0, a1#0) == true);

procedure {:verboseName "plus (well-formedness)"} CheckWellformed$$_module.__default.plus(a0#0: DatatypeType where $Is(a0#0, Tclass._module.aexp()), 
    a1#0: DatatypeType where $Is(a1#0, Tclass._module.aexp()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus (well-formedness)"} CheckWellformed$$_module.__default.plus(a0#0: DatatypeType, a1#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (_module.aexp.N_q(a0#0))
        {
        }

        if (_module.aexp.N_q(a0#0) && _module.aexp.N_q(a1#0))
        {
            assert {:id "id57"} _module.aexp.N_q(a0#0);
            assert {:id "id58"} _module.aexp.N_q(a1#0);
            assume {:id "id59"} _module.__default.plus(a0#0, a1#0)
               == #_module.aexp.N(_module.aexp.n(a0#0) + _module.aexp.n(a1#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
            return;
        }
        else
        {
            if (_module.aexp.N_q(a0#0))
            {
                assert {:id "id60"} _module.aexp.N_q(a0#0);
                if (_module.aexp.n(a0#0) == LitInt(0))
                {
                    assume {:id "id61"} _module.__default.plus(a0#0, a1#0) == a1#0;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
                    return;
                }
                else
                {
                    assume {:id "id62"} _module.__default.plus(a0#0, a1#0) == #_module.aexp.Plus(a0#0, a1#0);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
                    return;
                }
            }
            else
            {
                if (_module.aexp.N_q(a1#0))
                {
                    assert {:id "id63"} _module.aexp.N_q(a1#0);
                    if (_module.aexp.n(a1#0) == LitInt(0))
                    {
                        assume {:id "id64"} _module.__default.plus(a0#0, a1#0) == a0#0;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
                        return;
                    }
                    else
                    {
                        assume {:id "id65"} _module.__default.plus(a0#0, a1#0) == #_module.aexp.Plus(a0#0, a1#0);
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
                        return;
                    }
                }
                else
                {
                    assume {:id "id66"} _module.__default.plus(a0#0, a1#0) == #_module.aexp.Plus(a0#0, a1#0);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.plus(a0#0, a1#0), Tclass._module.aexp());
                    return;
                }
            }
        }

        assume false;
    }
}



procedure {:verboseName "AvalPlus (well-formedness)"} CheckWellFormed$$_module.__default.AvalPlus(a0#0: DatatypeType
       where $Is(a0#0, Tclass._module.aexp())
         && $IsAlloc(a0#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a0#0), 
    a1#0: DatatypeType
       where $Is(a1#0, Tclass._module.aexp())
         && $IsAlloc(a1#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a1#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AvalPlus (call)"} Call$$_module.__default.AvalPlus(a0#0: DatatypeType
       where $Is(a0#0, Tclass._module.aexp())
         && $IsAlloc(a0#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a0#0), 
    a1#0: DatatypeType
       where $Is(a1#0, Tclass._module.aexp())
         && $IsAlloc(a1#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a1#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.plus#canCall(a0#0, a1#0)
     && _module.__default.aval#canCall(_module.__default.plus(a0#0, a1#0), s#0)
     && 
    _module.__default.aval#canCall(a0#0, s#0)
     && _module.__default.aval#canCall(a1#0, s#0);
  ensures {:id "id68"} _module.__default.aval($LS($LS($LZ)), _module.__default.plus(a0#0, a1#0), s#0)
     == _module.__default.aval($LS($LS($LZ)), a0#0, s#0)
       + _module.__default.aval($LS($LS($LZ)), a1#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AvalPlus (correctness)"} Impl$$_module.__default.AvalPlus(a0#0: DatatypeType
       where $Is(a0#0, Tclass._module.aexp())
         && $IsAlloc(a0#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a0#0), 
    a1#0: DatatypeType
       where $Is(a1#0, Tclass._module.aexp())
         && $IsAlloc(a1#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a1#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.plus#canCall(a0#0, a1#0)
     && _module.__default.aval#canCall(_module.__default.plus(a0#0, a1#0), s#0)
     && 
    _module.__default.aval#canCall(a0#0, s#0)
     && _module.__default.aval#canCall(a1#0, s#0);
  ensures {:id "id69"} _module.__default.aval($LS($LS($LZ)), _module.__default.plus(a0#0, a1#0), s#0)
     == _module.__default.aval($LS($LS($LZ)), a0#0, s#0)
       + _module.__default.aval($LS($LS($LZ)), a1#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AvalPlus (correctness)"} Impl$$_module.__default.AvalPlus(a0#0: DatatypeType, a1#0: DatatypeType, s#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: AvalPlus, Impl$$_module.__default.AvalPlus
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.aexp(a0#0);
    assume $IsA#_module.aexp(a1#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a00#0: DatatypeType, $ih#a10#0: DatatypeType :: 
      { _module.__default.plus($ih#a00#0, $ih#a10#0) } 
      $Is($ih#a00#0, Tclass._module.aexp())
           && $Is($ih#a10#0, Tclass._module.aexp())
           && Lit(true)
           && (DtRank($ih#a00#0) < DtRank(a0#0)
             || (DtRank($ih#a00#0) == DtRank(a0#0) && DtRank($ih#a10#0) < DtRank(a1#0)))
         ==> _module.__default.aval($LS($LZ), _module.__default.plus($ih#a00#0, $ih#a10#0), s#0)
           == _module.__default.aval($LS($LZ), $ih#a00#0, s#0)
             + _module.__default.aval($LS($LZ), $ih#a10#0, s#0));
    $_reverifyPost := false;
}



// function declaration for _module._default.asimp
function _module.__default.asimp($ly: LayerType, a#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.asimp
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.asimp($ly, a#0) } 
    _module.__default.asimp#canCall(a#0)
         || (3 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> $Is(_module.__default.asimp($ly, a#0), Tclass._module.aexp()));
// definition axiom for _module.__default.asimp (revealed)
axiom {:id "id70"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.asimp($LS($ly), a#0) } 
    _module.__default.asimp#canCall(a#0)
         || (3 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> (!_module.aexp.N_q(a#0)
           ==> 
          !_module.aexp.V_q(a#0)
           ==> (var a1#1 := _module.aexp._h2(a#0); 
            (var a0#1 := _module.aexp._h1(a#0); 
              _module.__default.asimp#canCall(a0#1)
                 && _module.__default.asimp#canCall(a1#1)
                 && _module.__default.plus#canCall(_module.__default.asimp($ly, a0#1), _module.__default.asimp($ly, a1#1)))))
         && _module.__default.asimp($LS($ly), a#0)
           == (if _module.aexp.N_q(a#0)
             then (var n#0 := _module.aexp.n(a#0); a#0)
             else (if _module.aexp.V_q(a#0)
               then (var x#0 := _module.aexp._h0(a#0); a#0)
               else (var a1#0 := _module.aexp._h2(a#0); 
                (var a0#0 := _module.aexp._h1(a#0); 
                  _module.__default.plus(_module.__default.asimp($ly, a0#0), _module.__default.asimp($ly, a1#0)))))));
// definition axiom for _module.__default.asimp for all literals (revealed)
axiom {:id "id71"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    {:weight 3} { _module.__default.asimp($LS($ly), Lit(a#0)) } 
    _module.__default.asimp#canCall(Lit(a#0))
         || (3 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> (!Lit(_module.aexp.N_q(Lit(a#0)))
           ==> 
          !Lit(_module.aexp.V_q(Lit(a#0)))
           ==> (var a1#3 := Lit(_module.aexp._h2(Lit(a#0))); 
            (var a0#3 := Lit(_module.aexp._h1(Lit(a#0))); 
              _module.__default.asimp#canCall(a0#3)
                 && _module.__default.asimp#canCall(a1#3)
                 && _module.__default.plus#canCall(_module.__default.asimp($LS($ly), a0#3), _module.__default.asimp($LS($ly), a1#3)))))
         && _module.__default.asimp($LS($ly), Lit(a#0))
           == (if _module.aexp.N_q(Lit(a#0))
             then (var n#2 := LitInt(_module.aexp.n(Lit(a#0))); Lit(a#0))
             else (if _module.aexp.V_q(Lit(a#0))
               then (var x#2 := Lit(_module.aexp._h0(Lit(a#0))); Lit(a#0))
               else (var a1#2 := Lit(_module.aexp._h2(Lit(a#0))); 
                (var a0#2 := Lit(_module.aexp._h1(Lit(a#0))); 
                  Lit(_module.__default.plus(Lit(_module.__default.asimp($LS($ly), a0#2)), 
                      Lit(_module.__default.asimp($LS($ly), a1#2)))))))));
}

function _module.__default.asimp#canCall(a#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.asimp($LS($ly), a#0) } 
  _module.__default.asimp($LS($ly), a#0) == _module.__default.asimp($ly, a#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.asimp(AsFuelBottom($ly), a#0) } 
  _module.__default.asimp($ly, a#0) == _module.__default.asimp($LZ, a#0));

function _module.__default.asimp#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.asimp
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.asimp#requires($ly, a#0) } 
  $Is(a#0, Tclass._module.aexp())
     ==> _module.__default.asimp#requires($ly, a#0) == true);

procedure {:verboseName "asimp (well-formedness)"} CheckWellformed$$_module.__default.asimp(a#0: DatatypeType where $Is(a#0, Tclass._module.aexp()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "asimp (well-formedness)"} CheckWellformed$$_module.__default.asimp(a#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var a1#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a0#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##a0#0: DatatypeType;
  var ##a#0: DatatypeType;
  var ##a1#0: DatatypeType;
  var ##a#1: DatatypeType;
  var _mcc#1#0: Seq;
  var x#Z#0: Seq;
  var let#2#0#0: Seq;
  var _mcc#0#0: int;
  var n#Z#0: int;
  var let#3#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.asimp($LS($LZ), a#0), Tclass._module.aexp());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.aexp.N(_mcc#0#0))
        {
            havoc n#Z#0;
            assume {:id "id82"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TInt);
            assume {:id "id83"} n#Z#0 == let#3#0#0;
            assume {:id "id84"} _module.__default.asimp($LS($LZ), a#0) == a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.asimp($LS($LZ), a#0), Tclass._module.aexp());
            return;
        }
        else if (a#0 == #_module.aexp.V(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            havoc x#Z#0;
            assume {:id "id79"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TSeq(TChar));
            assume {:id "id80"} x#Z#0 == let#2#0#0;
            assume {:id "id81"} _module.__default.asimp($LS($LZ), a#0) == a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.asimp($LS($LZ), a#0), Tclass._module.aexp());
            return;
        }
        else if (a#0 == #_module.aexp.Plus(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.aexp());
            assume $Is(_mcc#3#0, Tclass._module.aexp());
            havoc a1#Z#0;
            assume {:id "id72"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.aexp());
            assume {:id "id73"} a1#Z#0 == let#0#0#0;
            havoc a0#Z#0;
            assume {:id "id74"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.aexp());
            assume {:id "id75"} a0#Z#0 == let#1#0#0;
            ##a#0 := a0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
            assert {:id "id76"} DtRank(##a#0) < DtRank(a#0);
            assume _module.__default.asimp#canCall(a0#Z#0);
            ##a0#0 := _module.__default.asimp($LS($LZ), a0#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a0#0, Tclass._module.aexp(), $Heap);
            ##a#1 := a1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, Tclass._module.aexp(), $Heap);
            assert {:id "id77"} DtRank(##a#1) < DtRank(a#0);
            assume _module.__default.asimp#canCall(a1#Z#0);
            ##a1#0 := _module.__default.asimp($LS($LZ), a1#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a1#0, Tclass._module.aexp(), $Heap);
            assume _module.__default.plus#canCall(_module.__default.asimp($LS($LZ), a0#Z#0), 
              _module.__default.asimp($LS($LZ), a1#Z#0));
            assume {:id "id78"} _module.__default.asimp($LS($LZ), a#0)
               == _module.__default.plus(_module.__default.asimp($LS($LZ), a0#Z#0), 
                _module.__default.asimp($LS($LZ), a1#Z#0));
            assume _module.__default.asimp#canCall(a0#Z#0)
               && _module.__default.asimp#canCall(a1#Z#0)
               && _module.__default.plus#canCall(_module.__default.asimp($LS($LZ), a0#Z#0), 
                _module.__default.asimp($LS($LZ), a1#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.asimp($LS($LZ), a#0), Tclass._module.aexp());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "AsimpCorrect (well-formedness)"} CheckWellFormed$$_module.__default.AsimpCorrect(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AsimpCorrect (call)"} Call$$_module.__default.AsimpCorrect(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.asimp#canCall(a#0)
     && _module.__default.aval#canCall(_module.__default.asimp($LS($LZ), a#0), s#0)
     && _module.__default.aval#canCall(a#0, s#0);
  ensures {:id "id86"} _module.__default.aval($LS($LS($LZ)), _module.__default.asimp($LS($LS($LZ)), a#0), s#0)
     == _module.__default.aval($LS($LS($LZ)), a#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AsimpCorrect (correctness)"} Impl$$_module.__default.AsimpCorrect(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.asimp#canCall(a#0)
     && _module.__default.aval#canCall(_module.__default.asimp($LS($LZ), a#0), s#0)
     && _module.__default.aval#canCall(a#0, s#0);
  ensures {:id "id87"} _module.__default.aval($LS($LS($LZ)), _module.__default.asimp($LS($LS($LZ)), a#0), s#0)
     == _module.__default.aval($LS($LS($LZ)), a#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AsimpCorrect (correctness)"} Impl$$_module.__default.AsimpCorrect(a#0: DatatypeType, s#0: HandleType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var a'#0_0: DatatypeType;
  var a##0_0: DatatypeType;
  var s##0_0: HandleType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: AsimpCorrect, Impl$$_module.__default.AsimpCorrect
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.aexp(a#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: DatatypeType :: 
      { _module.__default.asimp($LS($LZ), $ih#a0#0) } 
      $Is($ih#a0#0, Tclass._module.aexp())
           && Lit(true)
           && DtRank($ih#a0#0) < DtRank(a#0)
         ==> _module.__default.aval($LS($LZ), _module.__default.asimp($LS($LZ), $ih#a0#0), s#0)
           == _module.__default.aval($LS($LZ), $ih#a0#0, s#0));
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(115,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a'#0_0;
        assume $Is(a'#0_0, Tclass._module.aexp());
        assume true;
        assume DtRank(a'#0_0) < DtRank(a#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(115,36)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a'#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        assert {:id "id88"} DtRank(a##0_0) < DtRank(a#0);
        call {:id "id89"} Call$$_module.__default.AsimpCorrect(a##0_0, s##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall a'#0_1: DatatypeType :: 
          { _module.__default.asimp($LS($LZ), a'#0_1) } 
          $Is(a'#0_1, Tclass._module.aexp()) && DtRank(a'#0_1) < DtRank(a#0)
             ==> _module.__default.aval($LS($LZ), _module.__default.asimp($LS($LZ), a'#0_1), s#0)
               == _module.__default.aval($LS($LZ), a'#0_1, s#0));
    }
}



procedure {:verboseName "ASimplInvolutive (well-formedness)"} CheckWellFormed$$_module.__default.ASimplInvolutive(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ASimplInvolutive (call)"} Call$$_module.__default.ASimplInvolutive(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.aexp(_module.__default.asimp($LS($LZ), _module.__default.asimp($LS($LZ), a#0)))
     && $IsA#_module.aexp(_module.__default.asimp($LS($LZ), a#0))
     && 
    _module.__default.asimp#canCall(a#0)
     && _module.__default.asimp#canCall(_module.__default.asimp($LS($LZ), a#0))
     && _module.__default.asimp#canCall(a#0);
  ensures {:id "id91"} _module.aexp#Equal(_module.__default.asimp($LS($LS($LZ)), _module.__default.asimp($LS($LS($LZ)), a#0)), 
    _module.__default.asimp($LS($LS($LZ)), a#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ASimplInvolutive (correctness)"} Impl$$_module.__default.ASimplInvolutive(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.aexp(_module.__default.asimp($LS($LZ), _module.__default.asimp($LS($LZ), a#0)))
     && $IsA#_module.aexp(_module.__default.asimp($LS($LZ), a#0))
     && 
    _module.__default.asimp#canCall(a#0)
     && _module.__default.asimp#canCall(_module.__default.asimp($LS($LZ), a#0))
     && _module.__default.asimp#canCall(a#0);
  ensures {:id "id92"} _module.aexp#Equal(_module.__default.asimp($LS($LS($LZ)), _module.__default.asimp($LS($LS($LZ)), a#0)), 
    _module.__default.asimp($LS($LS($LZ)), a#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ASimplInvolutive (correctness)"} Impl$$_module.__default.ASimplInvolutive(a#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: ASimplInvolutive, Impl$$_module.__default.ASimplInvolutive
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.aexp(a#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: DatatypeType :: 
      { _module.__default.asimp($LS($LZ), _module.__default.asimp($LS($LZ), $ih#a0#0)) } 
      $Is($ih#a0#0, Tclass._module.aexp())
           && Lit(true)
           && DtRank($ih#a0#0) < DtRank(a#0)
         ==> _module.aexp#Equal(_module.__default.asimp($LS($LZ), _module.__default.asimp($LS($LZ), $ih#a0#0)), 
          _module.__default.asimp($LS($LZ), $ih#a0#0)));
    $_reverifyPost := false;
}



// function declaration for _module._default.bval
function _module.__default.bval($ly: LayerType, b#0: DatatypeType, s#0: HandleType) : bool
uses {
// definition axiom for _module.__default.bval (revealed)
axiom {:id "id93"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType, s#0: HandleType :: 
    { _module.__default.bval($LS($ly), b#0, s#0) } 
    _module.__default.bval#canCall(b#0, s#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(b#0, Tclass._module.bexp())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)))
       ==> (!_module.bexp.Bc_q(b#0)
           ==> (_module.bexp.Not_q(b#0)
               ==> (var b#2 := _module.bexp._h3(b#0); _module.__default.bval#canCall(b#2, s#0)))
             && (!_module.bexp.Not_q(b#0)
               ==> (_module.bexp.And_q(b#0)
                   ==> (var b1#1 := _module.bexp._h5(b#0); 
                    (var b0#1 := _module.bexp._h4(b#0); 
                      _module.__default.bval#canCall(b0#1, s#0)
                         && (_module.__default.bval($ly, b0#1, s#0)
                           ==> _module.__default.bval#canCall(b1#1, s#0)))))
                 && (!_module.bexp.And_q(b#0)
                   ==> (var a1#1 := _module.bexp._h7(b#0); 
                    (var a0#1 := _module.bexp._h6(b#0); 
                      _module.__default.aval#canCall(a0#1, s#0)
                         && _module.__default.aval#canCall(a1#1, s#0))))))
         && _module.__default.bval($LS($ly), b#0, s#0)
           == (if _module.bexp.Bc_q(b#0)
             then (var v#0 := _module.bexp.v(b#0); v#0)
             else (if _module.bexp.Not_q(b#0)
               then (var b#1 := _module.bexp._h3(b#0); !_module.__default.bval($ly, b#1, s#0))
               else (if _module.bexp.And_q(b#0)
                 then (var b1#0 := _module.bexp._h5(b#0); 
                  (var b0#0 := _module.bexp._h4(b#0); 
                    _module.__default.bval($ly, b0#0, s#0) && _module.__default.bval($ly, b1#0, s#0)))
                 else (var a1#0 := _module.bexp._h7(b#0); 
                  (var a0#0 := _module.bexp._h6(b#0); 
                    _module.__default.aval($LS($LZ), a0#0, s#0)
                       < _module.__default.aval($LS($LZ), a1#0, s#0)))))));
// definition axiom for _module.__default.bval for decreasing-related literals (revealed)
axiom {:id "id94"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType, s#0: HandleType :: 
    {:weight 3} { _module.__default.bval($LS($ly), Lit(b#0), s#0) } 
    _module.__default.bval#canCall(Lit(b#0), s#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(b#0, Tclass._module.bexp())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)))
       ==> (!Lit(_module.bexp.Bc_q(Lit(b#0)))
           ==> (Lit(_module.bexp.Not_q(Lit(b#0)))
               ==> (var b#4 := Lit(_module.bexp._h3(Lit(b#0))); 
                _module.__default.bval#canCall(b#4, s#0)))
             && (!Lit(_module.bexp.Not_q(Lit(b#0)))
               ==> (Lit(_module.bexp.And_q(Lit(b#0)))
                   ==> (var b1#3 := Lit(_module.bexp._h5(Lit(b#0))); 
                    (var b0#3 := Lit(_module.bexp._h4(Lit(b#0))); 
                      _module.__default.bval#canCall(b0#3, s#0)
                         && (_module.__default.bval($LS($ly), b0#3, s#0)
                           ==> _module.__default.bval#canCall(b1#3, s#0)))))
                 && (!Lit(_module.bexp.And_q(Lit(b#0)))
                   ==> (var a1#3 := Lit(_module.bexp._h7(Lit(b#0))); 
                    (var a0#3 := Lit(_module.bexp._h6(Lit(b#0))); 
                      _module.__default.aval#canCall(a0#3, s#0)
                         && _module.__default.aval#canCall(a1#3, s#0))))))
         && _module.__default.bval($LS($ly), Lit(b#0), s#0)
           == (if _module.bexp.Bc_q(Lit(b#0))
             then (var v#2 := Lit(_module.bexp.v(Lit(b#0))); v#2)
             else (if _module.bexp.Not_q(Lit(b#0))
               then (var b#3 := Lit(_module.bexp._h3(Lit(b#0))); 
                !_module.__default.bval($LS($ly), b#3, s#0))
               else (if _module.bexp.And_q(Lit(b#0))
                 then (var b1#2 := Lit(_module.bexp._h5(Lit(b#0))); 
                  (var b0#2 := Lit(_module.bexp._h4(Lit(b#0))); 
                    _module.__default.bval($LS($ly), b0#2, s#0)
                       && _module.__default.bval($LS($ly), b1#2, s#0)))
                 else (var a1#2 := Lit(_module.bexp._h7(Lit(b#0))); 
                  (var a0#2 := Lit(_module.bexp._h6(Lit(b#0))); 
                    _module.__default.aval($LS($LZ), a0#2, s#0)
                       < _module.__default.aval($LS($LZ), a1#2, s#0)))))));
// definition axiom for _module.__default.bval for all literals (revealed)
axiom {:id "id95"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType, s#0: HandleType :: 
    {:weight 3} { _module.__default.bval($LS($ly), Lit(b#0), Lit(s#0)) } 
    _module.__default.bval#canCall(Lit(b#0), Lit(s#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(b#0, Tclass._module.bexp())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)))
       ==> (!Lit(_module.bexp.Bc_q(Lit(b#0)))
           ==> (Lit(_module.bexp.Not_q(Lit(b#0)))
               ==> (var b#6 := Lit(_module.bexp._h3(Lit(b#0))); 
                _module.__default.bval#canCall(b#6, Lit(s#0))))
             && (!Lit(_module.bexp.Not_q(Lit(b#0)))
               ==> (Lit(_module.bexp.And_q(Lit(b#0)))
                   ==> (var b1#5 := Lit(_module.bexp._h5(Lit(b#0))); 
                    (var b0#5 := Lit(_module.bexp._h4(Lit(b#0))); 
                      _module.__default.bval#canCall(b0#5, Lit(s#0))
                         && (_module.__default.bval($LS($ly), b0#5, Lit(s#0))
                           ==> _module.__default.bval#canCall(b1#5, Lit(s#0))))))
                 && (!Lit(_module.bexp.And_q(Lit(b#0)))
                   ==> (var a1#5 := Lit(_module.bexp._h7(Lit(b#0))); 
                    (var a0#5 := Lit(_module.bexp._h6(Lit(b#0))); 
                      _module.__default.aval#canCall(a0#5, Lit(s#0))
                         && _module.__default.aval#canCall(a1#5, Lit(s#0)))))))
         && _module.__default.bval($LS($ly), Lit(b#0), Lit(s#0))
           == (if _module.bexp.Bc_q(Lit(b#0))
             then (var v#4 := Lit(_module.bexp.v(Lit(b#0))); v#4)
             else (if _module.bexp.Not_q(Lit(b#0))
               then (var b#5 := Lit(_module.bexp._h3(Lit(b#0))); 
                !Lit(_module.__default.bval($LS($ly), b#5, Lit(s#0))))
               else (if _module.bexp.And_q(Lit(b#0))
                 then (var b1#4 := Lit(_module.bexp._h5(Lit(b#0))); 
                  (var b0#4 := Lit(_module.bexp._h4(Lit(b#0))); 
                    Lit(_module.__default.bval($LS($ly), b0#4, Lit(s#0))
                         && _module.__default.bval($LS($ly), b1#4, Lit(s#0)))))
                 else (var a1#4 := Lit(_module.bexp._h7(Lit(b#0))); 
                  (var a0#4 := Lit(_module.bexp._h6(Lit(b#0))); 
                    Lit(_module.__default.aval($LS($LZ), a0#4, Lit(s#0))
                         < _module.__default.aval($LS($LZ), a1#4, Lit(s#0)))))))));
}

function _module.__default.bval#canCall(b#0: DatatypeType, s#0: HandleType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType, s#0: HandleType :: 
  { _module.__default.bval($LS($ly), b#0, s#0) } 
  _module.__default.bval($LS($ly), b#0, s#0)
     == _module.__default.bval($ly, b#0, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType, s#0: HandleType :: 
  { _module.__default.bval(AsFuelBottom($ly), b#0, s#0) } 
  _module.__default.bval($ly, b#0, s#0) == _module.__default.bval($LZ, b#0, s#0));

function Tclass._module.bexp() : Ty
uses {
// Tclass._module.bexp Tag
axiom Tag(Tclass._module.bexp()) == Tagclass._module.bexp
   && TagFamily(Tclass._module.bexp()) == tytagFamily$bexp;
}

const unique Tagclass._module.bexp: TyTag;

// Box/unbox axiom for Tclass._module.bexp
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.bexp()) } 
  $IsBox(bx, Tclass._module.bexp())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.bexp()));

function _module.__default.bval#requires(LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.bval
axiom (forall $ly: LayerType, b#0: DatatypeType, s#0: HandleType :: 
  { _module.__default.bval#requires($ly, b#0, s#0) } 
  $Is(b#0, Tclass._module.bexp())
       && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
     ==> _module.__default.bval#requires($ly, b#0, s#0) == true);

procedure {:verboseName "bval (well-formedness)"} CheckWellformed$$_module.__default.bval(b#0: DatatypeType where $Is(b#0, Tclass._module.bexp()), 
    s#0: HandleType where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "bval (well-formedness)"} CheckWellformed$$_module.__default.bval(b#0: DatatypeType, s#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#4#0: DatatypeType;
  var _mcc#5#0: DatatypeType;
  var a1#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a0#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##a#0: DatatypeType;
  var ##s#0: HandleType;
  var ##a#1: DatatypeType;
  var ##s#1: HandleType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var b1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var b0#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##s#2: HandleType;
  var ##b#1: DatatypeType;
  var ##s#3: HandleType;
  var _mcc#1#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var ##b#2: DatatypeType;
  var ##s#4: HandleType;
  var _mcc#0#0: bool;
  var v#Z#0: bool;
  var let#5#0#0: bool;


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
        if (b#0 == #_module.bexp.Bc(_mcc#0#0))
        {
            havoc v#Z#0;
            assume {:id "id112"} let#5#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, TBool);
            assume {:id "id113"} v#Z#0 == let#5#0#0;
            assume {:id "id114"} _module.__default.bval($LS($LZ), b#0, s#0) == v#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bval($LS($LZ), b#0, s#0), TBool);
            return;
        }
        else if (b#0 == #_module.bexp.Not(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.bexp());
            havoc b#Z#0;
            assume {:id "id108"} let#4#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, Tclass._module.bexp());
            assume {:id "id109"} b#Z#0 == let#4#0#0;
            ##b#2 := b#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, Tclass._module.bexp(), $Heap);
            ##s#4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#4, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assert {:id "id110"} DtRank(##b#2) < DtRank(b#0);
            assume _module.__default.bval#canCall(b#Z#0, s#0);
            assume {:id "id111"} _module.__default.bval($LS($LZ), b#0, s#0)
               == !_module.__default.bval($LS($LZ), b#Z#0, s#0);
            assume _module.__default.bval#canCall(b#Z#0, s#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bval($LS($LZ), b#0, s#0), TBool);
            return;
        }
        else if (b#0 == #_module.bexp.And(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.bexp());
            assume $Is(_mcc#3#0, Tclass._module.bexp());
            havoc b1#Z#0;
            assume {:id "id101"} let#2#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.bexp());
            assume {:id "id102"} b1#Z#0 == let#2#0#0;
            havoc b0#Z#0;
            assume {:id "id103"} let#3#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass._module.bexp());
            assume {:id "id104"} b0#Z#0 == let#3#0#0;
            ##b#0 := b0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.bexp(), $Heap);
            ##s#2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assert {:id "id105"} DtRank(##b#0) < DtRank(b#0);
            assume _module.__default.bval#canCall(b0#Z#0, s#0);
            if (_module.__default.bval($LS($LZ), b0#Z#0, s#0))
            {
                ##b#1 := b1#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1, Tclass._module.bexp(), $Heap);
                ##s#3 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
                assert {:id "id106"} DtRank(##b#1) < DtRank(b#0);
                assume _module.__default.bval#canCall(b1#Z#0, s#0);
            }

            assume {:id "id107"} _module.__default.bval($LS($LZ), b#0, s#0)
               == (_module.__default.bval($LS($LZ), b0#Z#0, s#0)
                 && _module.__default.bval($LS($LZ), b1#Z#0, s#0));
            assume _module.__default.bval#canCall(b0#Z#0, s#0)
               && (_module.__default.bval($LS($LZ), b0#Z#0, s#0)
                 ==> _module.__default.bval#canCall(b1#Z#0, s#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bval($LS($LZ), b#0, s#0), TBool);
            return;
        }
        else if (b#0 == #_module.bexp.Less(_mcc#4#0, _mcc#5#0))
        {
            assume $Is(_mcc#4#0, Tclass._module.aexp());
            assume $Is(_mcc#5#0, Tclass._module.aexp());
            havoc a1#Z#0;
            assume {:id "id96"} let#0#0#0 == _mcc#5#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.aexp());
            assume {:id "id97"} a1#Z#0 == let#0#0#0;
            havoc a0#Z#0;
            assume {:id "id98"} let#1#0#0 == _mcc#4#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.aexp());
            assume {:id "id99"} a0#Z#0 == let#1#0#0;
            ##a#0 := a0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
            ##s#0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#Z#0, s#0);
            ##a#1 := a1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, Tclass._module.aexp(), $Heap);
            ##s#1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a1#Z#0, s#0);
            assume {:id "id100"} _module.__default.bval($LS($LZ), b#0, s#0)
               == (_module.__default.aval($LS($LZ), a0#Z#0, s#0)
                 < _module.__default.aval($LS($LZ), a1#Z#0, s#0));
            assume _module.__default.aval#canCall(a0#Z#0, s#0)
               && _module.__default.aval#canCall(a1#Z#0, s#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bval($LS($LZ), b#0, s#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.not
function _module.__default.not(b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.not
axiom 3 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.not(b#0) } 
    _module.__default.not#canCall(b#0)
         || (3 < $FunctionContextHeight && $Is(b#0, Tclass._module.bexp()))
       ==> $Is(_module.__default.not(b#0), Tclass._module.bexp()));
// definition axiom for _module.__default.not (revealed)
axiom {:id "id115"} 3 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.not(b#0) } 
    _module.__default.not#canCall(b#0)
         || (3 < $FunctionContextHeight && $Is(b#0, Tclass._module.bexp()))
       ==> _module.__default.not(b#0)
         == (if _module.bexp.Bc_q(b#0)
           then (var b0#0 := _module.bexp.v(b#0); #_module.bexp.Bc(!b0#0))
           else (if _module.bexp.Not_q(b#0)
             then (var b0#1 := _module.bexp._h3(b#0); b0#1)
             else (if _module.bexp.And_q(b#0)
               then #_module.bexp.Not(b#0)
               else #_module.bexp.Not(b#0)))));
// definition axiom for _module.__default.not for all literals (revealed)
axiom {:id "id116"} 3 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    {:weight 3} { _module.__default.not(Lit(b#0)) } 
    _module.__default.not#canCall(Lit(b#0))
         || (3 < $FunctionContextHeight && $Is(b#0, Tclass._module.bexp()))
       ==> _module.__default.not(Lit(b#0))
         == (if _module.bexp.Bc_q(Lit(b#0))
           then (var b0#4 := Lit(_module.bexp.v(Lit(b#0))); #_module.bexp.Bc(!b0#4))
           else (if _module.bexp.Not_q(Lit(b#0))
             then (var b0#5 := Lit(_module.bexp._h3(Lit(b#0))); b0#5)
             else (if _module.bexp.And_q(Lit(b#0))
               then #_module.bexp.Not(Lit(b#0))
               else #_module.bexp.Not(Lit(b#0))))));
}

function _module.__default.not#canCall(b#0: DatatypeType) : bool;

function _module.__default.not#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.not
axiom (forall b#0: DatatypeType :: 
  { _module.__default.not#requires(b#0) } 
  $Is(b#0, Tclass._module.bexp()) ==> _module.__default.not#requires(b#0) == true);

procedure {:verboseName "not (well-formedness)"} CheckWellformed$$_module.__default.not(b#0: DatatypeType where $Is(b#0, Tclass._module.bexp()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.and
function _module.__default.and(b0#0: DatatypeType, b1#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.and
axiom 3 <= $FunctionContextHeight
   ==> (forall b0#0: DatatypeType, b1#0: DatatypeType :: 
    { _module.__default.and(b0#0, b1#0) } 
    _module.__default.and#canCall(b0#0, b1#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(b0#0, Tclass._module.bexp())
           && $Is(b1#0, Tclass._module.bexp()))
       ==> $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp()));
// definition axiom for _module.__default.and (revealed)
axiom {:id "id125"} 3 <= $FunctionContextHeight
   ==> (forall b0#0: DatatypeType, b1#0: DatatypeType :: 
    { _module.__default.and(b0#0, b1#0) } 
    _module.__default.and#canCall(b0#0, b1#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(b0#0, Tclass._module.bexp())
           && $Is(b1#0, Tclass._module.bexp()))
       ==> _module.__default.and(b0#0, b1#0)
         == (if _module.bexp.Bc_q(b0#0)
           then (if _module.bexp.v(b0#0) then b1#0 else b0#0)
           else (if _module.bexp.Bc_q(b1#0)
             then (if _module.bexp.v(b1#0) then b0#0 else b1#0)
             else #_module.bexp.And(b0#0, b1#0))));
// definition axiom for _module.__default.and for all literals (revealed)
axiom {:id "id126"} 3 <= $FunctionContextHeight
   ==> (forall b0#0: DatatypeType, b1#0: DatatypeType :: 
    {:weight 3} { _module.__default.and(Lit(b0#0), Lit(b1#0)) } 
    _module.__default.and#canCall(Lit(b0#0), Lit(b1#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(b0#0, Tclass._module.bexp())
           && $Is(b1#0, Tclass._module.bexp()))
       ==> _module.__default.and(Lit(b0#0), Lit(b1#0))
         == (if _module.bexp.Bc_q(Lit(b0#0))
           then (if _module.bexp.v(Lit(b0#0)) then b1#0 else b0#0)
           else (if _module.bexp.Bc_q(Lit(b1#0))
             then (if _module.bexp.v(Lit(b1#0)) then b0#0 else b1#0)
             else #_module.bexp.And(Lit(b0#0), Lit(b1#0)))));
}

function _module.__default.and#canCall(b0#0: DatatypeType, b1#0: DatatypeType) : bool;

function _module.__default.and#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.and
axiom (forall b0#0: DatatypeType, b1#0: DatatypeType :: 
  { _module.__default.and#requires(b0#0, b1#0) } 
  $Is(b0#0, Tclass._module.bexp()) && $Is(b1#0, Tclass._module.bexp())
     ==> _module.__default.and#requires(b0#0, b1#0) == true);

procedure {:verboseName "and (well-formedness)"} CheckWellformed$$_module.__default.and(b0#0: DatatypeType where $Is(b0#0, Tclass._module.bexp()), 
    b1#0: DatatypeType where $Is(b1#0, Tclass._module.bexp()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "and (well-formedness)"} CheckWellformed$$_module.__default.and(b0#0: DatatypeType, b1#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (_module.bexp.Bc_q(b0#0))
        {
            assert {:id "id127"} _module.bexp.Bc_q(b0#0);
            if (_module.bexp.v(b0#0))
            {
                assume {:id "id128"} _module.__default.and(b0#0, b1#0) == b1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp());
                return;
            }
            else
            {
                assume {:id "id129"} _module.__default.and(b0#0, b1#0) == b0#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp());
                return;
            }
        }
        else
        {
            if (_module.bexp.Bc_q(b1#0))
            {
                assert {:id "id130"} _module.bexp.Bc_q(b1#0);
                if (_module.bexp.v(b1#0))
                {
                    assume {:id "id131"} _module.__default.and(b0#0, b1#0) == b0#0;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp());
                    return;
                }
                else
                {
                    assume {:id "id132"} _module.__default.and(b0#0, b1#0) == b1#0;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp());
                    return;
                }
            }
            else
            {
                assume {:id "id133"} _module.__default.and(b0#0, b1#0) == #_module.bexp.And(b0#0, b1#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.and(b0#0, b1#0), Tclass._module.bexp());
                return;
            }
        }

        assume false;
    }
}



// function declaration for _module._default.less
function _module.__default.less(a0#0: DatatypeType, a1#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.less
axiom 3 <= $FunctionContextHeight
   ==> (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
    { _module.__default.less(a0#0, a1#0) } 
    _module.__default.less#canCall(a0#0, a1#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(a0#0, Tclass._module.aexp())
           && $Is(a1#0, Tclass._module.aexp()))
       ==> $Is(_module.__default.less(a0#0, a1#0), Tclass._module.bexp()));
// definition axiom for _module.__default.less (revealed)
axiom {:id "id134"} 3 <= $FunctionContextHeight
   ==> (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
    { _module.__default.less(a0#0, a1#0) } 
    _module.__default.less#canCall(a0#0, a1#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(a0#0, Tclass._module.aexp())
           && $Is(a1#0, Tclass._module.aexp()))
       ==> _module.__default.less(a0#0, a1#0)
         == (if _module.aexp.N_q(a0#0) && _module.aexp.N_q(a1#0)
           then #_module.bexp.Bc(_module.aexp.n(a0#0) < _module.aexp.n(a1#0))
           else #_module.bexp.Less(a0#0, a1#0)));
// definition axiom for _module.__default.less for all literals (revealed)
axiom {:id "id135"} 3 <= $FunctionContextHeight
   ==> (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
    {:weight 3} { _module.__default.less(Lit(a0#0), Lit(a1#0)) } 
    _module.__default.less#canCall(Lit(a0#0), Lit(a1#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(a0#0, Tclass._module.aexp())
           && $Is(a1#0, Tclass._module.aexp()))
       ==> _module.__default.less(Lit(a0#0), Lit(a1#0))
         == (if _module.aexp.N_q(Lit(a0#0)) && _module.aexp.N_q(Lit(a1#0))
           then #_module.bexp.Bc(Lit(_module.aexp.n(Lit(a0#0)) < _module.aexp.n(Lit(a1#0))))
           else #_module.bexp.Less(Lit(a0#0), Lit(a1#0))));
}

function _module.__default.less#canCall(a0#0: DatatypeType, a1#0: DatatypeType) : bool;

function _module.__default.less#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.less
axiom (forall a0#0: DatatypeType, a1#0: DatatypeType :: 
  { _module.__default.less#requires(a0#0, a1#0) } 
  $Is(a0#0, Tclass._module.aexp()) && $Is(a1#0, Tclass._module.aexp())
     ==> _module.__default.less#requires(a0#0, a1#0) == true);

procedure {:verboseName "less (well-formedness)"} CheckWellformed$$_module.__default.less(a0#0: DatatypeType where $Is(a0#0, Tclass._module.aexp()), 
    a1#0: DatatypeType where $Is(a1#0, Tclass._module.aexp()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "less (well-formedness)"} CheckWellformed$$_module.__default.less(a0#0: DatatypeType, a1#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.less(a0#0, a1#0), Tclass._module.bexp());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (_module.aexp.N_q(a0#0))
        {
        }

        if (_module.aexp.N_q(a0#0) && _module.aexp.N_q(a1#0))
        {
            assert {:id "id136"} _module.aexp.N_q(a0#0);
            assert {:id "id137"} _module.aexp.N_q(a1#0);
            assume {:id "id138"} _module.__default.less(a0#0, a1#0)
               == #_module.bexp.Bc(_module.aexp.n(a0#0) < _module.aexp.n(a1#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.less(a0#0, a1#0), Tclass._module.bexp());
            return;
        }
        else
        {
            assume {:id "id139"} _module.__default.less(a0#0, a1#0) == #_module.bexp.Less(a0#0, a1#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.less(a0#0, a1#0), Tclass._module.bexp());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.bsimp
function _module.__default.bsimp($ly: LayerType, b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.bsimp
axiom 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    { _module.__default.bsimp($ly, b#0) } 
    _module.__default.bsimp#canCall(b#0)
         || (4 < $FunctionContextHeight && $Is(b#0, Tclass._module.bexp()))
       ==> $Is(_module.__default.bsimp($ly, b#0), Tclass._module.bexp()));
// definition axiom for _module.__default.bsimp (revealed)
axiom {:id "id140"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    { _module.__default.bsimp($LS($ly), b#0) } 
    _module.__default.bsimp#canCall(b#0)
         || (4 < $FunctionContextHeight && $Is(b#0, Tclass._module.bexp()))
       ==> (!_module.bexp.Bc_q(b#0)
           ==> (_module.bexp.Not_q(b#0)
               ==> (var b0#2 := _module.bexp._h3(b#0); 
                _module.__default.bsimp#canCall(b0#2)
                   && _module.__default.not#canCall(_module.__default.bsimp($ly, b0#2))))
             && (!_module.bexp.Not_q(b#0)
               ==> (_module.bexp.And_q(b#0)
                   ==> (var b1#1 := _module.bexp._h5(b#0); 
                    (var b0#3 := _module.bexp._h4(b#0); 
                      _module.__default.bsimp#canCall(b0#3)
                         && _module.__default.bsimp#canCall(b1#1)
                         && _module.__default.and#canCall(_module.__default.bsimp($ly, b0#3), _module.__default.bsimp($ly, b1#1)))))
                 && (!_module.bexp.And_q(b#0)
                   ==> (var a1#1 := _module.bexp._h7(b#0); 
                    (var a0#1 := _module.bexp._h6(b#0); 
                      _module.__default.asimp#canCall(a0#1)
                         && _module.__default.asimp#canCall(a1#1)
                         && _module.__default.less#canCall(_module.__default.asimp($LS($LZ), a0#1), _module.__default.asimp($LS($LZ), a1#1)))))))
         && _module.__default.bsimp($LS($ly), b#0)
           == (if _module.bexp.Bc_q(b#0)
             then (var v#0 := _module.bexp.v(b#0); b#0)
             else (if _module.bexp.Not_q(b#0)
               then (var b0#0 := _module.bexp._h3(b#0); 
                _module.__default.not(_module.__default.bsimp($ly, b0#0)))
               else (if _module.bexp.And_q(b#0)
                 then (var b1#0 := _module.bexp._h5(b#0); 
                  (var b0#1 := _module.bexp._h4(b#0); 
                    _module.__default.and(_module.__default.bsimp($ly, b0#1), _module.__default.bsimp($ly, b1#0))))
                 else (var a1#0 := _module.bexp._h7(b#0); 
                  (var a0#0 := _module.bexp._h6(b#0); 
                    _module.__default.less(_module.__default.asimp($LS($LZ), a0#0), _module.__default.asimp($LS($LZ), a1#0))))))));
// definition axiom for _module.__default.bsimp for all literals (revealed)
axiom {:id "id141"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.bsimp($LS($ly), Lit(b#0)) } 
    _module.__default.bsimp#canCall(Lit(b#0))
         || (4 < $FunctionContextHeight && $Is(b#0, Tclass._module.bexp()))
       ==> (!Lit(_module.bexp.Bc_q(Lit(b#0)))
           ==> (Lit(_module.bexp.Not_q(Lit(b#0)))
               ==> (var b0#6 := Lit(_module.bexp._h3(Lit(b#0))); 
                _module.__default.bsimp#canCall(b0#6)
                   && _module.__default.not#canCall(_module.__default.bsimp($LS($ly), b0#6))))
             && (!Lit(_module.bexp.Not_q(Lit(b#0)))
               ==> (Lit(_module.bexp.And_q(Lit(b#0)))
                   ==> (var b1#3 := Lit(_module.bexp._h5(Lit(b#0))); 
                    (var b0#7 := Lit(_module.bexp._h4(Lit(b#0))); 
                      _module.__default.bsimp#canCall(b0#7)
                         && _module.__default.bsimp#canCall(b1#3)
                         && _module.__default.and#canCall(_module.__default.bsimp($LS($ly), b0#7), _module.__default.bsimp($LS($ly), b1#3)))))
                 && (!Lit(_module.bexp.And_q(Lit(b#0)))
                   ==> (var a1#3 := Lit(_module.bexp._h7(Lit(b#0))); 
                    (var a0#3 := Lit(_module.bexp._h6(Lit(b#0))); 
                      _module.__default.asimp#canCall(a0#3)
                         && _module.__default.asimp#canCall(a1#3)
                         && _module.__default.less#canCall(_module.__default.asimp($LS($LZ), a0#3), _module.__default.asimp($LS($LZ), a1#3)))))))
         && _module.__default.bsimp($LS($ly), Lit(b#0))
           == (if _module.bexp.Bc_q(Lit(b#0))
             then (var v#2 := Lit(_module.bexp.v(Lit(b#0))); Lit(b#0))
             else (if _module.bexp.Not_q(Lit(b#0))
               then (var b0#4 := Lit(_module.bexp._h3(Lit(b#0))); 
                Lit(_module.__default.not(Lit(_module.__default.bsimp($LS($ly), b0#4)))))
               else (if _module.bexp.And_q(Lit(b#0))
                 then (var b1#2 := Lit(_module.bexp._h5(Lit(b#0))); 
                  (var b0#5 := Lit(_module.bexp._h4(Lit(b#0))); 
                    Lit(_module.__default.and(Lit(_module.__default.bsimp($LS($ly), b0#5)), 
                        Lit(_module.__default.bsimp($LS($ly), b1#2))))))
                 else (var a1#2 := Lit(_module.bexp._h7(Lit(b#0))); 
                  (var a0#2 := Lit(_module.bexp._h6(Lit(b#0))); 
                    Lit(_module.__default.less(Lit(_module.__default.asimp($LS($LZ), a0#2)), 
                        Lit(_module.__default.asimp($LS($LZ), a1#2))))))))));
}

function _module.__default.bsimp#canCall(b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.bsimp($LS($ly), b#0) } 
  _module.__default.bsimp($LS($ly), b#0) == _module.__default.bsimp($ly, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.bsimp(AsFuelBottom($ly), b#0) } 
  _module.__default.bsimp($ly, b#0) == _module.__default.bsimp($LZ, b#0));

function _module.__default.bsimp#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.bsimp
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.bsimp#requires($ly, b#0) } 
  $Is(b#0, Tclass._module.bexp())
     ==> _module.__default.bsimp#requires($ly, b#0) == true);

procedure {:verboseName "bsimp (well-formedness)"} CheckWellformed$$_module.__default.bsimp(b#0: DatatypeType where $Is(b#0, Tclass._module.bexp()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "bsimp (well-formedness)"} CheckWellformed$$_module.__default.bsimp(b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#4#0: DatatypeType;
  var _mcc#5#0: DatatypeType;
  var a1#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a0#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##a0#0: DatatypeType;
  var ##a#0: DatatypeType;
  var ##a1#0: DatatypeType;
  var ##a#1: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var b1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var b0#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##b0#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##b1#0: DatatypeType;
  var ##b#1: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b0#Z#1: DatatypeType;
  var let#4#0#0: DatatypeType;
  var ##b#2: DatatypeType;
  var ##b#3: DatatypeType;
  var _mcc#0#0: bool;
  var v#Z#0: bool;
  var let#5#0#0: bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.bsimp($LS($LZ), b#0), Tclass._module.bexp());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (b#0 == #_module.bexp.Bc(_mcc#0#0))
        {
            havoc v#Z#0;
            assume {:id "id158"} let#5#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, TBool);
            assume {:id "id159"} v#Z#0 == let#5#0#0;
            assume {:id "id160"} _module.__default.bsimp($LS($LZ), b#0) == b#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bsimp($LS($LZ), b#0), Tclass._module.bexp());
            return;
        }
        else if (b#0 == #_module.bexp.Not(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.bexp());
            havoc b0#Z#1;
            assume {:id "id154"} let#4#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, Tclass._module.bexp());
            assume {:id "id155"} b0#Z#1 == let#4#0#0;
            ##b#3 := b0#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#3, Tclass._module.bexp(), $Heap);
            assert {:id "id156"} DtRank(##b#3) < DtRank(b#0);
            assume _module.__default.bsimp#canCall(b0#Z#1);
            ##b#2 := _module.__default.bsimp($LS($LZ), b0#Z#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, Tclass._module.bexp(), $Heap);
            assume _module.__default.not#canCall(_module.__default.bsimp($LS($LZ), b0#Z#1));
            assume {:id "id157"} _module.__default.bsimp($LS($LZ), b#0)
               == _module.__default.not(_module.__default.bsimp($LS($LZ), b0#Z#1));
            assume _module.__default.bsimp#canCall(b0#Z#1)
               && _module.__default.not#canCall(_module.__default.bsimp($LS($LZ), b0#Z#1));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bsimp($LS($LZ), b#0), Tclass._module.bexp());
            return;
        }
        else if (b#0 == #_module.bexp.And(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.bexp());
            assume $Is(_mcc#3#0, Tclass._module.bexp());
            havoc b1#Z#0;
            assume {:id "id147"} let#2#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.bexp());
            assume {:id "id148"} b1#Z#0 == let#2#0#0;
            havoc b0#Z#0;
            assume {:id "id149"} let#3#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass._module.bexp());
            assume {:id "id150"} b0#Z#0 == let#3#0#0;
            ##b#0 := b0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.bexp(), $Heap);
            assert {:id "id151"} DtRank(##b#0) < DtRank(b#0);
            assume _module.__default.bsimp#canCall(b0#Z#0);
            ##b0#0 := _module.__default.bsimp($LS($LZ), b0#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b0#0, Tclass._module.bexp(), $Heap);
            ##b#1 := b1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, Tclass._module.bexp(), $Heap);
            assert {:id "id152"} DtRank(##b#1) < DtRank(b#0);
            assume _module.__default.bsimp#canCall(b1#Z#0);
            ##b1#0 := _module.__default.bsimp($LS($LZ), b1#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b1#0, Tclass._module.bexp(), $Heap);
            assume _module.__default.and#canCall(_module.__default.bsimp($LS($LZ), b0#Z#0), 
              _module.__default.bsimp($LS($LZ), b1#Z#0));
            assume {:id "id153"} _module.__default.bsimp($LS($LZ), b#0)
               == _module.__default.and(_module.__default.bsimp($LS($LZ), b0#Z#0), 
                _module.__default.bsimp($LS($LZ), b1#Z#0));
            assume _module.__default.bsimp#canCall(b0#Z#0)
               && _module.__default.bsimp#canCall(b1#Z#0)
               && _module.__default.and#canCall(_module.__default.bsimp($LS($LZ), b0#Z#0), 
                _module.__default.bsimp($LS($LZ), b1#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bsimp($LS($LZ), b#0), Tclass._module.bexp());
            return;
        }
        else if (b#0 == #_module.bexp.Less(_mcc#4#0, _mcc#5#0))
        {
            assume $Is(_mcc#4#0, Tclass._module.aexp());
            assume $Is(_mcc#5#0, Tclass._module.aexp());
            havoc a1#Z#0;
            assume {:id "id142"} let#0#0#0 == _mcc#5#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.aexp());
            assume {:id "id143"} a1#Z#0 == let#0#0#0;
            havoc a0#Z#0;
            assume {:id "id144"} let#1#0#0 == _mcc#4#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.aexp());
            assume {:id "id145"} a0#Z#0 == let#1#0#0;
            ##a#0 := a0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
            assume _module.__default.asimp#canCall(a0#Z#0);
            ##a0#0 := _module.__default.asimp($LS($LZ), a0#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a0#0, Tclass._module.aexp(), $Heap);
            ##a#1 := a1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, Tclass._module.aexp(), $Heap);
            assume _module.__default.asimp#canCall(a1#Z#0);
            ##a1#0 := _module.__default.asimp($LS($LZ), a1#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a1#0, Tclass._module.aexp(), $Heap);
            assume _module.__default.less#canCall(_module.__default.asimp($LS($LZ), a0#Z#0), 
              _module.__default.asimp($LS($LZ), a1#Z#0));
            assume {:id "id146"} _module.__default.bsimp($LS($LZ), b#0)
               == _module.__default.less(_module.__default.asimp($LS($LZ), a0#Z#0), 
                _module.__default.asimp($LS($LZ), a1#Z#0));
            assume _module.__default.asimp#canCall(a0#Z#0)
               && _module.__default.asimp#canCall(a1#Z#0)
               && _module.__default.less#canCall(_module.__default.asimp($LS($LZ), a0#Z#0), 
                _module.__default.asimp($LS($LZ), a1#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.bsimp($LS($LZ), b#0), Tclass._module.bexp());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "BsimpCorrect (well-formedness)"} CheckWellFormed$$_module.__default.BsimpCorrect(b#0: DatatypeType
       where $Is(b#0, Tclass._module.bexp())
         && $IsAlloc(b#0, Tclass._module.bexp(), $Heap)
         && $IsA#_module.bexp(b#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BsimpCorrect (call)"} Call$$_module.__default.BsimpCorrect(b#0: DatatypeType
       where $Is(b#0, Tclass._module.bexp())
         && $IsAlloc(b#0, Tclass._module.bexp(), $Heap)
         && $IsA#_module.bexp(b#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.bsimp#canCall(b#0)
     && _module.__default.bval#canCall(_module.__default.bsimp($LS($LZ), b#0), s#0)
     && _module.__default.bval#canCall(b#0, s#0);
  ensures {:id "id162"} _module.__default.bval($LS($LS($LZ)), _module.__default.bsimp($LS($LS($LZ)), b#0), s#0)
     == _module.__default.bval($LS($LS($LZ)), b#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BsimpCorrect (correctness)"} Impl$$_module.__default.BsimpCorrect(b#0: DatatypeType
       where $Is(b#0, Tclass._module.bexp())
         && $IsAlloc(b#0, Tclass._module.bexp(), $Heap)
         && $IsA#_module.bexp(b#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.bsimp#canCall(b#0)
     && _module.__default.bval#canCall(_module.__default.bsimp($LS($LZ), b#0), s#0)
     && _module.__default.bval#canCall(b#0, s#0);
  ensures {:id "id163"} _module.__default.bval($LS($LS($LZ)), _module.__default.bsimp($LS($LS($LZ)), b#0), s#0)
     == _module.__default.bval($LS($LS($LZ)), b#0, s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BsimpCorrect (correctness)"} Impl$$_module.__default.BsimpCorrect(b#0: DatatypeType, s#0: HandleType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#4#0_0: DatatypeType;
  var _mcc#5#0_0: DatatypeType;
  var a1#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var a0#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var a##0_0: DatatypeType;
  var s##0_0: HandleType;
  var a##0_1: DatatypeType;
  var s##0_1: HandleType;
  var _mcc#2#1_0: DatatypeType;
  var _mcc#3#1_0: DatatypeType;
  var b1#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var b0#1_0: DatatypeType;
  var let#1_1#0#0: DatatypeType;
  var b##1_0: DatatypeType;
  var s##1_0: HandleType;
  var b##1_1: DatatypeType;
  var s##1_1: HandleType;
  var _mcc#1#2_0: DatatypeType;
  var b0#2_0: DatatypeType;
  var let#2_0#0#0: DatatypeType;
  var b##2_0: DatatypeType;
  var s##2_0: HandleType;
  var _mcc#0#3_0: bool;

    // AddMethodImpl: BsimpCorrect, Impl$$_module.__default.BsimpCorrect
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.bexp(b#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#b0#0: DatatypeType :: 
      { _module.__default.bsimp($LS($LZ), $ih#b0#0) } 
      $Is($ih#b0#0, Tclass._module.bexp())
           && Lit(true)
           && DtRank($ih#b0#0) < DtRank(b#0)
         ==> _module.__default.bval($LS($LZ), _module.__default.bsimp($LS($LZ), $ih#b0#0), s#0)
           == _module.__default.bval($LS($LZ), $ih#b0#0, s#0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#4#0_0, _mcc#5#0_0;
    havoc _mcc#2#1_0, _mcc#3#1_0;
    havoc _mcc#1#2_0;
    havoc _mcc#0#3_0;
    if (b#0 == #_module.bexp.Bc(_mcc#0#3_0))
    {
    }
    else if (b#0 == #_module.bexp.Not(_mcc#1#2_0))
    {
        assume $Is(_mcc#1#2_0, Tclass._module.bexp());
        havoc b0#2_0;
        assume $Is(b0#2_0, Tclass._module.bexp())
           && $IsAlloc(b0#2_0, Tclass._module.bexp(), $Heap);
        assume {:id "id178"} let#2_0#0#0 == _mcc#1#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_0#0#0, Tclass._module.bexp());
        assume {:id "id179"} b0#2_0 == let#2_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(190,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##2_0 := b0#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##2_0 := s#0;
        assert {:id "id180"} DtRank(b##2_0) < DtRank(b#0);
        call {:id "id181"} Call$$_module.__default.BsimpCorrect(b##2_0, s##2_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (b#0 == #_module.bexp.And(_mcc#2#1_0, _mcc#3#1_0))
    {
        assume $Is(_mcc#2#1_0, Tclass._module.bexp());
        assume $Is(_mcc#3#1_0, Tclass._module.bexp());
        havoc b1#1_0;
        assume $Is(b1#1_0, Tclass._module.bexp())
           && $IsAlloc(b1#1_0, Tclass._module.bexp(), $Heap);
        assume {:id "id170"} let#1_0#0#0 == _mcc#3#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass._module.bexp());
        assume {:id "id171"} b1#1_0 == let#1_0#0#0;
        havoc b0#1_0;
        assume $Is(b0#1_0, Tclass._module.bexp())
           && $IsAlloc(b0#1_0, Tclass._module.bexp(), $Heap);
        assume {:id "id172"} let#1_1#0#0 == _mcc#2#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, Tclass._module.bexp());
        assume {:id "id173"} b0#1_0 == let#1_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(192,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##1_0 := b0#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s#0;
        assert {:id "id174"} DtRank(b##1_0) < DtRank(b#0);
        call {:id "id175"} Call$$_module.__default.BsimpCorrect(b##1_0, s##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(192,38)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##1_1 := b1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_1 := s#0;
        assert {:id "id176"} DtRank(b##1_1) < DtRank(b#0);
        call {:id "id177"} Call$$_module.__default.BsimpCorrect(b##1_1, s##1_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (b#0 == #_module.bexp.Less(_mcc#4#0_0, _mcc#5#0_0))
    {
        assume $Is(_mcc#4#0_0, Tclass._module.aexp());
        assume $Is(_mcc#5#0_0, Tclass._module.aexp());
        havoc a1#0_0;
        assume $Is(a1#0_0, Tclass._module.aexp())
           && $IsAlloc(a1#0_0, Tclass._module.aexp(), $Heap);
        assume {:id "id164"} let#0_0#0#0 == _mcc#5#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.aexp());
        assume {:id "id165"} a1#0_0 == let#0_0#0#0;
        havoc a0#0_0;
        assume $Is(a0#0_0, Tclass._module.aexp())
           && $IsAlloc(a0#0_0, Tclass._module.aexp(), $Heap);
        assume {:id "id166"} let#0_1#0#0 == _mcc#4#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.aexp());
        assume {:id "id167"} a0#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(194,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a0#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id168"} Call$$_module.__default.AsimpCorrect(a##0_0, s##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(194,38)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_1 := a1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_1 := s#0;
        call {:id "id169"} Call$$_module.__default.AsimpCorrect(a##0_1, s##0_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.exec1
function _module.__default.exec1(i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.exec1
axiom 2 <= $FunctionContextHeight
   ==> (forall i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    { _module.__default.exec1(i#0, s#0, stk#0) } 
    _module.__default.exec1#canCall(i#0, s#0, stk#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(i#0, Tclass._module.instr())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> $Is(_module.__default.exec1(i#0, s#0, stk#0), Tclass._module.List(TInt)));
// definition axiom for _module.__default.exec1 (revealed)
axiom {:id "id182"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    { _module.__default.exec1(i#0, s#0, stk#0), $IsGoodHeap($Heap) } 
    _module.__default.exec1#canCall(i#0, s#0, stk#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(i#0, Tclass._module.instr())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> _module.__default.exec1(i#0, s#0, stk#0)
         == (if _module.instr.LOADI_q(i#0)
           then (var n#0 := _module.instr._h12(i#0); #_module.List.Cons($Box(n#0), stk#0))
           else (if _module.instr.LOAD_q(i#0)
             then (var x#0 := _module.instr._h13(i#0); 
              #_module.List.Cons(Apply1(TSeq(TChar), TInt, $Heap, s#0, $Box(x#0)), stk#0))
             else (if _module.List.Cons_q(stk#0) && _module.List.Cons_q(_module.List.tail(stk#0))
               then (var a1#0, a0#0, tail#0 := $Unbox(_module.List.head(stk#0)): int, 
                  $Unbox(_module.List.head(_module.List.tail(stk#0))): int, 
                  _module.List.tail(_module.List.tail(stk#0)); 
                #_module.List.Cons($Box(a0#0 + a1#0), tail#0))
               else #_module.List.Nil()))));
// definition axiom for _module.__default.exec1 for decreasing-related literals (revealed)
axiom {:id "id183"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    {:weight 3} { _module.__default.exec1(Lit(i#0), s#0, Lit(stk#0)), $IsGoodHeap($Heap) } 
    _module.__default.exec1#canCall(Lit(i#0), s#0, Lit(stk#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(i#0, Tclass._module.instr())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> _module.__default.exec1(Lit(i#0), s#0, Lit(stk#0))
         == (if _module.instr.LOADI_q(Lit(i#0))
           then (var n#2 := LitInt(_module.instr._h12(Lit(i#0))); 
            Lit(#_module.List.Cons($Box(n#2), Lit(stk#0))))
           else (if _module.instr.LOAD_q(Lit(i#0))
             then (var x#2 := Lit(_module.instr._h13(Lit(i#0))); 
              #_module.List.Cons(Apply1(TSeq(TChar), TInt, $Heap, s#0, $Box(x#2)), Lit(stk#0)))
             else (if _module.List.Cons_q(Lit(stk#0))
                 && _module.List.Cons_q(Lit(_module.List.tail(Lit(stk#0))))
               then (var a1#2, a0#2, tail#2 := $Unbox(_module.List.head(Lit(stk#0))): int, 
                  $Unbox(_module.List.head(_module.List.tail(Lit(stk#0)))): int, 
                  _module.List.tail(_module.List.tail(Lit(stk#0))); 
                #_module.List.Cons($Box(a0#2 + a1#2), tail#2))
               else #_module.List.Nil()))));
// definition axiom for _module.__default.exec1 for all literals (revealed)
axiom {:id "id184"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    {:weight 3} { _module.__default.exec1(Lit(i#0), Lit(s#0), Lit(stk#0)), $IsGoodHeap($Heap) } 
    _module.__default.exec1#canCall(Lit(i#0), Lit(s#0), Lit(stk#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(i#0, Tclass._module.instr())
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> _module.__default.exec1(Lit(i#0), Lit(s#0), Lit(stk#0))
         == (if _module.instr.LOADI_q(Lit(i#0))
           then (var n#4 := LitInt(_module.instr._h12(Lit(i#0))); 
            Lit(#_module.List.Cons($Box(n#4), Lit(stk#0))))
           else (if _module.instr.LOAD_q(Lit(i#0))
             then (var x#4 := Lit(_module.instr._h13(Lit(i#0))); 
              #_module.List.Cons(Apply1(TSeq(TChar), TInt, $Heap, Lit(s#0), $Box(x#4)), Lit(stk#0)))
             else (if _module.List.Cons_q(Lit(stk#0))
                 && _module.List.Cons_q(Lit(_module.List.tail(Lit(stk#0))))
               then (var a1#4, a0#4, tail#4 := $Unbox(_module.List.head(Lit(stk#0))): int, 
                  $Unbox(_module.List.head(_module.List.tail(Lit(stk#0)))): int, 
                  _module.List.tail(_module.List.tail(Lit(stk#0))); 
                #_module.List.Cons($Box(a0#4 + a1#4), tail#4))
               else #_module.List.Nil()))));
}

function _module.__default.exec1#canCall(i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType) : bool;

function Tclass._module.instr() : Ty
uses {
// Tclass._module.instr Tag
axiom Tag(Tclass._module.instr()) == Tagclass._module.instr
   && TagFamily(Tclass._module.instr()) == tytagFamily$instr;
}

const unique Tagclass._module.instr: TyTag;

// Box/unbox axiom for Tclass._module.instr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.instr()) } 
  $IsBox(bx, Tclass._module.instr())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.instr()));

function _module.__default.exec1#requires(DatatypeType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.exec1
axiom (forall $Heap: Heap, i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
  { _module.__default.exec1#requires(i#0, s#0, stk#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(i#0, Tclass._module.instr())
       && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
       && $Is(stk#0, Tclass._module.List(TInt))
     ==> _module.__default.exec1#requires(i#0, s#0, stk#0) == true);

procedure {:verboseName "exec1 (well-formedness)"} CheckWellformed$$_module.__default.exec1(i#0: DatatypeType where $Is(i#0, Tclass._module.instr()), 
    s#0: HandleType where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)), 
    stk#0: DatatypeType where $Is(stk#0, Tclass._module.List(TInt)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "exec1 (well-formedness)"} CheckWellformed$$_module.__default.exec1(i#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var a1#Z#0: int;
  var a0#Z#0: int;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: Seq;
  var x#Z#0: Seq;
  var let#1#0#0: Seq;
  var _mcc#0#0: int;
  var n#Z#0: int;
  var let#2#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.exec1(i#0, s#0, stk#0), Tclass._module.List(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (i#0 == #_module.instr.LOADI(_mcc#0#0))
        {
            havoc n#Z#0;
            assume {:id "id195"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id196"} n#Z#0 == let#2#0#0;
            assume {:id "id197"} _module.__default.exec1(i#0, s#0, stk#0)
               == #_module.List.Cons($Box(n#Z#0), stk#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.exec1(i#0, s#0, stk#0), Tclass._module.List(TInt));
            return;
        }
        else if (i#0 == #_module.instr.LOAD(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            havoc x#Z#0;
            assume {:id "id192"} let#1#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TSeq(TChar));
            assume {:id "id193"} x#Z#0 == let#1#0#0;
            assume {:id "id194"} _module.__default.exec1(i#0, s#0, stk#0)
               == #_module.List.Cons(Apply1(TSeq(TChar), TInt, $Heap, s#0, $Box(x#Z#0)), stk#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.exec1(i#0, s#0, stk#0), Tclass._module.List(TInt));
            return;
        }
        else if (i#0 == #_module.instr.ADD())
        {
            if (_module.List.Cons_q(stk#0))
            {
                assert {:id "id185"} _module.List.Cons_q(stk#0);
            }

            if (_module.List.Cons_q(stk#0) && _module.List.Cons_q(_module.List.tail(stk#0)))
            {
                havoc a1#Z#0;
                havoc a0#Z#0;
                havoc tail#Z#0;
                assume {:id "id186"} let#0#0#0 == stk#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0#0#0, Tclass._module.List(TInt));
                assert {:id "id187"} _module.List.Cons_q(let#0#0#0);
                assert {:id "id188"} _module.List.Cons_q(_module.List.tail(let#0#0#0));
                assume {:id "id189"} #_module.List.Cons($Box(a1#Z#0), #_module.List.Cons($Box(a0#Z#0), tail#Z#0))
                   == let#0#0#0;
                assume {:id "id190"} _module.__default.exec1(i#0, s#0, stk#0)
                   == #_module.List.Cons($Box(a0#Z#0 + a1#Z#0), tail#Z#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.exec1(i#0, s#0, stk#0), Tclass._module.List(TInt));
                return;
            }
            else
            {
                assume {:id "id191"} _module.__default.exec1(i#0, s#0, stk#0) == Lit(#_module.List.Nil());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.exec1(i#0, s#0, stk#0), Tclass._module.List(TInt));
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.exec
function _module.__default.exec($ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.exec
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    { _module.__default.exec($ly, ii#0, s#0, stk#0) } 
    _module.__default.exec#canCall(ii#0, s#0, stk#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(ii#0, Tclass._module.List(Tclass._module.instr()))
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> $Is(_module.__default.exec($ly, ii#0, s#0, stk#0), Tclass._module.List(TInt)));
// definition axiom for _module.__default.exec (revealed)
axiom {:id "id198"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    { _module.__default.exec($LS($ly), ii#0, s#0, stk#0) } 
    _module.__default.exec#canCall(ii#0, s#0, stk#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(ii#0, Tclass._module.List(Tclass._module.instr()))
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> (!_module.List.Nil_q(ii#0)
           ==> (var rest#1 := _module.List.tail(ii#0); 
            (var i#1 := $Unbox(_module.List.head(ii#0)): DatatypeType; 
              _module.__default.exec1#canCall(i#1, s#0, stk#0)
                 && _module.__default.exec#canCall(rest#1, s#0, _module.__default.exec1(i#1, s#0, stk#0)))))
         && _module.__default.exec($LS($ly), ii#0, s#0, stk#0)
           == (if _module.List.Nil_q(ii#0)
             then stk#0
             else (var rest#0 := _module.List.tail(ii#0); 
              (var i#0 := $Unbox(_module.List.head(ii#0)): DatatypeType; 
                _module.__default.exec($ly, rest#0, s#0, _module.__default.exec1(i#0, s#0, stk#0))))));
// definition axiom for _module.__default.exec for decreasing-related literals (revealed)
axiom {:id "id199"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    {:weight 3} { _module.__default.exec($LS($ly), Lit(ii#0), s#0, Lit(stk#0)) } 
    _module.__default.exec#canCall(Lit(ii#0), s#0, Lit(stk#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(ii#0, Tclass._module.List(Tclass._module.instr()))
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> (!Lit(_module.List.Nil_q(Lit(ii#0)))
           ==> (var rest#3 := Lit(_module.List.tail(Lit(ii#0))); 
            (var i#3 := Lit($Unbox(_module.List.head(Lit(ii#0))): DatatypeType); 
              _module.__default.exec1#canCall(i#3, s#0, Lit(stk#0))
                 && _module.__default.exec#canCall(rest#3, s#0, _module.__default.exec1(i#3, s#0, Lit(stk#0))))))
         && _module.__default.exec($LS($ly), Lit(ii#0), s#0, Lit(stk#0))
           == (if _module.List.Nil_q(Lit(ii#0))
             then stk#0
             else (var rest#2 := Lit(_module.List.tail(Lit(ii#0))); 
              (var i#2 := Lit($Unbox(_module.List.head(Lit(ii#0))): DatatypeType); 
                _module.__default.exec($LS($ly), rest#2, s#0, _module.__default.exec1(i#2, s#0, Lit(stk#0)))))));
// definition axiom for _module.__default.exec for all literals (revealed)
axiom {:id "id200"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
    {:weight 3} { _module.__default.exec($LS($ly), Lit(ii#0), Lit(s#0), Lit(stk#0)) } 
    _module.__default.exec#canCall(Lit(ii#0), Lit(s#0), Lit(stk#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(ii#0, Tclass._module.List(Tclass._module.instr()))
           && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
           && $Is(stk#0, Tclass._module.List(TInt)))
       ==> (!Lit(_module.List.Nil_q(Lit(ii#0)))
           ==> (var rest#5 := Lit(_module.List.tail(Lit(ii#0))); 
            (var i#5 := Lit($Unbox(_module.List.head(Lit(ii#0))): DatatypeType); 
              _module.__default.exec1#canCall(i#5, Lit(s#0), Lit(stk#0))
                 && _module.__default.exec#canCall(rest#5, Lit(s#0), _module.__default.exec1(i#5, Lit(s#0), Lit(stk#0))))))
         && _module.__default.exec($LS($ly), Lit(ii#0), Lit(s#0), Lit(stk#0))
           == (if _module.List.Nil_q(Lit(ii#0))
             then stk#0
             else (var rest#4 := Lit(_module.List.tail(Lit(ii#0))); 
              (var i#4 := Lit($Unbox(_module.List.head(Lit(ii#0))): DatatypeType); 
                Lit(_module.__default.exec($LS($ly), 
                    rest#4, 
                    Lit(s#0), 
                    Lit(_module.__default.exec1(i#4, Lit(s#0), Lit(stk#0)))))))));
}

function _module.__default.exec#canCall(ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
  { _module.__default.exec($LS($ly), ii#0, s#0, stk#0) } 
  _module.__default.exec($LS($ly), ii#0, s#0, stk#0)
     == _module.__default.exec($ly, ii#0, s#0, stk#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
  { _module.__default.exec(AsFuelBottom($ly), ii#0, s#0, stk#0) } 
  _module.__default.exec($ly, ii#0, s#0, stk#0)
     == _module.__default.exec($LZ, ii#0, s#0, stk#0));

function _module.__default.exec#requires(LayerType, DatatypeType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.exec
axiom (forall $ly: LayerType, ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType :: 
  { _module.__default.exec#requires($ly, ii#0, s#0, stk#0) } 
  $Is(ii#0, Tclass._module.List(Tclass._module.instr()))
       && $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
       && $Is(stk#0, Tclass._module.List(TInt))
     ==> _module.__default.exec#requires($ly, ii#0, s#0, stk#0) == true);

procedure {:verboseName "exec (well-formedness)"} CheckWellformed$$_module.__default.exec(ii#0: DatatypeType where $Is(ii#0, Tclass._module.List(Tclass._module.instr())), 
    s#0: HandleType where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt)), 
    stk#0: DatatypeType where $Is(stk#0, Tclass._module.List(TInt)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "exec (well-formedness)"} CheckWellformed$$_module.__default.exec(ii#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var i#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##ii#0: DatatypeType;
  var ##s#0: HandleType;
  var ##stk#0: DatatypeType;
  var ##i#0: DatatypeType;
  var ##s#1: HandleType;
  var ##stk#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.exec($LS($LZ), ii#0, s#0, stk#0), Tclass._module.List(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (ii#0 == #_module.List.Nil())
        {
            assume {:id "id207"} _module.__default.exec($LS($LZ), ii#0, s#0, stk#0) == stk#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.exec($LS($LZ), ii#0, s#0, stk#0), Tclass._module.List(TInt));
            return;
        }
        else if (ii#0 == #_module.List.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.instr());
            assume $Is(_mcc#1#0, Tclass._module.List(Tclass._module.instr()));
            havoc rest#Z#0;
            assume {:id "id201"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(Tclass._module.instr()));
            assume {:id "id202"} rest#Z#0 == let#0#0#0;
            havoc i#Z#0;
            assume {:id "id203"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.instr());
            assume {:id "id204"} i#Z#0 == let#1#0#0;
            ##ii#0 := rest#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##i#0 := i#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##i#0, Tclass._module.instr(), $Heap);
            ##s#1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#1 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec1#canCall(i#Z#0, s#0, stk#0);
            ##stk#0 := _module.__default.exec1(i#Z#0, s#0, stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0, Tclass._module.List(TInt), $Heap);
            assert {:id "id205"} DtRank(##ii#0) < DtRank(ii#0)
               || (DtRank(##ii#0) == DtRank(ii#0) && DtRank(##stk#0) < DtRank(stk#0));
            assume _module.__default.exec#canCall(rest#Z#0, s#0, _module.__default.exec1(i#Z#0, s#0, stk#0));
            assume {:id "id206"} _module.__default.exec($LS($LZ), ii#0, s#0, stk#0)
               == _module.__default.exec($LS($LZ), rest#Z#0, s#0, _module.__default.exec1(i#Z#0, s#0, stk#0));
            assume _module.__default.exec1#canCall(i#Z#0, s#0, stk#0)
               && _module.__default.exec#canCall(rest#Z#0, s#0, _module.__default.exec1(i#Z#0, s#0, stk#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.exec($LS($LZ), ii#0, s#0, stk#0), Tclass._module.List(TInt));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.comp
function _module.__default.comp($ly: LayerType, a#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.comp
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.comp($ly, a#0) } 
    _module.__default.comp#canCall(a#0)
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> $Is(_module.__default.comp($ly, a#0), Tclass._module.List(Tclass._module.instr())));
// definition axiom for _module.__default.comp (revealed)
axiom {:id "id208"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.comp($LS($ly), a#0) } 
    _module.__default.comp#canCall(a#0)
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> (!_module.aexp.N_q(a#0)
           ==> 
          !_module.aexp.V_q(a#0)
           ==> (var a1#1 := _module.aexp._h2(a#0); 
            (var a0#1 := _module.aexp._h1(a#0); 
              _module.__default.comp#canCall(a0#1)
                 && _module.__default.comp#canCall(a1#1)
                 && _module.__default.append#canCall(Tclass._module.instr(), 
                  _module.__default.comp($ly, a0#1), 
                  _module.__default.comp($ly, a1#1))
                 && _module.__default.append#canCall(Tclass._module.instr(), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.comp($ly, a0#1), 
                    _module.__default.comp($ly, a1#1)), 
                  Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))))))
         && _module.__default.comp($LS($ly), a#0)
           == (if _module.aexp.N_q(a#0)
             then (var n#0 := _module.aexp.n(a#0); 
              #_module.List.Cons($Box(#_module.instr.LOADI(n#0)), Lit(#_module.List.Nil())))
             else (if _module.aexp.V_q(a#0)
               then (var x#0 := _module.aexp._h0(a#0); 
                #_module.List.Cons($Box(#_module.instr.LOAD(x#0)), Lit(#_module.List.Nil())))
               else (var a1#0 := _module.aexp._h2(a#0); 
                (var a0#0 := _module.aexp._h1(a#0); 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.append(Tclass._module.instr(), 
                      $LS($LZ), 
                      _module.__default.comp($ly, a0#0), 
                      _module.__default.comp($ly, a1#0)), 
                    Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))))))));
// definition axiom for _module.__default.comp for all literals (revealed)
axiom {:id "id209"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    {:weight 3} { _module.__default.comp($LS($ly), Lit(a#0)) } 
    _module.__default.comp#canCall(Lit(a#0))
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.aexp()))
       ==> (!Lit(_module.aexp.N_q(Lit(a#0)))
           ==> 
          !Lit(_module.aexp.V_q(Lit(a#0)))
           ==> (var a1#3 := Lit(_module.aexp._h2(Lit(a#0))); 
            (var a0#3 := Lit(_module.aexp._h1(Lit(a#0))); 
              _module.__default.comp#canCall(a0#3)
                 && _module.__default.comp#canCall(a1#3)
                 && _module.__default.append#canCall(Tclass._module.instr(), 
                  _module.__default.comp($LS($ly), a0#3), 
                  _module.__default.comp($LS($ly), a1#3))
                 && _module.__default.append#canCall(Tclass._module.instr(), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.comp($LS($ly), a0#3), 
                    _module.__default.comp($LS($ly), a1#3)), 
                  Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))))))
         && _module.__default.comp($LS($ly), Lit(a#0))
           == (if _module.aexp.N_q(Lit(a#0))
             then (var n#2 := LitInt(_module.aexp.n(Lit(a#0))); 
              Lit(#_module.List.Cons($Box(Lit(#_module.instr.LOADI(n#2))), Lit(#_module.List.Nil()))))
             else (if _module.aexp.V_q(Lit(a#0))
               then (var x#2 := Lit(_module.aexp._h0(Lit(a#0))); 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.LOAD(x#2))), Lit(#_module.List.Nil()))))
               else (var a1#2 := Lit(_module.aexp._h2(Lit(a#0))); 
                (var a0#2 := Lit(_module.aexp._h1(Lit(a#0))); 
                  Lit(_module.__default.append(Tclass._module.instr(), 
                      $LS($LZ), 
                      Lit(_module.__default.append(Tclass._module.instr(), 
                          $LS($LZ), 
                          Lit(_module.__default.comp($LS($ly), a0#2)), 
                          Lit(_module.__default.comp($LS($ly), a1#2)))), 
                      Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))))))))));
}

function _module.__default.comp#canCall(a#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.comp($LS($ly), a#0) } 
  _module.__default.comp($LS($ly), a#0) == _module.__default.comp($ly, a#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.comp(AsFuelBottom($ly), a#0) } 
  _module.__default.comp($ly, a#0) == _module.__default.comp($LZ, a#0));

function _module.__default.comp#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.comp
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.comp#requires($ly, a#0) } 
  $Is(a#0, Tclass._module.aexp())
     ==> _module.__default.comp#requires($ly, a#0) == true);

procedure {:verboseName "comp (well-formedness)"} CheckWellformed$$_module.__default.comp(a#0: DatatypeType where $Is(a#0, Tclass._module.aexp()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "comp (well-formedness)"} CheckWellformed$$_module.__default.comp(a#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var a1#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a0#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##xs#1: DatatypeType;
  var ##a#0: DatatypeType;
  var ##ys#0: DatatypeType;
  var ##a#1: DatatypeType;
  var ##ys#1: DatatypeType;
  var _mcc#1#0: Seq;
  var x#Z#0: Seq;
  var let#2#0#0: Seq;
  var _mcc#0#0: int;
  var n#Z#0: int;
  var let#3#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.comp($LS($LZ), a#0), 
          Tclass._module.List(Tclass._module.instr()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.aexp.N(_mcc#0#0))
        {
            havoc n#Z#0;
            assume {:id "id220"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TInt);
            assume {:id "id221"} n#Z#0 == let#3#0#0;
            assume {:id "id222"} _module.__default.comp($LS($LZ), a#0)
               == #_module.List.Cons($Box(#_module.instr.LOADI(n#Z#0)), Lit(#_module.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.comp($LS($LZ), a#0), 
              Tclass._module.List(Tclass._module.instr()));
            return;
        }
        else if (a#0 == #_module.aexp.V(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            havoc x#Z#0;
            assume {:id "id217"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TSeq(TChar));
            assume {:id "id218"} x#Z#0 == let#2#0#0;
            assume {:id "id219"} _module.__default.comp($LS($LZ), a#0)
               == #_module.List.Cons($Box(#_module.instr.LOAD(x#Z#0)), Lit(#_module.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.comp($LS($LZ), a#0), 
              Tclass._module.List(Tclass._module.instr()));
            return;
        }
        else if (a#0 == #_module.aexp.Plus(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.aexp());
            assume $Is(_mcc#3#0, Tclass._module.aexp());
            havoc a1#Z#0;
            assume {:id "id210"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.aexp());
            assume {:id "id211"} a1#Z#0 == let#0#0#0;
            havoc a0#Z#0;
            assume {:id "id212"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.aexp());
            assume {:id "id213"} a0#Z#0 == let#1#0#0;
            ##a#0 := a0#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.aexp(), $Heap);
            assert {:id "id214"} DtRank(##a#0) < DtRank(a#0);
            assume _module.__default.comp#canCall(a0#Z#0);
            ##xs#1 := _module.__default.comp($LS($LZ), a0#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##a#1 := a1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, Tclass._module.aexp(), $Heap);
            assert {:id "id215"} DtRank(##a#1) < DtRank(a#0);
            assume _module.__default.comp#canCall(a1#Z#0);
            ##ys#0 := _module.__default.comp($LS($LZ), a1#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.comp($LS($LZ), a0#Z#0), 
              _module.__default.comp($LS($LZ), a1#Z#0));
            ##xs#0 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.comp($LS($LZ), a0#Z#0), 
              _module.__default.comp($LS($LZ), a1#Z#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##ys#1 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#Z#0), 
                _module.__default.comp($LS($LZ), a1#Z#0)), 
              Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            assume {:id "id216"} _module.__default.comp($LS($LZ), a#0)
               == _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#Z#0), 
                  _module.__default.comp($LS($LZ), a1#Z#0)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            assume _module.__default.comp#canCall(a0#Z#0)
               && _module.__default.comp#canCall(a1#Z#0)
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.comp($LS($LZ), a0#Z#0), 
                _module.__default.comp($LS($LZ), a1#Z#0))
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#Z#0), 
                  _module.__default.comp($LS($LZ), a1#Z#0)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.comp($LS($LZ), a#0), 
              Tclass._module.List(Tclass._module.instr()));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "CorrectCompilation (well-formedness)"} CheckWellFormed$$_module.__default.CorrectCompilation(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap), 
    stk#0: DatatypeType
       where $Is(stk#0, Tclass._module.List(TInt))
         && $IsAlloc(stk#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(stk#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CorrectCompilation (call)"} Call$$_module.__default.CorrectCompilation(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap), 
    stk#0: DatatypeType
       where $Is(stk#0, Tclass._module.List(TInt))
         && $IsAlloc(stk#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(stk#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a#0), s#0, stk#0))
     && 
    _module.__default.comp#canCall(a#0)
     && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a#0), s#0, stk#0)
     && _module.__default.aval#canCall(a#0, s#0);
  ensures {:id "id224"} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), _module.__default.comp($LS($LS($LZ)), a#0), s#0, stk#0), 
    #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a#0, s#0)), stk#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CorrectCompilation (correctness)"} Impl$$_module.__default.CorrectCompilation(a#0: DatatypeType
       where $Is(a#0, Tclass._module.aexp())
         && $IsAlloc(a#0, Tclass._module.aexp(), $Heap)
         && $IsA#_module.aexp(a#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap), 
    stk#0: DatatypeType
       where $Is(stk#0, Tclass._module.List(TInt))
         && $IsAlloc(stk#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(stk#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a#0), s#0, stk#0))
     && 
    _module.__default.comp#canCall(a#0)
     && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a#0), s#0, stk#0)
     && _module.__default.aval#canCall(a#0, s#0);
  ensures {:id "id225"} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), _module.__default.comp($LS($LS($LZ)), a#0), s#0, stk#0), 
    #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a#0, s#0)), stk#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CorrectCompilation (correctness)"} Impl$$_module.__default.CorrectCompilation(a#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0_0: DatatypeType;
  var _mcc#3#0_0: DatatypeType;
  var a1#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var a0#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var ##a#0_0_0_0: DatatypeType;
  var ##s#0_0_0_0: HandleType;
  var ##a#0_0_0_1: DatatypeType;
  var ##s#0_0_0_1: HandleType;
  var ##a#0_0_0_2: DatatypeType;
  var ##s#0_0_0_2: HandleType;
  var ##ii#0_0_1_0: DatatypeType;
  var ##s#0_0_1_0: HandleType;
  var ##stk#0_0_1_0: DatatypeType;
  var ##a#0_0_1_0: DatatypeType;
  var ##s#0_0_1_1: HandleType;
  var ##a#0_0_1_1: DatatypeType;
  var ##s#0_0_1_2: HandleType;
  var ##a#0_0_1_2: DatatypeType;
  var ##s#0_0_1_3: HandleType;
  var ##a#0_0_1_3: DatatypeType;
  var ##s#0_0_1_4: HandleType;
  var ##ii#0_0_2_0: DatatypeType;
  var ##s#0_0_2_0: HandleType;
  var ##stk#0_0_2_0: DatatypeType;
  var ##ii#0_0_2_1: DatatypeType;
  var ##a#0_0_2_0: DatatypeType;
  var ##s#0_0_2_1: HandleType;
  var ##stk#0_0_2_1: DatatypeType;
  var ##a#0_0_2_1: DatatypeType;
  var ##s#0_0_2_2: HandleType;
  var a##0_0_2_0: DatatypeType;
  var s##0_0_2_0: HandleType;
  var stk##0_0_2_0: DatatypeType;
  var ##a#0_0_2_2: DatatypeType;
  var ##s#0_0_2_3: HandleType;
  var ##ii#0_0_2_2: DatatypeType;
  var ##s#0_0_2_4: HandleType;
  var ##stk#0_0_2_2: DatatypeType;
  var ##a#0_0_2_3: DatatypeType;
  var ##s#0_0_2_5: HandleType;
  var ##a#0_0_2_4: DatatypeType;
  var ##s#0_0_2_6: HandleType;
  var ##ii#0_0_3_0: DatatypeType;
  var ##s#0_0_3_0: HandleType;
  var ##stk#0_0_3_0: DatatypeType;
  var ##ii#0_0_3_1: DatatypeType;
  var ##a#0_0_3_0: DatatypeType;
  var ##s#0_0_3_1: HandleType;
  var ##stk#0_0_3_1: DatatypeType;
  var ##ii#0_0_3_2: DatatypeType;
  var ##a#0_0_3_1: DatatypeType;
  var ##s#0_0_3_2: HandleType;
  var ##stk#0_0_3_2: DatatypeType;
  var a##0_0_3_0: DatatypeType;
  var s##0_0_3_0: HandleType;
  var stk##0_0_3_0: DatatypeType;
  var ##ii#0_0_3_3: DatatypeType;
  var ##s#0_0_3_3: HandleType;
  var ##stk#0_0_3_3: DatatypeType;
  var ##ii#0_0_3_4: DatatypeType;
  var ##a#0_0_3_2: DatatypeType;
  var ##s#0_0_3_4: HandleType;
  var ##stk#0_0_3_4: DatatypeType;
  var ##a#0_0_3_3: DatatypeType;
  var ##s#0_0_3_5: HandleType;
  var ##ii#0_0_4_0: DatatypeType;
  var ##s#0_0_4_0: HandleType;
  var ##stk#0_0_4_0: DatatypeType;
  var ##ii#0_0_4_1: DatatypeType;
  var ##xs#0_0_4_0: DatatypeType;
  var ##a#0_0_4_0: DatatypeType;
  var ##ys#0_0_4_0: DatatypeType;
  var ##a#0_0_4_1: DatatypeType;
  var ##s#0_0_4_1: HandleType;
  var ##stk#0_0_4_1: DatatypeType;
  var ii0##0_0_4_0: DatatypeType;
  var ##a#0_0_4_2: DatatypeType;
  var ii1##0_0_4_0: DatatypeType;
  var ##a#0_0_4_3: DatatypeType;
  var s##0_0_4_0: HandleType;
  var stk##0_0_4_0: DatatypeType;
  var ##ii#0_0_4_2: DatatypeType;
  var ##s#0_0_4_2: HandleType;
  var ##stk#0_0_4_2: DatatypeType;
  var ##ii#0_0_4_3: DatatypeType;
  var ##a#0_0_4_4: DatatypeType;
  var ##s#0_0_4_3: HandleType;
  var ##stk#0_0_4_3: DatatypeType;
  var ##ii#0_0_4_4: DatatypeType;
  var ##a#0_0_4_5: DatatypeType;
  var ##s#0_0_4_4: HandleType;
  var ##stk#0_0_4_4: DatatypeType;
  var ##ii#0_0_5_0: DatatypeType;
  var ##xs#0_0_5_0: DatatypeType;
  var ##xs#0_0_5_1: DatatypeType;
  var ##a#0_0_5_0: DatatypeType;
  var ##ys#0_0_5_0: DatatypeType;
  var ##a#0_0_5_1: DatatypeType;
  var ##ys#0_0_5_1: DatatypeType;
  var ##s#0_0_5_0: HandleType;
  var ##stk#0_0_5_0: DatatypeType;
  var ii0##0_0_5_0: DatatypeType;
  var ##xs#0_0_5_2: DatatypeType;
  var ##a#0_0_5_2: DatatypeType;
  var ##ys#0_0_5_2: DatatypeType;
  var ##a#0_0_5_3: DatatypeType;
  var ii1##0_0_5_0: DatatypeType;
  var s##0_0_5_0: HandleType;
  var stk##0_0_5_0: DatatypeType;
  var ##ii#0_0_5_1: DatatypeType;
  var ##s#0_0_5_1: HandleType;
  var ##stk#0_0_5_1: DatatypeType;
  var ##ii#0_0_5_2: DatatypeType;
  var ##xs#0_0_5_3: DatatypeType;
  var ##a#0_0_5_4: DatatypeType;
  var ##ys#0_0_5_3: DatatypeType;
  var ##a#0_0_5_5: DatatypeType;
  var ##s#0_0_5_2: HandleType;
  var ##stk#0_0_5_2: DatatypeType;
  var ##ii#0_0_6_0: DatatypeType;
  var ##a#0_0_6_0: DatatypeType;
  var ##s#0_0_6_0: HandleType;
  var ##stk#0_0_6_0: DatatypeType;
  var ##ii#0_0_6_1: DatatypeType;
  var ##xs#0_0_6_0: DatatypeType;
  var ##xs#0_0_6_1: DatatypeType;
  var ##a#0_0_6_1: DatatypeType;
  var ##ys#0_0_6_0: DatatypeType;
  var ##a#0_0_6_2: DatatypeType;
  var ##ys#0_0_6_1: DatatypeType;
  var ##s#0_0_6_1: HandleType;
  var ##stk#0_0_6_1: DatatypeType;
  var ##ii#0_0_0: DatatypeType;
  var ##a#0_0_0: DatatypeType;
  var ##s#0_0_0: HandleType;
  var ##stk#0_0_0: DatatypeType;
  var _mcc#1#1_0: Seq;
  var _mcc#0#2_0: int;

    // AddMethodImpl: CorrectCompilation, Impl$$_module.__default.CorrectCompilation
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.aexp(a#0);
    assume $IsA#_module.List(stk#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: DatatypeType, $ih#stk0#0: DatatypeType :: 
      { #_module.List.Cons($Box(_module.__default.aval($LS($LZ), $ih#a0#0, s#0)), $ih#stk0#0) } 
        { _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), $ih#a0#0), s#0, $ih#stk0#0) } 
      $Is($ih#a0#0, Tclass._module.aexp())
           && $Is($ih#stk0#0, Tclass._module.List(TInt))
           && Lit(true)
           && (DtRank($ih#a0#0) < DtRank(a#0)
             || (DtRank($ih#a0#0) == DtRank(a#0) && DtRank($ih#stk0#0) < DtRank(stk#0)))
         ==> _module.List#Equal(_module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), $ih#a0#0), s#0, $ih#stk0#0), 
          #_module.List.Cons($Box(_module.__default.aval($LS($LZ), $ih#a0#0, s#0)), $ih#stk0#0)));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#2#0_0, _mcc#3#0_0;
    havoc _mcc#1#1_0;
    havoc _mcc#0#2_0;
    if (a#0 == #_module.aexp.N(_mcc#0#2_0))
    {
    }
    else if (a#0 == #_module.aexp.V(_mcc#1#1_0))
    {
        assume $Is(_mcc#1#1_0, TSeq(TChar));
    }
    else if (a#0 == #_module.aexp.Plus(_mcc#2#0_0, _mcc#3#0_0))
    {
        assume $Is(_mcc#2#0_0, Tclass._module.aexp());
        assume $Is(_mcc#3#0_0, Tclass._module.aexp());
        havoc a1#0_0;
        assume $Is(a1#0_0, Tclass._module.aexp())
           && $IsAlloc(a1#0_0, Tclass._module.aexp(), $Heap);
        assume {:id "id226"} let#0_0#0#0 == _mcc#3#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.aexp());
        assume {:id "id227"} a1#0_0 == let#0_0#0#0;
        havoc a0#0_0;
        assume $Is(a0#0_0, Tclass._module.aexp())
           && $IsAlloc(a0#0_0, Tclass._module.aexp(), $Heap);
        assume {:id "id228"} let#0_1#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.aexp());
        assume {:id "id229"} a0#0_0 == let#0_1#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_0, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a#0);
            ##ii#0_0_0 := _module.__default.comp($LS($LZ), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_0 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a#0), s#0, stk#0);
            assume _module.__default.comp#canCall(a#0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a#0), s#0, stk#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_6_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_6_0, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a#0);
            ##ii#0_0_6_0 := _module.__default.comp($LS($LZ), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_6_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_6_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_6_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_6_0 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_6_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a#0), s#0, stk#0);
            assume _module.__default.comp#canCall(a#0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a#0), s#0, stk#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_6_1 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_6_1, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##xs#0_0_6_1 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_6_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##a#0_0_6_2 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_6_2, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ys#0_0_6_0 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_6_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            ##xs#0_0_6_0 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_6_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##ys#0_0_6_1 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_6_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            ##ii#0_0_6_1 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_6_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_6_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_6_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_6_1 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_6_1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))), 
              s#0, 
              stk#0);
            assume _module.__default.comp#canCall(a0#0_0)
               && _module.__default.comp#canCall(a1#0_0)
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0))
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))))
               && _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.comp($LS($LZ), a0#0_0), 
                    _module.__default.comp($LS($LZ), a1#0_0)), 
                  Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))), 
                s#0, 
                stk#0);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id242"} {:subsumption 0} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), _module.__default.comp($LS($LS($LZ)), a#0), s#0, stk#0), 
              _module.__default.exec($LS($LS($LZ)), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LS($LZ)), 
                    _module.__default.comp($LS($LS($LZ)), a0#0_0), 
                    _module.__default.comp($LS($LS($LZ)), a1#0_0)), 
                  Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))), 
                s#0, 
                stk#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_5_0 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_5_0, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##xs#0_0_5_1 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##a#0_0_5_1 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_5_1, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ys#0_0_5_0 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_5_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            ##xs#0_0_5_0 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##ys#0_0_5_1 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_5_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            ##ii#0_0_5_0 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_5_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_5_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_5_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_5_0 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_5_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))), 
              s#0, 
              stk#0);
            assume _module.__default.comp#canCall(a0#0_0)
               && _module.__default.comp#canCall(a1#0_0)
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0))
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))))
               && _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.comp($LS($LZ), a0#0_0), 
                    _module.__default.comp($LS($LZ), a1#0_0)), 
                  Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))), 
                s#0, 
                stk#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(247,19)
            // TrCallStmt: Before ProcessCallStmt
            ##a#0_0_5_2 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_5_2, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##xs#0_0_5_2 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_2, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##a#0_0_5_3 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_5_3, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ys#0_0_5_2 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_5_2, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            assume _module.__default.comp#canCall(a0#0_0)
               && _module.__default.comp#canCall(a1#0_0)
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0));
            // ProcessCallStmt: CheckSubrange
            ii0##0_0_5_0 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            assume true;
            // ProcessCallStmt: CheckSubrange
            ii1##0_0_5_0 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_0_5_0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            stk##0_0_5_0 := stk#0;
            call {:id "id240"} Call$$_module.__default.ExecAppend(ii0##0_0_5_0, ii1##0_0_5_0, s##0_0_5_0, stk##0_0_5_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_5_1 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_5_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_5_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_5_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_5_4 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_5_4, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##xs#0_0_5_3 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_3, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##a#0_0_5_5 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_5_5, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ys#0_0_5_3 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_5_3, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            ##ii#0_0_5_2 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_5_2, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_5_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_5_2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_5_2 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_5_2, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              s#0, 
              stk#0);
            ##stk#0_0_5_1 := _module.__default.exec($LS($LZ), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              s#0, 
              stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_5_1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              _module.__default.exec($LS($LZ), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                s#0, 
                stk#0));
            assume _module.__default.comp#canCall(a0#0_0)
               && _module.__default.comp#canCall(a1#0_0)
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0))
               && _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                s#0, 
                stk#0)
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LZ), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.comp($LS($LZ), a0#0_0), 
                    _module.__default.comp($LS($LZ), a1#0_0)), 
                  s#0, 
                  stk#0));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id241"} {:subsumption 0} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LS($LZ)), 
                    _module.__default.comp($LS($LS($LZ)), a0#0_0), 
                    _module.__default.comp($LS($LS($LZ)), a1#0_0)), 
                  Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())))), 
                s#0, 
                stk#0), 
              _module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LS($LZ)), 
                    _module.__default.comp($LS($LS($LZ)), a0#0_0), 
                    _module.__default.comp($LS($LS($LZ)), a1#0_0)), 
                  s#0, 
                  stk#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_4_0 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_4_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_4_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_4_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_4_0 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_4_0, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##xs#0_0_4_0 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_4_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##a#0_0_4_1 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_4_1, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ys#0_0_4_0 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_4_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            assume _module.__default.append#canCall(Tclass._module.instr(), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            ##ii#0_0_4_1 := _module.__default.append(Tclass._module.instr(), 
              $LS($LZ), 
              _module.__default.comp($LS($LZ), a0#0_0), 
              _module.__default.comp($LS($LZ), a1#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_4_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_4_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_4_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_4_1 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_4_1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              s#0, 
              stk#0);
            ##stk#0_0_4_0 := _module.__default.exec($LS($LZ), 
              _module.__default.append(Tclass._module.instr(), 
                $LS($LZ), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0)), 
              s#0, 
              stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_4_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              _module.__default.exec($LS($LZ), 
                _module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                s#0, 
                stk#0));
            assume _module.__default.comp#canCall(a0#0_0)
               && _module.__default.comp#canCall(a1#0_0)
               && _module.__default.append#canCall(Tclass._module.instr(), 
                _module.__default.comp($LS($LZ), a0#0_0), 
                _module.__default.comp($LS($LZ), a1#0_0))
               && _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), 
                  $LS($LZ), 
                  _module.__default.comp($LS($LZ), a0#0_0), 
                  _module.__default.comp($LS($LZ), a1#0_0)), 
                s#0, 
                stk#0)
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LZ), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LZ), 
                    _module.__default.comp($LS($LZ), a0#0_0), 
                    _module.__default.comp($LS($LZ), a1#0_0)), 
                  s#0, 
                  stk#0));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(249,19)
            // TrCallStmt: Before ProcessCallStmt
            ##a#0_0_4_2 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_4_2, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            assume _module.__default.comp#canCall(a0#0_0);
            // ProcessCallStmt: CheckSubrange
            ii0##0_0_4_0 := _module.__default.comp($LS($LZ), a0#0_0);
            ##a#0_0_4_3 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_4_3, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            assume _module.__default.comp#canCall(a1#0_0);
            // ProcessCallStmt: CheckSubrange
            ii1##0_0_4_0 := _module.__default.comp($LS($LZ), a1#0_0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_0_4_0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            stk##0_0_4_0 := stk#0;
            call {:id "id238"} Call$$_module.__default.ExecAppend(ii0##0_0_4_0, ii1##0_0_4_0, s##0_0_4_0, stk##0_0_4_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_4_2 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_4_2, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_4_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_4_2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_4_4 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_4_4, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ii#0_0_4_3 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_4_3, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_4_3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_4_3, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_4_5 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_4_5, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##ii#0_0_4_4 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_4_4, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_4_4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_4_4, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_4_4 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_4_4, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0);
            ##stk#0_0_4_3 := _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_4_3, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0));
            ##stk#0_0_4_2 := _module.__default.exec($LS($LZ), 
              _module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_4_2, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              _module.__default.exec($LS($LZ), 
                _module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0)));
            assume _module.__default.comp#canCall(a1#0_0)
               && 
              _module.__default.comp#canCall(a0#0_0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0))
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LZ), 
                  _module.__default.comp($LS($LZ), a1#0_0), 
                  s#0, 
                  _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0)));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id239"} {:subsumption 0} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.instr(), 
                    $LS($LS($LZ)), 
                    _module.__default.comp($LS($LS($LZ)), a0#0_0), 
                    _module.__default.comp($LS($LS($LZ)), a1#0_0)), 
                  s#0, 
                  stk#0)), 
              _module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LS($LZ)), 
                  _module.__default.comp($LS($LS($LZ)), a1#0_0), 
                  s#0, 
                  _module.__default.exec($LS($LS($LZ)), _module.__default.comp($LS($LS($LZ)), a0#0_0), s#0, stk#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_3_0 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_3_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_3_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_3_0 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_3_0, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ii#0_0_3_1 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_3_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_3_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_3_1 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_3_1, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a0#0_0);
            ##ii#0_0_3_2 := _module.__default.comp($LS($LZ), a0#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_3_2, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_3_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##stk#0_0_3_2 := stk#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_3_2, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0);
            ##stk#0_0_3_1 := _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_3_1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0));
            ##stk#0_0_3_0 := _module.__default.exec($LS($LZ), 
              _module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_3_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              _module.__default.exec($LS($LZ), 
                _module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0)));
            assume _module.__default.comp#canCall(a1#0_0)
               && 
              _module.__default.comp#canCall(a0#0_0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0))
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LZ), 
                  _module.__default.comp($LS($LZ), a1#0_0), 
                  s#0, 
                  _module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a0#0_0), s#0, stk#0)));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(251,27)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_0_3_0 := a0#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_0_3_0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            stk##0_0_3_0 := stk#0;
            assert {:id "id235"} DtRank(a##0_0_3_0) < DtRank(a#0)
               || (DtRank(a##0_0_3_0) == DtRank(a#0) && DtRank(stk##0_0_3_0) < DtRank(stk#0));
            call {:id "id236"} Call$$_module.__default.CorrectCompilation(a##0_0_3_0, s##0_0_3_0, stk##0_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_3_3 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_3_3, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_3_3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_3, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_3_2 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_3_2, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ii#0_0_3_4 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_3_4, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_3_4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_4, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_3_3 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_3_3, Tclass._module.aexp(), $Heap);
            ##s#0_0_3_5 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_5, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            ##stk#0_0_3_4 := #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_3_4, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0));
            ##stk#0_0_3_3 := _module.__default.exec($LS($LZ), 
              _module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_3_3, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              _module.__default.exec($LS($LZ), 
                _module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            assume _module.__default.comp#canCall(a1#0_0)
               && _module.__default.aval#canCall(a0#0_0, s#0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0))
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LZ), 
                  _module.__default.comp($LS($LZ), a1#0_0), 
                  s#0, 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id237"} {:subsumption 0} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LS($LZ)), 
                  _module.__default.comp($LS($LS($LZ)), a1#0_0), 
                  s#0, 
                  _module.__default.exec($LS($LS($LZ)), _module.__default.comp($LS($LS($LZ)), a0#0_0), s#0, stk#0))), 
              _module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LS($LZ)), 
                  _module.__default.comp($LS($LS($LZ)), a1#0_0), 
                  s#0, 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a0#0_0, s#0)), stk#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_2_0 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_2_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_2_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_2_0 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_2_0, Tclass._module.aexp(), $Heap);
            assume _module.__default.comp#canCall(a1#0_0);
            ##ii#0_0_2_1 := _module.__default.comp($LS($LZ), a1#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_2_1, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_2_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_2_1 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_2_1, Tclass._module.aexp(), $Heap);
            ##s#0_0_2_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            ##stk#0_0_2_1 := #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_2_1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0));
            ##stk#0_0_2_0 := _module.__default.exec($LS($LZ), 
              _module.__default.comp($LS($LZ), a1#0_0), 
              s#0, 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_2_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              _module.__default.exec($LS($LZ), 
                _module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            assume _module.__default.comp#canCall(a1#0_0)
               && _module.__default.aval#canCall(a0#0_0, s#0)
               && _module.__default.exec#canCall(_module.__default.comp($LS($LZ), a1#0_0), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0))
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LZ), 
                  _module.__default.comp($LS($LZ), a1#0_0), 
                  s#0, 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(253,27)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_0_2_0 := a1#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_0_2_0 := s#0;
            ##a#0_0_2_2 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_2_2, Tclass._module.aexp(), $Heap);
            ##s#0_0_2_3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_3, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            // ProcessCallStmt: CheckSubrange
            stk##0_0_2_0 := #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0);
            assert {:id "id232"} DtRank(a##0_0_2_0) < DtRank(a#0)
               || (DtRank(a##0_0_2_0) == DtRank(a#0) && DtRank(stk##0_0_2_0) < DtRank(stk#0));
            call {:id "id233"} Call$$_module.__default.CorrectCompilation(a##0_0_2_0, s##0_0_2_0, stk##0_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_2_2 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_2_2, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_2_4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_4, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_2_3 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_2_3, Tclass._module.aexp(), $Heap);
            ##s#0_0_2_5 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_5, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a1#0_0, s#0);
            ##a#0_0_2_4 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_2_4, Tclass._module.aexp(), $Heap);
            ##s#0_0_2_6 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_6, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            ##stk#0_0_2_2 := #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a1#0_0, s#0)), 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_2_2, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a1#0_0, s#0)), 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            assume _module.__default.aval#canCall(a1#0_0, s#0)
               && _module.__default.aval#canCall(a0#0_0, s#0)
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a1#0_0, s#0)), 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id234"} {:subsumption 0} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                _module.__default.exec($LS($LS($LZ)), 
                  _module.__default.comp($LS($LS($LZ)), a1#0_0), 
                  s#0, 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a0#0_0, s#0)), stk#0))), 
              _module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a1#0_0, s#0)), 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a0#0_0, s#0)), stk#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##ii#0_0_1_0 := Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ii#0_0_1_0, Tclass._module.List(Tclass._module.instr()), $Heap);
            ##s#0_0_1_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            ##a#0_0_1_0 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_1_0, Tclass._module.aexp(), $Heap);
            ##s#0_0_1_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a1#0_0, s#0);
            ##a#0_0_1_1 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_1_1, Tclass._module.aexp(), $Heap);
            ##s#0_0_1_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            ##stk#0_0_1_0 := #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a1#0_0, s#0)), 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stk#0_0_1_0, Tclass._module.List(TInt), $Heap);
            assume _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
              s#0, 
              #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a1#0_0, s#0)), 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            assume _module.__default.aval#canCall(a1#0_0, s#0)
               && _module.__default.aval#canCall(a0#0_0, s#0)
               && _module.__default.exec#canCall(Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a1#0_0, s#0)), 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a0#0_0, s#0)), stk#0)));
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_1_2 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_1_2, Tclass._module.aexp(), $Heap);
            ##s#0_0_1_3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_3, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a1#0_0, s#0);
            ##a#0_0_1_3 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_1_3, Tclass._module.aexp(), $Heap);
            ##s#0_0_1_4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_4, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            assume _module.__default.aval#canCall(a1#0_0, s#0)
               && _module.__default.aval#canCall(a0#0_0, s#0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id231"} {:subsumption 0} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
                Lit(#_module.List.Cons($Box(Lit(#_module.instr.ADD())), Lit(#_module.List.Nil()))), 
                s#0, 
                #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a1#0_0, s#0)), 
                  #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a0#0_0, s#0)), stk#0))), 
              #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a1#0_0, s#0)
                     + _module.__default.aval($LS($LS($LZ)), a0#0_0, s#0)), 
                stk#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_0_0 := a1#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_0_0, Tclass._module.aexp(), $Heap);
            ##s#0_0_0_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0_0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a1#0_0, s#0);
            ##a#0_0_0_1 := a0#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_0_1, Tclass._module.aexp(), $Heap);
            ##s#0_0_0_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0_1, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a0#0_0, s#0);
            assume _module.__default.aval#canCall(a1#0_0, s#0)
               && _module.__default.aval#canCall(a0#0_0, s#0);
            // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            ##a#0_0_0_2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0_0_2, Tclass._module.aexp(), $Heap);
            ##s#0_0_0_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0_2, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap);
            assume _module.__default.aval#canCall(a#0, s#0);
            assume _module.__default.aval#canCall(a#0, s#0);
            // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NipkowKlein-chapter3.dfy(243,5)
            assert {:id "id230"} {:subsumption 0} _module.List#Equal(#_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a1#0_0, s#0)
                     + _module.__default.aval($LS($LS($LZ)), a0#0_0, s#0)), 
                stk#0), 
              #_module.List.Cons($Box(_module.__default.aval($LS($LS($LZ)), a#0, s#0)), stk#0));
            assume false;
        }

        assume {:id "id243"} _module.List#Equal(_module.__default.exec($LS($LZ), _module.__default.comp($LS($LZ), a#0), s#0, stk#0), 
          #_module.List.Cons($Box(_module.__default.aval($LS($LZ), a#0, s#0)), stk#0));
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "ExecAppend (well-formedness)"} CheckWellFormed$$_module.__default.ExecAppend(ii0#0: DatatypeType
       where $Is(ii0#0, Tclass._module.List(Tclass._module.instr()))
         && $IsAlloc(ii0#0, Tclass._module.List(Tclass._module.instr()), $Heap)
         && $IsA#_module.List(ii0#0), 
    ii1#0: DatatypeType
       where $Is(ii1#0, Tclass._module.List(Tclass._module.instr()))
         && $IsAlloc(ii1#0, Tclass._module.List(Tclass._module.instr()), $Heap)
         && $IsA#_module.List(ii1#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap), 
    stk#0: DatatypeType
       where $Is(stk#0, Tclass._module.List(TInt))
         && $IsAlloc(stk#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(stk#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ExecAppend (call)"} Call$$_module.__default.ExecAppend(ii0#0: DatatypeType
       where $Is(ii0#0, Tclass._module.List(Tclass._module.instr()))
         && $IsAlloc(ii0#0, Tclass._module.List(Tclass._module.instr()), $Heap)
         && $IsA#_module.List(ii0#0), 
    ii1#0: DatatypeType
       where $Is(ii1#0, Tclass._module.List(Tclass._module.instr()))
         && $IsAlloc(ii1#0, Tclass._module.List(Tclass._module.instr()), $Heap)
         && $IsA#_module.List(ii1#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap), 
    stk#0: DatatypeType
       where $Is(stk#0, Tclass._module.List(TInt))
         && $IsAlloc(stk#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(stk#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.exec($LS($LZ), 
        _module.__default.append(Tclass._module.instr(), $LS($LZ), ii0#0, ii1#0), 
        s#0, 
        stk#0))
     && $IsA#_module.List(_module.__default.exec($LS($LZ), ii1#0, s#0, _module.__default.exec($LS($LZ), ii0#0, s#0, stk#0)))
     && 
    _module.__default.append#canCall(Tclass._module.instr(), ii0#0, ii1#0)
     && _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), $LS($LZ), ii0#0, ii1#0), 
      s#0, 
      stk#0)
     && 
    _module.__default.exec#canCall(ii0#0, s#0, stk#0)
     && _module.__default.exec#canCall(ii1#0, s#0, _module.__default.exec($LS($LZ), ii0#0, s#0, stk#0));
  ensures {:id "id245"} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
      _module.__default.append(Tclass._module.instr(), $LS($LS($LZ)), ii0#0, ii1#0), 
      s#0, 
      stk#0), 
    _module.__default.exec($LS($LS($LZ)), 
      ii1#0, 
      s#0, 
      _module.__default.exec($LS($LS($LZ)), ii0#0, s#0, stk#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ExecAppend (correctness)"} Impl$$_module.__default.ExecAppend(ii0#0: DatatypeType
       where $Is(ii0#0, Tclass._module.List(Tclass._module.instr()))
         && $IsAlloc(ii0#0, Tclass._module.List(Tclass._module.instr()), $Heap)
         && $IsA#_module.List(ii0#0), 
    ii1#0: DatatypeType
       where $Is(ii1#0, Tclass._module.List(Tclass._module.instr()))
         && $IsAlloc(ii1#0, Tclass._module.List(Tclass._module.instr()), $Heap)
         && $IsA#_module.List(ii1#0), 
    s#0: HandleType
       where $Is(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt))
         && $IsAlloc(s#0, Tclass._System.___hTotalFunc1(TSeq(TChar), TInt), $Heap), 
    stk#0: DatatypeType
       where $Is(stk#0, Tclass._module.List(TInt))
         && $IsAlloc(stk#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(stk#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.exec($LS($LZ), 
        _module.__default.append(Tclass._module.instr(), $LS($LZ), ii0#0, ii1#0), 
        s#0, 
        stk#0))
     && $IsA#_module.List(_module.__default.exec($LS($LZ), ii1#0, s#0, _module.__default.exec($LS($LZ), ii0#0, s#0, stk#0)))
     && 
    _module.__default.append#canCall(Tclass._module.instr(), ii0#0, ii1#0)
     && _module.__default.exec#canCall(_module.__default.append(Tclass._module.instr(), $LS($LZ), ii0#0, ii1#0), 
      s#0, 
      stk#0)
     && 
    _module.__default.exec#canCall(ii0#0, s#0, stk#0)
     && _module.__default.exec#canCall(ii1#0, s#0, _module.__default.exec($LS($LZ), ii0#0, s#0, stk#0));
  ensures {:id "id246"} _module.List#Equal(_module.__default.exec($LS($LS($LZ)), 
      _module.__default.append(Tclass._module.instr(), $LS($LS($LZ)), ii0#0, ii1#0), 
      s#0, 
      stk#0), 
    _module.__default.exec($LS($LS($LZ)), 
      ii1#0, 
      s#0, 
      _module.__default.exec($LS($LS($LZ)), ii0#0, s#0, stk#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExecAppend (correctness)"} Impl$$_module.__default.ExecAppend(ii0#0: DatatypeType, ii1#0: DatatypeType, s#0: HandleType, stk#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: ExecAppend, Impl$$_module.__default.ExecAppend
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(ii0#0);
    assume $IsA#_module.List(ii1#0);
    assume $IsA#_module.List(stk#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#ii00#0: DatatypeType, $ih#ii10#0: DatatypeType, $ih#stk0#0: DatatypeType :: 
      { _module.__default.exec($LS($LZ), 
          $ih#ii10#0, 
          s#0, 
          _module.__default.exec($LS($LZ), $ih#ii00#0, s#0, $ih#stk0#0)) } 
        { _module.__default.exec($LS($LZ), 
          _module.__default.append(Tclass._module.instr(), $LS($LZ), $ih#ii00#0, $ih#ii10#0), 
          s#0, 
          $ih#stk0#0) } 
      $Is($ih#ii00#0, Tclass._module.List(Tclass._module.instr()))
           && $Is($ih#ii10#0, Tclass._module.List(Tclass._module.instr()))
           && $Is($ih#stk0#0, Tclass._module.List(TInt))
           && Lit(true)
           && (DtRank($ih#ii00#0) < DtRank(ii0#0)
             || (DtRank($ih#ii00#0) == DtRank(ii0#0)
               && (DtRank($ih#ii10#0) < DtRank(ii1#0)
                 || (DtRank($ih#ii10#0) == DtRank(ii1#0) && DtRank($ih#stk0#0) < DtRank(stk#0)))))
         ==> _module.List#Equal(_module.__default.exec($LS($LZ), 
            _module.__default.append(Tclass._module.instr(), $LS($LZ), $ih#ii00#0, $ih#ii10#0), 
            s#0, 
            $ih#stk0#0), 
          _module.__default.exec($LS($LZ), 
            $ih#ii10#0, 
            s#0, 
            _module.__default.exec($LS($LZ), $ih#ii00#0, s#0, $ih#stk0#0))));
    $_reverifyPost := false;
}



// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor $Is
axiom (forall _module.List$T: Ty :: 
  { $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h));

// Constructor function declaration
function #_module.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#4#0#0, a#4#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T))
     <==> $IsBox(a#6#0#0, _module.List$T)
       && $Is(a#6#1#0, Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass._module.List(_module.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.List.head(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List.head(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List.head(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List.tail(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.List$T: Ty, d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
  $Is(d, Tclass._module.List(_module.List$T))
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List.head(a) == _module.List.head(b)
         && _module.List#Equal(_module.List.tail(a), _module.List.tail(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.aexp.N(int) : DatatypeType;

const unique ##_module.aexp.N: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: int :: 
  { #_module.aexp.N(a#12#0#0) } 
  DatatypeCtorId(#_module.aexp.N(a#12#0#0)) == ##_module.aexp.N);
}

function _module.aexp.N_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.aexp.N_q(d) } 
  _module.aexp.N_q(d) <==> DatatypeCtorId(d) == ##_module.aexp.N);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.aexp.N_q(d) } 
  _module.aexp.N_q(d) ==> (exists a#13#0#0: int :: d == #_module.aexp.N(a#13#0#0)));

// Constructor $Is
axiom (forall a#14#0#0: int :: 
  { $Is(#_module.aexp.N(a#14#0#0), Tclass._module.aexp()) } 
  $Is(#_module.aexp.N(a#14#0#0), Tclass._module.aexp()) <==> $Is(a#14#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.aexp.n(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.aexp.N_q(d) && $IsAlloc(d, Tclass._module.aexp(), $h)
     ==> $IsAlloc(_module.aexp.n(d), TInt, $h));

// Constructor literal
axiom (forall a#15#0#0: int :: 
  { #_module.aexp.N(LitInt(a#15#0#0)) } 
  #_module.aexp.N(LitInt(a#15#0#0)) == Lit(#_module.aexp.N(a#15#0#0)));

function _module.aexp.n(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#16#0#0: int :: 
  { #_module.aexp.N(a#16#0#0) } 
  _module.aexp.n(#_module.aexp.N(a#16#0#0)) == a#16#0#0);

// Constructor function declaration
function #_module.aexp.V(Seq) : DatatypeType;

const unique ##_module.aexp.V: DtCtorId
uses {
// Constructor identifier
axiom (forall a#17#0#0: Seq :: 
  { #_module.aexp.V(a#17#0#0) } 
  DatatypeCtorId(#_module.aexp.V(a#17#0#0)) == ##_module.aexp.V);
}

function _module.aexp.V_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.aexp.V_q(d) } 
  _module.aexp.V_q(d) <==> DatatypeCtorId(d) == ##_module.aexp.V);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.aexp.V_q(d) } 
  _module.aexp.V_q(d) ==> (exists a#18#0#0: Seq :: d == #_module.aexp.V(a#18#0#0)));

// Constructor $Is
axiom (forall a#19#0#0: Seq :: 
  { $Is(#_module.aexp.V(a#19#0#0), Tclass._module.aexp()) } 
  $Is(#_module.aexp.V(a#19#0#0), Tclass._module.aexp())
     <==> $Is(a#19#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.aexp._h0(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.aexp.V_q(d) && $IsAlloc(d, Tclass._module.aexp(), $h)
     ==> $IsAlloc(_module.aexp._h0(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#20#0#0: Seq :: 
  { #_module.aexp.V(Lit(a#20#0#0)) } 
  #_module.aexp.V(Lit(a#20#0#0)) == Lit(#_module.aexp.V(a#20#0#0)));

function _module.aexp._h0(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#21#0#0: Seq :: 
  { #_module.aexp.V(a#21#0#0) } 
  _module.aexp._h0(#_module.aexp.V(a#21#0#0)) == a#21#0#0);

// Inductive seq element rank
axiom (forall a#22#0#0: Seq, i: int :: 
  { Seq#Index(a#22#0#0, i), #_module.aexp.V(a#22#0#0) } 
  0 <= i && i < Seq#Length(a#22#0#0)
     ==> DtRank($Unbox(Seq#Index(a#22#0#0, i)): DatatypeType)
       < DtRank(#_module.aexp.V(a#22#0#0)));

// Inductive seq rank
axiom (forall a#23#0#0: Seq :: 
  { #_module.aexp.V(a#23#0#0) } 
  Seq#Rank(a#23#0#0) < DtRank(#_module.aexp.V(a#23#0#0)));

// Constructor function declaration
function #_module.aexp.Plus(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.aexp.Plus: DtCtorId
uses {
// Constructor identifier
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType :: 
  { #_module.aexp.Plus(a#24#0#0, a#24#1#0) } 
  DatatypeCtorId(#_module.aexp.Plus(a#24#0#0, a#24#1#0)) == ##_module.aexp.Plus);
}

function _module.aexp.Plus_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.aexp.Plus_q(d) } 
  _module.aexp.Plus_q(d) <==> DatatypeCtorId(d) == ##_module.aexp.Plus);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.aexp.Plus_q(d) } 
  _module.aexp.Plus_q(d)
     ==> (exists a#25#0#0: DatatypeType, a#25#1#0: DatatypeType :: 
      d == #_module.aexp.Plus(a#25#0#0, a#25#1#0)));

// Constructor $Is
axiom (forall a#26#0#0: DatatypeType, a#26#1#0: DatatypeType :: 
  { $Is(#_module.aexp.Plus(a#26#0#0, a#26#1#0), Tclass._module.aexp()) } 
  $Is(#_module.aexp.Plus(a#26#0#0, a#26#1#0), Tclass._module.aexp())
     <==> $Is(a#26#0#0, Tclass._module.aexp()) && $Is(a#26#1#0, Tclass._module.aexp()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.aexp._h1(d), Tclass._module.aexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.aexp.Plus_q(d)
       && $IsAlloc(d, Tclass._module.aexp(), $h)
     ==> $IsAlloc(_module.aexp._h1(d), Tclass._module.aexp(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.aexp._h2(d), Tclass._module.aexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.aexp.Plus_q(d)
       && $IsAlloc(d, Tclass._module.aexp(), $h)
     ==> $IsAlloc(_module.aexp._h2(d), Tclass._module.aexp(), $h));

// Constructor literal
axiom (forall a#27#0#0: DatatypeType, a#27#1#0: DatatypeType :: 
  { #_module.aexp.Plus(Lit(a#27#0#0), Lit(a#27#1#0)) } 
  #_module.aexp.Plus(Lit(a#27#0#0), Lit(a#27#1#0))
     == Lit(#_module.aexp.Plus(a#27#0#0, a#27#1#0)));

function _module.aexp._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#28#0#0: DatatypeType, a#28#1#0: DatatypeType :: 
  { #_module.aexp.Plus(a#28#0#0, a#28#1#0) } 
  _module.aexp._h1(#_module.aexp.Plus(a#28#0#0, a#28#1#0)) == a#28#0#0);

// Inductive rank
axiom (forall a#29#0#0: DatatypeType, a#29#1#0: DatatypeType :: 
  { #_module.aexp.Plus(a#29#0#0, a#29#1#0) } 
  DtRank(a#29#0#0) < DtRank(#_module.aexp.Plus(a#29#0#0, a#29#1#0)));

function _module.aexp._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#30#0#0: DatatypeType, a#30#1#0: DatatypeType :: 
  { #_module.aexp.Plus(a#30#0#0, a#30#1#0) } 
  _module.aexp._h2(#_module.aexp.Plus(a#30#0#0, a#30#1#0)) == a#30#1#0);

// Inductive rank
axiom (forall a#31#0#0: DatatypeType, a#31#1#0: DatatypeType :: 
  { #_module.aexp.Plus(a#31#0#0, a#31#1#0) } 
  DtRank(a#31#1#0) < DtRank(#_module.aexp.Plus(a#31#0#0, a#31#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.aexp(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.aexp())
     ==> $IsAlloc(d, Tclass._module.aexp(), $h));

// Depth-one case-split function
function $IsA#_module.aexp(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.aexp(d) } 
  $IsA#_module.aexp(d)
     ==> _module.aexp.N_q(d) || _module.aexp.V_q(d) || _module.aexp.Plus_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.aexp.Plus_q(d), $Is(d, Tclass._module.aexp()) } 
    { _module.aexp.V_q(d), $Is(d, Tclass._module.aexp()) } 
    { _module.aexp.N_q(d), $Is(d, Tclass._module.aexp()) } 
  $Is(d, Tclass._module.aexp())
     ==> _module.aexp.N_q(d) || _module.aexp.V_q(d) || _module.aexp.Plus_q(d));

// Datatype extensional equality declaration
function _module.aexp#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.aexp.N
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.aexp#Equal(a, b), _module.aexp.N_q(a) } 
    { _module.aexp#Equal(a, b), _module.aexp.N_q(b) } 
  _module.aexp.N_q(a) && _module.aexp.N_q(b)
     ==> (_module.aexp#Equal(a, b) <==> _module.aexp.n(a) == _module.aexp.n(b)));

// Datatype extensional equality definition: #_module.aexp.V
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.aexp#Equal(a, b), _module.aexp.V_q(a) } 
    { _module.aexp#Equal(a, b), _module.aexp.V_q(b) } 
  _module.aexp.V_q(a) && _module.aexp.V_q(b)
     ==> (_module.aexp#Equal(a, b)
       <==> Seq#Equal(_module.aexp._h0(a), _module.aexp._h0(b))));

// Datatype extensional equality definition: #_module.aexp.Plus
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.aexp#Equal(a, b), _module.aexp.Plus_q(a) } 
    { _module.aexp#Equal(a, b), _module.aexp.Plus_q(b) } 
  _module.aexp.Plus_q(a) && _module.aexp.Plus_q(b)
     ==> (_module.aexp#Equal(a, b)
       <==> _module.aexp#Equal(_module.aexp._h1(a), _module.aexp._h1(b))
         && _module.aexp#Equal(_module.aexp._h2(a), _module.aexp._h2(b))));

// Datatype extensionality axiom: _module.aexp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.aexp#Equal(a, b) } 
  _module.aexp#Equal(a, b) <==> a == b);

const unique class._module.aexp: ClassName;

// Constructor function declaration
function #_module.bexp.Bc(bool) : DatatypeType;

const unique ##_module.bexp.Bc: DtCtorId
uses {
// Constructor identifier
axiom (forall a#32#0#0: bool :: 
  { #_module.bexp.Bc(a#32#0#0) } 
  DatatypeCtorId(#_module.bexp.Bc(a#32#0#0)) == ##_module.bexp.Bc);
}

function _module.bexp.Bc_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bexp.Bc_q(d) } 
  _module.bexp.Bc_q(d) <==> DatatypeCtorId(d) == ##_module.bexp.Bc);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bexp.Bc_q(d) } 
  _module.bexp.Bc_q(d)
     ==> (exists a#33#0#0: bool :: d == #_module.bexp.Bc(a#33#0#0)));

// Constructor $Is
axiom (forall a#34#0#0: bool :: 
  { $Is(#_module.bexp.Bc(a#34#0#0), Tclass._module.bexp()) } 
  $Is(#_module.bexp.Bc(a#34#0#0), Tclass._module.bexp()) <==> $Is(a#34#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bexp.v(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.bexp.Bc_q(d)
       && $IsAlloc(d, Tclass._module.bexp(), $h)
     ==> $IsAlloc(_module.bexp.v(d), TBool, $h));

// Constructor literal
axiom (forall a#35#0#0: bool :: 
  { #_module.bexp.Bc(Lit(a#35#0#0)) } 
  #_module.bexp.Bc(Lit(a#35#0#0)) == Lit(#_module.bexp.Bc(a#35#0#0)));

function _module.bexp.v(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#36#0#0: bool :: 
  { #_module.bexp.Bc(a#36#0#0) } 
  _module.bexp.v(#_module.bexp.Bc(a#36#0#0)) == a#36#0#0);

// Constructor function declaration
function #_module.bexp.Not(DatatypeType) : DatatypeType;

const unique ##_module.bexp.Not: DtCtorId
uses {
// Constructor identifier
axiom (forall a#37#0#0: DatatypeType :: 
  { #_module.bexp.Not(a#37#0#0) } 
  DatatypeCtorId(#_module.bexp.Not(a#37#0#0)) == ##_module.bexp.Not);
}

function _module.bexp.Not_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bexp.Not_q(d) } 
  _module.bexp.Not_q(d) <==> DatatypeCtorId(d) == ##_module.bexp.Not);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bexp.Not_q(d) } 
  _module.bexp.Not_q(d)
     ==> (exists a#38#0#0: DatatypeType :: d == #_module.bexp.Not(a#38#0#0)));

// Constructor $Is
axiom (forall a#39#0#0: DatatypeType :: 
  { $Is(#_module.bexp.Not(a#39#0#0), Tclass._module.bexp()) } 
  $Is(#_module.bexp.Not(a#39#0#0), Tclass._module.bexp())
     <==> $Is(a#39#0#0, Tclass._module.bexp()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bexp._h3(d), Tclass._module.bexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bexp.Not_q(d)
       && $IsAlloc(d, Tclass._module.bexp(), $h)
     ==> $IsAlloc(_module.bexp._h3(d), Tclass._module.bexp(), $h));

// Constructor literal
axiom (forall a#40#0#0: DatatypeType :: 
  { #_module.bexp.Not(Lit(a#40#0#0)) } 
  #_module.bexp.Not(Lit(a#40#0#0)) == Lit(#_module.bexp.Not(a#40#0#0)));

function _module.bexp._h3(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#41#0#0: DatatypeType :: 
  { #_module.bexp.Not(a#41#0#0) } 
  _module.bexp._h3(#_module.bexp.Not(a#41#0#0)) == a#41#0#0);

// Inductive rank
axiom (forall a#42#0#0: DatatypeType :: 
  { #_module.bexp.Not(a#42#0#0) } 
  DtRank(a#42#0#0) < DtRank(#_module.bexp.Not(a#42#0#0)));

// Constructor function declaration
function #_module.bexp.And(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.bexp.And: DtCtorId
uses {
// Constructor identifier
axiom (forall a#43#0#0: DatatypeType, a#43#1#0: DatatypeType :: 
  { #_module.bexp.And(a#43#0#0, a#43#1#0) } 
  DatatypeCtorId(#_module.bexp.And(a#43#0#0, a#43#1#0)) == ##_module.bexp.And);
}

function _module.bexp.And_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bexp.And_q(d) } 
  _module.bexp.And_q(d) <==> DatatypeCtorId(d) == ##_module.bexp.And);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bexp.And_q(d) } 
  _module.bexp.And_q(d)
     ==> (exists a#44#0#0: DatatypeType, a#44#1#0: DatatypeType :: 
      d == #_module.bexp.And(a#44#0#0, a#44#1#0)));

// Constructor $Is
axiom (forall a#45#0#0: DatatypeType, a#45#1#0: DatatypeType :: 
  { $Is(#_module.bexp.And(a#45#0#0, a#45#1#0), Tclass._module.bexp()) } 
  $Is(#_module.bexp.And(a#45#0#0, a#45#1#0), Tclass._module.bexp())
     <==> $Is(a#45#0#0, Tclass._module.bexp()) && $Is(a#45#1#0, Tclass._module.bexp()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bexp._h4(d), Tclass._module.bexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bexp.And_q(d)
       && $IsAlloc(d, Tclass._module.bexp(), $h)
     ==> $IsAlloc(_module.bexp._h4(d), Tclass._module.bexp(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bexp._h5(d), Tclass._module.bexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bexp.And_q(d)
       && $IsAlloc(d, Tclass._module.bexp(), $h)
     ==> $IsAlloc(_module.bexp._h5(d), Tclass._module.bexp(), $h));

// Constructor literal
axiom (forall a#46#0#0: DatatypeType, a#46#1#0: DatatypeType :: 
  { #_module.bexp.And(Lit(a#46#0#0), Lit(a#46#1#0)) } 
  #_module.bexp.And(Lit(a#46#0#0), Lit(a#46#1#0))
     == Lit(#_module.bexp.And(a#46#0#0, a#46#1#0)));

function _module.bexp._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#47#0#0: DatatypeType, a#47#1#0: DatatypeType :: 
  { #_module.bexp.And(a#47#0#0, a#47#1#0) } 
  _module.bexp._h4(#_module.bexp.And(a#47#0#0, a#47#1#0)) == a#47#0#0);

// Inductive rank
axiom (forall a#48#0#0: DatatypeType, a#48#1#0: DatatypeType :: 
  { #_module.bexp.And(a#48#0#0, a#48#1#0) } 
  DtRank(a#48#0#0) < DtRank(#_module.bexp.And(a#48#0#0, a#48#1#0)));

function _module.bexp._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#49#0#0: DatatypeType, a#49#1#0: DatatypeType :: 
  { #_module.bexp.And(a#49#0#0, a#49#1#0) } 
  _module.bexp._h5(#_module.bexp.And(a#49#0#0, a#49#1#0)) == a#49#1#0);

// Inductive rank
axiom (forall a#50#0#0: DatatypeType, a#50#1#0: DatatypeType :: 
  { #_module.bexp.And(a#50#0#0, a#50#1#0) } 
  DtRank(a#50#1#0) < DtRank(#_module.bexp.And(a#50#0#0, a#50#1#0)));

// Constructor function declaration
function #_module.bexp.Less(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.bexp.Less: DtCtorId
uses {
// Constructor identifier
axiom (forall a#51#0#0: DatatypeType, a#51#1#0: DatatypeType :: 
  { #_module.bexp.Less(a#51#0#0, a#51#1#0) } 
  DatatypeCtorId(#_module.bexp.Less(a#51#0#0, a#51#1#0)) == ##_module.bexp.Less);
}

function _module.bexp.Less_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bexp.Less_q(d) } 
  _module.bexp.Less_q(d) <==> DatatypeCtorId(d) == ##_module.bexp.Less);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bexp.Less_q(d) } 
  _module.bexp.Less_q(d)
     ==> (exists a#52#0#0: DatatypeType, a#52#1#0: DatatypeType :: 
      d == #_module.bexp.Less(a#52#0#0, a#52#1#0)));

// Constructor $Is
axiom (forall a#53#0#0: DatatypeType, a#53#1#0: DatatypeType :: 
  { $Is(#_module.bexp.Less(a#53#0#0, a#53#1#0), Tclass._module.bexp()) } 
  $Is(#_module.bexp.Less(a#53#0#0, a#53#1#0), Tclass._module.bexp())
     <==> $Is(a#53#0#0, Tclass._module.aexp()) && $Is(a#53#1#0, Tclass._module.aexp()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bexp._h6(d), Tclass._module.aexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bexp.Less_q(d)
       && $IsAlloc(d, Tclass._module.bexp(), $h)
     ==> $IsAlloc(_module.bexp._h6(d), Tclass._module.aexp(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bexp._h7(d), Tclass._module.aexp(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bexp.Less_q(d)
       && $IsAlloc(d, Tclass._module.bexp(), $h)
     ==> $IsAlloc(_module.bexp._h7(d), Tclass._module.aexp(), $h));

// Constructor literal
axiom (forall a#54#0#0: DatatypeType, a#54#1#0: DatatypeType :: 
  { #_module.bexp.Less(Lit(a#54#0#0), Lit(a#54#1#0)) } 
  #_module.bexp.Less(Lit(a#54#0#0), Lit(a#54#1#0))
     == Lit(#_module.bexp.Less(a#54#0#0, a#54#1#0)));

function _module.bexp._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#55#0#0: DatatypeType, a#55#1#0: DatatypeType :: 
  { #_module.bexp.Less(a#55#0#0, a#55#1#0) } 
  _module.bexp._h6(#_module.bexp.Less(a#55#0#0, a#55#1#0)) == a#55#0#0);

// Inductive rank
axiom (forall a#56#0#0: DatatypeType, a#56#1#0: DatatypeType :: 
  { #_module.bexp.Less(a#56#0#0, a#56#1#0) } 
  DtRank(a#56#0#0) < DtRank(#_module.bexp.Less(a#56#0#0, a#56#1#0)));

function _module.bexp._h7(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#57#0#0: DatatypeType, a#57#1#0: DatatypeType :: 
  { #_module.bexp.Less(a#57#0#0, a#57#1#0) } 
  _module.bexp._h7(#_module.bexp.Less(a#57#0#0, a#57#1#0)) == a#57#1#0);

// Inductive rank
axiom (forall a#58#0#0: DatatypeType, a#58#1#0: DatatypeType :: 
  { #_module.bexp.Less(a#58#0#0, a#58#1#0) } 
  DtRank(a#58#1#0) < DtRank(#_module.bexp.Less(a#58#0#0, a#58#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.bexp(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.bexp())
     ==> $IsAlloc(d, Tclass._module.bexp(), $h));

// Depth-one case-split function
function $IsA#_module.bexp(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.bexp(d) } 
  $IsA#_module.bexp(d)
     ==> _module.bexp.Bc_q(d)
       || _module.bexp.Not_q(d)
       || _module.bexp.And_q(d)
       || _module.bexp.Less_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.bexp.Less_q(d), $Is(d, Tclass._module.bexp()) } 
    { _module.bexp.And_q(d), $Is(d, Tclass._module.bexp()) } 
    { _module.bexp.Not_q(d), $Is(d, Tclass._module.bexp()) } 
    { _module.bexp.Bc_q(d), $Is(d, Tclass._module.bexp()) } 
  $Is(d, Tclass._module.bexp())
     ==> _module.bexp.Bc_q(d)
       || _module.bexp.Not_q(d)
       || _module.bexp.And_q(d)
       || _module.bexp.Less_q(d));

// Datatype extensional equality declaration
function _module.bexp#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.bexp.Bc
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bexp#Equal(a, b), _module.bexp.Bc_q(a) } 
    { _module.bexp#Equal(a, b), _module.bexp.Bc_q(b) } 
  _module.bexp.Bc_q(a) && _module.bexp.Bc_q(b)
     ==> (_module.bexp#Equal(a, b) <==> _module.bexp.v(a) == _module.bexp.v(b)));

// Datatype extensional equality definition: #_module.bexp.Not
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bexp#Equal(a, b), _module.bexp.Not_q(a) } 
    { _module.bexp#Equal(a, b), _module.bexp.Not_q(b) } 
  _module.bexp.Not_q(a) && _module.bexp.Not_q(b)
     ==> (_module.bexp#Equal(a, b)
       <==> _module.bexp#Equal(_module.bexp._h3(a), _module.bexp._h3(b))));

// Datatype extensional equality definition: #_module.bexp.And
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bexp#Equal(a, b), _module.bexp.And_q(a) } 
    { _module.bexp#Equal(a, b), _module.bexp.And_q(b) } 
  _module.bexp.And_q(a) && _module.bexp.And_q(b)
     ==> (_module.bexp#Equal(a, b)
       <==> _module.bexp#Equal(_module.bexp._h4(a), _module.bexp._h4(b))
         && _module.bexp#Equal(_module.bexp._h5(a), _module.bexp._h5(b))));

// Datatype extensional equality definition: #_module.bexp.Less
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bexp#Equal(a, b), _module.bexp.Less_q(a) } 
    { _module.bexp#Equal(a, b), _module.bexp.Less_q(b) } 
  _module.bexp.Less_q(a) && _module.bexp.Less_q(b)
     ==> (_module.bexp#Equal(a, b)
       <==> _module.aexp#Equal(_module.bexp._h6(a), _module.bexp._h6(b))
         && _module.aexp#Equal(_module.bexp._h7(a), _module.bexp._h7(b))));

// Datatype extensionality axiom: _module.bexp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bexp#Equal(a, b) } 
  _module.bexp#Equal(a, b) <==> a == b);

const unique class._module.bexp: ClassName;

// Constructor function declaration
function #_module.instr.LOADI(int) : DatatypeType;

const unique ##_module.instr.LOADI: DtCtorId
uses {
// Constructor identifier
axiom (forall a#59#0#0: int :: 
  { #_module.instr.LOADI(a#59#0#0) } 
  DatatypeCtorId(#_module.instr.LOADI(a#59#0#0)) == ##_module.instr.LOADI);
}

function _module.instr.LOADI_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.instr.LOADI_q(d) } 
  _module.instr.LOADI_q(d) <==> DatatypeCtorId(d) == ##_module.instr.LOADI);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.instr.LOADI_q(d) } 
  _module.instr.LOADI_q(d)
     ==> (exists a#60#0#0: int :: d == #_module.instr.LOADI(a#60#0#0)));

// Constructor $Is
axiom (forall a#61#0#0: int :: 
  { $Is(#_module.instr.LOADI(a#61#0#0), Tclass._module.instr()) } 
  $Is(#_module.instr.LOADI(a#61#0#0), Tclass._module.instr())
     <==> $Is(a#61#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.instr._h12(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.instr.LOADI_q(d)
       && $IsAlloc(d, Tclass._module.instr(), $h)
     ==> $IsAlloc(_module.instr._h12(d), TInt, $h));

// Constructor literal
axiom (forall a#62#0#0: int :: 
  { #_module.instr.LOADI(LitInt(a#62#0#0)) } 
  #_module.instr.LOADI(LitInt(a#62#0#0)) == Lit(#_module.instr.LOADI(a#62#0#0)));

function _module.instr._h12(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#63#0#0: int :: 
  { #_module.instr.LOADI(a#63#0#0) } 
  _module.instr._h12(#_module.instr.LOADI(a#63#0#0)) == a#63#0#0);

// Constructor function declaration
function #_module.instr.LOAD(Seq) : DatatypeType;

const unique ##_module.instr.LOAD: DtCtorId
uses {
// Constructor identifier
axiom (forall a#64#0#0: Seq :: 
  { #_module.instr.LOAD(a#64#0#0) } 
  DatatypeCtorId(#_module.instr.LOAD(a#64#0#0)) == ##_module.instr.LOAD);
}

function _module.instr.LOAD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.instr.LOAD_q(d) } 
  _module.instr.LOAD_q(d) <==> DatatypeCtorId(d) == ##_module.instr.LOAD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.instr.LOAD_q(d) } 
  _module.instr.LOAD_q(d)
     ==> (exists a#65#0#0: Seq :: d == #_module.instr.LOAD(a#65#0#0)));

// Constructor $Is
axiom (forall a#66#0#0: Seq :: 
  { $Is(#_module.instr.LOAD(a#66#0#0), Tclass._module.instr()) } 
  $Is(#_module.instr.LOAD(a#66#0#0), Tclass._module.instr())
     <==> $Is(a#66#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.instr._h13(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.instr.LOAD_q(d)
       && $IsAlloc(d, Tclass._module.instr(), $h)
     ==> $IsAlloc(_module.instr._h13(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#67#0#0: Seq :: 
  { #_module.instr.LOAD(Lit(a#67#0#0)) } 
  #_module.instr.LOAD(Lit(a#67#0#0)) == Lit(#_module.instr.LOAD(a#67#0#0)));

function _module.instr._h13(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#68#0#0: Seq :: 
  { #_module.instr.LOAD(a#68#0#0) } 
  _module.instr._h13(#_module.instr.LOAD(a#68#0#0)) == a#68#0#0);

// Inductive seq element rank
axiom (forall a#69#0#0: Seq, i: int :: 
  { Seq#Index(a#69#0#0, i), #_module.instr.LOAD(a#69#0#0) } 
  0 <= i && i < Seq#Length(a#69#0#0)
     ==> DtRank($Unbox(Seq#Index(a#69#0#0, i)): DatatypeType)
       < DtRank(#_module.instr.LOAD(a#69#0#0)));

// Inductive seq rank
axiom (forall a#70#0#0: Seq :: 
  { #_module.instr.LOAD(a#70#0#0) } 
  Seq#Rank(a#70#0#0) < DtRank(#_module.instr.LOAD(a#70#0#0)));

// Constructor function declaration
function #_module.instr.ADD() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.instr.ADD()) == ##_module.instr.ADD;
// Constructor $Is
axiom $Is(#_module.instr.ADD(), Tclass._module.instr());
// Constructor literal
axiom #_module.instr.ADD() == Lit(#_module.instr.ADD());
}

const unique ##_module.instr.ADD: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.instr.ADD()) == ##_module.instr.ADD;
}

function _module.instr.ADD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.instr.ADD_q(d) } 
  _module.instr.ADD_q(d) <==> DatatypeCtorId(d) == ##_module.instr.ADD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.instr.ADD_q(d) } 
  _module.instr.ADD_q(d) ==> d == #_module.instr.ADD());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.instr(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.instr())
     ==> $IsAlloc(d, Tclass._module.instr(), $h));

// Depth-one case-split function
function $IsA#_module.instr(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.instr(d) } 
  $IsA#_module.instr(d)
     ==> _module.instr.LOADI_q(d) || _module.instr.LOAD_q(d) || _module.instr.ADD_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.instr.ADD_q(d), $Is(d, Tclass._module.instr()) } 
    { _module.instr.LOAD_q(d), $Is(d, Tclass._module.instr()) } 
    { _module.instr.LOADI_q(d), $Is(d, Tclass._module.instr()) } 
  $Is(d, Tclass._module.instr())
     ==> _module.instr.LOADI_q(d) || _module.instr.LOAD_q(d) || _module.instr.ADD_q(d));

// Datatype extensional equality declaration
function _module.instr#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.instr.LOADI
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.instr#Equal(a, b), _module.instr.LOADI_q(a) } 
    { _module.instr#Equal(a, b), _module.instr.LOADI_q(b) } 
  _module.instr.LOADI_q(a) && _module.instr.LOADI_q(b)
     ==> (_module.instr#Equal(a, b) <==> _module.instr._h12(a) == _module.instr._h12(b)));

// Datatype extensional equality definition: #_module.instr.LOAD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.instr#Equal(a, b), _module.instr.LOAD_q(a) } 
    { _module.instr#Equal(a, b), _module.instr.LOAD_q(b) } 
  _module.instr.LOAD_q(a) && _module.instr.LOAD_q(b)
     ==> (_module.instr#Equal(a, b)
       <==> Seq#Equal(_module.instr._h13(a), _module.instr._h13(b))));

// Datatype extensional equality definition: #_module.instr.ADD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.instr#Equal(a, b), _module.instr.ADD_q(a) } 
    { _module.instr#Equal(a, b), _module.instr.ADD_q(b) } 
  _module.instr.ADD_q(a) && _module.instr.ADD_q(b) ==> _module.instr#Equal(a, b));

// Datatype extensionality axiom: _module.instr
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.instr#Equal(a, b) } 
  _module.instr#Equal(a, b) <==> a == b);

const unique class._module.instr: ClassName;

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

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$aexp: TyTagFamily;

const unique tytagFamily$bexp: TyTagFamily;

const unique tytagFamily$instr: TyTagFamily;
