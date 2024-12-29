// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy

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

// Box/unbox axiom for bv19
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(19)) } 
  $IsBox(bx, TBitvector(19))
     ==> $Box($Unbox(bx): bv19) == bx && $Is($Unbox(bx): bv19, TBitvector(19)));

axiom (forall v: bv19 :: { $Is(v, TBitvector(19)) } $Is(v, TBitvector(19)));

axiom (forall v: bv19, heap: Heap :: 
  { $IsAlloc(v, TBitvector(19), heap) } 
  $IsAlloc(v, TBitvector(19), heap));

function {:bvbuiltin "bvand"} and_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvor"} or_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvxor"} xor_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvnot"} not_bv19(bv19) : bv19;

function {:bvbuiltin "bvadd"} add_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvsub"} sub_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvmul"} mul_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvudiv"} div_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvurem"} mod_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvult"} lt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvule"} le_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvuge"} ge_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvugt"} gt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvlshr"} RightShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "(_ int2bv 19)"} nat_to_bv19(int) : bv19;

function {:bvbuiltin "bv2int"} smt_nat_from_bv19(bv19) : int;

function nat_from_bv19(bv19) : int;

axiom (forall b: bv19 :: 
  { nat_from_bv19(b) } 
  0 <= nat_from_bv19(b)
     && nat_from_bv19(b) < 524288
     && nat_from_bv19(b) == smt_nat_from_bv19(b));

// Box/unbox axiom for bv5
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(5)) } 
  $IsBox(bx, TBitvector(5))
     ==> $Box($Unbox(bx): bv5) == bx && $Is($Unbox(bx): bv5, TBitvector(5)));

axiom (forall v: bv5 :: { $Is(v, TBitvector(5)) } $Is(v, TBitvector(5)));

axiom (forall v: bv5, heap: Heap :: 
  { $IsAlloc(v, TBitvector(5), heap) } 
  $IsAlloc(v, TBitvector(5), heap));

function {:bvbuiltin "bvand"} and_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvor"} or_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvxor"} xor_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvnot"} not_bv5(bv5) : bv5;

function {:bvbuiltin "bvadd"} add_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvsub"} sub_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvmul"} mul_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvudiv"} div_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvurem"} mod_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvult"} lt_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvule"} le_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvuge"} ge_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvugt"} gt_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvlshr"} RightShift_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "(_ int2bv 5)"} nat_to_bv5(int) : bv5;

function {:bvbuiltin "bv2int"} smt_nat_from_bv5(bv5) : int;

function nat_from_bv5(bv5) : int;

axiom (forall b: bv5 :: 
  { nat_from_bv5(b) } 
  0 <= nat_from_bv5(b)
     && nat_from_bv5(b) < 32
     && nat_from_bv5(b) == smt_nat_from_bv5(b));

// Box/unbox axiom for bv9
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(9)) } 
  $IsBox(bx, TBitvector(9))
     ==> $Box($Unbox(bx): bv9) == bx && $Is($Unbox(bx): bv9, TBitvector(9)));

axiom (forall v: bv9 :: { $Is(v, TBitvector(9)) } $Is(v, TBitvector(9)));

axiom (forall v: bv9, heap: Heap :: 
  { $IsAlloc(v, TBitvector(9), heap) } 
  $IsAlloc(v, TBitvector(9), heap));

function {:bvbuiltin "bvand"} and_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvor"} or_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvxor"} xor_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvnot"} not_bv9(bv9) : bv9;

function {:bvbuiltin "bvadd"} add_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvsub"} sub_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvmul"} mul_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvudiv"} div_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvurem"} mod_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvult"} lt_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvule"} le_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvuge"} ge_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvugt"} gt_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvlshr"} RightShift_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "(_ int2bv 9)"} nat_to_bv9(int) : bv9;

function {:bvbuiltin "bv2int"} smt_nat_from_bv9(bv9) : int;

function nat_from_bv9(bv9) : int;

axiom (forall b: bv9 :: 
  { nat_from_bv9(b) } 
  0 <= nat_from_bv9(b)
     && nat_from_bv9(b) < 512
     && nat_from_bv9(b) == smt_nat_from_bv9(b));

// Box/unbox axiom for bv10
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(10)) } 
  $IsBox(bx, TBitvector(10))
     ==> $Box($Unbox(bx): bv10) == bx && $Is($Unbox(bx): bv10, TBitvector(10)));

axiom (forall v: bv10 :: { $Is(v, TBitvector(10)) } $Is(v, TBitvector(10)));

axiom (forall v: bv10, heap: Heap :: 
  { $IsAlloc(v, TBitvector(10), heap) } 
  $IsAlloc(v, TBitvector(10), heap));

function {:bvbuiltin "bvand"} and_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvor"} or_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvxor"} xor_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvnot"} not_bv10(bv10) : bv10;

function {:bvbuiltin "bvadd"} add_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvsub"} sub_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvmul"} mul_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvudiv"} div_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvurem"} mod_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvult"} lt_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvule"} le_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvuge"} ge_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvugt"} gt_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvlshr"} RightShift_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "(_ int2bv 10)"} nat_to_bv10(int) : bv10;

function {:bvbuiltin "bv2int"} smt_nat_from_bv10(bv10) : int;

function nat_from_bv10(bv10) : int;

axiom (forall b: bv10 :: 
  { nat_from_bv10(b) } 
  0 <= nat_from_bv10(b)
     && nat_from_bv10(b) < 1024
     && nat_from_bv10(b) == smt_nat_from_bv10(b));

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

const unique class._System.array2?: ClassName;

function Tclass._System.array2?(Ty) : Ty;

const unique Tagclass._System.array2?: TyTag;

// Tclass._System.array2? Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tag(Tclass._System.array2?(_System.array2$arg)) == Tagclass._System.array2?
     && TagFamily(Tclass._System.array2?(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2?_0(Ty) : Ty;

// Tclass._System.array2? injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tclass._System.array2?_0(Tclass._System.array2?(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2?
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2?(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2?(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2?(_System.array2$arg)));

axiom (forall o: ref :: { _System.array2.Length0(o) } 0 <= _System.array2.Length0(o));

axiom (forall o: ref :: { _System.array2.Length1(o) } 0 <= _System.array2.Length1(o));

// array2.: Type axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
     ==> $IsBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg));

// array2.: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg, $h));

// $Is axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array2?(_System.array2$arg)) } 
  $Is($o, Tclass._System.array2?(_System.array2$arg))
     <==> $o == null || dtype($o) == Tclass._System.array2?(_System.array2$arg));

// $IsAlloc axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array2.Length0(ref) : int;

// array2.Length0: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length0($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length0($o), TInt));

// array2.Length0: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length0($o), TInt, $h));

function _System.array2.Length1(ref) : int;

// array2.Length1: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length1($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length1($o), TInt));

// array2.Length1: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length1($o), TInt, $h));

function Tclass._System.array2(Ty) : Ty;

const unique Tagclass._System.array2: TyTag;

