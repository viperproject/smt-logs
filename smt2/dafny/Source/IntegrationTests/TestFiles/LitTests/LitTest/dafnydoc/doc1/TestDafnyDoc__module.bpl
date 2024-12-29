// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafnydoc/doc1/TestDafnyDoc.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafnydoc/doc1/TestDafnyDoc-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafnydoc/doc1/TestDafnyDoc.dfy

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

const reveal_TestModule._default.pp: bool;

const unique class._module.__default: ClassName;

function _module.__default.ctop() : int
uses {
axiom _module.__default.ctop(): int == LitInt(131);
// _default.ctop: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.ctop(), TInt);
}

procedure {:verboseName "ctop (well-formedness)"} CheckWellFormed$$_module.__default.ctop();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.ctop: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.ctop(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.ctop(), TInt, $h));

function TestModule_mMInner.__default.ic() : int
uses {
axiom TestModule_mMInner.__default.ic(): int == LitInt(0);
// _default.ic: Type axiom
axiom $Is(TestModule_mMInner.__default.ic(), TInt);
}

// _default.ic: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule_mMInner.__default.ic(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TestModule_mMInner.__default.ic(), TInt, $h));

function TestModule_mMInner.__default.icc() : int
uses {
axiom TestModule_mMInner.__default.icc(): int == LitInt(1);
// _default.icc: Type axiom
axiom $Is(TestModule_mMInner.__default.icc(), TInt);
}

// _default.icc: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule_mMInner.__default.icc(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TestModule_mMInner.__default.icc(), TInt, $h));

// function declaration for TestModule.MInner._default.p
function TestModule_mMInner.__default.p() : bool
uses {
// definition axiom for TestModule_mMInner.__default.p (revealed)
axiom {:id "id153"} TestModule_mMInner.__default.p() == Lit(true);
// definition axiom for TestModule_mMInner.__default.p for all literals (revealed)
axiom {:id "id154"} TestModule_mMInner.__default.p() == Lit(true);
}

function TestModule_mMInner.__default.p#canCall() : bool;

function TestModule_mMInner.__default.p#requires() : bool
uses {
// #requires axiom for TestModule_mMInner.__default.p
axiom TestModule_mMInner.__default.p#requires() == true;
}

// function declaration for TestModule.MInner._default.f
function TestModule_mMInner.__default.f() : int
uses {
// definition axiom for TestModule_mMInner.__default.f (revealed)
axiom {:id "id155"} TestModule_mMInner.__default.f() == LitInt(42 - Mul(LitInt(6), LitInt(7)));
// definition axiom for TestModule_mMInner.__default.f for all literals (revealed)
axiom {:id "id156"} TestModule_mMInner.__default.f() == LitInt(42 - Mul(LitInt(6), LitInt(7)));
}

function TestModule_mMInner.__default.f#canCall() : bool;

function TestModule_mMInner.__default.f#requires() : bool
uses {
// #requires axiom for TestModule_mMInner.__default.f
axiom TestModule_mMInner.__default.f#requires() == true;
}

const unique class.TestModule_mP.__default: ClassName;

const unique class.TestModule_mQ.__default: ClassName;

const class.TestModule__mS.Z.Abs.__default: ClassName;

const unique class.TestModule_mS.__default: ClassName;

const unique class.TestModule.__default: ClassName;

function TestModule.__default.c() : int
uses {
axiom TestModule.__default.c(): int
   == 7 + (if true then 8 else Mul(LitInt(9), LitInt(1)));
// _default.c: Type axiom
axiom $Is(TestModule.__default.c(), TInt);
}

// _default.c: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.c(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TestModule.__default.c(), TInt, $h));

function TestModule.__default.cc() : real
uses {
// _default.cc: Type axiom
axiom $Is(TestModule.__default.cc(), TReal);
}

// _default.cc: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.cc(), TReal, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TestModule.__default.cc(), TReal, $h));

function TestModule.__default.ccc() : bool
uses {
// _default.ccc: Type axiom
axiom $Is(TestModule.__default.ccc(), TBool);
}

// _default.ccc: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.ccc(), TBool, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TestModule.__default.ccc(), TBool, $h));

function TestModule.__default.cccc() : ref
uses {
// _default.cccc: Type axiom
axiom $Is(TestModule.__default.cccc(), Tclass.TestModule.A?());
}

function Tclass.TestModule.A?() : Ty
uses {
// Tclass.TestModule.A? Tag
axiom Tag(Tclass.TestModule.A?()) == Tagclass.TestModule.A?
   && TagFamily(Tclass.TestModule.A?()) == tytagFamily$A;
axiom implements$TestModule.T2(Tclass.TestModule.A?());
}

const unique Tagclass.TestModule.A?: TyTag;

// Box/unbox axiom for Tclass.TestModule.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.A?()) } 
  $IsBox(bx, Tclass.TestModule.A?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.A?()));

// _default.cccc: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.cccc(), Tclass.TestModule.A?(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(TestModule.__default.cccc(), Tclass.TestModule.A?(), $h));

function TestModule.__default.f1() : HandleType
uses {
// _default.f1: Type axiom
axiom $Is(TestModule.__default.f1(), Tclass._System.___hTotalFunc1(TInt, TInt));
}

// _default.f1: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.f1(), Tclass._System.___hTotalFunc1(TInt, TInt), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(TestModule.__default.f1(), Tclass._System.___hTotalFunc1(TInt, TInt), $h));

function TestModule.__default.f2() : HandleType
uses {
// _default.f2: Type axiom
axiom $Is(TestModule.__default.f2(), Tclass._System.___hFunc1(TSet(TInt), TSeq(TInt)));
}

// _default.f2: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.f2(), Tclass._System.___hFunc1(TSet(TInt), TSeq(TInt)), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(TestModule.__default.f2(), Tclass._System.___hFunc1(TSet(TInt), TSeq(TInt)), $h));

function TestModule.__default.f3() : HandleType
uses {
// _default.f3: Type axiom
axiom $Is(TestModule.__default.f3(), 
  Tclass._System.___hPartialFunc1(TBool, Tclass.TestModule.TQ(TInt)));
}

function Tclass.TestModule.TQ(Ty) : Ty;

// _default.f3: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.f3(), 
      Tclass._System.___hPartialFunc1(TBool, Tclass.TestModule.TQ(TInt)), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(TestModule.__default.f3(), 
      Tclass._System.___hPartialFunc1(TBool, Tclass.TestModule.TQ(TInt)), 
      $h));

function TestModule.__default.tup0() : DatatypeType
uses {
// _default.tup0: Type axiom
axiom $Is(TestModule.__default.tup0(), Tclass._System.Tuple0());
}

// _default.tup0: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.tup0(), Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(TestModule.__default.tup0(), Tclass._System.Tuple0(), $h));

function TestModule.__default.tup2() : DatatypeType
uses {
axiom TestModule.__default.tup2(): DatatypeType
   == #_System._tuple#2._#Make2($Box(null), $Box(Lit(Set#Empty(): Set)));
// _default.tup2: Type axiom
axiom $Is(TestModule.__default.tup2(), 
  Tclass._System.Tuple2(Tclass.TestModule.B?(TReal), TSet(TInt)));
}

function Tclass.TestModule.B?(Ty) : Ty
uses {
axiom (forall TestModule.B$Z: Ty :: 
  implements$TestModule.T2(Tclass.TestModule.B?(TestModule.B$Z)));
}

const unique Tagclass.TestModule.B?: TyTag;

// Tclass.TestModule.B? Tag
axiom (forall TestModule.B$Z: Ty :: 
  { Tclass.TestModule.B?(TestModule.B$Z) } 
  Tag(Tclass.TestModule.B?(TestModule.B$Z)) == Tagclass.TestModule.B?
     && TagFamily(Tclass.TestModule.B?(TestModule.B$Z)) == tytagFamily$B);

function Tclass.TestModule.B?_0(Ty) : Ty;

// Tclass.TestModule.B? injectivity 0
axiom (forall TestModule.B$Z: Ty :: 
  { Tclass.TestModule.B?(TestModule.B$Z) } 
  Tclass.TestModule.B?_0(Tclass.TestModule.B?(TestModule.B$Z)) == TestModule.B$Z);

// Box/unbox axiom for Tclass.TestModule.B?
axiom (forall TestModule.B$Z: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.B?(TestModule.B$Z)) } 
  $IsBox(bx, Tclass.TestModule.B?(TestModule.B$Z))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestModule.B?(TestModule.B$Z)));

// _default.tup2: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TestModule.__default.tup2(), 
      Tclass._System.Tuple2(Tclass.TestModule.B?(TReal), TSet(TInt)), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(TestModule.__default.tup2(), 
      Tclass._System.Tuple2(Tclass.TestModule.B?(TReal), TSet(TInt)), 
      $h));

