// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy

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

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box, a#12#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0))
     == ##_System._tuple#3._#Make3);
}

function _System.Tuple3.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box, a#13#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#13#0#0, a#13#1#0, a#13#2#0)));

function Tclass._System.Tuple3(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3: TyTag;

// Tclass._System.Tuple3 Tag
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tag(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == Tagclass._System.Tuple3
     && TagFamily(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == tytagFamily$_tuple#3);

function Tclass._System.Tuple3_0(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 0
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_0(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T0);

function Tclass._System.Tuple3_1(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 1
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_1(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T1);

function Tclass._System.Tuple3_2(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 2
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_2(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T2);

// Box/unbox axiom for Tclass._System.Tuple3
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)));

// Constructor $Is
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#14#0#0, _System._tuple#3$T0)
       && $IsBox(a#14#1#0, _System._tuple#3$T1)
       && $IsBox(a#14#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#3$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box, a#15#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0))
     == Lit(#_System._tuple#3._#Make3(a#15#0#0, a#15#1#0, a#15#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box, a#16#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box, a#17#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box, a#18#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box, a#19#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3(d) } 
  $IsA#_System.Tuple3(d) ==> _System.Tuple3.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> _System.Tuple3.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b)
     <==> _System.Tuple3._0(a) == _System.Tuple3._0(b)
       && _System.Tuple3._1(a) == _System.Tuple3._1(b)
       && _System.Tuple3._2(a) == _System.Tuple3._2(b));

// Datatype extensionality axiom: _System._tuple#3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b) <==> a == b);

const unique class._System.Tuple3: ClassName;

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: Set;
  var t##0: Set;
  var u##0: Set;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(5,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id129"} Call$$_module.__default.AssignSuchThat();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(6,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id130"} Call$$_module.__default.LetSuchThat();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(7,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id131"} Call$$_module.__default.Quantifier();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(8,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id132"} Call$$_module.__default.MapComprehension();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(9,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id133"} Call$$_module.__default.TestCollectionEmptiness();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(10,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id134"} Call$$_module.__default.OutParamsUnderLambdas();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(11,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id135"} Call$$_module.__default.AltControlFlow();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(12,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id136"} Call$$_module.__default.Sequences();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(13,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id137"} Call$$_module.__default.SetComprehension();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(14,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id138"} Call$$_module.__default.Enumerations();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(15,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id139"} Call$$_module.__default.EnumerationsMaybeNull();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(16,8)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id140"} Call$$_module.__default.GoNil();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(17,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Set#Empty(): Set);
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := Lit(Set#Empty(): Set);
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := Lit(Set#Empty(): Set);
    call {:id "id141"} Call$$_module.__default.Containment(s##0, t##0, u##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(18,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id142"} Call$$TestImplicitTypeTests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(19,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id143"} Call$$ObjectTests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(20,30)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id144"} Call$$NewtypeRangeRegression.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(21,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id145"} Call$$EnumerationRegression.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.Thirteen
function _module.__default.Thirteen(x#0: int) : bool
uses {
// definition axiom for _module.__default.Thirteen (revealed)
axiom {:id "id146"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Thirteen(x#0) } 
    _module.__default.Thirteen#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Thirteen(x#0) == (x#0 == LitInt(13)));
// definition axiom for _module.__default.Thirteen for all literals (revealed)
axiom {:id "id147"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.Thirteen(LitInt(x#0)) } 
    _module.__default.Thirteen#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Thirteen(LitInt(x#0)) == (LitInt(x#0) == LitInt(13)));
}

function _module.__default.Thirteen#canCall(x#0: int) : bool;

function _module.__default.Thirteen#requires(int) : bool;

// #requires axiom for _module.__default.Thirteen
axiom (forall x#0: int :: 
  { _module.__default.Thirteen#requires(x#0) } 
  _module.__default.Thirteen#requires(x#0) == true);

procedure {:verboseName "Thirteen (well-formedness)"} CheckWellformed$$_module.__default.Thirteen(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Even
function _module.__default.Even(y#0: int) : bool
uses {
// definition axiom for _module.__default.Even (revealed)
axiom {:id "id149"} 0 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    { _module.__default.Even(y#0) } 
    _module.__default.Even#canCall(y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Even(y#0) == (Mod(y#0, LitInt(2)) == LitInt(1)));
// definition axiom for _module.__default.Even for all literals (revealed)
axiom {:id "id150"} 0 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    {:weight 3} { _module.__default.Even(LitInt(y#0)) } 
    _module.__default.Even#canCall(LitInt(y#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Even(LitInt(y#0))
         == 
        (LitInt(Mod(y#0, LitInt(2)))
         == LitInt(1)));
}

function _module.__default.Even#canCall(y#0: int) : bool;

function _module.__default.Even#requires(int) : bool;

// #requires axiom for _module.__default.Even
axiom (forall y#0: int :: 
  { _module.__default.Even#requires(y#0) } 
  _module.__default.Even#requires(y#0) == true);

procedure {:verboseName "Even (well-formedness)"} CheckWellformed$$_module.__default.Even(y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even (well-formedness)"} CheckWellformed$$_module.__default.Even(y#0: int)
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id151"} LitInt(2) != 0;
        assume {:id "id152"} _module.__default.Even(y#0) == (Mod(y#0, LitInt(2)) == LitInt(1));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Even(y#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.FourMore
function _module.__default.FourMore(x#0: int) : int
uses {
// definition axiom for _module.__default.FourMore (revealed)
axiom {:id "id153"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.FourMore(x#0) } 
    _module.__default.FourMore#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.FourMore(x#0) == x#0 + 4);
// definition axiom for _module.__default.FourMore for all literals (revealed)
axiom {:id "id154"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.FourMore(LitInt(x#0)) } 
    _module.__default.FourMore#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.FourMore(LitInt(x#0)) == LitInt(x#0 + 4));
}

function _module.__default.FourMore#canCall(x#0: int) : bool;

function _module.__default.FourMore#requires(int) : bool;

// #requires axiom for _module.__default.FourMore
axiom (forall x#0: int :: 
  { _module.__default.FourMore#requires(x#0) } 
  _module.__default.FourMore#requires(x#0) == true);

procedure {:verboseName "FourMore (well-formedness)"} CheckWellformed$$_module.__default.FourMore(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat (call)"} Call$$_module.__default.AssignSuchThat();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat (correctness)"} Impl$$_module.__default.AssignSuchThat() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat (correctness)"} Impl$$_module.__default.AssignSuchThat() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var y#0: int;
  var ##x#0: int;
  var x#1: int;
  var y#1: int;
  var ##x#1: int;
  var b#0: bool;
  var x#2: int;
  var b#1: bool;
  var y#2: int;
  var ##x#2: int;

    // AddMethodImpl: AssignSuchThat, Impl$$_module.__default.AssignSuchThat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc x#0, y#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(30,3)
    ##x#0 := LitInt(13);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.__default.Thirteen#canCall(LitInt(13));
    assume _module.__default.Thirteen#canCall(LitInt(13));
    assert {:id "id156"} {:subsumption 0} _module.__default.Thirteen#canCall(LitInt(13))
       ==> Lit(_module.__default.Thirteen(LitInt(13))) || LitInt(13) == LitInt(13);
    assume {:id "id157"} Lit(_module.__default.Thirteen(LitInt(13)));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(31,8)
    havoc x#1;
    havoc y#1;
    if (true)
    {
        if (LitInt(12) <= x#1)
        {
        }

        if (LitInt(12) <= x#1 && x#1 < y#1)
        {
            ##x#1 := x#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(x#1);
        }

        assume LitInt(12) <= x#1 ==> x#1 < y#1 ==> _module.__default.Thirteen#canCall(x#1);
    }

    assert {:id "id158"} (
        $Is(LitInt(12), TInt)
         && $Is(LitInt(12 + 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 12 + 1
         && _module.__default.Thirteen(LitInt(12)))
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(LitInt(0 + 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0 + 1
         && _module.__default.Thirteen(LitInt(0)))
       || 
      (exists $as#x0#0: int :: 
        $Is($as#x0#0 + 1, TInt)
           && 
          LitInt(12) <= $as#x0#0
           && $as#x0#0 < $as#x0#0 + 1
           && _module.__default.Thirteen($as#x0#0))
       || 
      (
        $Is(LitInt(0 - 1), TInt)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0 - 1)
         && 0 - 1 < 0
         && _module.__default.Thirteen(LitInt(0 - 1)))
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 0
         && _module.__default.Thirteen(LitInt(12)))
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0
         && _module.__default.Thirteen(LitInt(0)))
       || 
      (exists $as#x0#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= $as#x0#0
           && $as#x0#0 < 0
           && _module.__default.Thirteen($as#x0#0))
       || 
      (exists $as#y0#0: int :: 
        $Is($as#y0#0 - 1, TInt)
           && 
          LitInt(12) <= $as#y0#0 - 1
           && $as#y0#0 - 1 < $as#y0#0
           && _module.__default.Thirteen($as#y0#0 - 1))
       || 
      (exists $as#y0#0: int :: 
        $Is(LitInt(12), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < $as#y0#0
           && _module.__default.Thirteen(LitInt(12)))
       || 
      (exists $as#y0#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < $as#y0#0
           && _module.__default.Thirteen(LitInt(0)))
       || (exists $as#x0#0: int, $as#y0#0: int :: 
        LitInt(12) <= $as#x0#0
           && $as#x0#0 < $as#y0#0
           && _module.__default.Thirteen($as#x0#0));
    havoc x#0, y#0;
    assume {:id "id159"} LitInt(12) <= x#0 && x#0 < y#0 && _module.__default.Thirteen(x#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(32,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc b#0;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(34,11)
    havoc x#2;
    havoc b#1;
    havoc y#2;
    if (true)
    {
        if (LitInt(12) <= x#2)
        {
        }

        if (LitInt(12) <= x#2 && x#2 < y#2)
        {
            ##x#2 := x#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#2, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(x#2);
        }

        if (LitInt(12) <= x#2 && x#2 < y#2 && _module.__default.Thirteen(x#2))
        {
        }

        assume LitInt(12) <= x#2 ==> x#2 < y#2 ==> _module.__default.Thirteen#canCall(x#2);
    }

    assert {:id "id160"} (
        $Is(LitInt(12), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(12 + 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 12 + 1
         && _module.__default.Thirteen(LitInt(12))
         && true)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0 + 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0 + 1
         && _module.__default.Thirteen(LitInt(0))
         && true)
       || 
      (exists $as#x1#0: int :: 
        $Is(Lit(true), TBool)
           && $Is($as#x1#0 + 1, TInt)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < $as#x1#0 + 1
           && _module.__default.Thirteen($as#x1#0)
           && true)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(12 + 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 12 + 1
         && _module.__default.Thirteen(LitInt(12))
         && false)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0 + 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0 + 1
         && _module.__default.Thirteen(LitInt(0))
         && false)
       || 
      (exists $as#x1#0: int :: 
        $Is(Lit(false), TBool)
           && $Is($as#x1#0 + 1, TInt)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < $as#x1#0 + 1
           && _module.__default.Thirteen($as#x1#0)
           && false)
       || 
      (exists $as#b0#0: bool :: 
        $Is(LitInt(12), TInt)
           && $Is(LitInt(12 + 1), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < 12 + 1
           && _module.__default.Thirteen(LitInt(12))
           && $as#b0#0)
       || 
      (exists $as#b0#0: bool :: 
        $Is(LitInt(0), TInt)
           && $Is(LitInt(0 + 1), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < 0 + 1
           && _module.__default.Thirteen(LitInt(0))
           && $as#b0#0)
       || 
      (exists $as#x1#0: int, $as#b0#0: bool :: 
        $Is($as#x1#0 + 1, TInt)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < $as#x1#0 + 1
           && _module.__default.Thirteen($as#x1#0)
           && $as#b0#0)
       || 
      (
        $Is(LitInt(0 - 1), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0 - 1)
         && 0 - 1 < 0
         && _module.__default.Thirteen(LitInt(0 - 1))
         && true)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 0
         && _module.__default.Thirteen(LitInt(12))
         && true)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0
         && _module.__default.Thirteen(LitInt(0))
         && true)
       || 
      (exists $as#x1#0: int :: 
        $Is(Lit(true), TBool)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < 0
           && _module.__default.Thirteen($as#x1#0)
           && true)
       || 
      (
        $Is(LitInt(0 - 1), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0 - 1)
         && 0 - 1 < 0
         && _module.__default.Thirteen(LitInt(0 - 1))
         && false)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 0
         && _module.__default.Thirteen(LitInt(12))
         && false)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0
         && _module.__default.Thirteen(LitInt(0))
         && false)
       || 
      (exists $as#x1#0: int :: 
        $Is(Lit(false), TBool)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < 0
           && _module.__default.Thirteen($as#x1#0)
           && false)
       || 
      (exists $as#b0#0: bool :: 
        $Is(LitInt(0 - 1), TInt)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0 - 1)
           && 0 - 1 < 0
           && _module.__default.Thirteen(LitInt(0 - 1))
           && $as#b0#0)
       || 
      (exists $as#b0#0: bool :: 
        $Is(LitInt(12), TInt)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < 0
           && _module.__default.Thirteen(LitInt(12))
           && $as#b0#0)
       || 
      (exists $as#b0#0: bool :: 
        $Is(LitInt(0), TInt)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < 0
           && _module.__default.Thirteen(LitInt(0))
           && $as#b0#0)
       || 
      (exists $as#x1#0: int, $as#b0#0: bool :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < 0
           && _module.__default.Thirteen($as#x1#0)
           && $as#b0#0)
       || 
      (exists $as#y1#0: int :: 
        $Is($as#y1#0 - 1, TInt)
           && $Is(Lit(true), TBool)
           && 
          LitInt(12) <= $as#y1#0 - 1
           && $as#y1#0 - 1 < $as#y1#0
           && _module.__default.Thirteen($as#y1#0 - 1)
           && true)
       || 
      (exists $as#y1#0: int :: 
        $Is(LitInt(12), TInt)
           && $Is(Lit(true), TBool)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < $as#y1#0
           && _module.__default.Thirteen(LitInt(12))
           && true)
       || 
      (exists $as#y1#0: int :: 
        $Is(LitInt(0), TInt)
           && $Is(Lit(true), TBool)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < $as#y1#0
           && _module.__default.Thirteen(LitInt(0))
           && true)
       || 
      (exists $as#x1#0: int, $as#y1#0: int :: 
        $Is(Lit(true), TBool)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < $as#y1#0
           && _module.__default.Thirteen($as#x1#0)
           && true)
       || 
      (exists $as#y1#0: int :: 
        $Is($as#y1#0 - 1, TInt)
           && $Is(Lit(false), TBool)
           && 
          LitInt(12) <= $as#y1#0 - 1
           && $as#y1#0 - 1 < $as#y1#0
           && _module.__default.Thirteen($as#y1#0 - 1)
           && false)
       || 
      (exists $as#y1#0: int :: 
        $Is(LitInt(12), TInt)
           && $Is(Lit(false), TBool)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < $as#y1#0
           && _module.__default.Thirteen(LitInt(12))
           && false)
       || 
      (exists $as#y1#0: int :: 
        $Is(LitInt(0), TInt)
           && $Is(Lit(false), TBool)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < $as#y1#0
           && _module.__default.Thirteen(LitInt(0))
           && false)
       || 
      (exists $as#x1#0: int, $as#y1#0: int :: 
        $Is(Lit(false), TBool)
           && 
          LitInt(12) <= $as#x1#0
           && $as#x1#0 < $as#y1#0
           && _module.__default.Thirteen($as#x1#0)
           && false)
       || 
      (exists $as#b0#0: bool, $as#y1#0: int :: 
        $Is($as#y1#0 - 1, TInt)
           && 
          LitInt(12) <= $as#y1#0 - 1
           && $as#y1#0 - 1 < $as#y1#0
           && _module.__default.Thirteen($as#y1#0 - 1)
           && $as#b0#0)
       || 
      (exists $as#b0#0: bool, $as#y1#0: int :: 
        $Is(LitInt(12), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < $as#y1#0
           && _module.__default.Thirteen(LitInt(12))
           && $as#b0#0)
       || 
      (exists $as#b0#0: bool, $as#y1#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < $as#y1#0
           && _module.__default.Thirteen(LitInt(0))
           && $as#b0#0)
       || (exists $as#x1#0: int, $as#b0#0: bool, $as#y1#0: int :: 
        LitInt(12) <= $as#x1#0
           && $as#x1#0 < $as#y1#0
           && _module.__default.Thirteen($as#x1#0)
           && $as#b0#0);
    havoc x#0, b#0, y#0;
    assume {:id "id161"} LitInt(12) <= x#0 && x#0 < y#0 && _module.__default.Thirteen(x#0) && b#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(35,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    if (b#0)
    {
    }
    else
    {
    }

    assume true;
    assume true;
}



procedure {:verboseName "LetSuchThat (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThat();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat (call)"} Call$$_module.__default.LetSuchThat();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LetSuchThat (correctness)"} Impl$$_module.__default.LetSuchThat() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#0_x() : int;

function $let#0_y() : int;

function $let#0$canCall() : bool
uses {
axiom $let#0$canCall()
   ==> LitInt(12) <= $let#0_x()
     && $let#0_x() < $let#0_y()
     && $let#0_y() < 15
     && _module.__default.Thirteen($let#0_x());
}

function $let#1_x() : int;

function $let#1_b() : bool;

function $let#1_y() : int;

function $let#1$canCall() : bool
uses {
axiom $let#1$canCall()
   ==> LitInt(12) <= $let#1_x()
     && $let#1_x() < $let#1_y()
     && $let#1_y() < 15
     && _module.__default.Thirteen($let#1_x())
     && $let#1_b();
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThat (correctness)"} Impl$$_module.__default.LetSuchThat() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: int;
  var p#0: DatatypeType
     where $Is(p#0, Tclass._System.Tuple2(TInt, TInt))
       && $IsAlloc(p#0, Tclass._System.Tuple2(TInt, TInt), $Heap);
  var x#1: int;
  var y#1: int;
  var ##x#1: int;
  var x#2: int;
  var y#2: int;
  var q#0: DatatypeType
     where $Is(q#0, Tclass._System.Tuple3(TInt, TInt, TSeq(TChar)))
       && $IsAlloc(q#0, Tclass._System.Tuple3(TInt, TInt, TSeq(TChar)), $Heap);
  var x#4: int;
  var b#1: bool;
  var y#4: int;
  var ##x#2: int;
  var x#5: int;
  var b#2: bool;
  var y#5: int;

    // AddMethodImpl: LetSuchThat, Impl$$_module.__default.LetSuchThat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(39,3)
    ##x#0 := LitInt(13);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.__default.Thirteen#canCall(LitInt(13));
    assume _module.__default.Thirteen#canCall(LitInt(13));
    assert {:id "id162"} {:subsumption 0} _module.__default.Thirteen#canCall(LitInt(13))
       ==> Lit(_module.__default.Thirteen(LitInt(13))) || LitInt(13) == LitInt(13);
    assume {:id "id163"} Lit(_module.__default.Thirteen(LitInt(13)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(40,9)
    assume true;
    havoc x#1;
    havoc y#1;
    if (true)
    {
        if (LitInt(12) <= x#1)
        {
        }

        if (LitInt(12) <= x#1 && x#1 < y#1)
        {
        }

        if (LitInt(12) <= x#1 && x#1 < y#1 && y#1 < 15)
        {
            ##x#1 := x#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(x#1);
        }
    }

    assert {:id "id164"} (
        $Is(LitInt(15 - 1 - 1), TInt)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(15 - 1 - 1)
         && 15 - 1 - 1 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(15 - 1 - 1)))
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(12)))
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(0)))
       || 
      (exists x#0: int :: 
        $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= x#0
           && x#0 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(x#0))
       || 
      (
        $Is(LitInt(15 - 1 - 1), TInt)
         && $Is(LitInt(15 - 1 - 1 + 1), TInt)
         && 
        LitInt(12) <= LitInt(15 - 1 - 1)
         && 15 - 1 - 1 < 15 - 1 - 1 + 1
         && 15 - 1 - 1 + 1 < 15
         && _module.__default.Thirteen(LitInt(15 - 1 - 1)))
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(LitInt(12 + 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 12 + 1
         && 12 + 1 < 15
         && _module.__default.Thirteen(LitInt(12)))
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(LitInt(0 + 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0 + 1
         && 0 + 1 < 15
         && _module.__default.Thirteen(LitInt(0)))
       || 
      (exists x#0: int :: 
        $Is(x#0 + 1, TInt)
           && 
          LitInt(12) <= x#0
           && x#0 < x#0 + 1
           && x#0 + 1 < 15
           && _module.__default.Thirteen(x#0))
       || 
      (
        $Is(LitInt(0 - 1), TInt)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0 - 1)
         && 0 - 1 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(0 - 1)))
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(12)))
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(0)))
       || 
      (exists x#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= x#0
           && x#0 < 0
           && 0 < 15
           && _module.__default.Thirteen(x#0))
       || 
      (exists y#0: int :: 
        $Is(y#0 - 1, TInt)
           && 
          LitInt(12) <= y#0 - 1
           && y#0 - 1 < y#0
           && y#0 < 15
           && _module.__default.Thirteen(y#0 - 1))
       || 
      (exists y#0: int :: 
        $Is(LitInt(12), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < y#0
           && y#0 < 15
           && _module.__default.Thirteen(LitInt(12)))
       || 
      (exists y#0: int :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < y#0
           && y#0 < 15
           && _module.__default.Thirteen(LitInt(0)))
       || (exists x#0: int, y#0: int :: 
        LitInt(12) <= x#0 && x#0 < y#0 && y#0 < 15 && _module.__default.Thirteen(x#0));
    assume true;
    assume LitInt(12) <= x#1 && x#1 < y#1 && y#1 < 15 && _module.__default.Thirteen(x#1);
    havoc x#2;
    havoc y#2;
    assume true;
    assume LitInt(12) <= x#2
       ==> 
      x#2 < y#2
       ==> 
      y#2 < 15
       ==> _module.__default.Thirteen#canCall(x#2);
    assume {:id "id165"} LitInt(12) <= x#2 && x#2 < y#2 && y#2 < 15 && _module.__default.Thirteen(x#2);
    assume true;
    assert {:id "id166"} _System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(x#1), $Box(y#1)), 
      #_System._tuple#2._#Make2($Box(x#2), $Box(y#2)));
    assume $let#0$canCall();
    assume $let#0$canCall();
    p#0 := (var x#0, y#0 := $let#0_x(), $let#0_y(); 
      #_System._tuple#2._#Make2($Box(x#0), $Box(y#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(41,3)
    assume $IsA#_System.Tuple2(p#0);
    assert {:id "id168"} _System.Tuple2#Equal(p#0, #_System._tuple#2._#Make2($Box(LitInt(13)), $Box(LitInt(14))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(42,9)
    assume true;
    havoc x#4;
    havoc b#1;
    havoc y#4;
    if (true)
    {
        if (LitInt(12) <= x#4)
        {
        }

        if (LitInt(12) <= x#4 && x#4 < y#4)
        {
        }

        if (LitInt(12) <= x#4 && x#4 < y#4 && y#4 < 15)
        {
            ##x#2 := x#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#2, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(x#4);
        }

        if (LitInt(12) <= x#4 && x#4 < y#4 && y#4 < 15 && _module.__default.Thirteen(x#4))
        {
        }
    }

    assert {:id "id169"} (
        $Is(LitInt(15 - 1 - 1), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(15 - 1 - 1)
         && 15 - 1 - 1 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(15 - 1 - 1))
         && true)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(12))
         && true)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(0))
         && true)
       || 
      (exists x#3: int :: 
        $Is(Lit(true), TBool)
           && $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(x#3)
           && true)
       || 
      (
        $Is(LitInt(15 - 1 - 1), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(15 - 1 - 1)
         && 15 - 1 - 1 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(15 - 1 - 1))
         && false)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(12))
         && false)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(15 - 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 15 - 1
         && 15 - 1 < 15
         && _module.__default.Thirteen(LitInt(0))
         && false)
       || 
      (exists x#3: int :: 
        $Is(Lit(false), TBool)
           && $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(x#3)
           && false)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(15 - 1 - 1), TInt)
           && $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= LitInt(15 - 1 - 1)
           && 15 - 1 - 1 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(LitInt(15 - 1 - 1))
           && b#0)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(12), TInt)
           && $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(LitInt(12))
           && b#0)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(0), TInt)
           && $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(LitInt(0))
           && b#0)
       || 
      (exists x#3: int, b#0: bool :: 
        $Is(LitInt(15 - 1), TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < 15 - 1
           && 15 - 1 < 15
           && _module.__default.Thirteen(x#3)
           && b#0)
       || 
      (
        $Is(LitInt(15 - 1 - 1), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(15 - 1 - 1 + 1), TInt)
         && 
        LitInt(12) <= LitInt(15 - 1 - 1)
         && 15 - 1 - 1 < 15 - 1 - 1 + 1
         && 15 - 1 - 1 + 1 < 15
         && _module.__default.Thirteen(LitInt(15 - 1 - 1))
         && true)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(12 + 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 12 + 1
         && 12 + 1 < 15
         && _module.__default.Thirteen(LitInt(12))
         && true)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0 + 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0 + 1
         && 0 + 1 < 15
         && _module.__default.Thirteen(LitInt(0))
         && true)
       || 
      (exists x#3: int :: 
        $Is(Lit(true), TBool)
           && $Is(x#3 + 1, TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < x#3 + 1
           && x#3 + 1 < 15
           && _module.__default.Thirteen(x#3)
           && true)
       || 
      (
        $Is(LitInt(15 - 1 - 1), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(15 - 1 - 1 + 1), TInt)
         && 
        LitInt(12) <= LitInt(15 - 1 - 1)
         && 15 - 1 - 1 < 15 - 1 - 1 + 1
         && 15 - 1 - 1 + 1 < 15
         && _module.__default.Thirteen(LitInt(15 - 1 - 1))
         && false)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(12 + 1), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 12 + 1
         && 12 + 1 < 15
         && _module.__default.Thirteen(LitInt(12))
         && false)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0 + 1), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0 + 1
         && 0 + 1 < 15
         && _module.__default.Thirteen(LitInt(0))
         && false)
       || 
      (exists x#3: int :: 
        $Is(Lit(false), TBool)
           && $Is(x#3 + 1, TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < x#3 + 1
           && x#3 + 1 < 15
           && _module.__default.Thirteen(x#3)
           && false)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(15 - 1 - 1), TInt)
           && $Is(LitInt(15 - 1 - 1 + 1), TInt)
           && 
          LitInt(12) <= LitInt(15 - 1 - 1)
           && 15 - 1 - 1 < 15 - 1 - 1 + 1
           && 15 - 1 - 1 + 1 < 15
           && _module.__default.Thirteen(LitInt(15 - 1 - 1))
           && b#0)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(12), TInt)
           && $Is(LitInt(12 + 1), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < 12 + 1
           && 12 + 1 < 15
           && _module.__default.Thirteen(LitInt(12))
           && b#0)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(0), TInt)
           && $Is(LitInt(0 + 1), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < 0 + 1
           && 0 + 1 < 15
           && _module.__default.Thirteen(LitInt(0))
           && b#0)
       || 
      (exists x#3: int, b#0: bool :: 
        $Is(x#3 + 1, TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < x#3 + 1
           && x#3 + 1 < 15
           && _module.__default.Thirteen(x#3)
           && b#0)
       || 
      (
        $Is(LitInt(0 - 1), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0 - 1)
         && 0 - 1 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(0 - 1))
         && true)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(12))
         && true)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(true), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(0))
         && true)
       || 
      (exists x#3: int :: 
        $Is(Lit(true), TBool)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < 0
           && 0 < 15
           && _module.__default.Thirteen(x#3)
           && true)
       || 
      (
        $Is(LitInt(0 - 1), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0 - 1)
         && 0 - 1 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(0 - 1))
         && false)
       || 
      (
        $Is(LitInt(12), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(12)
         && 12 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(12))
         && false)
       || 
      (
        $Is(LitInt(0), TInt)
         && $Is(Lit(false), TBool)
         && $Is(LitInt(0), TInt)
         && 
        LitInt(12) <= LitInt(0)
         && 0 < 0
         && 0 < 15
         && _module.__default.Thirteen(LitInt(0))
         && false)
       || 
      (exists x#3: int :: 
        $Is(Lit(false), TBool)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < 0
           && 0 < 15
           && _module.__default.Thirteen(x#3)
           && false)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(0 - 1), TInt)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0 - 1)
           && 0 - 1 < 0
           && 0 < 15
           && _module.__default.Thirteen(LitInt(0 - 1))
           && b#0)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(12), TInt)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < 0
           && 0 < 15
           && _module.__default.Thirteen(LitInt(12))
           && b#0)
       || 
      (exists b#0: bool :: 
        $Is(LitInt(0), TInt)
           && $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < 0
           && 0 < 15
           && _module.__default.Thirteen(LitInt(0))
           && b#0)
       || 
      (exists x#3: int, b#0: bool :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= x#3
           && x#3 < 0
           && 0 < 15
           && _module.__default.Thirteen(x#3)
           && b#0)
       || 
      (exists y#3: int :: 
        $Is(y#3 - 1, TInt)
           && $Is(Lit(true), TBool)
           && 
          LitInt(12) <= y#3 - 1
           && y#3 - 1 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(y#3 - 1)
           && true)
       || 
      (exists y#3: int :: 
        $Is(LitInt(12), TInt)
           && $Is(Lit(true), TBool)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(LitInt(12))
           && true)
       || 
      (exists y#3: int :: 
        $Is(LitInt(0), TInt)
           && $Is(Lit(true), TBool)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(LitInt(0))
           && true)
       || 
      (exists x#3: int, y#3: int :: 
        $Is(Lit(true), TBool)
           && 
          LitInt(12) <= x#3
           && x#3 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(x#3)
           && true)
       || 
      (exists y#3: int :: 
        $Is(y#3 - 1, TInt)
           && $Is(Lit(false), TBool)
           && 
          LitInt(12) <= y#3 - 1
           && y#3 - 1 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(y#3 - 1)
           && false)
       || 
      (exists y#3: int :: 
        $Is(LitInt(12), TInt)
           && $Is(Lit(false), TBool)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(LitInt(12))
           && false)
       || 
      (exists y#3: int :: 
        $Is(LitInt(0), TInt)
           && $Is(Lit(false), TBool)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(LitInt(0))
           && false)
       || 
      (exists x#3: int, y#3: int :: 
        $Is(Lit(false), TBool)
           && 
          LitInt(12) <= x#3
           && x#3 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(x#3)
           && false)
       || 
      (exists b#0: bool, y#3: int :: 
        $Is(y#3 - 1, TInt)
           && 
          LitInt(12) <= y#3 - 1
           && y#3 - 1 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(y#3 - 1)
           && b#0)
       || 
      (exists b#0: bool, y#3: int :: 
        $Is(LitInt(12), TInt)
           && 
          LitInt(12) <= LitInt(12)
           && 12 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(LitInt(12))
           && b#0)
       || 
      (exists b#0: bool, y#3: int :: 
        $Is(LitInt(0), TInt)
           && 
          LitInt(12) <= LitInt(0)
           && 0 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(LitInt(0))
           && b#0)
       || (exists x#3: int, b#0: bool, y#3: int :: 
        LitInt(12) <= x#3
           && x#3 < y#3
           && y#3 < 15
           && _module.__default.Thirteen(x#3)
           && b#0);
    assume true;
    assume LitInt(12) <= x#4
       && x#4 < y#4
       && y#4 < 15
       && _module.__default.Thirteen(x#4)
       && b#1;
    if (b#1)
    {
    }
    else
    {
    }

    havoc x#5;
    havoc b#2;
    havoc y#5;
    assume true;
    assume LitInt(12) <= x#5
       ==> 
      x#5 < y#5
       ==> 
      y#5 < 15
       ==> _module.__default.Thirteen#canCall(x#5);
    assume {:id "id170"} LitInt(12) <= x#5
       && x#5 < y#5
       && y#5 < 15
       && _module.__default.Thirteen(x#5)
       && b#2;
    assume true;
    assert {:id "id171"} _System.Tuple3#Equal(#_System._tuple#3._#Make3($Box(x#4), 
        $Box(y#4), 
        $Box((if b#1
             then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(121))), $Box(char#FromInt(101))), 
              $Box(char#FromInt(115)))
             else Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(110))), $Box(char#FromInt(111)))))), 
      #_System._tuple#3._#Make3($Box(x#5), 
        $Box(y#5), 
        $Box((if b#2
             then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(121))), $Box(char#FromInt(101))), 
              $Box(char#FromInt(115)))
             else Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(110))), $Box(char#FromInt(111)))))));
    assume $let#1$canCall();
    assume $let#1$canCall();
    q#0 := (var x#3, b#0, y#3 := $let#1_x(), $let#1_b(), $let#1_y(); 
      #_System._tuple#3._#Make3($Box(x#3), 
        $Box(y#3), 
        $Box((if b#0
             then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(121))), $Box(char#FromInt(101))), 
              $Box(char#FromInt(115)))
             else Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(110))), $Box(char#FromInt(111)))))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(43,3)
    assume $IsA#_System.Tuple3(q#0);
    assert {:id "id173"} _System.Tuple3#Equal(q#0, 
      #_System._tuple#3._#Make3($Box(LitInt(13)), 
        $Box(LitInt(14)), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(121))), $Box(char#FromInt(101))), 
              $Box(char#FromInt(115)))))));
}



procedure {:verboseName "Quantifier (well-formedness)"} CheckWellFormed$$_module.__default.Quantifier();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Quantifier (call)"} Call$$_module.__default.Quantifier();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Quantifier (correctness)"} Impl$$_module.__default.Quantifier() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MapComprehension (well-formedness)"} CheckWellFormed$$_module.__default.MapComprehension();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MapComprehension (call)"} Call$$_module.__default.MapComprehension();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MapComprehension (correctness)"} Impl$$_module.__default.MapComprehension() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$0#0#x#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MapComprehension (correctness)"} Impl$$_module.__default.MapComprehension() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: Map
     where $Is(m#0, TMap(TInt, TInt)) && $IsAlloc(m#0, TMap(TInt, TInt), $Heap);
  var x#0: int;
  var x#2: int;
  var x#prime#0: int;
  var ##x#0: int;

    // AddMethodImpl: MapComprehension, Impl$$_module.__default.MapComprehension
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(61,9)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        if (LitInt(12) <= x#0)
        {
        }

        if (LitInt(12) <= x#0 && x#0 < 15)
        {
            assert {:id "id176"} LitInt(2) != 0;
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt) && LitInt(12) <= $Unbox($w#0): int && $Unbox($w#0): int < 15)), 
      (lambda $w#0: Box :: $Box(Div($Unbox($w#0): int, LitInt(2)))), 
      TMap(TInt, TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(62,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(63,5)
    assume true;
    // Begin Comprehension WF check
    havoc x#2;
    if (true)
    {
        havoc x#prime#0;
        assume true;
        if (LitInt(12) <= x#2)
        {
        }

        if (LitInt(12) <= x#2 && x#2 < 15)
        {
            ##x#0 := x#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.FourMore#canCall(x#2);
        }

        if (LitInt(12) <= x#2 && x#2 < 15)
        {
        }

        if (LitInt(12) <= x#2 && x#2 < 15 && LitInt(12) <= x#prime#0 && x#prime#0 < 15)
        {
            assert {:id "id178"} _module.__default.FourMore(x#2) != _module.__default.FourMore(x#prime#0)
               || x#2 == x#prime#0;
        }
    }

    // End Comprehension WF check
    assume (forall x#3: int :: 
      { _module.__default.FourMore(x#3) } 
      _module.__default.FourMore#canCall(x#3)
         && (forall a#1#0#0: int :: 
          { _module.__default.FourMore(a#1#0#0) } 
          LitInt(12) <= a#1#0#0 && a#1#0#0 < 15
             ==> LitInt(12) <= map$project$0#0#x#0(_module.__default.FourMore(a#1#0#0))
               && map$project$0#0#x#0(_module.__default.FourMore(a#1#0#0)) < 15
               && _module.__default.FourMore(a#1#0#0)
                 == _module.__default.FourMore(map$project$0#0#x#0(_module.__default.FourMore(a#1#0#0)))));
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, TInt)
             && (exists a#0#0#0: int :: 
              LitInt(12) <= a#0#0#0
                 && a#0#0#0 < 15
                 && $Unbox($w#1): int == _module.__default.FourMore(a#0#0#0)))), 
      (lambda $w#1: Box :: $Box(map$project$0#0#x#0($Unbox($w#1): int))), 
      TMap(TInt, TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(64,3)
    assume true;
    assume true;
}



procedure {:verboseName "TestCollectionEmptiness (well-formedness)"} CheckWellFormed$$_module.__default.TestCollectionEmptiness();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestCollectionEmptiness (call)"} Call$$_module.__default.TestCollectionEmptiness();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestCollectionEmptiness (correctness)"} Impl$$_module.__default.TestCollectionEmptiness() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestCollectionEmptiness (correctness)"} Impl$$_module.__default.TestCollectionEmptiness() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Set where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap);
  var b#0: MultiSet
     where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap);
  var c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap);
  var d#0: Map
     where $Is(d#0, TMap(TInt, TInt)) && $IsAlloc(d#0, TMap(TInt, TInt), $Heap);
  var $rhs#0: Set;
  var $rhs#1: MultiSet;
  var $rhs#2: Seq;
  var $rhs#3: Map;
  var a##0: Set;
  var b##0: MultiSet;
  var c##0: Seq;
  var d##0: Map;
  var $rhs#4: Set;
  var $rhs#5: MultiSet;
  var $rhs#6: Seq;
  var $rhs#7: Map;
  var a##1: Set;
  var b##1: MultiSet;
  var c##1: Seq;
  var d##1: Map;

    // AddMethodImpl: TestCollectionEmptiness, Impl$$_module.__default.TestCollectionEmptiness
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0 /* where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap) */, b#0 /* where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap) */, c#0 /* where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap) */, d#0 /* where $Is(d#0, TMap(TInt, TInt)) && $IsAlloc(d#0, TMap(TInt, TInt), $Heap) */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(69,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))), $Box(LitInt(4))));
    assume true;
    $rhs#1 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(4))), $Box(LitInt(4))), 
        $Box(LitInt(1))));
    assume true;
    $rhs#2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(9))), 
        $Box(LitInt(0))));
    assume true;
    $rhs#3 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(13)), $Box(LitInt(26))));
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    c#0 := $rhs#2;
    d#0 := $rhs#3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(70,27)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := d#0;
    call {:id "id188"} Call$$_module.__default.PrintCollectionEmptiness(TInt, a##0, b##0, c##0, d##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(71,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#4 := Lit(Set#Empty(): Set);
    assume true;
    $rhs#5 := Lit(MultiSet#Empty(): MultiSet);
    assume true;
    $rhs#6 := Lit(Seq#Empty(): Seq);
    assume true;
    $rhs#7 := Lit(Map#Empty(): Map);
    a#0 := $rhs#4;
    b#0 := $rhs#5;
    c#0 := $rhs#6;
    d#0 := $rhs#7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(72,27)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##1 := c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##1 := d#0;
    call {:id "id197"} Call$$_module.__default.PrintCollectionEmptiness(TInt, a##1, b##1, c##1, d##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "PrintCollectionEmptiness (well-formedness)"} CheckWellFormed$$_module.__default.PrintCollectionEmptiness(_module._default.PrintCollectionEmptiness$X: Ty, 
    a#0: Set
       where $Is(a#0, TSet(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(a#0, TSet(_module._default.PrintCollectionEmptiness$X), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(b#0, TMultiSet(_module._default.PrintCollectionEmptiness$X), $Heap), 
    c#0: Seq
       where $Is(c#0, TSeq(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(c#0, TSeq(_module._default.PrintCollectionEmptiness$X), $Heap), 
    d#0: Map
       where $Is(d#0, TMap(_module._default.PrintCollectionEmptiness$X, TInt))
         && $IsAlloc(d#0, TMap(_module._default.PrintCollectionEmptiness$X, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintCollectionEmptiness (call)"} Call$$_module.__default.PrintCollectionEmptiness(_module._default.PrintCollectionEmptiness$X: Ty, 
    a#0: Set
       where $Is(a#0, TSet(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(a#0, TSet(_module._default.PrintCollectionEmptiness$X), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(b#0, TMultiSet(_module._default.PrintCollectionEmptiness$X), $Heap), 
    c#0: Seq
       where $Is(c#0, TSeq(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(c#0, TSeq(_module._default.PrintCollectionEmptiness$X), $Heap), 
    d#0: Map
       where $Is(d#0, TMap(_module._default.PrintCollectionEmptiness$X, TInt))
         && $IsAlloc(d#0, TMap(_module._default.PrintCollectionEmptiness$X, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintCollectionEmptiness (correctness)"} Impl$$_module.__default.PrintCollectionEmptiness(_module._default.PrintCollectionEmptiness$X: Ty, 
    a#0: Set
       where $Is(a#0, TSet(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(a#0, TSet(_module._default.PrintCollectionEmptiness$X), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(b#0, TMultiSet(_module._default.PrintCollectionEmptiness$X), $Heap), 
    c#0: Seq
       where $Is(c#0, TSeq(_module._default.PrintCollectionEmptiness$X))
         && $IsAlloc(c#0, TSeq(_module._default.PrintCollectionEmptiness$X), $Heap), 
    d#0: Map
       where $Is(d#0, TMap(_module._default.PrintCollectionEmptiness$X, TInt))
         && $IsAlloc(d#0, TMap(_module._default.PrintCollectionEmptiness$X, TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OutParamsUnderLambdas (well-formedness)"} CheckWellFormed$$_module.__default.OutParamsUnderLambdas();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OutParamsUnderLambdas (call)"} Call$$_module.__default.OutParamsUnderLambdas();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OutParamsUnderLambdas (correctness)"} Impl$$_module.__default.OutParamsUnderLambdas() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OutParamsUnderLambdas (correctness)"} Impl$$_module.__default.OutParamsUnderLambdas() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var b#0: bool;
  var $rhs##0: int;
  var $rhs##1: bool;
  var m#0: int;
  var $rhs##2: int;

    // AddMethodImpl: OutParamsUnderLambdas, Impl$$_module.__default.OutParamsUnderLambdas
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(101,17)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id206"} $rhs##0, $rhs##1 := Call$$_module.__default.XP();
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    b#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(102,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(103,14)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id209"} $rhs##2 := Call$$_module.__default.XM();
    // TrCallStmt: After ProcessCallStmt
    m#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(104,3)
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "XP (well-formedness)"} CheckWellFormed$$_module.__default.XP() returns (x#0: int, b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "XP (call)"} Call$$_module.__default.XP() returns (x#0: int, b#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "XP (correctness)"} Impl$$_module.__default.XP() returns (x#0: int, b#0: bool, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "XM (well-formedness)"} CheckWellFormed$$_module.__default.XM() returns (x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "XM (call)"} Call$$_module.__default.XM() returns (x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "XM (correctness)"} Impl$$_module.__default.XM() returns (x#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AltControlFlow (well-formedness)"} CheckWellFormed$$_module.__default.AltControlFlow();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AltControlFlow (call)"} Call$$_module.__default.AltControlFlow();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AltControlFlow (correctness)"} Impl$$_module.__default.AltControlFlow() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AltControlFlow (correctness)"} Impl$$_module.__default.AltControlFlow() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var lo#0: int;
  var hi#0: int;
  var Lo#0: int;
  var Hi#0: int;
  var $rhs##0: int;
  var $rhs##1: int;
  var s##0: Seq;
  var from##0: int;
  var to##0: int;
  var $rhs##2: int;
  var $rhs##3: int;
  var s##1: Seq;
  var from##1: int;
  var to##1: int;
  var $rhs##4: int;
  var $rhs##5: int;
  var s##2: Seq;
  var from##2: int;
  var to##2: int;
  var $rhs##6: int;
  var $rhs##7: int;
  var s##3: Seq;
  var from##3: int;
  var to##3: int;
  var $rhs##8: int;
  var $rhs##9: int;
  var s##4: Seq;
  var from##4: int;
  var to##4: int;
  var $rhs##10: int;
  var $rhs##11: int;
  var s##5: Seq;
  var from##5: int;
  var to##5: int;
  var $rhs##12: int;
  var $rhs##13: int;
  var s##6: Seq;
  var from##6: int;
  var to##6: int;
  var $rhs##14: int;
  var $rhs##15: int;
  var s##7: Seq;
  var from##7: int;
  var to##7: int;

    // AddMethodImpl: AltControlFlow, Impl$$_module.__default.AltControlFlow
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(130,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(29))), 
                          $Box(LitInt(34))), 
                        $Box(LitInt(35))), 
                      $Box(LitInt(36))), 
                    $Box(LitInt(59))), 
                  $Box(LitInt(104))), 
                $Box(LitInt(106))), 
              $Box(LitInt(107))), 
            $Box(LitInt(107))), 
          $Box(LitInt(108))), 
        $Box(LitInt(2700))));
    havoc lo#0, hi#0, Lo#0, Hi#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(133,22)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##0 := LitInt(3000);
    call {:id "id224"} $rhs##0, $rhs##1 := Call$$_module.__default.FindRange(s##0, from##0, to##0);
    // TrCallStmt: After ProcessCallStmt
    lo#0 := $rhs##0;
    hi#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(134,22)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##1 := LitInt(35);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##1 := LitInt(107);
    call {:id "id227"} $rhs##2, $rhs##3 := Call$$_module.__default.FindRange(s##1, from##1, to##1);
    // TrCallStmt: After ProcessCallStmt
    Lo#0 := $rhs##2;
    Hi#0 := $rhs##3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(135,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(137,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##2 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##2 := LitInt(3000);
    call {:id "id230"} $rhs##4, $rhs##5 := Call$$_module.__default.FindRangeIf(s##2, from##2, to##2);
    // TrCallStmt: After ProcessCallStmt
    lo#0 := $rhs##4;
    hi#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(138,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##3 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##3 := LitInt(35);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##3 := LitInt(107);
    call {:id "id233"} $rhs##6, $rhs##7 := Call$$_module.__default.FindRangeIf(s##3, from##3, to##3);
    // TrCallStmt: After ProcessCallStmt
    Lo#0 := $rhs##6;
    Hi#0 := $rhs##7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(139,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(141,34)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##4 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##4 := LitInt(3000);
    call {:id "id236"} $rhs##8, $rhs##9 := Call$$_module.__default.FindRangeBindingGuard(s##4, from##4, to##4);
    // TrCallStmt: After ProcessCallStmt
    lo#0 := $rhs##8;
    hi#0 := $rhs##9;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(142,34)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##5 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##5 := LitInt(35);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##5 := LitInt(107);
    call {:id "id239"} $rhs##10, $rhs##11 := Call$$_module.__default.FindRangeBindingGuard(s##5, from##5, to##5);
    // TrCallStmt: After ProcessCallStmt
    Lo#0 := $rhs##10;
    Hi#0 := $rhs##11;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(143,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(145,37)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##6 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##6 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##6 := LitInt(3000);
    call {:id "id242"} $rhs##12, $rhs##13 := Call$$_module.__default.FindRangeBindingGuardAlt(s##6, from##6, to##6);
    // TrCallStmt: After ProcessCallStmt
    lo#0 := $rhs##12;
    hi#0 := $rhs##13;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(146,37)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##7 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    from##7 := LitInt(35);
    assume true;
    // ProcessCallStmt: CheckSubrange
    to##7 := LitInt(107);
    call {:id "id245"} $rhs##14, $rhs##15 := Call$$_module.__default.FindRangeBindingGuardAlt(s##7, from##7, to##7);
    // TrCallStmt: After ProcessCallStmt
    Lo#0 := $rhs##14;
    Hi#0 := $rhs##15;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(147,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "FindRange (well-formedness)"} CheckWellFormed$$_module.__default.FindRange(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRange (well-formedness)"} CheckWellFormed$$_module.__default.FindRange(s#0: Seq, from#0: int, to#0: int) returns (lo#0: int, hi#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var i#2: int;


    // AddMethodImpl: FindRange, CheckWellFormed$$_module.__default.FindRange
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        assume {:id "id248"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id249"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id250"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id251"} $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id252"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id253"} (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
    assume {:id "id254"} from#0 <= to#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc lo#0, hi#0;
    if (LitInt(0) <= lo#0)
    {
    }

    if (LitInt(0) <= lo#0 && lo#0 <= hi#0)
    {
    }

    assume {:id "id255"} LitInt(0) <= lo#0 && lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
    havoc i#2;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        assume {:id "id256"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id257"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        if (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int)
        {
            assert {:id "id258"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        }

        if (lo#0 <= i#2)
        {
        }

        assume {:id "id259"} from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
             && $Unbox(Seq#Index(s#0, i#2)): int < to#0
           <==> lo#0 <= i#2 && i#2 < hi#0;
    }
    else
    {
        assume {:id "id260"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0)
           ==> (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
               && $Unbox(Seq#Index(s#0, i#2)): int < to#0
             <==> lo#0 <= i#2 && i#2 < hi#0);
    }

    assume {:id "id261"} (forall i#3: int :: 
      { $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
         ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
             && $Unbox(Seq#Index(s#0, i#3)): int < to#0
           <==> lo#0 <= i#3 && i#3 < hi#0));
}



procedure {:verboseName "FindRange (call)"} Call$$_module.__default.FindRange(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  // user-defined preconditions
  requires {:id "id262"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id263"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id264"} LitInt(0) <= lo#0;
  ensures {:id "id265"} lo#0 <= hi#0;
  ensures {:id "id266"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id267"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindRange (correctness)"} Impl$$_module.__default.FindRange(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id268"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id269"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id270"} LitInt(0) <= lo#0;
  ensures {:id "id271"} lo#0 <= hi#0;
  ensures {:id "id272"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id273"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRange (correctness)"} Impl$$_module.__default.FindRange(s#0: Seq, from#0: int, to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#4: int;
  var i#6: int;
  var $decr$loop#00: int;

    // AddMethodImpl: FindRange, Impl$$_module.__default.FindRange
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(156,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := Seq#Length(s#0);
    lo#0 := $rhs#0;
    hi#0 := $rhs#1;
    // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(157,3)
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := hi#0 - lo#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id279"} $w$loop#0 ==> lo#0 <= hi#0;
      invariant {:id "id280"} $w$loop#0 ==> hi#0 <= Seq#Length(s#0);
      free invariant true;
      invariant {:id "id283"} $w$loop#0
         ==> (forall i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
      free invariant true;
      invariant {:id "id286"} $w$loop#0
         ==> (forall i#7: int :: 
          { $Unbox(Seq#Index(s#0, i#7)): int } 
          hi#0 <= i#7 && i#7 < Seq#Length(s#0)
             ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
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
      free invariant hi#0 - lo#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (lo#0 <= hi#0)
            {
            }

            assume true;
            assume {:id "id278"} lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
            // Begin Comprehension WF check
            havoc i#4;
            if (true)
            {
                if (LitInt(0) <= i#4)
                {
                }

                if (LitInt(0) <= i#4 && i#4 < lo#0)
                {
                    assert {:id "id281"} {:subsumption 0} 0 <= i#4 && i#4 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id282"} (forall i#5: int :: 
              { $Unbox(Seq#Index(s#0, i#5)): int } 
              LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
            // Begin Comprehension WF check
            havoc i#6;
            if (true)
            {
                if (hi#0 <= i#6)
                {
                }

                if (hi#0 <= i#6 && i#6 < Seq#Length(s#0))
                {
                    assert {:id "id284"} {:subsumption 0} 0 <= i#6 && i#6 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id285"} (forall i#7: int :: 
              { $Unbox(Seq#Index(s#0, i#7)): int } 
              hi#0 <= i#7 && i#7 < Seq#Length(s#0)
                 ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := hi#0 - lo#0;
        if (*)
        {
            if (lo#0 < Seq#Length(s#0))
            {
                assert {:id "id290"} 0 <= lo#0 && lo#0 < Seq#Length(s#0);
            }

            assume true;
            assume {:id "id291"} lo#0 < Seq#Length(s#0) && $Unbox(Seq#Index(s#0, lo#0)): int < from#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(164,8)
            assume true;
            assume true;
            lo#0 := lo#0 + 1;
        }
        else if (*)
        {
            if (0 < hi#0)
            {
                assert {:id "id287"} 0 <= hi#0 - 1 && hi#0 - 1 < Seq#Length(s#0);
            }

            assume true;
            assume {:id "id288"} 0 < hi#0 && to#0 <= $Unbox(Seq#Index(s#0, hi#0 - 1)): int;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(166,8)
            assume true;
            assume true;
            hi#0 := hi#0 - 1;
        }
        else
        {
            assume true;
            assume true;
            assume !
              (lo#0 < Seq#Length(s#0)
               && $Unbox(Seq#Index(s#0, lo#0)): int < from#0)
               && !
              (0 < hi#0
               && to#0 <= $Unbox(Seq#Index(s#0, hi#0 - 1)): int);
            break;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(157,3)
        assert {:id "id293"} 0 <= $decr$loop#00 || hi#0 - lo#0 == $decr$loop#00;
        assert {:id "id294"} hi#0 - lo#0 < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "FindRangeIf (well-formedness)"} CheckWellFormed$$_module.__default.FindRangeIf(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRangeIf (well-formedness)"} CheckWellFormed$$_module.__default.FindRangeIf(s#0: Seq, from#0: int, to#0: int) returns (lo#0: int, hi#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var i#2: int;


    // AddMethodImpl: FindRangeIf, CheckWellFormed$$_module.__default.FindRangeIf
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        assume {:id "id295"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id296"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id297"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id298"} $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id299"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id300"} (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
    assume {:id "id301"} from#0 <= to#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc lo#0, hi#0;
    if (LitInt(0) <= lo#0)
    {
    }

    if (LitInt(0) <= lo#0 && lo#0 <= hi#0)
    {
    }

    assume {:id "id302"} LitInt(0) <= lo#0 && lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
    havoc i#2;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        assume {:id "id303"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id304"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        if (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int)
        {
            assert {:id "id305"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        }

        if (lo#0 <= i#2)
        {
        }

        assume {:id "id306"} from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
             && $Unbox(Seq#Index(s#0, i#2)): int < to#0
           <==> lo#0 <= i#2 && i#2 < hi#0;
    }
    else
    {
        assume {:id "id307"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0)
           ==> (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
               && $Unbox(Seq#Index(s#0, i#2)): int < to#0
             <==> lo#0 <= i#2 && i#2 < hi#0);
    }

    assume {:id "id308"} (forall i#3: int :: 
      { $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
         ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
             && $Unbox(Seq#Index(s#0, i#3)): int < to#0
           <==> lo#0 <= i#3 && i#3 < hi#0));
}



procedure {:verboseName "FindRangeIf (call)"} Call$$_module.__default.FindRangeIf(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  // user-defined preconditions
  requires {:id "id309"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id310"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id311"} LitInt(0) <= lo#0;
  ensures {:id "id312"} lo#0 <= hi#0;
  ensures {:id "id313"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id314"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindRangeIf (correctness)"} Impl$$_module.__default.FindRangeIf(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id315"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id316"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id317"} LitInt(0) <= lo#0;
  ensures {:id "id318"} lo#0 <= hi#0;
  ensures {:id "id319"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id320"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRangeIf (correctness)"} Impl$$_module.__default.FindRangeIf(s#0: Seq, from#0: int, to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#4: int;
  var i#6: int;
  var $decr$loop#00: int;

    // AddMethodImpl: FindRangeIf, Impl$$_module.__default.FindRangeIf
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(176,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := Seq#Length(s#0);
    lo#0 := $rhs#0;
    hi#0 := $rhs#1;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(177,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := hi#0 - lo#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id326"} $w$loop#0 ==> lo#0 <= hi#0;
      invariant {:id "id327"} $w$loop#0 ==> hi#0 <= Seq#Length(s#0);
      free invariant true;
      invariant {:id "id330"} $w$loop#0
         ==> (forall i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
      free invariant true;
      invariant {:id "id333"} $w$loop#0
         ==> (forall i#7: int :: 
          { $Unbox(Seq#Index(s#0, i#7)): int } 
          hi#0 <= i#7 && i#7 < Seq#Length(s#0)
             ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
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
      free invariant hi#0 - lo#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (lo#0 <= hi#0)
            {
            }

            assume true;
            assume {:id "id325"} lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
            // Begin Comprehension WF check
            havoc i#4;
            if (true)
            {
                if (LitInt(0) <= i#4)
                {
                }

                if (LitInt(0) <= i#4 && i#4 < lo#0)
                {
                    assert {:id "id328"} {:subsumption 0} 0 <= i#4 && i#4 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id329"} (forall i#5: int :: 
              { $Unbox(Seq#Index(s#0, i#5)): int } 
              LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
            // Begin Comprehension WF check
            havoc i#6;
            if (true)
            {
                if (hi#0 <= i#6)
                {
                }

                if (hi#0 <= i#6 && i#6 < Seq#Length(s#0))
                {
                    assert {:id "id331"} {:subsumption 0} 0 <= i#6 && i#6 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id332"} (forall i#7: int :: 
              { $Unbox(Seq#Index(s#0, i#7)): int } 
              hi#0 <= i#7 && i#7 < Seq#Length(s#0)
                 ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
            assume true;
            assume false;
        }

        assume true;
        if (hi#0 <= lo#0)
        {
            break;
        }

        $decr$loop#00 := hi#0 - lo#0;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(183,5)
        if (*)
        {
            assert {:id "id341"} 0 <= lo#0 && lo#0 < Seq#Length(s#0);
            assume true;
            assume {:id "id342"} $Unbox(Seq#Index(s#0, lo#0)): int < from#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(185,10)
            assume true;
            assume true;
            lo#0 := lo#0 + 1;
        }
        else if (*)
        {
            assert {:id "id338"} 0 <= hi#0 - 1 && hi#0 - 1 < Seq#Length(s#0);
            assume true;
            assume {:id "id339"} to#0 <= $Unbox(Seq#Index(s#0, hi#0 - 1)): int;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(187,10)
            assume true;
            assume true;
            hi#0 := hi#0 - 1;
        }
        else if (*)
        {
            assert {:id "id335"} 0 <= lo#0 && lo#0 < Seq#Length(s#0);
            if (from#0 <= $Unbox(Seq#Index(s#0, lo#0)): int)
            {
                assert {:id "id336"} 0 <= hi#0 - 1 && hi#0 - 1 < Seq#Length(s#0);
            }

            assume true;
            assume {:id "id337"} from#0 <= $Unbox(Seq#Index(s#0, lo#0)): int
               && $Unbox(Seq#Index(s#0, hi#0 - 1)): int < to#0;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(189,7)
            goto after_0;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume from#0 <= $Unbox(Seq#Index(s#0, lo#0)): int
               && $Unbox(Seq#Index(s#0, hi#0 - 1)): int < to#0
               && !
              (from#0 <= $Unbox(Seq#Index(s#0, lo#0)): int
               && $Unbox(Seq#Index(s#0, hi#0 - 1)): int < to#0);
            assert {:id "id334"} false;
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(177,3)
        assert {:id "id344"} 0 <= $decr$loop#00 || hi#0 - lo#0 == $decr$loop#00;
        assert {:id "id345"} hi#0 - lo#0 < $decr$loop#00;
        assume true;
    }

  after_0:
}



procedure {:verboseName "FindRangeBindingGuard (well-formedness)"} CheckWellFormed$$_module.__default.FindRangeBindingGuard(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRangeBindingGuard (well-formedness)"} CheckWellFormed$$_module.__default.FindRangeBindingGuard(s#0: Seq, from#0: int, to#0: int) returns (lo#0: int, hi#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var i#2: int;


    // AddMethodImpl: FindRangeBindingGuard, CheckWellFormed$$_module.__default.FindRangeBindingGuard
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        assume {:id "id346"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id347"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id348"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id349"} $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id350"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id351"} (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
    assume {:id "id352"} from#0 <= to#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc lo#0, hi#0;
    if (LitInt(0) <= lo#0)
    {
    }

    if (LitInt(0) <= lo#0 && lo#0 <= hi#0)
    {
    }

    assume {:id "id353"} LitInt(0) <= lo#0 && lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
    havoc i#2;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        assume {:id "id354"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id355"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        if (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int)
        {
            assert {:id "id356"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        }

        if (lo#0 <= i#2)
        {
        }

        assume {:id "id357"} from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
             && $Unbox(Seq#Index(s#0, i#2)): int < to#0
           <==> lo#0 <= i#2 && i#2 < hi#0;
    }
    else
    {
        assume {:id "id358"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0)
           ==> (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
               && $Unbox(Seq#Index(s#0, i#2)): int < to#0
             <==> lo#0 <= i#2 && i#2 < hi#0);
    }

    assume {:id "id359"} (forall i#3: int :: 
      { $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
         ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
             && $Unbox(Seq#Index(s#0, i#3)): int < to#0
           <==> lo#0 <= i#3 && i#3 < hi#0));
}



procedure {:verboseName "FindRangeBindingGuard (call)"} Call$$_module.__default.FindRangeBindingGuard(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  // user-defined preconditions
  requires {:id "id360"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id361"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id362"} LitInt(0) <= lo#0;
  ensures {:id "id363"} lo#0 <= hi#0;
  ensures {:id "id364"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id365"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindRangeBindingGuard (correctness)"} Impl$$_module.__default.FindRangeBindingGuard(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id366"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id367"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id368"} LitInt(0) <= lo#0;
  ensures {:id "id369"} lo#0 <= hi#0;
  ensures {:id "id370"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id371"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRangeBindingGuard (correctness)"} Impl$$_module.__default.FindRangeBindingGuard(s#0: Seq, from#0: int, to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#4: int;
  var i#6: int;
  var $decr$loop#00: int;
  var eg$j#0_0: int;
  var j#0_0_0: int;
  var eg$j#0_2_0: int;
  var j#0_2_0_0: int;

    // AddMethodImpl: FindRangeBindingGuard, Impl$$_module.__default.FindRangeBindingGuard
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(199,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := Seq#Length(s#0);
    lo#0 := $rhs#0;
    hi#0 := $rhs#1;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(200,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := hi#0 - lo#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id377"} $w$loop#0 ==> lo#0 <= hi#0;
      invariant {:id "id378"} $w$loop#0 ==> hi#0 <= Seq#Length(s#0);
      free invariant true;
      invariant {:id "id381"} $w$loop#0
         ==> (forall i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
      free invariant true;
      invariant {:id "id384"} $w$loop#0
         ==> (forall i#7: int :: 
          { $Unbox(Seq#Index(s#0, i#7)): int } 
          hi#0 <= i#7 && i#7 < Seq#Length(s#0)
             ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
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
      free invariant hi#0 - lo#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (lo#0 <= hi#0)
            {
            }

            assume true;
            assume {:id "id376"} lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
            // Begin Comprehension WF check
            havoc i#4;
            if (true)
            {
                if (LitInt(0) <= i#4)
                {
                }

                if (LitInt(0) <= i#4 && i#4 < lo#0)
                {
                    assert {:id "id379"} {:subsumption 0} 0 <= i#4 && i#4 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id380"} (forall i#5: int :: 
              { $Unbox(Seq#Index(s#0, i#5)): int } 
              LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
            // Begin Comprehension WF check
            havoc i#6;
            if (true)
            {
                if (hi#0 <= i#6)
                {
                }

                if (hi#0 <= i#6 && i#6 < Seq#Length(s#0))
                {
                    assert {:id "id382"} {:subsumption 0} 0 <= i#6 && i#6 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id383"} (forall i#7: int :: 
              { $Unbox(Seq#Index(s#0, i#7)): int } 
              hi#0 <= i#7 && i#7 < Seq#Length(s#0)
                 ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
            assume true;
            assume false;
        }

        assume true;
        if (hi#0 <= lo#0)
        {
            break;
        }

        $decr$loop#00 := hi#0 - lo#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(206,5)
        // Begin Comprehension WF check
        havoc eg$j#0_0;
        if (true)
        {
            if (lo#0 <= eg$j#0_0)
            {
            }

            if (lo#0 <= eg$j#0_0 && eg$j#0_0 < Seq#Length(s#0))
            {
                assert {:id "id385"} 0 <= eg$j#0_0 && eg$j#0_0 < Seq#Length(s#0);
            }
        }

        // End Comprehension WF check
        assume true;
        havoc j#0_0_0;
        if (*)
        {
            assume lo#0 <= j#0_0_0
               && j#0_0_0 < Seq#Length(s#0)
               && $Unbox(Seq#Index(s#0, j#0_0_0)): int < from#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(207,10)
            assume true;
            assume true;
            lo#0 := j#0_0_0 + 1;
        }
        else
        {
            assume {:id "id387"} !(exists eg$j#0_1: int :: 
              { $Unbox(Seq#Index(s#0, eg$j#0_1)): int } 
              lo#0 <= eg$j#0_1
                 && eg$j#0_1 < Seq#Length(s#0)
                 && $Unbox(Seq#Index(s#0, eg$j#0_1)): int < from#0);
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(208,12)
            // Begin Comprehension WF check
            havoc eg$j#0_2_0;
            if (true)
            {
                if (LitInt(0) <= eg$j#0_2_0)
                {
                }

                if (LitInt(0) <= eg$j#0_2_0 && eg$j#0_2_0 < hi#0)
                {
                    assert {:id "id388"} 0 <= eg$j#0_2_0 && eg$j#0_2_0 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            havoc j#0_2_0_0;
            if (*)
            {
                assume LitInt(0) <= j#0_2_0_0
                   && j#0_2_0_0 < hi#0
                   && to#0 <= $Unbox(Seq#Index(s#0, j#0_2_0_0)): int;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(209,10)
                assume true;
                assume true;
                hi#0 := j#0_2_0_0;
            }
            else
            {
                assume {:id "id390"} !(exists eg$j#0_2_1: int :: 
                  { $Unbox(Seq#Index(s#0, eg$j#0_2_1)): int } 
                  LitInt(0) <= eg$j#0_2_1
                     && eg$j#0_2_1 < hi#0
                     && to#0 <= $Unbox(Seq#Index(s#0, eg$j#0_2_1)): int);
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(211,7)
                goto after_0;
            }
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(200,3)
        assert {:id "id391"} 0 <= $decr$loop#00 || hi#0 - lo#0 == $decr$loop#00;
        assert {:id "id392"} hi#0 - lo#0 < $decr$loop#00;
        assume true;
    }

  after_0:
}



procedure {:verboseName "FindRangeBindingGuardAlt (well-formedness)"} CheckWellFormed$$_module.__default.FindRangeBindingGuardAlt(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRangeBindingGuardAlt (well-formedness)"} CheckWellFormed$$_module.__default.FindRangeBindingGuardAlt(s#0: Seq, from#0: int, to#0: int) returns (lo#0: int, hi#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var i#2: int;


    // AddMethodImpl: FindRangeBindingGuardAlt, CheckWellFormed$$_module.__default.FindRangeBindingGuardAlt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        assume {:id "id393"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id394"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id395"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id396"} $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id397"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id398"} (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
    assume {:id "id399"} from#0 <= to#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc lo#0, hi#0;
    if (LitInt(0) <= lo#0)
    {
    }

    if (LitInt(0) <= lo#0 && lo#0 <= hi#0)
    {
    }

    assume {:id "id400"} LitInt(0) <= lo#0 && lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
    havoc i#2;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        assume {:id "id401"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id402"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        if (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int)
        {
            assert {:id "id403"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        }

        if (lo#0 <= i#2)
        {
        }

        assume {:id "id404"} from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
             && $Unbox(Seq#Index(s#0, i#2)): int < to#0
           <==> lo#0 <= i#2 && i#2 < hi#0;
    }
    else
    {
        assume {:id "id405"} LitInt(0) <= i#2 && i#2 < Seq#Length(s#0)
           ==> (from#0 <= $Unbox(Seq#Index(s#0, i#2)): int
               && $Unbox(Seq#Index(s#0, i#2)): int < to#0
             <==> lo#0 <= i#2 && i#2 < hi#0);
    }

    assume {:id "id406"} (forall i#3: int :: 
      { $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
         ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
             && $Unbox(Seq#Index(s#0, i#3)): int < to#0
           <==> lo#0 <= i#3 && i#3 < hi#0));
}



procedure {:verboseName "FindRangeBindingGuardAlt (call)"} Call$$_module.__default.FindRangeBindingGuardAlt(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int);
  // user-defined preconditions
  requires {:id "id407"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id408"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id409"} LitInt(0) <= lo#0;
  ensures {:id "id410"} lo#0 <= hi#0;
  ensures {:id "id411"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id412"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindRangeBindingGuardAlt (correctness)"} Impl$$_module.__default.FindRangeBindingGuardAlt(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    from#0: int, 
    to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id413"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#1)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  requires {:id "id414"} from#0 <= to#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id415"} LitInt(0) <= lo#0;
  ensures {:id "id416"} lo#0 <= hi#0;
  ensures {:id "id417"} hi#0 <= Seq#Length(s#0);
  free ensures true;
  ensures {:id "id418"} (forall i#3: int :: 
    { $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
       ==> (from#0 <= $Unbox(Seq#Index(s#0, i#3)): int
           && $Unbox(Seq#Index(s#0, i#3)): int < to#0
         <==> lo#0 <= i#3 && i#3 < hi#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindRangeBindingGuardAlt (correctness)"} Impl$$_module.__default.FindRangeBindingGuardAlt(s#0: Seq, from#0: int, to#0: int)
   returns (lo#0: int, hi#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#4: int;
  var i#6: int;
  var $decr$loop#00: int;
  var j#0_0_0: int;
  var eg$j#0_1_0: int;
  var j#0_1_0: int;
  var eg$j#0_2_0: int;
  var j#0_2_0: int;

    // AddMethodImpl: FindRangeBindingGuardAlt, Impl$$_module.__default.FindRangeBindingGuardAlt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(222,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := Seq#Length(s#0);
    lo#0 := $rhs#0;
    hi#0 := $rhs#1;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(223,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := hi#0 - lo#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id424"} $w$loop#0 ==> lo#0 <= hi#0;
      invariant {:id "id425"} $w$loop#0 ==> hi#0 <= Seq#Length(s#0);
      free invariant true;
      invariant {:id "id428"} $w$loop#0
         ==> (forall i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
      free invariant true;
      invariant {:id "id431"} $w$loop#0
         ==> (forall i#7: int :: 
          { $Unbox(Seq#Index(s#0, i#7)): int } 
          hi#0 <= i#7 && i#7 < Seq#Length(s#0)
             ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
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
      free invariant hi#0 - lo#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (lo#0 <= hi#0)
            {
            }

            assume true;
            assume {:id "id423"} lo#0 <= hi#0 && hi#0 <= Seq#Length(s#0);
            // Begin Comprehension WF check
            havoc i#4;
            if (true)
            {
                if (LitInt(0) <= i#4)
                {
                }

                if (LitInt(0) <= i#4 && i#4 < lo#0)
                {
                    assert {:id "id426"} {:subsumption 0} 0 <= i#4 && i#4 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id427"} (forall i#5: int :: 
              { $Unbox(Seq#Index(s#0, i#5)): int } 
              LitInt(0) <= i#5 && i#5 < lo#0 ==> $Unbox(Seq#Index(s#0, i#5)): int < from#0);
            // Begin Comprehension WF check
            havoc i#6;
            if (true)
            {
                if (hi#0 <= i#6)
                {
                }

                if (hi#0 <= i#6 && i#6 < Seq#Length(s#0))
                {
                    assert {:id "id429"} {:subsumption 0} 0 <= i#6 && i#6 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id430"} (forall i#7: int :: 
              { $Unbox(Seq#Index(s#0, i#7)): int } 
              hi#0 <= i#7 && i#7 < Seq#Length(s#0)
                 ==> to#0 <= $Unbox(Seq#Index(s#0, i#7)): int);
            assume true;
            assume false;
        }

        assume true;
        if (hi#0 <= lo#0)
        {
            break;
        }

        $decr$loop#00 := hi#0 - lo#0;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(229,5)
        havoc j#0_1_0;
        havoc j#0_2_0;
        if (*)
        {
            // Begin Comprehension WF check
            havoc eg$j#0_2_0;
            if (true)
            {
                if (lo#0 <= eg$j#0_2_0)
                {
                }

                if (lo#0 <= eg$j#0_2_0 && eg$j#0_2_0 < Seq#Length(s#0))
                {
                    assert {:id "id438"} 0 <= eg$j#0_2_0 && eg$j#0_2_0 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume lo#0 <= j#0_2_0
               && j#0_2_0 < Seq#Length(s#0)
               && $Unbox(Seq#Index(s#0, j#0_2_0)): int < from#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(231,10)
            assume true;
            assume true;
            lo#0 := j#0_2_0 + 1;
        }
        else if (*)
        {
            // Begin Comprehension WF check
            havoc eg$j#0_1_0;
            if (true)
            {
                if (LitInt(0) <= eg$j#0_1_0)
                {
                }

                if (LitInt(0) <= eg$j#0_1_0 && eg$j#0_1_0 < hi#0)
                {
                    assert {:id "id436"} 0 <= eg$j#0_1_0 && eg$j#0_1_0 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume LitInt(0) <= j#0_1_0
               && j#0_1_0 < hi#0
               && to#0 <= $Unbox(Seq#Index(s#0, j#0_1_0)): int;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(233,10)
            assume true;
            assume true;
            hi#0 := j#0_1_0;
        }
        else if (*)
        {
            // Begin Comprehension WF check
            havoc j#0_0_0;
            if (true)
            {
                if (lo#0 <= j#0_0_0)
                {
                }

                if (lo#0 <= j#0_0_0 && j#0_0_0 < hi#0)
                {
                    assert {:id "id433"} 0 <= j#0_0_0 && j#0_0_0 < Seq#Length(s#0);
                    if (from#0 <= $Unbox(Seq#Index(s#0, j#0_0_0)): int)
                    {
                        assert {:id "id434"} 0 <= j#0_0_0 && j#0_0_0 < Seq#Length(s#0);
                    }
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id435"} (forall j#0_0: int :: 
              { $Unbox(Seq#Index(s#0, j#0_0)): int } 
              (lo#0 <= j#0_0 && j#0_0 < hi#0 ==> from#0 <= $Unbox(Seq#Index(s#0, j#0_0)): int)
                 && (lo#0 <= j#0_0 && j#0_0 < hi#0 ==> $Unbox(Seq#Index(s#0, j#0_0)): int < to#0));
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(235,7)
            goto after_0;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume !(exists eg$j#0_0: int :: 
                lo#0 <= eg$j#0_0
                   && eg$j#0_0 < Seq#Length(s#0)
                   && $Unbox(Seq#Index(s#0, eg$j#0_0)): int < from#0)
               && !(exists eg$j#0_1: int :: 
                LitInt(0) <= eg$j#0_1
                   && eg$j#0_1 < hi#0
                   && to#0 <= $Unbox(Seq#Index(s#0, eg$j#0_1)): int)
               && !(forall j#0_0: int :: 
                { $Unbox(Seq#Index(s#0, j#0_0)): int } 
                (lo#0 <= j#0_0 && j#0_0 < hi#0 ==> from#0 <= $Unbox(Seq#Index(s#0, j#0_0)): int)
                   && (lo#0 <= j#0_0 && j#0_0 < hi#0 ==> $Unbox(Seq#Index(s#0, j#0_0)): int < to#0));
            assert {:id "id432"} false;
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(223,3)
        assert {:id "id440"} 0 <= $decr$loop#00 || hi#0 - lo#0 == $decr$loop#00;
        assert {:id "id441"} hi#0 - lo#0 < $decr$loop#00;
        assume true;
    }

  after_0:
}



procedure {:verboseName "Sequences (well-formedness)"} CheckWellFormed$$_module.__default.Sequences();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences (call)"} Call$$_module.__default.Sequences();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences (correctness)"} Impl$$_module.__default.Sequences() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences (correctness)"} Impl$$_module.__default.Sequences() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var four1s#0: Seq
     where $Is(four1s#0, TSeq(TInt)) && $IsAlloc(four1s#0, TSeq(TInt), $Heap);
  var twelve1s#0: Seq
     where $Is(twelve1s#0, TSeq(TInt)) && $IsAlloc(twelve1s#0, TSeq(TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var _v0#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var squares#0: Seq
     where $Is(squares#0, TSeq(TInt)) && $IsAlloc(squares#0, TSeq(TInt), $Heap);
  var $lambdaHeap#1: Heap;
  var i#0: int;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: int;
  var nats#0: Seq where $Is(nats#0, TSeq(TInt)) && $IsAlloc(nats#0, TSeq(TInt), $Heap);
  var $lambdaHeap#2: Heap;
  var i#1: int;
  var $_Frame#l2: [ref,Field]bool;
  var lambdaResult#2: int;

    // AddMethodImpl: Sequences, Impl$$_module.__default.Sequences
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(240,14)
    assume true;
    assume true;
    four1s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(1))), 
          $Box(LitInt(1))), 
        $Box(LitInt(1))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(241,16)
    assume true;
    assert {:id "id443"} 0 <= LitInt(12);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v0#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id444"} lambdaResult#0 == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id445"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
      0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < LitInt(12)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                Handle1((lambda $l#1#heap#0: Heap, $l#1#_v0#0: Box :: $Box(LitInt(1))), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v0#0: Box :: $IsBox($l#1#_v0#0, TInt)), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v0#0: Box :: 
                    SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#0#i0#0)));
    assume true;
    twelve1s#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(12), 
      Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
            Handle1((lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box :: $Box(LitInt(1))), 
              (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box :: $IsBox($l#0#_v0#0, TInt)), 
              (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box :: 
                SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(242,3)
    assume true;
    assert {:id "id447"} Seq#Equal(twelve1s#0, Seq#Append(Seq#Append(four1s#0, four1s#0), four1s#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(244,15)
    assume true;
    assert {:id "id448"} 0 <= LitInt(8);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc i#0;
        if (true)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id449"} lambdaResult#1 == Mul(i#0, i#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id450"} {:subsumption 0} (forall seqinit#1#i0#0: int :: 
      0 <= seqinit#1#i0#0 && seqinit#1#i0#0 < LitInt(8)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box(Mul($Unbox($l#4#i#0): int, $Unbox($l#4#i#0): int))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#1#i0#0)));
    assume true;
    squares#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(8), 
      Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
            Handle1((lambda $l#3#heap#0: Heap, $l#3#i#0: Box :: 
                $Box(Mul($Unbox($l#3#i#0): int, $Unbox($l#3#i#0): int))), 
              (lambda $l#3#heap#0: Heap, $l#3#i#0: Box :: $IsBox($l#3#i#0, TInt)), 
              (lambda $l#3#heap#0: Heap, $l#3#i#0: Box :: 
                SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(245,3)
    assume true;
    assert {:id "id452"} Seq#Length(squares#0) == LitInt(8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(246,3)
    assert {:id "id453"} {:subsumption 0} 0 <= LitInt(6) && LitInt(6) < Seq#Length(squares#0);
    assume true;
    assert {:id "id454"} $Unbox(Seq#Index(squares#0, LitInt(6))): int == LitInt(36);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(248,12)
    assume true;
    assert {:id "id455"} 0 <= LitInt(8);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#2;
        assume $IsGoodHeap($lambdaHeap#2);
        assume $Heap == $lambdaHeap#2 || $HeapSucc($Heap, $lambdaHeap#2);
        havoc i#1;
        if (true)
        {
            $_Frame#l2 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#2, $o, alloc)): bool ==> false);
            assume {:id "id456"} lambdaResult#2 == i#1;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#2, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id457"} {:subsumption 0} (forall seqinit#2#i0#0: int :: 
      0 <= seqinit#2#i0#0 && seqinit#2#i0#0 < LitInt(8)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
                Handle1((lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: $Box($Unbox($l#7#i#0): int)), 
                  (lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: $IsBox($l#7#i#0, TInt)), 
                  (lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#2#i0#0)));
    assume true;
    nats#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(8), 
      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box($Unbox($l#6#i#0): int)), 
              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(250,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(251,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(252,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(253,3)
    assume true;
    assume true;
}



procedure {:verboseName "SetComprehension (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension (call)"} Call$$_module.__default.SetComprehension();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension (correctness)"} Impl$$_module.__default.SetComprehension() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension (correctness)"} Impl$$_module.__default.SetComprehension() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: SetComprehension, Impl$$_module.__default.SetComprehension
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(261,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id459"} Call$$_module.__default.SetComprehension0();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(262,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id460"} Call$$_module.__default.SetComprehension1();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(263,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id461"} Call$$_module.__default.SetComprehension2();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(264,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id462"} Call$$_module.__default.SetComprehension3();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SetComprehension0 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension0();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension0 (call)"} Call$$_module.__default.SetComprehension0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension0 (correctness)"} Impl$$_module.__default.SetComprehension0() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ClassA() : Ty
uses {
// Tclass._module.ClassA Tag
axiom Tag(Tclass._module.ClassA()) == Tagclass._module.ClassA
   && TagFamily(Tclass._module.ClassA()) == tytagFamily$ClassA;
}

const unique Tagclass._module.ClassA: TyTag;

// Box/unbox axiom for Tclass._module.ClassA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassA()) } 
  $IsBox(bx, Tclass._module.ClassA())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassA()));

function Tclass._module.ClassB() : Ty
uses {
// Tclass._module.ClassB Tag
axiom Tag(Tclass._module.ClassB()) == Tagclass._module.ClassB
   && TagFamily(Tclass._module.ClassB()) == tytagFamily$ClassB;
}

const unique Tagclass._module.ClassB: TyTag;

// Box/unbox axiom for Tclass._module.ClassB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassB()) } 
  $IsBox(bx, Tclass._module.ClassB())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassB()));

function Tclass._module.ClassA?() : Ty
uses {
// Tclass._module.ClassA? Tag
axiom Tag(Tclass._module.ClassA?()) == Tagclass._module.ClassA?
   && TagFamily(Tclass._module.ClassA?()) == tytagFamily$ClassA;
}

const unique Tagclass._module.ClassA?: TyTag;

// Box/unbox axiom for Tclass._module.ClassA?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassA?()) } 
  $IsBox(bx, Tclass._module.ClassA?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassA?()));

function Tclass._module.ClassB?() : Ty
uses {
// Tclass._module.ClassB? Tag
axiom Tag(Tclass._module.ClassB?()) == Tagclass._module.ClassB?
   && TagFamily(Tclass._module.ClassB?()) == tytagFamily$ClassB;
axiom implements$_module.NothingInParticular(Tclass._module.ClassB?());
}

const unique Tagclass._module.ClassB?: TyTag;

// Box/unbox axiom for Tclass._module.ClassB?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassB?()) } 
  $IsBox(bx, Tclass._module.ClassB?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassB?()));

function Tclass._module.NothingInParticular() : Ty
uses {
// Tclass._module.NothingInParticular Tag
axiom Tag(Tclass._module.NothingInParticular())
     == Tagclass._module.NothingInParticular
   && TagFamily(Tclass._module.NothingInParticular())
     == tytagFamily$NothingInParticular;
}

const unique Tagclass._module.NothingInParticular: TyTag;

// Box/unbox axiom for Tclass._module.NothingInParticular
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NothingInParticular()) } 
  $IsBox(bx, Tclass._module.NothingInParticular())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NothingInParticular()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension0 (correctness)"} Impl$$_module.__default.SetComprehension0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.ClassA())
         && $IsAlloc(w#0, Tclass._module.ClassA(), $Heap);
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass._module.ClassA())
         && $IsAlloc(x#0, Tclass._module.ClassA(), $Heap);
  var defass#y#0: bool;
  var y#0: ref
     where defass#y#0
       ==> $Is(y#0, Tclass._module.ClassB())
         && $IsAlloc(y#0, Tclass._module.ClassB(), $Heap);
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass._module.ClassB())
         && $IsAlloc(z#0, Tclass._module.ClassB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.object()))
       && $IsAlloc(s#0, TSet(Tclass._System.object()), $Heap);
  var all#0: Set
     where $Is(all#0, TSet(Tclass._System.object()))
       && $IsAlloc(all#0, TSet(Tclass._System.object()), $Heap);
  var o#0: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.ClassA()))
       && $IsAlloc(aa#0, TSet(Tclass._module.ClassA()), $Heap);
  var o#2: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.ClassB()))
       && $IsAlloc(bb#0, TSet(Tclass._module.ClassB()), $Heap);
  var o#4: ref;
  var nn#0: Set
     where $Is(nn#0, TSet(Tclass._module.NothingInParticular()))
       && $IsAlloc(nn#0, TSet(Tclass._module.NothingInParticular()), $Heap);
  var o#6: ref;

    // AddMethodImpl: SetComprehension0, Impl$$_module.__default.SetComprehension0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(268,18)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    y#0 := $rhs#2;
    defass#y#0 := true;
    z#0 := $rhs#3;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(269,9)
    assume true;
    assert {:id "id471"} defass#w#0;
    assert {:id "id472"} defass#x#0;
    assert {:id "id473"} defass#y#0;
    assert {:id "id474"} defass#z#0;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(w#0)), $Box(x#0)), $Box(y#0)), 
      $Box(z#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(271,11)
    assume true;
    // Begin Comprehension WF check
    havoc o#0;
    if ($Is(o#0, Tclass._System.object())
       && $IsAlloc(o#0, Tclass._System.object(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    all#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.object()) && Set#IsMember(s#0, $y#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(273,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#2;
    if ($Is(o#2, Tclass._module.ClassA())
       && $IsAlloc(o#2, Tclass._module.ClassA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    aa#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._module.ClassA()) && Set#IsMember(s#0, $y#1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(275,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#4;
    if ($Is(o#4, Tclass._module.ClassB())
       && $IsAlloc(o#4, Tclass._module.ClassB(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := Set#FromBoogieMap((lambda $y#2: Box :: 
        $IsBox($y#2, Tclass._module.ClassB()) && Set#IsMember(s#0, $y#2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(277,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#6;
    if ($Is(o#6, Tclass._module.NothingInParticular())
       && $IsAlloc(o#6, Tclass._module.NothingInParticular(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#6)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    nn#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        $IsBox($y#3, Tclass._module.NothingInParticular()) && Set#IsMember(s#0, $y#3)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(279,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(280,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(281,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(282,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "SetComprehension1 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension1();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension1 (call)"} Call$$_module.__default.SetComprehension1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension1 (correctness)"} Impl$$_module.__default.SetComprehension1() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension1 (correctness)"} Impl$$_module.__default.SetComprehension1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.ClassA())
         && $IsAlloc(w#0, Tclass._module.ClassA(), $Heap);
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass._module.ClassA())
         && $IsAlloc(x#0, Tclass._module.ClassA(), $Heap);
  var defass#y#0: bool;
  var y#0: ref
     where defass#y#0
       ==> $Is(y#0, Tclass._module.ClassB())
         && $IsAlloc(y#0, Tclass._module.ClassB(), $Heap);
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass._module.ClassB())
         && $IsAlloc(z#0, Tclass._module.ClassB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.object?()))
       && $IsAlloc(s#0, TSet(Tclass._System.object?()), $Heap);
  var newtype$check#0: ref;
  var all#0: Set
     where $Is(all#0, TSet(Tclass._System.object()))
       && $IsAlloc(all#0, TSet(Tclass._System.object()), $Heap);
  var o#0: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.ClassA()))
       && $IsAlloc(aa#0, TSet(Tclass._module.ClassA()), $Heap);
  var o#2: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.ClassB()))
       && $IsAlloc(bb#0, TSet(Tclass._module.ClassB()), $Heap);
  var o#4: ref;
  var nn#0: Set
     where $Is(nn#0, TSet(Tclass._module.NothingInParticular()))
       && $IsAlloc(nn#0, TSet(Tclass._module.NothingInParticular()), $Heap);
  var o#6: ref;

    // AddMethodImpl: SetComprehension1, Impl$$_module.__default.SetComprehension1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(287,18)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    y#0 := $rhs#2;
    defass#y#0 := true;
    z#0 := $rhs#3;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(288,9)
    assume true;
    assert {:id "id488"} defass#w#0;
    assert {:id "id489"} defass#x#0;
    assert {:id "id490"} defass#y#0;
    assert {:id "id491"} defass#z#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(w#0)), $Box(x#0)), $Box(y#0)), 
        $Box(z#0)), 
      $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(290,11)
    assume true;
    // Begin Comprehension WF check
    havoc o#0;
    if ($Is(o#0, Tclass._System.object())
       && $IsAlloc(o#0, Tclass._System.object(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    all#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.object()) && Set#IsMember(s#0, $y#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(292,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#2;
    if ($Is(o#2, Tclass._module.ClassA())
       && $IsAlloc(o#2, Tclass._module.ClassA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    aa#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._module.ClassA()) && Set#IsMember(s#0, $y#1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(294,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#4;
    if ($Is(o#4, Tclass._module.ClassB())
       && $IsAlloc(o#4, Tclass._module.ClassB(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := Set#FromBoogieMap((lambda $y#2: Box :: 
        $IsBox($y#2, Tclass._module.ClassB()) && Set#IsMember(s#0, $y#2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(296,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#6;
    if ($Is(o#6, Tclass._module.NothingInParticular())
       && $IsAlloc(o#6, Tclass._module.NothingInParticular(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#6)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    nn#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        $IsBox($y#3, Tclass._module.NothingInParticular()) && Set#IsMember(s#0, $y#3)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(298,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(299,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(300,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(301,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "SetComprehension2 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension2();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension2 (call)"} Call$$_module.__default.SetComprehension2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension2 (correctness)"} Impl$$_module.__default.SetComprehension2() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NothingInParticular?() : Ty
uses {
// Tclass._module.NothingInParticular? Tag
axiom Tag(Tclass._module.NothingInParticular?())
     == Tagclass._module.NothingInParticular?
   && TagFamily(Tclass._module.NothingInParticular?())
     == tytagFamily$NothingInParticular;
}

const unique Tagclass._module.NothingInParticular?: TyTag;

// Box/unbox axiom for Tclass._module.NothingInParticular?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NothingInParticular?()) } 
  $IsBox(bx, Tclass._module.NothingInParticular?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NothingInParticular?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension2 (correctness)"} Impl$$_module.__default.SetComprehension2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.ClassA())
         && $IsAlloc(w#0, Tclass._module.ClassA(), $Heap);
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass._module.ClassA())
         && $IsAlloc(x#0, Tclass._module.ClassA(), $Heap);
  var defass#y#0: bool;
  var y#0: ref
     where defass#y#0
       ==> $Is(y#0, Tclass._module.ClassB())
         && $IsAlloc(y#0, Tclass._module.ClassB(), $Heap);
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass._module.ClassB())
         && $IsAlloc(z#0, Tclass._module.ClassB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.object?()))
       && $IsAlloc(s#0, TSet(Tclass._System.object?()), $Heap);
  var newtype$check#0: ref;
  var all#0: Set
     where $Is(all#0, TSet(Tclass._System.object?()))
       && $IsAlloc(all#0, TSet(Tclass._System.object?()), $Heap);
  var o#0: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.ClassA?()))
       && $IsAlloc(aa#0, TSet(Tclass._module.ClassA?()), $Heap);
  var o#2: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.ClassB?()))
       && $IsAlloc(bb#0, TSet(Tclass._module.ClassB?()), $Heap);
  var o#4: ref;
  var nn#0: Set
     where $Is(nn#0, TSet(Tclass._module.NothingInParticular?()))
       && $IsAlloc(nn#0, TSet(Tclass._module.NothingInParticular?()), $Heap);
  var o#6: ref;

    // AddMethodImpl: SetComprehension2, Impl$$_module.__default.SetComprehension2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(306,18)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    y#0 := $rhs#2;
    defass#y#0 := true;
    z#0 := $rhs#3;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(307,9)
    assume true;
    assert {:id "id505"} defass#w#0;
    assert {:id "id506"} defass#x#0;
    assert {:id "id507"} defass#y#0;
    assert {:id "id508"} defass#z#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(w#0)), $Box(x#0)), $Box(y#0)), 
        $Box(z#0)), 
      $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(309,11)
    assume true;
    // Begin Comprehension WF check
    havoc o#0;
    if ($Is(o#0, Tclass._System.object?())
       && $IsAlloc(o#0, Tclass._System.object?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    all#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.object?()) && Set#IsMember(s#0, $y#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(311,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#2;
    if ($Is(o#2, Tclass._module.ClassA?())
       && $IsAlloc(o#2, Tclass._module.ClassA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    aa#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._module.ClassA?()) && Set#IsMember(s#0, $y#1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(313,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#4;
    if ($Is(o#4, Tclass._module.ClassB?())
       && $IsAlloc(o#4, Tclass._module.ClassB?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := Set#FromBoogieMap((lambda $y#2: Box :: 
        $IsBox($y#2, Tclass._module.ClassB?()) && Set#IsMember(s#0, $y#2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(315,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#6;
    if ($Is(o#6, Tclass._module.NothingInParticular?())
       && $IsAlloc(o#6, Tclass._module.NothingInParticular?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#6)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    nn#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        $IsBox($y#3, Tclass._module.NothingInParticular?()) && Set#IsMember(s#0, $y#3)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(317,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(318,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(319,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(320,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



// function declaration for _module._default.True
function _module.__default.True(_module._default.True$G: Ty, g#0: Box) : bool
uses {
// definition axiom for _module.__default.True (revealed)
axiom {:id "id514"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.True$G: Ty, g#0: Box :: 
    { _module.__default.True(_module._default.True$G, g#0) } 
    _module.__default.True#canCall(_module._default.True$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.True$G))
       ==> _module.__default.True(_module._default.True$G, g#0) == Lit(true));
// definition axiom for _module.__default.True for all literals (revealed)
axiom {:id "id515"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.True$G: Ty, g#0: Box :: 
    {:weight 3} { _module.__default.True(_module._default.True$G, Lit(g#0)) } 
    _module.__default.True#canCall(_module._default.True$G, Lit(g#0))
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.True$G))
       ==> _module.__default.True(_module._default.True$G, Lit(g#0)) == Lit(true));
}

function _module.__default.True#canCall(_module._default.True$G: Ty, g#0: Box) : bool;

function _module.__default.True#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.True
axiom (forall _module._default.True$G: Ty, g#0: Box :: 
  { _module.__default.True#requires(_module._default.True$G, g#0) } 
  $IsBox(g#0, _module._default.True$G)
     ==> _module.__default.True#requires(_module._default.True$G, g#0) == true);

procedure {:verboseName "True (well-formedness)"} CheckWellformed$$_module.__default.True(_module._default.True$G: Ty, g#0: Box where $IsBox(g#0, _module._default.True$G));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension3 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension3();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension3 (call)"} Call$$_module.__default.SetComprehension3();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension3 (correctness)"} Impl$$_module.__default.SetComprehension3() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Color() : Ty
uses {
// Tclass._module.Color Tag
axiom Tag(Tclass._module.Color()) == Tagclass._module.Color
   && TagFamily(Tclass._module.Color()) == tytagFamily$Color;
}

const unique Tagclass._module.Color: TyTag;

// Box/unbox axiom for Tclass._module.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Color()) } 
  $IsBox(bx, Tclass._module.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Color()));

procedure {:verboseName "Enumerations (well-formedness)"} CheckWellFormed$$_module.__default.Enumerations();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Enumerations (call)"} Call$$_module.__default.Enumerations();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Enumerations (correctness)"} Impl$$_module.__default.Enumerations() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CellA() : Ty
uses {
// Tclass._module.CellA Tag
axiom Tag(Tclass._module.CellA()) == Tagclass._module.CellA
   && TagFamily(Tclass._module.CellA()) == tytagFamily$CellA;
}

const unique Tagclass._module.CellA: TyTag;

// Box/unbox axiom for Tclass._module.CellA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellA()) } 
  $IsBox(bx, Tclass._module.CellA())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellA()));

function Tclass._module.CellB() : Ty
uses {
// Tclass._module.CellB Tag
axiom Tag(Tclass._module.CellB()) == Tagclass._module.CellB
   && TagFamily(Tclass._module.CellB()) == tytagFamily$CellB;
}

const unique Tagclass._module.CellB: TyTag;

// Box/unbox axiom for Tclass._module.CellB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellB()) } 
  $IsBox(bx, Tclass._module.CellB())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellB()));

function Tclass._module.CellA?() : Ty
uses {
// Tclass._module.CellA? Tag
axiom Tag(Tclass._module.CellA?()) == Tagclass._module.CellA?
   && TagFamily(Tclass._module.CellA?()) == tytagFamily$CellA;
axiom implements$_module.ICell(Tclass._module.CellA?());
}

const unique Tagclass._module.CellA?: TyTag;

// Box/unbox axiom for Tclass._module.CellA?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellA?()) } 
  $IsBox(bx, Tclass._module.CellA?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellA?()));

function Tclass._module.CellB?() : Ty
uses {
// Tclass._module.CellB? Tag
axiom Tag(Tclass._module.CellB?()) == Tagclass._module.CellB?
   && TagFamily(Tclass._module.CellB?()) == tytagFamily$CellB;
axiom implements$_module.ICell(Tclass._module.CellB?());
}

const unique Tagclass._module.CellB?: TyTag;

// Box/unbox axiom for Tclass._module.CellB?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellB?()) } 
  $IsBox(bx, Tclass._module.CellB?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellB?()));

function Tclass._module.ICell?() : Ty
uses {
// Tclass._module.ICell? Tag
axiom Tag(Tclass._module.ICell?()) == Tagclass._module.ICell?
   && TagFamily(Tclass._module.ICell?()) == tytagFamily$ICell;
}

const unique Tagclass._module.ICell?: TyTag;

// Box/unbox axiom for Tclass._module.ICell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ICell?()) } 
  $IsBox(bx, Tclass._module.ICell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ICell?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Enumerations (correctness)"} Impl$$_module.__default.Enumerations() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.CellA()) && $IsAlloc(c#0, Tclass._module.CellA(), $Heap);
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.CellA()) && $IsAlloc(d#0, Tclass._module.CellA(), $Heap);
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.CellB()) && $IsAlloc(e#0, Tclass._module.CellB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#3: int;
  var $rhs#4: int;
  var $rhs#5: int;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.ICell?()))
       && $IsAlloc(s#0, TSet(Tclass._module.ICell?()), $Heap);
  var newtype$check#0: ref;
  var a#0_0: ref;
  var a#0_1: ref;
  var $prevHeap: Heap;
  var a#1_0: ref;
  var a#1_1: ref;
  var $rhs#6: int;
  var defass#u#0: bool;
  var u#0: ref
     where defass#u#0
       ==> $Is(u#0, Tclass._module.CellA()) && $IsAlloc(u#0, Tclass._module.CellA(), $Heap);
  var u#1: ref;
  var $rhs#7: int;
  var r#0: Set
     where $Is(r#0, TSet(Tclass._module.CellA()))
       && $IsAlloc(r#0, TSet(Tclass._module.CellA()), $Heap);
  var a#0: ref;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.CellA(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.CellA(), TInt), $Heap);
  var a#2: ref;

    // AddMethodImpl: Enumerations, Impl$$_module.__default.Enumerations
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(349,15)
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    c#0 := $rhs#0;
    defass#c#0 := true;
    d#0 := $rhs#1;
    defass#d#0 := true;
    e#0 := $rhs#2;
    defass#e#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(350,26)
    assert {:id "id529"} defass#c#0;
    assert {:id "id530"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id531"} $_ModifiesFrame[$obj0, _module.ICell.data];
    assert {:id "id532"} defass#d#0;
    assert {:id "id533"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id534"} $_ModifiesFrame[$obj1, _module.ICell.data];
    assert {:id "id535"} defass#e#0;
    assert {:id "id536"} e#0 != null;
    assume true;
    $obj2 := e#0;
    assert {:id "id537"} $_ModifiesFrame[$obj2, _module.ICell.data];
    assume true;
    $rhs#3 := LitInt(4);
    assume true;
    $rhs#4 := LitInt(5);
    assume true;
    $rhs#5 := LitInt(1);
    assert {:id "id541"} d#0 != c#0 || $rhs#4 == $rhs#3;
    assert {:id "id542"} e#0 != c#0 || $rhs#5 == $rhs#3;
    assert {:id "id543"} e#0 != d#0 || $rhs#5 == $rhs#4;
    $Heap := update($Heap, $obj0, _module.ICell.data, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.ICell.data, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, _module.ICell.data, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(351,22)
    assume true;
    assert {:id "id547"} defass#c#0;
    assert {:id "id548"} defass#d#0;
    assert {:id "id549"} defass#e#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), $Box(d#0)), $Box(e#0)), 
      $Box(null));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(352,3)
    assert {:id "id551"} defass#c#0;
    assert {:id "id552"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id553"} defass#d#0;
    assert {:id "id554"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id555"} defass#e#0;
    assert {:id "id556"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(355,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#0_0;
        assume $Is(a#0_0, Tclass._module.CellA())
           && $IsAlloc(a#0_0, Tclass._module.CellA(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#0_0));
        assert {:id "id557"} {:subsumption 0} a#0_0 != null;
        assume true;
        assert {:id "id558"} $_ModifiesFrame[a#0_0, _module.ICell.data];
        assert {:id "id559"} defass#c#0;
        assert {:id "id560"} {:subsumption 0} c#0 != null;
        assert {:id "id561"} {:subsumption 0} a#0_0 != null;
        assume true;
        havoc a#0_1;
        assume $Is(a#0_1, Tclass._module.CellA())
           && $IsAlloc(a#0_1, Tclass._module.CellA(), $Heap);
        assume Set#IsMember(s#0, $Box(a#0_1));
        assume a#0_0 != a#0_1;
        assert {:id "id562"} a#0_0 != a#0_1
           || _module.ICell.data != _module.ICell.data
           || $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, a#0_0, _module.ICell.data)): int
               - 2
             == $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, a#0_1, _module.ICell.data)): int
               - 2;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#0_2: ref :: 
              $Is(a#0_2, Tclass._module.CellA())
                 && Set#IsMember(s#0, $Box(a#0_2))
                 && $o == a#0_2
                 && $f == _module.ICell.data));
        assume (forall a#inv#0_0: ref :: 
          { read($Heap, a#inv#0_0, _module.ICell.data) } 
          $Is(a#inv#0_0, Tclass._module.CellA())
               && 
              a#inv#0_0 != null
               && Set#IsMember(s#0, $Box(a#inv#0_0))
             ==> read($Heap, a#inv#0_0, _module.ICell.data)
               == $Box($Unbox(read($prevHeap, c#0, _module.ICell.data)): int
                     + $Unbox(read($prevHeap, a#inv#0_0, _module.ICell.data)): int
                   - 2));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(358,3)
    assert {:id "id563"} defass#c#0;
    assert {:id "id564"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id565"} defass#d#0;
    assert {:id "id566"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id567"} defass#e#0;
    assert {:id "id568"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(361,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#1_0;
        assume $Is(a#1_0, Tclass._module.CellA())
           && $IsAlloc(a#1_0, Tclass._module.CellA(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#1_0));
        assert {:id "id569"} {:subsumption 0} a#1_0 != null;
        assume true;
        assert {:id "id570"} $_ModifiesFrame[a#1_0, _module.ICell.data];
        assume true;
        havoc a#1_1;
        assume $Is(a#1_1, Tclass._module.CellA())
           && $IsAlloc(a#1_1, Tclass._module.CellA(), $Heap);
        assume Set#IsMember(s#0, $Box(a#1_1));
        assume a#1_0 != a#1_1;
        assert {:id "id571"} a#1_0 != a#1_1
           || _module.ICell.data != _module.ICell.data
           || LitInt(2) == LitInt(2);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#1_2: ref :: 
              $Is(a#1_2, Tclass._module.CellA())
                 && Set#IsMember(s#0, $Box(a#1_2))
                 && $o == a#1_2
                 && $f == _module.ICell.data));
        assume (forall a#inv#1_0: ref :: 
          { read($Heap, a#inv#1_0, _module.ICell.data) } 
          $Is(a#inv#1_0, Tclass._module.CellA())
               && 
              a#inv#1_0 != null
               && Set#IsMember(s#0, $Box(a#inv#1_0))
             ==> read($Heap, a#inv#1_0, _module.ICell.data) == $Box(LitInt(2)));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(364,3)
    assert {:id "id572"} defass#c#0;
    assert {:id "id573"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id574"} defass#d#0;
    assert {:id "id575"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id576"} defass#e#0;
    assert {:id "id577"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(367,10)
    assert {:id "id578"} defass#d#0;
    assert {:id "id579"} d#0 != null;
    assume true;
    assert {:id "id580"} $_ModifiesFrame[d#0, _module.ICell.data];
    assume true;
    $rhs#6 := LitInt(9);
    $Heap := update($Heap, d#0, _module.ICell.data, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(368,3)
    assert {:id "id583"} defass#d#0;
    assume true;
    assert {:id "id584"} Set#IsMember(s#0, $Box(d#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(369,16)
    havoc u#1;
    if ($Is(u#1, Tclass._module.CellA()) && $IsAlloc(u#1, Tclass._module.CellA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(u#1)))
        {
            assert {:id "id585"} {:subsumption 0} u#1 != null;
        }

        assume true;
    }

    assert {:id "id586"} ($Is(null, Tclass._module.CellA())
         && 
        Set#IsMember(s#0, $Box(null))
         && LitInt(7) <= $Unbox(read($Heap, null, _module.ICell.data)): int)
       || (exists $as#u0#0: ref :: 
        $Is($as#u0#0, Tclass._module.CellA())
           && 
          Set#IsMember(s#0, $Box($as#u0#0))
           && LitInt(7) <= $Unbox(read($Heap, $as#u0#0, _module.ICell.data)): int);
    defass#u#0 := true;
    havoc u#0;
    assume {:id "id587"} Set#IsMember(s#0, $Box(u#0))
       && LitInt(7) <= $Unbox(read($Heap, u#0, _module.ICell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(370,10)
    assert {:id "id588"} defass#u#0;
    assert {:id "id589"} u#0 != null;
    assume true;
    assert {:id "id590"} $_ModifiesFrame[u#0, _module.ICell.data];
    assume true;
    $rhs#7 := LitInt(8);
    $Heap := update($Heap, u#0, _module.ICell.data, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(371,3)
    assert {:id "id593"} defass#c#0;
    assert {:id "id594"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id595"} defass#d#0;
    assert {:id "id596"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id597"} defass#e#0;
    assert {:id "id598"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(374,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#0;
    if ($Is(a#0, Tclass._module.CellA()) && $IsAlloc(a#0, Tclass._module.CellA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#0)))
        {
            assert {:id "id599"} a#0 != null;
        }

        if (Set#IsMember(s#0, $Box(a#0))
           && $Unbox(read($Heap, a#0, _module.ICell.data)): int < 6)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    r#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._module.CellA())
           && 
          Set#IsMember(s#0, $y#0)
           && $Unbox(read($Heap, $Unbox($y#0): ref, _module.ICell.data)): int < 6));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(375,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(378,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#2;
    if ($Is(a#2, Tclass._module.CellA()) && $IsAlloc(a#2, Tclass._module.CellA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#2)))
        {
            assert {:id "id601"} a#2 != null;
        }

        if (Set#IsMember(s#0, $Box(a#2))
           && $Unbox(read($Heap, a#2, _module.ICell.data)): int < 6)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, Tclass._module.CellA())
             && 
            Set#IsMember(s#0, $w#0)
             && $Unbox(read($Heap, $Unbox($w#0): ref, _module.ICell.data)): int < 6)), 
      (lambda $w#0: Box :: $Box(LitInt(3))), 
      TMap(Tclass._module.CellA(), TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(379,3)
    assert {:id "id603"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id604"} defass#d#0;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "EnumerationsMaybeNull (well-formedness)"} CheckWellFormed$$_module.__default.EnumerationsMaybeNull();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EnumerationsMaybeNull (call)"} Call$$_module.__default.EnumerationsMaybeNull();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "EnumerationsMaybeNull (correctness)"} Impl$$_module.__default.EnumerationsMaybeNull() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EnumerationsMaybeNull (correctness)"} Impl$$_module.__default.EnumerationsMaybeNull() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.CellA()) && $IsAlloc(c#0, Tclass._module.CellA(), $Heap);
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.CellA()) && $IsAlloc(d#0, Tclass._module.CellA(), $Heap);
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.CellB()) && $IsAlloc(e#0, Tclass._module.CellB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#3: int;
  var $rhs#4: int;
  var $rhs#5: int;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.ICell?()))
       && $IsAlloc(s#0, TSet(Tclass._module.ICell?()), $Heap);
  var newtype$check#0: ref;
  var a#0_0: ref;
  var newtype$check#0_0: ref;
  var newtype$check#0_1: ref;
  var a#0_1: ref;
  var $prevHeap: Heap;
  var a#1_0: ref;
  var newtype$check#1_0: ref;
  var a#1_1: ref;
  var $rhs#6: int;
  var u#0: ref
     where $Is(u#0, Tclass._module.CellA?())
       && $IsAlloc(u#0, Tclass._module.CellA?(), $Heap);
  var u#1: ref;
  var newtype$check#1: ref;
  var $rhs#7: int;
  var r#0: Set
     where $Is(r#0, TSet(Tclass._module.CellA?()))
       && $IsAlloc(r#0, TSet(Tclass._module.CellA?()), $Heap);
  var a#0: ref;
  var newtype$check#2: ref;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.CellA?(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.CellA?(), TInt), $Heap);
  var a#2: ref;
  var newtype$check#3: ref;
  var newtype$check#4: ref;

    // AddMethodImpl: EnumerationsMaybeNull, Impl$$_module.__default.EnumerationsMaybeNull
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(383,15)
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    c#0 := $rhs#0;
    defass#c#0 := true;
    d#0 := $rhs#1;
    defass#d#0 := true;
    e#0 := $rhs#2;
    defass#e#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(384,26)
    assert {:id "id611"} defass#c#0;
    assert {:id "id612"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id613"} $_ModifiesFrame[$obj0, _module.ICell.data];
    assert {:id "id614"} defass#d#0;
    assert {:id "id615"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id616"} $_ModifiesFrame[$obj1, _module.ICell.data];
    assert {:id "id617"} defass#e#0;
    assert {:id "id618"} e#0 != null;
    assume true;
    $obj2 := e#0;
    assert {:id "id619"} $_ModifiesFrame[$obj2, _module.ICell.data];
    assume true;
    $rhs#3 := LitInt(4);
    assume true;
    $rhs#4 := LitInt(5);
    assume true;
    $rhs#5 := LitInt(1);
    assert {:id "id623"} d#0 != c#0 || $rhs#4 == $rhs#3;
    assert {:id "id624"} e#0 != c#0 || $rhs#5 == $rhs#3;
    assert {:id "id625"} e#0 != d#0 || $rhs#5 == $rhs#4;
    $Heap := update($Heap, $obj0, _module.ICell.data, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.ICell.data, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, _module.ICell.data, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(385,22)
    assume true;
    assert {:id "id629"} defass#c#0;
    assert {:id "id630"} defass#d#0;
    assert {:id "id631"} defass#e#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), $Box(d#0)), $Box(e#0)), 
      $Box(null));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(386,3)
    assert {:id "id633"} defass#c#0;
    assert {:id "id634"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id635"} defass#d#0;
    assert {:id "id636"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id637"} defass#e#0;
    assert {:id "id638"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(389,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#0_0;
        assume $Is(a#0_0, Tclass._module.CellA?())
           && $IsAlloc(a#0_0, Tclass._module.CellA?(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#0_0));
        newtype$check#0_0 := null;
        if (a#0_0 == null)
        {
            assert {:id "id639"} defass#c#0;
        }
        else
        {
        }

        assert {:id "id640"} {:subsumption 0} (if a#0_0 == null then c#0 else a#0_0) != null;
        assume true;
        assert {:id "id641"} $_ModifiesFrame[(if a#0_0 == null then c#0 else a#0_0), _module.ICell.data];
        assert {:id "id642"} defass#c#0;
        assert {:id "id643"} {:subsumption 0} c#0 != null;
        newtype$check#0_1 := null;
        if (a#0_0 == null)
        {
            assert {:id "id644"} defass#c#0;
        }
        else
        {
        }

        assert {:id "id645"} {:subsumption 0} (if a#0_0 == null then c#0 else a#0_0) != null;
        assume true;
        havoc a#0_1;
        assume $Is(a#0_1, Tclass._module.CellA?())
           && $IsAlloc(a#0_1, Tclass._module.CellA?(), $Heap);
        assume Set#IsMember(s#0, $Box(a#0_1));
        assume a#0_0 != a#0_1;
        assert {:id "id646"} (if a#0_0 == null then c#0 else a#0_0) != (if a#0_1 == null then c#0 else a#0_1)
           || _module.ICell.data != _module.ICell.data
           || $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, (if a#0_0 == null then c#0 else a#0_0), _module.ICell.data)): int
               - 2
             == $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, (if a#0_1 == null then c#0 else a#0_1), _module.ICell.data)): int
               - 2;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#0_2: ref :: 
              $Is(a#0_2, Tclass._module.CellA?())
                 && Set#IsMember(s#0, $Box(a#0_2))
                 && $o == (if a#0_2 == null then c#0 else a#0_2)
                 && $f == _module.ICell.data));
        assume (forall a#inv#0_0: ref :: 
          { read($Heap, a#inv#0_0, _module.ICell.data) } 
          $Is(a#inv#0_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(null))
               && a#inv#0_0 == c#0
             ==> read($Heap, a#inv#0_0, _module.ICell.data)
               == $Box($Unbox(read($prevHeap, c#0, _module.ICell.data)): int
                     + $Unbox(read($prevHeap, (if null == null then c#0 else null), _module.ICell.data)): int
                   - 2));
        assume (forall a#inv#0_0: ref :: 
          { read($Heap, a#inv#0_0, _module.ICell.data) } 
          $Is(a#inv#0_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(a#inv#0_0))
               && a#inv#0_0 != null
             ==> read($Heap, a#inv#0_0, _module.ICell.data)
               == $Box($Unbox(read($prevHeap, c#0, _module.ICell.data)): int
                     + $Unbox(read($prevHeap, (if a#inv#0_0 == null then c#0 else a#inv#0_0), _module.ICell.data)): int
                   - 2));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(392,3)
    assert {:id "id647"} defass#c#0;
    assert {:id "id648"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id649"} defass#d#0;
    assert {:id "id650"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id651"} defass#e#0;
    assert {:id "id652"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(395,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#1_0;
        assume $Is(a#1_0, Tclass._module.CellA?())
           && $IsAlloc(a#1_0, Tclass._module.CellA?(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#1_0));
        newtype$check#1_0 := null;
        if (a#1_0 == null)
        {
            assert {:id "id653"} defass#c#0;
        }
        else
        {
        }

        assert {:id "id654"} {:subsumption 0} (if a#1_0 == null then c#0 else a#1_0) != null;
        assume true;
        assert {:id "id655"} $_ModifiesFrame[(if a#1_0 == null then c#0 else a#1_0), _module.ICell.data];
        assume true;
        havoc a#1_1;
        assume $Is(a#1_1, Tclass._module.CellA?())
           && $IsAlloc(a#1_1, Tclass._module.CellA?(), $Heap);
        assume Set#IsMember(s#0, $Box(a#1_1));
        assume a#1_0 != a#1_1;
        assert {:id "id656"} (if a#1_0 == null then c#0 else a#1_0) != (if a#1_1 == null then c#0 else a#1_1)
           || _module.ICell.data != _module.ICell.data
           || LitInt(2) == LitInt(2);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#1_2: ref :: 
              $Is(a#1_2, Tclass._module.CellA?())
                 && Set#IsMember(s#0, $Box(a#1_2))
                 && $o == (if a#1_2 == null then c#0 else a#1_2)
                 && $f == _module.ICell.data));
        assume (forall a#inv#1_0: ref :: 
          { read($Heap, a#inv#1_0, _module.ICell.data) } 
          $Is(a#inv#1_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(null))
               && a#inv#1_0 == c#0
             ==> read($Heap, a#inv#1_0, _module.ICell.data) == $Box(LitInt(2)));
        assume (forall a#inv#1_0: ref :: 
          { read($Heap, a#inv#1_0, _module.ICell.data) } 
          $Is(a#inv#1_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(a#inv#1_0))
               && a#inv#1_0 != null
             ==> read($Heap, a#inv#1_0, _module.ICell.data) == $Box(LitInt(2)));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(398,3)
    assert {:id "id657"} defass#c#0;
    assert {:id "id658"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id659"} defass#d#0;
    assert {:id "id660"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id661"} defass#e#0;
    assert {:id "id662"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(401,10)
    assert {:id "id663"} defass#d#0;
    assert {:id "id664"} d#0 != null;
    assume true;
    assert {:id "id665"} $_ModifiesFrame[d#0, _module.ICell.data];
    assume true;
    $rhs#6 := LitInt(9);
    $Heap := update($Heap, d#0, _module.ICell.data, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(402,3)
    assert {:id "id668"} defass#d#0;
    assume true;
    assert {:id "id669"} Set#IsMember(s#0, $Box(d#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(403,17)
    havoc u#1;
    if ($Is(u#1, Tclass._module.CellA?())
       && $IsAlloc(u#1, Tclass._module.CellA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(u#1)))
        {
            newtype$check#1 := null;
        }

        if (Set#IsMember(s#0, $Box(u#1)) && u#1 != null)
        {
            assert {:id "id670"} {:subsumption 0} u#1 != null;
        }

        assume true;
    }

    assert {:id "id671"} ($Is(null, Tclass._module.CellA?())
         && 
        Set#IsMember(s#0, $Box(null))
         && null != null
         && LitInt(7) <= $Unbox(read($Heap, null, _module.ICell.data)): int)
       || (exists $as#u0#0: ref :: 
        $Is($as#u0#0, Tclass._module.CellA?())
           && 
          Set#IsMember(s#0, $Box($as#u0#0))
           && $as#u0#0 != null
           && LitInt(7) <= $Unbox(read($Heap, $as#u0#0, _module.ICell.data)): int);
    havoc u#0;
    assume {:id "id672"} Set#IsMember(s#0, $Box(u#0))
       && u#0 != null
       && LitInt(7) <= $Unbox(read($Heap, u#0, _module.ICell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(404,10)
    assert {:id "id673"} u#0 != null;
    assume true;
    assert {:id "id674"} $_ModifiesFrame[u#0, _module.ICell.data];
    assume true;
    $rhs#7 := LitInt(8);
    $Heap := update($Heap, u#0, _module.ICell.data, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(405,3)
    assert {:id "id677"} defass#c#0;
    assert {:id "id678"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id679"} defass#d#0;
    assert {:id "id680"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id681"} defass#e#0;
    assert {:id "id682"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(408,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#0;
    if ($Is(a#0, Tclass._module.CellA?())
       && $IsAlloc(a#0, Tclass._module.CellA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#0)))
        {
            newtype$check#2 := null;
            if (a#0 != null)
            {
                assert {:id "id683"} a#0 != null;
            }
        }

        if (Set#IsMember(s#0, $Box(a#0))
           && (a#0 == null || $Unbox(read($Heap, a#0, _module.ICell.data)): int < 6))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    r#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._module.CellA?())
           && 
          Set#IsMember(s#0, $y#0)
           && ($Unbox($y#0): ref == null
             || $Unbox(read($Heap, $Unbox($y#0): ref, _module.ICell.data)): int < 6)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(409,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(412,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#2;
    if ($Is(a#2, Tclass._module.CellA?())
       && $IsAlloc(a#2, Tclass._module.CellA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#2)))
        {
            newtype$check#3 := null;
            if (a#2 != null)
            {
                assert {:id "id685"} a#2 != null;
            }
        }

        if (Set#IsMember(s#0, $Box(a#2))
           && (a#2 == null || $Unbox(read($Heap, a#2, _module.ICell.data)): int < 6))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, Tclass._module.CellA?())
             && 
            Set#IsMember(s#0, $w#0)
             && ($Unbox($w#0): ref == null
               || $Unbox(read($Heap, $Unbox($w#0): ref, _module.ICell.data)): int < 6))), 
      (lambda $w#0: Box :: $Box(LitInt(3))), 
      TMap(Tclass._module.CellA?(), TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(413,3)
    newtype$check#4 := null;
    assume true;
    assume true;
    assert {:id "id687"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id688"} defass#d#0;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "GoNil (well-formedness)"} CheckWellFormed$$_module.__default.GoNil();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GoNil (call)"} Call$$_module.__default.GoNil();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GoNil (correctness)"} Impl$$_module.__default.GoNil() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GoNil (correctness)"} Impl$$_module.__default.GoNil() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.CellA()) && $IsAlloc(a#0, Tclass._module.CellA(), $Heap);
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.CellB()) && $IsAlloc(b#0, Tclass._module.CellB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.CellA?()))
       && $IsAlloc(aa#0, TSet(Tclass._module.CellA?()), $Heap);
  var newtype$check#0: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.CellB?()))
       && $IsAlloc(bb#0, TSet(Tclass._module.CellB?()), $Heap);
  var newtype$check#1: ref;
  var cc#0: Set
     where $Is(cc#0, TSet(Tclass._module.ICell?()))
       && $IsAlloc(cc#0, TSet(Tclass._module.ICell?()), $Heap);
  var dd#0: Set
     where $Is(dd#0, TSet(Tclass._module.ICell?()))
       && $IsAlloc(dd#0, TSet(Tclass._module.ICell?()), $Heap);

    // AddMethodImpl: GoNil, Impl$$_module.__default.GoNil
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(417,12)
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    a#0 := $rhs#0;
    defass#a#0 := true;
    b#0 := $rhs#1;
    defass#b#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(418,10)
    assume true;
    assert {:id "id693"} defass#a#0;
    newtype$check#0 := null;
    assume true;
    aa#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(a#0)), $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(419,10)
    assume true;
    assert {:id "id695"} defass#b#0;
    newtype$check#1 := null;
    assume true;
    bb#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(b#0)), $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(420,10)
    assume true;
    assume true;
    cc#0 := Set#Intersection(aa#0, bb#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(421,10)
    assume true;
    assume true;
    dd#0 := Set#Union(aa#0, bb#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(422,3)
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Comprehensions.dfy(423,3)
    assume true;
    assume true;
    assume true;
}



function Tclass._module.ICell() : Ty
uses {
// Tclass._module.ICell Tag
axiom Tag(Tclass._module.ICell()) == Tagclass._module.ICell
   && TagFamily(Tclass._module.ICell()) == tytagFamily$ICell;
}

const unique Tagclass._module.ICell: TyTag;

// Box/unbox axiom for Tclass._module.ICell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ICell()) } 
  $IsBox(bx, Tclass._module.ICell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ICell()));

function Tclass._module.SomethingElse() : Ty
uses {
// Tclass._module.SomethingElse Tag
axiom Tag(Tclass._module.SomethingElse()) == Tagclass._module.SomethingElse
   && TagFamily(Tclass._module.SomethingElse()) == tytagFamily$SomethingElse;
}

const unique Tagclass._module.SomethingElse: TyTag;

// Box/unbox axiom for Tclass._module.SomethingElse
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SomethingElse()) } 
  $IsBox(bx, Tclass._module.SomethingElse())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SomethingElse()));

procedure {:verboseName "Containment (well-formedness)"} CheckWellFormed$$_module.__default.Containment(s#0: Set
       where $Is(s#0, TSet(Tclass._module.CellA()))
         && $IsAlloc(s#0, TSet(Tclass._module.CellA()), $Heap), 
    t#0: Set
       where $Is(t#0, TSet(Tclass._module.ICell()))
         && $IsAlloc(t#0, TSet(Tclass._module.ICell()), $Heap), 
    u#0: Set
       where $Is(u#0, TSet(Tclass._module.SomethingElse()))
         && $IsAlloc(u#0, TSet(Tclass._module.SomethingElse()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Containment (call)"} Call$$_module.__default.Containment(s#0: Set
       where $Is(s#0, TSet(Tclass._module.CellA()))
         && $IsAlloc(s#0, TSet(Tclass._module.CellA()), $Heap), 
    t#0: Set
       where $Is(t#0, TSet(Tclass._module.ICell()))
         && $IsAlloc(t#0, TSet(Tclass._module.ICell()), $Heap), 
    u#0: Set
       where $Is(u#0, TSet(Tclass._module.SomethingElse()))
         && $IsAlloc(u#0, TSet(Tclass._module.SomethingElse()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Containment (correctness)"} Impl$$_module.__default.Containment(s#0: Set
       where $Is(s#0, TSet(Tclass._module.CellA()))
         && $IsAlloc(s#0, TSet(Tclass._module.CellA()), $Heap), 
    t#0: Set
       where $Is(t#0, TSet(Tclass._module.ICell()))
         && $IsAlloc(t#0, TSet(Tclass._module.ICell()), $Heap), 
    u#0: Set
       where $Is(u#0, TSet(Tclass._module.SomethingElse()))
         && $IsAlloc(u#0, TSet(Tclass._module.SomethingElse()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class._module.NothingInParticular?: ClassName;

// $Is axiom for trait NothingInParticular
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NothingInParticular?()) } 
  $Is($o, Tclass._module.NothingInParticular?())
     <==> $o == null || implements$_module.NothingInParticular(dtype($o)));

// $IsAlloc axiom for trait NothingInParticular
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NothingInParticular?(), $h) } 
  $IsAlloc($o, Tclass._module.NothingInParticular?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.NothingInParticular(ty: Ty) : bool;

// $Is axiom for non-null type _module.NothingInParticular
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NothingInParticular()) } 
    { $Is(c#0, Tclass._module.NothingInParticular?()) } 
  $Is(c#0, Tclass._module.NothingInParticular())
     <==> $Is(c#0, Tclass._module.NothingInParticular?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NothingInParticular
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NothingInParticular(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NothingInParticular?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NothingInParticular(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NothingInParticular?(), $h));

const unique class._module.ClassA?: ClassName;

// $Is axiom for class ClassA
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ClassA?()) } 
  $Is($o, Tclass._module.ClassA?())
     <==> $o == null || dtype($o) == Tclass._module.ClassA?());

// $IsAlloc axiom for class ClassA
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassA?(), $h) } 
  $IsAlloc($o, Tclass._module.ClassA?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.ClassA
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ClassA()) } { $Is(c#0, Tclass._module.ClassA?()) } 
  $Is(c#0, Tclass._module.ClassA())
     <==> $Is(c#0, Tclass._module.ClassA?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ClassA
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ClassA(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ClassA?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ClassA(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ClassA?(), $h));

const unique class._module.ClassB?: ClassName;

// $Is axiom for class ClassB
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ClassB?()) } 
  $Is($o, Tclass._module.ClassB?())
     <==> $o == null || dtype($o) == Tclass._module.ClassB?());

// $IsAlloc axiom for class ClassB
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassB?(), $h) } 
  $IsAlloc($o, Tclass._module.ClassB?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.ClassB
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ClassB()) } { $Is(c#0, Tclass._module.ClassB?()) } 
  $Is(c#0, Tclass._module.ClassB())
     <==> $Is(c#0, Tclass._module.ClassB?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ClassB
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ClassB(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ClassB?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ClassB(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ClassB?(), $h));

// Constructor function declaration
function #_module.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
// Constructor $Is
axiom $Is(#_module.Color.Red(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Red() == Lit(#_module.Color.Red());
}

const unique ##_module.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
}

function _module.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) ==> d == #_module.Color.Red());

// Constructor function declaration
function #_module.Color.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Green()) == ##_module.Color.Green;
// Constructor $Is
axiom $Is(#_module.Color.Green(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Green() == Lit(#_module.Color.Green());
}

const unique ##_module.Color.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Green()) == ##_module.Color.Green;
}

function _module.Color.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Green_q(d) } 
  _module.Color.Green_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Green_q(d) } 
  _module.Color.Green_q(d) ==> d == #_module.Color.Green());

// Constructor function declaration
function #_module.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
// Constructor $Is
axiom $Is(#_module.Color.Blue(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Blue() == Lit(#_module.Color.Blue());
}

const unique ##_module.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
}

function _module.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) ==> d == #_module.Color.Blue());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Color())
     ==> $IsAlloc(d, Tclass._module.Color(), $h));

// Depth-one case-split function
function $IsA#_module.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Color(d) } 
  $IsA#_module.Color(d)
     ==> _module.Color.Red_q(d) || _module.Color.Green_q(d) || _module.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Green_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Red_q(d), $Is(d, Tclass._module.Color()) } 
  $Is(d, Tclass._module.Color())
     ==> _module.Color.Red_q(d) || _module.Color.Green_q(d) || _module.Color.Blue_q(d));

// Datatype extensional equality declaration
function _module.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Red_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Red_q(b) } 
  _module.Color.Red_q(a) && _module.Color.Red_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Green_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Green_q(b) } 
  _module.Color.Green_q(a) && _module.Color.Green_q(b)
     ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Blue_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Blue_q(b) } 
  _module.Color.Blue_q(a) && _module.Color.Blue_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensionality axiom: _module.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b) } 
  _module.Color#Equal(a, b) <==> a == b);

const unique class._module.Color: ClassName;

const unique class._module.ICell?: ClassName;

// $Is axiom for trait ICell
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ICell?()) } 
  $Is($o, Tclass._module.ICell?())
     <==> $o == null || implements$_module.ICell(dtype($o)));

// $IsAlloc axiom for trait ICell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ICell?(), $h) } 
  $IsAlloc($o, Tclass._module.ICell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.ICell(ty: Ty) : bool;

const _module.ICell.data: Field
uses {
axiom FDim(_module.ICell.data) == 0
   && FieldOfDecl(class._module.ICell?, field$data) == _module.ICell.data
   && !$IsGhostField(_module.ICell.data);
}

// ICell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ICell.data)): int } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass._module.ICell?())
     ==> $Is($Unbox(read($h, $o, _module.ICell.data)): int, TInt));

// ICell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ICell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass._module.ICell?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ICell.data)): int, TInt, $h));

// $Is axiom for non-null type _module.ICell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ICell()) } { $Is(c#0, Tclass._module.ICell?()) } 
  $Is(c#0, Tclass._module.ICell())
     <==> $Is(c#0, Tclass._module.ICell?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ICell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ICell(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ICell?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ICell(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ICell?(), $h));

const unique class._module.CellA?: ClassName;

// $Is axiom for class CellA
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellA?()) } 
  $Is($o, Tclass._module.CellA?())
     <==> $o == null || dtype($o) == Tclass._module.CellA?());

// $IsAlloc axiom for class CellA
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CellA?(), $h) } 
  $IsAlloc($o, Tclass._module.CellA?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.CellA
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CellA()) } { $Is(c#0, Tclass._module.CellA?()) } 
  $Is(c#0, Tclass._module.CellA())
     <==> $Is(c#0, Tclass._module.CellA?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CellA
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CellA(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CellA?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CellA(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CellA?(), $h));

const unique class._module.CellB?: ClassName;

// $Is axiom for class CellB
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellB?()) } 
  $Is($o, Tclass._module.CellB?())
     <==> $o == null || dtype($o) == Tclass._module.CellB?());

// $IsAlloc axiom for class CellB
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CellB?(), $h) } 
  $IsAlloc($o, Tclass._module.CellB?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.CellB
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CellB()) } { $Is(c#0, Tclass._module.CellB?()) } 
  $Is(c#0, Tclass._module.CellB())
     <==> $Is(c#0, Tclass._module.CellB?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CellB
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CellB(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CellB?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CellB(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CellB?(), $h));

const unique class._module.SomethingElse?: ClassName;

function Tclass._module.SomethingElse?() : Ty
uses {
// Tclass._module.SomethingElse? Tag
axiom Tag(Tclass._module.SomethingElse?()) == Tagclass._module.SomethingElse?
   && TagFamily(Tclass._module.SomethingElse?()) == tytagFamily$SomethingElse;
}

const unique Tagclass._module.SomethingElse?: TyTag;

// Box/unbox axiom for Tclass._module.SomethingElse?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SomethingElse?()) } 
  $IsBox(bx, Tclass._module.SomethingElse?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SomethingElse?()));

// $Is axiom for trait SomethingElse
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SomethingElse?()) } 
  $Is($o, Tclass._module.SomethingElse?())
     <==> $o == null || implements$_module.SomethingElse(dtype($o)));

// $IsAlloc axiom for trait SomethingElse
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SomethingElse?(), $h) } 
  $IsAlloc($o, Tclass._module.SomethingElse?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.SomethingElse(ty: Ty) : bool;

// $Is axiom for non-null type _module.SomethingElse
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SomethingElse()) } 
    { $Is(c#0, Tclass._module.SomethingElse?()) } 
  $Is(c#0, Tclass._module.SomethingElse())
     <==> $Is(c#0, Tclass._module.SomethingElse?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SomethingElse
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SomethingElse(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SomethingElse?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SomethingElse(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SomethingElse?(), $h));

const unique class.TestImplicitTypeTests.__default: ClassName;

procedure {:verboseName "TestImplicitTypeTests.Test (well-formedness)"} CheckWellFormed$$TestImplicitTypeTests.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestImplicitTypeTests.Test (call)"} Call$$TestImplicitTypeTests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TestImplicitTypeTests.A?: ClassName;

function Tclass.TestImplicitTypeTests.A?() : Ty
uses {
// Tclass.TestImplicitTypeTests.A? Tag
axiom Tag(Tclass.TestImplicitTypeTests.A?()) == Tagclass.TestImplicitTypeTests.A?
   && TagFamily(Tclass.TestImplicitTypeTests.A?()) == tytagFamily$A;
}

const unique Tagclass.TestImplicitTypeTests.A?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A?()));

// $Is axiom for trait A
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.A?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.A?())
     <==> $o == null || implements$TestImplicitTypeTests.A(dtype($o)));

// $IsAlloc axiom for trait A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestImplicitTypeTests.A(ty: Ty) : bool;

function Tclass.TestImplicitTypeTests.A() : Ty
uses {
// Tclass.TestImplicitTypeTests.A Tag
axiom Tag(Tclass.TestImplicitTypeTests.A()) == Tagclass.TestImplicitTypeTests.A
   && TagFamily(Tclass.TestImplicitTypeTests.A()) == tytagFamily$A;
}

const unique Tagclass.TestImplicitTypeTests.A: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A()));

// $Is axiom for non-null type TestImplicitTypeTests.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.A()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.A?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.A())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A?(), $h));

const unique class.TestImplicitTypeTests.B?: ClassName;

function Tclass.TestImplicitTypeTests.B?() : Ty
uses {
// Tclass.TestImplicitTypeTests.B? Tag
axiom Tag(Tclass.TestImplicitTypeTests.B?()) == Tagclass.TestImplicitTypeTests.B?
   && TagFamily(Tclass.TestImplicitTypeTests.B?()) == tytagFamily$B;
}

const unique Tagclass.TestImplicitTypeTests.B?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B?()));

// $Is axiom for trait B
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B?())
     <==> $o == null || implements$TestImplicitTypeTests.B(dtype($o)));

// $IsAlloc axiom for trait B
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestImplicitTypeTests.B(ty: Ty) : bool;

function Tclass.TestImplicitTypeTests.B() : Ty
uses {
// Tclass.TestImplicitTypeTests.B Tag
axiom Tag(Tclass.TestImplicitTypeTests.B()) == Tagclass.TestImplicitTypeTests.B
   && TagFamily(Tclass.TestImplicitTypeTests.B()) == tytagFamily$B;
}

const unique Tagclass.TestImplicitTypeTests.B: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B()));

// $Is axiom for non-null type TestImplicitTypeTests.B
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.B()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.B?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.B())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.B?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.B
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B?(), $h));

const unique class.TestImplicitTypeTests.C?: ClassName;

function Tclass.TestImplicitTypeTests.C?() : Ty
uses {
// Tclass.TestImplicitTypeTests.C? Tag
axiom Tag(Tclass.TestImplicitTypeTests.C?()) == Tagclass.TestImplicitTypeTests.C?
   && TagFamily(Tclass.TestImplicitTypeTests.C?()) == tytagFamily$C;
axiom implements$TestImplicitTypeTests.B(Tclass.TestImplicitTypeTests.C?());
}

const unique Tagclass.TestImplicitTypeTests.C?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.C?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.C?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.C?())
     <==> $o == null || dtype($o) == Tclass.TestImplicitTypeTests.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestImplicitTypeTests.C() : Ty
uses {
// Tclass.TestImplicitTypeTests.C Tag
axiom Tag(Tclass.TestImplicitTypeTests.C()) == Tagclass.TestImplicitTypeTests.C
   && TagFamily(Tclass.TestImplicitTypeTests.C()) == tytagFamily$C;
}

const unique Tagclass.TestImplicitTypeTests.C: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.C()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.C()));

// $Is axiom for non-null type TestImplicitTypeTests.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.C()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.C?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.C())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C?(), $h));

const unique class.TestImplicitTypeTests.A_k?: ClassName;

function Tclass.TestImplicitTypeTests.A_k?() : Ty
uses {
// Tclass.TestImplicitTypeTests.A_k? Tag
axiom Tag(Tclass.TestImplicitTypeTests.A_k?()) == Tagclass.TestImplicitTypeTests.A_k?
   && TagFamily(Tclass.TestImplicitTypeTests.A_k?()) == tytagFamily$A';
axiom implements$TestImplicitTypeTests.A(Tclass.TestImplicitTypeTests.A_k?());
}

const unique Tagclass.TestImplicitTypeTests.A_k?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A_k?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A_k?()));

// $Is axiom for class A'
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.A_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.A_k?())
     <==> $o == null || dtype($o) == Tclass.TestImplicitTypeTests.A_k?());

// $IsAlloc axiom for class A'
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestImplicitTypeTests.A_k() : Ty
uses {
// Tclass.TestImplicitTypeTests.A_k Tag
axiom Tag(Tclass.TestImplicitTypeTests.A_k()) == Tagclass.TestImplicitTypeTests.A_k
   && TagFamily(Tclass.TestImplicitTypeTests.A_k()) == tytagFamily$A';
}

const unique Tagclass.TestImplicitTypeTests.A_k: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A_k
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A_k()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A_k())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A_k()));

// $Is axiom for non-null type TestImplicitTypeTests.A'
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.A_k()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.A_k?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.A_k())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.A_k?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.A'
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k?(), $h));

const unique class.TestImplicitTypeTests.B_k?: ClassName;

function Tclass.TestImplicitTypeTests.B_k?() : Ty
uses {
// Tclass.TestImplicitTypeTests.B_k? Tag
axiom Tag(Tclass.TestImplicitTypeTests.B_k?()) == Tagclass.TestImplicitTypeTests.B_k?
   && TagFamily(Tclass.TestImplicitTypeTests.B_k?()) == tytagFamily$B';
axiom implements$TestImplicitTypeTests.B(Tclass.TestImplicitTypeTests.B_k?());
}

const unique Tagclass.TestImplicitTypeTests.B_k?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B_k?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B_k?()));

// $Is axiom for class B'
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B_k?())
     <==> $o == null || dtype($o) == Tclass.TestImplicitTypeTests.B_k?());

// $IsAlloc axiom for class B'
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestImplicitTypeTests.B_k() : Ty
uses {
// Tclass.TestImplicitTypeTests.B_k Tag
axiom Tag(Tclass.TestImplicitTypeTests.B_k()) == Tagclass.TestImplicitTypeTests.B_k
   && TagFamily(Tclass.TestImplicitTypeTests.B_k()) == tytagFamily$B';
}

const unique Tagclass.TestImplicitTypeTests.B_k: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B_k
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B_k()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B_k())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B_k()));

// $Is axiom for non-null type TestImplicitTypeTests.B'
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.B_k()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.B_k?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.B_k())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.B_k?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.B'
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k?(), $h));

const unique class.ObjectTests.__default: ClassName;

procedure {:verboseName "ObjectTests.Test (well-formedness)"} CheckWellFormed$$ObjectTests.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.Test (call)"} Call$$ObjectTests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for ObjectTests._default.GenEqual
function ObjectTests.__default.GenEqual(ObjectTests._default.GenEqual$X: Ty, x#0: Box, y#0: Box) : bool;

function ObjectTests.__default.GenEqual#canCall(ObjectTests._default.GenEqual$X: Ty, x#0: Box, y#0: Box) : bool;

function ObjectTests.__default.GenEqual#requires(Ty, Box, Box) : bool;

// #requires axiom for ObjectTests.__default.GenEqual
axiom (forall ObjectTests._default.GenEqual$X: Ty, x#0: Box, y#0: Box :: 
  { ObjectTests.__default.GenEqual#requires(ObjectTests._default.GenEqual$X, x#0, y#0) } 
  $IsBox(x#0, ObjectTests._default.GenEqual$X)
       && $IsBox(y#0, ObjectTests._default.GenEqual$X)
     ==> ObjectTests.__default.GenEqual#requires(ObjectTests._default.GenEqual$X, x#0, y#0)
       == true);

// definition axiom for ObjectTests.__default.GenEqual (revealed)
axiom {:id "id711"} (forall ObjectTests._default.GenEqual$X: Ty, x#0: Box, y#0: Box :: 
  { ObjectTests.__default.GenEqual(ObjectTests._default.GenEqual$X, x#0, y#0) } 
  ObjectTests.__default.GenEqual#canCall(ObjectTests._default.GenEqual$X, x#0, y#0)
       || ($IsBox(x#0, ObjectTests._default.GenEqual$X)
         && $IsBox(y#0, ObjectTests._default.GenEqual$X))
     ==> ObjectTests.__default.GenEqual(ObjectTests._default.GenEqual$X, x#0, y#0)
       == 
      (x#0
       == y#0));

// definition axiom for ObjectTests.__default.GenEqual for all literals (revealed)
axiom {:id "id712"} (forall ObjectTests._default.GenEqual$X: Ty, x#0: Box, y#0: Box :: 
  {:weight 3} { ObjectTests.__default.GenEqual(ObjectTests._default.GenEqual$X, Lit(x#0), Lit(y#0)) } 
  ObjectTests.__default.GenEqual#canCall(ObjectTests._default.GenEqual$X, Lit(x#0), Lit(y#0))
       || ($IsBox(x#0, ObjectTests._default.GenEqual$X)
         && $IsBox(y#0, ObjectTests._default.GenEqual$X))
     ==> ObjectTests.__default.GenEqual(ObjectTests._default.GenEqual$X, Lit(x#0), Lit(y#0))
       == 
      (Lit(x#0)
       == Lit(y#0)));

const unique class.NewtypeRangeRegression.__default: ClassName;

procedure {:verboseName "NewtypeRangeRegression.Test (well-formedness)"} CheckWellFormed$$NewtypeRangeRegression.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewtypeRangeRegression.Test (call)"} Call$$NewtypeRangeRegression.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.NewtypeRangeRegression.MyInt() : Ty
uses {
// Tclass.NewtypeRangeRegression.MyInt Tag
axiom Tag(Tclass.NewtypeRangeRegression.MyInt())
     == Tagclass.NewtypeRangeRegression.MyInt
   && TagFamily(Tclass.NewtypeRangeRegression.MyInt()) == tytagFamily$MyInt;
}

const unique Tagclass.NewtypeRangeRegression.MyInt: TyTag;

// Box/unbox axiom for Tclass.NewtypeRangeRegression.MyInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeRangeRegression.MyInt()) } 
  $IsBox(bx, Tclass.NewtypeRangeRegression.MyInt())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeRangeRegression.MyInt()));

// $Is axiom for newtype NewtypeRangeRegression.MyInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeRangeRegression.MyInt()) } 
  $Is(x#0, Tclass.NewtypeRangeRegression.MyInt()) <==> LitInt(2) <= x#0 && x#0 < 5);

// $IsAlloc axiom for newtype NewtypeRangeRegression.MyInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeRangeRegression.MyInt(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeRangeRegression.MyInt(), $h));

const unique class.NewtypeRangeRegression.MyInt: ClassName;

const unique class.EnumerationRegression.__default: ClassName;

procedure {:verboseName "EnumerationRegression.Test (well-formedness)"} CheckWellFormed$$EnumerationRegression.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EnumerationRegression.Test (call)"} Call$$EnumerationRegression.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for EnumerationRegression._default.Digit
function EnumerationRegression.__default.Digit(x#0: int) : char;

function EnumerationRegression.__default.Digit#canCall(x#0: int) : bool;

// consequence axiom for EnumerationRegression.__default.Digit
axiom (forall x#0: int :: 
  { EnumerationRegression.__default.Digit(x#0) } 
  EnumerationRegression.__default.Digit#canCall(x#0)
       || (LitInt(137438953472) <= x#0 && x#0 < 137438953482)
     ==> $Is(EnumerationRegression.__default.Digit(x#0), TChar));

function EnumerationRegression.__default.Digit#requires(int) : bool;

// #requires axiom for EnumerationRegression.__default.Digit
axiom (forall x#0: int :: 
  { EnumerationRegression.__default.Digit#requires(x#0) } 
  EnumerationRegression.__default.Digit#requires(x#0)
     == (LitInt(137438953472) <= x#0 && x#0 < 137438953482));

// definition axiom for EnumerationRegression.__default.Digit (revealed)
axiom {:id "id713"} (forall x#0: int :: 
  { EnumerationRegression.__default.Digit(x#0) } 
  EnumerationRegression.__default.Digit#canCall(x#0)
       || (LitInt(137438953472) <= x#0 && x#0 < 137438953482)
     ==> EnumerationRegression.__default.Digit(x#0)
       == char#Plus(char#FromInt(97), char#FromInt(x#0 - 137438953472)));

// definition axiom for EnumerationRegression.__default.Digit for all literals (revealed)
axiom {:id "id714"} (forall x#0: int :: 
  {:weight 3} { EnumerationRegression.__default.Digit(LitInt(x#0)) } 
  EnumerationRegression.__default.Digit#canCall(LitInt(x#0))
       || (LitInt(137438953472) <= LitInt(x#0) && x#0 < 137438953482)
     ==> EnumerationRegression.__default.Digit(LitInt(x#0))
       == char#Plus(char#FromInt(97), char#FromInt(LitInt(x#0 - 137438953472))));

function Tclass.EnumerationRegression.Long() : Ty
uses {
// Tclass.EnumerationRegression.Long Tag
axiom Tag(Tclass.EnumerationRegression.Long()) == Tagclass.EnumerationRegression.Long
   && TagFamily(Tclass.EnumerationRegression.Long()) == tytagFamily$Long;
}

const unique Tagclass.EnumerationRegression.Long: TyTag;

// Box/unbox axiom for Tclass.EnumerationRegression.Long
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EnumerationRegression.Long()) } 
  $IsBox(bx, Tclass.EnumerationRegression.Long())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EnumerationRegression.Long()));

// $Is axiom for newtype EnumerationRegression.Long
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EnumerationRegression.Long()) } 
  $Is(x#0, Tclass.EnumerationRegression.Long())
     <==> LitInt(137438953456) <= x#0 && x#0 < 137438953728);

// $IsAlloc axiom for newtype EnumerationRegression.Long
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EnumerationRegression.Long(), $h) } 
  $IsAlloc(x#0, Tclass.EnumerationRegression.Long(), $h));

const unique class.EnumerationRegression.Long: ClassName;

// function declaration for EnumerationRegression.Long.True
function EnumerationRegression.Long.True(this: int) : bool;

function EnumerationRegression.Long.True#canCall(this: int) : bool;

function EnumerationRegression.Long.True#requires(int) : bool;

// #requires axiom for EnumerationRegression.Long.True
axiom (forall this: int :: 
  { EnumerationRegression.Long.True#requires(this) } 
  LitInt(137438953456) <= this && this < 137438953728
     ==> EnumerationRegression.Long.True#requires(this) == true);

// definition axiom for EnumerationRegression.Long.True (revealed)
axiom {:id "id715"} (forall this: int :: 
  { EnumerationRegression.Long.True(this) } 
  EnumerationRegression.Long.True#canCall(this)
       || (LitInt(137438953456) <= this && this < 137438953728)
     ==> EnumerationRegression.Long.True(this) == Lit(true));

// definition axiom for EnumerationRegression.Long.True for all literals (revealed)
axiom {:id "id716"} (forall this: int :: 
  {:weight 3} { EnumerationRegression.Long.True(LitInt(this)) } 
  EnumerationRegression.Long.True#canCall(LitInt(this))
       || (LitInt(137438953456) <= this && this < 137438953728)
     ==> EnumerationRegression.Long.True(LitInt(this)) == Lit(true));

function Tclass.EnumerationRegression.AlsoLong() : Ty
uses {
// Tclass.EnumerationRegression.AlsoLong Tag
axiom Tag(Tclass.EnumerationRegression.AlsoLong())
     == Tagclass.EnumerationRegression.AlsoLong
   && TagFamily(Tclass.EnumerationRegression.AlsoLong()) == tytagFamily$AlsoLong;
}

const unique Tagclass.EnumerationRegression.AlsoLong: TyTag;

// Box/unbox axiom for Tclass.EnumerationRegression.AlsoLong
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EnumerationRegression.AlsoLong()) } 
  $IsBox(bx, Tclass.EnumerationRegression.AlsoLong())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EnumerationRegression.AlsoLong()));

// $Is axiom for newtype EnumerationRegression.AlsoLong
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EnumerationRegression.AlsoLong()) } 
  $Is(x#0, Tclass.EnumerationRegression.AlsoLong())
     <==> LitInt(137438953474) <= x#0 && x#0 < 137438953480);

// $IsAlloc axiom for newtype EnumerationRegression.AlsoLong
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EnumerationRegression.AlsoLong(), $h) } 
  $IsAlloc(x#0, Tclass.EnumerationRegression.AlsoLong(), $h));

const unique class.EnumerationRegression.AlsoLong: ClassName;

// function declaration for EnumerationRegression.AlsoLong.True
function EnumerationRegression.AlsoLong.True(this: int) : bool;

function EnumerationRegression.AlsoLong.True#canCall(this: int) : bool;

function EnumerationRegression.AlsoLong.True#requires(int) : bool;

// #requires axiom for EnumerationRegression.AlsoLong.True
axiom (forall this: int :: 
  { EnumerationRegression.AlsoLong.True#requires(this) } 
  LitInt(137438953474) <= this && this < 137438953480
     ==> EnumerationRegression.AlsoLong.True#requires(this) == true);

// definition axiom for EnumerationRegression.AlsoLong.True (revealed)
axiom {:id "id717"} (forall this: int :: 
  { EnumerationRegression.AlsoLong.True(this) } 
  EnumerationRegression.AlsoLong.True#canCall(this)
       || (LitInt(137438953474) <= this && this < 137438953480)
     ==> EnumerationRegression.AlsoLong.True(this) == Lit(true));

// definition axiom for EnumerationRegression.AlsoLong.True for all literals (revealed)
axiom {:id "id718"} (forall this: int :: 
  {:weight 3} { EnumerationRegression.AlsoLong.True(LitInt(this)) } 
  EnumerationRegression.AlsoLong.True#canCall(LitInt(this))
       || (LitInt(137438953474) <= this && this < 137438953480)
     ==> EnumerationRegression.AlsoLong.True(LitInt(this)) == Lit(true));

// type axiom for trait parent: B? extends A?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.A?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.A?()));

// allocation axiom for trait parent: B? extends A?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A?(), $h));

// type axiom for trait parent: C? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.C?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.C?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.C?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.C?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.B?()));

// allocation axiom for trait parent: C? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.C?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.C?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h));

// type axiom for trait parent: A'? extends A?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.A_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.A_k?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.A?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.A?()));

// allocation axiom for trait parent: A'? extends A?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A_k?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A_k?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A?(), $h));

// type axiom for trait parent: B'? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B_k?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.B?()));

// allocation axiom for trait parent: B'? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B_k?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B_k?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h));

// type axiom for trait parent: ClassB? extends NothingInParticular?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ClassB?()) } 
  $Is($o, Tclass._module.ClassB?())
     ==> $Is($o, Tclass._module.NothingInParticular?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassB?()) } 
  $IsBox(bx, Tclass._module.ClassB?())
     ==> $IsBox(bx, Tclass._module.NothingInParticular?()));

// allocation axiom for trait parent: ClassB? extends NothingInParticular?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassB?(), $heap) } 
  $IsAlloc($o, Tclass._module.ClassB?(), $heap)
     ==> $IsAlloc($o, Tclass._module.NothingInParticular?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.ClassB?(), $h) } 
  $IsAllocBox(bx, Tclass._module.ClassB?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.NothingInParticular?(), $h));

// type axiom for trait parent: CellA? extends ICell?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellA?()) } 
  $Is($o, Tclass._module.CellA?()) ==> $Is($o, Tclass._module.ICell?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellA?()) } 
  $IsBox(bx, Tclass._module.CellA?()) ==> $IsBox(bx, Tclass._module.ICell?()));

// allocation axiom for trait parent: CellA? extends ICell?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.CellA?(), $heap) } 
  $IsAlloc($o, Tclass._module.CellA?(), $heap)
     ==> $IsAlloc($o, Tclass._module.ICell?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.CellA?(), $h) } 
  $IsAllocBox(bx, Tclass._module.CellA?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.ICell?(), $h));

// type axiom for trait parent: CellB? extends ICell?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellB?()) } 
  $Is($o, Tclass._module.CellB?()) ==> $Is($o, Tclass._module.ICell?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellB?()) } 
  $IsBox(bx, Tclass._module.CellB?()) ==> $IsBox(bx, Tclass._module.ICell?()));

// allocation axiom for trait parent: CellB? extends ICell?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.CellB?(), $heap) } 
  $IsAlloc($o, Tclass._module.CellB?(), $heap)
     ==> $IsAlloc($o, Tclass._module.ICell?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.CellB?(), $h) } 
  $IsAllocBox(bx, Tclass._module.CellB?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.ICell?(), $h));

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

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$ClassA: TyTagFamily;

const unique tytagFamily$ClassB: TyTagFamily;

const unique tytagFamily$NothingInParticular: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$CellA: TyTagFamily;

const unique tytagFamily$CellB: TyTagFamily;

const unique tytagFamily$ICell: TyTagFamily;

const unique tytagFamily$SomethingElse: TyTagFamily;

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$B: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$A': TyTagFamily;

const unique tytagFamily$B': TyTagFamily;

const unique tytagFamily$MyInt: TyTagFamily;

const unique tytagFamily$Long: TyTagFamily;

const unique tytagFamily$AlsoLong: TyTagFamily;

const unique field$data: NameFamily;
