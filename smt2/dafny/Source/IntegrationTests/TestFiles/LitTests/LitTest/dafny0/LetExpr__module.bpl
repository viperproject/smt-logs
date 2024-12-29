// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0 (call)"} Call$$_module.__default.M0(n#0: int);
  // user-defined preconditions
  requires {:id "id100"} (var f#0 := LitInt(100); n#0 < f#0);
  requires {:id "id101"} (var t#0, f#1 := Lit(true), Lit(false); (t#0 && f#1) || n#0 < 100);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(n#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id102"} (var f#0 := LitInt(100); n#0 < f#0);
  requires {:id "id103"} (var t#0, f#1 := Lit(true), Lit(false); (t#0 && f#1) || n#0 < 100);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M0, Impl$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(8,3)
    assume true;
    assert {:id "id104"} n#0 < 200;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(9,3)
    assume true;
    assert {:id "id105"} LitInt(0) <= n#0;
}



procedure {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1 (call)"} Call$$_module.__default.M1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#Z#0: int;
  var let#0#0#0: int;
  var g#Z#0: int;
  var let#1#0#0: int;

    // AddMethodImpl: M1, Impl$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(14,3)
    havoc f#Z#0;
    assume {:id "id106"} let#0#0#0 == LitInt(54);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id107"} f#Z#0 == let#0#0#0;
    havoc g#Z#0;
    assume {:id "id108"} let#1#0#0 == f#Z#0 + 1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id109"} g#Z#0 == let#1#0#0;
    assume true;
    assert {:id "id110"} (var f#0 := LitInt(54); (var g#0 := LitInt(f#0 + 1); g#0 == LitInt(55)));
}



procedure {:verboseName "M2 (well-formedness)"} CheckWellFormed$$_module.__default.M2();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M2 (call)"} Call$$_module.__default.M2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#Z#0: int;
  var let#0#0#0: int;
  var f#Z#1: int;
  var let#1#0#0: int;

    // AddMethodImpl: M2, Impl$$_module.__default.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(19,3)
    havoc f#Z#0;
    assume {:id "id111"} let#0#0#0 == LitInt(54);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id112"} f#Z#0 == let#0#0#0;
    havoc f#Z#1;
    assume {:id "id113"} let#1#0#0 == f#Z#0 + 1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id114"} f#Z#1 == let#1#0#0;
    assume true;
    assert {:id "id115"} (var f#0 := LitInt(54); (var f#1 := LitInt(f#0 + 1); f#1 == LitInt(55)));
}



// function declaration for _module._default.Fib
function _module.__default.Fib($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.Fib
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Fib($ly, n#0) } 
    _module.__default.Fib#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> LitInt(0) <= _module.__default.Fib($ly, n#0));
// definition axiom for _module.__default.Fib (revealed)
axiom {:id "id116"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Fib($LS($ly), n#0) } 
    _module.__default.Fib#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (2 <= n#0
           ==> _module.__default.Fib#canCall(n#0 - 1) && _module.__default.Fib#canCall(n#0 - 2))
         && _module.__default.Fib($LS($ly), n#0)
           == (if n#0 < 2
             then n#0
             else _module.__default.Fib($ly, n#0 - 1) + _module.__default.Fib($ly, n#0 - 2)));
// definition axiom for _module.__default.Fib for all literals (revealed)
axiom {:id "id117"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.Fib($LS($ly), LitInt(n#0)) } 
    _module.__default.Fib#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (!Lit(n#0 < 2)
           ==> _module.__default.Fib#canCall(LitInt(n#0 - 1))
             && _module.__default.Fib#canCall(LitInt(n#0 - 2)))
         && _module.__default.Fib($LS($ly), LitInt(n#0))
           == (if n#0 < 2
             then n#0
             else _module.__default.Fib($LS($ly), LitInt(n#0 - 1))
               + _module.__default.Fib($LS($ly), LitInt(n#0 - 2))));
}

function _module.__default.Fib#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Fib($LS($ly), n#0) } 
  _module.__default.Fib($LS($ly), n#0) == _module.__default.Fib($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Fib(AsFuelBottom($ly), n#0) } 
  _module.__default.Fib($ly, n#0) == _module.__default.Fib($LZ, n#0));

function _module.__default.Fib#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Fib
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Fib#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.Fib#requires($ly, n#0) == true);

procedure {:verboseName "Fib (well-formedness)"} CheckWellformed$$_module.__default.Fib(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fib (well-formedness)"} CheckWellformed$$_module.__default.Fib(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.Fib($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 2)
        {
            assume {:id "id118"} _module.__default.Fib($LS($LZ), n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Fib($LS($LZ), n#0), Tclass._System.nat());
            return;
        }
        else
        {
            assert {:id "id119"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id120"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id121"} ##n#0 < n#0;
            assume _module.__default.Fib#canCall(n#0 - 1);
            assert {:id "id122"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assert {:id "id123"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id124"} ##n#1 < n#0;
            assume _module.__default.Fib#canCall(n#0 - 2);
            assert {:id "id125"} $Is(_module.__default.Fib($LS($LZ), n#0 - 1)
                 + _module.__default.Fib($LS($LZ), n#0 - 2), 
              Tclass._System.nat());
            assume {:id "id126"} _module.__default.Fib($LS($LZ), n#0)
               == _module.__default.Fib($LS($LZ), n#0 - 1)
                 + _module.__default.Fib($LS($LZ), n#0 - 2);
            assume _module.__default.Fib#canCall(n#0 - 1) && _module.__default.Fib#canCall(n#0 - 2);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Fib($LS($LZ), n#0), Tclass._System.nat());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(a#0: ref) returns (r#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var t#Z#0: int;
  var let#0#0#0: int;


    // AddMethodImpl: M3, CheckWellFormed$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id127"} a#0 != null;
        }

        assume {:id "id128"} LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0);
        assert {:id "id129"} a#0 != null;
        assert {:id "id130"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume {:id "id131"} $Unbox(read($Heap, a#0, IndexField(i#0))): int == LitInt(6);
    }
    else
    {
        assume {:id "id132"} LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0)
           ==> $Unbox(read($Heap, a#0, IndexField(i#0))): int == LitInt(6);
    }

    assume {:id "id133"} (forall i#1: int :: 
      { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
      LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
         ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(6));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    havoc t#Z#0;
    assume {:id "id134"} let#0#0#0 == r#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id135"} t#Z#0 == let#0#0#0;
    assume {:id "id136"} r#0 + (var t#0 := r#0; Mul(t#0, LitInt(2))) == Mul(LitInt(3), r#0);
}



procedure {:verboseName "M3 (call)"} Call$$_module.__default.M3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (r#0: int);
  // user-defined preconditions
  requires {:id "id137"} (forall i#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
    LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
       ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(6));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id138"} r#0 + (var t#0 := r#0; Mul(t#0, LitInt(2))) == Mul(LitInt(3), r#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id139"} (forall i#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
    LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
       ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(6));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id140"} r#0 + (var t#0 := r#0; Mul(t#0, LitInt(2))) == Mul(LitInt(3), r#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(a#0: ref) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;
  var ##n#3: int;
  var ##n#4: int;
  var ##n#5: int;
  var x#0: int where LitInt(0) <= x#0;
  var y#0: int where LitInt(0) <= y#0;
  var $rhs#0: int;
  var ##n#6: int;
  var $rhs#1: int;
  var ##n#7: int;
  var ##n#8: int;
  var ##n#9: int;
  var ##n#10: int;
  var ##n#11: int;
  var ##n#12: int;
  var ##n#13: int;
  var ##n#14: int;
  var ##n#15: int;
  var i#0_0: int;
  var j#0_0: int;

    // AddMethodImpl: M3, Impl$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(31,3)
    assert {:id "id141"} $Is(LitInt(2), Tclass._System.nat());
    ##n#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(2));
    assert {:id "id142"} $Is(LitInt(4), Tclass._System.nat());
    ##n#1 := LitInt(4);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(4));
    assert {:id "id143"} $Is(LitInt(0), Tclass._System.nat());
    ##n#2 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(0));
    assert {:id "id144"} $Is(LitInt(1), Tclass._System.nat());
    ##n#3 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(1));
    assert {:id "id145"} $Is(LitInt(2), Tclass._System.nat());
    ##n#4 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(2));
    assert {:id "id146"} $Is(LitInt(3), Tclass._System.nat());
    ##n#5 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(3));
    assume _module.__default.Fib#canCall(LitInt(2))
       && _module.__default.Fib#canCall(LitInt(4))
       && 
      _module.__default.Fib#canCall(LitInt(0))
       && _module.__default.Fib#canCall(LitInt(1))
       && _module.__default.Fib#canCall(LitInt(2))
       && _module.__default.Fib#canCall(LitInt(3));
    assert {:id "id147"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(2))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(4)))
       == LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(0))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(1))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(2))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(3)));
    assume {:id "id148"} LitInt(_module.__default.Fib($LS($LZ), LitInt(2))
           + _module.__default.Fib($LS($LZ), LitInt(4)))
       == LitInt(_module.__default.Fib($LS($LZ), LitInt(0))
           + _module.__default.Fib($LS($LZ), LitInt(1))
           + _module.__default.Fib($LS($LZ), LitInt(2))
           + _module.__default.Fib($LS($LZ), LitInt(3)));
    push;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(34,13)
    assume true;
    assume true;
    assert {:id "id149"} $Is(LitInt(8), Tclass._System.nat());
    ##n#6 := LitInt(8);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(8));
    assume _module.__default.Fib#canCall(LitInt(8));
    $rhs#0 := LitInt(_module.__default.Fib($LS($LZ), LitInt(8)));
    assert {:id "id151"} $Is(LitInt(11), Tclass._System.nat());
    ##n#7 := LitInt(11);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(11));
    assume _module.__default.Fib#canCall(LitInt(11));
    $rhs#1 := LitInt(_module.__default.Fib($LS($LZ), LitInt(11)));
    x#0 := $rhs#0;
    y#0 := $rhs#1;
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(35,5)
    assume true;
    assume {:id "id155"} x#0 == LitInt(21);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(36,5)
    assert {:id "id156"} $Is(LitInt(7), Tclass._System.nat());
    ##n#8 := LitInt(7);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#8, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(7));
    if (LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3))
    {
        assert {:id "id157"} $Is(LitInt(9), Tclass._System.nat());
        ##n#9 := LitInt(9);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#9, Tclass._System.nat(), $Heap);
        assume _module.__default.Fib#canCall(LitInt(9));
    }

    assume _module.__default.Fib#canCall(LitInt(7))
       && (LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
         ==> _module.__default.Fib#canCall(LitInt(9)));
    assert {:id "id158"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
       ==> LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(9))) == LitInt(24);
    assume {:id "id159"} LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
       ==> LitInt(_module.__default.Fib($LS($LZ), LitInt(9))) == LitInt(24);
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(37,5)
    assert {:id "id160"} $Is(LitInt(1000), Tclass._System.nat());
    ##n#10 := LitInt(1000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#10, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(1000));
    assume _module.__default.Fib#canCall(LitInt(1000));
    assume {:id "id161"} LitInt(_module.__default.Fib($LS($LZ), LitInt(1000))) == LitInt(1000);
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(38,5)
    assert {:id "id162"} $Is(LitInt(9), Tclass._System.nat());
    ##n#11 := LitInt(9);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#11, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(9));
    assert {:id "id163"} $Is(LitInt(8), Tclass._System.nat());
    ##n#12 := LitInt(8);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#12, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(8));
    assume _module.__default.Fib#canCall(LitInt(9))
       && _module.__default.Fib#canCall(LitInt(8));
    assume {:id "id164"} LitInt(_module.__default.Fib($LS($LZ), LitInt(9))
           - _module.__default.Fib($LS($LZ), LitInt(8)))
       == LitInt(13);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(39,5)
    assert {:id "id165"} $Is(LitInt(9), Tclass._System.nat());
    ##n#13 := LitInt(9);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#13, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(9));
    assert {:id "id166"} $Is(LitInt(10), Tclass._System.nat());
    ##n#14 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#14, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(10));
    assume _module.__default.Fib#canCall(LitInt(9))
       && _module.__default.Fib#canCall(LitInt(10));
    assert {:id "id167"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(9)))
       <= LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(10)));
    assume {:id "id168"} LitInt(_module.__default.Fib($LS($LZ), LitInt(9)))
       <= LitInt(_module.__default.Fib($LS($LZ), LitInt(10)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(40,5)
    assume true;
    assert {:id "id169"} y#0 == LitInt(89);
    pop;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(43,3)
    assert {:id "id170"} $Is(LitInt(1000), Tclass._System.nat());
    ##n#15 := LitInt(1000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#15, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(1000));
    assume _module.__default.Fib#canCall(LitInt(1000));
    assert {:id "id171"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(1000))) == LitInt(1000);
    assume {:id "id172"} LitInt(_module.__default.Fib($LS($LZ), LitInt(1000))) == LitInt(1000);
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(45,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id173"} {:subsumption 0} a#0 != null;
        }

        assume true;
        assume {:id "id174"} LitInt(0) <= i#0_0 && i#0_0 < _System.array.Length(a#0);
        if (*)
        {
            assume true;
            assume {:id "id175"} true;
            assume false;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(46,11)
        assume true;
        assume true;
        j#0_0 := i#0_0 + 1;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(47,5)
        assert {:id "id177"} {:subsumption 0} a#0 != null;
        if (j#0_0 < _System.array.Length(a#0))
        {
            assert {:id "id178"} a#0 != null;
            assert {:id "id179"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(a#0);
            assert {:id "id180"} a#0 != null;
            assert {:id "id181"} {:subsumption 0} 0 <= j#0_0 && j#0_0 < _System.array.Length(a#0);
        }

        assume true;
        assert {:id "id182"} {:subsumption 0} j#0_0 < _System.array.Length(a#0)
           ==> $Unbox(read($Heap, a#0, IndexField(i#0_0))): int
             == $Unbox(read($Heap, a#0, IndexField(j#0_0))): int;
        assume {:id "id183"} j#0_0 < _System.array.Length(a#0)
           ==> $Unbox(read($Heap, a#0, IndexField(i#0_0))): int
             == $Unbox(read($Heap, a#0, IndexField(j#0_0))): int;
        assert {:id "id184"} Lit(true);
        assume false;
    }
    else
    {
        assume (forall i#0_1: int :: 
          LitInt(0) <= i#0_1 && i#0_1 < _System.array.Length(a#0) ==> Lit(true));
    }
}



procedure {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4(a#0: ref) returns (r#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var t#Z#0: int;
  var let#0#0#0: int;


    // AddMethodImpl: M4, CheckWellFormed$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id185"} a#0 != null;
        }

        assume {:id "id186"} LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0);
        assert {:id "id187"} a#0 != null;
        assert {:id "id188"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume {:id "id189"} $Unbox(read($Heap, a#0, IndexField(i#0))): int == LitInt(6);
    }
    else
    {
        assume {:id "id190"} LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0)
           ==> $Unbox(read($Heap, a#0, IndexField(i#0))): int == LitInt(6);
    }

    assume {:id "id191"} (forall i#1: int :: 
      { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
      LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
         ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(6));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    havoc t#Z#0;
    assume {:id "id192"} let#0#0#0 == r#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id193"} t#Z#0 == let#0#0#0;
    assume {:id "id194"} r#0 + (var t#0 := r#0; Mul(t#0, LitInt(2))) == Mul(LitInt(3), r#0);
}



procedure {:verboseName "M4 (call)"} Call$$_module.__default.M4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (r#0: int);
  // user-defined preconditions
  requires {:id "id195"} (forall i#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
    LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
       ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(6));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id196"} r#0 + (var t#0 := r#0; Mul(t#0, LitInt(2))) == Mul(LitInt(3), r#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id197"} (forall i#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
    LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
       ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(6));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id198"} r#0 + (var t#0 := r#0; Mul(t#0, LitInt(2))) == Mul(LitInt(3), r#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(a#0: ref) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;
  var ##n#3: int;
  var ##n#4: int;
  var ##n#5: int;
  var x#Z#0: int;
  var y#Z#0: int;
  var let#1#0#0: int;
  var ##n#6: int;
  var let#1#1#0: int;
  var ##n#7: int;
  var ##n#8: int;
  var ##n#9: int;
  var ##n#10: int;
  var ##n#11: int;
  var ##n#12: int;
  var ##n#13: int;
  var ##n#14: int;
  var ##n#15: int;
  var i#2: int;
  var j#Z#0: int;
  var let#2#0#0: int;

    // AddMethodImpl: M4, Impl$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(56,3)
    assert {:id "id199"} $Is(LitInt(2), Tclass._System.nat());
    ##n#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(2));
    assert {:id "id200"} $Is(LitInt(4), Tclass._System.nat());
    ##n#1 := LitInt(4);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(4));
    assert {:id "id201"} $Is(LitInt(0), Tclass._System.nat());
    ##n#2 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(0));
    assert {:id "id202"} $Is(LitInt(1), Tclass._System.nat());
    ##n#3 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(1));
    assert {:id "id203"} $Is(LitInt(2), Tclass._System.nat());
    ##n#4 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(2));
    assert {:id "id204"} $Is(LitInt(3), Tclass._System.nat());
    ##n#5 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(3));
    assume _module.__default.Fib#canCall(LitInt(2))
       && _module.__default.Fib#canCall(LitInt(4))
       && 
      _module.__default.Fib#canCall(LitInt(0))
       && _module.__default.Fib#canCall(LitInt(1))
       && _module.__default.Fib#canCall(LitInt(2))
       && _module.__default.Fib#canCall(LitInt(3));
    assert {:id "id205"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(2))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(4)))
       == LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(0))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(1))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(2))
           + _module.__default.Fib($LS($LS($LZ)), LitInt(3)));
    assume {:id "id206"} LitInt(_module.__default.Fib($LS($LZ), LitInt(2))
           + _module.__default.Fib($LS($LZ), LitInt(4)))
       == LitInt(_module.__default.Fib($LS($LZ), LitInt(0))
           + _module.__default.Fib($LS($LZ), LitInt(1))
           + _module.__default.Fib($LS($LZ), LitInt(2))
           + _module.__default.Fib($LS($LZ), LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(57,3)
    havoc x#Z#0;
    havoc y#Z#0;
    assert {:id "id207"} $Is(LitInt(8), Tclass._System.nat());
    ##n#6 := LitInt(8);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(8));
    assume {:id "id208"} let#1#0#0 == LitInt(_module.__default.Fib($LS($LZ), LitInt(8)));
    assume _module.__default.Fib#canCall(LitInt(8));
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, Tclass._System.nat());
    assume {:id "id209"} x#Z#0 == let#1#0#0;
    assert {:id "id210"} $Is(LitInt(11), Tclass._System.nat());
    ##n#7 := LitInt(11);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(11));
    assume {:id "id211"} let#1#1#0 == LitInt(_module.__default.Fib($LS($LZ), LitInt(11)));
    assume _module.__default.Fib#canCall(LitInt(11));
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#1#0, Tclass._System.nat());
    assume {:id "id212"} y#Z#0 == let#1#1#0;
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(59,5)
    assume true;
    assume {:id "id213"} x#Z#0 == LitInt(21);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(60,5)
    assert {:id "id214"} $Is(LitInt(7), Tclass._System.nat());
    ##n#8 := LitInt(7);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#8, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(7));
    if (LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3))
    {
        assert {:id "id215"} $Is(LitInt(9), Tclass._System.nat());
        ##n#9 := LitInt(9);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#9, Tclass._System.nat(), $Heap);
        assume _module.__default.Fib#canCall(LitInt(9));
    }

    assume _module.__default.Fib#canCall(LitInt(7))
       && (LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
         ==> _module.__default.Fib#canCall(LitInt(9)));
    assert {:id "id216"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
       ==> LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(9))) == LitInt(24);
    assume {:id "id217"} LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
       ==> LitInt(_module.__default.Fib($LS($LZ), LitInt(9))) == LitInt(24);
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(61,5)
    assert {:id "id218"} $Is(LitInt(1000), Tclass._System.nat());
    ##n#10 := LitInt(1000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#10, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(1000));
    assume _module.__default.Fib#canCall(LitInt(1000));
    assume {:id "id219"} LitInt(_module.__default.Fib($LS($LZ), LitInt(1000))) == LitInt(1000);
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(62,5)
    assert {:id "id220"} $Is(LitInt(9), Tclass._System.nat());
    ##n#11 := LitInt(9);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#11, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(9));
    assert {:id "id221"} $Is(LitInt(8), Tclass._System.nat());
    ##n#12 := LitInt(8);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#12, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(8));
    assume _module.__default.Fib#canCall(LitInt(9))
       && _module.__default.Fib#canCall(LitInt(8));
    assume {:id "id222"} LitInt(_module.__default.Fib($LS($LZ), LitInt(9))
           - _module.__default.Fib($LS($LZ), LitInt(8)))
       == LitInt(13);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(63,5)
    assert {:id "id223"} $Is(LitInt(9), Tclass._System.nat());
    ##n#13 := LitInt(9);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#13, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(9));
    assert {:id "id224"} $Is(LitInt(10), Tclass._System.nat());
    ##n#14 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#14, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(10));
    assume _module.__default.Fib#canCall(LitInt(9))
       && _module.__default.Fib#canCall(LitInt(10));
    assert {:id "id225"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(9)))
       <= LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(10)));
    assume {:id "id226"} LitInt(_module.__default.Fib($LS($LZ), LitInt(9)))
       <= LitInt(_module.__default.Fib($LS($LZ), LitInt(10)));
    assume _module.__default.Fib#canCall(LitInt(8))
       && _module.__default.Fib#canCall(LitInt(11));
    assert {:id "id227"} {:subsumption 0} (var x#0, y#0 := LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(8))), 
        LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(11))); 
      x#0 == LitInt(21)
         ==> 
        (LitInt(_module.__default.Fib($LS($LZ), LitInt(7))) == LitInt(3)
         ==> LitInt(_module.__default.Fib($LS($LZ), LitInt(9))) == LitInt(24))
         ==> 
        LitInt(_module.__default.Fib($LS($LZ), LitInt(1000))) == LitInt(1000)
         ==> 
        LitInt(_module.__default.Fib($LS($LZ), LitInt(9))
               - _module.__default.Fib($LS($LZ), LitInt(8)))
           == LitInt(13)
         ==> 
        LitInt(_module.__default.Fib($LS($LZ), LitInt(9)))
           <= LitInt(_module.__default.Fib($LS($LZ), LitInt(10)))
         ==> y#0 == LitInt(89));
    assume {:id "id228"} (var x#0, y#0 := LitInt(_module.__default.Fib($LS($LZ), LitInt(8))), 
        LitInt(_module.__default.Fib($LS($LZ), LitInt(11))); 
      y#0 == LitInt(89));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(65,3)
    assert {:id "id229"} $Is(LitInt(1000), Tclass._System.nat());
    ##n#15 := LitInt(1000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#15, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(LitInt(1000));
    assume _module.__default.Fib#canCall(LitInt(1000));
    assert {:id "id230"} {:subsumption 0} LitInt(_module.__default.Fib($LS($LS($LZ)), LitInt(1000))) == LitInt(1000);
    assume {:id "id231"} LitInt(_module.__default.Fib($LS($LZ), LitInt(1000))) == LitInt(1000);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(66,3)
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (LitInt(0) <= i#2)
        {
            assert {:id "id232"} {:subsumption 0} a#0 != null;
        }

        if (LitInt(0) <= i#2 && i#2 < _System.array.Length(a#0))
        {
            havoc j#Z#0;
            assume {:id "id233"} let#2#0#0 == i#2 + 1;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id234"} j#Z#0 == let#2#0#0;
            assert {:id "id235"} {:subsumption 0} a#0 != null;
            if (j#Z#0 < _System.array.Length(a#0))
            {
                assert {:id "id236"} a#0 != null;
                assert {:id "id237"} {:subsumption 0} 0 <= i#2 && i#2 < _System.array.Length(a#0);
                assert {:id "id238"} a#0 != null;
                assert {:id "id239"} {:subsumption 0} 0 <= j#Z#0 && j#Z#0 < _System.array.Length(a#0);
            }
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id240"} (forall i#3: int, _t#0#0: int :: 
      { $Unbox(read($Heap, a#0, IndexField(_t#0#0))): int, $Unbox(read($Heap, a#0, IndexField(i#3))): int } 
      _t#0#0 == i#3 + 1
         ==> 
        LitInt(0) <= i#3 && i#3 < _System.array.Length(a#0)
         ==> (var j#0 := _t#0#0; 
          j#0 < _System.array.Length(a#0)
             ==> $Unbox(read($Heap, a#0, IndexField(i#3))): int
               == $Unbox(read($Heap, a#0, IndexField(j#0))): int));
}



procedure {:verboseName "Theorem0 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0(n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;


    // AddMethodImpl: Theorem0, CheckWellFormed$$_module.__default.Theorem0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id241"} LitInt(1) <= n#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id242"} $Is(n#0, Tclass._System.nat());
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(n#0);
    assume {:id "id243"} LitInt(1) <= _module.__default.Fib($LS($LZ), n#0);
}



procedure {:verboseName "Theorem0 (call)"} Call$$_module.__default.Theorem0(n#0: int);
  // user-defined preconditions
  requires {:id "id244"} LitInt(1) <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Fib#canCall(n#0);
  ensures {:id "id245"} LitInt(1) <= _module.__default.Fib($LS($LS($LZ)), n#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Theorem0 (correctness)"} Impl$$_module.__default.Theorem0(n#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id246"} LitInt(1) <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Fib#canCall(n#0);
  ensures {:id "id247"} LitInt(1) <= _module.__default.Fib($LS($LS($LZ)), n#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0 (correctness)"} Impl$$_module.__default.Theorem0(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n##1_0: int;
  var n##1_1: int;

    // AddMethodImpl: Theorem0, Impl$$_module.__default.Theorem0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(123,3)
    assume true;
    if (n#0 < 3)
    {
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(125,13)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##1_0 := n#0 - 2;
        assert {:id "id248"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id249"} n##1_0 < n#0;
        call {:id "id250"} Call$$_module.__default.Theorem0(n##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(126,13)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##1_1 := n#0 - 1;
        assert {:id "id251"} 0 <= n#0 || n##1_1 == n#0;
        assert {:id "id252"} n##1_1 < n#0;
        call {:id "id253"} Call$$_module.__default.Theorem0(n##1_1);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Theorem1 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1(n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;


    // AddMethodImpl: Theorem1, CheckWellFormed$$_module.__default.Theorem1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id254"} LitInt(1) <= n#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id255"} $Is(n#0, Tclass._System.nat());
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Fib#canCall(n#0);
    assume {:id "id256"} LitInt(1) <= _module.__default.Fib($LS($LZ), n#0);
}



procedure {:verboseName "Theorem1 (call)"} Call$$_module.__default.Theorem1(n#0: int);
  // user-defined preconditions
  requires {:id "id257"} LitInt(1) <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Fib#canCall(n#0);
  ensures {:id "id258"} LitInt(1) <= _module.__default.Fib($LS($LS($LZ)), n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1 (correctness)"} Impl$$_module.__default.Theorem1(n#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id259"} LitInt(1) <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Fib#canCall(n#0);
  ensures {:id "id260"} LitInt(1) <= _module.__default.Fib($LS($LS($LZ)), n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1 (correctness)"} Impl$$_module.__default.Theorem1(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Theorem1, Impl$$_module.__default.Theorem1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { _module.__default.Fib($LS($LZ), $ih#n0#0) } 
      LitInt(1) <= $ih#n0#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> LitInt(1) <= _module.__default.Fib($LS($LZ), $ih#n0#0));
    $_reverifyPost := false;
}



// function declaration for _module._default.Theorem2
function _module.__default.Theorem2($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.Theorem2
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Theorem2($ly, n#0) } 
    _module.__default.Theorem2#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(1) <= n#0)
       ==> LitInt(1) <= _module.__default.Fib($LS($LZ), n#0));
// definition axiom for _module.__default.Theorem2 (revealed)
axiom {:id "id261"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Theorem2($LS($ly), n#0) } 
    _module.__default.Theorem2#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(1) <= n#0)
       ==> (3 <= n#0
           ==> _module.__default.Theorem2#canCall(n#0 - 2)
             && _module.__default.Theorem2#canCall(n#0 - 1))
         && _module.__default.Theorem2($LS($ly), n#0)
           == (if n#0 < 3
             then 5
             else (var x#0 := _module.__default.Theorem2($ly, n#0 - 2); 
              (var y#0 := _module.__default.Theorem2($ly, n#0 - 1); x#0 + y#0))));
// definition axiom for _module.__default.Theorem2 for all literals (revealed)
axiom {:id "id262"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.Theorem2($LS($ly), LitInt(n#0)) } 
    _module.__default.Theorem2#canCall(LitInt(n#0))
         || (1 < $FunctionContextHeight && LitInt(1) <= LitInt(n#0))
       ==> (!Lit(n#0 < 3)
           ==> _module.__default.Theorem2#canCall(LitInt(n#0 - 2))
             && _module.__default.Theorem2#canCall(LitInt(n#0 - 1)))
         && _module.__default.Theorem2($LS($ly), LitInt(n#0))
           == (if n#0 < 3
             then 5
             else (var x#1 := LitInt(_module.__default.Theorem2($LS($ly), LitInt(n#0 - 2))); 
              (var y#1 := LitInt(_module.__default.Theorem2($LS($ly), LitInt(n#0 - 1))); 
                LitInt(x#1 + y#1)))));
}

function _module.__default.Theorem2#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Theorem2($LS($ly), n#0) } 
  _module.__default.Theorem2($LS($ly), n#0)
     == _module.__default.Theorem2($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Theorem2(AsFuelBottom($ly), n#0) } 
  _module.__default.Theorem2($ly, n#0) == _module.__default.Theorem2($LZ, n#0));

function _module.__default.Theorem2#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Theorem2
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Theorem2#requires($ly, n#0) } 
  _module.__default.Theorem2#requires($ly, n#0) == (LitInt(1) <= n#0));

procedure {:verboseName "Theorem2 (well-formedness)"} CheckWellformed$$_module.__default.Theorem2(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id263"} LitInt(1) <= _module.__default.Fib($LS($LS($LZ)), n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem2 (well-formedness)"} CheckWellformed$$_module.__default.Theorem2(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var x#Z#0: int;
  var let#0#0#0: int;
  var ##n#1: int;
  var y#Z#0: int;
  var let#1#0#0: int;
  var ##n#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id264"} LitInt(1) <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assert {:id "id265"} $Is(n#0, Tclass._System.nat());
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.Fib#canCall(n#0);
        assume {:id "id266"} LitInt(1) <= _module.__default.Fib($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 3)
        {
            assume {:id "id267"} _module.__default.Theorem2($LS($LZ), n#0) == LitInt(5);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Theorem2($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            havoc x#Z#0;
            ##n#1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id268"} {:subsumption 0} LitInt(1) <= ##n#1;
            assume LitInt(1) <= ##n#1;
            assert {:id "id269"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id270"} ##n#1 < n#0;
            assume _module.__default.Theorem2#canCall(n#0 - 2);
            assume {:id "id271"} let#0#0#0 == _module.__default.Theorem2($LS($LZ), n#0 - 2);
            assume _module.__default.Theorem2#canCall(n#0 - 2);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TInt);
            assume {:id "id272"} x#Z#0 == let#0#0#0;
            havoc y#Z#0;
            ##n#2 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, TInt, $Heap);
            assert {:id "id273"} {:subsumption 0} LitInt(1) <= ##n#2;
            assume LitInt(1) <= ##n#2;
            assert {:id "id274"} 0 <= n#0 || ##n#2 == n#0;
            assert {:id "id275"} ##n#2 < n#0;
            assume _module.__default.Theorem2#canCall(n#0 - 1);
            assume {:id "id276"} let#1#0#0 == _module.__default.Theorem2($LS($LZ), n#0 - 1);
            assume _module.__default.Theorem2#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id277"} y#Z#0 == let#1#0#0;
            assume {:id "id278"} _module.__default.Theorem2($LS($LZ), n#0) == x#Z#0 + y#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Theorem2($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.Theorem3
function _module.__default.Theorem3($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.Theorem3
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Theorem3($ly, n#0) } 
    _module.__default.Theorem3#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(1) <= n#0)
       ==> LitInt(1) <= _module.__default.Fib($LS($LZ), n#0));
// definition axiom for _module.__default.Theorem3 (revealed)
axiom {:id "id279"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Theorem3($LS($ly), n#0) } 
    _module.__default.Theorem3#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(1) <= n#0)
       ==> (3 <= n#0
           ==> _module.__default.Theorem3#canCall(n#0 - 2)
             && _module.__default.Theorem3#canCall(n#0 - 1))
         && _module.__default.Theorem3($LS($ly), n#0)
           == (if n#0 < 3
             then 5
             else (var x#0 := _module.__default.Theorem3($ly, n#0 - 2); 
              (var y#0 := _module.__default.Theorem3($ly, n#0 - 1); LitInt(5)))));
// definition axiom for _module.__default.Theorem3 for all literals (revealed)
axiom {:id "id280"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.Theorem3($LS($ly), LitInt(n#0)) } 
    _module.__default.Theorem3#canCall(LitInt(n#0))
         || (1 < $FunctionContextHeight && LitInt(1) <= LitInt(n#0))
       ==> (!Lit(n#0 < 3)
           ==> _module.__default.Theorem3#canCall(LitInt(n#0 - 2))
             && _module.__default.Theorem3#canCall(LitInt(n#0 - 1)))
         && _module.__default.Theorem3($LS($ly), LitInt(n#0))
           == (if n#0 < 3
             then 5
             else (var x#1 := LitInt(_module.__default.Theorem3($LS($ly), LitInt(n#0 - 2))); 
              (var y#1 := LitInt(_module.__default.Theorem3($LS($ly), LitInt(n#0 - 1))); 
                LitInt(5)))));
}

function _module.__default.Theorem3#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Theorem3($LS($ly), n#0) } 
  _module.__default.Theorem3($LS($ly), n#0)
     == _module.__default.Theorem3($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Theorem3(AsFuelBottom($ly), n#0) } 
  _module.__default.Theorem3($ly, n#0) == _module.__default.Theorem3($LZ, n#0));

function _module.__default.Theorem3#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Theorem3
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Theorem3#requires($ly, n#0) } 
  _module.__default.Theorem3#requires($ly, n#0) == (LitInt(1) <= n#0));

procedure {:verboseName "Theorem3 (well-formedness)"} CheckWellformed$$_module.__default.Theorem3(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id281"} LitInt(1) <= _module.__default.Fib($LS($LS($LZ)), n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem3 (well-formedness)"} CheckWellformed$$_module.__default.Theorem3(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var x#Z#0: int;
  var let#0#0#0: int;
  var ##n#1: int;
  var y#Z#0: int;
  var let#1#0#0: int;
  var ##n#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id282"} LitInt(1) <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assert {:id "id283"} $Is(n#0, Tclass._System.nat());
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.Fib#canCall(n#0);
        assume {:id "id284"} LitInt(1) <= _module.__default.Fib($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 3)
        {
            assume {:id "id285"} _module.__default.Theorem3($LS($LZ), n#0) == LitInt(5);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Theorem3($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            havoc x#Z#0;
            ##n#1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id286"} {:subsumption 0} LitInt(1) <= ##n#1;
            assume LitInt(1) <= ##n#1;
            assert {:id "id287"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id288"} ##n#1 < n#0;
            assume _module.__default.Theorem3#canCall(n#0 - 2);
            assume {:id "id289"} let#0#0#0 == _module.__default.Theorem3($LS($LZ), n#0 - 2);
            assume _module.__default.Theorem3#canCall(n#0 - 2);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TInt);
            assume {:id "id290"} x#Z#0 == let#0#0#0;
            havoc y#Z#0;
            ##n#2 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, TInt, $Heap);
            assert {:id "id291"} {:subsumption 0} LitInt(1) <= ##n#2;
            assume LitInt(1) <= ##n#2;
            assert {:id "id292"} 0 <= n#0 || ##n#2 == n#0;
            assert {:id "id293"} ##n#2 < n#0;
            assume _module.__default.Theorem3#canCall(n#0 - 1);
            assume {:id "id294"} let#1#0#0 == _module.__default.Theorem3($LS($LZ), n#0 - 1);
            assume _module.__default.Theorem3#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id295"} y#Z#0 == let#1#0#0;
            assume {:id "id296"} _module.__default.Theorem3($LS($LZ), n#0) == LitInt(5);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Theorem3($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



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

procedure {:verboseName "Q (well-formedness)"} CheckWellFormed$$_module.__default.Q(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(TInt))
         && $IsAlloc(list#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(list#0), 
    anotherList#0: DatatypeType
       where $Is(anotherList#0, Tclass._module.List(TInt))
         && $IsAlloc(anotherList#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(anotherList#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Q (call)"} Call$$_module.__default.Q(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(TInt))
         && $IsAlloc(list#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(list#0), 
    anotherList#0: DatatypeType
       where $Is(anotherList#0, Tclass._module.List(TInt))
         && $IsAlloc(anotherList#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(anotherList#0));
  // user-defined preconditions
  requires {:id "id298"} !_module.List#Equal(list#0, #_module.List.Nil());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Q (correctness)"} Impl$$_module.__default.Q(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(TInt))
         && $IsAlloc(list#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(list#0), 
    anotherList#0: DatatypeType
       where $Is(anotherList#0, Tclass._module.List(TInt))
         && $IsAlloc(anotherList#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(anotherList#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id299"} !_module.List#Equal(list#0, #_module.List.Nil());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Q (correctness)"} Impl$$_module.__default.Q(list#0: DatatypeType, anotherList#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: DatatypeType
     where $Is(x#0, Tclass._module.List(TInt))
       && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap);
  var h#Z#0: int;
  var t#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#0: int;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var t#Z#1: DatatypeType;
  var let#1#0#0: DatatypeType;
  var h#Z#1: int;
  var let#2#0#0: int;
  var a#0#0#0: Box;
  var a#0#1#0: DatatypeType;

    // AddMethodImpl: Q, Impl$$_module.__default.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(237,9)
    assume true;
    havoc h#Z#0;
    havoc t#Z#0;
    assume {:id "id300"} let#0#0#0 == list#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.List(TInt));
    assert {:id "id301"} _module.List.Cons_q(let#0#0#0);
    assume {:id "id302"} #_module.List.Cons($Box(h#Z#0), t#Z#0) == let#0#0#0;
    assume true;
    x#0 := (var h#0, t#0 := $Unbox(_module.List.head(list#0)): int, _module.List.tail(list#0); 
      #_module.List.Cons($Box(h#0), t#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(240,9)
    assume true;
    if (anotherList#0 == #_module.List.Nil())
    {
        havoc a#0#0#0, a#0#1#0;
        if (anotherList#0 == #_module.List.Nil())
        {
        }
        else if (anotherList#0 == #_module.List.Cons(a#0#0#0, a#0#1#0))
        {
            assert {:id "id308"} false;
        }
        else
        {
            assume false;
        }
    }
    else if (anotherList#0 == #_module.List.Cons($Box(_mcc#0#0), _mcc#1#0))
    {
        assume $Is(_mcc#1#0, Tclass._module.List(TInt));
        havoc t#Z#1;
        assume {:id "id304"} let#1#0#0 == _mcc#1#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, Tclass._module.List(TInt));
        assume {:id "id305"} t#Z#1 == let#1#0#0;
        havoc h#Z#1;
        assume {:id "id306"} let#2#0#0 == _mcc#0#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2#0#0, TInt);
        assume {:id "id307"} h#Z#1 == let#2#0#0;
    }
    else
    {
        assume false;
    }

    assume true;
    y#0 := (if _module.List.Nil_q(anotherList#0)
       then 5
       else (var t#1 := _module.List.tail(anotherList#0); 
        (var h#1 := $Unbox(_module.List.head(anotherList#0)): int; h#1)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(243,3)
    assume $IsA#_module.List(list#0) && $IsA#_module.List(x#0);
    assert {:id "id310"} _module.List#Equal(list#0, x#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(244,3)
    if (_module.List.Cons_q(anotherList#0))
    {
        assert {:id "id311"} _module.List.Cons_q(anotherList#0);
    }

    assume true;
    assert {:id "id312"} {:subsumption 0} _module.List.Cons_q(anotherList#0)
       ==> y#0 == $Unbox(_module.List.head(anotherList#0)): int;
    assume {:id "id313"} _module.List.Cons_q(anotherList#0)
       ==> y#0 == $Unbox(_module.List.head(anotherList#0)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(245,3)
    if (_module.List.Nil_q(anotherList#0))
    {
    }

    assume true;
    assert {:id "id314"} {:subsumption 0} _module.List.Nil_q(anotherList#0) ==> y#0 == LitInt(5);
    assume {:id "id315"} _module.List.Nil_q(anotherList#0) ==> y#0 == LitInt(5);
}



// function declaration for _module._default.Together
function _module.__default.Together(x#0: int, y#0: bool) : DatatypeType
uses {
// consequence axiom for _module.__default.Together
axiom 1 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: bool :: 
    { _module.__default.Together(x#0, y#0) } 
    _module.__default.Together#canCall(x#0, y#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Together(x#0, y#0), Tclass._module.Tuple(TInt, TBool)));
// definition axiom for _module.__default.Together (revealed)
axiom {:id "id316"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: bool :: 
    { _module.__default.Together(x#0, y#0) } 
    _module.__default.Together#canCall(x#0, y#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Together(x#0, y#0)
         == #_module.Tuple.Pair($Box(x#0), $Box(y#0)));
// definition axiom for _module.__default.Together for all literals (revealed)
axiom {:id "id317"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: bool :: 
    {:weight 3} { _module.__default.Together(LitInt(x#0), Lit(y#0)) } 
    _module.__default.Together#canCall(LitInt(x#0), Lit(y#0))
         || 1 < $FunctionContextHeight
       ==> _module.__default.Together(LitInt(x#0), Lit(y#0))
         == Lit(#_module.Tuple.Pair($Box(LitInt(x#0)), $Box(Lit(y#0)))));
}

function _module.__default.Together#canCall(x#0: int, y#0: bool) : bool;

function Tclass._module.Tuple(Ty, Ty) : Ty;

const unique Tagclass._module.Tuple: TyTag;

// Tclass._module.Tuple Tag
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
  { Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U) } 
  Tag(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
       == Tagclass._module.Tuple
     && TagFamily(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
       == tytagFamily$Tuple);

function Tclass._module.Tuple_0(Ty) : Ty;

// Tclass._module.Tuple injectivity 0
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
  { Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U) } 
  Tclass._module.Tuple_0(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     == _module.Tuple$T);

function Tclass._module.Tuple_1(Ty) : Ty;

// Tclass._module.Tuple injectivity 1
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
  { Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U) } 
  Tclass._module.Tuple_1(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     == _module.Tuple$U);

// Box/unbox axiom for Tclass._module.Tuple
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)) } 
  $IsBox(bx, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)));

function _module.__default.Together#requires(int, bool) : bool;

// #requires axiom for _module.__default.Together
axiom (forall x#0: int, y#0: bool :: 
  { _module.__default.Together#requires(x#0, y#0) } 
  _module.__default.Together#requires(x#0, y#0) == true);

procedure {:verboseName "Together (well-formedness)"} CheckWellformed$$_module.__default.Together(x#0: int, y#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LikeTogether (well-formedness)"} CheckWellFormed$$_module.__default.LikeTogether() returns (z#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LikeTogether (call)"} Call$$_module.__default.LikeTogether() returns (z#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LikeTogether (correctness)"} Impl$$_module.__default.LikeTogether() returns (z#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LikeTogether (correctness)"} Impl$$_module.__default.LikeTogether() returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#Z#0_0: int;
  var yy#Z#0_0: bool;
  var let#0_0#0#0: DatatypeType;
  var ##x#0_0: int;
  var ##y#0_0: bool;
  var t#1_0_0: int where LitInt(0) <= t#1_0_0;
  var t#Z#1_1_0: int;
  var let#1_1_0#0#0: int;

    // AddMethodImpl: LikeTogether, Impl$$_module.__default.LikeTogether
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(259,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(260,7)
        assume true;
        havoc xx#Z#0_0;
        havoc yy#Z#0_0;
        ##x#0_0 := LitInt(-10);
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, TInt, $Heap);
        ##y#0_0 := Lit(true);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_0, TBool, $Heap);
        assume _module.__default.Together#canCall(LitInt(-10), Lit(true));
        assume _module.Tuple.Pair_q(Lit(_module.__default.Together(LitInt(-10), Lit(true))));
        assume {:id "id319"} let#0_0#0#0 == Lit(_module.__default.Together(LitInt(-10), Lit(true)));
        assume _module.__default.Together#canCall(LitInt(-10), Lit(true));
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Tuple(TInt, TBool));
        assume _module.Tuple.Pair_q(let#0_0#0#0);
        assert {:id "id320"} $Is($Unbox(_module.Tuple._0(let#0_0#0#0)): int, Tclass._System.nat());
        assume {:id "id321"} #_module.Tuple.Pair($Box(xx#Z#0_0), $Box(yy#Z#0_0)) == let#0_0#0#0;
        assume _module.__default.Together#canCall(LitInt(-10), Lit(true));
        z#0 := (var xx#0_0, yy#0_0 := $Unbox(_module.Tuple._0(Lit(_module.__default.Together(LitInt(-10), Lit(true))))): int, 
            $Unbox(_module.Tuple._1(Lit(_module.__default.Together(LitInt(-10), Lit(true))))): bool; 
          xx#0_0 + 3);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(261,5)
        assume true;
        assert {:id "id323"} LitInt(0) <= z#0;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(262,10)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(263,16)
            assume true;
            assert {:id "id324"} $Is(LitInt(-30), Tclass._System.nat());
            assume true;
            t#1_0_0 := LitInt(-30);
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(265,7)
            assume true;
            havoc t#Z#1_1_0;
            assert {:id "id326"} $Is(LitInt(-30), Tclass._System.nat());
            assume {:id "id327"} let#1_1_0#0#0 == LitInt(-30);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_1_0#0#0, Tclass._System.nat());
            assume {:id "id328"} t#Z#1_1_0 == let#1_1_0#0#0;
            assume true;
            z#0 := (var t#1_1_0 := LitInt(-30); t#1_1_0);
        }
    }
}



procedure {:verboseName "Mountain (well-formedness)"} CheckWellFormed$$_module.__default.Mountain() returns (z#0: int, t#0: int where LitInt(0) <= t#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Mountain (call)"} Call$$_module.__default.Mountain() returns (z#0: int, t#0: int where LitInt(0) <= t#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Mountain (correctness)"} Impl$$_module.__default.Mountain() returns (z#0: int, t#0: int where LitInt(0) <= t#0, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Mountain (correctness)"} Impl$$_module.__default.Mountain() returns (z#0: int, t#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#Z#0: int;
  var yy#Z#0: bool;
  var let#0#0#0: DatatypeType;
  var ##x#0: int;
  var ##y#0: bool;

    // AddMethodImpl: Mountain, Impl$$_module.__default.Mountain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(271,5)
    assume true;
    havoc xx#Z#0;
    havoc yy#Z#0;
    ##x#0 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    ##y#0 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TBool, $Heap);
    assume _module.__default.Together#canCall(LitInt(10), Lit(true));
    assume _module.Tuple.Pair_q(Lit(_module.__default.Together(LitInt(10), Lit(true))));
    assume {:id "id330"} let#0#0#0 == Lit(_module.__default.Together(LitInt(10), Lit(true)));
    assume _module.__default.Together#canCall(LitInt(10), Lit(true));
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.Tuple(TInt, TBool));
    assume _module.Tuple.Pair_q(let#0#0#0);
    assert {:id "id331"} $Is($Unbox(_module.Tuple._0(let#0#0#0)): int, Tclass._System.nat());
    assume {:id "id332"} #_module.Tuple.Pair($Box(xx#Z#0), $Box(yy#Z#0)) == let#0#0#0;
    assume _module.__default.Together#canCall(LitInt(10), Lit(true));
    z#0 := (var xx#0, yy#0 := $Unbox(_module.Tuple._0(Lit(_module.__default.Together(LitInt(10), Lit(true))))): int, 
        $Unbox(_module.Tuple._1(Lit(_module.__default.Together(LitInt(10), Lit(true))))): bool; 
      xx#0 + 3);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(272,3)
    assume true;
    assert {:id "id334"} LitInt(0) <= z#0;
}



// function declaration for _module._default.Rainbow
function _module.__default.Rainbow(_module._default.Rainbow$X: Ty, tup#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.Rainbow
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Rainbow$X: Ty, tup#0: DatatypeType :: 
    { _module.__default.Rainbow(_module._default.Rainbow$X, tup#0) } 
    _module.__default.Rainbow#canCall(_module._default.Rainbow$X, tup#0)
         || (1 < $FunctionContextHeight
           && $Is(tup#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt)))
       ==> LitInt(0) <= _module.__default.Rainbow(_module._default.Rainbow$X, tup#0));
// definition axiom for _module.__default.Rainbow (revealed)
axiom {:id "id335"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Rainbow$X: Ty, tup#0: DatatypeType :: 
    { _module.__default.Rainbow(_module._default.Rainbow$X, tup#0) } 
    _module.__default.Rainbow#canCall(_module._default.Rainbow$X, tup#0)
         || (1 < $FunctionContextHeight
           && $Is(tup#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt)))
       ==> _module.__default.Rainbow(_module._default.Rainbow$X, tup#0)
         == (var left#0, right#0 := _module.Tuple._0(tup#0), $Unbox(_module.Tuple._1(tup#0)): int; 
          Mul(right#0, right#0)));
// definition axiom for _module.__default.Rainbow for all literals (revealed)
axiom {:id "id336"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Rainbow$X: Ty, tup#0: DatatypeType :: 
    {:weight 3} { _module.__default.Rainbow(_module._default.Rainbow$X, Lit(tup#0)) } 
    _module.__default.Rainbow#canCall(_module._default.Rainbow$X, Lit(tup#0))
         || (1 < $FunctionContextHeight
           && $Is(tup#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt)))
       ==> _module.__default.Rainbow(_module._default.Rainbow$X, Lit(tup#0))
         == (var left#1, right#1 := _module.Tuple._0(Lit(tup#0)), $Unbox(_module.Tuple._1(Lit(tup#0))): int; 
          Mul(right#1, right#1)));
}

function _module.__default.Rainbow#canCall(_module._default.Rainbow$X: Ty, tup#0: DatatypeType) : bool;

function _module.__default.Rainbow#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.__default.Rainbow
axiom (forall _module._default.Rainbow$X: Ty, tup#0: DatatypeType :: 
  { _module.__default.Rainbow#requires(_module._default.Rainbow$X, tup#0) } 
  $Is(tup#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt))
     ==> _module.__default.Rainbow#requires(_module._default.Rainbow$X, tup#0) == true);

procedure {:verboseName "Rainbow (well-formedness)"} CheckWellformed$$_module.__default.Rainbow(_module._default.Rainbow$X: Ty, 
    tup#0: DatatypeType
       where $Is(tup#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id337"} LitInt(0) <= _module.__default.Rainbow(_module._default.Rainbow$X, tup#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Rainbow (well-formedness)"} CheckWellformed$$_module.__default.Rainbow(_module._default.Rainbow$X: Ty, tup#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##tup#0: DatatypeType;
  var left#Z#0: Box;
  var right#Z#0: int;
  var let#0#0#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##tup#0 := tup#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##tup#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt), $Heap);
        assert {:id "id338"} _module.Tuple#Equal(tup#0, tup#0) || DtRank(##tup#0) < DtRank(tup#0);
        assume _module.Tuple#Equal(tup#0, tup#0)
           || _module.__default.Rainbow#canCall(_module._default.Rainbow$X, tup#0);
        assume {:id "id339"} LitInt(0) <= _module.__default.Rainbow(_module._default.Rainbow$X, tup#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc left#Z#0;
        havoc right#Z#0;
        assume {:id "id340"} let#0#0#0 == tup#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.Tuple(_module._default.Rainbow$X, TInt));
        assume _module.Tuple.Pair_q(let#0#0#0);
        assume {:id "id341"} #_module.Tuple.Pair(left#Z#0, $Box(right#Z#0)) == let#0#0#0;
        assume {:id "id342"} _module.__default.Rainbow(_module._default.Rainbow$X, tup#0)
           == Mul(right#Z#0, right#Z#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Rainbow(_module._default.Rainbow$X, tup#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.Fr
function _module.__default.Fr(x#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Fr
axiom 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Fr(x#0) } 
    _module.__default.Fr#canCall(x#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Fr(x#0), Tclass._module.Friend()));
// definition axiom for _module.__default.Fr (revealed)
axiom {:id "id343"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Fr(x#0) } 
    _module.__default.Fr#canCall(x#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Fr(x#0)
         == (if x#0 < 10 then #_module.Friend.Jermaine(x#0) else #_module.Friend.Agnes(x#0)));
// definition axiom for _module.__default.Fr for all literals (revealed)
axiom {:id "id344"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.Fr(LitInt(x#0)) } 
    _module.__default.Fr#canCall(LitInt(x#0)) || 1 < $FunctionContextHeight
       ==> _module.__default.Fr(LitInt(x#0))
         == (if x#0 < 10
           then #_module.Friend.Jermaine(LitInt(x#0))
           else #_module.Friend.Agnes(LitInt(x#0))));
}

function _module.__default.Fr#canCall(x#0: int) : bool;

function Tclass._module.Friend() : Ty
uses {
// Tclass._module.Friend Tag
axiom Tag(Tclass._module.Friend()) == Tagclass._module.Friend
   && TagFamily(Tclass._module.Friend()) == tytagFamily$Friend;
}

const unique Tagclass._module.Friend: TyTag;

// Box/unbox axiom for Tclass._module.Friend
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Friend()) } 
  $IsBox(bx, Tclass._module.Friend())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Friend()));

function _module.__default.Fr#requires(int) : bool;

// #requires axiom for _module.__default.Fr
axiom (forall x#0: int :: 
  { _module.__default.Fr#requires(x#0) } 
  _module.__default.Fr#requires(x#0) == true);

procedure {:verboseName "Fr (well-formedness)"} CheckWellformed$$_module.__default.Fr(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Friendly (well-formedness)"} CheckWellFormed$$_module.__default.Friendly(n#0: int where LitInt(0) <= n#0) returns (c#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Friendly (call)"} Call$$_module.__default.Friendly(n#0: int where LitInt(0) <= n#0) returns (c#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id348"} c#0 == n#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Friendly (correctness)"} Impl$$_module.__default.Friendly(n#0: int where LitInt(0) <= n#0) returns (c#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id349"} c#0 == n#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Friendly (correctness)"} Impl$$_module.__default.Friendly(n#0: int) returns (c#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#Z#0_0: int;
  var let#0_0#0#0: DatatypeType;
  var ##x#0_0: int;
  var y#Z#1_0: int;
  var let#1_0#0#0: DatatypeType;
  var ##x#1_0: int;

    // AddMethodImpl: Friendly, Impl$$_module.__default.Friendly
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(291,3)
    assume true;
    if (n#0 < 3)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(292,7)
        assume true;
        havoc y#Z#0_0;
        ##x#0_0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, TInt, $Heap);
        assume _module.__default.Fr#canCall(n#0);
        assume {:id "id350"} let#0_0#0#0 == _module.__default.Fr(n#0);
        assume _module.__default.Fr#canCall(n#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Friend());
        assert {:id "id351"} _module.Friend.Jermaine_q(let#0_0#0#0);
        assume {:id "id352"} #_module.Friend.Jermaine(y#Z#0_0) == let#0_0#0#0;
        assume _module.__default.Fr#canCall(n#0);
        c#0 := (var y#0_0 := _module.Friend._h2(_module.__default.Fr(n#0)); y#0_0);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(294,7)
        assume true;
        havoc y#Z#1_0;
        ##x#1_0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1_0, TInt, $Heap);
        assume _module.__default.Fr#canCall(n#0);
        assume {:id "id354"} let#1_0#0#0 == _module.__default.Fr(n#0);
        assume _module.__default.Fr#canCall(n#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass._module.Friend());
        assert {:id "id355"} _module.Friend.Agnes_q(let#1_0#0#0);
        assume {:id "id356"} #_module.Friend.Agnes(y#Z#1_0) == let#1_0#0#0;
        assume _module.__default.Fr#canCall(n#0);
        c#0 := (var y#1_0 := _module.Friend._h0(_module.__default.Fr(n#0)); y#1_0);
    }
}



// function declaration for _module._default.F_good
function _module.__default.F__good(d#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.F__good (revealed)
axiom {:id "id358"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { _module.__default.F__good(d#0) } 
    _module.__default.F__good#canCall(d#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(d#0, 
            Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
              Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool))))
           && 
          LitInt(0)
             <= $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int
           && $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int
             < 100)
       ==> _module.Tuple.Pair_q(d#0)
         && 
        _module.Tuple.Pair_q(d#0)
         && _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType)
         && _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)
         && (var p#0 := $Unbox(_module.Tuple._0(d#0)): DatatypeType; 
          _module.Tuple.Pair_q(p#0))
         && _module.__default.F__good(d#0)
           == (var p#0, b0#0, x#0, y0#0, y1#0, b1#0, b2#0, q#0 := $Unbox(_module.Tuple._0(d#0)): DatatypeType, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0(d#0)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0(d#0)): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int; 
            $Unbox(_module.Tuple._1(p#0)): int + (if b0#0 then x#0 + y0#0 else x#0 + y1#0)));
// definition axiom for _module.__default.F__good for all literals (revealed)
axiom {:id "id359"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    {:weight 3} { _module.__default.F__good(Lit(d#0)) } 
    _module.__default.F__good#canCall(Lit(d#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(d#0, 
            Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
              Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool))))
           && 
          LitInt(0)
             <= LitInt($Unbox(_module.Tuple._1(Lit($Unbox(_module.Tuple._0(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))): DatatypeType))): int)
           && $Unbox(_module.Tuple._1(Lit($Unbox(_module.Tuple._0(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))): DatatypeType))): int
             < 100)
       ==> _module.Tuple.Pair_q(Lit(d#0))
         && 
        _module.Tuple.Pair_q(Lit(d#0))
         && _module.Tuple.Pair_q(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))
         && _module.Tuple.Pair_q(Lit($Unbox(_module.Tuple._0(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))): DatatypeType))
         && (var p#1 := Lit($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType); 
          _module.Tuple.Pair_q(p#1))
         && _module.__default.F__good(Lit(d#0))
           == (var p#1, b0#1, x#1, y0#1, y1#1, b1#1, b2#1, q#1 := Lit($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType), 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): bool, 
              LitInt($Unbox(_module.Tuple._1(Lit($Unbox(_module.Tuple._0(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))): DatatypeType))): int); 
            $Unbox(_module.Tuple._1(p#1)): int + (if b0#1 then x#1 + y0#1 else x#1 + y1#1)));
}

function _module.__default.F__good#canCall(d#0: DatatypeType) : bool;

function _module.__default.F__good#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.F__good
axiom (forall d#0: DatatypeType :: 
  { _module.__default.F__good#requires(d#0) } 
  $Is(d#0, 
      Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
        Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool))))
     ==> _module.__default.F__good#requires(d#0)
       == (LitInt(0)
           <= $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int
         && $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int
           < 100));

procedure {:verboseName "F_good (well-formedness)"} CheckWellformed$$_module.__default.F__good(d#0: DatatypeType
       where $Is(d#0, 
        Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
          Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool)))));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F_good (well-formedness)"} CheckWellformed$$_module.__default.F__good(d#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var p#Z#0: DatatypeType;
  var b0#Z#0: bool;
  var x#Z#0: int;
  var y0#Z#0: int;
  var y1#Z#0: int;
  var b1#Z#0: bool;
  var b2#Z#0: bool;
  var q#Z#0: int;
  var let#0#0#0: DatatypeType;
  var let#0#1#0: DatatypeType;
  var let#0#2#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume _module.Tuple.Pair_q(d#0);
    assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType);
    assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType);
    if (LitInt(0)
       <= $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int)
    {
        assume _module.Tuple.Pair_q(d#0);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType);
    }

    assume {:id "id360"} LitInt(0)
         <= $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int
       && $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int
         < 100;
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
        havoc p#Z#0;
        havoc b0#Z#0;
        havoc x#Z#0;
        havoc y0#Z#0;
        havoc y1#Z#0;
        havoc b1#Z#0;
        havoc b2#Z#0;
        havoc q#Z#0;
        assume _module.Tuple.Pair_q(d#0);
        assume {:id "id361"} let#0#0#0 == $Unbox(_module.Tuple._0(d#0)): DatatypeType;
        assume _module.Tuple.Pair_q(d#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.Tuple(TBool, TInt));
        assume {:id "id362"} p#Z#0 == let#0#0#0;
        assume {:id "id363"} let#0#1#0 == d#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#1#0, 
          Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
            Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool))));
        assume _module.Tuple.Pair_q(let#0#1#0);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0(let#0#1#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType)): DatatypeType);
        assert {:id "id364"} $Is($Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType)): DatatypeType)): int, 
          Tclass._System.nat());
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType)): DatatypeType);
        assume {:id "id365"} #_module.Tuple.Pair($Box(#_module.Tuple.Pair($Box(b0#Z#0), $Box(x#Z#0))), 
            $Box(#_module.Tuple.Pair($Box(#_module.Tuple.Pair($Box(y0#Z#0), $Box(y1#Z#0))), 
                $Box(#_module.Tuple.Pair($Box(b1#Z#0), $Box(b2#Z#0))))))
           == let#0#1#0;
        assume _module.Tuple.Pair_q(d#0);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType);
        assume {:id "id366"} let#0#2#0
           == $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int;
        assume _module.Tuple.Pair_q(d#0)
           && _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType)
           && _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#2#0, TInt);
        assume {:id "id367"} q#Z#0 == let#0#2#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(304,3)
        assume true;
        assert {:id "id368"} q#Z#0 < 200;
        assume _module.Tuple.Pair_q(p#Z#0);
        if (b0#Z#0)
        {
        }
        else
        {
        }

        assume {:id "id369"} _module.__default.F__good(d#0)
           == $Unbox(_module.Tuple._1(p#Z#0)): int
             + (if b0#Z#0 then x#Z#0 + y0#Z#0 else x#Z#0 + y1#Z#0);
        assume _module.Tuple.Pair_q(p#Z#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.F__good(d#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.F_bad
function _module.__default.F__bad(d#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.F__bad (revealed)
axiom {:id "id370"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { _module.__default.F__bad(d#0) } 
    _module.__default.F__bad#canCall(d#0)
         || (1 < $FunctionContextHeight
           && $Is(d#0, 
            Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
              Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool)))))
       ==> _module.Tuple.Pair_q(d#0)
         && 
        _module.Tuple.Pair_q(d#0)
         && _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType)
         && _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)
         && (var p#0 := $Unbox(_module.Tuple._0(d#0)): DatatypeType; 
          _module.Tuple.Pair_q(p#0))
         && _module.__default.F__bad(d#0)
           == (var p#0, b0#0, x#0, y0#0, y1#0, b1#0, b2#0, q#0 := $Unbox(_module.Tuple._0(d#0)): DatatypeType, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0(d#0)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0(d#0)): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int; 
            $Unbox(_module.Tuple._1(p#0)): int + (if b0#0 then x#0 + y0#0 else x#0 + y1#0)));
// definition axiom for _module.__default.F__bad for all literals (revealed)
axiom {:id "id371"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    {:weight 3} { _module.__default.F__bad(Lit(d#0)) } 
    _module.__default.F__bad#canCall(Lit(d#0))
         || (1 < $FunctionContextHeight
           && $Is(d#0, 
            Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
              Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool)))))
       ==> _module.Tuple.Pair_q(Lit(d#0))
         && 
        _module.Tuple.Pair_q(Lit(d#0))
         && _module.Tuple.Pair_q(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))
         && _module.Tuple.Pair_q(Lit($Unbox(_module.Tuple._0(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))): DatatypeType))
         && (var p#1 := Lit($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType); 
          _module.Tuple.Pair_q(p#1))
         && _module.__default.F__bad(Lit(d#0))
           == (var p#1, b0#1, x#1, y0#1, y1#1, b1#1, b2#1, q#1 := Lit($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType), 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0(Lit(d#0))): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): int, 
              $Unbox(_module.Tuple._0($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): bool, 
              $Unbox(_module.Tuple._1($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType)): DatatypeType)): bool, 
              LitInt($Unbox(_module.Tuple._1(Lit($Unbox(_module.Tuple._0(Lit($Unbox(_module.Tuple._1(Lit(d#0))): DatatypeType))): DatatypeType))): int); 
            $Unbox(_module.Tuple._1(p#1)): int + (if b0#1 then x#1 + y0#1 else x#1 + y1#1)));
}

function _module.__default.F__bad#canCall(d#0: DatatypeType) : bool;

function _module.__default.F__bad#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.F__bad
axiom (forall d#0: DatatypeType :: 
  { _module.__default.F__bad#requires(d#0) } 
  $Is(d#0, 
      Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
        Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool))))
     ==> _module.__default.F__bad#requires(d#0) == true);

procedure {:verboseName "F_bad (well-formedness)"} CheckWellformed$$_module.__default.F__bad(d#0: DatatypeType
       where $Is(d#0, 
        Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
          Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool)))));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F_bad (well-formedness)"} CheckWellformed$$_module.__default.F__bad(d#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var p#Z#0: DatatypeType;
  var b0#Z#0: bool;
  var x#Z#0: int;
  var y0#Z#0: int;
  var y1#Z#0: int;
  var b1#Z#0: bool;
  var b2#Z#0: bool;
  var q#Z#0: int;
  var let#0#0#0: DatatypeType;
  var let#0#1#0: DatatypeType;
  var let#0#2#0: int;


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
        havoc p#Z#0;
        havoc b0#Z#0;
        havoc x#Z#0;
        havoc y0#Z#0;
        havoc y1#Z#0;
        havoc b1#Z#0;
        havoc b2#Z#0;
        havoc q#Z#0;
        assume _module.Tuple.Pair_q(d#0);
        assume {:id "id372"} let#0#0#0 == $Unbox(_module.Tuple._0(d#0)): DatatypeType;
        assume _module.Tuple.Pair_q(d#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.Tuple(TBool, TInt));
        assume {:id "id373"} p#Z#0 == let#0#0#0;
        assume {:id "id374"} let#0#1#0 == d#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#1#0, 
          Tclass._module.Tuple(Tclass._module.Tuple(TBool, TInt), 
            Tclass._module.Tuple(Tclass._module.Tuple(TInt, TInt), Tclass._module.Tuple(TBool, TBool))));
        assume _module.Tuple.Pair_q(let#0#1#0);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0(let#0#1#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType)): DatatypeType);
        assert {:id "id375"} $Is($Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType)): DatatypeType)): int, 
          Tclass._System.nat());
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1($Unbox(_module.Tuple._1(let#0#1#0)): DatatypeType)): DatatypeType);
        assume {:id "id376"} #_module.Tuple.Pair($Box(#_module.Tuple.Pair($Box(b0#Z#0), $Box(x#Z#0))), 
            $Box(#_module.Tuple.Pair($Box(#_module.Tuple.Pair($Box(y0#Z#0), $Box(y1#Z#0))), 
                $Box(#_module.Tuple.Pair($Box(b1#Z#0), $Box(b2#Z#0))))))
           == let#0#1#0;
        assume _module.Tuple.Pair_q(d#0);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType);
        assume _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType);
        assume {:id "id377"} let#0#2#0
           == $Unbox(_module.Tuple._1($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType)): int;
        assume _module.Tuple.Pair_q(d#0)
           && _module.Tuple.Pair_q($Unbox(_module.Tuple._1(d#0)): DatatypeType)
           && _module.Tuple.Pair_q($Unbox(_module.Tuple._0($Unbox(_module.Tuple._1(d#0)): DatatypeType)): DatatypeType);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#2#0, TInt);
        assume {:id "id378"} q#Z#0 == let#0#2#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(313,3)
        assume true;
        assert {:id "id379"} q#Z#0 < 200;
        assume _module.Tuple.Pair_q(p#Z#0);
        if (b0#Z#0)
        {
        }
        else
        {
        }

        assume {:id "id380"} _module.__default.F__bad(d#0)
           == $Unbox(_module.Tuple._1(p#Z#0)): int
             + (if b0#Z#0 then x#Z#0 + y0#Z#0 else x#Z#0 + y1#Z#0);
        assume _module.Tuple.Pair_q(p#Z#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.F__bad(d#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "LetSuchThat_Deterministic (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThat__Deterministic() returns (x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat_Deterministic (call)"} Call$$_module.__default.LetSuchThat__Deterministic() returns (x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LetSuchThat_Deterministic (correctness)"} Impl$$_module.__default.LetSuchThat__Deterministic() returns (x#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#0_w() : int;

function $let#0$canCall() : bool
uses {
axiom $let#0$canCall() ==> $let#0_w() == Mul(LitInt(2), $let#0_w());
}

function $let#1_y() : int;

function $let#1$canCall() : bool
uses {
axiom $let#1$canCall() ==> $let#1_y() < 0;
}

function $let#2_y() : int;

function $let#2$canCall() : bool
uses {
axiom $let#2$canCall() ==> $let#2_y() < 0;
}

function $let#3_a(t: Set) : int;

function $let#3_b(t: Set) : int;

function $let#3$canCall(t: Set) : bool;

axiom (forall t: Set :: 
  { $let#3_b(t) } { $let#3_a(t) } 
  $let#3$canCall(t)
     ==> Set#IsMember(t, $Box($let#3_a(t)))
       && Set#IsMember(t, $Box($let#3_b(t)))
       && $let#3_a(t) != $let#3_b(t));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThat_Deterministic (correctness)"} Impl$$_module.__default.LetSuchThat__Deterministic() returns (x#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var w#0_1: int;
  var w#0_2: int;
  var y#1_1: int;
  var y#1_2: int;
  var y#2_1: int;
  var y#2_2: int;
  var t#0: Set where $Is(t#0, TSet(TInt)) && $IsAlloc(t#0, TSet(TInt), $Heap);
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var a#1: int;
  var b#1: int;
  var a#2: int;
  var b#2: int;

    // AddMethodImpl: LetSuchThat_Deterministic, Impl$$_module.__default.LetSuchThat__Deterministic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(321,3)
    if (*)
    {
        assume true;
        assume {:id "id392"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(323,9)
        assume true;
        havoc y#2_1;
        if (true)
        {
        }

        assert {:id "id393"} ($Is(LitInt(0 - 1), TInt) && Lit(0 - 1 < 0))
           || 
          ($Is(LitInt(0), TInt) && Lit(0 < 0))
           || (exists y#2_0: int :: y#2_0 < 0);
        assume true;
        assume y#2_1 < 0;
        havoc y#2_2;
        assume true;
        assume true;
        assume {:id "id394"} y#2_2 < 0;
        assume true;
        assert {:id "id395"} y#2_1 == y#2_2;
        assume $let#2$canCall();
        assume $let#2$canCall();
        x#0 := (var y#2_0 := $let#2_y(); y#2_0);
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id387"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(325,9)
        assume true;
        havoc y#1_1;
        if (true)
        {
        }

        assert {:id "id388"} ($Is(LitInt(0 - 1), TInt) && Lit(0 - 1 < 0))
           || 
          ($Is(LitInt(0), TInt) && Lit(0 < 0))
           || (exists y#1_0: int :: y#1_0 < 0);
        assume true;
        assume y#1_1 < 0;
        havoc y#1_2;
        assume true;
        assume true;
        assume {:id "id389"} y#1_2 < 0;
        assume true;
        assert {:id "id390"} Mul(y#1_1, LitInt(0)) == Mul(y#1_2, LitInt(0));
        assume $let#1$canCall();
        assume $let#1$canCall();
        x#0 := (var y#1_0 := $let#1_y(); Mul(y#1_0, LitInt(0)));
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id382"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(327,9)
        assume true;
        havoc w#0_1;
        if (true)
        {
        }

        assert {:id "id383"} ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(Mul(LitInt(2), LitInt(0))))
           || (exists w#0_0: int :: w#0_0 == Mul(LitInt(2), w#0_0));
        assume true;
        assume w#0_1 == Mul(LitInt(2), w#0_1);
        havoc w#0_2;
        assume true;
        assume true;
        assume {:id "id384"} w#0_2 == Mul(LitInt(2), w#0_2);
        assume true;
        assert {:id "id385"} w#0_1 == w#0_2;
        assume $let#0$canCall();
        assume $let#0$canCall();
        x#0 := (var w#0_0 := $let#0_w(); w#0_0);
        pop;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id381"} false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(329,9)
    assume true;
    assume true;
    t#0 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(3))), $Box(LitInt(5))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(330,9)
    assume true;
    havoc a#1;
    havoc b#1;
    if (true)
    {
        if (Set#IsMember(t#0, $Box(a#1)))
        {
        }

        if (Set#IsMember(t#0, $Box(a#1)) && Set#IsMember(t#0, $Box(b#1)))
        {
        }
    }

    assert {:id "id398"} (
        $Is(LitInt(0), TInt)
         && $Is(LitInt(0), TInt)
         && 
        Set#IsMember(t#0, $Box(LitInt(0)))
         && Set#IsMember(t#0, $Box(LitInt(0)))
         && 0 != 0)
       || 
      (exists a#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          Set#IsMember(t#0, $Box(a#0))
           && Set#IsMember(t#0, $Box(LitInt(0)))
           && a#0 != 0)
       || 
      (exists b#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          Set#IsMember(t#0, $Box(LitInt(0)))
           && Set#IsMember(t#0, $Box(b#0))
           && 0 != b#0)
       || (exists a#0: int, b#0: int :: 
        Set#IsMember(t#0, $Box(a#0)) && Set#IsMember(t#0, $Box(b#0)) && a#0 != b#0);
    assume true;
    assume Set#IsMember(t#0, $Box(a#1)) && Set#IsMember(t#0, $Box(b#1)) && a#1 != b#1;
    havoc a#2;
    havoc b#2;
    assume true;
    assume true;
    assume {:id "id399"} Set#IsMember(t#0, $Box(a#2)) && Set#IsMember(t#0, $Box(b#2)) && a#2 != b#2;
    assume true;
    assert {:id "id400"} Set#Equal(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(a#1)), 
        Set#UnionOne(Set#Empty(): Set, $Box(b#1))), 
      Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(a#2)), 
        Set#UnionOne(Set#Empty(): Set, $Box(b#2))));
    assume $let#3$canCall(t#0);
    assume $let#3$canCall(t#0);
    s#0 := (var a#0, b#0 := $let#3_a(t#0), $let#3_b(t#0); 
      Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(a#0)), 
        Set#UnionOne(Set#Empty(): Set, $Box(b#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(331,3)
    assume true;
    assert {:id "id402"} Set#Equal(s#0, t#0);
}



const unique class._module.AClass?: ClassName;

function Tclass._module.AClass?() : Ty
uses {
// Tclass._module.AClass? Tag
axiom Tag(Tclass._module.AClass?()) == Tagclass._module.AClass?
   && TagFamily(Tclass._module.AClass?()) == tytagFamily$AClass;
}

const unique Tagclass._module.AClass?: TyTag;

// Box/unbox axiom for Tclass._module.AClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AClass?()) } 
  $IsBox(bx, Tclass._module.AClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.AClass?()));

// $Is axiom for class AClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.AClass?()) } 
  $Is($o, Tclass._module.AClass?())
     <==> $o == null || dtype($o) == Tclass._module.AClass?());

// $IsAlloc axiom for class AClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AClass?(), $h) } 
  $IsAlloc($o, Tclass._module.AClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.AClass.index: Field
uses {
axiom FDim(_module.AClass.index) == 0
   && FieldOfDecl(class._module.AClass?, field$index) == _module.AClass.index
   && !$IsGhostField(_module.AClass.index);
}

// AClass.index: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AClass.index)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.AClass?()
     ==> $Is($Unbox(read($h, $o, _module.AClass.index)): int, TInt));

// AClass.index: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AClass.index)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AClass.index)): int, TInt, $h));

function Tclass._module.AClass() : Ty
uses {
// Tclass._module.AClass Tag
axiom Tag(Tclass._module.AClass()) == Tagclass._module.AClass
   && TagFamily(Tclass._module.AClass()) == tytagFamily$AClass;
}

const unique Tagclass._module.AClass: TyTag;

// Box/unbox axiom for Tclass._module.AClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AClass()) } 
  $IsBox(bx, Tclass._module.AClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.AClass()));

procedure {:verboseName "AClass.P (well-formedness)"} CheckWellFormed$$_module.AClass.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AClass())
         && $IsAlloc(this, Tclass._module.AClass(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: bool, ii#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AClass.P (well-formedness)"} CheckWellFormed$$_module.AClass.P(this: ref, a#0: ref) returns (b#0: bool, ii#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var newIndex#Z#0: int;
  var let#0#0#0: int;
  var oldIndex#Z#0: int;
  var let#1#0#0: int;
  var oi#Z#0: int;
  var let#2#0#0: int;


    // AddMethodImpl: P, CheckWellFormed$$_module.AClass.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == a#0);
    havoc k#0;
    assume true;
    if (LitInt(0) <= k#0)
    {
        assert {:id "id403"} a#0 != null;
    }

    assume {:id "id404"} LitInt(0) <= k#0 && k#0 < _System.array.Length(a#0);
    assert {:id "id405"} a#0 != null;
    assert {:id "id406"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
    assume {:id "id407"} $Unbox(read($Heap, a#0, IndexField(k#0))): int == LitInt(19);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc b#0, ii#0;
    assume {:id "id408"} ii#0 == $Unbox(read($Heap, this, _module.AClass.index)): int;
    if (LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int)
    {
        assert {:id "id409"} a#0 != null;
    }

    assume {:id "id410"} LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int
       && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
    assert {:id "id411"} a#0 != null;
    assert {:id "id412"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id413"} 0 <= ii#0 && ii#0 < _System.array.Length(a#0);
    assume {:id "id414"} $Unbox(read(old($Heap), a#0, IndexField(ii#0))): int == LitInt(19);
    if (LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int)
    {
        assert {:id "id415"} a#0 != null;
    }

    assume {:id "id416"} LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int
       && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
    havoc newIndex#Z#0;
    assume {:id "id417"} let#0#0#0 == $Unbox(read($Heap, this, _module.AClass.index)): int;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id418"} newIndex#Z#0 == let#0#0#0;
    assert {:id "id419"} a#0 != null;
    assert {:id "id420"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id421"} 0 <= newIndex#Z#0 && newIndex#Z#0 < _System.array.Length(a#0);
    assume {:id "id422"} (var newIndex#0 := $Unbox(read($Heap, this, _module.AClass.index)): int; 
      $Unbox(read(old($Heap), a#0, IndexField(newIndex#0))): int == LitInt(19));
    if (*)
    {
        assume {:id "id423"} b#0;
        havoc oldIndex#Z#0;
        assert {:id "id424"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
        assume {:id "id425"} let#1#0#0 == $Unbox(read(old($Heap), this, _module.AClass.index)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TInt);
        assume {:id "id426"} oldIndex#Z#0 == let#1#0#0;
        if (LitInt(0) <= oldIndex#Z#0)
        {
            assert {:id "id427"} a#0 != null;
            assert {:id "id428"} $IsAlloc(a#0, Tclass._System.array(TInt), old($Heap));
        }

        if (LitInt(0) <= oldIndex#Z#0 && oldIndex#Z#0 < _System.array.Length(a#0))
        {
            assert {:id "id429"} a#0 != null;
            assert {:id "id430"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id431"} 0 <= oldIndex#Z#0 && oldIndex#Z#0 < _System.array.Length(a#0);
        }

        assume {:id "id432"} (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
          LitInt(0) <= oldIndex#0
             && oldIndex#0 < _System.array.Length(a#0)
             && $Unbox(read(old($Heap), a#0, IndexField(oldIndex#0))): int == LitInt(17));
    }
    else
    {
        assume {:id "id433"} b#0
           ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
            LitInt(0) <= oldIndex#0
               && oldIndex#0 < _System.array.Length(a#0)
               && $Unbox(read(old($Heap), a#0, IndexField(oldIndex#0))): int == LitInt(17));
    }

    havoc oi#Z#0;
    assert {:id "id434"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
    assume {:id "id435"} let#2#0#0 == $Unbox(read(old($Heap), this, _module.AClass.index)): int;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, TInt);
    assume {:id "id436"} oi#Z#0 == let#2#0#0;
    if (oi#Z#0 == $Unbox(read($Heap, this, _module.AClass.index)): int)
    {
        assert {:id "id437"} a#0 != null;
        assert {:id "id438"} 0 <= oi#Z#0 && oi#Z#0 < _System.array.Length(a#0);
        if ($Unbox(read($Heap, a#0, IndexField(oi#Z#0))): int == LitInt(21))
        {
            assert {:id "id439"} a#0 != null;
            assert {:id "id440"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id441"} 0 <= oi#Z#0 && oi#Z#0 < _System.array.Length(a#0);
        }
    }

    assume {:id "id442"} (var oi#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      oi#0 == $Unbox(read($Heap, this, _module.AClass.index)): int
         ==> $Unbox(read($Heap, a#0, IndexField(oi#0))): int == LitInt(21)
           && $Unbox(read(old($Heap), a#0, IndexField(oi#0))): int == LitInt(19));
}



procedure {:verboseName "AClass.P (call)"} Call$$_module.AClass.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AClass())
         && $IsAlloc(this, Tclass._module.AClass(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: bool, ii#0: int);
  // user-defined preconditions
  requires {:id "id443"} (exists k#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
       && k#1 < _System.array.Length(a#0)
       && $Unbox(read($Heap, a#0, IndexField(k#1))): int == LitInt(19));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id444"} ii#0 == $Unbox(read($Heap, this, _module.AClass.index)): int;
  free ensures true;
  ensures {:id "id445"} LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int;
  ensures {:id "id446"} $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
  ensures {:id "id447"} $Unbox(read(old($Heap), a#0, IndexField(ii#0))): int == LitInt(19);
  free ensures true;
  ensures {:id "id448"} LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int;
  ensures {:id "id449"} $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
  ensures {:id "id450"} (var newIndex#0 := $Unbox(read($Heap, this, _module.AClass.index)): int; 
    $Unbox(read(old($Heap), a#0, IndexField(newIndex#0))): int == LitInt(19));
  free ensures true;
  ensures {:id "id451"} b#0
     ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      LitInt(0) <= oldIndex#0);
  ensures {:id "id452"} b#0
     ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      oldIndex#0 < _System.array.Length(a#0));
  ensures {:id "id453"} b#0
     ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      $Unbox(read(old($Heap), a#0, IndexField(oldIndex#0))): int == LitInt(17));
  free ensures true;
  ensures {:id "id454"} (var oi#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
    oi#0 == $Unbox(read($Heap, this, _module.AClass.index)): int
       ==> $Unbox(read($Heap, a#0, IndexField(oi#0))): int == LitInt(21));
  ensures {:id "id455"} (var oi#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
    oi#0 == $Unbox(read($Heap, this, _module.AClass.index)): int
       ==> $Unbox(read(old($Heap), a#0, IndexField(oi#0))): int == LitInt(19));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AClass.P (correctness)"} Impl$$_module.AClass.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AClass())
         && $IsAlloc(this, Tclass._module.AClass(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: bool, ii#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id456"} (exists k#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
       && k#1 < _System.array.Length(a#0)
       && $Unbox(read($Heap, a#0, IndexField(k#1))): int == LitInt(19));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id457"} ii#0 == $Unbox(read($Heap, this, _module.AClass.index)): int;
  free ensures true;
  ensures {:id "id458"} LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int;
  ensures {:id "id459"} $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
  ensures {:id "id460"} $Unbox(read(old($Heap), a#0, IndexField(ii#0))): int == LitInt(19);
  free ensures true;
  ensures {:id "id461"} LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int;
  ensures {:id "id462"} $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
  ensures {:id "id463"} (var newIndex#0 := $Unbox(read($Heap, this, _module.AClass.index)): int; 
    $Unbox(read(old($Heap), a#0, IndexField(newIndex#0))): int == LitInt(19));
  free ensures true;
  ensures {:id "id464"} b#0
     ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      LitInt(0) <= oldIndex#0);
  ensures {:id "id465"} b#0
     ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      oldIndex#0 < _System.array.Length(a#0));
  ensures {:id "id466"} b#0
     ==> (var oldIndex#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
      $Unbox(read(old($Heap), a#0, IndexField(oldIndex#0))): int == LitInt(17));
  free ensures true;
  ensures {:id "id467"} (var oi#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
    oi#0 == $Unbox(read($Heap, this, _module.AClass.index)): int
       ==> $Unbox(read($Heap, a#0, IndexField(oi#0))): int == LitInt(21));
  ensures {:id "id468"} (var oi#0 := $Unbox(read(old($Heap), this, _module.AClass.index)): int; 
    oi#0 == $Unbox(read($Heap, this, _module.AClass.index)): int
       ==> $Unbox(read(old($Heap), a#0, IndexField(oi#0))): int == LitInt(19));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AClass.P (correctness)"} Impl$$_module.AClass.P(this: ref, a#0: ref) returns (b#0: bool, ii#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var k#2: int;
  var k#4: int;
  var k#6: int;
  var $decr$loop#00: int;
  var $obj1: ref;
  var $index1: Field;
  var $rhs#0_0: int;
  var $rhs#0_1: int;
  var $rhs#2: int;

    // AddMethodImpl: P, Impl$$_module.AClass.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(84,7)
    assume true;
    if (LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int)
    {
        assert {:id "id469"} a#0 != null;
    }

    if (LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int
       && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0))
    {
        assert {:id "id470"} a#0 != null;
        assert {:id "id471"} 0 <= $Unbox(read($Heap, this, _module.AClass.index)): int
           && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
    }

    assume true;
    b#0 := LitInt(0) <= $Unbox(read($Heap, this, _module.AClass.index)): int
       && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0)
       && $Unbox(read($Heap, a#0, IndexField($Unbox(read($Heap, this, _module.AClass.index)): int))): int
         == LitInt(17);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(85,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(-1);
    i#0 := $rhs#0;
    j#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(86,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array.Length(a#0) - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id479"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id480"} $w$loop#0 ==> i#0 <= _System.array.Length(a#0);
      free invariant true;
      invariant {:id "id484"} $w$loop#0
         ==> (forall k#3: int :: 
          { $Unbox(read($Heap, a#0, IndexField(k#3))): int } 
          LitInt(0) <= k#3 && k#3 < i#0
             ==> $Unbox(read($Heap, a#0, IndexField(k#3))): int == LitInt(21));
      free invariant true;
      invariant {:id "id492"} $w$loop#0
         ==> (forall k#5: int :: 
          { $Unbox(read(old($Heap), a#0, IndexField(k#5))): int } 
            { $Unbox(read($Heap, a#0, IndexField(k#5))): int } 
          i#0 <= k#5 && k#5 < _System.array.Length(a#0)
             ==> $Unbox(read($Heap, a#0, IndexField(k#5))): int
               == $Unbox(read(old($Heap), a#0, IndexField(k#5))): int);
      free invariant true;
      invariant {:id "id500"} $w$loop#0
         ==> (
            LitInt(0) <= j#0
             && j#0 < i#0
             && $Unbox(read(old($Heap), a#0, IndexField(j#0))): int == LitInt(19))
           || (j#0 == LitInt(-1)
             && (exists k#7: int :: 
              { $Unbox(read($Heap, a#0, IndexField(k#7))): int } 
              i#0 <= k#7
                 && k#7 < _System.array.Length(a#0)
                 && $Unbox(read($Heap, a#0, IndexField(k#7))): int == LitInt(19)));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant _System.array.Length(a#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
                assert {:id "id477"} {:subsumption 0} a#0 != null;
            }

            assume true;
            assume {:id "id478"} LitInt(0) <= i#0 && i#0 <= _System.array.Length(a#0);
            // Begin Comprehension WF check
            havoc k#2;
            if (true)
            {
                if (LitInt(0) <= k#2)
                {
                }

                if (LitInt(0) <= k#2 && k#2 < i#0)
                {
                    assert {:id "id481"} a#0 != null;
                    assert {:id "id482"} {:subsumption 0} 0 <= k#2 && k#2 < _System.array.Length(a#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id483"} (forall k#3: int :: 
              { $Unbox(read($Heap, a#0, IndexField(k#3))): int } 
              LitInt(0) <= k#3 && k#3 < i#0
                 ==> $Unbox(read($Heap, a#0, IndexField(k#3))): int == LitInt(21));
            // Begin Comprehension WF check
            havoc k#4;
            if (true)
            {
                if (i#0 <= k#4)
                {
                    assert {:id "id485"} {:subsumption 0} a#0 != null;
                }

                if (i#0 <= k#4 && k#4 < _System.array.Length(a#0))
                {
                    assert {:id "id486"} a#0 != null;
                    assert {:id "id487"} {:subsumption 0} 0 <= k#4 && k#4 < _System.array.Length(a#0);
                    assert {:id "id488"} a#0 != null;
                    assert {:id "id489"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
                    assert {:id "id490"} {:subsumption 0} 0 <= k#4 && k#4 < _System.array.Length(a#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id491"} (forall k#5: int :: 
              { $Unbox(read(old($Heap), a#0, IndexField(k#5))): int } 
                { $Unbox(read($Heap, a#0, IndexField(k#5))): int } 
              i#0 <= k#5 && k#5 < _System.array.Length(a#0)
                 ==> $Unbox(read($Heap, a#0, IndexField(k#5))): int
                   == $Unbox(read(old($Heap), a#0, IndexField(k#5))): int);
            if (LitInt(0) <= j#0)
            {
            }

            if (LitInt(0) <= j#0 && j#0 < i#0)
            {
                assert {:id "id493"} a#0 != null;
                assert {:id "id494"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
                assert {:id "id495"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
            }

            if (!(
              LitInt(0) <= j#0
               && j#0 < i#0
               && $Unbox(read(old($Heap), a#0, IndexField(j#0))): int == LitInt(19)))
            {
                if (j#0 == LitInt(-1))
                {
                    // Begin Comprehension WF check
                    havoc k#6;
                    if (true)
                    {
                        if (i#0 <= k#6)
                        {
                            assert {:id "id496"} {:subsumption 0} a#0 != null;
                        }

                        if (i#0 <= k#6 && k#6 < _System.array.Length(a#0))
                        {
                            assert {:id "id497"} a#0 != null;
                            assert {:id "id498"} {:subsumption 0} 0 <= k#6 && k#6 < _System.array.Length(a#0);
                        }
                    }

                    // End Comprehension WF check
                }
            }

            assume true;
            assume {:id "id499"} (
                LitInt(0) <= j#0
                 && j#0 < i#0
                 && $Unbox(read(old($Heap), a#0, IndexField(j#0))): int == LitInt(19))
               || (j#0 == LitInt(-1)
                 && (exists k#7: int :: 
                  { $Unbox(read($Heap, a#0, IndexField(k#7))): int } 
                  i#0 <= k#7
                     && k#7 < _System.array.Length(a#0)
                     && $Unbox(read($Heap, a#0, IndexField(k#7))): int == LitInt(19)));
            assert {:id "id501"} a#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id502"} a#0 != null;
        assume true;
        if (_System.array.Length(a#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _System.array.Length(a#0) - i#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(93,7)
        assert {:id "id503"} a#0 != null;
        assert {:id "id504"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        if ($Unbox(read($Heap, a#0, IndexField(i#0))): int == LitInt(19))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(93,27)
            assume true;
            assume true;
            j#0 := i#0;
            pop;
        }
        else
        {
        }

        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(94,15)
        assume true;
        assert {:id "id506"} a#0 != null;
        assert {:id "id507"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        $obj1 := a#0;
        $index1 := IndexField(i#0);
        assert {:id "id508"} $_ModifiesFrame[$obj1, $index1];
        assume true;
        $rhs#0_0 := i#0 + 1;
        assume true;
        $rhs#0_1 := LitInt(21);
        i#0 := $rhs#0_0;
        $Heap := update($Heap, $obj1, $index1, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(86,5)
        assert {:id "id513"} 0 <= $decr$loop#00 || _System.array.Length(a#0) - i#0 == $decr$loop#00;
        assert {:id "id514"} _System.array.Length(a#0) - i#0 < $decr$loop#00;
        assume true;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(96,11)
    assume true;
    assert {:id "id515"} $_ModifiesFrame[this, _module.AClass.index];
    assume true;
    $rhs#2 := j#0;
    $Heap := update($Heap, this, _module.AClass.index, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(97,8)
    assume true;
    assume true;
    ii#0 := $Unbox(read($Heap, this, _module.AClass.index)): int;
}



procedure {:verboseName "AClass.PMain (well-formedness)"} CheckWellFormed$$_module.AClass.PMain(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AClass())
         && $IsAlloc(this, Tclass._module.AClass(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AClass.PMain (well-formedness)"} CheckWellFormed$$_module.AClass.PMain(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;


    // AddMethodImpl: PMain, CheckWellFormed$$_module.AClass.PMain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == a#0);
    havoc k#0;
    assume true;
    if (LitInt(0) <= k#0)
    {
        assert {:id "id519"} a#0 != null;
    }

    assume {:id "id520"} LitInt(0) <= k#0 && k#0 < _System.array.Length(a#0);
    assert {:id "id521"} a#0 != null;
    assert {:id "id522"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
    assume {:id "id523"} $Unbox(read($Heap, a#0, IndexField(k#0))): int == LitInt(19);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AClass.PMain (call)"} Call$$_module.AClass.PMain(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AClass())
         && $IsAlloc(this, Tclass._module.AClass(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id524"} (exists k#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
       && k#1 < _System.array.Length(a#0)
       && $Unbox(read($Heap, a#0, IndexField(k#1))): int == LitInt(19));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AClass.PMain (correctness)"} Impl$$_module.AClass.PMain(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AClass())
         && $IsAlloc(this, Tclass._module.AClass(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id525"} (exists k#1: int :: 
    { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
       && k#1 < _System.array.Length(a#0)
       && $Unbox(read($Heap, a#0, IndexField(k#1))): int == LitInt(19));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AClass.PMain (correctness)"} Impl$$_module.AClass.PMain(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var b17#0: bool;
  var ii#0: int;
  var $rhs##0: bool;
  var $rhs##1: int;
  var a##0: ref;

    // AddMethodImpl: PMain, Impl$$_module.AClass.PMain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(104,11)
    assume true;
    assert {:id "id526"} a#0 != null;
    assume true;
    s#0 := Seq#FromArray($Heap, a#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(105,21)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assert {:id "id528"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && ($o == this || $o == a##0)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id529"} $rhs##0, $rhs##1 := Call$$_module.AClass.P(this, a##0);
    // TrCallStmt: After ProcessCallStmt
    b17#0 := $rhs##0;
    ii#0 := $rhs##1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(106,5)
    assert {:id "id532"} a#0 != null;
    assert {:id "id533"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assume true;
    assert {:id "id534"} Seq#Equal(s#0, Seq#FromArray(old($Heap), a#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(107,5)
    assert {:id "id535"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.AClass.index)): int
       && $Unbox(read($Heap, this, _module.AClass.index)): int < Seq#Length(s#0);
    assume true;
    assert {:id "id536"} $Unbox(Seq#Index(s#0, $Unbox(read($Heap, this, _module.AClass.index)): int)): int
       == LitInt(19);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(108,5)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(109,7)
        assert {:id "id537"} a#0 != null;
        assert {:id "id538"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.AClass.index)): int
           && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
        assume true;
        assert {:id "id539"} $Unbox(read($Heap, a#0, IndexField($Unbox(read($Heap, this, _module.AClass.index)): int))): int
           == LitInt(19);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(111,7)
        if (b17#0)
        {
            assert {:id "id540"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
            if (LitInt(0) <= $Unbox(read(old($Heap), this, _module.AClass.index)): int)
            {
                assert {:id "id541"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
                assert {:id "id542"} {:subsumption 0} a#0 != null;
            }

            if (LitInt(0) <= $Unbox(read(old($Heap), this, _module.AClass.index)): int
               && $Unbox(read(old($Heap), this, _module.AClass.index)): int
                 < _System.array.Length(a#0))
            {
                assert {:id "id543"} a#0 != null;
                assert {:id "id544"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
                assert {:id "id545"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
                assert {:id "id546"} {:subsumption 0} 0 <= $Unbox(read(old($Heap), this, _module.AClass.index)): int
                   && $Unbox(read(old($Heap), this, _module.AClass.index)): int
                     < _System.array.Length(a#0);
            }
        }

        assume true;
        assert {:id "id547"} {:subsumption 0} b17#0 ==> LitInt(0) <= $Unbox(read(old($Heap), this, _module.AClass.index)): int;
        assert {:id "id548"} {:subsumption 0} b17#0
           ==> $Unbox(read(old($Heap), this, _module.AClass.index)): int
             < _System.array.Length(a#0);
        assert {:id "id549"} {:subsumption 0} b17#0
           ==> $Unbox(read(old($Heap), 
                a#0, 
                IndexField($Unbox(read(old($Heap), this, _module.AClass.index)): int))): int
             == LitInt(17);
        assume {:id "id550"} b17#0
           ==> LitInt(0) <= $Unbox(read(old($Heap), this, _module.AClass.index)): int
             && $Unbox(read(old($Heap), this, _module.AClass.index)): int
               < _System.array.Length(a#0)
             && $Unbox(read(old($Heap), 
                  a#0, 
                  IndexField($Unbox(read(old($Heap), this, _module.AClass.index)): int))): int
               == LitInt(17);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(112,7)
        assert {:id "id551"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
        if ($Unbox(read($Heap, this, _module.AClass.index)): int
           == $Unbox(read(old($Heap), this, _module.AClass.index)): int)
        {
            assert {:id "id552"} a#0 != null;
            assert {:id "id553"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.AClass.index)): int
               && $Unbox(read($Heap, this, _module.AClass.index)): int < _System.array.Length(a#0);
            if ($Unbox(read($Heap, a#0, IndexField($Unbox(read($Heap, this, _module.AClass.index)): int))): int
               == LitInt(21))
            {
                assert {:id "id554"} a#0 != null;
                assert {:id "id555"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
                assert {:id "id556"} $IsAlloc(this, Tclass._module.AClass(), old($Heap));
                assert {:id "id557"} {:subsumption 0} 0 <= $Unbox(read(old($Heap), this, _module.AClass.index)): int
                   && $Unbox(read(old($Heap), this, _module.AClass.index)): int
                     < _System.array.Length(a#0);
            }
        }

        assume true;
        assert {:id "id558"} {:subsumption 0} $Unbox(read($Heap, this, _module.AClass.index)): int
             == $Unbox(read(old($Heap), this, _module.AClass.index)): int
           ==> $Unbox(read($Heap, a#0, IndexField($Unbox(read($Heap, this, _module.AClass.index)): int))): int
             == LitInt(21);
        assert {:id "id559"} {:subsumption 0} $Unbox(read($Heap, this, _module.AClass.index)): int
             == $Unbox(read(old($Heap), this, _module.AClass.index)): int
           ==> $Unbox(read(old($Heap), 
                a#0, 
                IndexField($Unbox(read(old($Heap), this, _module.AClass.index)): int))): int
             == LitInt(19);
        assume {:id "id560"} $Unbox(read($Heap, this, _module.AClass.index)): int
             == $Unbox(read(old($Heap), this, _module.AClass.index)): int
           ==> $Unbox(read($Heap, a#0, IndexField($Unbox(read($Heap, this, _module.AClass.index)): int))): int
               == LitInt(21)
             && $Unbox(read(old($Heap), 
                  a#0, 
                  IndexField($Unbox(read(old($Heap), this, _module.AClass.index)): int))): int
               == LitInt(19);
    }
}



// $Is axiom for non-null type _module.AClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.AClass()) } { $Is(c#0, Tclass._module.AClass?()) } 
  $Is(c#0, Tclass._module.AClass())
     <==> $Is(c#0, Tclass._module.AClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.AClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.AClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.AClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.AClass?(), $h));

const unique class._module.TrickySubstitution?: ClassName;

function Tclass._module.TrickySubstitution?() : Ty
uses {
// Tclass._module.TrickySubstitution? Tag
axiom Tag(Tclass._module.TrickySubstitution?())
     == Tagclass._module.TrickySubstitution?
   && TagFamily(Tclass._module.TrickySubstitution?())
     == tytagFamily$TrickySubstitution;
}

const unique Tagclass._module.TrickySubstitution?: TyTag;

// Box/unbox axiom for Tclass._module.TrickySubstitution?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TrickySubstitution?()) } 
  $IsBox(bx, Tclass._module.TrickySubstitution?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.TrickySubstitution?()));

// $Is axiom for class TrickySubstitution
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.TrickySubstitution?()) } 
  $Is($o, Tclass._module.TrickySubstitution?())
     <==> $o == null || dtype($o) == Tclass._module.TrickySubstitution?());

// $IsAlloc axiom for class TrickySubstitution
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TrickySubstitution?(), $h) } 
  $IsAlloc($o, Tclass._module.TrickySubstitution?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.TrickySubstitution.F0
function _module.TrickySubstitution.F0(this: ref, x#0: int) : int
uses {
// consequence axiom for _module.TrickySubstitution.F0
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.TrickySubstitution.F0(this, x#0) } 
    _module.TrickySubstitution.F0#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TrickySubstitution()))
       ==> _module.TrickySubstitution.F0(this, x#0) == x#0);
// definition axiom for _module.TrickySubstitution.F0 (revealed)
axiom {:id "id561"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.TrickySubstitution.F0(this, x#0), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F0#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#4$canCall(x#0)
         && _module.TrickySubstitution.F0(this, x#0) == (var g#0 := $let#4_g(x#0); g#0));
// definition axiom for _module.TrickySubstitution.F0 for decreasing-related literals (revealed)
axiom {:id "id562"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F0(this, LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F0#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#4$canCall(LitInt(x#0))
         && _module.TrickySubstitution.F0(this, LitInt(x#0))
           == (var g#1 := $let#4_g(LitInt(x#0)); g#1));
// definition axiom for _module.TrickySubstitution.F0 for all literals (revealed)
axiom {:id "id563"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F0(Lit(this), LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F0#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#4$canCall(LitInt(x#0))
         && _module.TrickySubstitution.F0(Lit(this), LitInt(x#0))
           == (var g#2 := $let#4_g(LitInt(x#0)); g#2));
}

function _module.TrickySubstitution.F0#canCall(this: ref, x#0: int) : bool;

function Tclass._module.TrickySubstitution() : Ty
uses {
// Tclass._module.TrickySubstitution Tag
axiom Tag(Tclass._module.TrickySubstitution()) == Tagclass._module.TrickySubstitution
   && TagFamily(Tclass._module.TrickySubstitution()) == tytagFamily$TrickySubstitution;
}

const unique Tagclass._module.TrickySubstitution: TyTag;

// Box/unbox axiom for Tclass._module.TrickySubstitution
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TrickySubstitution()) } 
  $IsBox(bx, Tclass._module.TrickySubstitution())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.TrickySubstitution()));

function _module.TrickySubstitution.F0#requires(ref, int) : bool;

// #requires axiom for _module.TrickySubstitution.F0
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.TrickySubstitution.F0#requires(this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TrickySubstitution())
       && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
     ==> _module.TrickySubstitution.F0#requires(this, x#0) == true);

function $let#4_g(x: int) : int;

function $let#4$canCall(x: int) : bool;

axiom (forall x: int :: { $let#4_g(x) } $let#4$canCall(x) ==> x == $let#4_g(x));

procedure {:verboseName "TrickySubstitution.F0 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id564"} _module.TrickySubstitution.F0(this, x#0) == x#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.F0 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F0(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var g#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.TrickySubstitution?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id565"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id566"} (this == this && x#0 == x#0) || ##x#0 < x#0;
        assume (this == this && x#0 == x#0) || _module.TrickySubstitution.F0#canCall(this, x#0);
        assume {:id "id567"} _module.TrickySubstitution.F0(this, x#0) == x#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc g#3;
        if (true)
        {
        }

        assert {:id "id568"} ($Is(x#0, TInt) && x#0 == x#0)
           || 
          ($Is(LitInt(0), TInt) && x#0 == LitInt(0))
           || (exists g#4: int :: x#0 == g#4);
        assume true;
        assume x#0 == g#3;
        assume $let#4$canCall(x#0);
        assume {:id "id569"} _module.TrickySubstitution.F0(this, x#0) == g#3;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TrickySubstitution.F0(this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.TrickySubstitution.F1
function _module.TrickySubstitution.F1(this: ref, x#0: int) : int
uses {
// consequence axiom for _module.TrickySubstitution.F1
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.TrickySubstitution.F1(this, x#0) } 
    _module.TrickySubstitution.F1#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TrickySubstitution()))
       ==> _module.TrickySubstitution.F1(this, x#0) == x#0);
// definition axiom for _module.TrickySubstitution.F1 (revealed)
axiom {:id "id570"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.TrickySubstitution.F1(this, x#0), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F1#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> (var f#0 := x#0; $let#8$canCall(f#0))
         && _module.TrickySubstitution.F1(this, x#0)
           == (var f#0 := x#0; (var g#0 := $let#8_g(f#0); g#0)));
// definition axiom for _module.TrickySubstitution.F1 for decreasing-related literals (revealed)
axiom {:id "id571"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F1(this, LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F1#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> (var f#2 := LitInt(x#0); $let#8$canCall(f#2))
         && _module.TrickySubstitution.F1(this, LitInt(x#0))
           == (var f#2 := LitInt(x#0); (var g#1 := $let#8_g(f#2); g#1)));
// definition axiom for _module.TrickySubstitution.F1 for all literals (revealed)
axiom {:id "id572"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F1(Lit(this), LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F1#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> (var f#3 := LitInt(x#0); $let#8$canCall(f#3))
         && _module.TrickySubstitution.F1(Lit(this), LitInt(x#0))
           == (var f#3 := LitInt(x#0); (var g#2 := $let#8_g(f#3); g#2)));
}

function _module.TrickySubstitution.F1#canCall(this: ref, x#0: int) : bool;

function _module.TrickySubstitution.F1#requires(ref, int) : bool;

// #requires axiom for _module.TrickySubstitution.F1
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.TrickySubstitution.F1#requires(this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TrickySubstitution())
       && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
     ==> _module.TrickySubstitution.F1#requires(this, x#0) == true);

function $let#8_g(f: int) : int;

function $let#8$canCall(f: int) : bool;

axiom (forall f: int :: { $let#8_g(f) } $let#8$canCall(f) ==> f == $let#8_g(f));

procedure {:verboseName "TrickySubstitution.F1 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id573"} _module.TrickySubstitution.F1(this, x#0) == x#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.F1 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F1(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var f#Z#0: int;
  var let#0#0#0: int;
  var g#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.TrickySubstitution?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id574"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id575"} (this == this && x#0 == x#0) || ##x#0 < x#0;
        assume (this == this && x#0 == x#0) || _module.TrickySubstitution.F1#canCall(this, x#0);
        assume {:id "id576"} _module.TrickySubstitution.F1(this, x#0) == x#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc f#Z#0;
        assume {:id "id577"} let#0#0#0 == x#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TInt);
        assume {:id "id578"} f#Z#0 == let#0#0#0;
        havoc g#3;
        if (true)
        {
        }

        assert {:id "id579"} ($Is(f#Z#0, TInt) && f#Z#0 == f#Z#0)
           || 
          ($Is(LitInt(0), TInt) && f#Z#0 == LitInt(0))
           || (exists g#4: int :: f#Z#0 == g#4);
        assume true;
        assume f#Z#0 == g#3;
        assume $let#8$canCall(f#Z#0);
        assume {:id "id580"} _module.TrickySubstitution.F1(this, x#0) == g#3;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TrickySubstitution.F1(this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.TrickySubstitution.F2
function _module.TrickySubstitution.F2(this: ref, x#0: int) : int
uses {
// consequence axiom for _module.TrickySubstitution.F2
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.TrickySubstitution.F2(this, x#0) } 
    _module.TrickySubstitution.F2#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TrickySubstitution()))
       ==> _module.TrickySubstitution.F2(this, x#0) == x#0);
// definition axiom for _module.TrickySubstitution.F2 (revealed)
axiom {:id "id581"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.TrickySubstitution.F2(this, x#0), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F2#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#13$canCall(x#0)
         && _module.TrickySubstitution.F2(this, x#0)
           == (var f#0, g#0 := $let#13_f(x#0), $let#13_g(x#0); g#0));
// definition axiom for _module.TrickySubstitution.F2 for decreasing-related literals (revealed)
axiom {:id "id582"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F2(this, LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F2#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#13$canCall(LitInt(x#0))
         && _module.TrickySubstitution.F2(this, LitInt(x#0))
           == (var f#1, g#1 := $let#13_f(LitInt(x#0)), $let#13_g(LitInt(x#0)); g#1));
// definition axiom for _module.TrickySubstitution.F2 for all literals (revealed)
axiom {:id "id583"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F2(Lit(this), LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F2#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#13$canCall(LitInt(x#0))
         && _module.TrickySubstitution.F2(Lit(this), LitInt(x#0))
           == (var f#2, g#2 := $let#13_f(LitInt(x#0)), $let#13_g(LitInt(x#0)); g#2));
}

function _module.TrickySubstitution.F2#canCall(this: ref, x#0: int) : bool;

function _module.TrickySubstitution.F2#requires(ref, int) : bool;

// #requires axiom for _module.TrickySubstitution.F2
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.TrickySubstitution.F2#requires(this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TrickySubstitution())
       && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
     ==> _module.TrickySubstitution.F2#requires(this, x#0) == true);

function $let#13_f(x: int) : int;

function $let#13_g(x: int) : int;

function $let#13$canCall(x: int) : bool;

axiom (forall x: int :: 
  { $let#13_g(x) } { $let#13_f(x) } 
  $let#13$canCall(x) ==> $let#13_f(x) == x && $let#13_f(x) == $let#13_g(x));

procedure {:verboseName "TrickySubstitution.F2 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id584"} _module.TrickySubstitution.F2(this, x#0) == x#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.F2 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F2(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var f#3: int;
  var g#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.TrickySubstitution?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id585"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id586"} (this == this && x#0 == x#0) || ##x#0 < x#0;
        assume (this == this && x#0 == x#0) || _module.TrickySubstitution.F2#canCall(this, x#0);
        assume {:id "id587"} _module.TrickySubstitution.F2(this, x#0) == x#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc f#3;
        havoc g#3;
        if (true)
        {
            if (f#3 == x#0)
            {
            }
        }

        assert {:id "id588"} ($Is(x#0, TInt) && $Is(x#0, TInt) && x#0 == x#0 && x#0 == x#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(LitInt(0), TInt)
             && 
            LitInt(0) == x#0
             && LitInt(0) == LitInt(0))
           || 
          (exists f#4: int :: $Is(f#4, TInt) && f#4 == x#0 && f#4 == f#4)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(LitInt(0), TInt)
             && 
            LitInt(0) == x#0
             && LitInt(0) == LitInt(0))
           || 
          ($Is(x#0, TInt) && $Is(LitInt(0), TInt) && x#0 == x#0 && x#0 == LitInt(0))
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(LitInt(0), TInt)
             && 
            LitInt(0) == x#0
             && LitInt(0) == LitInt(0))
           || 
          (exists f#4: int :: $Is(LitInt(0), TInt) && f#4 == x#0 && f#4 == LitInt(0))
           || 
          (exists g#4: int :: $Is(g#4, TInt) && g#4 == x#0 && g#4 == g#4)
           || 
          (exists g#4: int :: $Is(x#0, TInt) && x#0 == x#0 && x#0 == g#4)
           || 
          (exists g#4: int :: 
            $Is(LitInt(0), TInt) && LitInt(0) == x#0 && LitInt(0) == g#4)
           || (exists f#4: int, g#4: int :: f#4 == x#0 && f#4 == g#4);
        assume true;
        assume f#3 == x#0 && f#3 == g#3;
        assume $let#13$canCall(x#0);
        assume {:id "id589"} _module.TrickySubstitution.F2(this, x#0) == g#3;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TrickySubstitution.F2(this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.TrickySubstitution.F3
function _module.TrickySubstitution.F3(this: ref, x#0: int) : int
uses {
// consequence axiom for _module.TrickySubstitution.F3
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.TrickySubstitution.F3(this, x#0) } 
    _module.TrickySubstitution.F3#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TrickySubstitution()))
       ==> _module.TrickySubstitution.F3(this, x#0) == x#0);
// definition axiom for _module.TrickySubstitution.F3 (revealed)
axiom {:id "id590"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.TrickySubstitution.F3(this, x#0), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F3#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#17$canCall(x#0)
         && $let#19$canCall($let#17_f(x#0))
         && _module.TrickySubstitution.F3(this, x#0)
           == (var f#0 := $let#17_f(x#0); (var g#0 := $let#19_g(f#0); g#0)));
// definition axiom for _module.TrickySubstitution.F3 for decreasing-related literals (revealed)
axiom {:id "id591"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F3(this, LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F3#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#17$canCall(LitInt(x#0))
         && $let#19$canCall($let#17_f(LitInt(x#0)))
         && _module.TrickySubstitution.F3(this, LitInt(x#0))
           == (var f#2 := $let#17_f(LitInt(x#0)); (var g#1 := $let#19_g(f#2); g#1)));
// definition axiom for _module.TrickySubstitution.F3 for all literals (revealed)
axiom {:id "id592"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F3(Lit(this), LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F3#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> $let#17$canCall(LitInt(x#0))
         && $let#19$canCall($let#17_f(LitInt(x#0)))
         && _module.TrickySubstitution.F3(Lit(this), LitInt(x#0))
           == (var f#3 := $let#17_f(LitInt(x#0)); (var g#2 := $let#19_g(f#3); g#2)));
}

function _module.TrickySubstitution.F3#canCall(this: ref, x#0: int) : bool;

function _module.TrickySubstitution.F3#requires(ref, int) : bool;

// #requires axiom for _module.TrickySubstitution.F3
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.TrickySubstitution.F3#requires(this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TrickySubstitution())
       && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
     ==> _module.TrickySubstitution.F3#requires(this, x#0) == true);

function $let#17_f(x: int) : int;

function $let#17$canCall(x: int) : bool;

axiom (forall x: int :: { $let#17_f(x) } $let#17$canCall(x) ==> $let#17_f(x) == x);

function $let#19_g(f: int) : int;

function $let#19$canCall(f: int) : bool;

axiom (forall f: int :: { $let#19_g(f) } $let#19$canCall(f) ==> f == $let#19_g(f));

procedure {:verboseName "TrickySubstitution.F3 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id593"} _module.TrickySubstitution.F3(this, x#0) == x#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.F3 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F3(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var f#4: int;
  var g#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.TrickySubstitution?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id594"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id595"} (this == this && x#0 == x#0) || ##x#0 < x#0;
        assume (this == this && x#0 == x#0) || _module.TrickySubstitution.F3#canCall(this, x#0);
        assume {:id "id596"} _module.TrickySubstitution.F3(this, x#0) == x#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc f#4;
        if (true)
        {
        }

        assert {:id "id597"} ($Is(x#0, TInt) && x#0 == x#0)
           || 
          ($Is(LitInt(0), TInt) && LitInt(0) == x#0)
           || (exists f#1: int :: f#1 == x#0);
        assume true;
        assume f#4 == x#0;
        havoc g#3;
        if (true)
        {
        }

        assert {:id "id598"} ($Is(f#4, TInt) && f#4 == f#4)
           || 
          ($Is(LitInt(0), TInt) && f#4 == LitInt(0))
           || (exists g#4: int :: f#4 == g#4);
        assume true;
        assume f#4 == g#3;
        assume $let#19$canCall(f#4);
        assume $let#17$canCall(x#0);
        assume {:id "id599"} _module.TrickySubstitution.F3(this, x#0) == (var g#5 := $let#19_g(f#4); g#5);
        assume $let#19$canCall(f#4);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TrickySubstitution.F3(this, x#0), TInt);
        return;

        assume false;
    }
}



const _module.TrickySubstitution.v: Field
uses {
axiom FDim(_module.TrickySubstitution.v) == 0
   && FieldOfDecl(class._module.TrickySubstitution?, field$v)
     == _module.TrickySubstitution.v
   && !$IsGhostField(_module.TrickySubstitution.v);
}

// TrickySubstitution.v: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TrickySubstitution.v)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TrickySubstitution?()
     ==> $Is($Unbox(read($h, $o, _module.TrickySubstitution.v)): int, TInt));

// TrickySubstitution.v: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TrickySubstitution.v)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TrickySubstitution?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.TrickySubstitution.v)): int, TInt, $h));

const _module.TrickySubstitution.w: Field
uses {
axiom FDim(_module.TrickySubstitution.w) == 0
   && FieldOfDecl(class._module.TrickySubstitution?, field$w)
     == _module.TrickySubstitution.w
   && !$IsGhostField(_module.TrickySubstitution.w);
}

// TrickySubstitution.w: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TrickySubstitution.w)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TrickySubstitution?()
     ==> $Is($Unbox(read($h, $o, _module.TrickySubstitution.w)): int, TInt));

// TrickySubstitution.w: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TrickySubstitution.w)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TrickySubstitution?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.TrickySubstitution.w)): int, TInt, $h));

// function declaration for _module.TrickySubstitution.F4
function _module.TrickySubstitution.F4($heap: Heap, this: ref, x#0: int) : int
uses {
// consequence axiom for _module.TrickySubstitution.F4
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.TrickySubstitution.F4($Heap, this, x#0) } 
    _module.TrickySubstitution.F4#canCall($Heap, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
           && 
          $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0 == LitInt(3)
           && $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2))
       ==> _module.TrickySubstitution.F4($Heap, this, x#0) == LitInt(5));
// definition axiom for _module.TrickySubstitution.F4 (revealed)
axiom {:id "id600"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.TrickySubstitution.F4($Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F4#canCall($Heap, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
           && 
          $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0 == LitInt(3)
           && $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2))
       ==> (var f#0 := $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0; 
          $let#32$canCall($Heap, this, f#0))
         && _module.TrickySubstitution.F4($Heap, this, x#0)
           == (var f#0 := $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0; 
            (var g#0 := $let#32_g($Heap, this, f#0); g#0)));
}

function _module.TrickySubstitution.F4#canCall($heap: Heap, this: ref, x#0: int) : bool;

// frame axiom for _module.TrickySubstitution.F4
axiom (forall $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.TrickySubstitution.F4($h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.TrickySubstitution())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.TrickySubstitution.F4($h0, this, x#0)
       == _module.TrickySubstitution.F4($h1, this, x#0));

function _module.TrickySubstitution.F4#requires(Heap, ref, int) : bool;

// #requires axiom for _module.TrickySubstitution.F4
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.TrickySubstitution.F4#requires($Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TrickySubstitution())
       && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
     ==> _module.TrickySubstitution.F4#requires($Heap, this, x#0)
       == ($Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0 == LitInt(3)
         && $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2)));

function $let#32_g($heap: Heap, this: ref, f: int) : int;

function $let#32$canCall($heap: Heap, this: ref, f: int) : bool;

axiom (forall $heap: Heap, this: ref, f: int :: 
  { $let#32_g($heap, this, f) } 
  $let#32$canCall($heap, this, f)
     ==> f + $Unbox(read($heap, this, _module.TrickySubstitution.w)): int
       == $let#32_g($heap, this, f));

procedure {:verboseName "TrickySubstitution.F4 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id601"} _module.TrickySubstitution.F4($Heap, this, x#0) == LitInt(5);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.F4 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F4(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var ##x#0: int;
  var f#Z#0: int;
  var let#0#0#0: int;
  var g#1: int;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    b$reqreads#0 := $_ReadsFrame[this, _module.TrickySubstitution.v];
    assume {:id "id602"} $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0 == LitInt(3);
    b$reqreads#1 := $_ReadsFrame[this, _module.TrickySubstitution.w];
    assume {:id "id603"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2);
    assert {:id "id604"} b$reqreads#0;
    assert {:id "id605"} b$reqreads#1;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.TrickySubstitution?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id606"} {:subsumption 0} $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + ##x#0
           == LitInt(3);
        assert {:id "id607"} {:subsumption 0} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2);
        assume $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + ##x#0
             == LitInt(3)
           && $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2);
        assert {:id "id608"} 0 <= x#0
           || (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
              Set#UnionOne(Set#Empty(): Set, $Box(this)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
              Set#UnionOne(Set#Empty(): Set, $Box(this))))
           || ##x#0 == x#0;
        assert {:id "id609"} (this == this && x#0 == x#0)
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
              Set#UnionOne(Set#Empty(): Set, $Box(this)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
              Set#UnionOne(Set#Empty(): Set, $Box(this))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
              Set#UnionOne(Set#Empty(): Set, $Box(this)))
             && ##x#0 < x#0);
        assume (this == this && x#0 == x#0)
           || _module.TrickySubstitution.F4#canCall($Heap, this, x#0);
        assume {:id "id610"} _module.TrickySubstitution.F4($Heap, this, x#0) == LitInt(5);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc f#Z#0;
        b$reqreads#2 := $_ReadsFrame[this, _module.TrickySubstitution.v];
        assume {:id "id611"} let#0#0#0 == $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TInt);
        assume {:id "id612"} f#Z#0 == let#0#0#0;
        havoc g#1;
        if (true)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.TrickySubstitution.w];
        }

        assert {:id "id613"} ($Is(f#Z#0 + $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int, TInt)
             && f#Z#0 + $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int
               == f#Z#0 + $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int)
           || 
          ($Is(LitInt(0), TInt)
             && f#Z#0 + $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int
               == LitInt(0))
           || (exists g#2: int :: 
            f#Z#0 + $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == g#2);
        assume true;
        assume f#Z#0 + $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == g#1;
        assume $let#32$canCall($Heap, this, f#Z#0);
        assume {:id "id614"} _module.TrickySubstitution.F4($Heap, this, x#0) == g#1;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TrickySubstitution.F4($Heap, this, x#0), TInt);
        assert {:id "id615"} b$reqreads#2;
        assert {:id "id616"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.TrickySubstitution.F5
function _module.TrickySubstitution.F5(this: ref, n#0: int) : bool
uses {
// definition axiom for _module.TrickySubstitution.F5 (revealed)
axiom {:id "id617"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.TrickySubstitution.F5(this, n#0), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> (forall i#0: int :: 0 < i#0 ==> i#0 < n#0 ==> $let#35$canCall(i#0))
         && _module.TrickySubstitution.F5(this, n#0)
           == (forall i#0: int :: 
            0 < i#0 && i#0 < n#0
               ==> (var j#0, k#0 := $let#35_j(i#0), $let#35_k(i#0); k#0 <= j#0 && j#0 < i#0)));
// definition axiom for _module.TrickySubstitution.F5 for decreasing-related literals (revealed)
axiom {:id "id618"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F5(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F5#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> (forall i#2: int :: 0 < i#2 ==> i#2 < n#0 ==> $let#35$canCall(i#2))
         && _module.TrickySubstitution.F5(this, LitInt(n#0))
           == (forall i#2: int :: 
            0 < i#2 && i#2 < n#0
               ==> (var j#1, k#1 := $let#35_j(i#2), $let#35_k(i#2); k#1 <= j#1 && j#1 < i#2)));
// definition axiom for _module.TrickySubstitution.F5 for all literals (revealed)
axiom {:id "id619"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.TrickySubstitution.F5(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.TrickySubstitution.F5#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TrickySubstitution())
           && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
       ==> (forall i#3: int :: 0 < i#3 ==> i#3 < n#0 ==> $let#35$canCall(i#3))
         && _module.TrickySubstitution.F5(Lit(this), LitInt(n#0))
           == (forall i#3: int :: 
            0 < i#3 && i#3 < n#0
               ==> (var j#2, k#2 := $let#35_j(i#3), $let#35_k(i#3); k#2 <= j#2 && j#2 < i#3)));
}

function _module.TrickySubstitution.F5#canCall(this: ref, n#0: int) : bool;

function _module.TrickySubstitution.F5#requires(ref, int) : bool;

// #requires axiom for _module.TrickySubstitution.F5
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.TrickySubstitution.F5#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TrickySubstitution())
       && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap)
     ==> _module.TrickySubstitution.F5#requires(this, n#0) == true);

function $let#35_j(i: int) : int;

function $let#35_k(i: int) : int;

function $let#35$canCall(i: int) : bool;

axiom (forall i: int :: 
  { $let#35_k(i) } { $let#35_j(i) } 
  $let#35$canCall(i) ==> $let#35_k(i) <= $let#35_j(i) && $let#35_j(i) < i);

procedure {:verboseName "TrickySubstitution.F5 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F5(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.F5 (well-formedness)"} CheckWellformed$$_module.TrickySubstitution.F5(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#4: int;
  var j#3: int;
  var k#3: int;


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
        havoc i#4;
        if (true)
        {
            if (0 < i#4)
            {
            }

            if (0 < i#4 && i#4 < n#0)
            {
                havoc j#3;
                havoc k#3;
                if (true)
                {
                    if (k#3 <= j#3)
                    {
                    }
                }

                assert {:id "id620"} (
                    $Is(i#4 - 1, TInt)
                     && $Is(i#4 - 1 + 1 - 1, TInt)
                     && 
                    i#4 - 1 + 1 - 1 <= i#4 - 1
                     && i#4 - 1 < i#4)
                   || 
                  (
                    $Is(LitInt(0), TInt)
                     && $Is(LitInt(0 + 1 - 1), TInt)
                     && 
                    LitInt(0 + 1 - 1) <= LitInt(0)
                     && 0 < i#4)
                   || 
                  (exists j#4: int :: $Is(j#4 + 1 - 1, TInt) && j#4 + 1 - 1 <= j#4 && j#4 < i#4)
                   || 
                  (
                    $Is(i#4 - 1, TInt)
                     && $Is(LitInt(0), TInt)
                     && 
                    LitInt(0) <= i#4 - 1
                     && i#4 - 1 < i#4)
                   || 
                  (
                    $Is(LitInt(0), TInt)
                     && $Is(LitInt(0), TInt)
                     && 
                    LitInt(0) <= LitInt(0)
                     && 0 < i#4)
                   || 
                  (
                    $Is(LitInt(0), TInt)
                     && $Is(LitInt(0), TInt)
                     && 
                    LitInt(0) <= LitInt(0)
                     && 0 < i#4)
                   || 
                  (exists j#4: int :: $Is(LitInt(0), TInt) && LitInt(0) <= j#4 && j#4 < i#4)
                   || 
                  (exists k#4: int :: $Is(i#4 - 1, TInt) && k#4 <= i#4 - 1 && i#4 - 1 < i#4)
                   || 
                  (exists k#4: int :: $Is(k#4, TInt) && k#4 <= k#4 && k#4 < i#4)
                   || 
                  (exists k#4: int :: $Is(LitInt(0), TInt) && k#4 <= LitInt(0) && 0 < i#4)
                   || (exists j#4: int, k#4: int :: k#4 <= j#4 && j#4 < i#4);
                assume true;
                assume k#3 <= j#3 && j#3 < i#4;
                if (k#3 <= j#3)
                {
                }

                assume $let#35$canCall(i#4);
            }
        }

        // End Comprehension WF check
        assume {:id "id621"} _module.TrickySubstitution.F5(this, n#0)
           == (forall i#1: int :: 
            0 < i#1 && i#1 < n#0
               ==> (var j#5, k#5 := $let#35_j(i#1), $let#35_k(i#1); k#5 <= j#5 && j#5 < i#1));
        assume (forall i#1: int :: 0 < i#1 && i#1 < n#0 ==> $let#35$canCall(i#1));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TrickySubstitution.F5(this, n#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "TrickySubstitution.M (well-formedness)"} CheckWellFormed$$_module.TrickySubstitution.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TrickySubstitution.M (call)"} Call$$_module.TrickySubstitution.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id624"} $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0 == LitInt(3);
  requires {:id "id625"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TrickySubstitution.M (correctness)"} Impl$$_module.TrickySubstitution.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id626"} $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0 == LitInt(3);
  requires {:id "id627"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(2);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#40_g($heap$old: Heap, this: ref, f: int) : int;

function $let#40$canCall($heap$old: Heap, this: ref, f: int) : bool;

axiom (forall $heap$old: Heap, this: ref, f: int :: 
  { $let#40_g($heap$old, this, f) } 
  $let#40$canCall($heap$old, this, f)
     ==> f + $Unbox(read($heap$old, this, _module.TrickySubstitution.w)): int
       == $let#40_g($heap$old, this, f));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.M (correctness)"} Impl$$_module.TrickySubstitution.M(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var f#Z#0: int;
  var let#0#0#0: int;
  var g#0: int;

    // AddMethodImpl: M, Impl$$_module.TrickySubstitution.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(213,12)
    assume true;
    assert {:id "id628"} $_ModifiesFrame[this, _module.TrickySubstitution.v];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + 1;
    $Heap := update($Heap, this, _module.TrickySubstitution.v, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(214,12)
    assume true;
    assert {:id "id631"} $_ModifiesFrame[this, _module.TrickySubstitution.w];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int + 10;
    $Heap := update($Heap, this, _module.TrickySubstitution.w, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(215,5)
    havoc f#Z#0;
    assume {:id "id634"} let#0#0#0 == $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id635"} f#Z#0 == let#0#0#0;
    havoc g#0;
    if (true)
    {
        assert {:id "id636"} $IsAlloc(this, Tclass._module.TrickySubstitution(), old($Heap));
    }

    assert {:id "id637"} ($Is(f#Z#0 + $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int, TInt)
         && f#Z#0 + $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int
           == f#Z#0 + $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int)
       || 
      ($Is(LitInt(0), TInt)
         && f#Z#0 + $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int
           == LitInt(0))
       || (exists g#1: int :: 
        f#Z#0 + $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int == g#1);
    assume true;
    assume f#Z#0 + $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int == g#0;
    assume $let#40$canCall(old($Heap), this, f#Z#0);
    assume (var f#0 := $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0; 
      $let#40$canCall(old($Heap), this, f#0));
    assert {:id "id638"} LitInt(6)
       == (var f#0 := $Unbox(read($Heap, this, _module.TrickySubstitution.v)): int + x#0; 
        (var g#2 := $let#40_g(old($Heap), this, f#0); g#2));
}



procedure {:verboseName "TrickySubstitution.N (well-formedness)"} CheckWellFormed$$_module.TrickySubstitution.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
   returns (r#0: int, s#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TrickySubstitution.N (call)"} Call$$_module.TrickySubstitution.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
   returns (r#0: int, s#0: int);
  // user-defined preconditions
  requires {:id "id642"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(12);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id643"} r#0 == LitInt(12);
  ensures {:id "id644"} LitInt(12) == s#0;
  ensures {:id "id645"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(13);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TrickySubstitution.N (correctness)"} Impl$$_module.TrickySubstitution.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TrickySubstitution())
         && $IsAlloc(this, Tclass._module.TrickySubstitution(), $Heap))
   returns (r#0: int, s#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id646"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(12);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id647"} r#0 == LitInt(12);
  ensures {:id "id648"} LitInt(12) == s#0;
  ensures {:id "id649"} $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int == LitInt(13);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#42_y($heap$old: Heap, this: ref) : int;

function $let#42$canCall($heap$old: Heap, this: ref) : bool;

axiom (forall $heap$old: Heap, this: ref :: 
  { $let#42_y($heap$old, this) } 
  $let#42$canCall($heap$old, this)
     ==> $let#42_y($heap$old, this)
       == $Unbox(read($heap$old, this, _module.TrickySubstitution.w)): int);

function $let#43_y($heap: Heap, this: ref) : int;

function $let#43$canCall($heap: Heap, this: ref) : bool;

axiom (forall $heap: Heap, this: ref :: 
  { $let#43_y($heap, this) } 
  $let#43$canCall($heap, this)
     ==> $let#43_y($heap, this)
       == $Unbox(read($heap, this, _module.TrickySubstitution.w)): int);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrickySubstitution.N (correctness)"} Impl$$_module.TrickySubstitution.N(this: ref) returns (r#0: int, s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var y#1: int;
  var y#3: int;

    // AddMethodImpl: N, Impl$$_module.TrickySubstitution.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(226,7)
    assume true;
    assert {:id "id650"} $_ModifiesFrame[this, _module.TrickySubstitution.w];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.TrickySubstitution.w)): int + 1;
    $Heap := update($Heap, this, _module.TrickySubstitution.w, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(227,7)
    assume true;
    havoc y#1;
    if (true)
    {
        assert {:id "id653"} $IsAlloc(this, Tclass._module.TrickySubstitution(), old($Heap));
    }

    assert {:id "id654"} ($Is($Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int, TInt)
         && $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int
           == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int)
       || 
      ($Is(LitInt(0), TInt)
         && LitInt(0) == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int)
       || (exists y#0: int :: 
        y#0 == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int);
    assume true;
    assume y#1 == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int;
    assume $let#42$canCall(old($Heap), this);
    assume $let#42$canCall(old($Heap), this);
    r#0 := (var y#0 := $let#42_y(old($Heap), this); y#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LetExpr.dfy(228,7)
    assume true;
    havoc y#3;
    if (true)
    {
        assert {:id "id656"} $IsAlloc(this, Tclass._module.TrickySubstitution(), old($Heap));
    }

    assert {:id "id657"} ($Is($Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int, TInt)
         && $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int
           == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int)
       || 
      ($Is(LitInt(0), TInt)
         && LitInt(0) == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int)
       || (exists y#2: int :: 
        y#2 == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int);
    assume true;
    assume y#3 == $Unbox(read(old($Heap), this, _module.TrickySubstitution.w)): int;
    assume $let#43$canCall(old($Heap), this);
    assume $let#43$canCall(old($Heap), this);
    s#0 := (var y#2 := $let#43_y(old($Heap), this); y#2);
}



// $Is axiom for non-null type _module.TrickySubstitution
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.TrickySubstitution()) } 
    { $Is(c#0, Tclass._module.TrickySubstitution?()) } 
  $Is(c#0, Tclass._module.TrickySubstitution())
     <==> $Is(c#0, Tclass._module.TrickySubstitution?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.TrickySubstitution
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TrickySubstitution(), $h) } 
    { $IsAlloc(c#0, Tclass._module.TrickySubstitution?(), $h) } 
  $IsAlloc(c#0, Tclass._module.TrickySubstitution(), $h)
     <==> $IsAlloc(c#0, Tclass._module.TrickySubstitution?(), $h));

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
function #_module.Tuple.Pair(Box, Box) : DatatypeType;

const unique ##_module.Tuple.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box :: 
  { #_module.Tuple.Pair(a#12#0#0, a#12#1#0) } 
  DatatypeCtorId(#_module.Tuple.Pair(a#12#0#0, a#12#1#0)) == ##_module.Tuple.Pair);
}

function _module.Tuple.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tuple.Pair_q(d) } 
  _module.Tuple.Pair_q(d) <==> DatatypeCtorId(d) == ##_module.Tuple.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tuple.Pair_q(d) } 
  _module.Tuple.Pair_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box :: 
      d == #_module.Tuple.Pair(a#13#0#0, a#13#1#0)));

// Constructor $Is
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty, a#14#0#0: Box, a#14#1#0: Box :: 
  { $Is(#_module.Tuple.Pair(a#14#0#0, a#14#1#0), 
      Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)) } 
  $Is(#_module.Tuple.Pair(a#14#0#0, a#14#1#0), 
      Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     <==> $IsBox(a#14#0#0, _module.Tuple$T) && $IsBox(a#14#1#0, _module.Tuple$U));

// Constructor $IsAlloc
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty, a#14#0#0: Box, a#14#1#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Tuple.Pair(a#14#0#0, a#14#1#0), 
      Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Tuple.Pair(a#14#0#0, a#14#1#0), 
        Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _module.Tuple$T, $h)
         && $IsAllocBox(a#14#1#0, _module.Tuple$U, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Tuple$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Tuple._0(d), _module.Tuple$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tuple.Pair_q(d)
       && (exists _module.Tuple$U: Ty :: 
        { $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h) } 
        $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h))
     ==> $IsAllocBox(_module.Tuple._0(d), _module.Tuple$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Tuple$U: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Tuple._1(d), _module.Tuple$U, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tuple.Pair_q(d)
       && (exists _module.Tuple$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h) } 
        $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h))
     ==> $IsAllocBox(_module.Tuple._1(d), _module.Tuple$U, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box :: 
  { #_module.Tuple.Pair(Lit(a#15#0#0), Lit(a#15#1#0)) } 
  #_module.Tuple.Pair(Lit(a#15#0#0), Lit(a#15#1#0))
     == Lit(#_module.Tuple.Pair(a#15#0#0, a#15#1#0)));

function _module.Tuple._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box :: 
  { #_module.Tuple.Pair(a#16#0#0, a#16#1#0) } 
  _module.Tuple._0(#_module.Tuple.Pair(a#16#0#0, a#16#1#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box :: 
  { #_module.Tuple.Pair(a#17#0#0, a#17#1#0) } 
  BoxRank(a#17#0#0) < DtRank(#_module.Tuple.Pair(a#17#0#0, a#17#1#0)));

function _module.Tuple._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box :: 
  { #_module.Tuple.Pair(a#18#0#0, a#18#1#0) } 
  _module.Tuple._1(#_module.Tuple.Pair(a#18#0#0, a#18#1#0)) == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box :: 
  { #_module.Tuple.Pair(a#19#0#0, a#19#1#0) } 
  BoxRank(a#19#1#0) < DtRank(#_module.Tuple.Pair(a#19#0#0, a#19#1#0)));

// Depth-one case-split function
function $IsA#_module.Tuple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Tuple(d) } 
  $IsA#_module.Tuple(d) ==> _module.Tuple.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty, d: DatatypeType :: 
  { _module.Tuple.Pair_q(d), $Is(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)) } 
  $Is(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     ==> _module.Tuple.Pair_q(d));

// Datatype extensional equality declaration
function _module.Tuple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tuple.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tuple#Equal(a, b) } 
  _module.Tuple#Equal(a, b)
     <==> _module.Tuple._0(a) == _module.Tuple._0(b)
       && _module.Tuple._1(a) == _module.Tuple._1(b));

// Datatype extensionality axiom: _module.Tuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tuple#Equal(a, b) } 
  _module.Tuple#Equal(a, b) <==> a == b);

const unique class._module.Tuple: ClassName;

// Constructor function declaration
function #_module.Friend.Agnes(int) : DatatypeType;

const unique ##_module.Friend.Agnes: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: int :: 
  { #_module.Friend.Agnes(a#20#0#0) } 
  DatatypeCtorId(#_module.Friend.Agnes(a#20#0#0)) == ##_module.Friend.Agnes);
}

function _module.Friend.Agnes_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Friend.Agnes_q(d) } 
  _module.Friend.Agnes_q(d) <==> DatatypeCtorId(d) == ##_module.Friend.Agnes);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Friend.Agnes_q(d) } 
  _module.Friend.Agnes_q(d)
     ==> (exists a#21#0#0: int :: d == #_module.Friend.Agnes(a#21#0#0)));

// Constructor $Is
axiom (forall a#22#0#0: int :: 
  { $Is(#_module.Friend.Agnes(a#22#0#0), Tclass._module.Friend()) } 
  $Is(#_module.Friend.Agnes(a#22#0#0), Tclass._module.Friend())
     <==> $Is(a#22#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Friend._h0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Friend.Agnes_q(d)
       && $IsAlloc(d, Tclass._module.Friend(), $h)
     ==> $IsAlloc(_module.Friend._h0(d), TInt, $h));

// Constructor literal
axiom (forall a#23#0#0: int :: 
  { #_module.Friend.Agnes(LitInt(a#23#0#0)) } 
  #_module.Friend.Agnes(LitInt(a#23#0#0)) == Lit(#_module.Friend.Agnes(a#23#0#0)));

function _module.Friend._h0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#24#0#0: int :: 
  { #_module.Friend.Agnes(a#24#0#0) } 
  _module.Friend._h0(#_module.Friend.Agnes(a#24#0#0)) == a#24#0#0);

// Constructor function declaration
function #_module.Friend.Agatha(int) : DatatypeType;

const unique ##_module.Friend.Agatha: DtCtorId
uses {
// Constructor identifier
axiom (forall a#25#0#0: int :: 
  { #_module.Friend.Agatha(a#25#0#0) } 
  DatatypeCtorId(#_module.Friend.Agatha(a#25#0#0)) == ##_module.Friend.Agatha);
}

function _module.Friend.Agatha_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Friend.Agatha_q(d) } 
  _module.Friend.Agatha_q(d) <==> DatatypeCtorId(d) == ##_module.Friend.Agatha);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Friend.Agatha_q(d) } 
  _module.Friend.Agatha_q(d)
     ==> (exists a#26#0#0: int :: d == #_module.Friend.Agatha(a#26#0#0)));

// Constructor $Is
axiom (forall a#27#0#0: int :: 
  { $Is(#_module.Friend.Agatha(a#27#0#0), Tclass._module.Friend()) } 
  $Is(#_module.Friend.Agatha(a#27#0#0), Tclass._module.Friend())
     <==> $Is(a#27#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Friend._h1(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Friend.Agatha_q(d)
       && $IsAlloc(d, Tclass._module.Friend(), $h)
     ==> $IsAlloc(_module.Friend._h1(d), TInt, $h));

// Constructor literal
axiom (forall a#28#0#0: int :: 
  { #_module.Friend.Agatha(LitInt(a#28#0#0)) } 
  #_module.Friend.Agatha(LitInt(a#28#0#0))
     == Lit(#_module.Friend.Agatha(a#28#0#0)));

function _module.Friend._h1(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#29#0#0: int :: 
  { #_module.Friend.Agatha(a#29#0#0) } 
  _module.Friend._h1(#_module.Friend.Agatha(a#29#0#0)) == a#29#0#0);

// Constructor function declaration
function #_module.Friend.Jermaine(int) : DatatypeType;

const unique ##_module.Friend.Jermaine: DtCtorId
uses {
// Constructor identifier
axiom (forall a#30#0#0: int :: 
  { #_module.Friend.Jermaine(a#30#0#0) } 
  DatatypeCtorId(#_module.Friend.Jermaine(a#30#0#0)) == ##_module.Friend.Jermaine);
}

function _module.Friend.Jermaine_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Friend.Jermaine_q(d) } 
  _module.Friend.Jermaine_q(d) <==> DatatypeCtorId(d) == ##_module.Friend.Jermaine);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Friend.Jermaine_q(d) } 
  _module.Friend.Jermaine_q(d)
     ==> (exists a#31#0#0: int :: d == #_module.Friend.Jermaine(a#31#0#0)));

// Constructor $Is
axiom (forall a#32#0#0: int :: 
  { $Is(#_module.Friend.Jermaine(a#32#0#0), Tclass._module.Friend()) } 
  $Is(#_module.Friend.Jermaine(a#32#0#0), Tclass._module.Friend())
     <==> $Is(a#32#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Friend._h2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Friend.Jermaine_q(d)
       && $IsAlloc(d, Tclass._module.Friend(), $h)
     ==> $IsAlloc(_module.Friend._h2(d), TInt, $h));

// Constructor literal
axiom (forall a#33#0#0: int :: 
  { #_module.Friend.Jermaine(LitInt(a#33#0#0)) } 
  #_module.Friend.Jermaine(LitInt(a#33#0#0))
     == Lit(#_module.Friend.Jermaine(a#33#0#0)));

function _module.Friend._h2(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#34#0#0: int :: 
  { #_module.Friend.Jermaine(a#34#0#0) } 
  _module.Friend._h2(#_module.Friend.Jermaine(a#34#0#0)) == a#34#0#0);

// Constructor function declaration
function #_module.Friend.Jack(int) : DatatypeType;

const unique ##_module.Friend.Jack: DtCtorId
uses {
// Constructor identifier
axiom (forall a#35#0#0: int :: 
  { #_module.Friend.Jack(a#35#0#0) } 
  DatatypeCtorId(#_module.Friend.Jack(a#35#0#0)) == ##_module.Friend.Jack);
}

function _module.Friend.Jack_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Friend.Jack_q(d) } 
  _module.Friend.Jack_q(d) <==> DatatypeCtorId(d) == ##_module.Friend.Jack);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Friend.Jack_q(d) } 
  _module.Friend.Jack_q(d)
     ==> (exists a#36#0#0: int :: d == #_module.Friend.Jack(a#36#0#0)));

// Constructor $Is
axiom (forall a#37#0#0: int :: 
  { $Is(#_module.Friend.Jack(a#37#0#0), Tclass._module.Friend()) } 
  $Is(#_module.Friend.Jack(a#37#0#0), Tclass._module.Friend())
     <==> $Is(a#37#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Friend._h3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Friend.Jack_q(d)
       && $IsAlloc(d, Tclass._module.Friend(), $h)
     ==> $IsAlloc(_module.Friend._h3(d), TInt, $h));

// Constructor literal
axiom (forall a#38#0#0: int :: 
  { #_module.Friend.Jack(LitInt(a#38#0#0)) } 
  #_module.Friend.Jack(LitInt(a#38#0#0)) == Lit(#_module.Friend.Jack(a#38#0#0)));

function _module.Friend._h3(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#39#0#0: int :: 
  { #_module.Friend.Jack(a#39#0#0) } 
  _module.Friend._h3(#_module.Friend.Jack(a#39#0#0)) == a#39#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Friend(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Friend())
     ==> $IsAlloc(d, Tclass._module.Friend(), $h));

// Depth-one case-split function
function $IsA#_module.Friend(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Friend(d) } 
  $IsA#_module.Friend(d)
     ==> _module.Friend.Agnes_q(d)
       || _module.Friend.Agatha_q(d)
       || _module.Friend.Jermaine_q(d)
       || _module.Friend.Jack_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Friend.Jack_q(d), $Is(d, Tclass._module.Friend()) } 
    { _module.Friend.Jermaine_q(d), $Is(d, Tclass._module.Friend()) } 
    { _module.Friend.Agatha_q(d), $Is(d, Tclass._module.Friend()) } 
    { _module.Friend.Agnes_q(d), $Is(d, Tclass._module.Friend()) } 
  $Is(d, Tclass._module.Friend())
     ==> _module.Friend.Agnes_q(d)
       || _module.Friend.Agatha_q(d)
       || _module.Friend.Jermaine_q(d)
       || _module.Friend.Jack_q(d));

// Datatype extensional equality declaration
function _module.Friend#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Friend.Agnes
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Friend#Equal(a, b), _module.Friend.Agnes_q(a) } 
    { _module.Friend#Equal(a, b), _module.Friend.Agnes_q(b) } 
  _module.Friend.Agnes_q(a) && _module.Friend.Agnes_q(b)
     ==> (_module.Friend#Equal(a, b) <==> _module.Friend._h0(a) == _module.Friend._h0(b)));

// Datatype extensional equality definition: #_module.Friend.Agatha
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Friend#Equal(a, b), _module.Friend.Agatha_q(a) } 
    { _module.Friend#Equal(a, b), _module.Friend.Agatha_q(b) } 
  _module.Friend.Agatha_q(a) && _module.Friend.Agatha_q(b)
     ==> (_module.Friend#Equal(a, b) <==> _module.Friend._h1(a) == _module.Friend._h1(b)));

// Datatype extensional equality definition: #_module.Friend.Jermaine
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Friend#Equal(a, b), _module.Friend.Jermaine_q(a) } 
    { _module.Friend#Equal(a, b), _module.Friend.Jermaine_q(b) } 
  _module.Friend.Jermaine_q(a) && _module.Friend.Jermaine_q(b)
     ==> (_module.Friend#Equal(a, b) <==> _module.Friend._h2(a) == _module.Friend._h2(b)));

// Datatype extensional equality definition: #_module.Friend.Jack
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Friend#Equal(a, b), _module.Friend.Jack_q(a) } 
    { _module.Friend#Equal(a, b), _module.Friend.Jack_q(b) } 
  _module.Friend.Jack_q(a) && _module.Friend.Jack_q(b)
     ==> (_module.Friend#Equal(a, b) <==> _module.Friend._h3(a) == _module.Friend._h3(b)));

// Datatype extensionality axiom: _module.Friend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Friend#Equal(a, b) } 
  _module.Friend#Equal(a, b) <==> a == b);

const unique class._module.Friend: ClassName;

const unique class.PatternsWithExplicitTypes.__default: ClassName;

// Constructor function declaration
function #PatternsWithExplicitTypes.Tuple.Pair(Box, Box) : DatatypeType;

const unique ##PatternsWithExplicitTypes.Tuple.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#40#0#0: Box, a#40#1#0: Box :: 
  { #PatternsWithExplicitTypes.Tuple.Pair(a#40#0#0, a#40#1#0) } 
  DatatypeCtorId(#PatternsWithExplicitTypes.Tuple.Pair(a#40#0#0, a#40#1#0))
     == ##PatternsWithExplicitTypes.Tuple.Pair);
}

function PatternsWithExplicitTypes.Tuple.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { PatternsWithExplicitTypes.Tuple.Pair_q(d) } 
  PatternsWithExplicitTypes.Tuple.Pair_q(d)
     <==> DatatypeCtorId(d) == ##PatternsWithExplicitTypes.Tuple.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { PatternsWithExplicitTypes.Tuple.Pair_q(d) } 
  PatternsWithExplicitTypes.Tuple.Pair_q(d)
     ==> (exists a#41#0#0: Box, a#41#1#0: Box :: 
      d == #PatternsWithExplicitTypes.Tuple.Pair(a#41#0#0, a#41#1#0)));

function Tclass.PatternsWithExplicitTypes.Tuple(Ty, Ty) : Ty;

const unique Tagclass.PatternsWithExplicitTypes.Tuple: TyTag;

// Tclass.PatternsWithExplicitTypes.Tuple Tag
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, PatternsWithExplicitTypes.Tuple$U: Ty :: 
  { Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U) } 
  Tag(Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
       == Tagclass.PatternsWithExplicitTypes.Tuple
     && TagFamily(Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
       == tytagFamily$Tuple);

function Tclass.PatternsWithExplicitTypes.Tuple_0(Ty) : Ty;

// Tclass.PatternsWithExplicitTypes.Tuple injectivity 0
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, PatternsWithExplicitTypes.Tuple$U: Ty :: 
  { Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U) } 
  Tclass.PatternsWithExplicitTypes.Tuple_0(Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
     == PatternsWithExplicitTypes.Tuple$T);

function Tclass.PatternsWithExplicitTypes.Tuple_1(Ty) : Ty;

// Tclass.PatternsWithExplicitTypes.Tuple injectivity 1
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, PatternsWithExplicitTypes.Tuple$U: Ty :: 
  { Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U) } 
  Tclass.PatternsWithExplicitTypes.Tuple_1(Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
     == PatternsWithExplicitTypes.Tuple$U);

// Box/unbox axiom for Tclass.PatternsWithExplicitTypes.Tuple
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, 
    PatternsWithExplicitTypes.Tuple$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U)) } 
  $IsBox(bx, 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U)));

// Constructor $Is
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, 
    PatternsWithExplicitTypes.Tuple$U: Ty, 
    a#42#0#0: Box, 
    a#42#1#0: Box :: 
  { $Is(#PatternsWithExplicitTypes.Tuple.Pair(a#42#0#0, a#42#1#0), 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U)) } 
  $Is(#PatternsWithExplicitTypes.Tuple.Pair(a#42#0#0, a#42#1#0), 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
     <==> $IsBox(a#42#0#0, PatternsWithExplicitTypes.Tuple$T)
       && $IsBox(a#42#1#0, PatternsWithExplicitTypes.Tuple$U));

// Constructor $IsAlloc
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, 
    PatternsWithExplicitTypes.Tuple$U: Ty, 
    a#42#0#0: Box, 
    a#42#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#PatternsWithExplicitTypes.Tuple.Pair(a#42#0#0, a#42#1#0), 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#PatternsWithExplicitTypes.Tuple.Pair(a#42#0#0, a#42#1#0), 
        Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U), 
        $h)
       <==> $IsAllocBox(a#42#0#0, PatternsWithExplicitTypes.Tuple$T, $h)
         && $IsAllocBox(a#42#1#0, PatternsWithExplicitTypes.Tuple$U, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, PatternsWithExplicitTypes.Tuple$T: Ty, $h: Heap :: 
  { $IsAllocBox(PatternsWithExplicitTypes.Tuple._0(d), PatternsWithExplicitTypes.Tuple$T, $h) } 
  $IsGoodHeap($h)
       && 
      PatternsWithExplicitTypes.Tuple.Pair_q(d)
       && (exists PatternsWithExplicitTypes.Tuple$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U), 
          $h))
     ==> $IsAllocBox(PatternsWithExplicitTypes.Tuple._0(d), PatternsWithExplicitTypes.Tuple$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, PatternsWithExplicitTypes.Tuple$U: Ty, $h: Heap :: 
  { $IsAllocBox(PatternsWithExplicitTypes.Tuple._1(d), PatternsWithExplicitTypes.Tuple$U, $h) } 
  $IsGoodHeap($h)
       && 
      PatternsWithExplicitTypes.Tuple.Pair_q(d)
       && (exists PatternsWithExplicitTypes.Tuple$T: Ty :: 
        { $IsAlloc(d, 
            Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U), 
          $h))
     ==> $IsAllocBox(PatternsWithExplicitTypes.Tuple._1(d), PatternsWithExplicitTypes.Tuple$U, $h));

// Constructor literal
axiom (forall a#43#0#0: Box, a#43#1#0: Box :: 
  { #PatternsWithExplicitTypes.Tuple.Pair(Lit(a#43#0#0), Lit(a#43#1#0)) } 
  #PatternsWithExplicitTypes.Tuple.Pair(Lit(a#43#0#0), Lit(a#43#1#0))
     == Lit(#PatternsWithExplicitTypes.Tuple.Pair(a#43#0#0, a#43#1#0)));

function PatternsWithExplicitTypes.Tuple._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#44#0#0: Box, a#44#1#0: Box :: 
  { #PatternsWithExplicitTypes.Tuple.Pair(a#44#0#0, a#44#1#0) } 
  PatternsWithExplicitTypes.Tuple._0(#PatternsWithExplicitTypes.Tuple.Pair(a#44#0#0, a#44#1#0))
     == a#44#0#0);

// Inductive rank
axiom (forall a#45#0#0: Box, a#45#1#0: Box :: 
  { #PatternsWithExplicitTypes.Tuple.Pair(a#45#0#0, a#45#1#0) } 
  BoxRank(a#45#0#0)
     < DtRank(#PatternsWithExplicitTypes.Tuple.Pair(a#45#0#0, a#45#1#0)));

function PatternsWithExplicitTypes.Tuple._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#46#0#0: Box, a#46#1#0: Box :: 
  { #PatternsWithExplicitTypes.Tuple.Pair(a#46#0#0, a#46#1#0) } 
  PatternsWithExplicitTypes.Tuple._1(#PatternsWithExplicitTypes.Tuple.Pair(a#46#0#0, a#46#1#0))
     == a#46#1#0);

// Inductive rank
axiom (forall a#47#0#0: Box, a#47#1#0: Box :: 
  { #PatternsWithExplicitTypes.Tuple.Pair(a#47#0#0, a#47#1#0) } 
  BoxRank(a#47#1#0)
     < DtRank(#PatternsWithExplicitTypes.Tuple.Pair(a#47#0#0, a#47#1#0)));

// Depth-one case-split function
function $IsA#PatternsWithExplicitTypes.Tuple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#PatternsWithExplicitTypes.Tuple(d) } 
  $IsA#PatternsWithExplicitTypes.Tuple(d)
     ==> PatternsWithExplicitTypes.Tuple.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall PatternsWithExplicitTypes.Tuple$T: Ty, 
    PatternsWithExplicitTypes.Tuple$U: Ty, 
    d: DatatypeType :: 
  { PatternsWithExplicitTypes.Tuple.Pair_q(d), $Is(d, 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U)) } 
  $Is(d, 
      Tclass.PatternsWithExplicitTypes.Tuple(PatternsWithExplicitTypes.Tuple$T, PatternsWithExplicitTypes.Tuple$U))
     ==> PatternsWithExplicitTypes.Tuple.Pair_q(d));

// Datatype extensional equality declaration
function PatternsWithExplicitTypes.Tuple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #PatternsWithExplicitTypes.Tuple.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { PatternsWithExplicitTypes.Tuple#Equal(a, b) } 
  PatternsWithExplicitTypes.Tuple#Equal(a, b)
     <==> PatternsWithExplicitTypes.Tuple._0(a) == PatternsWithExplicitTypes.Tuple._0(b)
       && PatternsWithExplicitTypes.Tuple._1(a) == PatternsWithExplicitTypes.Tuple._1(b));

// Datatype extensionality axiom: PatternsWithExplicitTypes.Tuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { PatternsWithExplicitTypes.Tuple#Equal(a, b) } 
  PatternsWithExplicitTypes.Tuple#Equal(a, b) <==> a == b);

const unique class.PatternsWithExplicitTypes.Tuple: ClassName;

const unique class.CanCallRegressionTests.__default: ClassName;

const unique class.CanCallRegressionTests.C?: ClassName;

function Tclass.CanCallRegressionTests.C?() : Ty
uses {
// Tclass.CanCallRegressionTests.C? Tag
axiom Tag(Tclass.CanCallRegressionTests.C?()) == Tagclass.CanCallRegressionTests.C?
   && TagFamily(Tclass.CanCallRegressionTests.C?()) == tytagFamily$C;
}

const unique Tagclass.CanCallRegressionTests.C?: TyTag;

// Box/unbox axiom for Tclass.CanCallRegressionTests.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CanCallRegressionTests.C?()) } 
  $IsBox(bx, Tclass.CanCallRegressionTests.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.CanCallRegressionTests.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.CanCallRegressionTests.C?()) } 
  $Is($o, Tclass.CanCallRegressionTests.C?())
     <==> $o == null || dtype($o) == Tclass.CanCallRegressionTests.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.CanCallRegressionTests.C?(), $h) } 
  $IsAlloc($o, Tclass.CanCallRegressionTests.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const CanCallRegressionTests.C.x: Field
uses {
axiom FDim(CanCallRegressionTests.C.x) == 0
   && FieldOfDecl(class.CanCallRegressionTests.C?, field$x)
     == CanCallRegressionTests.C.x
   && !$IsGhostField(CanCallRegressionTests.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, CanCallRegressionTests.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.CanCallRegressionTests.C?()
     ==> $Is($Unbox(read($h, $o, CanCallRegressionTests.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, CanCallRegressionTests.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.CanCallRegressionTests.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, CanCallRegressionTests.C.x)): int, TInt, $h));

// function declaration for CanCallRegressionTests.C.Id
function CanCallRegressionTests.C.Id(this: ref, c#0: ref) : ref;

function CanCallRegressionTests.C.Id#canCall(this: ref, c#0: ref) : bool;

function Tclass.CanCallRegressionTests.C() : Ty
uses {
// Tclass.CanCallRegressionTests.C Tag
axiom Tag(Tclass.CanCallRegressionTests.C()) == Tagclass.CanCallRegressionTests.C
   && TagFamily(Tclass.CanCallRegressionTests.C()) == tytagFamily$C;
}

const unique Tagclass.CanCallRegressionTests.C: TyTag;

// Box/unbox axiom for Tclass.CanCallRegressionTests.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CanCallRegressionTests.C()) } 
  $IsBox(bx, Tclass.CanCallRegressionTests.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.CanCallRegressionTests.C()));

// consequence axiom for CanCallRegressionTests.C.Id
axiom (forall this: ref, c#0: ref :: 
  { CanCallRegressionTests.C.Id(this, c#0) } 
  CanCallRegressionTests.C.Id#canCall(this, c#0)
       || (
        this != null
         && $Is(this, Tclass.CanCallRegressionTests.C())
         && $Is(c#0, Tclass.CanCallRegressionTests.C()))
     ==> $Is(CanCallRegressionTests.C.Id(this, c#0), Tclass.CanCallRegressionTests.C()));

// alloc consequence axiom for CanCallRegressionTests.C.Id
axiom (forall $Heap: Heap, this: ref, c#0: ref :: 
  { $IsAlloc(CanCallRegressionTests.C.Id(this, c#0), Tclass.CanCallRegressionTests.C(), $Heap) } 
  (CanCallRegressionTests.C.Id#canCall(this, c#0)
         || (
          this != null
           && $IsAlloc(this, Tclass.CanCallRegressionTests.C(), $Heap)
           && 
          $Is(c#0, Tclass.CanCallRegressionTests.C())
           && $IsAlloc(c#0, Tclass.CanCallRegressionTests.C(), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(CanCallRegressionTests.C.Id(this, c#0), Tclass.CanCallRegressionTests.C(), $Heap));

function CanCallRegressionTests.C.Id#requires(ref, ref) : bool;

// #requires axiom for CanCallRegressionTests.C.Id
axiom (forall this: ref, c#0: ref :: 
  { CanCallRegressionTests.C.Id#requires(this, c#0) } 
  this != null
       && $Is(this, Tclass.CanCallRegressionTests.C())
       && $Is(c#0, Tclass.CanCallRegressionTests.C())
     ==> CanCallRegressionTests.C.Id#requires(this, c#0) == true);

// definition axiom for CanCallRegressionTests.C.Id (revealed)
axiom {:id "id659"} (forall this: ref, c#0: ref :: 
  { CanCallRegressionTests.C.Id(this, c#0) } 
  CanCallRegressionTests.C.Id#canCall(this, c#0)
       || (
        this != null
         && $Is(this, Tclass.CanCallRegressionTests.C())
         && $Is(c#0, Tclass.CanCallRegressionTests.C()))
     ==> CanCallRegressionTests.C.Id(this, c#0) == c#0);

// definition axiom for CanCallRegressionTests.C.Id for decreasing-related literals (revealed)
axiom {:id "id660"} (forall this: ref, c#0: ref :: 
  {:weight 3} { CanCallRegressionTests.C.Id(this, Lit(c#0)) } 
  CanCallRegressionTests.C.Id#canCall(this, Lit(c#0))
       || (
        this != null
         && $Is(this, Tclass.CanCallRegressionTests.C())
         && $Is(c#0, Tclass.CanCallRegressionTests.C()))
     ==> CanCallRegressionTests.C.Id(this, Lit(c#0)) == Lit(c#0));

// definition axiom for CanCallRegressionTests.C.Id for all literals (revealed)
axiom {:id "id661"} (forall this: ref, c#0: ref :: 
  {:weight 3} { CanCallRegressionTests.C.Id(Lit(this), Lit(c#0)) } 
  CanCallRegressionTests.C.Id#canCall(Lit(this), Lit(c#0))
       || (
        this != null
         && $Is(this, Tclass.CanCallRegressionTests.C())
         && $Is(c#0, Tclass.CanCallRegressionTests.C()))
     ==> CanCallRegressionTests.C.Id(Lit(this), Lit(c#0)) == Lit(c#0));

// $Is axiom for non-null type CanCallRegressionTests.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.CanCallRegressionTests.C()) } 
    { $Is(c#0, Tclass.CanCallRegressionTests.C?()) } 
  $Is(c#0, Tclass.CanCallRegressionTests.C())
     <==> $Is(c#0, Tclass.CanCallRegressionTests.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type CanCallRegressionTests.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.CanCallRegressionTests.C(), $h) } 
    { $IsAlloc(c#0, Tclass.CanCallRegressionTests.C?(), $h) } 
  $IsAlloc(c#0, Tclass.CanCallRegressionTests.C(), $h)
     <==> $IsAlloc(c#0, Tclass.CanCallRegressionTests.C?(), $h));

const unique class.LitLet.__default: ClassName;

// function declaration for LitLet._default.Gauss
function LitLet.__default.Gauss($ly: LayerType, n#0: int) : int;

function LitLet.__default.Gauss#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { LitLet.__default.Gauss($LS($ly), n#0) } 
  LitLet.__default.Gauss($LS($ly), n#0) == LitLet.__default.Gauss($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { LitLet.__default.Gauss(AsFuelBottom($ly), n#0) } 
  LitLet.__default.Gauss($ly, n#0) == LitLet.__default.Gauss($LZ, n#0));

// consequence axiom for LitLet.__default.Gauss
axiom (forall $ly: LayerType, n#0: int :: 
  { LitLet.__default.Gauss($ly, n#0) } 
  LitLet.__default.Gauss#canCall(n#0) || LitInt(0) <= n#0
     ==> LitInt(0) <= LitLet.__default.Gauss($ly, n#0));

function LitLet.__default.Gauss#requires(LayerType, int) : bool;

// #requires axiom for LitLet.__default.Gauss
axiom (forall $ly: LayerType, n#0: int :: 
  { LitLet.__default.Gauss#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> LitLet.__default.Gauss#requires($ly, n#0) == true);

// definition axiom for LitLet.__default.Gauss (revealed)
axiom {:id "id662"} (forall $ly: LayerType, n#0: int :: 
  { LitLet.__default.Gauss($LS($ly), n#0) } 
  LitLet.__default.Gauss#canCall(n#0) || LitInt(0) <= n#0
     ==> (n#0 != LitInt(0) ==> LitLet.__default.Gauss#canCall(n#0 - 1))
       && LitLet.__default.Gauss($LS($ly), n#0)
         == (if n#0 == LitInt(0) then 0 else n#0 + LitLet.__default.Gauss($ly, n#0 - 1)));

// definition axiom for LitLet.__default.Gauss for all literals (revealed)
axiom {:id "id663"} (forall $ly: LayerType, n#0: int :: 
  {:weight 3} { LitLet.__default.Gauss($LS($ly), LitInt(n#0)) } 
  LitLet.__default.Gauss#canCall(LitInt(n#0)) || LitInt(0) <= n#0
     ==> (LitInt(n#0) != LitInt(0) ==> LitLet.__default.Gauss#canCall(LitInt(n#0 - 1)))
       && LitLet.__default.Gauss($LS($ly), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 0
           else n#0 + LitLet.__default.Gauss($LS($ly), LitInt(n#0 - 1))));

// function declaration for LitLet._default.plus
function LitLet.__default.plus($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType;

function LitLet.__default.plus#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.plus($LS($ly), n#0, m#0) } 
  LitLet.__default.plus($LS($ly), n#0, m#0)
     == LitLet.__default.plus($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.plus(AsFuelBottom($ly), n#0, m#0) } 
  LitLet.__default.plus($ly, n#0, m#0) == LitLet.__default.plus($LZ, n#0, m#0));

function Tclass.LitLet.Nat() : Ty
uses {
// Tclass.LitLet.Nat Tag
axiom Tag(Tclass.LitLet.Nat()) == Tagclass.LitLet.Nat
   && TagFamily(Tclass.LitLet.Nat()) == tytagFamily$Nat;
}

const unique Tagclass.LitLet.Nat: TyTag;

// Box/unbox axiom for Tclass.LitLet.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.LitLet.Nat()) } 
  $IsBox(bx, Tclass.LitLet.Nat())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.LitLet.Nat()));

// consequence axiom for LitLet.__default.plus
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.plus($ly, n#0, m#0) } 
  LitLet.__default.plus#canCall(n#0, m#0)
       || ($Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat()))
     ==> $Is(LitLet.__default.plus($ly, n#0, m#0), Tclass.LitLet.Nat()));

function LitLet.__default.plus#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for LitLet.__default.plus
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.plus#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat())
     ==> LitLet.__default.plus#requires($ly, n#0, m#0) == true);

// definition axiom for LitLet.__default.plus (revealed)
axiom {:id "id664"} (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.plus($LS($ly), n#0, m#0) } 
  LitLet.__default.plus#canCall(n#0, m#0)
       || ($Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat()))
     ==> (!LitLet.Nat.O_q(n#0)
         ==> (var n'#5 := LitLet.Nat.pred(n#0); LitLet.__default.plus#canCall(n'#5, m#0)))
       && LitLet.__default.plus($LS($ly), n#0, m#0)
         == (if LitLet.Nat.O_q(n#0)
           then m#0
           else (var n'#4 := LitLet.Nat.pred(n#0); 
            #LitLet.Nat.S(LitLet.__default.plus($ly, n'#4, m#0)))));

// definition axiom for LitLet.__default.plus for all literals (revealed)
axiom {:id "id665"} (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  {:weight 3} { LitLet.__default.plus($LS($ly), Lit(n#0), Lit(m#0)) } 
  LitLet.__default.plus#canCall(Lit(n#0), Lit(m#0))
       || ($Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat()))
     ==> (!Lit(LitLet.Nat.O_q(Lit(n#0)))
         ==> (var n'#7 := Lit(LitLet.Nat.pred(Lit(n#0))); 
          LitLet.__default.plus#canCall(n'#7, Lit(m#0))))
       && LitLet.__default.plus($LS($ly), Lit(n#0), Lit(m#0))
         == (if LitLet.Nat.O_q(Lit(n#0))
           then m#0
           else (var n'#6 := Lit(LitLet.Nat.pred(Lit(n#0))); 
            Lit(#LitLet.Nat.S(Lit(LitLet.__default.plus($LS($ly), n'#6, Lit(m#0))))))));

// function declaration for LitLet._default.mult
function LitLet.__default.mult($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType;

function LitLet.__default.mult#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.mult($LS($ly), n#0, m#0) } 
  LitLet.__default.mult($LS($ly), n#0, m#0)
     == LitLet.__default.mult($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.mult(AsFuelBottom($ly), n#0, m#0) } 
  LitLet.__default.mult($ly, n#0, m#0) == LitLet.__default.mult($LZ, n#0, m#0));

// consequence axiom for LitLet.__default.mult
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.mult($ly, n#0, m#0) } 
  LitLet.__default.mult#canCall(n#0, m#0)
       || ($Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat()))
     ==> $Is(LitLet.__default.mult($ly, n#0, m#0), Tclass.LitLet.Nat()));

function LitLet.__default.mult#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for LitLet.__default.mult
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.mult#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat())
     ==> LitLet.__default.mult#requires($ly, n#0, m#0) == true);

// definition axiom for LitLet.__default.mult (revealed)
axiom {:id "id666"} (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { LitLet.__default.mult($LS($ly), n#0, m#0) } 
  LitLet.__default.mult#canCall(n#0, m#0)
       || ($Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat()))
     ==> (!LitLet.Nat.O_q(n#0)
         ==> (var n'#2 := LitLet.Nat.pred(n#0); 
          LitLet.__default.mult#canCall(n'#2, m#0)
             && LitLet.__default.plus#canCall(m#0, LitLet.__default.mult($ly, n'#2, m#0))))
       && LitLet.__default.mult($LS($ly), n#0, m#0)
         == (if LitLet.Nat.O_q(n#0)
           then #LitLet.Nat.O()
           else (var n'#2 := LitLet.Nat.pred(n#0); 
            LitLet.__default.plus($LS($LZ), m#0, LitLet.__default.mult($ly, n'#2, m#0)))));

// definition axiom for LitLet.__default.mult for all literals (revealed)
axiom {:id "id667"} (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  {:weight 3} { LitLet.__default.mult($LS($ly), Lit(n#0), Lit(m#0)) } 
  LitLet.__default.mult#canCall(Lit(n#0), Lit(m#0))
       || ($Is(n#0, Tclass.LitLet.Nat()) && $Is(m#0, Tclass.LitLet.Nat()))
     ==> (!Lit(LitLet.Nat.O_q(Lit(n#0)))
         ==> (var n'#3 := Lit(LitLet.Nat.pred(Lit(n#0))); 
          LitLet.__default.mult#canCall(n'#3, Lit(m#0))
             && LitLet.__default.plus#canCall(Lit(m#0), LitLet.__default.mult($LS($ly), n'#3, Lit(m#0)))))
       && LitLet.__default.mult($LS($ly), Lit(n#0), Lit(m#0))
         == (if LitLet.Nat.O_q(Lit(n#0))
           then #LitLet.Nat.O()
           else (var n'#3 := Lit(LitLet.Nat.pred(Lit(n#0))); 
            Lit(LitLet.__default.plus($LS($LZ), Lit(m#0), Lit(LitLet.__default.mult($LS($ly), n'#3, Lit(m#0))))))));

// function declaration for LitLet._default.factorial
function LitLet.__default.factorial($ly: LayerType, n#0: DatatypeType) : DatatypeType;

function LitLet.__default.factorial#canCall(n#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { LitLet.__default.factorial($LS($ly), n#0) } 
  LitLet.__default.factorial($LS($ly), n#0)
     == LitLet.__default.factorial($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { LitLet.__default.factorial(AsFuelBottom($ly), n#0) } 
  LitLet.__default.factorial($ly, n#0) == LitLet.__default.factorial($LZ, n#0));

// consequence axiom for LitLet.__default.factorial
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { LitLet.__default.factorial($ly, n#0) } 
  LitLet.__default.factorial#canCall(n#0) || $Is(n#0, Tclass.LitLet.Nat())
     ==> $Is(LitLet.__default.factorial($ly, n#0), Tclass.LitLet.Nat()));

function LitLet.__default.factorial#requires(LayerType, DatatypeType) : bool;

// #requires axiom for LitLet.__default.factorial
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { LitLet.__default.factorial#requires($ly, n#0) } 
  $Is(n#0, Tclass.LitLet.Nat())
     ==> LitLet.__default.factorial#requires($ly, n#0) == true);

// definition axiom for LitLet.__default.factorial (revealed)
axiom {:id "id668"} (forall $ly: LayerType, n#0: DatatypeType :: 
  { LitLet.__default.factorial($LS($ly), n#0) } 
  LitLet.__default.factorial#canCall(n#0) || $Is(n#0, Tclass.LitLet.Nat())
     ==> (!LitLet.Nat.O_q(n#0)
         ==> (var n'#5 := LitLet.Nat.pred(n#0); 
          LitLet.__default.factorial#canCall(n'#5)
             && LitLet.__default.mult#canCall(n#0, LitLet.__default.factorial($ly, n'#5))))
       && LitLet.__default.factorial($LS($ly), n#0)
         == (if LitLet.Nat.O_q(n#0)
           then #LitLet.Nat.S(Lit(#LitLet.Nat.O()))
           else (var n'#4 := LitLet.Nat.pred(n#0); 
            LitLet.__default.mult($LS($LZ), n#0, LitLet.__default.factorial($ly, n'#4)))));

// definition axiom for LitLet.__default.factorial for all literals (revealed)
axiom {:id "id669"} (forall $ly: LayerType, n#0: DatatypeType :: 
  {:weight 3} { LitLet.__default.factorial($LS($ly), Lit(n#0)) } 
  LitLet.__default.factorial#canCall(Lit(n#0)) || $Is(n#0, Tclass.LitLet.Nat())
     ==> (!Lit(LitLet.Nat.O_q(Lit(n#0)))
         ==> (var n'#7 := Lit(LitLet.Nat.pred(Lit(n#0))); 
          LitLet.__default.factorial#canCall(n'#7)
             && LitLet.__default.mult#canCall(Lit(n#0), LitLet.__default.factorial($LS($ly), n'#7))))
       && LitLet.__default.factorial($LS($ly), Lit(n#0))
         == (if LitLet.Nat.O_q(Lit(n#0))
           then #LitLet.Nat.S(Lit(#LitLet.Nat.O()))
           else (var n'#6 := Lit(LitLet.Nat.pred(Lit(n#0))); 
            Lit(LitLet.__default.mult($LS($LZ), Lit(n#0), Lit(LitLet.__default.factorial($LS($ly), n'#6)))))));

// Constructor function declaration
function #LitLet.Nat.O() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#LitLet.Nat.O()) == ##LitLet.Nat.O;
// Constructor $Is
axiom $Is(#LitLet.Nat.O(), Tclass.LitLet.Nat());
// Constructor literal
axiom #LitLet.Nat.O() == Lit(#LitLet.Nat.O());
}

const unique ##LitLet.Nat.O: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#LitLet.Nat.O()) == ##LitLet.Nat.O;
}

function LitLet.Nat.O_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { LitLet.Nat.O_q(d) } 
  LitLet.Nat.O_q(d) <==> DatatypeCtorId(d) == ##LitLet.Nat.O);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { LitLet.Nat.O_q(d) } 
  LitLet.Nat.O_q(d) ==> d == #LitLet.Nat.O());

// Constructor function declaration
function #LitLet.Nat.S(DatatypeType) : DatatypeType;

const unique ##LitLet.Nat.S: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType :: 
  { #LitLet.Nat.S(a#4#0#0) } 
  DatatypeCtorId(#LitLet.Nat.S(a#4#0#0)) == ##LitLet.Nat.S);
}

function LitLet.Nat.S_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { LitLet.Nat.S_q(d) } 
  LitLet.Nat.S_q(d) <==> DatatypeCtorId(d) == ##LitLet.Nat.S);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { LitLet.Nat.S_q(d) } 
  LitLet.Nat.S_q(d)
     ==> (exists a#5#0#0: DatatypeType :: d == #LitLet.Nat.S(a#5#0#0)));

// Constructor $Is
axiom (forall a#6#0#0: DatatypeType :: 
  { $Is(#LitLet.Nat.S(a#6#0#0), Tclass.LitLet.Nat()) } 
  $Is(#LitLet.Nat.S(a#6#0#0), Tclass.LitLet.Nat())
     <==> $Is(a#6#0#0, Tclass.LitLet.Nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(LitLet.Nat.pred(d), Tclass.LitLet.Nat(), $h) } 
  $IsGoodHeap($h) && LitLet.Nat.S_q(d) && $IsAlloc(d, Tclass.LitLet.Nat(), $h)
     ==> $IsAlloc(LitLet.Nat.pred(d), Tclass.LitLet.Nat(), $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType :: 
  { #LitLet.Nat.S(Lit(a#7#0#0)) } 
  #LitLet.Nat.S(Lit(a#7#0#0)) == Lit(#LitLet.Nat.S(a#7#0#0)));

function LitLet.Nat.pred(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType :: 
  { #LitLet.Nat.S(a#8#0#0) } 
  LitLet.Nat.pred(#LitLet.Nat.S(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType :: 
  { #LitLet.Nat.S(a#9#0#0) } 
  DtRank(a#9#0#0) < DtRank(#LitLet.Nat.S(a#9#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.LitLet.Nat(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.LitLet.Nat())
     ==> $IsAlloc(d, Tclass.LitLet.Nat(), $h));

// Depth-one case-split function
function $IsA#LitLet.Nat(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#LitLet.Nat(d) } 
  $IsA#LitLet.Nat(d) ==> LitLet.Nat.O_q(d) || LitLet.Nat.S_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { LitLet.Nat.S_q(d), $Is(d, Tclass.LitLet.Nat()) } 
    { LitLet.Nat.O_q(d), $Is(d, Tclass.LitLet.Nat()) } 
  $Is(d, Tclass.LitLet.Nat()) ==> LitLet.Nat.O_q(d) || LitLet.Nat.S_q(d));

// Datatype extensional equality declaration
function LitLet.Nat#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #LitLet.Nat.O
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LitLet.Nat#Equal(a, b), LitLet.Nat.O_q(a) } 
    { LitLet.Nat#Equal(a, b), LitLet.Nat.O_q(b) } 
  LitLet.Nat.O_q(a) && LitLet.Nat.O_q(b) ==> LitLet.Nat#Equal(a, b));

// Datatype extensional equality definition: #LitLet.Nat.S
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LitLet.Nat#Equal(a, b), LitLet.Nat.S_q(a) } 
    { LitLet.Nat#Equal(a, b), LitLet.Nat.S_q(b) } 
  LitLet.Nat.S_q(a) && LitLet.Nat.S_q(b)
     ==> (LitLet.Nat#Equal(a, b)
       <==> LitLet.Nat#Equal(LitLet.Nat.pred(a), LitLet.Nat.pred(b))));

// Datatype extensionality axiom: LitLet.Nat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LitLet.Nat#Equal(a, b) } 
  LitLet.Nat#Equal(a, b) <==> a == b);

const unique class.LitLet.Nat: ClassName;

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

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Tuple: TyTagFamily;

const unique tytagFamily$Friend: TyTagFamily;

const unique tytagFamily$AClass: TyTagFamily;

const unique tytagFamily$TrickySubstitution: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique field$index: NameFamily;

const unique field$v: NameFamily;

const unique field$w: NameFamily;

const unique field$x: NameFamily;