// function declaration for TestModule._default.f
function TestModule.__default.f(r#0: real, x#0: int) : int;

function TestModule.__default.f#canCall(r#0: real, x#0: int) : bool;

// consequence axiom for TestModule.__default.f
axiom (forall r#0: real, x#0: int :: 
  { TestModule.__default.f(r#0, x#0) } 
  TestModule.__default.f(r#0, x#0) == LitInt(42));

function TestModule.__default.f#requires(real, int) : bool;

// #requires axiom for TestModule.__default.f
axiom (forall r#0: real, x#0: int :: 
  { TestModule.__default.f#requires(r#0, x#0) } 
  TestModule.__default.f#requires(r#0, x#0) == true);

// definition axiom for TestModule.__default.f (revealed)
axiom {:id "id157"} (forall r#0: real, x#0: int :: 
  { TestModule.__default.f(r#0, x#0) } 
  TestModule.__default.f(r#0, x#0) == LitInt(42));

// definition axiom for TestModule.__default.f for all literals (revealed)
axiom {:id "id158"} (forall r#0: real, x#0: int :: 
  {:weight 3} { TestModule.__default.f(LitReal(r#0), LitInt(x#0)) } 
  TestModule.__default.f(LitReal(r#0), LitInt(x#0)) == LitInt(42));

// function declaration for TestModule._default.pp
function TestModule.__default.pp($reveal: bool, a#0: ref, x#0: int) : bool;

function TestModule.__default.pp#canCall(a#0: ref, x#0: int) : bool;

// consequence axiom for TestModule.__default.pp
axiom (forall $reveal: bool, a#0: ref, x#0: int :: 
  { TestModule.__default.pp($reveal, a#0, x#0) } 
  TestModule.__default.pp#canCall(a#0, x#0) || $Is(a#0, Tclass.TestModule.A?())
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && TestModule.__default.pp($reveal, a#0, x#0)
         ==> $IsAlloc(a#0, Tclass.TestModule.A?(), $olderHeap)));

function TestModule.__default.pp#requires(ref, int) : bool;

// #requires axiom for TestModule.__default.pp
axiom (forall a#0: ref, x#0: int :: 
  { TestModule.__default.pp#requires(a#0, x#0) } 
  $Is(a#0, Tclass.TestModule.A?())
     ==> TestModule.__default.pp#requires(a#0, x#0) == true);

// definition axiom for TestModule.__default.pp (revealed)
axiom {:id "id159"} (forall a#0: ref, x#0: int :: 
  { TestModule.__default.pp(true, a#0, x#0) } 
  TestModule.__default.pp#canCall(a#0, x#0) || $Is(a#0, Tclass.TestModule.A?())
     ==> TestModule.__default.pp(true, a#0, x#0) == Lit(true));

// definition axiom for TestModule.__default.pp for all literals (revealed)
axiom {:id "id160"} (forall a#0: ref, x#0: int :: 
  {:weight 3} { TestModule.__default.pp(true, Lit(a#0), LitInt(x#0)) } 
  TestModule.__default.pp#canCall(Lit(a#0), LitInt(x#0))
       || $Is(a#0, Tclass.TestModule.A?())
     ==> TestModule.__default.pp(true, Lit(a#0), LitInt(x#0)) == Lit(true));

// function declaration for TestModule._default.fif
function TestModule.__default.fif(z#0: ref) : ref;

function TestModule.__default.fif#canCall(z#0: ref) : bool;

function Tclass.TestModule.A() : Ty
uses {
// Tclass.TestModule.A Tag
axiom Tag(Tclass.TestModule.A()) == Tagclass.TestModule.A
   && TagFamily(Tclass.TestModule.A()) == tytagFamily$A;
}

const unique Tagclass.TestModule.A: TyTag;

// Box/unbox axiom for Tclass.TestModule.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.A()) } 
  $IsBox(bx, Tclass.TestModule.A())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.A()));

// consequence axiom for TestModule.__default.fif
axiom (forall z#0: ref :: 
  { TestModule.__default.fif(z#0) } 
  TestModule.__default.fif#canCall(z#0) || $Is(z#0, Tclass.TestModule.A())
     ==> $Is(TestModule.__default.fif(z#0), Tclass.TestModule.A?()));

// alloc consequence axiom for TestModule.__default.fif
axiom (forall $Heap: Heap, z#0: ref :: 
  { $IsAlloc(TestModule.__default.fif(z#0), Tclass.TestModule.A?(), $Heap) } 
  (TestModule.__default.fif#canCall(z#0)
         || ($Is(z#0, Tclass.TestModule.A()) && $IsAlloc(z#0, Tclass.TestModule.A(), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TestModule.__default.fif(z#0), Tclass.TestModule.A?(), $Heap));

function TestModule.__default.fif#requires(ref) : bool;

// #requires axiom for TestModule.__default.fif
axiom (forall z#0: ref :: 
  { TestModule.__default.fif#requires(z#0) } 
  $Is(z#0, Tclass.TestModule.A())
     ==> TestModule.__default.fif#requires(z#0) == true);

// definition axiom for TestModule.__default.fif (revealed)
axiom {:id "id161"} (forall z#0: ref :: 
  { TestModule.__default.fif(z#0) } 
  TestModule.__default.fif#canCall(z#0) || $Is(z#0, Tclass.TestModule.A())
     ==> TestModule.__default.fif(z#0) == null);

// definition axiom for TestModule.__default.fif for all literals (revealed)
axiom {:id "id162"} (forall z#0: ref :: 
  {:weight 3} { TestModule.__default.fif(Lit(z#0)) } 
  TestModule.__default.fif#canCall(Lit(z#0)) || $Is(z#0, Tclass.TestModule.A())
     ==> TestModule.__default.fif(Lit(z#0)) == null);

// function declaration for TestModule._default.tf
function TestModule.__default.tf($prevHeap: Heap, $heap: Heap, a#0: ref, b#0: ref) : int;

function TestModule.__default.tf#canCall($prevHeap: Heap, $heap: Heap, a#0: ref, b#0: ref) : bool;

// frame axiom for TestModule.__default.tf
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, a#0: ref, b#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TestModule.__default.tf($prevHeap, $h1, a#0, b#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TestModule.__default.tf#canCall($prevHeap, $h0, a#0, b#0)
         || ($Is(a#0, Tclass.TestModule.A()) && $Is(b#0, Tclass.TestModule.A())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TestModule.__default.tf($prevHeap, $h0, a#0, b#0)
       == TestModule.__default.tf($prevHeap, $h1, a#0, b#0));

function TestModule.__default.tf#requires(Heap, Heap, ref, ref) : bool;

// #requires axiom for TestModule.__default.tf
axiom (forall $prevHeap: Heap, $Heap: Heap, a#0: ref, b#0: ref :: 
  { TestModule.__default.tf#requires($prevHeap, $Heap, a#0, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(a#0, Tclass.TestModule.A())
       && $Is(b#0, Tclass.TestModule.A())
     ==> TestModule.__default.tf#requires($prevHeap, $Heap, a#0, b#0)
       == $IsAlloc(a#0, Tclass.TestModule.A(), $prevHeap));

// definition axiom for TestModule.__default.tf (revealed)
axiom {:id "id163"} (forall $prevHeap: Heap, $Heap: Heap, a#0: ref, b#0: ref :: 
  { TestModule.__default.tf($prevHeap, $Heap, a#0, b#0), $IsGoodHeap($Heap) } 
  TestModule.__default.tf#canCall($prevHeap, $Heap, a#0, b#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(a#0, Tclass.TestModule.A())
         && $Is(b#0, Tclass.TestModule.A()))
     ==> TestModule.__default.tf($prevHeap, $Heap, a#0, b#0)
       == LitInt(42 - Mul(LitInt(6), LitInt(7))));

// definition axiom for TestModule.__default.tf for all literals (revealed)
axiom {:id "id164"} (forall $prevHeap: Heap, $Heap: Heap, a#0: ref, b#0: ref :: 
  {:weight 3} { TestModule.__default.tf($prevHeap, $Heap, Lit(a#0), Lit(b#0)), $IsGoodHeap($Heap) } 
  TestModule.__default.tf#canCall($prevHeap, $Heap, Lit(a#0), Lit(b#0))
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(a#0, Tclass.TestModule.A())
         && $Is(b#0, Tclass.TestModule.A()))
     ==> TestModule.__default.tf($prevHeap, $Heap, Lit(a#0), Lit(b#0))
       == LitInt(42 - Mul(LitInt(6), LitInt(7))));

// function declaration for TestModule._default.p
function TestModule.__default.p() : bool
uses {
// consequence axiom for TestModule.__default.p
axiom Lit(TestModule.__default.p()) == Lit(true);
// definition axiom for TestModule.__default.p (revealed)
axiom {:id "id165"} TestModule.__default.p() == Lit(true);
// definition axiom for TestModule.__default.p for all literals (revealed)
axiom {:id "id166"} TestModule.__default.p() == Lit(true);
}

function TestModule.__default.p#canCall() : bool;

function TestModule.__default.p#requires() : bool
uses {
// #requires axiom for TestModule.__default.p
axiom TestModule.__default.p#requires() == true;
}

// function declaration for TestModule._default.pf
function TestModule.__default.pf() : bool
uses {
// consequence axiom for TestModule.__default.pf
axiom TestModule.__default.pp(reveal_TestModule._default.pp, null, LitInt(1))
   == Lit(true);
// definition axiom for TestModule.__default.pf (revealed)
axiom {:id "id167"} TestModule.__default.pf() == Lit(true);
// definition axiom for TestModule.__default.pf for all literals (revealed)
axiom {:id "id168"} TestModule.__default.pf() == Lit(true);
}

function TestModule.__default.pf#canCall() : bool;

function TestModule.__default.pf#requires() : bool
uses {
// #requires axiom for TestModule.__default.pf
axiom TestModule.__default.pf#requires() == true;
}

// function declaration for TestModule._default.ppp
function TestModule.__default.ppp(s#0: Seq, ss#0: Set, mm#0: Map) : bool;

function TestModule.__default.ppp#canCall(s#0: Seq, ss#0: Set, mm#0: Map) : bool;

function TestModule.__default.ppp#requires(Seq, Set, Map) : bool;

// #requires axiom for TestModule.__default.ppp
axiom (forall s#0: Seq, ss#0: Set, mm#0: Map :: 
  { TestModule.__default.ppp#requires(s#0, ss#0, mm#0) } 
  $Is(s#0, TSeq(TInt))
       && $Is(ss#0, TSet(Tclass.TestModule.A?()))
       && $Is(mm#0, TMap(TSet(Tclass.TestModule.A()), TSeq(TSet(Tclass.TestModule.A?()))))
     ==> TestModule.__default.ppp#requires(s#0, ss#0, mm#0) == true);

// definition axiom for TestModule.__default.ppp (revealed)
axiom {:id "id169"} (forall s#0: Seq, ss#0: Set, mm#0: Map :: 
  { TestModule.__default.ppp(s#0, ss#0, mm#0) } 
  TestModule.__default.ppp#canCall(s#0, ss#0, mm#0)
       || (
        $Is(s#0, TSeq(TInt))
         && $Is(ss#0, TSet(Tclass.TestModule.A?()))
         && $Is(mm#0, TMap(TSet(Tclass.TestModule.A()), TSeq(TSet(Tclass.TestModule.A?())))))
     ==> TestModule.__default.ppp(s#0, ss#0, mm#0) == Lit(true));

// definition axiom for TestModule.__default.ppp for all literals (revealed)
axiom {:id "id170"} (forall s#0: Seq, ss#0: Set, mm#0: Map :: 
  {:weight 3} { TestModule.__default.ppp(Lit(s#0), Lit(ss#0), Lit(mm#0)) } 
  TestModule.__default.ppp#canCall(Lit(s#0), Lit(ss#0), Lit(mm#0))
       || (
        $Is(s#0, TSeq(TInt))
         && $Is(ss#0, TSet(Tclass.TestModule.A?()))
         && $Is(mm#0, TMap(TSet(Tclass.TestModule.A()), TSeq(TSet(Tclass.TestModule.A?())))))
     ==> TestModule.__default.ppp(Lit(s#0), Lit(ss#0), Lit(mm#0)) == Lit(true));

// function declaration for TestModule._default.lp
function TestModule.__default.lp() : bool
uses {
// definition axiom for TestModule.__default.lp (revealed)
axiom {:id "id171"} TestModule.__default.lp() == Lit(false);
}

function TestModule.__default.lp#canCall() : bool;

function TestModule.__default.lp#requires() : bool
uses {
// #requires axiom for TestModule.__default.lp
axiom TestModule.__default.lp#requires() == true;
}

// 1st prefix predicate axiom for TestModule.__default.lp_h
axiom (forall  :: 
  { TestModule.__default.lp() } 
  TestModule.__default.lp()
     ==> (exists _k#0: Box :: 
      { TestModule.__default.lp_h(_k#0) } 
      TestModule.__default.lp_h(_k#0)));

// 2nd prefix predicate axiom
axiom (forall  :: 
  { TestModule.__default.lp() } 
  (exists _k#0: Box :: 
      { TestModule.__default.lp_h(_k#0) } 
      TestModule.__default.lp_h(_k#0))
     ==> TestModule.__default.lp());

// 3rd prefix predicate axiom
axiom (forall _k#0: Box :: 
  { TestModule.__default.lp_h(_k#0) } 
  _k#0 == ORD#FromNat(0) ==> !TestModule.__default.lp_h(_k#0));

// targeted prefix predicate monotonicity axiom
axiom (forall _k#0: Box, _m: Box, _limit: Box :: 
  { TestModule.__default.lp_h(_k#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
  ORD#Less(_k#0, _m)
     ==> 
    TestModule.__default.lp_h(_k#0)
     ==> TestModule.__default.lp_h(_m));

// function declaration for TestModule._default.lp#
function TestModule.__default.lp_h(_k#0: Box) : bool;

function TestModule.__default.lp_h#canCall(_k#0: Box) : bool;

function TestModule.__default.lp_h#requires(Box) : bool;

// #requires axiom for TestModule.__default.lp_h
axiom (forall _k#0: Box :: 
  { TestModule.__default.lp_h#requires(_k#0) } 
  TestModule.__default.lp_h#requires(_k#0) == true);

// definition axiom for TestModule.__default.lp_h (revealed)
axiom {:id "id172"} (forall _k#0: Box :: 
  { TestModule.__default.lp_h(_k#0) } 
  (
      (0 < ORD#Offset(_k#0)
       ==> false)
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#2: Box :: 
        { TestModule.__default.lp_h(_k'#2) } 
        ORD#LessThanLimit(_k'#2, _k#0) ==> TestModule.__default.lp_h#canCall(_k'#2)))
     && TestModule.__default.lp_h(_k#0)
       == ((0 < ORD#Offset(_k#0) ==> false)
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#2: Box :: 
            { TestModule.__default.lp_h(_k'#2) } 
            ORD#LessThanLimit(_k'#2, _k#0) && TestModule.__default.lp_h(_k'#2)))));

// definition axiom for TestModule.__default.lp_h for all literals (revealed)
axiom {:id "id173"} (forall _k#0: Box :: 
  {:weight 3} { TestModule.__default.lp_h(Lit(_k#0)) } 
  (
      (0 < ORD#Offset(_k#0)
       ==> false)
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#3: Box :: 
        { TestModule.__default.lp_h(_k'#3) } 
        ORD#LessThanLimit(_k'#3, _k#0) ==> TestModule.__default.lp_h#canCall(_k'#3)))
     && TestModule.__default.lp_h(Lit(_k#0))
       == ((0 < ORD#Offset(_k#0) ==> false)
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#3: Box :: 
            { TestModule.__default.lp_h(_k'#3) } 
            ORD#LessThanLimit(_k'#3, _k#0) && TestModule.__default.lp_h(_k'#3)))));

const unique class.TestModule.T: ClassName;

function Tclass.TestModule.T() : Ty;

procedure {:verboseName "TestModule.T.m (well-formedness)"} CheckWellFormed$$TestModule.T.m(this: Box
       where $IsBox(this, Tclass.TestModule.T())
         && $IsAllocBox(this, Tclass.TestModule.T(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestModule.T.m (call)"} Call$$TestModule.T.m(this: Box
       where $IsBox(this, Tclass.TestModule.T())
         && $IsAllocBox(this, Tclass.TestModule.T(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TestModule.TQ: ClassName;

// Constructor function declaration
function #TestModule.D.A(Box) : DatatypeType;

const unique ##TestModule.D.A: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #TestModule.D.A(a#0#0#0) } 
  DatatypeCtorId(#TestModule.D.A(a#0#0#0)) == ##TestModule.D.A);
}

function TestModule.D.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule.D.A_q(d) } 
  TestModule.D.A_q(d) <==> DatatypeCtorId(d) == ##TestModule.D.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule.D.A_q(d) } 
  TestModule.D.A_q(d) ==> (exists a#1#0#0: Box :: d == #TestModule.D.A(a#1#0#0)));

function Tclass.TestModule.D(Ty) : Ty;

const unique Tagclass.TestModule.D: TyTag;

// Tclass.TestModule.D Tag
axiom (forall TestModule.D$Q: Ty :: 
  { Tclass.TestModule.D(TestModule.D$Q) } 
  Tag(Tclass.TestModule.D(TestModule.D$Q)) == Tagclass.TestModule.D
     && TagFamily(Tclass.TestModule.D(TestModule.D$Q)) == tytagFamily$D);

function Tclass.TestModule.D_0(Ty) : Ty;

// Tclass.TestModule.D injectivity 0
axiom (forall TestModule.D$Q: Ty :: 
  { Tclass.TestModule.D(TestModule.D$Q) } 
  Tclass.TestModule.D_0(Tclass.TestModule.D(TestModule.D$Q)) == TestModule.D$Q);

// Box/unbox axiom for Tclass.TestModule.D
axiom (forall TestModule.D$Q: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.D(TestModule.D$Q)) } 
  $IsBox(bx, Tclass.TestModule.D(TestModule.D$Q))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestModule.D(TestModule.D$Q)));

// Constructor $Is
axiom (forall TestModule.D$Q: Ty, a#2#0#0: Box :: 
  { $Is(#TestModule.D.A(a#2#0#0), Tclass.TestModule.D(TestModule.D$Q)) } 
  $Is(#TestModule.D.A(a#2#0#0), Tclass.TestModule.D(TestModule.D$Q))
     <==> $IsBox(a#2#0#0, TestModule.D$Q));

// Constructor $IsAlloc
axiom (forall TestModule.D$Q: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#TestModule.D.A(a#2#0#0), Tclass.TestModule.D(TestModule.D$Q), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TestModule.D.A(a#2#0#0), Tclass.TestModule.D(TestModule.D$Q), $h)
       <==> $IsAllocBox(a#2#0#0, TestModule.D$Q, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TestModule.D$Q: Ty, $h: Heap :: 
  { $IsAllocBox(TestModule.D.q(d), TestModule.D$Q, $h) } 
  $IsGoodHeap($h)
       && 
      TestModule.D.A_q(d)
       && $IsAlloc(d, Tclass.TestModule.D(TestModule.D$Q), $h)
     ==> $IsAllocBox(TestModule.D.q(d), TestModule.D$Q, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #TestModule.D.A(Lit(a#3#0#0)) } 
  #TestModule.D.A(Lit(a#3#0#0)) == Lit(#TestModule.D.A(a#3#0#0)));

function TestModule.D.q(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #TestModule.D.A(a#4#0#0) } 
  TestModule.D.q(#TestModule.D.A(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #TestModule.D.A(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#TestModule.D.A(a#5#0#0)));

// Constructor function declaration
function #TestModule.D.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.D.B()) == ##TestModule.D.B;
// Constructor literal
axiom #TestModule.D.B() == Lit(#TestModule.D.B());
}

const unique ##TestModule.D.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.D.B()) == ##TestModule.D.B;
}

function TestModule.D.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule.D.B_q(d) } 
  TestModule.D.B_q(d) <==> DatatypeCtorId(d) == ##TestModule.D.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule.D.B_q(d) } 
  TestModule.D.B_q(d) ==> d == #TestModule.D.B());

// Constructor $Is
axiom (forall TestModule.D$Q: Ty :: 
  { $Is(#TestModule.D.B(), Tclass.TestModule.D(TestModule.D$Q)) } 
  $Is(#TestModule.D.B(), Tclass.TestModule.D(TestModule.D$Q)));

// Constructor $IsAlloc
axiom (forall TestModule.D$Q: Ty, $h: Heap :: 
  { $IsAlloc(#TestModule.D.B(), Tclass.TestModule.D(TestModule.D$Q), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TestModule.D.B(), Tclass.TestModule.D(TestModule.D$Q), $h));

// Depth-one case-split function
function $IsA#TestModule.D(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestModule.D(d) } 
  $IsA#TestModule.D(d) ==> TestModule.D.A_q(d) || TestModule.D.B_q(d));

// Questionmark data type disjunctivity
axiom (forall TestModule.D$Q: Ty, d: DatatypeType :: 
  { TestModule.D.B_q(d), $Is(d, Tclass.TestModule.D(TestModule.D$Q)) } 
    { TestModule.D.A_q(d), $Is(d, Tclass.TestModule.D(TestModule.D$Q)) } 
  $Is(d, Tclass.TestModule.D(TestModule.D$Q))
     ==> TestModule.D.A_q(d) || TestModule.D.B_q(d));

// Datatype extensional equality declaration
function TestModule.D#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TestModule.D.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule.D#Equal(a, b), TestModule.D.A_q(a) } 
    { TestModule.D#Equal(a, b), TestModule.D.A_q(b) } 
  TestModule.D.A_q(a) && TestModule.D.A_q(b)
     ==> (TestModule.D#Equal(a, b) <==> TestModule.D.q(a) == TestModule.D.q(b)));

// Datatype extensional equality definition: #TestModule.D.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule.D#Equal(a, b), TestModule.D.B_q(a) } 
    { TestModule.D#Equal(a, b), TestModule.D.B_q(b) } 
  TestModule.D.B_q(a) && TestModule.D.B_q(b) ==> TestModule.D#Equal(a, b));

// Datatype extensionality axiom: TestModule.D
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule.D#Equal(a, b) } 
  TestModule.D#Equal(a, b) <==> a == b);

const unique class.TestModule.D: ClassName;

// Constructor function declaration
function #TestModule.CD.Y() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.CD.Y()) == ##TestModule.CD.Y;
}

const unique ##TestModule.CD.Y: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.CD.Y()) == ##TestModule.CD.Y;
}

function TestModule.CD.Y_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule.CD.Y_q(d) } 
  TestModule.CD.Y_q(d) <==> DatatypeCtorId(d) == ##TestModule.CD.Y);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule.CD.Y_q(d) } 
  TestModule.CD.Y_q(d) ==> d == #TestModule.CD.Y());

function Tclass.TestModule.CD(Ty) : Ty;

const unique Tagclass.TestModule.CD: TyTag;

// Tclass.TestModule.CD Tag
axiom (forall TestModule.CD$Q: Ty :: 
  { Tclass.TestModule.CD(TestModule.CD$Q) } 
  Tag(Tclass.TestModule.CD(TestModule.CD$Q)) == Tagclass.TestModule.CD
     && TagFamily(Tclass.TestModule.CD(TestModule.CD$Q)) == tytagFamily$CD);

function Tclass.TestModule.CD_0(Ty) : Ty;

// Tclass.TestModule.CD injectivity 0
axiom (forall TestModule.CD$Q: Ty :: 
  { Tclass.TestModule.CD(TestModule.CD$Q) } 
  Tclass.TestModule.CD_0(Tclass.TestModule.CD(TestModule.CD$Q)) == TestModule.CD$Q);

// Box/unbox axiom for Tclass.TestModule.CD
axiom (forall TestModule.CD$Q: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.CD(TestModule.CD$Q)) } 
  $IsBox(bx, Tclass.TestModule.CD(TestModule.CD$Q))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestModule.CD(TestModule.CD$Q)));

// Constructor $Is
axiom (forall TestModule.CD$Q: Ty :: 
  { $Is(#TestModule.CD.Y(), Tclass.TestModule.CD(TestModule.CD$Q)) } 
  $Is(#TestModule.CD.Y(), Tclass.TestModule.CD(TestModule.CD$Q)));

// Constructor $IsAlloc
axiom (forall TestModule.CD$Q: Ty, $h: Heap :: 
  { $IsAlloc(#TestModule.CD.Y(), Tclass.TestModule.CD(TestModule.CD$Q), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TestModule.CD.Y(), Tclass.TestModule.CD(TestModule.CD$Q), $h));

// Constructor function declaration
function #TestModule.CD.Z() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.CD.Z()) == ##TestModule.CD.Z;
}

const unique ##TestModule.CD.Z: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.CD.Z()) == ##TestModule.CD.Z;
}

function TestModule.CD.Z_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule.CD.Z_q(d) } 
  TestModule.CD.Z_q(d) <==> DatatypeCtorId(d) == ##TestModule.CD.Z);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule.CD.Z_q(d) } 
  TestModule.CD.Z_q(d) ==> d == #TestModule.CD.Z());

// Constructor $Is
axiom (forall TestModule.CD$Q: Ty :: 
  { $Is(#TestModule.CD.Z(), Tclass.TestModule.CD(TestModule.CD$Q)) } 
  $Is(#TestModule.CD.Z(), Tclass.TestModule.CD(TestModule.CD$Q)));

// Constructor $IsAlloc
axiom (forall TestModule.CD$Q: Ty, $h: Heap :: 
  { $IsAlloc(#TestModule.CD.Z(), Tclass.TestModule.CD(TestModule.CD$Q), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TestModule.CD.Z(), Tclass.TestModule.CD(TestModule.CD$Q), $h));

// Constructor function declaration
function #TestModule.CD.G() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.CD.G()) == ##TestModule.CD.G;
}

const unique ##TestModule.CD.G: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule.CD.G()) == ##TestModule.CD.G;
}

function TestModule.CD.G_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule.CD.G_q(d) } 
  TestModule.CD.G_q(d) <==> DatatypeCtorId(d) == ##TestModule.CD.G);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule.CD.G_q(d) } 
  TestModule.CD.G_q(d) ==> d == #TestModule.CD.G());

// Constructor $Is
axiom (forall TestModule.CD$Q: Ty :: 
  { $Is(#TestModule.CD.G(), Tclass.TestModule.CD(TestModule.CD$Q)) } 
  $Is(#TestModule.CD.G(), Tclass.TestModule.CD(TestModule.CD$Q)));

// Constructor $IsAlloc
axiom (forall TestModule.CD$Q: Ty, $h: Heap :: 
  { $IsAlloc(#TestModule.CD.G(), Tclass.TestModule.CD(TestModule.CD$Q), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TestModule.CD.G(), Tclass.TestModule.CD(TestModule.CD$Q), $h));

// Depth-one case-split function
function $IsA#TestModule.CD(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestModule.CD(d) } 
  $IsA#TestModule.CD(d)
     ==> TestModule.CD.Y_q(d) || TestModule.CD.Z_q(d) || TestModule.CD.G_q(d));

// Questionmark data type disjunctivity
axiom (forall TestModule.CD$Q: Ty, d: DatatypeType :: 
  { TestModule.CD.G_q(d), $Is(d, Tclass.TestModule.CD(TestModule.CD$Q)) } 
    { TestModule.CD.Z_q(d), $Is(d, Tclass.TestModule.CD(TestModule.CD$Q)) } 
    { TestModule.CD.Y_q(d), $Is(d, Tclass.TestModule.CD(TestModule.CD$Q)) } 
  $Is(d, Tclass.TestModule.CD(TestModule.CD$Q))
     ==> TestModule.CD.Y_q(d) || TestModule.CD.Z_q(d) || TestModule.CD.G_q(d));

function $Eq#TestModule.CD(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.TestModule.CD(TestModule.CD$Q#l))
       && $Is(d1, Tclass.TestModule.CD(TestModule.CD$Q#r))
     ==> ($Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1)
       <==> (TestModule.CD.Y_q(d0) && TestModule.CD.Y_q(d1))
         || (TestModule.CD.Z_q(d0) && TestModule.CD.Z_q(d1))
         || (TestModule.CD.G_q(d0) && TestModule.CD.G_q(d1))));

// Unbump layer co-equality axiom
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1) } 
  $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1)
     <==> $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1) } 
  $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#TestModule.CD(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.TestModule.CD(TestModule.CD$Q#l))
       && $Is(d1, Tclass.TestModule.CD(TestModule.CD$Q#r))
     ==> ($PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (TestModule.CD.Y_q(d0) && TestModule.CD.Y_q(d1))
             || (TestModule.CD.Z_q(d0) && TestModule.CD.Z_q(d1))
             || (TestModule.CD.G_q(d0) && TestModule.CD.G_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1) } 
  $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1), $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall TestModule.CD$Q#l: Ty, 
    TestModule.CD$Q#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#TestModule.CD(TestModule.CD$Q#l, TestModule.CD$Q#r, k, $LS(ly), d0, d1));

const unique class.TestModule.CD: ClassName;

const unique class.TestModule.WW: ClassName;

function Tclass.TestModule.Small() : Ty
uses {
// Tclass.TestModule.Small Tag
axiom Tag(Tclass.TestModule.Small()) == Tagclass.TestModule.Small
   && TagFamily(Tclass.TestModule.Small()) == tytagFamily$Small;
}

const unique Tagclass.TestModule.Small: TyTag;

// Box/unbox axiom for Tclass.TestModule.Small
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.Small()) } 
  $IsBox(bx, Tclass.TestModule.Small())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule.Small()));

// $Is axiom for subset type TestModule.Small
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TestModule.Small()) } 
  $Is(x#0, Tclass.TestModule.Small()) <==> LitInt(0) <= x#0 && x#0 < 100);

// $IsAlloc axiom for subset type TestModule.Small
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TestModule.Small(), $h) } 
  $IsAlloc(x#0, Tclass.TestModule.Small(), $h));

function Tclass.TestModule.SmallW() : Ty
uses {
// Tclass.TestModule.SmallW Tag
axiom Tag(Tclass.TestModule.SmallW()) == Tagclass.TestModule.SmallW
   && TagFamily(Tclass.TestModule.SmallW()) == tytagFamily$SmallW;
}

const unique Tagclass.TestModule.SmallW: TyTag;

// Box/unbox axiom for Tclass.TestModule.SmallW
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.SmallW()) } 
  $IsBox(bx, Tclass.TestModule.SmallW())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule.SmallW()));

// $Is axiom for subset type TestModule.SmallW
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TestModule.SmallW()) } 
  $Is(x#0, Tclass.TestModule.SmallW()) <==> LitInt(0) <= x#0 && x#0 < 100);

// $IsAlloc axiom for subset type TestModule.SmallW
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TestModule.SmallW(), $h) } 
  $IsAlloc(x#0, Tclass.TestModule.SmallW(), $h));

function Tclass.TestModule.SmallS() : Ty
uses {
// Tclass.TestModule.SmallS Tag
axiom Tag(Tclass.TestModule.SmallS()) == Tagclass.TestModule.SmallS
   && TagFamily(Tclass.TestModule.SmallS()) == tytagFamily$SmallS;
}

const unique Tagclass.TestModule.SmallS: TyTag;

// Box/unbox axiom for Tclass.TestModule.SmallS
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.SmallS()) } 
  $IsBox(bx, Tclass.TestModule.SmallS())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule.SmallS()));

// $Is axiom for subset type TestModule.SmallS
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TestModule.SmallS()) } 
  $Is(x#0, Tclass.TestModule.SmallS()) <==> LitInt(0) <= x#0 && x#0 < 100);

// $IsAlloc axiom for subset type TestModule.SmallS
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TestModule.SmallS(), $h) } 
  $IsAlloc(x#0, Tclass.TestModule.SmallS(), $h));

function Tclass.TestModule.Smaller() : Ty
uses {
// Tclass.TestModule.Smaller Tag
axiom Tag(Tclass.TestModule.Smaller()) == Tagclass.TestModule.Smaller
   && TagFamily(Tclass.TestModule.Smaller()) == tytagFamily$Smaller;
}

const unique Tagclass.TestModule.Smaller: TyTag;

// Box/unbox axiom for Tclass.TestModule.Smaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.Smaller()) } 
  $IsBox(bx, Tclass.TestModule.Smaller())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule.Smaller()));

// $Is axiom for newtype TestModule.Smaller
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TestModule.Smaller()) } 
  $Is(x#0, Tclass.TestModule.Smaller()) <==> LitInt(0) <= x#0 && x#0 < 10);

// $IsAlloc axiom for newtype TestModule.Smaller
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TestModule.Smaller(), $h) } 
  $IsAlloc(x#0, Tclass.TestModule.Smaller(), $h));

const unique class.TestModule.Smaller: ClassName;

function Tclass.TestModule.Dup() : Ty
uses {
// Tclass.TestModule.Dup Tag
axiom Tag(Tclass.TestModule.Dup()) == Tagclass.TestModule.Dup
   && TagFamily(Tclass.TestModule.Dup()) == tytagFamily$Dup;
}

const unique Tagclass.TestModule.Dup: TyTag;

// Box/unbox axiom for Tclass.TestModule.Dup
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.Dup()) } 
  $IsBox(bx, Tclass.TestModule.Dup())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule.Dup()));

// $Is axiom for newtype TestModule.Dup
axiom (forall c8#0: int :: 
  { $Is(c8#0, Tclass.TestModule.Dup()) } 
  $Is(c8#0, Tclass.TestModule.Dup()) <==> Lit(true));

// $IsAlloc axiom for newtype TestModule.Dup
axiom (forall c9#0: int, $h: Heap :: 
  { $IsAlloc(c9#0, Tclass.TestModule.Dup(), $h) } 
  $IsAlloc(c9#0, Tclass.TestModule.Dup(), $h));

const unique class.TestModule.Dup: ClassName;

// function declaration for TestModule.Dup.IsEven
function TestModule.Dup.IsEven(this: int) : bool;

function TestModule.Dup.IsEven#canCall(this: int) : bool;

function TestModule.Dup.IsEven#requires(int) : bool;

// #requires axiom for TestModule.Dup.IsEven
axiom (forall this: int :: 
  { TestModule.Dup.IsEven#requires(this) } 
  Lit(true) ==> TestModule.Dup.IsEven#requires(this) == true);

// definition axiom for TestModule.Dup.IsEven (revealed)
axiom {:id "id174"} (forall this: int :: 
  { TestModule.Dup.IsEven(this) } 
  TestModule.Dup.IsEven#canCall(this) || Lit(true)
     ==> TestModule.Dup.IsEven(this) == (Mod(this, LitInt(2)) == LitInt(0)));

// definition axiom for TestModule.Dup.IsEven for all literals (revealed)
axiom {:id "id175"} (forall this: int :: 
  {:weight 3} { TestModule.Dup.IsEven(LitInt(this)) } 
  TestModule.Dup.IsEven#canCall(LitInt(this)) || Lit(true)
     ==> TestModule.Dup.IsEven(LitInt(this))
       == 
      (LitInt(Mod(this, LitInt(2)))
       == LitInt(0)));

function Tclass.TestModule.Size() : Ty
uses {
// Tclass.TestModule.Size Tag
axiom Tag(Tclass.TestModule.Size()) == Tagclass.TestModule.Size
   && TagFamily(Tclass.TestModule.Size()) == tytagFamily$Size;
}

const unique Tagclass.TestModule.Size: TyTag;

// Box/unbox axiom for Tclass.TestModule.Size
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.Size()) } 
  $IsBox(bx, Tclass.TestModule.Size())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule.Size()));

// $Is axiom for newtype TestModule.Size
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TestModule.Size()) } 
  $Is(x#0, Tclass.TestModule.Size()) <==> LitInt(0) <= x#0 && x#0 < 1000);

// $IsAlloc axiom for newtype TestModule.Size
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TestModule.Size(), $h) } 
  $IsAlloc(x#0, Tclass.TestModule.Size(), $h));

const unique class.TestModule.Size: ClassName;

const unique class.TestModule.Gen?: ClassName;

function Tclass.TestModule.Gen?() : Ty
uses {
// Tclass.TestModule.Gen? Tag
axiom Tag(Tclass.TestModule.Gen?()) == Tagclass.TestModule.Gen?
   && TagFamily(Tclass.TestModule.Gen?()) == tytagFamily$Gen;
}

const unique Tagclass.TestModule.Gen?: TyTag;

// Box/unbox axiom for Tclass.TestModule.Gen?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.Gen?()) } 
  $IsBox(bx, Tclass.TestModule.Gen?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.Gen?()));

// $Is axiom for iterator Gen
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.Gen?()) } 
  $Is($o, Tclass.TestModule.Gen?())
     <==> $o == null || dtype($o) == Tclass.TestModule.Gen?());

// $IsAlloc axiom for iterator Gen
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.Gen?(), $h) } 
  $IsAlloc($o, Tclass.TestModule.Gen?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function TestModule.Gen.start(ref) : int;

// Gen.start: Type axiom
axiom (forall $o: ref :: 
  { TestModule.Gen.start($o) } 
  $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is(TestModule.Gen.start($o), TInt));

// Gen.start: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { TestModule.Gen.start($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TestModule.Gen.start($o), TInt, $h));

const TestModule.Gen.x: Field
uses {
axiom FDim(TestModule.Gen.x) == 0
   && FieldOfDecl(class.TestModule.Gen?, field$x) == TestModule.Gen.x
   && !$IsGhostField(TestModule.Gen.x);
}

// Gen.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.Gen.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is($Unbox(read($h, $o, TestModule.Gen.x)): int, TInt));

// Gen.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.Gen.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestModule.Gen.x)): int, TInt, $h));

const TestModule.Gen.xs: Field
uses {
axiom FDim(TestModule.Gen.xs) == 0
   && FieldOfDecl(class.TestModule.Gen?, field$xs) == TestModule.Gen.xs
   && $IsGhostField(TestModule.Gen.xs);
}

// Gen.xs: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.Gen.xs)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is($Unbox(read($h, $o, TestModule.Gen.xs)): Seq, TSeq(TInt)));

// Gen.xs: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.Gen.xs)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestModule.Gen.xs)): Seq, TSeq(TInt), $h));

function TestModule.Gen.__reads(ref) : Set;

// Gen._reads: Type axiom
axiom (forall $o: ref :: 
  { TestModule.Gen.__reads($o) } 
  $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is(TestModule.Gen.__reads($o), TSet(Tclass._System.object?())));

// Gen._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { TestModule.Gen.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TestModule.Gen.__reads($o), TSet(Tclass._System.object?()), $h));

function TestModule.Gen.__modifies(ref) : Set;

// Gen._modifies: Type axiom
axiom (forall $o: ref :: 
  { TestModule.Gen.__modifies($o) } 
  $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is(TestModule.Gen.__modifies($o), TSet(Tclass._System.object?())));

// Gen._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { TestModule.Gen.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TestModule.Gen.__modifies($o), TSet(Tclass._System.object?()), $h));

const TestModule.Gen.__new: Field
uses {
axiom FDim(TestModule.Gen.__new) == 0
   && FieldOfDecl(class.TestModule.Gen?, field$_new) == TestModule.Gen.__new
   && $IsGhostField(TestModule.Gen.__new);
}

// Gen._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.Gen.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is($Unbox(read($h, $o, TestModule.Gen.__new)): Set, TSet(Tclass._System.object?())));

// Gen._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.Gen.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestModule.Gen.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function TestModule.Gen.__decreases0(ref) : int;

// Gen._decreases0: Type axiom
axiom (forall $o: ref :: 
  { TestModule.Gen.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.TestModule.Gen?()
     ==> $Is(TestModule.Gen.__decreases0($o), TInt));

// Gen._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { TestModule.Gen.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.Gen?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TestModule.Gen.__decreases0($o), TInt, $h));

// function declaration for TestModule.Gen.Valid
function TestModule.Gen.Valid($heap: Heap, this: ref) : bool;

function TestModule.Gen.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.TestModule.Gen() : Ty
uses {
// Tclass.TestModule.Gen Tag
axiom Tag(Tclass.TestModule.Gen()) == Tagclass.TestModule.Gen
   && TagFamily(Tclass.TestModule.Gen()) == tytagFamily$Gen;
}

const unique Tagclass.TestModule.Gen: TyTag;

// Box/unbox axiom for Tclass.TestModule.Gen
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.Gen()) } 
  $IsBox(bx, Tclass.TestModule.Gen())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.Gen()));

// frame axiom for TestModule.Gen.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TestModule.Gen.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.TestModule.Gen())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(TestModule.Gen.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, TestModule.Gen.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TestModule.Gen.Valid($h0, this) == TestModule.Gen.Valid($h1, this));

function TestModule.Gen.Valid#requires(Heap, ref) : bool;

// #requires axiom for TestModule.Gen.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { TestModule.Gen.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.TestModule.Gen())
       && $IsAlloc(this, Tclass.TestModule.Gen(), $Heap)
     ==> TestModule.Gen.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type TestModule.Gen
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestModule.Gen()) } { $Is(c#0, Tclass.TestModule.Gen?()) } 
  $Is(c#0, Tclass.TestModule.Gen())
     <==> $Is(c#0, Tclass.TestModule.Gen?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestModule.Gen
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestModule.Gen(), $h) } 
    { $IsAlloc(c#0, Tclass.TestModule.Gen?(), $h) } 
  $IsAlloc(c#0, Tclass.TestModule.Gen(), $h)
     <==> $IsAlloc(c#0, Tclass.TestModule.Gen?(), $h));

procedure {:verboseName "TestModule.Gen (well-formedness)"} CheckWellFormed$$TestModule.Gen(this: ref
       where this != null
         && 
        $Is(this, Tclass.TestModule.Gen())
         && $IsAlloc(this, Tclass.TestModule.Gen(), $Heap), 
    start#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.TestModule.A?: ClassName;

// $Is axiom for class A
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.A?()) } 
  $Is($o, Tclass.TestModule.A?())
     <==> $o == null || dtype($o) == Tclass.TestModule.A?());

// $IsAlloc axiom for class A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.A?(), $h) } 
  $IsAlloc($o, Tclass.TestModule.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const TestModule.A.j: Field
uses {
axiom FDim(TestModule.A.j) == 0
   && FieldOfDecl(class.TestModule.A?, field$j) == TestModule.A.j
   && !$IsGhostField(TestModule.A.j);
}

// A.j: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.A.j)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TestModule.A?()
     ==> $Is($Unbox(read($h, $o, TestModule.A.j)): int, TInt));

// A.j: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.A.j)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestModule.A.j)): int, TInt, $h));

const TestModule.A.k: Field
uses {
axiom FDim(TestModule.A.k) == 0
   && FieldOfDecl(class.TestModule.A?, field$k) == TestModule.A.k
   && $IsGhostField(TestModule.A.k);
}

// A.k: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.A.k)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TestModule.A?()
     ==> $Is($Unbox(read($h, $o, TestModule.A.k)): DatatypeType, Tclass.TestModule.D(TInt)));

// A.k: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.A.k)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestModule.A.k)): DatatypeType, 
      Tclass.TestModule.D(TInt), 
      $h));

function TestModule.A.c(this: ref) : int;

// A.c: Type axiom
axiom (forall $o: ref :: 
  { TestModule.A.c($o) } 
  $o != null && dtype($o) == Tclass.TestModule.A?()
     ==> $Is(TestModule.A.c($o), TInt));

// A.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { TestModule.A.c($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TestModule.A.c($o), TInt, $h));

// function declaration for TestModule.A.f
function TestModule.A.f(TestModule.A.f$Q: Ty, this: ref) : bool;

function TestModule.A.f#canCall(TestModule.A.f$Q: Ty, this: ref) : bool;

function TestModule.A.f#requires(Ty, ref) : bool;

// #requires axiom for TestModule.A.f
axiom (forall TestModule.A.f$Q: Ty, this: ref :: 
  { TestModule.A.f#requires(TestModule.A.f$Q, this) } 
  this != null && $Is(this, Tclass.TestModule.A())
     ==> TestModule.A.f#requires(TestModule.A.f$Q, this) == true);

// definition axiom for TestModule.A.f (revealed)
axiom {:id "id176"} (forall TestModule.A.f$Q: Ty, this: ref :: 
  { TestModule.A.f(TestModule.A.f$Q, this) } 
  TestModule.A.f#canCall(TestModule.A.f$Q, this)
       || (this != null && $Is(this, Tclass.TestModule.A()))
     ==> TestModule.A.f(TestModule.A.f$Q, this) == Lit(true));

// definition axiom for TestModule.A.f for all literals (revealed)
axiom {:id "id177"} (forall TestModule.A.f$Q: Ty, this: ref :: 
  {:weight 3} { TestModule.A.f(TestModule.A.f$Q, Lit(this)) } 
  TestModule.A.f#canCall(TestModule.A.f$Q, Lit(this))
       || (this != null && $Is(this, Tclass.TestModule.A()))
     ==> TestModule.A.f(TestModule.A.f$Q, Lit(this)) == Lit(true));

// function declaration for TestModule.A.ftr
function TestModule.A.ftr(this: ref) : bool;

function TestModule.A.ftr#canCall(this: ref) : bool;

function TestModule.A.ftr#requires(ref) : bool;

// #requires axiom for TestModule.A.ftr
axiom (forall this: ref :: 
  { TestModule.A.ftr#requires(this) } 
  this != null && $Is(this, Tclass.TestModule.A())
     ==> TestModule.A.ftr#requires(this) == true);

// definition axiom for TestModule.A.ftr (revealed)
axiom {:id "id178"} (forall this: ref :: 
  { TestModule.A.ftr(this) } 
  TestModule.A.ftr#canCall(this)
       || (this != null && $Is(this, Tclass.TestModule.A()))
     ==> TestModule.A.ftr(this) == Lit(true));

// definition axiom for TestModule.A.ftr for all literals (revealed)
axiom {:id "id179"} (forall this: ref :: 
  {:weight 3} { TestModule.A.ftr(Lit(this)) } 
  TestModule.A.ftr#canCall(Lit(this))
       || (this != null && $Is(this, Tclass.TestModule.A()))
     ==> TestModule.A.ftr(Lit(this)) == Lit(true));

// override axiom for TestModule.T3.ftr in class TestModule.A
axiom (forall this: ref :: 
  { TestModule.T3.ftr(this), $Is(this, Tclass.TestModule.A()) } 
    { TestModule.T3.ftr(this), TestModule.A.ftr(this) } 
  TestModule.A.ftr#canCall(this)
       || (this != null && $Is(this, Tclass.TestModule.A()))
     ==> TestModule.T3.ftr(this) == TestModule.A.ftr(this));

// $Is axiom for non-null type TestModule.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestModule.A()) } { $Is(c#0, Tclass.TestModule.A?()) } 
  $Is(c#0, Tclass.TestModule.A())
     <==> $Is(c#0, Tclass.TestModule.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestModule.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestModule.A(), $h) } 
    { $IsAlloc(c#0, Tclass.TestModule.A?(), $h) } 
  $IsAlloc(c#0, Tclass.TestModule.A(), $h)
     <==> $IsAlloc(c#0, Tclass.TestModule.A?(), $h));

const unique class.TestModule.B?: ClassName;

// $Is axiom for class B
axiom (forall TestModule.B$Z: Ty, $o: ref :: 
  { $Is($o, Tclass.TestModule.B?(TestModule.B$Z)) } 
  $Is($o, Tclass.TestModule.B?(TestModule.B$Z))
     <==> $o == null || dtype($o) == Tclass.TestModule.B?(TestModule.B$Z));

// $IsAlloc axiom for class B
axiom (forall TestModule.B$Z: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.B?(TestModule.B$Z), $h) } 
  $IsAlloc($o, Tclass.TestModule.B?(TestModule.B$Z), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const TestModule.B.j: Field
uses {
axiom FDim(TestModule.B.j) == 0
   && FieldOfDecl(class.TestModule.B?, field$j) == TestModule.B.j
   && !$IsGhostField(TestModule.B.j);
}

// B.j: Type axiom
axiom (forall TestModule.B$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TestModule.B.j), Tclass.TestModule.B?(TestModule.B$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.B?(TestModule.B$Z)
     ==> $IsBox(read($h, $o, TestModule.B.j), TestModule.B$Z));

// B.j: Allocation axiom
axiom (forall TestModule.B$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TestModule.B.j), Tclass.TestModule.B?(TestModule.B$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TestModule.B?(TestModule.B$Z)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, TestModule.B.j), TestModule.B$Z, $h));

// function declaration for TestModule.B.ftr
function TestModule.B.ftr(TestModule.B$Z: Ty, this: ref) : bool;

function TestModule.B.ftr#canCall(TestModule.B$Z: Ty, this: ref) : bool;

function Tclass.TestModule.B(Ty) : Ty;

const unique Tagclass.TestModule.B: TyTag;

// Tclass.TestModule.B Tag
axiom (forall TestModule.B$Z: Ty :: 
  { Tclass.TestModule.B(TestModule.B$Z) } 
  Tag(Tclass.TestModule.B(TestModule.B$Z)) == Tagclass.TestModule.B
     && TagFamily(Tclass.TestModule.B(TestModule.B$Z)) == tytagFamily$B);

function Tclass.TestModule.B_0(Ty) : Ty;

// Tclass.TestModule.B injectivity 0
axiom (forall TestModule.B$Z: Ty :: 
  { Tclass.TestModule.B(TestModule.B$Z) } 
  Tclass.TestModule.B_0(Tclass.TestModule.B(TestModule.B$Z)) == TestModule.B$Z);

// Box/unbox axiom for Tclass.TestModule.B
axiom (forall TestModule.B$Z: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.B(TestModule.B$Z)) } 
  $IsBox(bx, Tclass.TestModule.B(TestModule.B$Z))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestModule.B(TestModule.B$Z)));

function TestModule.B.ftr#requires(Ty, ref) : bool;

// #requires axiom for TestModule.B.ftr
axiom (forall TestModule.B$Z: Ty, this: ref :: 
  { TestModule.B.ftr#requires(TestModule.B$Z, this) } 
  this != null && $Is(this, Tclass.TestModule.B(TestModule.B$Z))
     ==> TestModule.B.ftr#requires(TestModule.B$Z, this) == true);

// definition axiom for TestModule.B.ftr (revealed)
axiom {:id "id180"} (forall TestModule.B$Z: Ty, this: ref :: 
  { TestModule.B.ftr(TestModule.B$Z, this) } 
  TestModule.B.ftr#canCall(TestModule.B$Z, this)
       || (this != null && $Is(this, Tclass.TestModule.B(TestModule.B$Z)))
     ==> TestModule.B.ftr(TestModule.B$Z, this) == Lit(true));

// definition axiom for TestModule.B.ftr for all literals (revealed)
axiom {:id "id181"} (forall TestModule.B$Z: Ty, this: ref :: 
  {:weight 3} { TestModule.B.ftr(TestModule.B$Z, Lit(this)) } 
  TestModule.B.ftr#canCall(TestModule.B$Z, Lit(this))
       || (this != null && $Is(this, Tclass.TestModule.B(TestModule.B$Z)))
     ==> TestModule.B.ftr(TestModule.B$Z, Lit(this)) == Lit(true));

// override axiom for TestModule.T3.ftr in class TestModule.B
axiom (forall TestModule.B$Z: Ty, this: ref :: 
  { TestModule.T3.ftr(this), $Is(this, Tclass.TestModule.B(TestModule.B$Z)) } 
    { TestModule.T3.ftr(this), TestModule.B.ftr(TestModule.B$Z, this) } 
  TestModule.B.ftr#canCall(TestModule.B$Z, this)
       || (this != null && $Is(this, Tclass.TestModule.B(TestModule.B$Z)))
     ==> TestModule.T3.ftr(this) == TestModule.B.ftr(TestModule.B$Z, this));

// $Is axiom for non-null type TestModule.B
axiom (forall TestModule.B$Z: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TestModule.B(TestModule.B$Z)) } 
    { $Is(c#0, Tclass.TestModule.B?(TestModule.B$Z)) } 
  $Is(c#0, Tclass.TestModule.B(TestModule.B$Z))
     <==> $Is(c#0, Tclass.TestModule.B?(TestModule.B$Z)) && c#0 != null);

// $IsAlloc axiom for non-null type TestModule.B
axiom (forall TestModule.B$Z: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestModule.B(TestModule.B$Z), $h) } 
    { $IsAlloc(c#0, Tclass.TestModule.B?(TestModule.B$Z), $h) } 
  $IsAlloc(c#0, Tclass.TestModule.B(TestModule.B$Z), $h)
     <==> $IsAlloc(c#0, Tclass.TestModule.B?(TestModule.B$Z), $h));

// Constructor function declaration
function #TestModule.BB.R(Box) : DatatypeType;

const unique ##TestModule.BB.R: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #TestModule.BB.R(a#0#0#0) } 
  DatatypeCtorId(#TestModule.BB.R(a#0#0#0)) == ##TestModule.BB.R);
}

function TestModule.BB.R_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule.BB.R_q(d) } 
  TestModule.BB.R_q(d) <==> DatatypeCtorId(d) == ##TestModule.BB.R);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule.BB.R_q(d) } 
  TestModule.BB.R_q(d) ==> (exists a#1#0#0: Box :: d == #TestModule.BB.R(a#1#0#0)));

function Tclass.TestModule.BB(Ty) : Ty;

const unique Tagclass.TestModule.BB: TyTag;

// Tclass.TestModule.BB Tag
axiom (forall TestModule.BB$Q: Ty :: 
  { Tclass.TestModule.BB(TestModule.BB$Q) } 
  Tag(Tclass.TestModule.BB(TestModule.BB$Q)) == Tagclass.TestModule.BB
     && TagFamily(Tclass.TestModule.BB(TestModule.BB$Q)) == tytagFamily$BB);

function Tclass.TestModule.BB_0(Ty) : Ty;

// Tclass.TestModule.BB injectivity 0
axiom (forall TestModule.BB$Q: Ty :: 
  { Tclass.TestModule.BB(TestModule.BB$Q) } 
  Tclass.TestModule.BB_0(Tclass.TestModule.BB(TestModule.BB$Q)) == TestModule.BB$Q);

// Box/unbox axiom for Tclass.TestModule.BB
axiom (forall TestModule.BB$Q: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.BB(TestModule.BB$Q)) } 
  $IsBox(bx, Tclass.TestModule.BB(TestModule.BB$Q))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestModule.BB(TestModule.BB$Q)));

// Constructor $Is
axiom (forall TestModule.BB$Q: Ty, a#2#0#0: Box :: 
  { $Is(#TestModule.BB.R(a#2#0#0), Tclass.TestModule.BB(TestModule.BB$Q)) } 
  $Is(#TestModule.BB.R(a#2#0#0), Tclass.TestModule.BB(TestModule.BB$Q))
     <==> $IsBox(a#2#0#0, TestModule.BB$Q));

// Constructor $IsAlloc
axiom (forall TestModule.BB$Q: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#TestModule.BB.R(a#2#0#0), Tclass.TestModule.BB(TestModule.BB$Q), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TestModule.BB.R(a#2#0#0), Tclass.TestModule.BB(TestModule.BB$Q), $h)
       <==> $IsAllocBox(a#2#0#0, TestModule.BB$Q, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TestModule.BB$Q: Ty, $h: Heap :: 
  { $IsAllocBox(TestModule.BB.q(d), TestModule.BB$Q, $h) } 
  $IsGoodHeap($h)
       && 
      TestModule.BB.R_q(d)
       && $IsAlloc(d, Tclass.TestModule.BB(TestModule.BB$Q), $h)
     ==> $IsAllocBox(TestModule.BB.q(d), TestModule.BB$Q, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #TestModule.BB.R(Lit(a#3#0#0)) } 
  #TestModule.BB.R(Lit(a#3#0#0)) == Lit(#TestModule.BB.R(a#3#0#0)));

function TestModule.BB.q(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #TestModule.BB.R(a#4#0#0) } 
  TestModule.BB.q(#TestModule.BB.R(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #TestModule.BB.R(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#TestModule.BB.R(a#5#0#0)));

// Depth-one case-split function
function $IsA#TestModule.BB(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestModule.BB(d) } 
  $IsA#TestModule.BB(d) ==> TestModule.BB.R_q(d));

// Questionmark data type disjunctivity
axiom (forall TestModule.BB$Q: Ty, d: DatatypeType :: 
  { TestModule.BB.R_q(d), $Is(d, Tclass.TestModule.BB(TestModule.BB$Q)) } 
  $Is(d, Tclass.TestModule.BB(TestModule.BB$Q)) ==> TestModule.BB.R_q(d));

// Datatype extensional equality declaration
function TestModule.BB#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TestModule.BB.R
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule.BB#Equal(a, b) } 
  TestModule.BB#Equal(a, b) <==> TestModule.BB.q(a) == TestModule.BB.q(b));

// Datatype extensionality axiom: TestModule.BB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule.BB#Equal(a, b) } 
  TestModule.BB#Equal(a, b) <==> a == b);

const unique class.TestModule.BB: ClassName;

const unique class.TestModule.T1?: ClassName;

function Tclass.TestModule.T1?(Ty) : Ty;

const unique Tagclass.TestModule.T1?: TyTag;

// Tclass.TestModule.T1? Tag
axiom (forall TestModule.T1$TR: Ty :: 
  { Tclass.TestModule.T1?(TestModule.T1$TR) } 
  Tag(Tclass.TestModule.T1?(TestModule.T1$TR)) == Tagclass.TestModule.T1?
     && TagFamily(Tclass.TestModule.T1?(TestModule.T1$TR)) == tytagFamily$T1);

function Tclass.TestModule.T1?_0(Ty) : Ty;

// Tclass.TestModule.T1? injectivity 0
axiom (forall TestModule.T1$TR: Ty :: 
  { Tclass.TestModule.T1?(TestModule.T1$TR) } 
  Tclass.TestModule.T1?_0(Tclass.TestModule.T1?(TestModule.T1$TR))
     == TestModule.T1$TR);

// Box/unbox axiom for Tclass.TestModule.T1?
axiom (forall TestModule.T1$TR: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T1?(TestModule.T1$TR)) } 
  $IsBox(bx, Tclass.TestModule.T1?(TestModule.T1$TR))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestModule.T1?(TestModule.T1$TR)));

// $Is axiom for trait T1
axiom (forall TestModule.T1$TR: Ty, $o: ref :: 
  { $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR)) } 
  $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR))
     <==> $o == null || implements$TestModule.T1(dtype($o), TestModule.T1$TR));

// $IsAlloc axiom for trait T1
axiom (forall TestModule.T1$TR: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.T1?(TestModule.T1$TR), $h) } 
  $IsAlloc($o, Tclass.TestModule.T1?(TestModule.T1$TR), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestModule.T1(ty: Ty, TestModule.T1$TR: Ty) : bool;

function TestModule.T1.one(TestModule.T1$TR: Ty, this: ref) : int
uses {
axiom (forall TestModule.T1$TR: Ty, this: ref :: 
  { TestModule.T1.one(TestModule.T1$TR, this): int } 
  TestModule.T1.one(TestModule.T1$TR, this): int == LitInt(1));
}

// T1.one: Type axiom
axiom (forall TestModule.T1$TR: Ty, $o: ref :: 
  { TestModule.T1.one(TestModule.T1$TR, $o) } 
  $o != null && $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR))
     ==> $Is(TestModule.T1.one(TestModule.T1$TR, $o), TInt));

// T1.one: Allocation axiom
axiom (forall TestModule.T1$TR: Ty, $h: Heap, $o: ref :: 
  { TestModule.T1.one(TestModule.T1$TR, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TestModule.T1.one(TestModule.T1$TR, $o), TInt, $h));

const TestModule.T1.count: Field
uses {
axiom FDim(TestModule.T1.count) == 0
   && FieldOfDecl(class.TestModule.T1?, field$count) == TestModule.T1.count
   && !$IsGhostField(TestModule.T1.count);
}

// T1.count: Type axiom
axiom (forall TestModule.T1$TR: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.T1.count)): int, Tclass.TestModule.T1?(TestModule.T1$TR) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR))
     ==> $Is($Unbox(read($h, $o, TestModule.T1.count)): int, TInt));

// T1.count: Allocation axiom
axiom (forall TestModule.T1$TR: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestModule.T1.count)): int, Tclass.TestModule.T1?(TestModule.T1$TR) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestModule.T1.count)): int, TInt, $h));

function Tclass.TestModule.T1(Ty) : Ty;

const unique Tagclass.TestModule.T1: TyTag;

// Tclass.TestModule.T1 Tag
axiom (forall TestModule.T1$TR: Ty :: 
  { Tclass.TestModule.T1(TestModule.T1$TR) } 
  Tag(Tclass.TestModule.T1(TestModule.T1$TR)) == Tagclass.TestModule.T1
     && TagFamily(Tclass.TestModule.T1(TestModule.T1$TR)) == tytagFamily$T1);

function Tclass.TestModule.T1_0(Ty) : Ty;

// Tclass.TestModule.T1 injectivity 0
axiom (forall TestModule.T1$TR: Ty :: 
  { Tclass.TestModule.T1(TestModule.T1$TR) } 
  Tclass.TestModule.T1_0(Tclass.TestModule.T1(TestModule.T1$TR))
     == TestModule.T1$TR);

// Box/unbox axiom for Tclass.TestModule.T1
axiom (forall TestModule.T1$TR: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T1(TestModule.T1$TR)) } 
  $IsBox(bx, Tclass.TestModule.T1(TestModule.T1$TR))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestModule.T1(TestModule.T1$TR)));

// $Is axiom for non-null type TestModule.T1
axiom (forall TestModule.T1$TR: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TestModule.T1(TestModule.T1$TR)) } 
    { $Is(c#0, Tclass.TestModule.T1?(TestModule.T1$TR)) } 
  $Is(c#0, Tclass.TestModule.T1(TestModule.T1$TR))
     <==> $Is(c#0, Tclass.TestModule.T1?(TestModule.T1$TR)) && c#0 != null);

// $IsAlloc axiom for non-null type TestModule.T1
axiom (forall TestModule.T1$TR: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestModule.T1(TestModule.T1$TR), $h) } 
    { $IsAlloc(c#0, Tclass.TestModule.T1?(TestModule.T1$TR), $h) } 
  $IsAlloc(c#0, Tclass.TestModule.T1(TestModule.T1$TR), $h)
     <==> $IsAlloc(c#0, Tclass.TestModule.T1?(TestModule.T1$TR), $h));

const unique class.TestModule.T2?: ClassName;

function Tclass.TestModule.T2?() : Ty
uses {
// Tclass.TestModule.T2? Tag
axiom Tag(Tclass.TestModule.T2?()) == Tagclass.TestModule.T2?
   && TagFamily(Tclass.TestModule.T2?()) == tytagFamily$T2;
}

const unique Tagclass.TestModule.T2?: TyTag;

// Box/unbox axiom for Tclass.TestModule.T2?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T2?()) } 
  $IsBox(bx, Tclass.TestModule.T2?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.T2?()));

// $Is axiom for trait T2
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.T2?()) } 
  $Is($o, Tclass.TestModule.T2?())
     <==> $o == null || implements$TestModule.T2(dtype($o)));

// $IsAlloc axiom for trait T2
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.T2?(), $h) } 
  $IsAlloc($o, Tclass.TestModule.T2?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestModule.T2(ty: Ty) : bool;

function Tclass.TestModule.T2() : Ty
uses {
// Tclass.TestModule.T2 Tag
axiom Tag(Tclass.TestModule.T2()) == Tagclass.TestModule.T2
   && TagFamily(Tclass.TestModule.T2()) == tytagFamily$T2;
}

const unique Tagclass.TestModule.T2: TyTag;

// Box/unbox axiom for Tclass.TestModule.T2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T2()) } 
  $IsBox(bx, Tclass.TestModule.T2())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.T2()));

// $Is axiom for non-null type TestModule.T2
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestModule.T2()) } { $Is(c#0, Tclass.TestModule.T2?()) } 
  $Is(c#0, Tclass.TestModule.T2())
     <==> $Is(c#0, Tclass.TestModule.T2?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestModule.T2
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestModule.T2(), $h) } 
    { $IsAlloc(c#0, Tclass.TestModule.T2?(), $h) } 
  $IsAlloc(c#0, Tclass.TestModule.T2(), $h)
     <==> $IsAlloc(c#0, Tclass.TestModule.T2?(), $h));

const unique class.TestModule.T3?: ClassName;

function Tclass.TestModule.T3?() : Ty
uses {
// Tclass.TestModule.T3? Tag
axiom Tag(Tclass.TestModule.T3?()) == Tagclass.TestModule.T3?
   && TagFamily(Tclass.TestModule.T3?()) == tytagFamily$T3;
}

const unique Tagclass.TestModule.T3?: TyTag;

// Box/unbox axiom for Tclass.TestModule.T3?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T3?()) } 
  $IsBox(bx, Tclass.TestModule.T3?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.T3?()));

// $Is axiom for trait T3
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.T3?()) } 
  $Is($o, Tclass.TestModule.T3?())
     <==> $o == null || implements$TestModule.T3(dtype($o)));

// $IsAlloc axiom for trait T3
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.T3?(), $h) } 
  $IsAlloc($o, Tclass.TestModule.T3?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestModule.T3(ty: Ty) : bool;

// function declaration for TestModule.T3.ftr
function TestModule.T3.ftr(this: ref) : bool;

function TestModule.T3.ftr#canCall(this: ref) : bool;

function Tclass.TestModule.T3() : Ty
uses {
// Tclass.TestModule.T3 Tag
axiom Tag(Tclass.TestModule.T3()) == Tagclass.TestModule.T3
   && TagFamily(Tclass.TestModule.T3()) == tytagFamily$T3;
}

const unique Tagclass.TestModule.T3: TyTag;

// Box/unbox axiom for Tclass.TestModule.T3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T3()) } 
  $IsBox(bx, Tclass.TestModule.T3())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestModule.T3()));

function TestModule.T3.ftr#requires(ref) : bool;

// #requires axiom for TestModule.T3.ftr
axiom (forall this: ref :: 
  { TestModule.T3.ftr#requires(this) } 
  this != null && $Is(this, Tclass.TestModule.T3())
     ==> TestModule.T3.ftr#requires(this) == true);

// function declaration for TestModule.T3.ftz
function TestModule.T3.ftz(this: ref) : bool;

function TestModule.T3.ftz#canCall(this: ref) : bool;

function TestModule.T3.ftz#requires(ref) : bool;

// #requires axiom for TestModule.T3.ftz
axiom (forall this: ref :: 
  { TestModule.T3.ftz#requires(this) } 
  this != null && $Is(this, Tclass.TestModule.T3())
     ==> TestModule.T3.ftz#requires(this) == true);

// definition axiom for TestModule.T3.ftz (revealed)
axiom {:id "id182"} (forall this: ref :: 
  { TestModule.T3.ftz(this) } 
  TestModule.T3.ftz#canCall(this)
       || (this != null && $Is(this, Tclass.TestModule.T3()))
     ==> TestModule.T3.ftz(this) == Lit(true));

// definition axiom for TestModule.T3.ftz for all literals (revealed)
axiom {:id "id183"} (forall this: ref :: 
  {:weight 3} { TestModule.T3.ftz(Lit(this)) } 
  TestModule.T3.ftz#canCall(Lit(this))
       || (this != null && $Is(this, Tclass.TestModule.T3()))
     ==> TestModule.T3.ftz(Lit(this)) == Lit(true));

// $Is axiom for non-null type TestModule.T3
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestModule.T3()) } { $Is(c#0, Tclass.TestModule.T3?()) } 
  $Is(c#0, Tclass.TestModule.T3())
     <==> $Is(c#0, Tclass.TestModule.T3?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestModule.T3
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestModule.T3(), $h) } 
    { $IsAlloc(c#0, Tclass.TestModule.T3?(), $h) } 
  $IsAlloc(c#0, Tclass.TestModule.T3(), $h)
     <==> $IsAlloc(c#0, Tclass.TestModule.T3?(), $h));

// type axiom for trait parent: A? extends T2?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.A?()) } 
  $Is($o, Tclass.TestModule.A?()) ==> $Is($o, Tclass.TestModule.T2?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.A?()) } 
  $IsBox(bx, Tclass.TestModule.A?()) ==> $IsBox(bx, Tclass.TestModule.T2?()));

// allocation axiom for trait parent: A? extends T2?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.A?(), $heap) } 
  $IsAlloc($o, Tclass.TestModule.A?(), $heap)
     ==> $IsAlloc($o, Tclass.TestModule.T2?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestModule.A?(), $h) } 
  $IsAllocBox(bx, Tclass.TestModule.A?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestModule.T2?(), $h));

// type axiom for trait parent: B? extends T2?
axiom (forall TestModule.B$Z: Ty, $o: ref :: 
  { $Is($o, Tclass.TestModule.B?(TestModule.B$Z)) } 
  $Is($o, Tclass.TestModule.B?(TestModule.B$Z))
     ==> $Is($o, Tclass.TestModule.T2?()));

axiom (forall TestModule.B$Z: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.B?(TestModule.B$Z)) } 
  $IsBox(bx, Tclass.TestModule.B?(TestModule.B$Z))
     ==> $IsBox(bx, Tclass.TestModule.T2?()));

// allocation axiom for trait parent: B? extends T2?
axiom (forall TestModule.B$Z: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.B?(TestModule.B$Z), $heap) } 
  $IsAlloc($o, Tclass.TestModule.B?(TestModule.B$Z), $heap)
     ==> $IsAlloc($o, Tclass.TestModule.T2?(), $heap));

axiom (forall TestModule.B$Z: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestModule.B?(TestModule.B$Z), $h) } 
  $IsAllocBox(bx, Tclass.TestModule.B?(TestModule.B$Z), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestModule.T2?(), $h));

// type axiom for trait parent: T1? extends T3?
axiom (forall TestModule.T1$TR: Ty, $o: ref :: 
  { $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR)) } 
  $Is($o, Tclass.TestModule.T1?(TestModule.T1$TR))
     ==> $Is($o, Tclass.TestModule.T3?()));

axiom (forall TestModule.T1$TR: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T1?(TestModule.T1$TR)) } 
  $IsBox(bx, Tclass.TestModule.T1?(TestModule.T1$TR))
     ==> $IsBox(bx, Tclass.TestModule.T3?()));

// allocation axiom for trait parent: T1? extends T3?
axiom (forall TestModule.T1$TR: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.T1?(TestModule.T1$TR), $heap) } 
  $IsAlloc($o, Tclass.TestModule.T1?(TestModule.T1$TR), $heap)
     ==> $IsAlloc($o, Tclass.TestModule.T3?(), $heap));

axiom (forall TestModule.T1$TR: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestModule.T1?(TestModule.T1$TR), $h) } 
  $IsAllocBox(bx, Tclass.TestModule.T1?(TestModule.T1$TR), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestModule.T3?(), $h));

// type axiom for trait parent: T2? extends T1?<A>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.T2?()) } 
  $Is($o, Tclass.TestModule.T2?())
     ==> $Is($o, Tclass.TestModule.T1?(Tclass.TestModule.A())));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T2?()) } 
  $IsBox(bx, Tclass.TestModule.T2?())
     ==> $IsBox(bx, Tclass.TestModule.T1?(Tclass.TestModule.A())));

// allocation axiom for trait parent: T2? extends T1?<A>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.T2?(), $heap) } 
  $IsAlloc($o, Tclass.TestModule.T2?(), $heap)
     ==> $IsAlloc($o, Tclass.TestModule.T1?(Tclass.TestModule.A()), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestModule.T2?(), $h) } 
  $IsAllocBox(bx, Tclass.TestModule.T2?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestModule.T1?(Tclass.TestModule.A()), $h));

// type axiom for trait parent: T2? extends T3?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestModule.T2?()) } 
  $Is($o, Tclass.TestModule.T2?()) ==> $Is($o, Tclass.TestModule.T3?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule.T2?()) } 
  $IsBox(bx, Tclass.TestModule.T2?()) ==> $IsBox(bx, Tclass.TestModule.T3?()));

// allocation axiom for trait parent: T2? extends T3?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestModule.T2?(), $heap) } 
  $IsAlloc($o, Tclass.TestModule.T2?(), $heap)
     ==> $IsAlloc($o, Tclass.TestModule.T3?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestModule.T2?(), $h) } 
  $IsAllocBox(bx, Tclass.TestModule.T2?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestModule.T3?(), $h));

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

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$B: TyTagFamily;

const unique tytagFamily$D: TyTagFamily;

const unique tytagFamily$CD: TyTagFamily;

const unique tytagFamily$Small: TyTagFamily;

const unique tytagFamily$SmallW: TyTagFamily;

const unique tytagFamily$SmallS: TyTagFamily;

const unique tytagFamily$Smaller: TyTagFamily;

const unique tytagFamily$Dup: TyTagFamily;

const unique tytagFamily$Size: TyTagFamily;

const unique tytagFamily$Gen: TyTagFamily;

const unique tytagFamily$BB: TyTagFamily;

const unique tytagFamily$T1: TyTagFamily;

const unique tytagFamily$T2: TyTagFamily;

const unique tytagFamily$T3: TyTagFamily;

const unique field$x: NameFamily;

const unique field$xs: NameFamily;

const unique field$_new: NameFamily;

const unique field$j: NameFamily;

const unique field$k: NameFamily;

const unique field$count: NameFamily;