// Tclass._System.array2 Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tag(Tclass._System.array2(_System.array2$arg)) == Tagclass._System.array2
     && TagFamily(Tclass._System.array2(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2_0(Ty) : Ty;

// Tclass._System.array2 injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tclass._System.array2_0(Tclass._System.array2(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2(_System.array2$arg)));

// $Is axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array2(_System.array2$arg)) } 
    { $Is(c#0, Tclass._System.array2?(_System.array2$arg)) } 
  $Is(c#0, Tclass._System.array2(_System.array2$arg))
     <==> $Is(c#0, Tclass._System.array2?(_System.array2$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h));

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

const unique class._System.array3?: ClassName;

function Tclass._System.array3?(Ty) : Ty;

const unique Tagclass._System.array3?: TyTag;

// Tclass._System.array3? Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tag(Tclass._System.array3?(_System.array3$arg)) == Tagclass._System.array3?
     && TagFamily(Tclass._System.array3?(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3?_0(Ty) : Ty;

// Tclass._System.array3? injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tclass._System.array3?_0(Tclass._System.array3?(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3?
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3?(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3?(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3?(_System.array3$arg)));

axiom (forall o: ref :: { _System.array3.Length0(o) } 0 <= _System.array3.Length0(o));

axiom (forall o: ref :: { _System.array3.Length1(o) } 0 <= _System.array3.Length1(o));

axiom (forall o: ref :: { _System.array3.Length2(o) } 0 <= _System.array3.Length2(o));

// array3.: Type axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
     ==> $IsBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg));

// array3.: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg, 
      $h));

// $Is axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array3?(_System.array3$arg)) } 
  $Is($o, Tclass._System.array3?(_System.array3$arg))
     <==> $o == null || dtype($o) == Tclass._System.array3?(_System.array3$arg));

// $IsAlloc axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array3.Length0(ref) : int;

// array3.Length0: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length0($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length0($o), TInt));

// array3.Length0: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length0($o), TInt, $h));

function _System.array3.Length1(ref) : int;

// array3.Length1: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length1($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length1($o), TInt));

// array3.Length1: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length1($o), TInt, $h));

function _System.array3.Length2(ref) : int;

// array3.Length2: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length2($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length2($o), TInt));

// array3.Length2: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length2($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length2($o), TInt, $h));

function Tclass._System.array3(Ty) : Ty;

const unique Tagclass._System.array3: TyTag;

// Tclass._System.array3 Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tag(Tclass._System.array3(_System.array3$arg)) == Tagclass._System.array3
     && TagFamily(Tclass._System.array3(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3_0(Ty) : Ty;

// Tclass._System.array3 injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tclass._System.array3_0(Tclass._System.array3(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3(_System.array3$arg)));

// $Is axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array3(_System.array3$arg)) } 
    { $Is(c#0, Tclass._System.array3?(_System.array3$arg)) } 
  $Is(c#0, Tclass._System.array3(_System.array3$arg))
     <==> $Is(c#0, Tclass._System.array3?(_System.array3$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h));

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

// Constructor function declaration
function #_System._tuple#7._#Make7(Box, Box, Box, Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#7._#Make7: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, 
    a#12#1#0: Box, 
    a#12#2#0: Box, 
    a#12#3#0: Box, 
    a#12#4#0: Box, 
    a#12#5#0: Box, 
    a#12#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#12#0#0, a#12#1#0, a#12#2#0, a#12#3#0, a#12#4#0, a#12#5#0, a#12#6#0) } 
  DatatypeCtorId(#_System._tuple#7._#Make7(a#12#0#0, a#12#1#0, a#12#2#0, a#12#3#0, a#12#4#0, a#12#5#0, a#12#6#0))
     == ##_System._tuple#7._#Make7);
}

function _System.Tuple7.___hMake7_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple7.___hMake7_q(d) } 
  _System.Tuple7.___hMake7_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#7._#Make7);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple7.___hMake7_q(d) } 
  _System.Tuple7.___hMake7_q(d)
     ==> (exists a#13#0#0: Box, 
        a#13#1#0: Box, 
        a#13#2#0: Box, 
        a#13#3#0: Box, 
        a#13#4#0: Box, 
        a#13#5#0: Box, 
        a#13#6#0: Box :: 
      d
         == #_System._tuple#7._#Make7(a#13#0#0, a#13#1#0, a#13#2#0, a#13#3#0, a#13#4#0, a#13#5#0, a#13#6#0)));

function Tclass._System.Tuple7(Ty, Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple7: TyTag;

// Tclass._System.Tuple7 Tag
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tag(Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6))
       == Tagclass._System.Tuple7
     && TagFamily(Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6))
       == tytagFamily$_tuple#7);

function Tclass._System.Tuple7_0(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 0
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_0(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T0);

function Tclass._System.Tuple7_1(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 1
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_1(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T1);

function Tclass._System.Tuple7_2(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 2
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_2(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T2);

function Tclass._System.Tuple7_3(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 3
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_3(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T3);

function Tclass._System.Tuple7_4(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 4
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_4(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T4);

function Tclass._System.Tuple7_5(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 5
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_5(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T5);

function Tclass._System.Tuple7_6(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 6
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_6(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T6);

// Box/unbox axiom for Tclass._System.Tuple7
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6)) } 
  $IsBox(bx, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6)));

// Constructor $Is
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    a#14#3#0: Box, 
    a#14#4#0: Box, 
    a#14#5#0: Box, 
    a#14#6#0: Box :: 
  { $Is(#_System._tuple#7._#Make7(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0, a#14#4#0, a#14#5#0, a#14#6#0), 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6)) } 
  $Is(#_System._tuple#7._#Make7(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0, a#14#4#0, a#14#5#0, a#14#6#0), 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     <==> $IsBox(a#14#0#0, _System._tuple#7$T0)
       && $IsBox(a#14#1#0, _System._tuple#7$T1)
       && $IsBox(a#14#2#0, _System._tuple#7$T2)
       && $IsBox(a#14#3#0, _System._tuple#7$T3)
       && $IsBox(a#14#4#0, _System._tuple#7$T4)
       && $IsBox(a#14#5#0, _System._tuple#7$T5)
       && $IsBox(a#14#6#0, _System._tuple#7$T6));

// Constructor $IsAlloc
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    a#14#3#0: Box, 
    a#14#4#0: Box, 
    a#14#5#0: Box, 
    a#14#6#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#7._#Make7(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0, a#14#4#0, a#14#5#0, a#14#6#0), 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#7._#Make7(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0, a#14#4#0, a#14#5#0, a#14#6#0), 
        Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#7$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#7$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#7$T2, $h)
         && $IsAllocBox(a#14#3#0, _System._tuple#7$T3, $h)
         && $IsAllocBox(a#14#4#0, _System._tuple#7$T4, $h)
         && $IsAllocBox(a#14#5#0, _System._tuple#7$T5, $h)
         && $IsAllocBox(a#14#6#0, _System._tuple#7$T6, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._0(d), _System._tuple#7$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._0(d), _System._tuple#7$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._1(d), _System._tuple#7$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._1(d), _System._tuple#7$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._2(d), _System._tuple#7$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._2(d), _System._tuple#7$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._3(d), _System._tuple#7$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._3(d), _System._tuple#7$T3, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T4: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._4(d), _System._tuple#7$T4, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._4(d), _System._tuple#7$T4, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T5: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._5(d), _System._tuple#7$T5, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._5(d), _System._tuple#7$T5, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T6: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._6(d), _System._tuple#7$T6, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._6(d), _System._tuple#7$T6, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, 
    a#15#1#0: Box, 
    a#15#2#0: Box, 
    a#15#3#0: Box, 
    a#15#4#0: Box, 
    a#15#5#0: Box, 
    a#15#6#0: Box :: 
  { #_System._tuple#7._#Make7(Lit(a#15#0#0), 
      Lit(a#15#1#0), 
      Lit(a#15#2#0), 
      Lit(a#15#3#0), 
      Lit(a#15#4#0), 
      Lit(a#15#5#0), 
      Lit(a#15#6#0)) } 
  #_System._tuple#7._#Make7(Lit(a#15#0#0), 
      Lit(a#15#1#0), 
      Lit(a#15#2#0), 
      Lit(a#15#3#0), 
      Lit(a#15#4#0), 
      Lit(a#15#5#0), 
      Lit(a#15#6#0))
     == Lit(#_System._tuple#7._#Make7(a#15#0#0, a#15#1#0, a#15#2#0, a#15#3#0, a#15#4#0, a#15#5#0, a#15#6#0)));

function _System.Tuple7._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, 
    a#16#1#0: Box, 
    a#16#2#0: Box, 
    a#16#3#0: Box, 
    a#16#4#0: Box, 
    a#16#5#0: Box, 
    a#16#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#16#0#0, a#16#1#0, a#16#2#0, a#16#3#0, a#16#4#0, a#16#5#0, a#16#6#0) } 
  _System.Tuple7._0(#_System._tuple#7._#Make7(a#16#0#0, a#16#1#0, a#16#2#0, a#16#3#0, a#16#4#0, a#16#5#0, a#16#6#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, 
    a#17#1#0: Box, 
    a#17#2#0: Box, 
    a#17#3#0: Box, 
    a#17#4#0: Box, 
    a#17#5#0: Box, 
    a#17#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#17#0#0, a#17#1#0, a#17#2#0, a#17#3#0, a#17#4#0, a#17#5#0, a#17#6#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#7._#Make7(a#17#0#0, a#17#1#0, a#17#2#0, a#17#3#0, a#17#4#0, a#17#5#0, a#17#6#0)));

function _System.Tuple7._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, 
    a#18#1#0: Box, 
    a#18#2#0: Box, 
    a#18#3#0: Box, 
    a#18#4#0: Box, 
    a#18#5#0: Box, 
    a#18#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#18#0#0, a#18#1#0, a#18#2#0, a#18#3#0, a#18#4#0, a#18#5#0, a#18#6#0) } 
  _System.Tuple7._1(#_System._tuple#7._#Make7(a#18#0#0, a#18#1#0, a#18#2#0, a#18#3#0, a#18#4#0, a#18#5#0, a#18#6#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, 
    a#19#1#0: Box, 
    a#19#2#0: Box, 
    a#19#3#0: Box, 
    a#19#4#0: Box, 
    a#19#5#0: Box, 
    a#19#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#19#0#0, a#19#1#0, a#19#2#0, a#19#3#0, a#19#4#0, a#19#5#0, a#19#6#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#7._#Make7(a#19#0#0, a#19#1#0, a#19#2#0, a#19#3#0, a#19#4#0, a#19#5#0, a#19#6#0)));

function _System.Tuple7._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, 
    a#20#1#0: Box, 
    a#20#2#0: Box, 
    a#20#3#0: Box, 
    a#20#4#0: Box, 
    a#20#5#0: Box, 
    a#20#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#20#0#0, a#20#1#0, a#20#2#0, a#20#3#0, a#20#4#0, a#20#5#0, a#20#6#0) } 
  _System.Tuple7._2(#_System._tuple#7._#Make7(a#20#0#0, a#20#1#0, a#20#2#0, a#20#3#0, a#20#4#0, a#20#5#0, a#20#6#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, 
    a#21#1#0: Box, 
    a#21#2#0: Box, 
    a#21#3#0: Box, 
    a#21#4#0: Box, 
    a#21#5#0: Box, 
    a#21#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#21#0#0, a#21#1#0, a#21#2#0, a#21#3#0, a#21#4#0, a#21#5#0, a#21#6#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#7._#Make7(a#21#0#0, a#21#1#0, a#21#2#0, a#21#3#0, a#21#4#0, a#21#5#0, a#21#6#0)));

function _System.Tuple7._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#22#0#0: Box, 
    a#22#1#0: Box, 
    a#22#2#0: Box, 
    a#22#3#0: Box, 
    a#22#4#0: Box, 
    a#22#5#0: Box, 
    a#22#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#22#0#0, a#22#1#0, a#22#2#0, a#22#3#0, a#22#4#0, a#22#5#0, a#22#6#0) } 
  _System.Tuple7._3(#_System._tuple#7._#Make7(a#22#0#0, a#22#1#0, a#22#2#0, a#22#3#0, a#22#4#0, a#22#5#0, a#22#6#0))
     == a#22#3#0);

// Inductive rank
axiom (forall a#23#0#0: Box, 
    a#23#1#0: Box, 
    a#23#2#0: Box, 
    a#23#3#0: Box, 
    a#23#4#0: Box, 
    a#23#5#0: Box, 
    a#23#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#23#0#0, a#23#1#0, a#23#2#0, a#23#3#0, a#23#4#0, a#23#5#0, a#23#6#0) } 
  BoxRank(a#23#3#0)
     < DtRank(#_System._tuple#7._#Make7(a#23#0#0, a#23#1#0, a#23#2#0, a#23#3#0, a#23#4#0, a#23#5#0, a#23#6#0)));

function _System.Tuple7._4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#24#0#0: Box, 
    a#24#1#0: Box, 
    a#24#2#0: Box, 
    a#24#3#0: Box, 
    a#24#4#0: Box, 
    a#24#5#0: Box, 
    a#24#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#24#0#0, a#24#1#0, a#24#2#0, a#24#3#0, a#24#4#0, a#24#5#0, a#24#6#0) } 
  _System.Tuple7._4(#_System._tuple#7._#Make7(a#24#0#0, a#24#1#0, a#24#2#0, a#24#3#0, a#24#4#0, a#24#5#0, a#24#6#0))
     == a#24#4#0);

// Inductive rank
axiom (forall a#25#0#0: Box, 
    a#25#1#0: Box, 
    a#25#2#0: Box, 
    a#25#3#0: Box, 
    a#25#4#0: Box, 
    a#25#5#0: Box, 
    a#25#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#25#0#0, a#25#1#0, a#25#2#0, a#25#3#0, a#25#4#0, a#25#5#0, a#25#6#0) } 
  BoxRank(a#25#4#0)
     < DtRank(#_System._tuple#7._#Make7(a#25#0#0, a#25#1#0, a#25#2#0, a#25#3#0, a#25#4#0, a#25#5#0, a#25#6#0)));

function _System.Tuple7._5(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#26#0#0: Box, 
    a#26#1#0: Box, 
    a#26#2#0: Box, 
    a#26#3#0: Box, 
    a#26#4#0: Box, 
    a#26#5#0: Box, 
    a#26#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0, a#26#4#0, a#26#5#0, a#26#6#0) } 
  _System.Tuple7._5(#_System._tuple#7._#Make7(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0, a#26#4#0, a#26#5#0, a#26#6#0))
     == a#26#5#0);

// Inductive rank
axiom (forall a#27#0#0: Box, 
    a#27#1#0: Box, 
    a#27#2#0: Box, 
    a#27#3#0: Box, 
    a#27#4#0: Box, 
    a#27#5#0: Box, 
    a#27#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#27#0#0, a#27#1#0, a#27#2#0, a#27#3#0, a#27#4#0, a#27#5#0, a#27#6#0) } 
  BoxRank(a#27#5#0)
     < DtRank(#_System._tuple#7._#Make7(a#27#0#0, a#27#1#0, a#27#2#0, a#27#3#0, a#27#4#0, a#27#5#0, a#27#6#0)));

function _System.Tuple7._6(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#28#0#0: Box, 
    a#28#1#0: Box, 
    a#28#2#0: Box, 
    a#28#3#0: Box, 
    a#28#4#0: Box, 
    a#28#5#0: Box, 
    a#28#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#28#0#0, a#28#1#0, a#28#2#0, a#28#3#0, a#28#4#0, a#28#5#0, a#28#6#0) } 
  _System.Tuple7._6(#_System._tuple#7._#Make7(a#28#0#0, a#28#1#0, a#28#2#0, a#28#3#0, a#28#4#0, a#28#5#0, a#28#6#0))
     == a#28#6#0);

// Inductive rank
axiom (forall a#29#0#0: Box, 
    a#29#1#0: Box, 
    a#29#2#0: Box, 
    a#29#3#0: Box, 
    a#29#4#0: Box, 
    a#29#5#0: Box, 
    a#29#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#29#0#0, a#29#1#0, a#29#2#0, a#29#3#0, a#29#4#0, a#29#5#0, a#29#6#0) } 
  BoxRank(a#29#6#0)
     < DtRank(#_System._tuple#7._#Make7(a#29#0#0, a#29#1#0, a#29#2#0, a#29#3#0, a#29#4#0, a#29#5#0, a#29#6#0)));

// Depth-one case-split function
function $IsA#_System.Tuple7(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple7(d) } 
  $IsA#_System.Tuple7(d) ==> _System.Tuple7.___hMake7_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    d: DatatypeType :: 
  { _System.Tuple7.___hMake7_q(d), $Is(d, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6)) } 
  $Is(d, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     ==> _System.Tuple7.___hMake7_q(d));

// Datatype extensional equality declaration
function _System.Tuple7#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#7._#Make7
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple7#Equal(a, b) } 
  _System.Tuple7#Equal(a, b)
     <==> _System.Tuple7._0(a) == _System.Tuple7._0(b)
       && _System.Tuple7._1(a) == _System.Tuple7._1(b)
       && _System.Tuple7._2(a) == _System.Tuple7._2(b)
       && _System.Tuple7._3(a) == _System.Tuple7._3(b)
       && _System.Tuple7._4(a) == _System.Tuple7._4(b)
       && _System.Tuple7._5(a) == _System.Tuple7._5(b)
       && _System.Tuple7._6(a) == _System.Tuple7._6(b));

// Datatype extensionality axiom: _System._tuple#7
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple7#Equal(a, b) } 
  _System.Tuple7#Equal(a, b) <==> a == b);

const unique class._System.Tuple7: ClassName;

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#30#0#0: Box, a#30#1#0: Box, a#30#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#30#0#0, a#30#1#0, a#30#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#30#0#0, a#30#1#0, a#30#2#0))
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
     ==> (exists a#31#0#0: Box, a#31#1#0: Box, a#31#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#31#0#0, a#31#1#0, a#31#2#0)));

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
    a#32#0#0: Box, 
    a#32#1#0: Box, 
    a#32#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#32#0#0, a#32#1#0, a#32#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#32#0#0, a#32#1#0, a#32#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#32#0#0, _System._tuple#3$T0)
       && $IsBox(a#32#1#0, _System._tuple#3$T1)
       && $IsBox(a#32#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#32#0#0: Box, 
    a#32#1#0: Box, 
    a#32#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#32#0#0, a#32#1#0, a#32#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#32#0#0, a#32#1#0, a#32#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#32#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#32#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#32#2#0, _System._tuple#3$T2, $h)));

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
axiom (forall a#33#0#0: Box, a#33#1#0: Box, a#33#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#33#0#0), Lit(a#33#1#0), Lit(a#33#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#33#0#0), Lit(a#33#1#0), Lit(a#33#2#0))
     == Lit(#_System._tuple#3._#Make3(a#33#0#0, a#33#1#0, a#33#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#34#0#0: Box, a#34#1#0: Box, a#34#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#34#0#0, a#34#1#0, a#34#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#34#0#0, a#34#1#0, a#34#2#0))
     == a#34#0#0);

// Inductive rank
axiom (forall a#35#0#0: Box, a#35#1#0: Box, a#35#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#35#0#0, a#35#1#0, a#35#2#0) } 
  BoxRank(a#35#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#35#0#0, a#35#1#0, a#35#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#36#0#0: Box, a#36#1#0: Box, a#36#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#36#0#0, a#36#1#0, a#36#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#36#0#0, a#36#1#0, a#36#2#0))
     == a#36#1#0);

// Inductive rank
axiom (forall a#37#0#0: Box, a#37#1#0: Box, a#37#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#37#0#0, a#37#1#0, a#37#2#0) } 
  BoxRank(a#37#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#37#0#0, a#37#1#0, a#37#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#38#0#0: Box, a#38#1#0: Box, a#38#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#38#0#0, a#38#1#0, a#38#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#38#0#0, a#38#1#0, a#38#2#0))
     == a#38#2#0);

// Inductive rank
axiom (forall a#39#0#0: Box, a#39#1#0: Box, a#39#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#39#0#0, a#39#1#0, a#39#2#0) } 
  BoxRank(a#39#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#39#0#0, a#39#1#0, a#39#2#0)));

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

const unique class.ArrayAllocationInitialization.__default: ClassName;

// function declaration for ArrayAllocationInitialization._default.AutoInitF
function ArrayAllocationInitialization.__default.AutoInitF(i#0: int) : int
uses {
// consequence axiom for ArrayAllocationInitialization.__default.AutoInitF
axiom 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.AutoInitF(i#0) } 
    ArrayAllocationInitialization.__default.AutoInitF#canCall(i#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> LitInt(20) <= ArrayAllocationInitialization.__default.AutoInitF(i#0)
         && ArrayAllocationInitialization.__default.AutoInitF(i#0) < 2000000);
// definition axiom for ArrayAllocationInitialization.__default.AutoInitF (revealed)
axiom {:id "id360"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.AutoInitF(i#0) } 
    ArrayAllocationInitialization.__default.AutoInitF#canCall(i#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.AutoInitF(i#0)
         == (if LitInt(20) <= i#0 && i#0 < 30 then i#0 else 78));
// definition axiom for ArrayAllocationInitialization.__default.AutoInitF for all literals (revealed)
axiom {:id "id361"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.AutoInitF(LitInt(i#0)) } 
    ArrayAllocationInitialization.__default.AutoInitF#canCall(LitInt(i#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.AutoInitF(LitInt(i#0))
         == (if LitInt(20) <= LitInt(i#0) && i#0 < 30 then i#0 else 78));
}

function ArrayAllocationInitialization.__default.AutoInitF#canCall(i#0: int) : bool;

function ArrayAllocationInitialization.__default.AutoInitF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.AutoInitF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.AutoInitF#requires(i#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.AutoInitF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.AutoInitF(i#0: int where LitInt(0) <= i#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.ArrayAllocationInitialization.AutoInit() : Ty
uses {
// Tclass.ArrayAllocationInitialization.AutoInit Tag
axiom Tag(Tclass.ArrayAllocationInitialization.AutoInit())
     == Tagclass.ArrayAllocationInitialization.AutoInit
   && TagFamily(Tclass.ArrayAllocationInitialization.AutoInit())
     == tytagFamily$AutoInit;
}

const unique Tagclass.ArrayAllocationInitialization.AutoInit: TyTag;

// Box/unbox axiom for Tclass.ArrayAllocationInitialization.AutoInit
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayAllocationInitialization.AutoInit()) } 
  $IsBox(bx, Tclass.ArrayAllocationInitialization.AutoInit())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.ArrayAllocationInitialization.AutoInit()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.AutoInitF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.AutoInitF(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(20) <= ArrayAllocationInitialization.__default.AutoInitF(i#0)
           && ArrayAllocationInitialization.__default.AutoInitF(i#0) < 2000000;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (LitInt(20) <= i#0)
        {
        }

        if (LitInt(20) <= i#0 && i#0 < 30)
        {
            newtype$check#0 := i#0;
            assert {:id "id362"} LitInt(20) <= newtype$check#0 && newtype$check#0 < 2000000;
            newtype$check#1 := i#0;
            assert {:id "id363"} LitInt(20) <= newtype$check#1 && newtype$check#1 < 2000000;
            assume {:id "id364"} ArrayAllocationInitialization.__default.AutoInitF(i#0) == i#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.AutoInitF(i#0), 
              Tclass.ArrayAllocationInitialization.AutoInit());
            return;
        }
        else
        {
            newtype$check#2 := LitInt(78);
            assert {:id "id365"} LitInt(20) <= newtype$check#2 && newtype$check#2 < 2000000;
            assume {:id "id366"} ArrayAllocationInitialization.__default.AutoInitF(i#0) == LitInt(78);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.AutoInitF(i#0), 
              Tclass.ArrayAllocationInitialization.AutoInit());
            return;
        }

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.NonAutoInitF
function ArrayAllocationInitialization.__default.NonAutoInitF(i#0: int) : int
uses {
// consequence axiom for ArrayAllocationInitialization.__default.NonAutoInitF
axiom 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.NonAutoInitF(i#0) } 
    ArrayAllocationInitialization.__default.NonAutoInitF#canCall(i#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> LitInt(20) <= ArrayAllocationInitialization.__default.NonAutoInitF(i#0)
         && ArrayAllocationInitialization.__default.NonAutoInitF(i#0) < 2000000);
// definition axiom for ArrayAllocationInitialization.__default.NonAutoInitF (revealed)
axiom {:id "id367"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.NonAutoInitF(i#0) } 
    ArrayAllocationInitialization.__default.NonAutoInitF#canCall(i#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.NonAutoInitF(i#0) == LitInt(82));
// definition axiom for ArrayAllocationInitialization.__default.NonAutoInitF for all literals (revealed)
axiom {:id "id368"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.NonAutoInitF(LitInt(i#0)) } 
    ArrayAllocationInitialization.__default.NonAutoInitF#canCall(LitInt(i#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.NonAutoInitF(LitInt(i#0)) == LitInt(82));
}

function ArrayAllocationInitialization.__default.NonAutoInitF#canCall(i#0: int) : bool;

function ArrayAllocationInitialization.__default.NonAutoInitF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.NonAutoInitF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.NonAutoInitF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.NonAutoInitF#requires(i#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.NonAutoInitF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.NonAutoInitF(i#0: int where LitInt(0) <= i#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.ArrayAllocationInitialization.NonAutoInit() : Ty
uses {
// Tclass.ArrayAllocationInitialization.NonAutoInit Tag
axiom Tag(Tclass.ArrayAllocationInitialization.NonAutoInit())
     == Tagclass.ArrayAllocationInitialization.NonAutoInit
   && TagFamily(Tclass.ArrayAllocationInitialization.NonAutoInit())
     == tytagFamily$NonAutoInit;
}

const unique Tagclass.ArrayAllocationInitialization.NonAutoInit: TyTag;

// Box/unbox axiom for Tclass.ArrayAllocationInitialization.NonAutoInit
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayAllocationInitialization.NonAutoInit()) } 
  $IsBox(bx, Tclass.ArrayAllocationInitialization.NonAutoInit())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.ArrayAllocationInitialization.NonAutoInit()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.NonAutoInitF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.NonAutoInitF(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(20) <= ArrayAllocationInitialization.__default.NonAutoInitF(i#0)
           && ArrayAllocationInitialization.__default.NonAutoInitF(i#0) < 2000000;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := LitInt(82);
        assert {:id "id369"} LitInt(20) <= newtype$check#0 && newtype$check#0 < 2000000;
        assume {:id "id370"} ArrayAllocationInitialization.__default.NonAutoInitF(i#0) == LitInt(82);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(ArrayAllocationInitialization.__default.NonAutoInitF(i#0), 
          Tclass.ArrayAllocationInitialization.NonAutoInit());
        return;

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.ByteF
function ArrayAllocationInitialization.__default.ByteF(i#0: int) : int
uses {
// consequence axiom for ArrayAllocationInitialization.__default.ByteF
axiom 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.ByteF(i#0) } 
    ArrayAllocationInitialization.__default.ByteF#canCall(i#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> LitInt(0) <= ArrayAllocationInitialization.__default.ByteF(i#0)
         && ArrayAllocationInitialization.__default.ByteF(i#0) < 256);
// definition axiom for ArrayAllocationInitialization.__default.ByteF (revealed)
axiom {:id "id371"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.ByteF(i#0) } 
    ArrayAllocationInitialization.__default.ByteF#canCall(i#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.ByteF(i#0)
         == (if LitInt(20) <= i#0 && i#0 < 30 then i#0 else 60));
// definition axiom for ArrayAllocationInitialization.__default.ByteF for all literals (revealed)
axiom {:id "id372"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.ByteF(LitInt(i#0)) } 
    ArrayAllocationInitialization.__default.ByteF#canCall(LitInt(i#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.ByteF(LitInt(i#0))
         == (if LitInt(20) <= LitInt(i#0) && i#0 < 30 then i#0 else 60));
}

function ArrayAllocationInitialization.__default.ByteF#canCall(i#0: int) : bool;

function ArrayAllocationInitialization.__default.ByteF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.ByteF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.ByteF#requires(i#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.ByteF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.ByteF(i#0: int where LitInt(0) <= i#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.ArrayAllocationInitialization.byte() : Ty
uses {
// Tclass.ArrayAllocationInitialization.byte Tag
axiom Tag(Tclass.ArrayAllocationInitialization.byte())
     == Tagclass.ArrayAllocationInitialization.byte
   && TagFamily(Tclass.ArrayAllocationInitialization.byte()) == tytagFamily$byte;
}

const unique Tagclass.ArrayAllocationInitialization.byte: TyTag;

// Box/unbox axiom for Tclass.ArrayAllocationInitialization.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayAllocationInitialization.byte()) } 
  $IsBox(bx, Tclass.ArrayAllocationInitialization.byte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.ArrayAllocationInitialization.byte()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.ByteF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.ByteF(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= ArrayAllocationInitialization.__default.ByteF(i#0)
           && ArrayAllocationInitialization.__default.ByteF(i#0) < 256;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (LitInt(20) <= i#0)
        {
        }

        if (LitInt(20) <= i#0 && i#0 < 30)
        {
            newtype$check#0 := i#0;
            assert {:id "id373"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
            newtype$check#1 := i#0;
            assert {:id "id374"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
            assume {:id "id375"} ArrayAllocationInitialization.__default.ByteF(i#0) == i#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.ByteF(i#0), 
              Tclass.ArrayAllocationInitialization.byte());
            return;
        }
        else
        {
            newtype$check#2 := LitInt(60);
            assert {:id "id376"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
            assume {:id "id377"} ArrayAllocationInitialization.__default.ByteF(i#0) == LitInt(60);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.ByteF(i#0), 
              Tclass.ArrayAllocationInitialization.byte());
            return;
        }

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.CharF
function ArrayAllocationInitialization.__default.CharF(i#0: int) : char
uses {
// consequence axiom for ArrayAllocationInitialization.__default.CharF
axiom 0 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.CharF(i#0) } 
    ArrayAllocationInitialization.__default.CharF#canCall(i#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> $Is(ArrayAllocationInitialization.__default.CharF(i#0), TChar));
// definition axiom for ArrayAllocationInitialization.__default.CharF (revealed)
axiom {:id "id378"} 0 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { ArrayAllocationInitialization.__default.CharF(i#0) } 
    ArrayAllocationInitialization.__default.CharF#canCall(i#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.CharF(i#0)
         == (if LitInt(20) <= i#0 && i#0 < 30
           then char#Plus(char#FromInt(97), char#FromInt(i#0 - 20))
           else char#FromInt(103)));
// definition axiom for ArrayAllocationInitialization.__default.CharF for all literals (revealed)
axiom {:id "id379"} 0 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.CharF(LitInt(i#0)) } 
    ArrayAllocationInitialization.__default.CharF#canCall(LitInt(i#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> ArrayAllocationInitialization.__default.CharF(LitInt(i#0))
         == (if LitInt(20) <= LitInt(i#0) && i#0 < 30
           then char#Plus(char#FromInt(97), char#FromInt(LitInt(i#0 - 20)))
           else char#FromInt(103)));
}

function ArrayAllocationInitialization.__default.CharF#canCall(i#0: int) : bool;

function ArrayAllocationInitialization.__default.CharF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.CharF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.CharF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.CharF#requires(i#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.CharF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.CharF(i#0: int where LitInt(0) <= i#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.CharF (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.CharF(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(ArrayAllocationInitialization.__default.CharF(i#0), TChar);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (LitInt(20) <= i#0)
        {
        }

        if (LitInt(20) <= i#0 && i#0 < 30)
        {
            newtype$check#0 := i#0 - 20;
            assert {:id "id380"} char#IsChar(newtype$check#0);
            assert {:id "id381"} char#IsChar(char#ToInt(Lit(char#FromInt(97))) + char#ToInt(char#FromInt(i#0 - 20)));
            assume {:id "id382"} ArrayAllocationInitialization.__default.CharF(i#0)
               == char#Plus(char#FromInt(97), char#FromInt(i#0 - 20));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.CharF(i#0), TChar);
            return;
        }
        else
        {
            assume {:id "id383"} ArrayAllocationInitialization.__default.CharF(i#0) == Lit(char#FromInt(103));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.CharF(i#0), TChar);
            return;
        }

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.AutoInitF2
function ArrayAllocationInitialization.__default.AutoInitF2(i#0: int, j#0: int) : int
uses {
// consequence axiom for ArrayAllocationInitialization.__default.AutoInitF2
axiom 1 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) } 
    ArrayAllocationInitialization.__default.AutoInitF2#canCall(i#0, j#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> LitInt(20) <= ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0)
         && ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) < 2000000);
// definition axiom for ArrayAllocationInitialization.__default.AutoInitF2 (revealed)
axiom {:id "id384"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) } 
    ArrayAllocationInitialization.__default.AutoInitF2#canCall(i#0, j#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0)
         == (if i#0 == j#0 then 50 else 78));
// definition axiom for ArrayAllocationInitialization.__default.AutoInitF2 for all literals (revealed)
axiom {:id "id385"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.AutoInitF2(LitInt(i#0), LitInt(j#0)) } 
    ArrayAllocationInitialization.__default.AutoInitF2#canCall(LitInt(i#0), LitInt(j#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> ArrayAllocationInitialization.__default.AutoInitF2(LitInt(i#0), LitInt(j#0))
         == (if LitInt(i#0) == LitInt(j#0) then 50 else 78));
}

function ArrayAllocationInitialization.__default.AutoInitF2#canCall(i#0: int, j#0: int) : bool;

function ArrayAllocationInitialization.__default.AutoInitF2#requires(int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.AutoInitF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF2#requires(i#0, j#0) } 
  LitInt(0) <= i#0 && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.AutoInitF2#requires(i#0, j#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.AutoInitF2 (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.AutoInitF2(i#0: int where LitInt(0) <= i#0, j#0: int where LitInt(0) <= j#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.AutoInitF2 (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.AutoInitF2(i#0: int, j#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(20) <= ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0)
           && ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) < 2000000;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (i#0 == j#0)
        {
            newtype$check#0 := LitInt(50);
            assert {:id "id386"} LitInt(20) <= newtype$check#0 && newtype$check#0 < 2000000;
            assume {:id "id387"} ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) == LitInt(50);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0), 
              Tclass.ArrayAllocationInitialization.AutoInit());
            return;
        }
        else
        {
            newtype$check#1 := LitInt(78);
            assert {:id "id388"} LitInt(20) <= newtype$check#1 && newtype$check#1 < 2000000;
            assume {:id "id389"} ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) == LitInt(78);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0), 
              Tclass.ArrayAllocationInitialization.AutoInit());
            return;
        }

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.ByteF2
function ArrayAllocationInitialization.__default.ByteF2(i#0: int, j#0: int) : int
uses {
// consequence axiom for ArrayAllocationInitialization.__default.ByteF2
axiom 1 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) } 
    ArrayAllocationInitialization.__default.ByteF2#canCall(i#0, j#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> LitInt(0) <= ArrayAllocationInitialization.__default.ByteF2(i#0, j#0)
         && ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) < 256);
// definition axiom for ArrayAllocationInitialization.__default.ByteF2 (revealed)
axiom {:id "id390"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) } 
    ArrayAllocationInitialization.__default.ByteF2#canCall(i#0, j#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> ArrayAllocationInitialization.__default.ByteF2(i#0, j#0)
         == (if i#0 == j#0 then 50 else 60));
// definition axiom for ArrayAllocationInitialization.__default.ByteF2 for all literals (revealed)
axiom {:id "id391"} 1 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.ByteF2(LitInt(i#0), LitInt(j#0)) } 
    ArrayAllocationInitialization.__default.ByteF2#canCall(LitInt(i#0), LitInt(j#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> ArrayAllocationInitialization.__default.ByteF2(LitInt(i#0), LitInt(j#0))
         == (if LitInt(i#0) == LitInt(j#0) then 50 else 60));
}

function ArrayAllocationInitialization.__default.ByteF2#canCall(i#0: int, j#0: int) : bool;

function ArrayAllocationInitialization.__default.ByteF2#requires(int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.ByteF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF2#requires(i#0, j#0) } 
  LitInt(0) <= i#0 && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.ByteF2#requires(i#0, j#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.ByteF2 (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.ByteF2(i#0: int where LitInt(0) <= i#0, j#0: int where LitInt(0) <= j#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.ByteF2 (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.ByteF2(i#0: int, j#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= ArrayAllocationInitialization.__default.ByteF2(i#0, j#0)
           && ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) < 256;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (i#0 == j#0)
        {
            newtype$check#0 := LitInt(50);
            assert {:id "id392"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
            assume {:id "id393"} ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) == LitInt(50);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.ByteF2(i#0, j#0), 
              Tclass.ArrayAllocationInitialization.byte());
            return;
        }
        else
        {
            newtype$check#1 := LitInt(60);
            assert {:id "id394"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
            assume {:id "id395"} ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) == LitInt(60);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.ByteF2(i#0, j#0), 
              Tclass.ArrayAllocationInitialization.byte());
            return;
        }

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.CharF2
function ArrayAllocationInitialization.__default.CharF2(i#0: int, j#0: int) : char
uses {
// consequence axiom for ArrayAllocationInitialization.__default.CharF2
axiom 0 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { ArrayAllocationInitialization.__default.CharF2(i#0, j#0) } 
    ArrayAllocationInitialization.__default.CharF2#canCall(i#0, j#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> $Is(ArrayAllocationInitialization.__default.CharF2(i#0, j#0), TChar));
// definition axiom for ArrayAllocationInitialization.__default.CharF2 (revealed)
axiom {:id "id396"} 0 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { ArrayAllocationInitialization.__default.CharF2(i#0, j#0) } 
    ArrayAllocationInitialization.__default.CharF2#canCall(i#0, j#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> ArrayAllocationInitialization.__default.CharF2(i#0, j#0)
         == (if i#0 == j#0 then char#FromInt(97) else char#FromInt(103)));
// definition axiom for ArrayAllocationInitialization.__default.CharF2 for all literals (revealed)
axiom {:id "id397"} 0 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    {:weight 3} { ArrayAllocationInitialization.__default.CharF2(LitInt(i#0), LitInt(j#0)) } 
    ArrayAllocationInitialization.__default.CharF2#canCall(LitInt(i#0), LitInt(j#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0 && LitInt(0) <= j#0)
       ==> ArrayAllocationInitialization.__default.CharF2(LitInt(i#0), LitInt(j#0))
         == (if LitInt(i#0) == LitInt(j#0) then char#FromInt(97) else char#FromInt(103)));
}

function ArrayAllocationInitialization.__default.CharF2#canCall(i#0: int, j#0: int) : bool;

function ArrayAllocationInitialization.__default.CharF2#requires(int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.CharF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.CharF2#requires(i#0, j#0) } 
  LitInt(0) <= i#0 && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.CharF2#requires(i#0, j#0) == true);

procedure {:verboseName "ArrayAllocationInitialization.CharF2 (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.CharF2(i#0: int where LitInt(0) <= i#0, j#0: int where LitInt(0) <= j#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.Test (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.Test (call)"} Call$$ArrayAllocationInitialization.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.Test (correctness)"} Impl$$ArrayAllocationInitialization.__default.Test() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function ArrayAllocationInitialization.__default.AutoInitF#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
      $fh$0x#0) } 
  Apply1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
      $fh$0x#0)
     == $Box(ArrayAllocationInitialization.__default.AutoInitF($Unbox($fh$0x#0): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
      $fh$0x#0) } 
  Requires1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
      $fh$0x#0)
     == ArrayAllocationInitialization.__default.AutoInitF#requires($Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.AutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.AutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF($fh$0x#0), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.AutoInitF($fh$0x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.AutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
        $Box($fh$0x#0))): int);

function ArrayAllocationInitialization.__default.ByteF#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF#Handle(), 
      $fh$0x#0) } 
  Apply1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF#Handle(), 
      $fh$0x#0)
     == $Box(ArrayAllocationInitialization.__default.ByteF($Unbox($fh$0x#0): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF#Handle(), 
      $fh$0x#0) } 
  Requires1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF#Handle(), 
      $fh$0x#0)
     == ArrayAllocationInitialization.__default.ByteF#requires($Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.byte(), 
        $heap, 
        ArrayAllocationInitialization.__default.ByteF#Handle(), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.byte(), 
        $heap, 
        ArrayAllocationInitialization.__default.ByteF#Handle(), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF($fh$0x#0), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.ByteF($fh$0x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.byte(), 
        $heap, 
        ArrayAllocationInitialization.__default.ByteF#Handle(), 
        $Box($fh$0x#0))): int);

function ArrayAllocationInitialization.__default.CharF#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF#Handle(), 
      $fh$0x#0) } 
  Apply1(Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF#Handle(), 
      $fh$0x#0)
     == $Box(ArrayAllocationInitialization.__default.CharF($Unbox($fh$0x#0): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF#Handle(), 
      $fh$0x#0) } 
  Requires1(Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF#Handle(), 
      $fh$0x#0)
     == ArrayAllocationInitialization.__default.CharF#requires($Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), 
        TChar, 
        $heap, 
        ArrayAllocationInitialization.__default.CharF#Handle(), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), 
        TChar, 
        $heap, 
        ArrayAllocationInitialization.__default.CharF#Handle(), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int :: 
  { ArrayAllocationInitialization.__default.CharF($fh$0x#0), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.CharF($fh$0x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        TChar, 
        $heap, 
        ArrayAllocationInitialization.__default.CharF#Handle(), 
        $Box($fh$0x#0))): char);

function ArrayAllocationInitialization.__default.AutoInitF2#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(ArrayAllocationInitialization.__default.AutoInitF2($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Requires2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.AutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1)
     == ArrayAllocationInitialization.__default.AutoInitF2#requires($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.AutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.AutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int, $fh$0x#1: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF2($fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.AutoInitF2($fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.AutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
        $Box($fh$0x#0), 
        $Box($fh$0x#1))): int);

function ArrayAllocationInitialization.__default.ByteF2#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(ArrayAllocationInitialization.__default.ByteF2($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Requires2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.byte(), 
      $heap, 
      ArrayAllocationInitialization.__default.ByteF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1)
     == ArrayAllocationInitialization.__default.ByteF2#requires($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.byte(), 
        $heap, 
        ArrayAllocationInitialization.__default.ByteF2#Handle(), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.byte(), 
        $heap, 
        ArrayAllocationInitialization.__default.ByteF2#Handle(), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int, $fh$0x#1: int :: 
  { ArrayAllocationInitialization.__default.ByteF2($fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.ByteF2($fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.byte(), 
        $heap, 
        ArrayAllocationInitialization.__default.ByteF2#Handle(), 
        $Box($fh$0x#0), 
        $Box($fh$0x#1))): int);

function ArrayAllocationInitialization.__default.CharF2#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(ArrayAllocationInitialization.__default.CharF2($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Requires2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TChar, 
      $heap, 
      ArrayAllocationInitialization.__default.CharF2#Handle(), 
      $fh$0x#0, 
      $fh$0x#1)
     == ArrayAllocationInitialization.__default.CharF2#requires($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        TChar, 
        $heap, 
        ArrayAllocationInitialization.__default.CharF2#Handle(), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        TChar, 
        $heap, 
        ArrayAllocationInitialization.__default.CharF2#Handle(), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int, $fh$0x#1: int :: 
  { ArrayAllocationInitialization.__default.CharF2($fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.CharF2($fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        TChar, 
        $heap, 
        ArrayAllocationInitialization.__default.CharF2#Handle(), 
        $Box($fh$0x#0), 
        $Box($fh$0x#1))): char);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.Test (correctness)"} Impl$$ArrayAllocationInitialization.__default.Test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var initF##0: HandleType;
  var initF##1: HandleType;
  var initF##2: HandleType;
  var initF2##0: HandleType;
  var initF2##1: HandleType;
  var initF2##2: HandleType;

    // AddMethodImpl: Test, Impl$$ArrayAllocationInitialization.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(577,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id400"} Call$$ArrayAllocationInitialization.__default.TestAutoInit();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(578,22)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id401"} 1 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    initF##0 := ArrayAllocationInitialization.__default.AutoInitF#Handle();
    call {:id "id402"} Call$$ArrayAllocationInitialization.__default.TestTypeParameter(Tclass.ArrayAllocationInitialization.AutoInit(), initF##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(580,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id403"} Call$$ArrayAllocationInitialization.__default.TestNonAutoInit();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(582,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id404"} Call$$ArrayAllocationInitialization.__default.TestByte();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(583,22)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id405"} 1 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    initF##1 := ArrayAllocationInitialization.__default.ByteF#Handle();
    call {:id "id406"} Call$$ArrayAllocationInitialization.__default.TestTypeParameter(Tclass.ArrayAllocationInitialization.byte(), initF##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(585,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id407"} Call$$ArrayAllocationInitialization.__default.TestChar();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(586,22)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id408"} 0 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    initF##2 := ArrayAllocationInitialization.__default.CharF#Handle();
    call {:id "id409"} Call$$ArrayAllocationInitialization.__default.TestTypeParameter(TChar, initF##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(588,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id410"} Call$$ArrayAllocationInitialization.__default.TestMatrixAutoInit();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(589,28)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id411"} 1 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    initF2##0 := ArrayAllocationInitialization.__default.AutoInitF2#Handle();
    call {:id "id412"} Call$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(Tclass.ArrayAllocationInitialization.AutoInit(), initF2##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(590,28)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id413"} 1 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    initF2##1 := ArrayAllocationInitialization.__default.ByteF2#Handle();
    call {:id "id414"} Call$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(Tclass.ArrayAllocationInitialization.byte(), initF2##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(591,28)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id415"} 0 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    initF2##2 := ArrayAllocationInitialization.__default.CharF2#Handle();
    call {:id "id416"} Call$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(TChar, initF2##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ArrayAllocationInitialization.TestAutoInit (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestAutoInit();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestAutoInit (call)"} Call$$ArrayAllocationInitialization.__default.TestAutoInit();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestAutoInit (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestAutoInit() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestAutoInit (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestAutoInit() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.AutoInit()))
       && $IsAlloc(a#0, 
        Tclass._System.array(Tclass.ArrayAllocationInitialization.AutoInit()), 
        $Heap);
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass.ArrayAllocationInitialization.AutoInit()))
       && $IsAlloc(s#0, TSeq(Tclass.ArrayAllocationInitialization.AutoInit()), $Heap);
  var $nw: ref;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var newtype$check#9: int;

    // AddMethodImpl: TestAutoInit, Impl$$ArrayAllocationInitialization.__default.TestAutoInit
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(595,20)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(5);
    zero#0 := $rhs#0;
    five#0 := $rhs#1;
    havoc a#0 /* where $Is(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.AutoInit()))
       && $IsAlloc(a#0, 
        Tclass._System.array(Tclass.ArrayAllocationInitialization.AutoInit()), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(597,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(599,7)
    assume true;
    assert {:id "id422"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(600,7)
    assume true;
    assert {:id "id424"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(601,7)
    assume true;
    assert {:id "id426"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(602,7)
    assume true;
    assert {:id "id428"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(603,7)
    assume true;
    assert {:id "id430"} 0 <= zero#0;
    assert {:id "id431"} zero#0 == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(604,7)
    assume true;
    assert {:id "id433"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(605,7)
    assume true;
    assert {:id "id435"} 0 <= LitInt(0);
    assert {:id "id436"} LitInt(0) == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(0);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(606,7)
    assume true;
    assert {:id "id438"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(607,7)
    assume true;
    assert {:id "id440"} 0 <= five#0;
    assert {:id "id441"} five#0 == 5;
    newtype$check#0 := LitInt(20);
    assert {:id "id442"} LitInt(20) <= newtype$check#0 && newtype$check#0 < 2000000;
    newtype$check#1 := LitInt(21);
    assert {:id "id443"} LitInt(20) <= newtype$check#1 && newtype$check#1 < 2000000;
    newtype$check#2 := LitInt(22);
    assert {:id "id444"} LitInt(20) <= newtype$check#2 && newtype$check#2 < 2000000;
    newtype$check#3 := LitInt(23);
    assert {:id "id445"} LitInt(20) <= newtype$check#3 && newtype$check#3 < 2000000;
    newtype$check#4 := LitInt(24);
    assert {:id "id446"} LitInt(20) <= newtype$check#4 && newtype$check#4 < 2000000;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assume $Unbox(read($Heap, $nw, IndexField(0))): int == LitInt(20);
    assume $Unbox(read($Heap, $nw, IndexField(1))): int == LitInt(21);
    assume $Unbox(read($Heap, $nw, IndexField(2))): int == LitInt(22);
    assume $Unbox(read($Heap, $nw, IndexField(3))): int == LitInt(23);
    assume $Unbox(read($Heap, $nw, IndexField(4))): int == LitInt(24);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(608,7)
    assume true;
    assert {:id "id448"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(609,7)
    assume true;
    assert {:id "id450"} 0 <= LitInt(5);
    assert {:id "id451"} LitInt(5) == 5;
    newtype$check#5 := LitInt(20);
    assert {:id "id452"} LitInt(20) <= newtype$check#5 && newtype$check#5 < 2000000;
    newtype$check#6 := LitInt(21);
    assert {:id "id453"} LitInt(20) <= newtype$check#6 && newtype$check#6 < 2000000;
    newtype$check#7 := LitInt(22);
    assert {:id "id454"} LitInt(20) <= newtype$check#7 && newtype$check#7 < 2000000;
    newtype$check#8 := LitInt(23);
    assert {:id "id455"} LitInt(20) <= newtype$check#8 && newtype$check#8 < 2000000;
    newtype$check#9 := LitInt(24);
    assert {:id "id456"} LitInt(20) <= newtype$check#9 && newtype$check#9 < 2000000;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    assume $Unbox(read($Heap, $nw, IndexField(0))): int == LitInt(20);
    assume $Unbox(read($Heap, $nw, IndexField(1))): int == LitInt(21);
    assume $Unbox(read($Heap, $nw, IndexField(2))): int == LitInt(22);
    assume $Unbox(read($Heap, $nw, IndexField(3))): int == LitInt(23);
    assume $Unbox(read($Heap, $nw, IndexField(4))): int == LitInt(24);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(610,7)
    assume true;
    assert {:id "id458"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(611,7)
    assume true;
    assert {:id "id460"} 0 <= zero#0;
    assert {:id "id461"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    assert {:id "id462"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> Requires1(Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.AutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): int
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.AutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
              $Box(arrayinit#0#i0#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(612,7)
    assume true;
    assert {:id "id464"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(613,7)
    assume true;
    assert {:id "id466"} 0 <= five#0;
    assert {:id "id467"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assert {:id "id468"} {:subsumption 0} (forall arrayinit#1#i0#0: int :: 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> Requires1(Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.AutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
          $Box(arrayinit#1#i0#0)));
    assume (forall arrayinit#1#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#1#i0#0)) } 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#1#i0#0))): int
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.AutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.AutoInitF#Handle(), 
              $Box(arrayinit#1#i0#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(614,7)
    assume true;
    assert {:id "id470"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(616,5)
    assume true;
    assume true;
}



procedure {:verboseName "ArrayAllocationInitialization.TestNonAutoInit (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestNonAutoInit();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestNonAutoInit (call)"} Call$$ArrayAllocationInitialization.__default.TestNonAutoInit();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestNonAutoInit (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestNonAutoInit() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function ArrayAllocationInitialization.__default.NonAutoInitF#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.NonAutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
      $fh$0x#0) } 
  Apply1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.NonAutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
      $fh$0x#0)
     == $Box(ArrayAllocationInitialization.__default.NonAutoInitF($Unbox($fh$0x#0): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.NonAutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
      $fh$0x#0) } 
  Requires1(Tclass._System.nat(), 
      Tclass.ArrayAllocationInitialization.NonAutoInit(), 
      $heap, 
      ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
      $fh$0x#0)
     == ArrayAllocationInitialization.__default.NonAutoInitF#requires($Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.NonAutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.NonAutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int :: 
  { ArrayAllocationInitialization.__default.NonAutoInitF($fh$0x#0), $IsGoodHeap($heap) } 
  ArrayAllocationInitialization.__default.NonAutoInitF($fh$0x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        Tclass.ArrayAllocationInitialization.NonAutoInit(), 
        $heap, 
        ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
        $Box($fh$0x#0))): int);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestNonAutoInit (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestNonAutoInit() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.NonAutoInit()))
       && $IsAlloc(a#0, 
        Tclass._System.array(Tclass.ArrayAllocationInitialization.NonAutoInit()), 
        $Heap);
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass.ArrayAllocationInitialization.NonAutoInit()))
       && $IsAlloc(s#0, TSeq(Tclass.ArrayAllocationInitialization.NonAutoInit()), $Heap);
  var $nw: ref;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;

    // AddMethodImpl: TestNonAutoInit, Impl$$ArrayAllocationInitialization.__default.TestNonAutoInit
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(620,20)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(5);
    zero#0 := $rhs#0;
    five#0 := $rhs#1;
    havoc a#0 /* where $Is(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.NonAutoInit()))
       && $IsAlloc(a#0, 
        Tclass._System.array(Tclass.ArrayAllocationInitialization.NonAutoInit()), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(622,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(624,7)
    assume true;
    assert {:id "id477"} 0 <= zero#0;
    assert {:id "id478"} 0 == zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(625,7)
    assume true;
    assert {:id "id480"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(627,7)
    assume true;
    newtype$check#0 := LitInt(99);
    assert {:id "id482"} LitInt(20) <= newtype$check#0 && newtype$check#0 < 2000000;
    newtype$check#1 := LitInt(99);
    assert {:id "id483"} LitInt(20) <= newtype$check#1 && newtype$check#1 < 2000000;
    newtype$check#2 := LitInt(99);
    assert {:id "id484"} LitInt(20) <= newtype$check#2 && newtype$check#2 < 2000000;
    newtype$check#3 := LitInt(99);
    assert {:id "id485"} LitInt(20) <= newtype$check#3 && newtype$check#3 < 2000000;
    newtype$check#4 := LitInt(99);
    assert {:id "id486"} LitInt(20) <= newtype$check#4 && newtype$check#4 < 2000000;
    newtype$check#5 := LitInt(99);
    assert {:id "id487"} LitInt(20) <= newtype$check#5 && newtype$check#5 < 2000000;
    assume true;
    s#0 := Seq#Append(s#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(99))), $Box(LitInt(99))), 
            $Box(LitInt(99))), 
          $Box(LitInt(99))), 
        $Box(LitInt(99))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(628,7)
    assume true;
    assert {:id "id489"} 0 <= zero#0;
    assert {:id "id490"} zero#0 == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(629,7)
    assume true;
    assert {:id "id492"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(630,7)
    assume true;
    assert {:id "id494"} 0 <= LitInt(0);
    assert {:id "id495"} LitInt(0) == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(0);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(631,7)
    assume true;
    assert {:id "id497"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(632,7)
    assume true;
    assert {:id "id499"} 0 <= five#0;
    assert {:id "id500"} five#0 == 5;
    newtype$check#6 := LitInt(20);
    assert {:id "id501"} LitInt(20) <= newtype$check#6 && newtype$check#6 < 2000000;
    newtype$check#7 := LitInt(21);
    assert {:id "id502"} LitInt(20) <= newtype$check#7 && newtype$check#7 < 2000000;
    newtype$check#8 := LitInt(22);
    assert {:id "id503"} LitInt(20) <= newtype$check#8 && newtype$check#8 < 2000000;
    newtype$check#9 := LitInt(23);
    assert {:id "id504"} LitInt(20) <= newtype$check#9 && newtype$check#9 < 2000000;
    newtype$check#10 := LitInt(24);
    assert {:id "id505"} LitInt(20) <= newtype$check#10 && newtype$check#10 < 2000000;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assume $Unbox(read($Heap, $nw, IndexField(0))): int == LitInt(20);
    assume $Unbox(read($Heap, $nw, IndexField(1))): int == LitInt(21);
    assume $Unbox(read($Heap, $nw, IndexField(2))): int == LitInt(22);
    assume $Unbox(read($Heap, $nw, IndexField(3))): int == LitInt(23);
    assume $Unbox(read($Heap, $nw, IndexField(4))): int == LitInt(24);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(633,7)
    assume true;
    assert {:id "id507"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(634,7)
    assume true;
    assert {:id "id509"} 0 <= LitInt(5);
    assert {:id "id510"} LitInt(5) == 5;
    newtype$check#11 := LitInt(20);
    assert {:id "id511"} LitInt(20) <= newtype$check#11 && newtype$check#11 < 2000000;
    newtype$check#12 := LitInt(21);
    assert {:id "id512"} LitInt(20) <= newtype$check#12 && newtype$check#12 < 2000000;
    newtype$check#13 := LitInt(22);
    assert {:id "id513"} LitInt(20) <= newtype$check#13 && newtype$check#13 < 2000000;
    newtype$check#14 := LitInt(23);
    assert {:id "id514"} LitInt(20) <= newtype$check#14 && newtype$check#14 < 2000000;
    newtype$check#15 := LitInt(24);
    assert {:id "id515"} LitInt(20) <= newtype$check#15 && newtype$check#15 < 2000000;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    assume $Unbox(read($Heap, $nw, IndexField(0))): int == LitInt(20);
    assume $Unbox(read($Heap, $nw, IndexField(1))): int == LitInt(21);
    assume $Unbox(read($Heap, $nw, IndexField(2))): int == LitInt(22);
    assume $Unbox(read($Heap, $nw, IndexField(3))): int == LitInt(23);
    assume $Unbox(read($Heap, $nw, IndexField(4))): int == LitInt(24);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(635,7)
    assume true;
    assert {:id "id517"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(636,7)
    assume true;
    assert {:id "id519"} 0 <= zero#0;
    assert {:id "id520"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    assert {:id "id521"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> Requires1(Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.NonAutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): int
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.NonAutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
              $Box(arrayinit#0#i0#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(637,7)
    assume true;
    assert {:id "id523"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(638,7)
    assume true;
    assert {:id "id525"} 0 <= five#0;
    assert {:id "id526"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.NonAutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assert {:id "id527"} {:subsumption 0} (forall arrayinit#1#i0#0: int :: 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> Requires1(Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.NonAutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
          $Box(arrayinit#1#i0#0)));
    assume (forall arrayinit#1#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#1#i0#0)) } 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#1#i0#0))): int
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.NonAutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.NonAutoInitF#Handle(), 
              $Box(arrayinit#1#i0#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(639,7)
    assume true;
    assert {:id "id529"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(641,5)
    assume true;
    assume true;
}



procedure {:verboseName "ArrayAllocationInitialization.TestByte (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestByte();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestByte (call)"} Call$$ArrayAllocationInitialization.__default.TestByte();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestByte (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestByte() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestByte (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestByte() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.byte()))
       && $IsAlloc(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.byte()), $Heap);
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass.ArrayAllocationInitialization.byte()))
       && $IsAlloc(s#0, TSeq(Tclass.ArrayAllocationInitialization.byte()), $Heap);
  var $nw: ref;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var newtype$check#9: int;

    // AddMethodImpl: TestByte, Impl$$ArrayAllocationInitialization.__default.TestByte
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(645,20)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(5);
    zero#0 := $rhs#0;
    five#0 := $rhs#1;
    havoc a#0 /* where $Is(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.byte()))
       && $IsAlloc(a#0, Tclass._System.array(Tclass.ArrayAllocationInitialization.byte()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(647,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(649,7)
    assume true;
    assert {:id "id536"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(650,7)
    assume true;
    assert {:id "id538"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(651,7)
    assume true;
    assert {:id "id540"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(652,7)
    assume true;
    assert {:id "id542"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(653,7)
    assume true;
    assert {:id "id544"} 0 <= zero#0;
    assert {:id "id545"} zero#0 == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(654,7)
    assume true;
    assert {:id "id547"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(655,7)
    assume true;
    assert {:id "id549"} 0 <= LitInt(0);
    assert {:id "id550"} LitInt(0) == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(0);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(656,7)
    assume true;
    assert {:id "id552"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(657,7)
    assume true;
    assert {:id "id554"} 0 <= five#0;
    assert {:id "id555"} five#0 == 5;
    newtype$check#0 := LitInt(20);
    assert {:id "id556"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
    newtype$check#1 := LitInt(21);
    assert {:id "id557"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
    newtype$check#2 := LitInt(22);
    assert {:id "id558"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
    newtype$check#3 := LitInt(23);
    assert {:id "id559"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 256;
    newtype$check#4 := LitInt(24);
    assert {:id "id560"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 256;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assume $Unbox(read($Heap, $nw, IndexField(0))): int == LitInt(20);
    assume $Unbox(read($Heap, $nw, IndexField(1))): int == LitInt(21);
    assume $Unbox(read($Heap, $nw, IndexField(2))): int == LitInt(22);
    assume $Unbox(read($Heap, $nw, IndexField(3))): int == LitInt(23);
    assume $Unbox(read($Heap, $nw, IndexField(4))): int == LitInt(24);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(658,7)
    assume true;
    assert {:id "id562"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(659,7)
    assume true;
    assert {:id "id564"} 0 <= LitInt(5);
    assert {:id "id565"} LitInt(5) == 5;
    newtype$check#5 := LitInt(20);
    assert {:id "id566"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 256;
    newtype$check#6 := LitInt(21);
    assert {:id "id567"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 256;
    newtype$check#7 := LitInt(22);
    assert {:id "id568"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 256;
    newtype$check#8 := LitInt(23);
    assert {:id "id569"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 256;
    newtype$check#9 := LitInt(24);
    assert {:id "id570"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 256;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    assume $Unbox(read($Heap, $nw, IndexField(0))): int == LitInt(20);
    assume $Unbox(read($Heap, $nw, IndexField(1))): int == LitInt(21);
    assume $Unbox(read($Heap, $nw, IndexField(2))): int == LitInt(22);
    assume $Unbox(read($Heap, $nw, IndexField(3))): int == LitInt(23);
    assume $Unbox(read($Heap, $nw, IndexField(4))): int == LitInt(24);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(660,7)
    assume true;
    assert {:id "id572"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(661,7)
    assume true;
    assert {:id "id574"} 0 <= zero#0;
    assert {:id "id575"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    assert {:id "id576"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> Requires1(Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.byte(), 
          $Heap, 
          ArrayAllocationInitialization.__default.ByteF#Handle(), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): int
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.byte(), 
              $Heap, 
              ArrayAllocationInitialization.__default.ByteF#Handle(), 
              $Box(arrayinit#0#i0#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(662,7)
    assume true;
    assert {:id "id578"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(663,7)
    assume true;
    assert {:id "id580"} 0 <= five#0;
    assert {:id "id581"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass.ArrayAllocationInitialization.byte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assert {:id "id582"} {:subsumption 0} (forall arrayinit#1#i0#0: int :: 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> Requires1(Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.byte(), 
          $Heap, 
          ArrayAllocationInitialization.__default.ByteF#Handle(), 
          $Box(arrayinit#1#i0#0)));
    assume (forall arrayinit#1#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#1#i0#0)) } 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#1#i0#0))): int
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.byte(), 
              $Heap, 
              ArrayAllocationInitialization.__default.ByteF#Handle(), 
              $Box(arrayinit#1#i0#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(664,7)
    assume true;
    assert {:id "id584"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(666,5)
    assume true;
    assume true;
}



procedure {:verboseName "ArrayAllocationInitialization.TestChar (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestChar();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestChar (call)"} Call$$ArrayAllocationInitialization.__default.TestChar();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestChar (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestChar() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestChar (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestChar() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TChar))
       && $IsAlloc(a#0, Tclass._System.array(TChar), $Heap);
  var s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap);
  var $nw: ref;

    // AddMethodImpl: TestChar, Impl$$ArrayAllocationInitialization.__default.TestChar
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(670,20)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(5);
    zero#0 := $rhs#0;
    five#0 := $rhs#1;
    havoc a#0 /* where $Is(a#0, Tclass._System.array(TChar))
       && $IsAlloc(a#0, Tclass._System.array(TChar), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(672,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(674,7)
    assume true;
    assert {:id "id591"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(675,7)
    assume true;
    assert {:id "id593"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(676,7)
    assume true;
    assert {:id "id595"} 0 <= five#0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(677,7)
    assume true;
    assert {:id "id597"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(678,7)
    assume true;
    assert {:id "id599"} 0 <= zero#0;
    assert {:id "id600"} zero#0 == 0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(679,7)
    assume true;
    assert {:id "id602"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(680,7)
    assume true;
    assert {:id "id604"} 0 <= LitInt(0);
    assert {:id "id605"} LitInt(0) == 0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(0);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(681,7)
    assume true;
    assert {:id "id607"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(682,7)
    assume true;
    assert {:id "id609"} 0 <= five#0;
    assert {:id "id610"} five#0 == 5;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assume $Unbox(read($Heap, $nw, IndexField(0))): char == Lit(char#FromInt(97));
    assume $Unbox(read($Heap, $nw, IndexField(1))): char == Lit(char#FromInt(98));
    assume $Unbox(read($Heap, $nw, IndexField(2))): char == Lit(char#FromInt(99));
    assume $Unbox(read($Heap, $nw, IndexField(3))): char == Lit(char#FromInt(100));
    assume $Unbox(read($Heap, $nw, IndexField(4))): char == Lit(char#FromInt(101));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(683,7)
    assume true;
    assert {:id "id612"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(684,7)
    assume true;
    assert {:id "id614"} 0 <= LitInt(5);
    assert {:id "id615"} LitInt(5) == 5;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    assume $Unbox(read($Heap, $nw, IndexField(0))): char == Lit(char#FromInt(97));
    assume $Unbox(read($Heap, $nw, IndexField(1))): char == Lit(char#FromInt(98));
    assume $Unbox(read($Heap, $nw, IndexField(2))): char == Lit(char#FromInt(99));
    assume $Unbox(read($Heap, $nw, IndexField(3))): char == Lit(char#FromInt(100));
    assume $Unbox(read($Heap, $nw, IndexField(4))): char == Lit(char#FromInt(101));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(685,7)
    assume true;
    assert {:id "id617"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(686,7)
    assume true;
    assert {:id "id619"} 0 <= zero#0;
    assert {:id "id620"} 0 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    assert {:id "id621"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> Requires1(Tclass._System.nat(), 
          TChar, 
          $Heap, 
          ArrayAllocationInitialization.__default.CharF#Handle(), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): char
           == $Unbox(Apply1(Tclass._System.nat(), 
              TChar, 
              $Heap, 
              ArrayAllocationInitialization.__default.CharF#Handle(), 
              $Box(arrayinit#0#i0#0))): char);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(687,7)
    assume true;
    assert {:id "id623"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(688,7)
    assume true;
    assert {:id "id625"} 0 <= five#0;
    assert {:id "id626"} 0 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assert {:id "id627"} {:subsumption 0} (forall arrayinit#1#i0#0: int :: 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> Requires1(Tclass._System.nat(), 
          TChar, 
          $Heap, 
          ArrayAllocationInitialization.__default.CharF#Handle(), 
          $Box(arrayinit#1#i0#0)));
    assume (forall arrayinit#1#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#1#i0#0)) } 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#1#i0#0))): char
           == $Unbox(Apply1(Tclass._System.nat(), 
              TChar, 
              $Heap, 
              ArrayAllocationInitialization.__default.CharF#Handle(), 
              $Box(arrayinit#1#i0#0))): char);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(689,7)
    assume true;
    assert {:id "id629"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(691,5)
    assume true;
    assume true;
}



procedure {:verboseName "ArrayAllocationInitialization.TestTypeParameter (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestTypeParameter(ArrayAllocationInitialization._default.TestTypeParameter$T: Ty, 
    initF#0: HandleType
       where $Is(initF#0, 
          Tclass._System.___hTotalFunc1(Tclass._System.nat(), ArrayAllocationInitialization._default.TestTypeParameter$T))
         && $IsAlloc(initF#0, 
          Tclass._System.___hTotalFunc1(Tclass._System.nat(), ArrayAllocationInitialization._default.TestTypeParameter$T), 
          $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestTypeParameter (call)"} Call$$ArrayAllocationInitialization.__default.TestTypeParameter(ArrayAllocationInitialization._default.TestTypeParameter$T: Ty, 
    initF#0: HandleType
       where $Is(initF#0, 
          Tclass._System.___hTotalFunc1(Tclass._System.nat(), ArrayAllocationInitialization._default.TestTypeParameter$T))
         && $IsAlloc(initF#0, 
          Tclass._System.___hTotalFunc1(Tclass._System.nat(), ArrayAllocationInitialization._default.TestTypeParameter$T), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestTypeParameter (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestTypeParameter(ArrayAllocationInitialization._default.TestTypeParameter$T: Ty, 
    initF#0: HandleType
       where $Is(initF#0, 
          Tclass._System.___hTotalFunc1(Tclass._System.nat(), ArrayAllocationInitialization._default.TestTypeParameter$T))
         && $IsAlloc(initF#0, 
          Tclass._System.___hTotalFunc1(Tclass._System.nat(), ArrayAllocationInitialization._default.TestTypeParameter$T), 
          $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestTypeParameter (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestTypeParameter(ArrayAllocationInitialization._default.TestTypeParameter$T: Ty, 
    initF#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a#0: ref
     where $Is(a#0, 
        Tclass._System.array(ArrayAllocationInitialization._default.TestTypeParameter$T))
       && $IsAlloc(a#0, 
        Tclass._System.array(ArrayAllocationInitialization._default.TestTypeParameter$T), 
        $Heap);
  var s#0: Seq
     where $Is(s#0, TSeq(ArrayAllocationInitialization._default.TestTypeParameter$T))
       && $IsAlloc(s#0, TSeq(ArrayAllocationInitialization._default.TestTypeParameter$T), $Heap);
  var $nw: ref;

    // AddMethodImpl: TestTypeParameter, Impl$$ArrayAllocationInitialization.__default.TestTypeParameter
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(695,20)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(5);
    zero#0 := $rhs#0;
    five#0 := $rhs#1;
    havoc a#0 /* where $Is(a#0, 
        Tclass._System.array(ArrayAllocationInitialization._default.TestTypeParameter$T))
       && $IsAlloc(a#0, 
        Tclass._System.array(ArrayAllocationInitialization._default.TestTypeParameter$T), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(697,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(699,7)
    assume true;
    assert {:id "id636"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(700,7)
    assume true;
    assert {:id "id638"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(701,7)
    assume true;
    assert {:id "id640"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(702,7)
    assume true;
    assert {:id "id642"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(703,7)
    assume true;
    assert {:id "id644"} 0 <= zero#0;
    assert {:id "id645"} zero#0 == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(704,7)
    assume true;
    assert {:id "id647"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(705,7)
    assume true;
    assert {:id "id649"} 0 <= LitInt(0);
    assert {:id "id650"} LitInt(0) == 0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(0);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(706,7)
    assume true;
    assert {:id "id652"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(707,7)
    assume true;
    assert {:id "id654"} 0 <= five#0;
    assert {:id "id655"} five#0 == 5;
    assert {:id "id656"} $Is(LitInt(20), Tclass._System.nat());
    assert {:id "id657"} $Is(LitInt(21), Tclass._System.nat());
    assert {:id "id658"} $Is(LitInt(22), Tclass._System.nat());
    assert {:id "id659"} $Is(LitInt(23), Tclass._System.nat());
    assert {:id "id660"} $Is(LitInt(24), Tclass._System.nat());
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assume read($Heap, $nw, IndexField(0))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(20)));
    assume read($Heap, $nw, IndexField(1))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(21)));
    assume read($Heap, $nw, IndexField(2))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(22)));
    assume read($Heap, $nw, IndexField(3))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(23)));
    assume read($Heap, $nw, IndexField(4))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(24)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(708,7)
    assume true;
    assert {:id "id662"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(709,7)
    assume true;
    assert {:id "id664"} 0 <= LitInt(5);
    assert {:id "id665"} LitInt(5) == 5;
    assert {:id "id666"} $Is(LitInt(20), Tclass._System.nat());
    assert {:id "id667"} $Is(LitInt(21), Tclass._System.nat());
    assert {:id "id668"} $Is(LitInt(22), Tclass._System.nat());
    assert {:id "id669"} $Is(LitInt(23), Tclass._System.nat());
    assert {:id "id670"} $Is(LitInt(24), Tclass._System.nat());
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    assume read($Heap, $nw, IndexField(0))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(20)));
    assume read($Heap, $nw, IndexField(1))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(21)));
    assume read($Heap, $nw, IndexField(2))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(22)));
    assume read($Heap, $nw, IndexField(3))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(23)));
    assume read($Heap, $nw, IndexField(4))
       == Apply1(Tclass._System.nat(), 
        ArrayAllocationInitialization._default.TestTypeParameter$T, 
        $Heap, 
        initF#0, 
        $Box(LitInt(24)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(710,7)
    assume true;
    assert {:id "id672"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(711,7)
    assume true;
    assert {:id "id674"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == zero#0;
    assert {:id "id675"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> Requires1(Tclass._System.nat(), 
          ArrayAllocationInitialization._default.TestTypeParameter$T, 
          $Heap, 
          initF#0, 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < zero#0
         ==> read($Heap, $nw, IndexField(arrayinit#0#i0#0))
           == Apply1(Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestTypeParameter$T, 
            $Heap, 
            initF#0, 
            $Box(arrayinit#0#i0#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(712,7)
    assume true;
    assert {:id "id677"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(713,7)
    assume true;
    assert {:id "id679"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(ArrayAllocationInitialization._default.TestTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == five#0;
    assert {:id "id680"} {:subsumption 0} (forall arrayinit#1#i0#0: int :: 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> Requires1(Tclass._System.nat(), 
          ArrayAllocationInitialization._default.TestTypeParameter$T, 
          $Heap, 
          initF#0, 
          $Box(arrayinit#1#i0#0)));
    assume (forall arrayinit#1#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#1#i0#0)) } 
      0 <= arrayinit#1#i0#0 && arrayinit#1#i0#0 < five#0
         ==> read($Heap, $nw, IndexField(arrayinit#1#i0#0))
           == Apply1(Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestTypeParameter$T, 
            $Heap, 
            initF#0, 
            $Box(arrayinit#1#i0#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(714,7)
    assume true;
    assert {:id "id682"} a#0 != null;
    assume true;
    s#0 := Seq#Append(s#0, Seq#FromArray($Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(716,5)
    assume true;
    assume true;
}



// function declaration for ArrayAllocationInitialization._default.MatrixToSequence
function ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $heap: Heap, 
    m#0: ref)
   : Seq
uses {
// consequence axiom for ArrayAllocationInitialization.__default.MatrixToSequence
axiom 1 <= $FunctionContextHeight
   ==> (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
      $Heap: Heap, 
      m#0: ref :: 
    { ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0) } 
    ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(m#0, 
            Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T))
           && $IsAlloc(m#0, 
            Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T), 
            $Heap))
       ==> $Is(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
        TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T)));
// alloc consequence axiom for ArrayAllocationInitialization.__default.MatrixToSequence
axiom 1 <= $FunctionContextHeight
   ==> (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
      $Heap: Heap, 
      m#0: ref :: 
    { $IsAlloc(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
        TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T), 
        $Heap) } 
    ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(m#0, 
            Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T))
           && $IsAlloc(m#0, 
            Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T), 
            $Heap))
       ==> $IsAlloc(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
        TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T), 
        $Heap));
// definition axiom for ArrayAllocationInitialization.__default.MatrixToSequence (revealed)
axiom {:id "id684"} 1 <= $FunctionContextHeight
   ==> (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
      $Heap: Heap, 
      m#0: ref :: 
    { ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), $IsGoodHeap($Heap) } 
    ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, 
            Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T)))
       ==> ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, 
          $Heap, 
          m#0, 
          LitInt(0), 
          LitInt(0))
         && ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
           == ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.MatrixToSequence$T, 
            $LS($LZ), 
            $Heap, 
            m#0, 
            LitInt(0), 
            LitInt(0)));
}

function ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $heap: Heap, 
    m#0: ref)
   : bool;

// frame axiom for ArrayAllocationInitialization.__default.MatrixToSequence
axiom (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $h0: Heap, 
    $h1: Heap, 
    m#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $h1, m#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $h0, m#0)
         || $Is(m#0, 
          Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == m#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $h0, m#0)
       == ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $h1, m#0));

function ArrayAllocationInitialization.__default.MatrixToSequence#requires(Ty, Heap, ref) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.MatrixToSequence
axiom (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $Heap: Heap, 
    m#0: ref :: 
  { ArrayAllocationInitialization.__default.MatrixToSequence#requires(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, 
        Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T))
     ==> ArrayAllocationInitialization.__default.MatrixToSequence#requires(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
       == true);

procedure {:verboseName "ArrayAllocationInitialization.MatrixToSequence (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    m#0: ref
       where $Is(m#0, 
        Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.MatrixToSequence (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, m#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##m#0: ref;
  var ##i#0: int;
  var ##j#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == m#0);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
          TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##m#0 := m#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0, 
          Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T), 
          $Heap);
        assert {:id "id685"} $Is(LitInt(0), Tclass._System.nat());
        ##i#0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, Tclass._System.nat(), $Heap);
        assert {:id "id686"} $Is(LitInt(0), Tclass._System.nat());
        ##j#0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##j#0, Tclass._System.nat(), $Heap);
        assert {:id "id687"} {:subsumption 0} ##i#0 <= _System.array2.Length0(##m#0);
        assert {:id "id688"} {:subsumption 0} ##j#0 <= _System.array2.Length1(##m#0);
        assume ##i#0 <= _System.array2.Length0(##m#0) && ##j#0 <= _System.array2.Length1(##m#0);
        assert {:id "id689"} {:subsumption 0} ##i#0 == _System.array2.Length0(##m#0) ==> ##j#0 == LitInt(0);
        assume ##i#0 == _System.array2.Length0(##m#0) ==> ##j#0 == LitInt(0);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##m#0
             ==> $_ReadsFrame[$o, $f]);
        assume ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, 
          $Heap, 
          m#0, 
          LitInt(0), 
          LitInt(0));
        assume {:id "id690"} ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
           == ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.MatrixToSequence$T, 
            $LS($LZ), 
            $Heap, 
            m#0, 
            LitInt(0), 
            LitInt(0));
        assume ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, 
          $Heap, 
          m#0, 
          LitInt(0), 
          LitInt(0));
        // CheckWellformedWithResult: any expression
        assume $Is(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
          TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T));
        assert {:id "id691"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for ArrayAllocationInitialization._default.M2S
function ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int)
   : Seq
uses {
// consequence axiom for ArrayAllocationInitialization.__default.M2S
axiom 0 <= $FunctionContextHeight
   ==> (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      m#0: ref, 
      i#0: int, 
      j#0: int :: 
    { ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0) } 
    ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T))
           && $IsAlloc(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T), $Heap)
           && LitInt(0) <= i#0
           && LitInt(0) <= j#0
           && 
          i#0 <= _System.array2.Length0(m#0)
           && j#0 <= _System.array2.Length1(m#0)
           && (i#0 == _System.array2.Length0(m#0) ==> j#0 == LitInt(0)))
       ==> $Is(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0), 
        TSeq(ArrayAllocationInitialization._default.M2S$T)));
// alloc consequence axiom for ArrayAllocationInitialization.__default.M2S
axiom 0 <= $FunctionContextHeight
   ==> (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      m#0: ref, 
      i#0: int, 
      j#0: int :: 
    { $IsAlloc(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0), 
        TSeq(ArrayAllocationInitialization._default.M2S$T), 
        $Heap) } 
    ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T))
           && $IsAlloc(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T), $Heap)
           && LitInt(0) <= i#0
           && LitInt(0) <= j#0
           && 
          i#0 <= _System.array2.Length0(m#0)
           && j#0 <= _System.array2.Length1(m#0)
           && (i#0 == _System.array2.Length0(m#0) ==> j#0 == LitInt(0)))
       ==> $IsAlloc(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0), 
        TSeq(ArrayAllocationInitialization._default.M2S$T), 
        $Heap));
// definition axiom for ArrayAllocationInitialization.__default.M2S (revealed)
axiom {:id "id692"} 0 <= $FunctionContextHeight
   ==> (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      m#0: ref, 
      i#0: int, 
      j#0: int :: 
    { ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($ly), $Heap, m#0, i#0, j#0), $IsGoodHeap($Heap) } 
    ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T))
           && LitInt(0) <= i#0
           && LitInt(0) <= j#0
           && 
          i#0 <= _System.array2.Length0(m#0)
           && j#0 <= _System.array2.Length1(m#0)
           && (i#0 == _System.array2.Length0(m#0) ==> j#0 == LitInt(0)))
       ==> (i#0 != _System.array2.Length0(m#0)
           ==> (j#0 == _System.array2.Length1(m#0)
               ==> ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0 + 1, LitInt(0)))
             && (j#0 != _System.array2.Length1(m#0)
               ==> ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0 + 1)))
         && ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($ly), $Heap, m#0, i#0, j#0)
           == (if i#0 == _System.array2.Length0(m#0)
             then Seq#Empty(): Seq
             else (if j#0 == _System.array2.Length1(m#0)
               then ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, 
                $ly, 
                $Heap, 
                m#0, 
                i#0 + 1, 
                LitInt(0))
               else Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))), 
                ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0 + 1)))));
}

function ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T: Ty, 
    $heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int)
   : bool;

// layer synonym axiom
axiom (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($ly), $Heap, m#0, i#0, j#0) } 
  ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($ly), $Heap, m#0, i#0, j#0)
     == ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0));

// fuel synonym axiom
axiom (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, 
      AsFuelBottom($ly), 
      $Heap, 
      m#0, 
      i#0, 
      j#0) } 
  ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0)
     == ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LZ, $Heap, m#0, i#0, j#0));

// frame axiom for ArrayAllocationInitialization.__default.M2S
axiom (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $h1, m#0, i#0, j#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $h0, m#0, i#0, j#0)
         || (
          $Is(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T))
           && LitInt(0) <= i#0
           && LitInt(0) <= j#0))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == m#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $h0, m#0, i#0, j#0)
       == ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $h1, m#0, i#0, j#0));

function ArrayAllocationInitialization.__default.M2S#requires(Ty, LayerType, Heap, ref, int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.M2S
axiom (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { ArrayAllocationInitialization.__default.M2S#requires(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T))
       && LitInt(0) <= i#0
       && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.M2S#requires(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0)
       == (
        i#0 <= _System.array2.Length0(m#0)
         && j#0 <= _System.array2.Length1(m#0)
         && (i#0 == _System.array2.Length0(m#0) ==> j#0 == LitInt(0))));

procedure {:verboseName "ArrayAllocationInitialization.M2S (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T)), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.M2S (well-formedness)"} CheckWellformed$$ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T: Ty, m#0: ref, i#0: int, j#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##m#0: ref;
  var ##i#0: int;
  var ##j#0: int;
  var ##m#1: ref;
  var ##i#1: int;
  var ##j#1: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == m#0);
    // Check well-formedness of preconditions, and then assume them
    assert {:id "id693"} m#0 != null;
    assume {:id "id694"} i#0 <= _System.array2.Length0(m#0);
    assert {:id "id695"} m#0 != null;
    assume {:id "id696"} j#0 <= _System.array2.Length1(m#0);
    if (*)
    {
        assert {:id "id697"} m#0 != null;
        assume {:id "id698"} i#0 == _System.array2.Length0(m#0);
        assume {:id "id699"} j#0 == LitInt(0);
    }
    else
    {
        assume {:id "id700"} i#0 == _System.array2.Length0(m#0) ==> j#0 == LitInt(0);
    }

    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    assert {:id "id701"} m#0 != null;
    assert {:id "id702"} m#0 != null;
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0), 
          TSeq(ArrayAllocationInitialization._default.M2S$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id703"} m#0 != null;
        if (i#0 == _System.array2.Length0(m#0))
        {
            assume {:id "id704"} ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0)
               == Lit(Seq#Empty(): Seq);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0), 
              TSeq(ArrayAllocationInitialization._default.M2S$T));
            return;
        }
        else
        {
            assert {:id "id705"} m#0 != null;
            if (j#0 == _System.array2.Length1(m#0))
            {
                ##m#0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0, 
                  Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T), 
                  $Heap);
                assert {:id "id706"} $Is(i#0 + 1, Tclass._System.nat());
                ##i#0 := i#0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##i#0, Tclass._System.nat(), $Heap);
                assert {:id "id707"} $Is(LitInt(0), Tclass._System.nat());
                ##j#0 := LitInt(0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##j#0, Tclass._System.nat(), $Heap);
                assert {:id "id708"} {:subsumption 0} ##i#0 <= _System.array2.Length0(##m#0);
                assert {:id "id709"} {:subsumption 0} ##j#0 <= _System.array2.Length1(##m#0);
                assume ##i#0 <= _System.array2.Length0(##m#0) && ##j#0 <= _System.array2.Length1(##m#0);
                assert {:id "id710"} {:subsumption 0} ##i#0 == _System.array2.Length0(##m#0) ==> ##j#0 == LitInt(0);
                assume ##i#0 == _System.array2.Length0(##m#0) ==> ##j#0 == LitInt(0);
                b$reqreads#0 := (forall $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##m#0
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id711"} 0 <= _System.array2.Length0(m#0) - i#0
                   || _System.array2.Length0(##m#0) - ##i#0 == _System.array2.Length0(m#0) - i#0;
                assert {:id "id712"} 0 <= _System.array2.Length1(m#0) - j#0
                   || _System.array2.Length0(##m#0) - ##i#0 < _System.array2.Length0(m#0) - i#0
                   || _System.array2.Length1(##m#0) - ##j#0 == _System.array2.Length1(m#0) - j#0;
                assert {:id "id713"} _System.array2.Length0(##m#0) - ##i#0 < _System.array2.Length0(m#0) - i#0
                   || (_System.array2.Length0(##m#0) - ##i#0 == _System.array2.Length0(m#0) - i#0
                     && _System.array2.Length1(##m#0) - ##j#0 < _System.array2.Length1(m#0) - j#0);
                assume ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0 + 1, LitInt(0));
                assume {:id "id714"} ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0)
                   == ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, 
                    $LS($LZ), 
                    $Heap, 
                    m#0, 
                    i#0 + 1, 
                    LitInt(0));
                assume ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0 + 1, LitInt(0));
                // CheckWellformedWithResult: any expression
                assume $Is(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0), 
                  TSeq(ArrayAllocationInitialization._default.M2S$T));
                assert {:id "id715"} b$reqreads#0;
                return;
            }
            else
            {
                assert {:id "id716"} m#0 != null;
                assert {:id "id717"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
                assert {:id "id718"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
                b$reqreads#1 := $_ReadsFrame[m#0, MultiIndexField(IndexField(i#0), j#0)];
                ##m#1 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#1, 
                  Tclass._System.array2(ArrayAllocationInitialization._default.M2S$T), 
                  $Heap);
                ##i#1 := i#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##i#1, Tclass._System.nat(), $Heap);
                assert {:id "id719"} $Is(j#0 + 1, Tclass._System.nat());
                ##j#1 := j#0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##j#1, Tclass._System.nat(), $Heap);
                assert {:id "id720"} {:subsumption 0} ##i#1 <= _System.array2.Length0(##m#1);
                assert {:id "id721"} {:subsumption 0} ##j#1 <= _System.array2.Length1(##m#1);
                assume ##i#1 <= _System.array2.Length0(##m#1) && ##j#1 <= _System.array2.Length1(##m#1);
                assert {:id "id722"} {:subsumption 0} ##i#1 == _System.array2.Length0(##m#1) ==> ##j#1 == LitInt(0);
                assume ##i#1 == _System.array2.Length0(##m#1) ==> ##j#1 == LitInt(0);
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##m#1
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id723"} 0 <= _System.array2.Length0(m#0) - i#0
                   || _System.array2.Length0(##m#1) - ##i#1 == _System.array2.Length0(m#0) - i#0;
                assert {:id "id724"} 0 <= _System.array2.Length1(m#0) - j#0
                   || _System.array2.Length0(##m#1) - ##i#1 < _System.array2.Length0(m#0) - i#0
                   || _System.array2.Length1(##m#1) - ##j#1 == _System.array2.Length1(m#0) - j#0;
                assert {:id "id725"} _System.array2.Length0(##m#1) - ##i#1 < _System.array2.Length0(m#0) - i#0
                   || (_System.array2.Length0(##m#1) - ##i#1 == _System.array2.Length0(m#0) - i#0
                     && _System.array2.Length1(##m#1) - ##j#1 < _System.array2.Length1(m#0) - j#0);
                assume ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0 + 1);
                assume {:id "id726"} ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0)
                   == Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))), 
                    ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0 + 1));
                assume ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0 + 1);
                // CheckWellformedWithResult: any expression
                assume $Is(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($LZ), $Heap, m#0, i#0, j#0), 
                  TSeq(ArrayAllocationInitialization._default.M2S$T));
                assert {:id "id727"} b$reqreads#0;
                assert {:id "id728"} b$reqreads#1;
                assert {:id "id729"} b$reqreads#2;
                return;
            }
        }

        assume false;
    }
}



procedure {:verboseName "ArrayAllocationInitialization.TestMatrixAutoInit (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestMatrixAutoInit();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestMatrixAutoInit (call)"} Call$$ArrayAllocationInitialization.__default.TestMatrixAutoInit();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestMatrixAutoInit (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestMatrixAutoInit() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestMatrixAutoInit (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestMatrixAutoInit() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var two#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()))
       && $IsAlloc(a#0, 
        Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
        $Heap);
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass.ArrayAllocationInitialization.AutoInit()))
       && $IsAlloc(s#0, TSeq(Tclass.ArrayAllocationInitialization.AutoInit()), $Heap);
  var $nw: ref;
  var ##m#0: ref;
  var ##m#1: ref;
  var ##m#2: ref;
  var ##m#3: ref;
  var ##m#4: ref;
  var ##m#5: ref;
  var ##m#6: ref;
  var ##m#7: ref;

    // AddMethodImpl: TestMatrixAutoInit, Impl$$ArrayAllocationInitialization.__default.TestMatrixAutoInit
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(740,25)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(2);
    assume true;
    $rhs#2 := LitInt(5);
    zero#0 := $rhs#0;
    two#0 := $rhs#1;
    five#0 := $rhs#2;
    havoc a#0 /* where $Is(a#0, Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()))
       && $IsAlloc(a#0, 
        Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(742,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(744,7)
    assume true;
    assert {:id "id737"} 0 <= zero#0;
    assert {:id "id738"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(745,7)
    assume true;
    ##m#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(746,7)
    assume true;
    assert {:id "id741"} 0 <= zero#0;
    assert {:id "id742"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(747,7)
    assume true;
    ##m#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(748,7)
    assume true;
    assert {:id "id745"} 0 <= five#0;
    assert {:id "id746"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == five#0;
    assume _System.array2.Length1($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(749,7)
    assume true;
    ##m#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#2, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(750,7)
    assume true;
    assert {:id "id749"} 0 <= two#0;
    assert {:id "id750"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == two#0;
    assume _System.array2.Length1($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(751,7)
    assume true;
    ##m#3 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#3, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(753,7)
    assume true;
    assert {:id "id753"} 0 <= zero#0;
    assert {:id "id754"} 0 <= zero#0;
    assert {:id "id755"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == zero#0;
    assert {:id "id756"} {:subsumption 0} (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < zero#0
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < zero#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.AutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
          $Box(arrayinit#0#i0#0), 
          $Box(arrayinit#0#i1#0)));
    assume (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0)) } 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < zero#0
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < zero#0
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0))): int
           == $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.AutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
              $Box(arrayinit#0#i0#0), 
              $Box(arrayinit#0#i1#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(754,7)
    assume true;
    ##m#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#4, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(755,7)
    assume true;
    assert {:id "id759"} 0 <= zero#0;
    assert {:id "id760"} 0 <= five#0;
    assert {:id "id761"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == five#0;
    assert {:id "id762"} {:subsumption 0} (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < zero#0
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < five#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.AutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
          $Box(arrayinit#1#i0#0), 
          $Box(arrayinit#1#i1#0)));
    assume (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0)) } 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < zero#0
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < five#0
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0))): int
           == $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.AutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
              $Box(arrayinit#1#i0#0), 
              $Box(arrayinit#1#i1#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(756,7)
    assume true;
    ##m#5 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#5, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(757,7)
    assume true;
    assert {:id "id765"} 0 <= five#0;
    assert {:id "id766"} 0 <= zero#0;
    assert {:id "id767"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == five#0;
    assume _System.array2.Length1($nw) == zero#0;
    assert {:id "id768"} {:subsumption 0} (forall arrayinit#2#i0#0: int, arrayinit#2#i1#0: int :: 
      0 <= arrayinit#2#i0#0
           && arrayinit#2#i0#0 < five#0
           && 
          0 <= arrayinit#2#i1#0
           && arrayinit#2#i1#0 < zero#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.AutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
          $Box(arrayinit#2#i0#0), 
          $Box(arrayinit#2#i1#0)));
    assume (forall arrayinit#2#i0#0: int, arrayinit#2#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#2#i0#0), arrayinit#2#i1#0)) } 
      0 <= arrayinit#2#i0#0
           && arrayinit#2#i0#0 < five#0
           && 
          0 <= arrayinit#2#i1#0
           && arrayinit#2#i1#0 < zero#0
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#2#i0#0), arrayinit#2#i1#0))): int
           == $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.AutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
              $Box(arrayinit#2#i0#0), 
              $Box(arrayinit#2#i1#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(758,7)
    assume true;
    ##m#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#6, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(759,7)
    assume true;
    assert {:id "id771"} 0 <= two#0;
    assert {:id "id772"} 0 <= five#0;
    assert {:id "id773"} 1 != $FunctionContextHeight;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass.ArrayAllocationInitialization.AutoInit()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == two#0;
    assume _System.array2.Length1($nw) == five#0;
    assert {:id "id774"} {:subsumption 0} (forall arrayinit#3#i0#0: int, arrayinit#3#i1#0: int :: 
      0 <= arrayinit#3#i0#0
           && arrayinit#3#i0#0 < two#0
           && 
          0 <= arrayinit#3#i1#0
           && arrayinit#3#i1#0 < five#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          Tclass.ArrayAllocationInitialization.AutoInit(), 
          $Heap, 
          ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
          $Box(arrayinit#3#i0#0), 
          $Box(arrayinit#3#i1#0)));
    assume (forall arrayinit#3#i0#0: int, arrayinit#3#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#3#i0#0), arrayinit#3#i1#0)) } 
      0 <= arrayinit#3#i0#0
           && arrayinit#3#i0#0 < two#0
           && 
          0 <= arrayinit#3#i1#0
           && arrayinit#3#i1#0 < five#0
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#3#i0#0), arrayinit#3#i1#0))): int
           == $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              Tclass.ArrayAllocationInitialization.AutoInit(), 
              $Heap, 
              ArrayAllocationInitialization.__default.AutoInitF2#Handle(), 
              $Box(arrayinit#3#i0#0), 
              $Box(arrayinit#3#i1#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(760,7)
    assume true;
    ##m#7 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#7, 
      Tclass._System.array2(Tclass.ArrayAllocationInitialization.AutoInit()), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(Tclass.ArrayAllocationInitialization.AutoInit(), $Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(762,5)
    assume true;
    assume true;
}



procedure {:verboseName "ArrayAllocationInitialization.TestMatrixTypeParameter (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T: Ty, 
    initF2#0: HandleType
       where $Is(initF2#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T))
         && $IsAlloc(initF2#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
          $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayAllocationInitialization.TestMatrixTypeParameter (call)"} Call$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T: Ty, 
    initF2#0: HandleType
       where $Is(initF2#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T))
         && $IsAlloc(initF2#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayAllocationInitialization.TestMatrixTypeParameter (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T: Ty, 
    initF2#0: HandleType
       where $Is(initF2#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T))
         && $IsAlloc(initF2#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.TestMatrixTypeParameter (correctness)"} Impl$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T: Ty, 
    initF2#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: int;
  var two#0: int;
  var five#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var a#0: ref
     where $Is(a#0, 
        Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T))
       && $IsAlloc(a#0, 
        Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
        $Heap);
  var s#0: Seq
     where $Is(s#0, TSeq(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T))
       && $IsAlloc(s#0, 
        TSeq(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
        $Heap);
  var $nw: ref;
  var ##m#0: ref;
  var ##m#1: ref;
  var ##m#2: ref;
  var ##m#3: ref;
  var ##m#4: ref;
  var ##m#5: ref;
  var ##m#6: ref;
  var ##m#7: ref;

    // AddMethodImpl: TestMatrixTypeParameter, Impl$$ArrayAllocationInitialization.__default.TestMatrixTypeParameter
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(766,25)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(2);
    assume true;
    $rhs#2 := LitInt(5);
    zero#0 := $rhs#0;
    two#0 := $rhs#1;
    five#0 := $rhs#2;
    havoc a#0 /* where $Is(a#0, 
        Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T))
       && $IsAlloc(a#0, 
        Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(768,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(770,7)
    assume true;
    assert {:id "id784"} 0 <= zero#0;
    assert {:id "id785"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(771,7)
    assume true;
    ##m#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(772,7)
    assume true;
    assert {:id "id788"} 0 <= zero#0;
    assert {:id "id789"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(773,7)
    assume true;
    ##m#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(774,7)
    assume true;
    assert {:id "id792"} 0 <= five#0;
    assert {:id "id793"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == five#0;
    assume _System.array2.Length1($nw) == zero#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(775,7)
    assume true;
    ##m#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#2, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(776,7)
    assume true;
    assert {:id "id796"} 0 <= two#0;
    assert {:id "id797"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == two#0;
    assume _System.array2.Length1($nw) == five#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(777,7)
    assume true;
    ##m#3 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#3, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(779,7)
    assume true;
    assert {:id "id800"} 0 <= zero#0;
    assert {:id "id801"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == zero#0;
    assert {:id "id802"} {:subsumption 0} (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < zero#0
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < zero#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
          $Heap, 
          initF2#0, 
          $Box(arrayinit#0#i0#0), 
          $Box(arrayinit#0#i1#0)));
    assume (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0)) } 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < zero#0
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < zero#0
         ==> read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0))
           == Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
            $Heap, 
            initF2#0, 
            $Box(arrayinit#0#i0#0), 
            $Box(arrayinit#0#i1#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(780,7)
    assume true;
    ##m#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#4, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(781,7)
    assume true;
    assert {:id "id805"} 0 <= zero#0;
    assert {:id "id806"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == zero#0;
    assume _System.array2.Length1($nw) == five#0;
    assert {:id "id807"} {:subsumption 0} (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < zero#0
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < five#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
          $Heap, 
          initF2#0, 
          $Box(arrayinit#1#i0#0), 
          $Box(arrayinit#1#i1#0)));
    assume (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0)) } 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < zero#0
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < five#0
         ==> read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0))
           == Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
            $Heap, 
            initF2#0, 
            $Box(arrayinit#1#i0#0), 
            $Box(arrayinit#1#i1#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(782,7)
    assume true;
    ##m#5 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#5, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(783,7)
    assume true;
    assert {:id "id810"} 0 <= five#0;
    assert {:id "id811"} 0 <= zero#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == five#0;
    assume _System.array2.Length1($nw) == zero#0;
    assert {:id "id812"} {:subsumption 0} (forall arrayinit#2#i0#0: int, arrayinit#2#i1#0: int :: 
      0 <= arrayinit#2#i0#0
           && arrayinit#2#i0#0 < five#0
           && 
          0 <= arrayinit#2#i1#0
           && arrayinit#2#i1#0 < zero#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
          $Heap, 
          initF2#0, 
          $Box(arrayinit#2#i0#0), 
          $Box(arrayinit#2#i1#0)));
    assume (forall arrayinit#2#i0#0: int, arrayinit#2#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#2#i0#0), arrayinit#2#i1#0)) } 
      0 <= arrayinit#2#i0#0
           && arrayinit#2#i0#0 < five#0
           && 
          0 <= arrayinit#2#i1#0
           && arrayinit#2#i1#0 < zero#0
         ==> read($Heap, $nw, MultiIndexField(IndexField(arrayinit#2#i0#0), arrayinit#2#i1#0))
           == Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
            $Heap, 
            initF2#0, 
            $Box(arrayinit#2#i0#0), 
            $Box(arrayinit#2#i1#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(784,7)
    assume true;
    ##m#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#6, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(785,7)
    assume true;
    assert {:id "id815"} 0 <= two#0;
    assert {:id "id816"} 0 <= five#0;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array2?(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == two#0;
    assume _System.array2.Length1($nw) == five#0;
    assert {:id "id817"} {:subsumption 0} (forall arrayinit#3#i0#0: int, arrayinit#3#i1#0: int :: 
      0 <= arrayinit#3#i0#0
           && arrayinit#3#i0#0 < two#0
           && 
          0 <= arrayinit#3#i1#0
           && arrayinit#3#i1#0 < five#0
         ==> Requires2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
          $Heap, 
          initF2#0, 
          $Box(arrayinit#3#i0#0), 
          $Box(arrayinit#3#i1#0)));
    assume (forall arrayinit#3#i0#0: int, arrayinit#3#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#3#i0#0), arrayinit#3#i1#0)) } 
      0 <= arrayinit#3#i0#0
           && arrayinit#3#i0#0 < two#0
           && 
          0 <= arrayinit#3#i1#0
           && arrayinit#3#i1#0 < five#0
         ==> read($Heap, $nw, MultiIndexField(IndexField(arrayinit#3#i0#0), arrayinit#3#i1#0))
           == Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, 
            $Heap, 
            initF2#0, 
            $Box(arrayinit#3#i0#0), 
            $Box(arrayinit#3#i1#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(786,7)
    assume true;
    ##m#7 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#7, 
      Tclass._System.array2(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T), 
      $Heap);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    assume ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0);
    s#0 := Seq#Append(s#0, 
      ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.TestMatrixTypeParameter$T, $Heap, a#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(788,5)
    assume true;
    assume true;
}



procedure {:verboseName "ArrayAllocationInitialization.AutoInit (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.AutoInit(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.AutoInit (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.AutoInit(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype AutoInit
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(20) <= x#0)
        {
        }

        assume {:id "id820"} LitInt(20) <= x#0 && x#0 < 2000000;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id821"} {:subsumption 0} LitInt(20) <= LitInt(77);
        assert {:id "id822"} {:subsumption 0} Lit(77 < 2000000);
        assume false;
    }
}



// $Is axiom for newtype ArrayAllocationInitialization.AutoInit
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.ArrayAllocationInitialization.AutoInit()) } 
  $Is(x#0, Tclass.ArrayAllocationInitialization.AutoInit())
     <==> LitInt(20) <= x#0 && x#0 < 2000000);

// $IsAlloc axiom for newtype ArrayAllocationInitialization.AutoInit
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.ArrayAllocationInitialization.AutoInit(), $h) } 
  $IsAlloc(x#0, Tclass.ArrayAllocationInitialization.AutoInit(), $h));

const unique class.ArrayAllocationInitialization.AutoInit: ClassName;

procedure {:verboseName "ArrayAllocationInitialization.NonAutoInit (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.NonAutoInit(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for newtype ArrayAllocationInitialization.NonAutoInit
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.ArrayAllocationInitialization.NonAutoInit()) } 
  $Is(x#0, Tclass.ArrayAllocationInitialization.NonAutoInit())
     <==> LitInt(20) <= x#0 && x#0 < 2000000);

// $IsAlloc axiom for newtype ArrayAllocationInitialization.NonAutoInit
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.ArrayAllocationInitialization.NonAutoInit(), $h) } 
  $IsAlloc(x#0, Tclass.ArrayAllocationInitialization.NonAutoInit(), $h));

const unique class.ArrayAllocationInitialization.NonAutoInit: ClassName;

procedure {:verboseName "ArrayAllocationInitialization.byte (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.byte(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayAllocationInitialization.byte (well-formedness)"} CheckWellFormed$$ArrayAllocationInitialization.byte(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype byte
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id824"} LitInt(0) <= x#0 && x#0 < 256;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id825"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id826"} {:subsumption 0} Lit(0 < 256);
        assume false;
    }
}



// $Is axiom for newtype ArrayAllocationInitialization.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.ArrayAllocationInitialization.byte()) } 
  $Is(x#0, Tclass.ArrayAllocationInitialization.byte())
     <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype ArrayAllocationInitialization.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.ArrayAllocationInitialization.byte(), $h) } 
  $IsAlloc(x#0, Tclass.ArrayAllocationInitialization.byte(), $h));

const unique class.ArrayAllocationInitialization.byte: ClassName;

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$array3: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_tuple#7: TyTagFamily;

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$AutoInit: TyTagFamily;

const unique tytagFamily$NonAutoInit: TyTagFamily;

const unique tytagFamily$byte: TyTagFamily;
