// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "LinearSearch (well-formedness)"} CheckWellFormed$$_module.__default.LinearSearch(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    key#0: int)
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinearSearch (well-formedness)"} CheckWellFormed$$_module.__default.LinearSearch(a#0: ref, key#0: int) returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: LinearSearch, CheckWellFormed$$_module.__default.LinearSearch
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc n#0;
    if (LitInt(0) <= n#0)
    {
        assert {:id "id1035"} a#0 != null;
    }

    assume {:id "id1036"} LitInt(0) <= n#0 && n#0 <= _System.array.Length(a#0);
    if (*)
    {
        assert {:id "id1037"} a#0 != null;
        assume {:id "id1038"} n#0 == _System.array.Length(a#0);
    }
    else
    {
        assume {:id "id1039"} n#0 != _System.array.Length(a#0);
        assert {:id "id1040"} a#0 != null;
        assert {:id "id1041"} 0 <= n#0 && n#0 < _System.array.Length(a#0);
        assume {:id "id1042"} $Unbox(read($Heap, a#0, IndexField(n#0))): int == key#0;
    }
}



procedure {:verboseName "LinearSearch (call)"} Call$$_module.__default.LinearSearch(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    key#0: int)
   returns (n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1043"} LitInt(0) <= n#0;
  ensures {:id "id1044"} n#0 <= _System.array.Length(a#0);
  free ensures true;
  ensures {:id "id1045"} n#0 == _System.array.Length(a#0)
     || $Unbox(read($Heap, a#0, IndexField(n#0))): int == key#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinearSearch (correctness)"} Impl$$_module.__default.LinearSearch(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    key#0: int)
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1046"} LitInt(0) <= n#0;
  ensures {:id "id1047"} n#0 <= _System.array.Length(a#0);
  free ensures true;
  ensures {:id "id1048"} n#0 == _System.array.Length(a#0)
     || $Unbox(read($Heap, a#0, IndexField(n#0))): int == key#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinearSearch (correctness)"} Impl$$_module.__default.LinearSearch(a#0: ref, key#0: int) returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: LinearSearch, Impl$$_module.__default.LinearSearch
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(7,5)
    assume true;
    assert {:id "id1049"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    n#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(8,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array.Length(a#0) - n#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id1053"} $w$loop#0 ==> n#0 <= _System.array.Length(a#0);
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
      free invariant _System.array.Length(a#0) - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id1051"} {:subsumption 0} a#0 != null;
            assume true;
            assume {:id "id1052"} n#0 <= _System.array.Length(a#0);
            assert {:id "id1054"} a#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id1055"} a#0 != null;
        assume true;
        if (_System.array.Length(a#0) <= n#0)
        {
            break;
        }

        $decr$loop#00 := _System.array.Length(a#0) - n#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(11,5)
        assert {:id "id1056"} a#0 != null;
        assert {:id "id1057"} 0 <= n#0 && n#0 < _System.array.Length(a#0);
        assume true;
        if ($Unbox(read($Heap, a#0, IndexField(n#0))): int == key#0)
        {
            push;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(12,7)
            pop;
            return;

            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(14,7)
        assume true;
        assert {:id "id1058"} $Is(n#0 + 1, Tclass._System.nat());
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(8,3)
        assert {:id "id1060"} 0 <= $decr$loop#00 || _System.array.Length(a#0) - n#0 == $decr$loop#00;
        assert {:id "id1061"} _System.array.Length(a#0) - n#0 < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "PrintArray (well-formedness)"} CheckWellFormed$$_module.__default.PrintArray(_module._default.PrintArray$A: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(_module._default.PrintArray$A))
         && $IsAlloc(a#0, Tclass._System.array?(_module._default.PrintArray$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintArray (call)"} Call$$_module.__default.PrintArray(_module._default.PrintArray$A: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(_module._default.PrintArray$A))
         && $IsAlloc(a#0, Tclass._System.array?(_module._default.PrintArray$A), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintArray (correctness)"} Impl$$_module.__default.PrintArray(_module._default.PrintArray$A: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(_module._default.PrintArray$A))
         && $IsAlloc(a#0, Tclass._System.array?(_module._default.PrintArray$A), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintArray (correctness)"} Impl$$_module.__default.PrintArray(_module._default.PrintArray$A: Ty, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var i#1_0: int;
  var $PreLoopHeap$loop#1_0: Heap;
  var $decr_init$loop#1_00: int;
  var $w$loop#1_0: bool;
  var $decr$loop#1_00: int;

    // AddMethodImpl: PrintArray, Impl$$_module.__default.PrintArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(19,3)
    newtype$check#0 := null;
    assume true;
    if (a#0 == null)
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(20,5)
        assume true;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(22,11)
        assume true;
        assume true;
        i#1_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(23,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_0 := $Heap;
        $decr_init$loop#1_00 := _System.array.Length(a#0) - i#1_0;
        havoc $w$loop#1_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#1_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#1_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant _System.array.Length(a#0) - i#1_0 <= $decr_init$loop#1_00;
        {
            if (!$w$loop#1_0)
            {
                assert {:id "id1063"} a#0 != null;
                assume true;
                assume false;
            }

            assert {:id "id1064"} a#0 != null;
            assume true;
            if (_System.array.Length(a#0) <= i#1_0)
            {
                break;
            }

            $decr$loop#1_00 := _System.array.Length(a#0) - i#1_0;
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(24,7)
            assert {:id "id1065"} a#0 != null;
            assert {:id "id1066"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(a#0);
            assume true;
            assume true;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(25,9)
            assume true;
            assume true;
            i#1_0 := i#1_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(23,5)
            assert {:id "id1068"} 0 <= $decr$loop#1_00 || _System.array.Length(a#0) - i#1_0 == $decr$loop#1_00;
            assert {:id "id1069"} _System.array.Length(a#0) - i#1_0 < $decr$loop#1_00;
        }

        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(27,5)
        assume true;
    }
}



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
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap);
  var $nw: ref;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var a##0: ref;
  var n#0: int where LitInt(0) <= n#0;
  var $rhs##0: int;
  var a##1: ref;
  var key##0: int;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var $rhs#0: int;
  var a##2: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(32,9)
    assume true;
    assert {:id "id1070"} 0 <= LitInt(23);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(23);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(33,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(34,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 23 - i#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant 23 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (23 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 23 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(35,10)
        assert {:id "id1073"} a#0 != null;
        assert {:id "id1074"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        assert {:id "id1075"} $_ModifiesFrame[a#0, IndexField(i#0)];
        assume true;
        $rhs#0_0 := i#0;
        $Heap := update($Heap, a#0, IndexField(i#0), $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(36,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(34,3)
        assert {:id "id1079"} 0 <= $decr$loop#00 || 23 - i#0 == $decr$loop#00;
        assert {:id "id1080"} 23 - i#0 < $decr$loop#00;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(38,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id1081"} Call$$_module.__default.PrintArray(TInt, a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(39,24)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := LitInt(17);
    call {:id "id1082"} $rhs##0 := Call$$_module.__default.LinearSearch(a##1, key##0);
    // TrCallStmt: After ProcessCallStmt
    n#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(40,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(41,20)
    assume true;
    assert {:id "id1084"} a#0 != null;
    assume true;
    s#0 := Seq#FromArray($Heap, a#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(42,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(43,5)
    assume true;
    assert {:id "id1086"} a#0 != null;
    assert {:id "id1087"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
    assert {:id "id1088"} LitInt(2) <= LitInt(16) && LitInt(16) <= _System.array.Length(a#0);
    assume true;
    s#0 := Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(16)), LitInt(2));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(44,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(45,5)
    assume true;
    assert {:id "id1090"} a#0 != null;
    assert {:id "id1091"} 0 <= LitInt(20) && LitInt(20) <= _System.array.Length(a#0);
    assume true;
    s#0 := Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(20));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(46,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(47,5)
    assume true;
    assert {:id "id1093"} a#0 != null;
    assert {:id "id1094"} 0 <= LitInt(8) && LitInt(8) <= _System.array.Length(a#0);
    assume true;
    s#0 := Seq#Take(Seq#FromArray($Heap, a#0), LitInt(8));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(48,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(51,8)
    assert {:id "id1096"} a#0 != null;
    assert {:id "id1097"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id1098"} $_ModifiesFrame[a#0, IndexField(LitInt(0))];
    assume true;
    $rhs#0 := LitInt(42);
    $Heap := update($Heap, a#0, IndexField(LitInt(0)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(52,3)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(54,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1101"} Call$$_module.__default.InitTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(56,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1102"} Call$$_module.__default.MultipleDimensions();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(58,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := null;
    call {:id "id1103"} Call$$_module.__default.PrintArray(TInt, a##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(60,8)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1104"} Call$$_module.__default.Index();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(61,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1105"} Call$$_module.__default.More();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(62,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1106"} Call$$_module.__default.MoreWithDefaults();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(64,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1107"} Call$$_module.__default.Coercions();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(66,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1108"} Call$$_module.__default.CharValues();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(68,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1109"} Call$$TypeSynonym.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(70,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1110"} Call$$MoreArrays.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(71,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1111"} Call$$NativeArrays.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(72,30)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1112"} Call$$SimultaneousAssignment.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(73,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1113"} Call$$ArrayToSeq.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(75,37)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1114"} Call$$ArrayAllocationInitialization.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(76,42)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1115"} Call$$VariationsOnIndexAndDimensionTypes.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(77,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1116"} Call$$TypeSpecialization.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(79,28)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1117"} Call$$GenericArrayEquality.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "InitTests (well-formedness)"} CheckWellFormed$$_module.__default.InitTests();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InitTests (call)"} Call$$_module.__default.InitTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "InitTests (correctness)"} Impl$$_module.__default.InitTests() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.lowercase() : Ty
uses {
// Tclass._module.lowercase Tag
axiom Tag(Tclass._module.lowercase()) == Tagclass._module.lowercase
   && TagFamily(Tclass._module.lowercase()) == tytagFamily$lowercase;
}

const unique Tagclass._module.lowercase: TyTag;

// Box/unbox axiom for Tclass._module.lowercase
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.lowercase()) } 
  $IsBox(bx, Tclass._module.lowercase())
     ==> $Box($Unbox(bx): char) == bx
       && $Is($Unbox(bx): char, Tclass._module.lowercase()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InitTests (correctness)"} Impl$$_module.__default.InitTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: ref
     where $Is(aa#0, Tclass._System.array(Tclass._module.lowercase()))
       && $IsAlloc(aa#0, Tclass._System.array(Tclass._module.lowercase()), $Heap);
  var $nw: ref;
  var a##0: ref;
  var s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap);
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: char;
  var a##1: ref;

    // AddMethodImpl: InitTests, Impl$$_module.__default.InitTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(85,10)
    assume true;
    assert {:id "id1118"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.lowercase()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(86,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := aa#0;
    call {:id "id1120"} Call$$_module.__default.PrintArray(Tclass._module.lowercase(), a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(87,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(111))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(88,6)
    assume true;
    assert {:id "id1122"} 0 <= Seq#Length(s#0);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc i#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 < Seq#Length(s#0))
            {
                assert {:id "id1123"} 0 <= i#0 && i#0 < Seq#Length(s#0);
                assume {:id "id1124"} lambdaResult#0 == $Unbox(Seq#Index(s#0, i#0)): char;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TChar);
            }
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.lowercase()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == Seq#Length(s#0);
    assert {:id "id1125"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < Seq#Length(s#0)
         ==> Requires1(TInt, 
          TChar, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box($Unbox(Seq#Index(s#0, $Unbox($l#0#i#0): int)): char)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#0#i#0): int
                       && $Unbox($l#0#i#0): int < Seq#Length(s#0)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0)));
    assert {:id "id1126"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < Seq#Length(s#0)
         ==> $Is($Unbox(Apply1(TInt, 
              TChar, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $Box($Unbox(Seq#Index(s#0, $Unbox($l#0#i#0): int)): char)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $IsBox($l#0#i#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#0#i#0): int
                           && $Unbox($l#0#i#0): int < Seq#Length(s#0)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0))): char, 
          Tclass._module.lowercase()));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < Seq#Length(s#0)
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): char
           == $Unbox(Apply1(TInt, 
              TChar, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $Box($Unbox(Seq#Index(s#0, $Unbox($l#0#i#0): int)): char)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $IsBox($l#0#i#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#0#i#0): int
                           && $Unbox($l#0#i#0): int < Seq#Length(s#0)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0))): char);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(89,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := aa#0;
    call {:id "id1128"} Call$$_module.__default.PrintArray(Tclass._module.lowercase(), a##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "MultipleDimensions (well-formedness)"} CheckWellFormed$$_module.__default.MultipleDimensions();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleDimensions (call)"} Call$$_module.__default.MultipleDimensions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleDimensions (correctness)"} Impl$$_module.__default.MultipleDimensions() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleDimensions (correctness)"} Impl$$_module.__default.MultipleDimensions() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var matrix#0: ref
     where $Is(matrix#0, Tclass._System.array2(TInt))
       && $IsAlloc(matrix#0, Tclass._System.array2(TInt), $Heap);
  var $nw: ref;
  var m##0: ref;
  var $rhs##0: ref;
  var rows##0: int;
  var cols##0: int;
  var zero##0: int;
  var one##0: int;
  var m##1: ref;
  var cube#0: ref
     where $Is(cube#0, Tclass._System.array3(TInt))
       && $IsAlloc(cube#0, Tclass._System.array3(TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var _v0#0: int;
  var _v1#0: int;
  var _v2#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var jagged#0: ref
     where $Is(jagged#0, Tclass._System.array(Tclass._System.array(TInt)))
       && $IsAlloc(jagged#0, Tclass._System.array(Tclass._System.array(TInt)), $Heap);
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: ref;
  var a##0: ref;

    // AddMethodImpl: MultipleDimensions, Impl$$_module.__default.MultipleDimensions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(93,14)
    assume true;
    assert {:id "id1129"} 0 <= LitInt(2);
    assert {:id "id1130"} 0 <= LitInt(8);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(2);
    assume _System.array2.Length1($nw) == LitInt(8);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    matrix#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(94,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := matrix#0;
    call {:id "id1132"} Call$$_module.__default.PrintMatrix(TInt, m##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(95,23)
    assume true;
    // TrCallStmt: Adding lhs with type array2<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    rows##0 := LitInt(3);
    assume true;
    // ProcessCallStmt: CheckSubrange
    cols##0 := LitInt(5);
    assume true;
    // ProcessCallStmt: CheckSubrange
    zero##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    one##0 := LitInt(1);
    call {:id "id1133"} $rhs##0 := Call$$_module.__default.DiagMatrix(TInt, rows##0, cols##0, $Box(zero##0), $Box(one##0));
    // TrCallStmt: After ProcessCallStmt
    matrix#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(96,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##1 := matrix#0;
    call {:id "id1135"} Call$$_module.__default.PrintMatrix(TInt, m##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(98,12)
    assume true;
    assert {:id "id1136"} 0 <= LitInt(3);
    assert {:id "id1137"} 0 <= LitInt(0);
    assert {:id "id1138"} 0 <= LitInt(4);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v0#0;
        havoc _v1#0;
        havoc _v2#0;
        if (LitInt(0) <= _v0#0)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id1139"} lambdaResult#0 == LitInt(16);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array3?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array3.Length0($nw) == LitInt(3);
    assume _System.array3.Length1($nw) == LitInt(0);
    assume _System.array3.Length2($nw) == LitInt(4);
    assert {:id "id1140"} {:subsumption 0} (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int, arrayinit#0#i2#0: int :: 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < LitInt(3)
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < LitInt(0)
           && 
          0 <= arrayinit#0#i2#0
           && arrayinit#0#i2#0 < LitInt(4)
         ==> Requires3(Tclass._System.nat(), 
          TInt, 
          TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle3((lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box, $l#0#_v1#0: Box, $l#0#_v2#0: Box :: 
                    $Box(LitInt(16))), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box, $l#0#_v1#0: Box, $l#0#_v2#0: Box :: 
                    $IsBox($l#0#_v0#0, Tclass._System.nat())
                       && $IsBox($l#0#_v1#0, TInt)
                       && $IsBox($l#0#_v2#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box, $l#0#_v1#0: Box, $l#0#_v2#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0), 
          $Box(arrayinit#0#i1#0), 
          $Box(arrayinit#0#i2#0)));
    assume (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int, arrayinit#0#i2#0: int :: 
      { read($Heap, 
          $nw, 
          MultiIndexField(MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0), 
            arrayinit#0#i2#0)) } 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < LitInt(3)
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < LitInt(0)
           && 
          0 <= arrayinit#0#i2#0
           && arrayinit#0#i2#0 < LitInt(4)
         ==> $Unbox(read($Heap, 
              $nw, 
              MultiIndexField(MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0), 
                arrayinit#0#i2#0))): int
           == $Unbox(Apply3(Tclass._System.nat(), 
              TInt, 
              TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle3((lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box, $l#0#_v1#0: Box, $l#0#_v2#0: Box :: 
                        $Box(LitInt(16))), 
                      (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box, $l#0#_v1#0: Box, $l#0#_v2#0: Box :: 
                        $IsBox($l#0#_v0#0, Tclass._System.nat())
                           && $IsBox($l#0#_v1#0, TInt)
                           && $IsBox($l#0#_v2#0, TInt)), 
                      (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box, $l#0#_v1#0: Box, $l#0#_v2#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0), 
              $Box(arrayinit#0#i1#0), 
              $Box(arrayinit#0#i2#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cube#0 := $nw;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(99,3)
    assume true;
    assert {:id "id1142"} {:subsumption 0} cube#0 != null;
    assume true;
    assume true;
    assert {:id "id1143"} {:subsumption 0} cube#0 != null;
    assume true;
    assume true;
    assert {:id "id1144"} {:subsumption 0} cube#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(101,14)
    assume true;
    assert {:id "id1145"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._System.array(TInt)));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    jagged#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(102,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(103,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 5 - i#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant 5 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (5 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 5 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(104,15)
        assert {:id "id1148"} jagged#0 != null;
        assert {:id "id1149"} 0 <= i#0 && i#0 < _System.array.Length(jagged#0);
        assume true;
        assert {:id "id1150"} $_ModifiesFrame[jagged#0, IndexField(i#0)];
        assert {:id "id1151"} 0 <= i#0;
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        assume _System.array.Length($nw) == i#0;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        $rhs#0_0 := $nw;
        $Heap := update($Heap, jagged#0, IndexField(i#0), $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(105,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(103,3)
        assert {:id "id1155"} 0 <= $decr$loop#00 || 5 - i#0 == $decr$loop#00;
        assert {:id "id1156"} 5 - i#0 < $decr$loop#00;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(107,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := jagged#0;
    call {:id "id1157"} Call$$_module.__default.PrintArrayArray(TInt, a##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "DiagMatrix (well-formedness)"} CheckWellFormed$$_module.__default.DiagMatrix(_module._default.DiagMatrix$A: Ty, 
    rows#0: int, 
    cols#0: int, 
    zero#0: Box
       where $IsBox(zero#0, _module._default.DiagMatrix$A)
         && $IsAllocBox(zero#0, _module._default.DiagMatrix$A, $Heap), 
    one#0: Box
       where $IsBox(one#0, _module._default.DiagMatrix$A)
         && $IsAllocBox(one#0, _module._default.DiagMatrix$A, $Heap))
   returns (a#0: ref
       where $Is(a#0, Tclass._System.array2(_module._default.DiagMatrix$A))
         && $IsAlloc(a#0, Tclass._System.array2(_module._default.DiagMatrix$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DiagMatrix (call)"} Call$$_module.__default.DiagMatrix(_module._default.DiagMatrix$A: Ty, 
    rows#0: int, 
    cols#0: int, 
    zero#0: Box
       where $IsBox(zero#0, _module._default.DiagMatrix$A)
         && $IsAllocBox(zero#0, _module._default.DiagMatrix$A, $Heap), 
    one#0: Box
       where $IsBox(one#0, _module._default.DiagMatrix$A)
         && $IsAllocBox(one#0, _module._default.DiagMatrix$A, $Heap))
   returns (a#0: ref
       where $Is(a#0, Tclass._System.array2(_module._default.DiagMatrix$A))
         && $IsAlloc(a#0, Tclass._System.array2(_module._default.DiagMatrix$A), $Heap));
  // user-defined preconditions
  requires {:id "id1160"} rows#0 >= LitInt(0);
  requires {:id "id1161"} cols#0 >= LitInt(0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DiagMatrix (correctness)"} Impl$$_module.__default.DiagMatrix(_module._default.DiagMatrix$A: Ty, 
    rows#0: int, 
    cols#0: int, 
    zero#0: Box
       where $IsBox(zero#0, _module._default.DiagMatrix$A)
         && $IsAllocBox(zero#0, _module._default.DiagMatrix$A, $Heap), 
    one#0: Box
       where $IsBox(one#0, _module._default.DiagMatrix$A)
         && $IsAllocBox(one#0, _module._default.DiagMatrix$A, $Heap))
   returns (a#0: ref
       where $Is(a#0, Tclass._System.array2(_module._default.DiagMatrix$A))
         && $IsAlloc(a#0, Tclass._System.array2(_module._default.DiagMatrix$A), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1162"} rows#0 >= LitInt(0);
  requires {:id "id1163"} cols#0 >= LitInt(0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DiagMatrix (correctness)"} Impl$$_module.__default.DiagMatrix(_module._default.DiagMatrix$A: Ty, 
    rows#0: int, 
    cols#0: int, 
    zero#0: Box, 
    one#0: Box)
   returns (a#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var x#0: int;
  var y#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: Box;
  var $nw: ref;

    // AddMethodImpl: DiagMatrix, Impl$$_module.__default.DiagMatrix
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(114,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(114,3)
    assume true;
    assert {:id "id1164"} 0 <= rows#0;
    assert {:id "id1165"} 0 <= cols#0;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc x#0;
        havoc y#0;
        if (LitInt(0) <= x#0)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            if (x#0 == y#0)
            {
                assume {:id "id1166"} lambdaResult#0 == one#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $IsBox(lambdaResult#0, _module._default.DiagMatrix$A);
            }
            else
            {
                assume {:id "id1167"} lambdaResult#0 == zero#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $IsBox(lambdaResult#0, _module._default.DiagMatrix$A);
            }
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(_module._default.DiagMatrix$A));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == rows#0;
    assume _System.array2.Length1($nw) == cols#0;
    assert {:id "id1168"} {:subsumption 0} (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < rows#0
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < cols#0
         ==> Requires2(Tclass._System.nat(), 
          TInt, 
          _module._default.DiagMatrix$A, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle2((lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
                    (if $Unbox($l#0#x#0): int == $Unbox($l#0#y#0): int then one#0 else zero#0)), 
                  (lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
                    $IsBox($l#0#x#0, Tclass._System.nat()) && $IsBox($l#0#y#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0), 
          $Box(arrayinit#0#i1#0)));
    assume (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0)) } 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < rows#0
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < cols#0
         ==> read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0))
           == Apply2(Tclass._System.nat(), 
            TInt, 
            _module._default.DiagMatrix$A, 
            $Heap, 
            Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                  Handle2((lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
                      (if $Unbox($l#0#x#0): int == $Unbox($l#0#y#0): int then one#0 else zero#0)), 
                    (lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
                      $IsBox($l#0#x#0, Tclass._System.nat()) && $IsBox($l#0#y#0, TInt)), 
                    (lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                $LS($LZ))), 
            $Box(arrayinit#0#i0#0), 
            $Box(arrayinit#0#i1#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    return;
}



procedure {:verboseName "PrintMatrix (well-formedness)"} CheckWellFormed$$_module.__default.PrintMatrix(_module._default.PrintMatrix$A: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(_module._default.PrintMatrix$A))
         && $IsAlloc(m#0, Tclass._System.array2(_module._default.PrintMatrix$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMatrix (call)"} Call$$_module.__default.PrintMatrix(_module._default.PrintMatrix$A: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(_module._default.PrintMatrix$A))
         && $IsAlloc(m#0, Tclass._System.array2(_module._default.PrintMatrix$A), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMatrix (correctness)"} Impl$$_module.__default.PrintMatrix(_module._default.PrintMatrix$A: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(_module._default.PrintMatrix$A))
         && $IsAlloc(m#0, Tclass._System.array2(_module._default.PrintMatrix$A), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintMatrix (correctness)"} Impl$$_module.__default.PrintMatrix(_module._default.PrintMatrix$A: Ty, m#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_0: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: PrintMatrix, Impl$$_module.__default.PrintMatrix
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(118,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(119,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array2.Length0(m#0) - i#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant _System.array2.Length0(m#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id1171"} m#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id1172"} m#0 != null;
        assume true;
        if (_System.array2.Length0(m#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _System.array2.Length0(m#0) - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(120,11)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(121,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := _System.array2.Length1(m#0) - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant _System.array2.Length1(m#0) - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assert {:id "id1174"} m#0 != null;
                assume true;
                assume false;
            }

            assert {:id "id1175"} m#0 != null;
            assume true;
            if (_System.array2.Length1(m#0) <= j#0_0)
            {
                break;
            }

            $decr$loop#0_00 := _System.array2.Length1(m#0) - j#0_0;
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(122,7)
            assert {:id "id1176"} m#0 != null;
            assert {:id "id1177"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
            assert {:id "id1178"} {:subsumption 0} 0 <= j#0_0 && j#0_0 < _System.array2.Length1(m#0);
            assume true;
            assume true;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(123,9)
            assume true;
            assume true;
            j#0_0 := j#0_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(121,5)
            assert {:id "id1180"} 0 <= $decr$loop#0_00 || _System.array2.Length1(m#0) - j#0_0 == $decr$loop#0_00;
            assert {:id "id1181"} _System.array2.Length1(m#0) - j#0_0 < $decr$loop#0_00;
        }

        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(125,5)
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(126,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(119,3)
        assert {:id "id1183"} 0 <= $decr$loop#00 || _System.array2.Length0(m#0) - i#0 == $decr$loop#00;
        assert {:id "id1184"} _System.array2.Length0(m#0) - i#0 < $decr$loop#00;
    }
}



procedure {:verboseName "PrintArrayArray (well-formedness)"} CheckWellFormed$$_module.__default.PrintArrayArray(_module._default.PrintArrayArray$A: Ty, 
    a#0: ref
       where $Is(a#0, 
          Tclass._System.array(Tclass._System.array(_module._default.PrintArrayArray$A)))
         && $IsAlloc(a#0, 
          Tclass._System.array(Tclass._System.array(_module._default.PrintArrayArray$A)), 
          $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintArrayArray (call)"} Call$$_module.__default.PrintArrayArray(_module._default.PrintArrayArray$A: Ty, 
    a#0: ref
       where $Is(a#0, 
          Tclass._System.array(Tclass._System.array(_module._default.PrintArrayArray$A)))
         && $IsAlloc(a#0, 
          Tclass._System.array(Tclass._System.array(_module._default.PrintArrayArray$A)), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintArrayArray (correctness)"} Impl$$_module.__default.PrintArrayArray(_module._default.PrintArrayArray$A: Ty, 
    a#0: ref
       where $Is(a#0, 
          Tclass._System.array(Tclass._System.array(_module._default.PrintArrayArray$A)))
         && $IsAlloc(a#0, 
          Tclass._System.array(Tclass._System.array(_module._default.PrintArrayArray$A)), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintArrayArray (correctness)"} Impl$$_module.__default.PrintArrayArray(_module._default.PrintArrayArray$A: Ty, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: PrintArrayArray, Impl$$_module.__default.PrintArrayArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(131,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(132,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array.Length(a#0) - i#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant _System.array.Length(a#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id1186"} a#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id1187"} a#0 != null;
        assume true;
        if (_System.array.Length(a#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _System.array.Length(a#0) - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(133,5)
        assert {:id "id1188"} a#0 != null;
        assert {:id "id1189"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assert {:id "id1190"} $Unbox(read($Heap, a#0, IndexField(i#0))): ref != null;
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(134,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(132,3)
        assert {:id "id1192"} 0 <= $decr$loop#00 || _System.array.Length(a#0) - i#0 == $decr$loop#00;
        assert {:id "id1193"} _System.array.Length(a#0) - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(136,3)
    assume true;
}



procedure {:verboseName "Index (well-formedness)"} CheckWellFormed$$_module.__default.Index();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Index (call)"} Call$$_module.__default.Index();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Index (correctness)"} Impl$$_module.__default.Index() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.BV10() : Ty
uses {
// Tclass._module.BV10 Tag
axiom Tag(Tclass._module.BV10()) == Tagclass._module.BV10
   && TagFamily(Tclass._module.BV10()) == tytagFamily$BV10;
}

const unique Tagclass._module.BV10: TyTag;

// Box/unbox axiom for Tclass._module.BV10
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.BV10()) } 
  $IsBox(bx, Tclass._module.BV10())
     ==> $Box($Unbox(bx): bv10) == bx && $Is($Unbox(bx): bv10, Tclass._module.BV10()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Index (correctness)"} Impl$$_module.__default.Index() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int where LitInt(-10) <= i#0 && i#0 < 100;
  var newtype$check#0: int;
  var j#0: int where LitInt(-10) <= j#0 && j#0 < 72057594037927936;
  var newtype$check#1: int;
  var k#0: bv10 where k#0 != 999bv10;
  var l#0: int where LitInt(0) <= l#0 && l#0 < 256;
  var newtype$check#2: int;
  var m#0: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TSeq(TChar)))
       && $IsAlloc(a#0, Tclass._System.array(TSeq(TChar)), $Heap);
  var $nw: ref;
  var $rhs#0: Seq;
  var $rhs#1: Seq;
  var $rhs#2: Seq;
  var $rhs#3: Seq;
  var $rhs#4: Seq;
  var b#0: ref
     where $Is(b#0, Tclass._System.array2(TSeq(TChar)))
       && $IsAlloc(b#0, Tclass._System.array2(TSeq(TChar)), $Heap);
  var $rhs#5: Seq;
  var $rhs#6: Seq;
  var $rhs#7: Seq;
  var $rhs#8: Seq;
  var $rhs#9: Seq;
  var s#0: Seq
     where $Is(s#0, TSeq(TSeq(TChar))) && $IsAlloc(s#0, TSeq(TSeq(TChar)), $Heap);
  var $lambdaHeap#0: Heap;
  var _v3#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: Seq;

    // AddMethodImpl: Index, Impl$$_module.__default.Index
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(148,16)
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id1194"} LitInt(-10) <= newtype$check#0 && newtype$check#0 < 100;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(149,16)
    assume true;
    newtype$check#1 := LitInt(1);
    assert {:id "id1196"} LitInt(-10) <= newtype$check#1 && newtype$check#1 < 72057594037927936;
    assume true;
    j#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(150,15)
    assume true;
    assert {:id "id1198"} $Is(Lit(2bv10), Tclass._module.BV10());
    assume true;
    k#0 := Lit(2bv10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(151,16)
    assume true;
    newtype$check#2 := LitInt(250);
    assert {:id "id1200"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
    assume true;
    l#0 := LitInt(250);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(152,14)
    assume true;
    assume true;
    m#0 := LitInt(100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(154,9)
    assume true;
    assert {:id "id1203"} 0 <= LitInt(300);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TSeq(TChar)));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(300);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(155,8)
    assert {:id "id1205"} a#0 != null;
    assert {:id "id1206"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    assert {:id "id1207"} $_ModifiesFrame[a#0, IndexField(i#0)];
    assume true;
    $rhs#0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(105))));
    $Heap := update($Heap, a#0, IndexField(i#0), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(156,8)
    assert {:id "id1210"} a#0 != null;
    assert {:id "id1211"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    assert {:id "id1212"} $_ModifiesFrame[a#0, IndexField(j#0)];
    assume true;
    $rhs#1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(111))));
    $Heap := update($Heap, a#0, IndexField(j#0), $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(157,8)
    assert {:id "id1215"} a#0 != null;
    assert {:id "id1216"} nat_from_bv10(k#0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id1217"} $_ModifiesFrame[a#0, IndexField(nat_from_bv10(k#0))];
    assume true;
    $rhs#2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(116))), $Box(char#FromInt(106))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(110))), 
        $Box(char#FromInt(97))));
    $Heap := update($Heap, a#0, IndexField(nat_from_bv10(k#0)), $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(158,8)
    assert {:id "id1220"} a#0 != null;
    assert {:id "id1221"} 0 <= l#0 && l#0 < _System.array.Length(a#0);
    assume true;
    assert {:id "id1222"} $_ModifiesFrame[a#0, IndexField(l#0)];
    assume true;
    $rhs#3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
        $Box(char#FromInt(106))));
    $Heap := update($Heap, a#0, IndexField(l#0), $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(159,8)
    assert {:id "id1225"} a#0 != null;
    assert {:id "id1226"} 0 <= m#0 && m#0 < _System.array.Length(a#0);
    assume true;
    assert {:id "id1227"} $_ModifiesFrame[a#0, IndexField(m#0)];
    assume true;
    $rhs#4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(111))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(97))));
    $Heap := update($Heap, a#0, IndexField(m#0), $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(160,3)
    assert {:id "id1230"} a#0 != null;
    assert {:id "id1231"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    assume true;
    assert {:id "id1232"} a#0 != null;
    assert {:id "id1233"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    assume true;
    assert {:id "id1234"} a#0 != null;
    assert {:id "id1235"} {:subsumption 0} nat_from_bv10(k#0) < _System.array.Length(a#0);
    assume true;
    assume true;
    assert {:id "id1236"} a#0 != null;
    assert {:id "id1237"} {:subsumption 0} 0 <= l#0 && l#0 < _System.array.Length(a#0);
    assume true;
    assume true;
    assert {:id "id1238"} a#0 != null;
    assert {:id "id1239"} {:subsumption 0} 0 <= m#0 && m#0 < _System.array.Length(a#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(162,9)
    assume true;
    assert {:id "id1240"} 0 <= LitInt(20);
    assert {:id "id1241"} 0 <= LitInt(300);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TSeq(TChar)));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(20);
    assume _System.array2.Length1($nw) == LitInt(300);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    b#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(163,12)
    assert {:id "id1243"} b#0 != null;
    assert {:id "id1244"} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1245"} 0 <= i#0 && i#0 < _System.array2.Length1(b#0);
    assume true;
    assert {:id "id1246"} $_ModifiesFrame[b#0, MultiIndexField(IndexField(LitInt(18)), i#0)];
    assume true;
    $rhs#5 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(105))));
    $Heap := update($Heap, b#0, MultiIndexField(IndexField(LitInt(18)), i#0), $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(164,12)
    assert {:id "id1249"} b#0 != null;
    assert {:id "id1250"} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1251"} 0 <= j#0 && j#0 < _System.array2.Length1(b#0);
    assume true;
    assert {:id "id1252"} $_ModifiesFrame[b#0, MultiIndexField(IndexField(LitInt(18)), j#0)];
    assume true;
    $rhs#6 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(111))));
    $Heap := update($Heap, b#0, MultiIndexField(IndexField(LitInt(18)), j#0), $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(165,12)
    assert {:id "id1255"} b#0 != null;
    assert {:id "id1256"} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1257"} 0 <= nat_from_bv10(k#0) && nat_from_bv10(k#0) < _System.array2.Length1(b#0);
    assume true;
    assert {:id "id1258"} $_ModifiesFrame[b#0, MultiIndexField(IndexField(LitInt(18)), nat_from_bv10(k#0))];
    assume true;
    $rhs#7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(116))), $Box(char#FromInt(106))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(110))), 
        $Box(char#FromInt(97))));
    $Heap := update($Heap, 
      b#0, 
      MultiIndexField(IndexField(LitInt(18)), nat_from_bv10(k#0)), 
      $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(166,12)
    assert {:id "id1261"} b#0 != null;
    assert {:id "id1262"} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1263"} 0 <= l#0 && l#0 < _System.array2.Length1(b#0);
    assume true;
    assert {:id "id1264"} $_ModifiesFrame[b#0, MultiIndexField(IndexField(LitInt(18)), l#0)];
    assume true;
    $rhs#8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
        $Box(char#FromInt(106))));
    $Heap := update($Heap, b#0, MultiIndexField(IndexField(LitInt(18)), l#0), $Box($rhs#8));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(167,12)
    assert {:id "id1267"} b#0 != null;
    assert {:id "id1268"} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1269"} 0 <= m#0 && m#0 < _System.array2.Length1(b#0);
    assume true;
    assert {:id "id1270"} $_ModifiesFrame[b#0, MultiIndexField(IndexField(LitInt(18)), m#0)];
    assume true;
    $rhs#9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(111))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(97))));
    $Heap := update($Heap, b#0, MultiIndexField(IndexField(LitInt(18)), m#0), $Box($rhs#9));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(168,3)
    assert {:id "id1273"} b#0 != null;
    assert {:id "id1274"} {:subsumption 0} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1275"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array2.Length1(b#0);
    assume true;
    assume true;
    assert {:id "id1276"} b#0 != null;
    assert {:id "id1277"} {:subsumption 0} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1278"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array2.Length1(b#0);
    assume true;
    assume true;
    assert {:id "id1279"} b#0 != null;
    assert {:id "id1280"} {:subsumption 0} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1281"} {:subsumption 0} 0 <= nat_from_bv10(k#0) && nat_from_bv10(k#0) < _System.array2.Length1(b#0);
    assume true;
    assume true;
    assert {:id "id1282"} b#0 != null;
    assert {:id "id1283"} {:subsumption 0} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1284"} {:subsumption 0} 0 <= l#0 && l#0 < _System.array2.Length1(b#0);
    assume true;
    assume true;
    assert {:id "id1285"} b#0 != null;
    assert {:id "id1286"} {:subsumption 0} 0 <= LitInt(18) && LitInt(18) < _System.array2.Length0(b#0);
    assert {:id "id1287"} {:subsumption 0} 0 <= m#0 && m#0 < _System.array2.Length1(b#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(170,9)
    assume true;
    assert {:id "id1288"} 0 <= LitInt(300);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v3#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id1289"} lambdaResult#0 == Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TSeq(TChar));
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id1290"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
      0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < LitInt(300)
         ==> Requires1(TInt, 
          TSeq(TChar), 
          $Heap, 
          Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                Handle1((lambda $l#1#heap#0: Heap, $l#1#_v3#0: Box :: 
                    $Box(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v3#0: Box :: $IsBox($l#1#_v3#0, TInt)), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v3#0: Box :: 
                    SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#0#i0#0)));
    assume true;
    s#0 := Seq#Create(TSeq(TChar), 
      $Heap, 
      LitInt(300), 
      Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
            Handle1((lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: 
                $Box(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))), 
              (lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: $IsBox($l#0#_v3#0, TInt)), 
              (lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: 
                SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(171,5)
    assume true;
    assert {:id "id1292"} 0 <= i#0 && i#0 < Seq#Length(s#0);
    assume true;
    s#0 := Seq#Update(s#0, 
      i#0, 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(105))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(172,5)
    assume true;
    assert {:id "id1294"} 0 <= j#0 && j#0 < Seq#Length(s#0);
    assume true;
    s#0 := Seq#Update(s#0, 
      j#0, 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                $Box(char#FromInt(108))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(111))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(173,5)
    assume true;
    assert {:id "id1296"} nat_from_bv10(k#0) < Seq#Length(s#0);
    assume true;
    s#0 := Seq#Update(s#0, 
      nat_from_bv10(k#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(116))), $Box(char#FromInt(106))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(110))), 
            $Box(char#FromInt(97))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(174,5)
    assume true;
    assert {:id "id1298"} 0 <= l#0 && l#0 < Seq#Length(s#0);
    assume true;
    s#0 := Seq#Update(s#0, 
      l#0, 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(106))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(175,5)
    assume true;
    assert {:id "id1300"} 0 <= m#0 && m#0 < Seq#Length(s#0);
    assume true;
    s#0 := Seq#Update(s#0, 
      m#0, 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(111))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(97))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(176,3)
    assert {:id "id1302"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(s#0);
    assume true;
    assume true;
    assert {:id "id1303"} {:subsumption 0} 0 <= j#0 && j#0 < Seq#Length(s#0);
    assume true;
    assume true;
    assert {:id "id1304"} {:subsumption 0} nat_from_bv10(k#0) < Seq#Length(s#0);
    assume true;
    assume true;
    assert {:id "id1305"} {:subsumption 0} 0 <= l#0 && l#0 < Seq#Length(s#0);
    assume true;
    assume true;
    assert {:id "id1306"} {:subsumption 0} 0 <= m#0 && m#0 < Seq#Length(s#0);
    assume true;
    assume true;
}



procedure {:verboseName "More (well-formedness)"} CheckWellFormed$$_module.__default.More();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "More (call)"} Call$$_module.__default.More();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "More (correctness)"} Impl$$_module.__default.More() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Yes() : Ty
uses {
// Tclass._module.Yes Tag
axiom Tag(Tclass._module.Yes()) == Tagclass._module.Yes
   && TagFamily(Tclass._module.Yes()) == tytagFamily$Yes;
}

const unique Tagclass._module.Yes: TyTag;

// Box/unbox axiom for Tclass._module.Yes
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Yes()) } 
  $IsBox(bx, Tclass._module.Yes())
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, Tclass._module.Yes()));

function Tclass._module.nByte() : Ty
uses {
// Tclass._module.nByte Tag
axiom Tag(Tclass._module.nByte()) == Tagclass._module.nByte
   && TagFamily(Tclass._module.nByte()) == tytagFamily$nByte;
}

const unique Tagclass._module.nByte: TyTag;

// Box/unbox axiom for Tclass._module.nByte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.nByte()) } 
  $IsBox(bx, Tclass._module.nByte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.nByte()));

function Tclass._module.nShort() : Ty
uses {
// Tclass._module.nShort Tag
axiom Tag(Tclass._module.nShort()) == Tagclass._module.nShort
   && TagFamily(Tclass._module.nShort()) == tytagFamily$nShort;
}

const unique Tagclass._module.nShort: TyTag;

// Box/unbox axiom for Tclass._module.nShort
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.nShort()) } 
  $IsBox(bx, Tclass._module.nShort())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.nShort()));

function Tclass._module.nInt() : Ty
uses {
// Tclass._module.nInt Tag
axiom Tag(Tclass._module.nInt()) == Tagclass._module.nInt
   && TagFamily(Tclass._module.nInt()) == tytagFamily$nInt;
}

const unique Tagclass._module.nInt: TyTag;

// Box/unbox axiom for Tclass._module.nInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.nInt()) } 
  $IsBox(bx, Tclass._module.nInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.nInt()));

function Tclass._module.nLong() : Ty
uses {
// Tclass._module.nLong Tag
axiom Tag(Tclass._module.nLong()) == Tagclass._module.nLong
   && TagFamily(Tclass._module.nLong()) == tytagFamily$nLong;
}

const unique Tagclass._module.nLong: TyTag;

// Box/unbox axiom for Tclass._module.nLong
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.nLong()) } 
  $IsBox(bx, Tclass._module.nLong())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.nLong()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "More (correctness)"} Impl$$_module.__default.More() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: ref
     where $Is(aa#0, Tclass._System.array(Tclass._module.lowercase()))
       && $IsAlloc(aa#0, Tclass._System.array(Tclass._module.lowercase()), $Heap);
  var $nw: ref;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var a##0: ref;
  var s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap);
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: char;
  var a##1: ref;
  var vv#0: ref
     where $Is(vv#0, Tclass._System.array(Tclass._module.BV10()))
       && $IsAlloc(vv#0, Tclass._System.array(Tclass._module.BV10()), $Heap);
  var a##2: ref;
  var yy#0: ref
     where $Is(yy#0, Tclass._System.array(Tclass._module.Yes()))
       && $IsAlloc(yy#0, Tclass._System.array(Tclass._module.Yes()), $Heap);
  var a##3: ref;
  var a0#0: ref
     where $Is(a0#0, Tclass._System.array(Tclass._module.nByte()))
       && $IsAlloc(a0#0, Tclass._System.array(Tclass._module.nByte()), $Heap);
  var a##4: ref;
  var a1#0: ref
     where $Is(a1#0, Tclass._System.array(Tclass._module.nShort()))
       && $IsAlloc(a1#0, Tclass._System.array(Tclass._module.nShort()), $Heap);
  var a##5: ref;
  var a2#0: ref
     where $Is(a2#0, Tclass._System.array(Tclass._module.nInt()))
       && $IsAlloc(a2#0, Tclass._System.array(Tclass._module.nInt()), $Heap);
  var a##6: ref;
  var a3#0: ref
     where $Is(a3#0, Tclass._System.array(Tclass._module.nLong()))
       && $IsAlloc(a3#0, Tclass._System.array(Tclass._module.nLong()), $Heap);
  var a##7: ref;
  var kitchenSink#0: DatatypeType
     where $Is(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.lowercase(), 
          Tclass._module.BV10(), 
          Tclass._module.Yes(), 
          Tclass._module.nByte(), 
          Tclass._module.nShort(), 
          Tclass._module.nInt(), 
          Tclass._module.nLong()))
       && $IsAlloc(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.lowercase(), 
          Tclass._module.BV10(), 
          Tclass._module.Yes(), 
          Tclass._module.nByte(), 
          Tclass._module.nShort(), 
          Tclass._module.nInt(), 
          Tclass._module.nLong()), 
        $Heap);
  var dt_update_tmp#0#Z#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var dt_update#0#0#Z#1_0: char;
  var let#1_1#0#0: char;

    // AddMethodImpl: More, Impl$$_module.__default.More
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(180,10)
    assume true;
    assert {:id "id1307"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.lowercase()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(181,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id1309"} {:subsumption 0} aa#0 != null;
        }

        assume true;
        assume LitInt(0) <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        assert {:id "id1310"} aa#0 != null;
        assert {:id "id1311"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        assume true;
        assert {:id "id1312"} $_ModifiesFrame[aa#0, IndexField(i#0_0)];
        assert {:id "id1313"} aa#0 != null;
        assert {:id "id1314"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        if ($Unbox(read($Heap, aa#0, IndexField(i#0_0))): char == Lit(char#FromInt(0)))
        {
        }
        else
        {
            assert {:id "id1315"} aa#0 != null;
            assert {:id "id1316"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        }

        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1 && i#0_1 < _System.array.Length(aa#0);
        assume i#0_0 != i#0_1;
        assert {:id "id1317"} aa#0 != aa#0
           || IndexField(i#0_0) != IndexField(i#0_1)
           || (if $Unbox(read($Heap, aa#0, IndexField(i#0_0))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, aa#0, IndexField(i#0_0))): char)
             == (if $Unbox(read($Heap, aa#0, IndexField(i#0_1))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, aa#0, IndexField(i#0_1))): char);
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
             || (exists i#0_2: int :: 
              LitInt(0) <= i#0_2
                 && i#0_2 < _System.array.Length(aa#0)
                 && $o == aa#0
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, aa#0, IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0 && i#inv#0_0 < _System.array.Length(aa#0)
             ==> read($Heap, aa#0, IndexField(i#inv#0_0))
               == $Box((if $Unbox(read($prevHeap, aa#0, IndexField(i#inv#0_0))): char
                     == Lit(char#FromInt(0))
                   then char#FromInt(97)
                   else $Unbox(read($prevHeap, aa#0, IndexField(i#inv#0_0))): char)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(186,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := aa#0;
    call {:id "id1318"} Call$$_module.__default.PrintArray(Tclass._module.lowercase(), a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(188,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(111))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(189,6)
    assume true;
    assert {:id "id1320"} 0 <= Seq#Length(s#0);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc i#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 < Seq#Length(s#0))
            {
                assert {:id "id1321"} 0 <= i#0 && i#0 < Seq#Length(s#0);
                assume {:id "id1322"} lambdaResult#0 == $Unbox(Seq#Index(s#0, i#0)): char;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TChar);
            }
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.lowercase()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == Seq#Length(s#0);
    assert {:id "id1323"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < Seq#Length(s#0)
         ==> Requires1(TInt, 
          TChar, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box($Unbox(Seq#Index(s#0, $Unbox($l#0#i#0): int)): char)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#0#i#0): int
                       && $Unbox($l#0#i#0): int < Seq#Length(s#0)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0)));
    assert {:id "id1324"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < Seq#Length(s#0)
         ==> $Is($Unbox(Apply1(TInt, 
              TChar, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $Box($Unbox(Seq#Index(s#0, $Unbox($l#0#i#0): int)): char)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $IsBox($l#0#i#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#0#i#0): int
                           && $Unbox($l#0#i#0): int < Seq#Length(s#0)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0))): char, 
          Tclass._module.lowercase()));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < Seq#Length(s#0)
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): char
           == $Unbox(Apply1(TInt, 
              TChar, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $Box($Unbox(Seq#Index(s#0, $Unbox($l#0#i#0): int)): char)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $IsBox($l#0#i#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#0#i#0): int
                           && $Unbox($l#0#i#0): int < Seq#Length(s#0)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0))): char);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(190,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := aa#0;
    call {:id "id1326"} Call$$_module.__default.PrintArray(Tclass._module.lowercase(), a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(192,10)
    assume true;
    assert {:id "id1327"} 0 <= LitInt(4);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.BV10()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(4);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    vv#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(193,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := vv#0;
    call {:id "id1329"} Call$$_module.__default.PrintArray(Tclass._module.BV10(), a##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(195,10)
    assume true;
    assert {:id "id1330"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.Yes()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    yy#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(196,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := yy#0;
    call {:id "id1332"} Call$$_module.__default.PrintArray(Tclass._module.Yes(), a##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(198,10)
    assume true;
    assert {:id "id1333"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.nByte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a0#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(199,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := a0#0;
    call {:id "id1335"} Call$$_module.__default.PrintArray(Tclass._module.nByte(), a##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(200,10)
    assume true;
    assert {:id "id1336"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.nShort()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a1#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(201,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := a1#0;
    call {:id "id1338"} Call$$_module.__default.PrintArray(Tclass._module.nShort(), a##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(202,10)
    assume true;
    assert {:id "id1339"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.nInt()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a2#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(203,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##6 := a2#0;
    call {:id "id1341"} Call$$_module.__default.PrintArray(Tclass._module.nInt(), a##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(204,10)
    assume true;
    assert {:id "id1342"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.nLong()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a3#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(205,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##7 := a3#0;
    call {:id "id1344"} Call$$_module.__default.PrintArray(Tclass._module.nLong(), a##7);
    // TrCallStmt: After ProcessCallStmt
    havoc kitchenSink#0 /* where $Is(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.lowercase(), 
          Tclass._module.BV10(), 
          Tclass._module.Yes(), 
          Tclass._module.nByte(), 
          Tclass._module.nShort(), 
          Tclass._module.nInt(), 
          Tclass._module.nLong()))
       && $IsAlloc(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.lowercase(), 
          Tclass._module.BV10(), 
          Tclass._module.Yes(), 
          Tclass._module.nByte(), 
          Tclass._module.nShort(), 
          Tclass._module.nInt(), 
          Tclass._module.nLong()), 
        $Heap) */;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(208,3)
    assume _System.Tuple7.___hMake7_q(kitchenSink#0);
    assume _System.Tuple7.___hMake7_q(kitchenSink#0);
    if ($Unbox(_System.Tuple7._0(kitchenSink#0)): char == Lit(char#FromInt(0)))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(209,17)
        assume true;
        havoc dt_update_tmp#0#Z#1_0;
        assume {:id "id1345"} let#1_0#0#0 == kitchenSink#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, 
          Tclass._System.Tuple7(Tclass._module.lowercase(), 
            Tclass._module.BV10(), 
            Tclass._module.Yes(), 
            Tclass._module.nByte(), 
            Tclass._module.nShort(), 
            Tclass._module.nInt(), 
            Tclass._module.nLong()));
        assume {:id "id1346"} dt_update_tmp#0#Z#1_0 == let#1_0#0#0;
        havoc dt_update#0#0#Z#1_0;
        assert {:id "id1347"} $Is(Lit(char#FromInt(97)), Tclass._module.lowercase());
        assume {:id "id1348"} let#1_1#0#0 == Lit(char#FromInt(97));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, Tclass._module.lowercase());
        assume {:id "id1349"} dt_update#0#0#Z#1_0 == let#1_1#0#0;
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume (var dt_update_tmp#0#1_0 := kitchenSink#0; 
          _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0));
        kitchenSink#0 := (var dt_update_tmp#0#1_0 := kitchenSink#0; 
          (var dt_update#0#0#1_0 := Lit(char#FromInt(97)); 
            #_System._tuple#7._#Make7($Box(dt_update#0#0#1_0), 
              _System.Tuple7._1(dt_update_tmp#0#1_0), 
              _System.Tuple7._2(dt_update_tmp#0#1_0), 
              _System.Tuple7._3(dt_update_tmp#0#1_0), 
              _System.Tuple7._4(dt_update_tmp#0#1_0), 
              _System.Tuple7._5(dt_update_tmp#0#1_0), 
              _System.Tuple7._6(dt_update_tmp#0#1_0))));
        pop;
    }
    else
    {
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(211,3)
    assume true;
    assume true;
}



procedure {:verboseName "MoreWithDefaults (well-formedness)"} CheckWellFormed$$_module.__default.MoreWithDefaults();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreWithDefaults (call)"} Call$$_module.__default.MoreWithDefaults();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MoreWithDefaults (correctness)"} Impl$$_module.__default.MoreWithDefaults() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.xchar() : Ty
uses {
// Tclass._module.xchar Tag
axiom Tag(Tclass._module.xchar()) == Tagclass._module.xchar
   && TagFamily(Tclass._module.xchar()) == tytagFamily$xchar;
}

const unique Tagclass._module.xchar: TyTag;

// Box/unbox axiom for Tclass._module.xchar
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xchar()) } 
  $IsBox(bx, Tclass._module.xchar())
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, Tclass._module.xchar()));

function Tclass._module.xBV10() : Ty
uses {
// Tclass._module.xBV10 Tag
axiom Tag(Tclass._module.xBV10()) == Tagclass._module.xBV10
   && TagFamily(Tclass._module.xBV10()) == tytagFamily$xBV10;
}

const unique Tagclass._module.xBV10: TyTag;

// Box/unbox axiom for Tclass._module.xBV10
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xBV10()) } 
  $IsBox(bx, Tclass._module.xBV10())
     ==> $Box($Unbox(bx): bv10) == bx && $Is($Unbox(bx): bv10, Tclass._module.xBV10()));

function Tclass._module.xYes() : Ty
uses {
// Tclass._module.xYes Tag
axiom Tag(Tclass._module.xYes()) == Tagclass._module.xYes
   && TagFamily(Tclass._module.xYes()) == tytagFamily$xYes;
}

const unique Tagclass._module.xYes: TyTag;

// Box/unbox axiom for Tclass._module.xYes
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xYes()) } 
  $IsBox(bx, Tclass._module.xYes())
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, Tclass._module.xYes()));

function Tclass._module.xnByte() : Ty
uses {
// Tclass._module.xnByte Tag
axiom Tag(Tclass._module.xnByte()) == Tagclass._module.xnByte
   && TagFamily(Tclass._module.xnByte()) == tytagFamily$xnByte;
}

const unique Tagclass._module.xnByte: TyTag;

// Box/unbox axiom for Tclass._module.xnByte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xnByte()) } 
  $IsBox(bx, Tclass._module.xnByte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.xnByte()));

function Tclass._module.xnShort() : Ty
uses {
// Tclass._module.xnShort Tag
axiom Tag(Tclass._module.xnShort()) == Tagclass._module.xnShort
   && TagFamily(Tclass._module.xnShort()) == tytagFamily$xnShort;
}

const unique Tagclass._module.xnShort: TyTag;

// Box/unbox axiom for Tclass._module.xnShort
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xnShort()) } 
  $IsBox(bx, Tclass._module.xnShort())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.xnShort()));

function Tclass._module.xnInt() : Ty
uses {
// Tclass._module.xnInt Tag
axiom Tag(Tclass._module.xnInt()) == Tagclass._module.xnInt
   && TagFamily(Tclass._module.xnInt()) == tytagFamily$xnInt;
}

const unique Tagclass._module.xnInt: TyTag;

// Box/unbox axiom for Tclass._module.xnInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xnInt()) } 
  $IsBox(bx, Tclass._module.xnInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.xnInt()));

function Tclass._module.xnLong() : Ty
uses {
// Tclass._module.xnLong Tag
axiom Tag(Tclass._module.xnLong()) == Tagclass._module.xnLong
   && TagFamily(Tclass._module.xnLong()) == tytagFamily$xnLong;
}

const unique Tagclass._module.xnLong: TyTag;

// Box/unbox axiom for Tclass._module.xnLong
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.xnLong()) } 
  $IsBox(bx, Tclass._module.xnLong())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.xnLong()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MoreWithDefaults (correctness)"} Impl$$_module.__default.MoreWithDefaults() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: ref
     where $Is(aa#0, Tclass._System.array(Tclass._module.xchar()))
       && $IsAlloc(aa#0, Tclass._System.array(Tclass._module.xchar()), $Heap);
  var $nw: ref;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var a##0: ref;
  var vv#0: ref
     where $Is(vv#0, Tclass._System.array(Tclass._module.xBV10()))
       && $IsAlloc(vv#0, Tclass._System.array(Tclass._module.xBV10()), $Heap);
  var a##1: ref;
  var yy#0: ref
     where $Is(yy#0, Tclass._System.array(Tclass._module.xYes()))
       && $IsAlloc(yy#0, Tclass._System.array(Tclass._module.xYes()), $Heap);
  var a##2: ref;
  var a0#0: ref
     where $Is(a0#0, Tclass._System.array(Tclass._module.xnByte()))
       && $IsAlloc(a0#0, Tclass._System.array(Tclass._module.xnByte()), $Heap);
  var a##3: ref;
  var a1#0: ref
     where $Is(a1#0, Tclass._System.array(Tclass._module.xnShort()))
       && $IsAlloc(a1#0, Tclass._System.array(Tclass._module.xnShort()), $Heap);
  var a##4: ref;
  var a2#0: ref
     where $Is(a2#0, Tclass._System.array(Tclass._module.xnInt()))
       && $IsAlloc(a2#0, Tclass._System.array(Tclass._module.xnInt()), $Heap);
  var a##5: ref;
  var a3#0: ref
     where $Is(a3#0, Tclass._System.array(Tclass._module.xnLong()))
       && $IsAlloc(a3#0, Tclass._System.array(Tclass._module.xnLong()), $Heap);
  var a##6: ref;
  var kitchenSink#0: DatatypeType
     where $Is(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.xchar(), 
          Tclass._module.xBV10(), 
          Tclass._module.xYes(), 
          Tclass._module.xnByte(), 
          Tclass._module.xnShort(), 
          Tclass._module.xnInt(), 
          Tclass._module.xnLong()))
       && $IsAlloc(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.xchar(), 
          Tclass._module.xBV10(), 
          Tclass._module.xYes(), 
          Tclass._module.xnByte(), 
          Tclass._module.xnShort(), 
          Tclass._module.xnInt(), 
          Tclass._module.xnLong()), 
        $Heap);
  var dt_update_tmp#0#Z#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var dt_update#0#0#Z#1_0: char;
  var let#1_1#0#0: char;

    // AddMethodImpl: MoreWithDefaults, Impl$$_module.__default.MoreWithDefaults
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(223,10)
    assume true;
    assert {:id "id1351"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xchar()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(224,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id1353"} {:subsumption 0} aa#0 != null;
        }

        assume true;
        assume LitInt(0) <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        assert {:id "id1354"} aa#0 != null;
        assert {:id "id1355"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        assume true;
        assert {:id "id1356"} $_ModifiesFrame[aa#0, IndexField(i#0_0)];
        assert {:id "id1357"} aa#0 != null;
        assert {:id "id1358"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        if ($Unbox(read($Heap, aa#0, IndexField(i#0_0))): char == Lit(char#FromInt(0)))
        {
        }
        else
        {
            assert {:id "id1359"} aa#0 != null;
            assert {:id "id1360"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        }

        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1 && i#0_1 < _System.array.Length(aa#0);
        assume i#0_0 != i#0_1;
        assert {:id "id1361"} aa#0 != aa#0
           || IndexField(i#0_0) != IndexField(i#0_1)
           || (if $Unbox(read($Heap, aa#0, IndexField(i#0_0))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, aa#0, IndexField(i#0_0))): char)
             == (if $Unbox(read($Heap, aa#0, IndexField(i#0_1))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, aa#0, IndexField(i#0_1))): char);
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
             || (exists i#0_2: int :: 
              LitInt(0) <= i#0_2
                 && i#0_2 < _System.array.Length(aa#0)
                 && $o == aa#0
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, aa#0, IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0 && i#inv#0_0 < _System.array.Length(aa#0)
             ==> read($Heap, aa#0, IndexField(i#inv#0_0))
               == $Box((if $Unbox(read($prevHeap, aa#0, IndexField(i#inv#0_0))): char
                     == Lit(char#FromInt(0))
                   then char#FromInt(97)
                   else $Unbox(read($prevHeap, aa#0, IndexField(i#inv#0_0))): char)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(227,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := aa#0;
    call {:id "id1362"} Call$$_module.__default.PrintArray(Tclass._module.xchar(), a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(229,10)
    assume true;
    assert {:id "id1363"} 0 <= LitInt(4);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xBV10()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(4);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    vv#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(230,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := vv#0;
    call {:id "id1365"} Call$$_module.__default.PrintArray(Tclass._module.xBV10(), a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(232,10)
    assume true;
    assert {:id "id1366"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xYes()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    yy#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(233,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := yy#0;
    call {:id "id1368"} Call$$_module.__default.PrintArray(Tclass._module.xYes(), a##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(235,10)
    assume true;
    assert {:id "id1369"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xnByte()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a0#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(236,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := a0#0;
    call {:id "id1371"} Call$$_module.__default.PrintArray(Tclass._module.xnByte(), a##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(237,10)
    assume true;
    assert {:id "id1372"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xnShort()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a1#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(238,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := a1#0;
    call {:id "id1374"} Call$$_module.__default.PrintArray(Tclass._module.xnShort(), a##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(239,10)
    assume true;
    assert {:id "id1375"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xnInt()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a2#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(240,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := a2#0;
    call {:id "id1377"} Call$$_module.__default.PrintArray(Tclass._module.xnInt(), a##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(241,10)
    assume true;
    assert {:id "id1378"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.xnLong()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a3#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(242,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##6 := a3#0;
    call {:id "id1380"} Call$$_module.__default.PrintArray(Tclass._module.xnLong(), a##6);
    // TrCallStmt: After ProcessCallStmt
    havoc kitchenSink#0 /* where $Is(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.xchar(), 
          Tclass._module.xBV10(), 
          Tclass._module.xYes(), 
          Tclass._module.xnByte(), 
          Tclass._module.xnShort(), 
          Tclass._module.xnInt(), 
          Tclass._module.xnLong()))
       && $IsAlloc(kitchenSink#0, 
        Tclass._System.Tuple7(Tclass._module.xchar(), 
          Tclass._module.xBV10(), 
          Tclass._module.xYes(), 
          Tclass._module.xnByte(), 
          Tclass._module.xnShort(), 
          Tclass._module.xnInt(), 
          Tclass._module.xnLong()), 
        $Heap) */;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(245,3)
    assume _System.Tuple7.___hMake7_q(kitchenSink#0);
    assume _System.Tuple7.___hMake7_q(kitchenSink#0);
    if ($Unbox(_System.Tuple7._0(kitchenSink#0)): char == Lit(char#FromInt(0)))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(246,17)
        assume true;
        havoc dt_update_tmp#0#Z#1_0;
        assume {:id "id1381"} let#1_0#0#0 == kitchenSink#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, 
          Tclass._System.Tuple7(Tclass._module.xchar(), 
            Tclass._module.xBV10(), 
            Tclass._module.xYes(), 
            Tclass._module.xnByte(), 
            Tclass._module.xnShort(), 
            Tclass._module.xnInt(), 
            Tclass._module.xnLong()));
        assume {:id "id1382"} dt_update_tmp#0#Z#1_0 == let#1_0#0#0;
        havoc dt_update#0#0#Z#1_0;
        assert {:id "id1383"} $Is(Lit(char#FromInt(97)), Tclass._module.xchar());
        assume {:id "id1384"} let#1_1#0#0 == Lit(char#FromInt(97));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, Tclass._module.xchar());
        assume {:id "id1385"} dt_update#0#0#Z#1_0 == let#1_1#0#0;
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume _System.Tuple7.___hMake7_q(dt_update_tmp#0#Z#1_0);
        assume (var dt_update_tmp#0#1_0 := kitchenSink#0; 
          _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0)
             && _System.Tuple7.___hMake7_q(dt_update_tmp#0#1_0));
        kitchenSink#0 := (var dt_update_tmp#0#1_0 := kitchenSink#0; 
          (var dt_update#0#0#1_0 := Lit(char#FromInt(97)); 
            #_System._tuple#7._#Make7($Box(dt_update#0#0#1_0), 
              _System.Tuple7._1(dt_update_tmp#0#1_0), 
              _System.Tuple7._2(dt_update_tmp#0#1_0), 
              _System.Tuple7._3(dt_update_tmp#0#1_0), 
              _System.Tuple7._4(dt_update_tmp#0#1_0), 
              _System.Tuple7._5(dt_update_tmp#0#1_0), 
              _System.Tuple7._6(dt_update_tmp#0#1_0))));
        pop;
    }
    else
    {
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(248,3)
    assume true;
    assume true;
}



procedure {:verboseName "Coercions (well-formedness)"} CheckWellFormed$$_module.__default.Coercions();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Coercions (call)"} Call$$_module.__default.Coercions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Coercions (correctness)"} Impl$$_module.__default.Coercions() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.short() : Ty
uses {
// Tclass._module.short Tag
axiom Tag(Tclass._module.short()) == Tagclass._module.short
   && TagFamily(Tclass._module.short()) == tytagFamily$short;
}

const unique Tagclass._module.short: TyTag;

// Box/unbox axiom for Tclass._module.short
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.short()) } 
  $IsBox(bx, Tclass._module.short())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.short()));

function Tclass._module.Cell(Ty) : Ty;

const unique Tagclass._module.Cell: TyTag;

// Tclass._module.Cell Tag
axiom (forall _module.Cell$T: Ty :: 
  { Tclass._module.Cell(_module.Cell$T) } 
  Tag(Tclass._module.Cell(_module.Cell$T)) == Tagclass._module.Cell
     && TagFamily(Tclass._module.Cell(_module.Cell$T)) == tytagFamily$Cell);

function Tclass._module.Cell_0(Ty) : Ty;

// Tclass._module.Cell injectivity 0
axiom (forall _module.Cell$T: Ty :: 
  { Tclass._module.Cell(_module.Cell$T) } 
  Tclass._module.Cell_0(Tclass._module.Cell(_module.Cell$T)) == _module.Cell$T);

// Box/unbox axiom for Tclass._module.Cell
axiom (forall _module.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell(_module.Cell$T)) } 
  $IsBox(bx, Tclass._module.Cell(_module.Cell$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Cell(_module.Cell$T)));

function Tclass._module.Cell?(Ty) : Ty;

const unique Tagclass._module.Cell?: TyTag;

// Tclass._module.Cell? Tag
axiom (forall _module.Cell$T: Ty :: 
  { Tclass._module.Cell?(_module.Cell$T) } 
  Tag(Tclass._module.Cell?(_module.Cell$T)) == Tagclass._module.Cell?
     && TagFamily(Tclass._module.Cell?(_module.Cell$T)) == tytagFamily$Cell);

function Tclass._module.Cell?_0(Ty) : Ty;

// Tclass._module.Cell? injectivity 0
axiom (forall _module.Cell$T: Ty :: 
  { Tclass._module.Cell?(_module.Cell$T) } 
  Tclass._module.Cell?_0(Tclass._module.Cell?(_module.Cell$T)) == _module.Cell$T);

// Box/unbox axiom for Tclass._module.Cell?
axiom (forall _module.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell?(_module.Cell$T)) } 
  $IsBox(bx, Tclass._module.Cell?(_module.Cell$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Cell?(_module.Cell$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Coercions (correctness)"} Impl$$_module.__default.Coercions() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#cell#0: bool;
  var cell#0: ref
     where defass#cell#0
       ==> $Is(cell#0, Tclass._module.Cell(Tclass._module.short()))
         && $IsAlloc(cell#0, Tclass._module.Cell(Tclass._module.short()), $Heap);
  var $nw: ref;
  var t##0: int;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(Tclass._module.short()))
       && $IsAlloc(a#0, Tclass._System.array(Tclass._module.short()), $Heap);
  var x#0: int where LitInt(-10) <= x#0 && x#0 < 12000;
  var b#0: ref
     where $Is(b#0, Tclass._System.array(Tclass._module.short()))
       && $IsAlloc(b#0, Tclass._System.array(Tclass._module.short()), $Heap);
  var y#0: int where LitInt(-10) <= y#0 && y#0 < 12000;
  var c#0: ref
     where $Is(c#0, Tclass._System.array(TBool))
       && $IsAlloc(c#0, Tclass._System.array(TBool), $Heap);
  var d#0: ref
     where $Is(d#0, Tclass._System.array(TInt))
       && $IsAlloc(d#0, Tclass._System.array(TInt), $Heap);
  var e#0: ref
     where $Is(e#0, Tclass._System.array(Tclass._System.object?()))
       && $IsAlloc(e#0, Tclass._System.array(Tclass._System.object?()), $Heap);
  var f#0: ref
     where $Is(f#0, Tclass._System.array(Tclass._module.Cell?(TReal)))
       && $IsAlloc(f#0, Tclass._System.array(Tclass._module.Cell?(TReal)), $Heap);
  var c0#0: bool;
  var d0#0: int;
  var e0#0: ref
     where $Is(e0#0, Tclass._System.object?())
       && $IsAlloc(e0#0, Tclass._System.object?(), $Heap);
  var f0#0: ref
     where $Is(f0#0, Tclass._module.Cell?(TReal))
       && $IsAlloc(f0#0, Tclass._module.Cell?(TReal), $Heap);
  var $rhs#0: bool;
  var $rhs#1: int;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var $rhs##0: ref;
  var $rhs#4: int;
  var $rhs#5: int;
  var $rhs##1: ref;
  var $rhs##2: ref;
  var $rhs#6: int;
  var $rhs#7: int;
  var $lambdaHeap#0: Heap;
  var sa#0: ref;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: ref;
  var barray#0: ref
     where $Is(barray#0, Tclass._System.array(Tclass._System.array(Tclass._module.short())))
       && $IsAlloc(barray#0, 
        Tclass._System.array(Tclass._System.array(Tclass._module.short())), 
        $Heap);
  var $lambdaHeap#1: Heap;
  var _v4#0: int;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: ref;
  var $rhs#8: int;
  var $rhs#9: int;
  var marray#0: ref
     where $Is(marray#0, Tclass._System.array2(Tclass._System.array(Tclass._module.short())))
       && $IsAlloc(marray#0, 
        Tclass._System.array2(Tclass._System.array(Tclass._module.short())), 
        $Heap);
  var $lambdaHeap#2: Heap;
  var _v5#0: int;
  var _v6#0: int;
  var $_Frame#l2: [ref,Field]bool;
  var lambdaResult#2: ref;
  var $rhs#10: int;
  var $rhs#11: int;

    // AddMethodImpl: Coercions, Impl$$_module.__default.Coercions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(253,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(253,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(8);
    assert {:id "id1387"} LitInt(-10) <= newtype$check#0 && newtype$check#0 < 12000;
    newtype$check#1 := LitInt(8);
    assert {:id "id1388"} LitInt(-10) <= newtype$check#1 && newtype$check#1 < 12000;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := LitInt(8);
    call {:id "id1389"} $nw := Call$$_module.Cell.__ctor(Tclass._module.short(), $Box(t##0));
    // TrCallStmt: After ProcessCallStmt
    cell#0 := $nw;
    defass#cell#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(254,9)
    assume true;
    assert {:id "id1391"} defass#cell#0;
    assert {:id "id1392"} cell#0 != null;
    assume true;
    a#0 := $Unbox(read($Heap, cell#0, _module.Cell.arr)): ref;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(255,9)
    assume true;
    assert {:id "id1394"} a#0 != null;
    assert {:id "id1395"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    x#0 := $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(257,9)
    assume true;
    assert {:id "id1397"} 0 <= LitInt(22);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.short()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(22);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    b#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(258,9)
    assume true;
    assert {:id "id1399"} b#0 != null;
    assert {:id "id1400"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(b#0);
    assume true;
    y#0 := $Unbox(read($Heap, b#0, IndexField(LitInt(0)))): int;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(260,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(263,9)
    assume true;
    assert {:id "id1402"} 0 <= LitInt(22);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TBool));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(22);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(264,9)
    assume true;
    assert {:id "id1404"} 0 <= LitInt(22);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(22);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    d#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(265,9)
    assume true;
    assert {:id "id1406"} 0 <= LitInt(22);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._System.object?()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(22);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    e#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(266,9)
    assume true;
    assert {:id "id1408"} 0 <= LitInt(22);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.Cell?(TReal)));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(22);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    f#0 := $nw;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(267,22)
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id1410"} c#0 != null;
    assert {:id "id1411"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(c#0);
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, IndexField(LitInt(0)))): bool;
    assert {:id "id1413"} d#0 != null;
    assert {:id "id1414"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(d#0);
    assume true;
    $rhs#1 := $Unbox(read($Heap, d#0, IndexField(LitInt(0)))): int;
    assert {:id "id1416"} e#0 != null;
    assert {:id "id1417"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(e#0);
    assume true;
    $rhs#2 := $Unbox(read($Heap, e#0, IndexField(LitInt(0)))): ref;
    assert {:id "id1419"} f#0 != null;
    assert {:id "id1420"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(f#0);
    assume true;
    $rhs#3 := $Unbox(read($Heap, f#0, IndexField(LitInt(0)))): ref;
    c0#0 := $rhs#0;
    d0#0 := $rhs#1;
    e0#0 := $rhs#2;
    f0#0 := $rhs#3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(268,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(271,5)
    assume true;
    assert {:id "id1426"} defass#cell#0;
    assert {:id "id1427"} cell#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(cell#0), Tclass._module.Cell?(Tclass._module.short()), $Heap);
    assume _module.Cell.FArray#canCall(Tclass._module.short(), $Heap, cell#0);
    assume _module.Cell.FArray#canCall(Tclass._module.short(), $Heap, cell#0);
    a#0 := _module.Cell.FArray(Tclass._module.short(), $Heap, cell#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(273,19)
    assume true;
    // TrCallStmt: Adding lhs with type array<short>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1429"} defass#cell#0;
    assume true;
    assert {:id "id1430"} cell#0 != null;
    call {:id "id1431"} $rhs##0 := Call$$_module.Cell.MArray(Tclass._module.short(), cell#0);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(274,8)
    assume true;
    assume true;
    assert {:id "id1433"} a#0 != null;
    assert {:id "id1434"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    $rhs#4 := $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int;
    assert {:id "id1436"} b#0 != null;
    assert {:id "id1437"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(b#0);
    assume true;
    $rhs#5 := $Unbox(read($Heap, b#0, IndexField(LitInt(0)))): int;
    x#0 := $rhs#4;
    y#0 := $rhs#5;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(275,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(277,23)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type array<short>
    // TrCallStmt: Adding lhs with type array<short>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1441"} defass#cell#0;
    assume true;
    assert {:id "id1442"} cell#0 != null;
    call {:id "id1443"} $rhs##1, $rhs##2 := Call$$_module.Cell.MArray2(Tclass._module.short(), cell#0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $rhs##1;
    b#0 := $rhs##2;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(278,8)
    assume true;
    assume true;
    assert {:id "id1446"} a#0 != null;
    assert {:id "id1447"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    $rhs#6 := $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int;
    assert {:id "id1449"} b#0 != null;
    assert {:id "id1450"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(b#0);
    assume true;
    $rhs#7 := $Unbox(read($Heap, b#0, IndexField(LitInt(0)))): int;
    x#0 := $rhs#6;
    y#0 := $rhs#7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(279,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(282,5)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc sa#0;
        if ($Is(sa#0, Tclass._System.array(Tclass._module.short()))
           && $IsAlloc(sa#0, Tclass._System.array(Tclass._module.short()), $lambdaHeap#0))
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id1454"} lambdaResult#0 == sa#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, Tclass._System.array(Tclass._module.short()));
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    b#0 := $Unbox(Apply1(Tclass._System.array(Tclass._module.short()), 
        Tclass._System.array(Tclass._module.short()), 
        $Heap, 
        Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
              Handle1((lambda $l#0#heap#0: Heap, $l#0#sa#0: Box :: $Box($Unbox($l#0#sa#0): ref)), 
                (lambda $l#0#heap#0: Heap, $l#0#sa#0: Box :: 
                  $IsBox($l#0#sa#0, Tclass._System.array(Tclass._module.short()))), 
                (lambda $l#0#heap#0: Heap, $l#0#sa#0: Box :: 
                  SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
            $LS($LZ))), 
        $Box(b#0))): ref;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(284,14)
    assume true;
    assert {:id "id1456"} 0 <= LitInt(9);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc _v4#0;
        if (LitInt(0) <= _v4#0)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id1457"} lambdaResult#1 == b#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, Tclass._System.array(Tclass._module.short()));
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass._System.array(Tclass._module.short())));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(9);
    assert {:id "id1458"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < LitInt(9)
         ==> Requires1(Tclass._System.nat(), 
          Tclass._System.array(Tclass._module.short()), 
          $Heap, 
          Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
                Handle1((lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: $Box(b#0)), 
                  (lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: 
                    $IsBox($l#3#_v4#0, Tclass._System.nat())), 
                  (lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: 
                    SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < LitInt(9)
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): ref
           == $Unbox(Apply1(Tclass._System.nat(), 
              Tclass._System.array(Tclass._module.short()), 
              $Heap, 
              Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
                    Handle1((lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: $Box(b#0)), 
                      (lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: 
                        $IsBox($l#3#_v4#0, Tclass._System.nat())), 
                      (lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: 
                        SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0))): ref);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    barray#0 := $nw;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(285,8)
    assume true;
    assume true;
    assert {:id "id1460"} b#0 != null;
    assert {:id "id1461"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(b#0);
    assume true;
    $rhs#8 := $Unbox(read($Heap, b#0, IndexField(LitInt(0)))): int;
    assert {:id "id1463"} barray#0 != null;
    assert {:id "id1464"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(barray#0);
    assert {:id "id1465"} $Unbox(read($Heap, barray#0, IndexField(LitInt(3)))): ref != null;
    assert {:id "id1466"} 0 <= LitInt(0)
       && LitInt(0)
         < _System.array.Length($Unbox(read($Heap, barray#0, IndexField(LitInt(3)))): ref);
    assume true;
    $rhs#9 := $Unbox(read($Heap, 
        $Unbox(read($Heap, barray#0, IndexField(LitInt(3)))): ref, 
        IndexField(LitInt(0)))): int;
    x#0 := $rhs#8;
    y#0 := $rhs#9;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(286,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(289,14)
    assume true;
    assert {:id "id1470"} 0 <= LitInt(9);
    assert {:id "id1471"} 0 <= LitInt(2);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#2;
        assume $IsGoodHeap($lambdaHeap#2);
        assume $Heap == $lambdaHeap#2 || $HeapSucc($Heap, $lambdaHeap#2);
        havoc _v5#0;
        havoc _v6#0;
        if (LitInt(0) <= _v5#0)
        {
            $_Frame#l2 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#2, $o, alloc)): bool ==> false);
            assume {:id "id1472"} lambdaResult#2 == b#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#2, Tclass._System.array(Tclass._module.short()));
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array2?(Tclass._System.array(Tclass._module.short())));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(9);
    assume _System.array2.Length1($nw) == LitInt(2);
    assert {:id "id1473"} {:subsumption 0} (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < LitInt(9)
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < LitInt(2)
         ==> Requires2(Tclass._System.nat(), 
          TInt, 
          Tclass._System.array(Tclass._module.short()), 
          $Heap, 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle2((lambda $l#4#heap#0: Heap, $l#4#_v5#0: Box, $l#4#_v6#0: Box :: $Box(b#0)), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v5#0: Box, $l#4#_v6#0: Box :: 
                    $IsBox($l#4#_v5#0, Tclass._System.nat()) && $IsBox($l#4#_v6#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v5#0: Box, $l#4#_v6#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#1#i0#0), 
          $Box(arrayinit#1#i1#0)));
    assume (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0)) } 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < LitInt(9)
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < LitInt(2)
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0))): ref
           == $Unbox(Apply2(Tclass._System.nat(), 
              TInt, 
              Tclass._System.array(Tclass._module.short()), 
              $Heap, 
              Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                    Handle2((lambda $l#4#heap#0: Heap, $l#4#_v5#0: Box, $l#4#_v6#0: Box :: $Box(b#0)), 
                      (lambda $l#4#heap#0: Heap, $l#4#_v5#0: Box, $l#4#_v6#0: Box :: 
                        $IsBox($l#4#_v5#0, Tclass._System.nat()) && $IsBox($l#4#_v6#0, TInt)), 
                      (lambda $l#4#heap#0: Heap, $l#4#_v5#0: Box, $l#4#_v6#0: Box :: 
                        SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#1#i0#0), 
              $Box(arrayinit#1#i1#0))): ref);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    marray#0 := $nw;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(290,8)
    assume true;
    assume true;
    assert {:id "id1475"} marray#0 != null;
    assert {:id "id1476"} 0 <= LitInt(3) && LitInt(3) < _System.array2.Length0(marray#0);
    assert {:id "id1477"} 0 <= LitInt(1) && LitInt(1) < _System.array2.Length1(marray#0);
    assert {:id "id1478"} $Unbox(read($Heap, marray#0, MultiIndexField(IndexField(LitInt(3)), LitInt(1)))): ref
       != null;
    assert {:id "id1479"} 0 <= LitInt(0)
       && LitInt(0)
         < _System.array.Length($Unbox(read($Heap, marray#0, MultiIndexField(IndexField(LitInt(3)), LitInt(1)))): ref);
    assume true;
    $rhs#10 := $Unbox(read($Heap, 
        $Unbox(read($Heap, marray#0, MultiIndexField(IndexField(LitInt(3)), LitInt(1)))): ref, 
        IndexField(LitInt(0)))): int;
    assert {:id "id1481"} defass#cell#0;
    assert {:id "id1482"} cell#0 != null;
    assert {:id "id1483"} $Unbox(read($Heap, cell#0, _module.Cell.mat)): ref != null;
    assert {:id "id1484"} 0 <= LitInt(7)
       && LitInt(7)
         < _System.array2.Length0($Unbox(read($Heap, cell#0, _module.Cell.mat)): ref);
    assert {:id "id1485"} 0 <= LitInt(6)
       && LitInt(6)
         < _System.array2.Length1($Unbox(read($Heap, cell#0, _module.Cell.mat)): ref);
    assume true;
    $rhs#11 := $Unbox(read($Heap, 
        $Unbox(read($Heap, cell#0, _module.Cell.mat)): ref, 
        MultiIndexField(IndexField(LitInt(7)), LitInt(6)))): int;
    x#0 := $rhs#10;
    y#0 := $rhs#11;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(291,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "CharValues (well-formedness)"} CheckWellFormed$$_module.__default.CharValues();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CharValues (call)"} Call$$_module.__default.CharValues();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CharValues (correctness)"} Impl$$_module.__default.CharValues() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ychar() : Ty
uses {
// Tclass._module.ychar Tag
axiom Tag(Tclass._module.ychar()) == Tagclass._module.ychar
   && TagFamily(Tclass._module.ychar()) == tytagFamily$ychar;
}

const unique Tagclass._module.ychar: TyTag;

// Box/unbox axiom for Tclass._module.ychar
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ychar()) } 
  $IsBox(bx, Tclass._module.ychar())
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, Tclass._module.ychar()));

function Tclass._module.zchar() : Ty
uses {
// Tclass._module.zchar Tag
axiom Tag(Tclass._module.zchar()) == Tagclass._module.zchar
   && TagFamily(Tclass._module.zchar()) == tytagFamily$zchar;
}

const unique Tagclass._module.zchar: TyTag;

// Box/unbox axiom for Tclass._module.zchar
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.zchar()) } 
  $IsBox(bx, Tclass._module.zchar())
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, Tclass._module.zchar()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CharValues (correctness)"} Impl$$_module.__default.CharValues() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: ref
     where $Is(aa#0, Tclass._System.array(TChar))
       && $IsAlloc(aa#0, Tclass._System.array(TChar), $Heap);
  var $nw: ref;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var a##0: ref;
  var bb#0: ref
     where $Is(bb#0, Tclass._System.array(Tclass._module.ychar()))
       && $IsAlloc(bb#0, Tclass._System.array(Tclass._module.ychar()), $Heap);
  var i#1_0: int;
  var i#1_1: int;
  var a##1: ref;
  var cc#0: ref
     where $Is(cc#0, Tclass._System.array(TChar))
       && $IsAlloc(cc#0, Tclass._System.array(TChar), $Heap);
  var i#2_0: int;
  var i#2_1: int;
  var a##2: ref;
  var e0#0: char where $Is(e0#0, TChar);
  var e1#0: char where $Is(e1#0, Tclass._module.ychar());
  var e2#0: char where $Is(e2#0, Tclass._module.zchar());
  var ee#0: DatatypeType
     where $Is(ee#0, 
        Tclass._System.Tuple3(TChar, Tclass._module.ychar(), Tclass._module.zchar()))
       && $IsAlloc(ee#0, 
        Tclass._System.Tuple3(TChar, Tclass._module.ychar(), Tclass._module.zchar()), 
        $Heap);
  var mm#0: ref
     where $Is(mm#0, Tclass._System.array2(TChar))
       && $IsAlloc(mm#0, Tclass._System.array2(TChar), $Heap);
  var mx#0: ref
     where $Is(mx#0, Tclass._System.array2(Tclass._module.ychar()))
       && $IsAlloc(mx#0, Tclass._System.array2(Tclass._module.ychar()), $Heap);
  var my#0: ref
     where $Is(my#0, Tclass._System.array2(Tclass._module.zchar()))
       && $IsAlloc(my#0, Tclass._System.array2(Tclass._module.zchar()), $Heap);

    // AddMethodImpl: CharValues, Impl$$_module.__default.CharValues
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(336,10)
    assume true;
    assert {:id "id1489"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(337,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id1491"} {:subsumption 0} aa#0 != null;
        }

        assume true;
        assume LitInt(0) <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        assert {:id "id1492"} aa#0 != null;
        assert {:id "id1493"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        assume true;
        assert {:id "id1494"} $_ModifiesFrame[aa#0, IndexField(i#0_0)];
        assert {:id "id1495"} aa#0 != null;
        assert {:id "id1496"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        if ($Unbox(read($Heap, aa#0, IndexField(i#0_0))): char == Lit(char#FromInt(0)))
        {
        }
        else
        {
            assert {:id "id1497"} aa#0 != null;
            assert {:id "id1498"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(aa#0);
        }

        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1 && i#0_1 < _System.array.Length(aa#0);
        assume i#0_0 != i#0_1;
        assert {:id "id1499"} aa#0 != aa#0
           || IndexField(i#0_0) != IndexField(i#0_1)
           || (if $Unbox(read($Heap, aa#0, IndexField(i#0_0))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, aa#0, IndexField(i#0_0))): char)
             == (if $Unbox(read($Heap, aa#0, IndexField(i#0_1))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, aa#0, IndexField(i#0_1))): char);
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
             || (exists i#0_2: int :: 
              LitInt(0) <= i#0_2
                 && i#0_2 < _System.array.Length(aa#0)
                 && $o == aa#0
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, aa#0, IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0 && i#inv#0_0 < _System.array.Length(aa#0)
             ==> read($Heap, aa#0, IndexField(i#inv#0_0))
               == $Box((if $Unbox(read($prevHeap, aa#0, IndexField(i#inv#0_0))): char
                     == Lit(char#FromInt(0))
                   then char#FromInt(97)
                   else $Unbox(read($prevHeap, aa#0, IndexField(i#inv#0_0))): char)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(340,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := aa#0;
    call {:id "id1500"} Call$$_module.__default.PrintArray(TChar, a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(342,10)
    assume true;
    assert {:id "id1501"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.ychar()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    bb#0 := $nw;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(343,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id1503"} {:subsumption 0} bb#0 != null;
        }

        assume true;
        assume LitInt(0) <= i#1_0 && i#1_0 < _System.array.Length(bb#0);
        assert {:id "id1504"} bb#0 != null;
        assert {:id "id1505"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(bb#0);
        assume true;
        assert {:id "id1506"} $_ModifiesFrame[bb#0, IndexField(i#1_0)];
        assert {:id "id1507"} bb#0 != null;
        assert {:id "id1508"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(bb#0);
        if ($Unbox(read($Heap, bb#0, IndexField(i#1_0))): char == Lit(char#FromInt(0)))
        {
        }
        else
        {
            assert {:id "id1509"} bb#0 != null;
            assert {:id "id1510"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(bb#0);
        }

        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(0) <= i#1_1 && i#1_1 < _System.array.Length(bb#0);
        assume i#1_0 != i#1_1;
        assert {:id "id1511"} bb#0 != bb#0
           || IndexField(i#1_0) != IndexField(i#1_1)
           || (if $Unbox(read($Heap, bb#0, IndexField(i#1_0))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, bb#0, IndexField(i#1_0))): char)
             == (if $Unbox(read($Heap, bb#0, IndexField(i#1_1))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, bb#0, IndexField(i#1_1))): char);
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
             || (exists i#1_2: int :: 
              LitInt(0) <= i#1_2
                 && i#1_2 < _System.array.Length(bb#0)
                 && $o == bb#0
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, bb#0, IndexField(i#inv#1_0)) } 
          LitInt(0) <= i#inv#1_0 && i#inv#1_0 < _System.array.Length(bb#0)
             ==> read($Heap, bb#0, IndexField(i#inv#1_0))
               == $Box((if $Unbox(read($prevHeap, bb#0, IndexField(i#inv#1_0))): char
                     == Lit(char#FromInt(0))
                   then char#FromInt(97)
                   else $Unbox(read($prevHeap, bb#0, IndexField(i#inv#1_0))): char)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(346,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := bb#0;
    call {:id "id1512"} Call$$_module.__default.PrintArray(Tclass._module.ychar(), a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(348,10)
    assume true;
    assert {:id "id1513"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cc#0 := $nw;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(349,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#2_0;
        assume true;
        if (LitInt(0) <= i#2_0)
        {
            assert {:id "id1515"} {:subsumption 0} cc#0 != null;
        }

        assume true;
        assume LitInt(0) <= i#2_0 && i#2_0 < _System.array.Length(cc#0);
        assert {:id "id1516"} cc#0 != null;
        assert {:id "id1517"} {:subsumption 0} 0 <= i#2_0 && i#2_0 < _System.array.Length(cc#0);
        assume true;
        assert {:id "id1518"} $_ModifiesFrame[cc#0, IndexField(i#2_0)];
        assert {:id "id1519"} cc#0 != null;
        assert {:id "id1520"} {:subsumption 0} 0 <= i#2_0 && i#2_0 < _System.array.Length(cc#0);
        if ($Unbox(read($Heap, cc#0, IndexField(i#2_0))): char == Lit(char#FromInt(0)))
        {
        }
        else
        {
            assert {:id "id1521"} cc#0 != null;
            assert {:id "id1522"} {:subsumption 0} 0 <= i#2_0 && i#2_0 < _System.array.Length(cc#0);
        }

        assume true;
        havoc i#2_1;
        assume true;
        assume LitInt(0) <= i#2_1 && i#2_1 < _System.array.Length(cc#0);
        assume i#2_0 != i#2_1;
        assert {:id "id1523"} cc#0 != cc#0
           || IndexField(i#2_0) != IndexField(i#2_1)
           || (if $Unbox(read($Heap, cc#0, IndexField(i#2_0))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, cc#0, IndexField(i#2_0))): char)
             == (if $Unbox(read($Heap, cc#0, IndexField(i#2_1))): char == Lit(char#FromInt(0))
               then char#FromInt(97)
               else $Unbox(read($Heap, cc#0, IndexField(i#2_1))): char);
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
             || (exists i#2_2: int :: 
              LitInt(0) <= i#2_2
                 && i#2_2 < _System.array.Length(cc#0)
                 && $o == cc#0
                 && $f == IndexField(i#2_2)));
        assume (forall i#inv#2_0: int :: 
          { read($Heap, cc#0, IndexField(i#inv#2_0)) } 
          LitInt(0) <= i#inv#2_0 && i#inv#2_0 < _System.array.Length(cc#0)
             ==> read($Heap, cc#0, IndexField(i#inv#2_0))
               == $Box((if $Unbox(read($prevHeap, cc#0, IndexField(i#inv#2_0))): char
                     == Lit(char#FromInt(0))
                   then char#FromInt(97)
                   else $Unbox(read($prevHeap, cc#0, IndexField(i#inv#2_0))): char)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(352,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := cc#0;
    call {:id "id1524"} Call$$_module.__default.PrintArray(TChar, a##2);
    // TrCallStmt: After ProcessCallStmt
    havoc e0#0 /* where $Is(e0#0, TChar) */, e1#0 /* where $Is(e1#0, Tclass._module.ychar()) */, e2#0 /* where $Is(e2#0, Tclass._module.zchar()) */, ee#0 /* where $Is(ee#0, 
        Tclass._System.Tuple3(TChar, Tclass._module.ychar(), Tclass._module.zchar()))
       && $IsAlloc(ee#0, 
        Tclass._System.Tuple3(TChar, Tclass._module.ychar(), Tclass._module.zchar()), 
        $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(355,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(357,10)
    assume true;
    assert {:id "id1525"} 0 <= LitInt(3);
    assert {:id "id1526"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TChar));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(3);
    assume _System.array2.Length1($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    mm#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(358,10)
    assume true;
    assert {:id "id1528"} 0 <= LitInt(3);
    assert {:id "id1529"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(Tclass._module.ychar()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(3);
    assume _System.array2.Length1($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    mx#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(359,10)
    assume true;
    assert {:id "id1531"} 0 <= LitInt(3);
    assert {:id "id1532"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(Tclass._module.zchar()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(3);
    assume _System.array2.Length1($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    my#0 := $nw;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(360,3)
    assert {:id "id1534"} mm#0 != null;
    assert {:id "id1535"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array2.Length0(mm#0);
    assert {:id "id1536"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < _System.array2.Length1(mm#0);
    assume true;
    assume true;
    assert {:id "id1537"} mx#0 != null;
    assert {:id "id1538"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array2.Length0(mx#0);
    assert {:id "id1539"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < _System.array2.Length1(mx#0);
    assume true;
    assume true;
    assert {:id "id1540"} my#0 != null;
    assert {:id "id1541"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array2.Length0(my#0);
    assert {:id "id1542"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < _System.array2.Length1(my#0);
    assume true;
    assume true;
}



procedure {:verboseName "lowercase (well-formedness)"} CheckWellFormed$$_module.lowercase(ch#0: char);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "lowercase (well-formedness)"} CheckWellFormed$$_module.lowercase(ch#0: char)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type lowercase
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(ch#0, TChar);
        if (char#ToInt(Lit(char#FromInt(97))) <= char#ToInt(ch#0))
        {
        }

        assume {:id "id1543"} char#ToInt(Lit(char#FromInt(97))) <= char#ToInt(ch#0)
           && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1544"} {:subsumption 0} char#ToInt(Lit(char#FromInt(97))) <= char#ToInt(Lit(char#FromInt(100)));
        assert {:id "id1545"} {:subsumption 0} char#ToInt(Lit(char#FromInt(100))) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }
}



// $Is axiom for subset type _module.lowercase
axiom (forall ch#0: char :: 
  { $Is(ch#0, Tclass._module.lowercase()) } 
  $Is(ch#0, Tclass._module.lowercase())
     <==> char#ToInt(Lit(char#FromInt(97))) <= char#ToInt(ch#0)
       && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122))));

// $IsAlloc axiom for subset type _module.lowercase
axiom (forall ch#0: char, $h: Heap :: 
  { $IsAlloc(ch#0, Tclass._module.lowercase(), $h) } 
  $IsAlloc(ch#0, Tclass._module.lowercase(), $h));

procedure {:verboseName "BV10 (well-formedness)"} CheckWellFormed$$_module.BV10(x#0: bv10);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BV10 (well-formedness)"} CheckWellFormed$$_module.BV10(x#0: bv10)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type BV10
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id1546"} x#0 != 999bv10;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1547"} Lit(8bv10 != 999bv10);
        assume false;
    }
}



// $Is axiom for subset type _module.BV10
axiom (forall x#0: bv10 :: 
  { $Is(x#0, Tclass._module.BV10()) } 
  $Is(x#0, Tclass._module.BV10()) <==> x#0 != 999bv10);

// $IsAlloc axiom for subset type _module.BV10
axiom (forall x#0: bv10, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.BV10(), $h) } 
  $IsAlloc(x#0, Tclass._module.BV10(), $h));

procedure {:verboseName "Yes (well-formedness)"} CheckWellFormed$$_module.Yes(b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Yes (well-formedness)"} CheckWellFormed$$_module.Yes(b#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type Yes
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id1548"} b#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1549"} Lit(true);
        assume false;
    }
}



// $Is axiom for subset type _module.Yes
axiom (forall b#0: bool :: 
  { $Is(b#0, Tclass._module.Yes()) } 
  $Is(b#0, Tclass._module.Yes()) <==> b#0);

// $IsAlloc axiom for subset type _module.Yes
axiom (forall b#0: bool, $h: Heap :: 
  { $IsAlloc(b#0, Tclass._module.Yes(), $h) } 
  $IsAlloc(b#0, Tclass._module.Yes(), $h));

procedure {:verboseName "nByte (well-formedness)"} CheckWellFormed$$_module.nByte(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nByte (well-formedness)"} CheckWellFormed$$_module.nByte(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype nByte
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1550"} LitInt(-10) <= x#0 && x#0 < 100;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1551"} {:subsumption 0} LitInt(-10) <= LitInt(1);
        assert {:id "id1552"} {:subsumption 0} Lit(1 < 100);
        assume false;
    }
}



// $Is axiom for newtype _module.nByte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.nByte()) } 
  $Is(x#0, Tclass._module.nByte()) <==> LitInt(-10) <= x#0 && x#0 < 100);

// $IsAlloc axiom for newtype _module.nByte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.nByte(), $h) } 
  $IsAlloc(x#0, Tclass._module.nByte(), $h));

const unique class._module.nByte: ClassName;

procedure {:verboseName "nShort (well-formedness)"} CheckWellFormed$$_module.nShort(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nShort (well-formedness)"} CheckWellFormed$$_module.nShort(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype nShort
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1553"} LitInt(-10) <= x#0 && x#0 < 1000;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1554"} {:subsumption 0} LitInt(-10) <= LitInt(2);
        assert {:id "id1555"} {:subsumption 0} Lit(2 < 1000);
        assume false;
    }
}



// $Is axiom for newtype _module.nShort
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.nShort()) } 
  $Is(x#0, Tclass._module.nShort()) <==> LitInt(-10) <= x#0 && x#0 < 1000);

// $IsAlloc axiom for newtype _module.nShort
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.nShort(), $h) } 
  $IsAlloc(x#0, Tclass._module.nShort(), $h));

const unique class._module.nShort: ClassName;

procedure {:verboseName "nInt (well-formedness)"} CheckWellFormed$$_module.nInt(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nInt (well-formedness)"} CheckWellFormed$$_module.nInt(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype nInt
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1556"} LitInt(-10) <= x#0 && x#0 < 1000000;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1557"} {:subsumption 0} LitInt(-10) <= LitInt(3);
        assert {:id "id1558"} {:subsumption 0} Lit(3 < 1000000);
        assume false;
    }
}



// $Is axiom for newtype _module.nInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.nInt()) } 
  $Is(x#0, Tclass._module.nInt()) <==> LitInt(-10) <= x#0 && x#0 < 1000000);

// $IsAlloc axiom for newtype _module.nInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.nInt(), $h) } 
  $IsAlloc(x#0, Tclass._module.nInt(), $h));

const unique class._module.nInt: ClassName;

procedure {:verboseName "nLong (well-formedness)"} CheckWellFormed$$_module.nLong(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nLong (well-formedness)"} CheckWellFormed$$_module.nLong(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype nLong
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1559"} LitInt(-10) <= x#0 && x#0 < 72057594037927936;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1560"} {:subsumption 0} LitInt(-10) <= LitInt(4);
        assert {:id "id1561"} {:subsumption 0} Lit(4 < 72057594037927936);
        assume false;
    }
}



// $Is axiom for newtype _module.nLong
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.nLong()) } 
  $Is(x#0, Tclass._module.nLong())
     <==> LitInt(-10) <= x#0 && x#0 < 72057594037927936);

// $IsAlloc axiom for newtype _module.nLong
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.nLong(), $h) } 
  $IsAlloc(x#0, Tclass._module.nLong(), $h));

const unique class._module.nLong: ClassName;

procedure {:verboseName "ubyte (well-formedness)"} CheckWellFormed$$_module.ubyte(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ubyte (well-formedness)"} CheckWellFormed$$_module.ubyte(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype ubyte
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id1562"} LitInt(0) <= x#0 && x#0 < 256;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1563"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id1564"} {:subsumption 0} Lit(0 < 256);
        assume false;
    }
}



function Tclass._module.ubyte() : Ty
uses {
// Tclass._module.ubyte Tag
axiom Tag(Tclass._module.ubyte()) == Tagclass._module.ubyte
   && TagFamily(Tclass._module.ubyte()) == tytagFamily$ubyte;
}

const unique Tagclass._module.ubyte: TyTag;

// Box/unbox axiom for Tclass._module.ubyte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ubyte()) } 
  $IsBox(bx, Tclass._module.ubyte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.ubyte()));

// $Is axiom for newtype _module.ubyte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.ubyte()) } 
  $Is(x#0, Tclass._module.ubyte()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype _module.ubyte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.ubyte(), $h) } 
  $IsAlloc(x#0, Tclass._module.ubyte(), $h));

const unique class._module.ubyte: ClassName;

procedure {:verboseName "xchar (well-formedness)"} CheckWellFormed$$_module.xchar(ch#0: char);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xchar (well-formedness)"} CheckWellFormed$$_module.xchar(ch#0: char)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type xchar
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(ch#0, TChar);
        if (char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0))
        {
        }

        assume {:id "id1565"} char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0)
           && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1566"} {:subsumption 0} char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(Lit(char#FromInt(68)));
        assert {:id "id1567"} {:subsumption 0} char#ToInt(Lit(char#FromInt(68))) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }
}



// $Is axiom for subset type _module.xchar
axiom (forall ch#0: char :: 
  { $Is(ch#0, Tclass._module.xchar()) } 
  $Is(ch#0, Tclass._module.xchar())
     <==> char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0)
       && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122))));

// $IsAlloc axiom for subset type _module.xchar
axiom (forall ch#0: char, $h: Heap :: 
  { $IsAlloc(ch#0, Tclass._module.xchar(), $h) } 
  $IsAlloc(ch#0, Tclass._module.xchar(), $h));

procedure {:verboseName "xBV10 (well-formedness)"} CheckWellFormed$$_module.xBV10(x#0: bv10);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xBV10 (well-formedness)"} CheckWellFormed$$_module.xBV10(x#0: bv10)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type xBV10
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id1568"} x#0 != 999bv10;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1569"} Lit(0bv10 != 999bv10);
        assume false;
    }
}



// $Is axiom for subset type _module.xBV10
axiom (forall x#0: bv10 :: 
  { $Is(x#0, Tclass._module.xBV10()) } 
  $Is(x#0, Tclass._module.xBV10()) <==> x#0 != 999bv10);

// $IsAlloc axiom for subset type _module.xBV10
axiom (forall x#0: bv10, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.xBV10(), $h) } 
  $IsAlloc(x#0, Tclass._module.xBV10(), $h));

procedure {:verboseName "xYes (well-formedness)"} CheckWellFormed$$_module.xYes(b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xYes (well-formedness)"} CheckWellFormed$$_module.xYes(b#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type xYes
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id1570"} !b#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1571"} !Lit(false);
        assume false;
    }
}



// $Is axiom for subset type _module.xYes
axiom (forall b#0: bool :: 
  { $Is(b#0, Tclass._module.xYes()) } 
  $Is(b#0, Tclass._module.xYes()) <==> !b#0);

// $IsAlloc axiom for subset type _module.xYes
axiom (forall b#0: bool, $h: Heap :: 
  { $IsAlloc(b#0, Tclass._module.xYes(), $h) } 
  $IsAlloc(b#0, Tclass._module.xYes(), $h));

procedure {:verboseName "xnByte (well-formedness)"} CheckWellFormed$$_module.xnByte(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xnByte (well-formedness)"} CheckWellFormed$$_module.xnByte(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype xnByte
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1572"} LitInt(-10) <= x#0 && x#0 < 100;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1573"} {:subsumption 0} LitInt(-10) <= LitInt(0);
        assert {:id "id1574"} {:subsumption 0} Lit(0 < 100);
        assume false;
    }
}



// $Is axiom for newtype _module.xnByte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.xnByte()) } 
  $Is(x#0, Tclass._module.xnByte()) <==> LitInt(-10) <= x#0 && x#0 < 100);

// $IsAlloc axiom for newtype _module.xnByte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.xnByte(), $h) } 
  $IsAlloc(x#0, Tclass._module.xnByte(), $h));

const unique class._module.xnByte: ClassName;

procedure {:verboseName "xnShort (well-formedness)"} CheckWellFormed$$_module.xnShort(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xnShort (well-formedness)"} CheckWellFormed$$_module.xnShort(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype xnShort
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1575"} LitInt(-10) <= x#0 && x#0 < 1000;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1576"} {:subsumption 0} LitInt(-10) <= LitInt(0);
        assert {:id "id1577"} {:subsumption 0} Lit(0 < 1000);
        assume false;
    }
}



// $Is axiom for newtype _module.xnShort
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.xnShort()) } 
  $Is(x#0, Tclass._module.xnShort()) <==> LitInt(-10) <= x#0 && x#0 < 1000);

// $IsAlloc axiom for newtype _module.xnShort
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.xnShort(), $h) } 
  $IsAlloc(x#0, Tclass._module.xnShort(), $h));

const unique class._module.xnShort: ClassName;

procedure {:verboseName "xnInt (well-formedness)"} CheckWellFormed$$_module.xnInt(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xnInt (well-formedness)"} CheckWellFormed$$_module.xnInt(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype xnInt
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1578"} LitInt(-10) <= x#0 && x#0 < 1000000;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1579"} {:subsumption 0} LitInt(-10) <= LitInt(0);
        assert {:id "id1580"} {:subsumption 0} Lit(0 < 1000000);
        assume false;
    }
}



// $Is axiom for newtype _module.xnInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.xnInt()) } 
  $Is(x#0, Tclass._module.xnInt()) <==> LitInt(-10) <= x#0 && x#0 < 1000000);

// $IsAlloc axiom for newtype _module.xnInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.xnInt(), $h) } 
  $IsAlloc(x#0, Tclass._module.xnInt(), $h));

const unique class._module.xnInt: ClassName;

procedure {:verboseName "xnLong (well-formedness)"} CheckWellFormed$$_module.xnLong(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xnLong (well-formedness)"} CheckWellFormed$$_module.xnLong(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype xnLong
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1581"} LitInt(-10) <= x#0 && x#0 < 72057594037927936;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1582"} {:subsumption 0} LitInt(-10) <= LitInt(0);
        assert {:id "id1583"} {:subsumption 0} Lit(0 < 72057594037927936);
        assume false;
    }
}



// $Is axiom for newtype _module.xnLong
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.xnLong()) } 
  $Is(x#0, Tclass._module.xnLong())
     <==> LitInt(-10) <= x#0 && x#0 < 72057594037927936);

// $IsAlloc axiom for newtype _module.xnLong
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.xnLong(), $h) } 
  $IsAlloc(x#0, Tclass._module.xnLong(), $h));

const unique class._module.xnLong: ClassName;

procedure {:verboseName "short (well-formedness)"} CheckWellFormed$$_module.short(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "short (well-formedness)"} CheckWellFormed$$_module.short(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype short
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-10) <= x#0)
        {
        }

        assume {:id "id1584"} LitInt(-10) <= x#0 && x#0 < 12000;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1585"} {:subsumption 0} LitInt(-10) <= LitInt(0);
        assert {:id "id1586"} {:subsumption 0} Lit(0 < 12000);
        assume false;
    }
}



// $Is axiom for newtype _module.short
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.short()) } 
  $Is(x#0, Tclass._module.short()) <==> LitInt(-10) <= x#0 && x#0 < 12000);

// $IsAlloc axiom for newtype _module.short
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.short(), $h) } 
  $IsAlloc(x#0, Tclass._module.short(), $h));

const unique class._module.short: ClassName;

const unique class._module.Cell?: ClassName;

// $Is axiom for class Cell
axiom (forall _module.Cell$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Cell?(_module.Cell$T)) } 
  $Is($o, Tclass._module.Cell?(_module.Cell$T))
     <==> $o == null || dtype($o) == Tclass._module.Cell?(_module.Cell$T));

// $IsAlloc axiom for class Cell
axiom (forall _module.Cell$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Cell?(_module.Cell$T), $h) } 
  $IsAlloc($o, Tclass._module.Cell?(_module.Cell$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Cell.arr: Field
uses {
axiom FDim(_module.Cell.arr) == 0
   && FieldOfDecl(class._module.Cell?, field$arr) == _module.Cell.arr
   && !$IsGhostField(_module.Cell.arr);
}

// Cell.arr: Type axiom
axiom (forall _module.Cell$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.arr)): ref, Tclass._module.Cell?(_module.Cell$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?(_module.Cell$T)
     ==> $Is($Unbox(read($h, $o, _module.Cell.arr)): ref, 
      Tclass._System.array(_module.Cell$T)));

// Cell.arr: Allocation axiom
axiom (forall _module.Cell$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.arr)): ref, Tclass._module.Cell?(_module.Cell$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?(_module.Cell$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cell.arr)): ref, 
      Tclass._System.array(_module.Cell$T), 
      $h));

function _module.Cell.crr(_module.Cell$T: Ty, this: ref) : ref
uses {
// Cell.crr: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Cell$T: Ty, $o: ref :: 
    { _module.Cell.crr(_module.Cell$T, $o) } 
    $o != null && dtype($o) == Tclass._module.Cell?(_module.Cell$T)
       ==> $Is(_module.Cell.crr(_module.Cell$T, $o), Tclass._System.array(_module.Cell$T)));
// Cell.crr: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Cell$T: Ty, $h: Heap, $o: ref :: 
    { _module.Cell.crr(_module.Cell$T, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.Cell?(_module.Cell$T)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.Cell.crr(_module.Cell$T, $o), Tclass._System.array(_module.Cell$T), $h));
}

const _module.Cell.mat: Field
uses {
axiom FDim(_module.Cell.mat) == 0
   && FieldOfDecl(class._module.Cell?, field$mat) == _module.Cell.mat
   && !$IsGhostField(_module.Cell.mat);
}

// Cell.mat: Type axiom
axiom (forall _module.Cell$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.mat)): ref, Tclass._module.Cell?(_module.Cell$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?(_module.Cell$T)
     ==> $Is($Unbox(read($h, $o, _module.Cell.mat)): ref, 
      Tclass._System.array2(_module.Cell$T)));

// Cell.mat: Allocation axiom
axiom (forall _module.Cell$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.mat)): ref, Tclass._module.Cell?(_module.Cell$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?(_module.Cell$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cell.mat)): ref, 
      Tclass._System.array2(_module.Cell$T), 
      $h));

procedure {:verboseName "Cell._ctor (well-formedness)"} CheckWellFormed$$_module.Cell.__ctor(_module.Cell$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.Cell$T) && $IsAllocBox(t#0, _module.Cell$T, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell._ctor (well-formedness)"} CheckWellFormed$$_module.Cell.__ctor(_module.Cell$T: Ty, t#0: Box) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.Cell.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.Cell(_module.Cell$T))
       && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap);
    assert {:id "id1587"} $Unbox(read($Heap, this, _module.Cell.arr)): ref != null;
    assume {:id "id1588"} _System.array.Length($Unbox(read($Heap, this, _module.Cell.arr)): ref)
       == LitInt(15);
    assume {:id "id1589"} $Unbox(read($Heap, this, _module.Cell.arr)): ref
       == _module.Cell.crr(_module.Cell$T, this);
    assert {:id "id1590"} $Unbox(read($Heap, this, _module.Cell.mat)): ref != null;
    assert {:id "id1591"} $Unbox(read($Heap, this, _module.Cell.mat)): ref != null;
    if (_System.array2.Length0($Unbox(read($Heap, this, _module.Cell.mat)): ref)
       == _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref))
    {
        assert {:id "id1592"} $Unbox(read($Heap, this, _module.Cell.mat)): ref != null;
    }

    assume {:id "id1593"} _System.array2.Length0($Unbox(read($Heap, this, _module.Cell.mat)): ref)
         == _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref)
       && _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref)
         == LitInt(15);
}



procedure {:verboseName "Cell._ctor (call)"} Call$$_module.Cell.__ctor(_module.Cell$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.Cell$T) && $IsAllocBox(t#0, _module.Cell$T, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1594"} _System.array.Length($Unbox(read($Heap, this, _module.Cell.arr)): ref)
     == LitInt(15);
  ensures {:id "id1595"} $Unbox(read($Heap, this, _module.Cell.arr)): ref
     == _module.Cell.crr(_module.Cell$T, this);
  free ensures true;
  ensures {:id "id1596"} _System.array2.Length0($Unbox(read($Heap, this, _module.Cell.mat)): ref)
     == _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref);
  ensures {:id "id1597"} _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref)
     == LitInt(15);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cell._ctor (correctness)"} Impl$$_module.Cell.__ctor(_module.Cell$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.Cell$T) && $IsAllocBox(t#0, _module.Cell$T, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1598"} _System.array.Length($Unbox(read($Heap, this, _module.Cell.arr)): ref)
     == LitInt(15);
  ensures {:id "id1599"} $Unbox(read($Heap, this, _module.Cell.arr)): ref
     == _module.Cell.crr(_module.Cell$T, this);
  free ensures true;
  ensures {:id "id1600"} _System.array2.Length0($Unbox(read($Heap, this, _module.Cell.mat)): ref)
     == _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref);
  ensures {:id "id1601"} _System.array2.Length1($Unbox(read($Heap, this, _module.Cell.mat)): ref)
     == LitInt(15);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell._ctor (correctness)"} Impl$$_module.Cell.__ctor(_module.Cell$T: Ty, t#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.arr: ref;
  var this.crr: ref;
  var this.mat: ref;
  var $lambdaHeap#0: Heap;
  var _v7#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: Box;
  var $nw: ref;
  var $lambdaHeap#1: Heap;
  var _v8#0: int;
  var _v9#0: int;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: Box;

    // AddMethodImpl: _ctor, Impl$$_module.Cell.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(303,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(304,9)
    assume true;
    assert {:id "id1602"} 0 <= LitInt(15);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v7#0;
        if (LitInt(0) <= _v7#0)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id1603"} lambdaResult#0 == t#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(lambdaResult#0, _module.Cell$T);
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(_module.Cell$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(15);
    assert {:id "id1604"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < LitInt(15)
         ==> Requires1(Tclass._System.nat(), 
          _module.Cell$T, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#_v7#0: Box :: t#0), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v7#0: Box :: 
                    $IsBox($l#0#_v7#0, Tclass._System.nat())), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v7#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < LitInt(15)
         ==> read($Heap, $nw, IndexField(arrayinit#0#i0#0))
           == Apply1(Tclass._System.nat(), 
            _module.Cell$T, 
            $Heap, 
            Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                  Handle1((lambda $l#0#heap#0: Heap, $l#0#_v7#0: Box :: t#0), 
                    (lambda $l#0#heap#0: Heap, $l#0#_v7#0: Box :: 
                      $IsBox($l#0#_v7#0, Tclass._System.nat())), 
                    (lambda $l#0#heap#0: Heap, $l#0#_v7#0: Box :: 
                      SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                $LS($LZ))), 
            $Box(arrayinit#0#i0#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.arr := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(305,9)
    assume true;
    assume true;
    this.crr := this.arr;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(306,9)
    assume true;
    assert {:id "id1607"} 0 <= LitInt(15);
    assert {:id "id1608"} 0 <= LitInt(15);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc _v8#0;
        havoc _v9#0;
        if (LitInt(0) <= _v8#0)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id1609"} lambdaResult#1 == t#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(lambdaResult#1, _module.Cell$T);
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(_module.Cell$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(15);
    assume _System.array2.Length1($nw) == LitInt(15);
    assert {:id "id1610"} {:subsumption 0} (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < LitInt(15)
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < LitInt(15)
         ==> Requires2(Tclass._System.nat(), 
          TInt, 
          _module.Cell$T, 
          $Heap, 
          Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                Handle2((lambda $l#1#heap#0: Heap, $l#1#_v8#0: Box, $l#1#_v9#0: Box :: t#0), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v8#0: Box, $l#1#_v9#0: Box :: 
                    $IsBox($l#1#_v8#0, Tclass._System.nat()) && $IsBox($l#1#_v9#0, TInt)), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v8#0: Box, $l#1#_v9#0: Box :: 
                    SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#1#i0#0), 
          $Box(arrayinit#1#i1#0)));
    assume (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0)) } 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < LitInt(15)
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < LitInt(15)
         ==> read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0))
           == Apply2(Tclass._System.nat(), 
            TInt, 
            _module.Cell$T, 
            $Heap, 
            Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                  Handle2((lambda $l#1#heap#0: Heap, $l#1#_v8#0: Box, $l#1#_v9#0: Box :: t#0), 
                    (lambda $l#1#heap#0: Heap, $l#1#_v8#0: Box, $l#1#_v9#0: Box :: 
                      $IsBox($l#1#_v8#0, Tclass._System.nat()) && $IsBox($l#1#_v9#0, TInt)), 
                    (lambda $l#1#heap#0: Heap, $l#1#_v8#0: Box, $l#1#_v9#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
                $LS($LZ))), 
            $Box(arrayinit#1#i0#0), 
            $Box(arrayinit#1#i1#0)));
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.mat := $nw;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(303,3)
    assume this != null && $Is(this, Tclass._module.Cell?(_module.Cell$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Cell.arr)): ref == this.arr;
    assume _module.Cell.crr(_module.Cell$T, this) == this.crr;
    assume $Unbox(read($Heap, this, _module.Cell.mat)): ref == this.mat;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(303,3)
}



// function declaration for _module.Cell.FArray
function _module.Cell.FArray(_module.Cell$T: Ty, $heap: Heap, this: ref) : ref
uses {
// consequence axiom for _module.Cell.FArray
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Cell$T: Ty, $Heap: Heap, this: ref :: 
    { _module.Cell.FArray(_module.Cell$T, $Heap, this) } 
    _module.Cell.FArray#canCall(_module.Cell$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Cell(_module.Cell$T))
           && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
       ==> $Is(_module.Cell.FArray(_module.Cell$T, $Heap, this), 
        Tclass._System.array(_module.Cell$T)));
// alloc consequence axiom for _module.Cell.FArray
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Cell$T: Ty, $Heap: Heap, this: ref :: 
    { $IsAlloc(_module.Cell.FArray(_module.Cell$T, $Heap, this), 
        Tclass._System.array(_module.Cell$T), 
        $Heap) } 
    _module.Cell.FArray#canCall(_module.Cell$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
       ==> $IsAlloc(_module.Cell.FArray(_module.Cell$T, $Heap, this), 
        Tclass._System.array(_module.Cell$T), 
        $Heap));
// definition axiom for _module.Cell.FArray (revealed)
axiom {:id "id1612"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cell$T: Ty, $Heap: Heap, this: ref :: 
    { _module.Cell.FArray(_module.Cell$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Cell.FArray#canCall(_module.Cell$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Cell(_module.Cell$T))
           && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
       ==> _module.Cell.FArray(_module.Cell$T, $Heap, this)
         == $Unbox(read($Heap, this, _module.Cell.arr)): ref);
}

function _module.Cell.FArray#canCall(_module.Cell$T: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Cell.FArray
axiom (forall _module.Cell$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Cell.FArray(_module.Cell$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Cell(_module.Cell$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Cell.FArray(_module.Cell$T, $h0, this)
       == _module.Cell.FArray(_module.Cell$T, $h1, this));

function _module.Cell.FArray#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.Cell.FArray
axiom (forall _module.Cell$T: Ty, $Heap: Heap, this: ref :: 
  { _module.Cell.FArray#requires(_module.Cell$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Cell(_module.Cell$T))
       && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap)
     ==> _module.Cell.FArray#requires(_module.Cell$T, $Heap, this) == true);

procedure {:verboseName "Cell.FArray (well-formedness)"} CheckWellformed$$_module.Cell.FArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell.FArray (well-formedness)"} CheckWellformed$$_module.Cell.FArray(_module.Cell$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Cell.FArray(_module.Cell$T, $Heap, this), 
          Tclass._System.array(_module.Cell$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#0 := $_ReadsFrame[this, _module.Cell.arr];
        assume {:id "id1613"} _module.Cell.FArray(_module.Cell$T, $Heap, this)
           == $Unbox(read($Heap, this, _module.Cell.arr)): ref;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Cell.FArray(_module.Cell$T, $Heap, this), 
          Tclass._System.array(_module.Cell$T));
        assert {:id "id1614"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "Cell.MArray (well-formedness)"} CheckWellFormed$$_module.Cell.MArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(x#0, Tclass._System.array(_module.Cell$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cell.MArray (call)"} Call$$_module.Cell.MArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(x#0, Tclass._System.array(_module.Cell$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1616"} x#0 == $Unbox(read($Heap, this, _module.Cell.arr)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cell.MArray (correctness)"} Impl$$_module.Cell.MArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(x#0, Tclass._System.array(_module.Cell$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1617"} x#0 == $Unbox(read($Heap, this, _module.Cell.arr)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell.MArray (correctness)"} Impl$$_module.Cell.MArray(_module.Cell$T: Ty, this: ref) returns (x#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MArray, Impl$$_module.Cell.MArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(316,7)
    assume true;
    assume true;
    x#0 := $Unbox(read($Heap, this, _module.Cell.arr)): ref;
}



procedure {:verboseName "Cell.MArray2 (well-formedness)"} CheckWellFormed$$_module.Cell.MArray2(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(x#0, Tclass._System.array(_module.Cell$T), $Heap), 
    y#0: ref
       where $Is(y#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(y#0, Tclass._System.array(_module.Cell$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cell.MArray2 (call)"} Call$$_module.Cell.MArray2(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(x#0, Tclass._System.array(_module.Cell$T), $Heap), 
    y#0: ref
       where $Is(y#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(y#0, Tclass._System.array(_module.Cell$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1620"} x#0 == y#0;
  ensures {:id "id1621"} y#0 == $Unbox(read($Heap, this, _module.Cell.arr)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cell.MArray2 (correctness)"} Impl$$_module.Cell.MArray2(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(x#0, Tclass._System.array(_module.Cell$T), $Heap), 
    y#0: ref
       where $Is(y#0, Tclass._System.array(_module.Cell$T))
         && $IsAlloc(y#0, Tclass._System.array(_module.Cell$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1622"} x#0 == y#0;
  ensures {:id "id1623"} y#0 == $Unbox(read($Heap, this, _module.Cell.arr)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell.MArray2 (correctness)"} Impl$$_module.Cell.MArray2(_module.Cell$T: Ty, this: ref)
   returns (x#0: ref, y#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var $rhs#1: ref;

    // AddMethodImpl: MArray2, Impl$$_module.Cell.MArray2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(321,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Cell.arr)): ref;
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.Cell.arr)): ref;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
}



procedure {:verboseName "Cell.UArray (well-formedness)"} CheckWellFormed$$_module.Cell.UArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cell$T) && $IsAllocBox(x#0, _module.Cell$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cell.UArray (call)"} Call$$_module.Cell.UArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cell$T) && $IsAllocBox(x#0, _module.Cell$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), this, _module.Cell.arr)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cell.UArray (correctness)"} Impl$$_module.Cell.UArray(_module.Cell$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell(_module.Cell$T))
         && $IsAlloc(this, Tclass._module.Cell(_module.Cell$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cell$T) && $IsAllocBox(x#0, _module.Cell$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), this, _module.Cell.arr)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell.UArray (correctness)"} Impl$$_module.Cell.UArray(_module.Cell$T: Ty, this: ref, x#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: Box;

    // AddMethodImpl: UArray, Impl$$_module.Cell.UArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.Cell.arr)): ref);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(326,5)
    assert {:id "id1628"} $Unbox(read($Heap, this, _module.Cell.arr)): ref != null;
    assume true;
    if (_System.array.Length($Unbox(read($Heap, this, _module.Cell.arr)): ref) > 0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Arrays.dfy(327,14)
        assert {:id "id1629"} $Unbox(read($Heap, this, _module.Cell.arr)): ref != null;
        assert {:id "id1630"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array.Length($Unbox(read($Heap, this, _module.Cell.arr)): ref);
        assume true;
        assert {:id "id1631"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.Cell.arr)): ref, IndexField(LitInt(0))];
        assume true;
        $rhs#0_0 := x#0;
        $Heap := update($Heap, 
          $Unbox(read($Heap, this, _module.Cell.arr)): ref, 
          IndexField(LitInt(0)), 
          $rhs#0_0);
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



// $Is axiom for non-null type _module.Cell
axiom (forall _module.Cell$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Cell(_module.Cell$T)) } 
    { $Is(c#0, Tclass._module.Cell?(_module.Cell$T)) } 
  $Is(c#0, Tclass._module.Cell(_module.Cell$T))
     <==> $Is(c#0, Tclass._module.Cell?(_module.Cell$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Cell
axiom (forall _module.Cell$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Cell(_module.Cell$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.Cell?(_module.Cell$T), $h) } 
  $IsAlloc(c#0, Tclass._module.Cell(_module.Cell$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.Cell?(_module.Cell$T), $h));

procedure {:verboseName "ychar (well-formedness)"} CheckWellFormed$$_module.ychar(ch#0: char);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ychar (well-formedness)"} CheckWellFormed$$_module.ychar(ch#0: char)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type ychar
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(ch#0, TChar);
        if (char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0))
        {
        }

        assume {:id "id1634"} char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0)
           && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1635"} {:subsumption 0} char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(Lit(char#FromInt(68)));
        assert {:id "id1636"} {:subsumption 0} char#ToInt(Lit(char#FromInt(68))) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }
}



// $Is axiom for subset type _module.ychar
axiom (forall ch#0: char :: 
  { $Is(ch#0, Tclass._module.ychar()) } 
  $Is(ch#0, Tclass._module.ychar())
     <==> char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0)
       && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122))));

// $IsAlloc axiom for subset type _module.ychar
axiom (forall ch#0: char, $h: Heap :: 
  { $IsAlloc(ch#0, Tclass._module.ychar(), $h) } 
  $IsAlloc(ch#0, Tclass._module.ychar(), $h));

procedure {:verboseName "zchar (well-formedness)"} CheckWellFormed$$_module.zchar(ch#0: char);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "zchar (well-formedness)"} CheckWellFormed$$_module.zchar(ch#0: char)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type zchar
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(ch#0, TChar);
        if (char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0))
        {
        }

        assume {:id "id1637"} char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0)
           && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1638"} {:subsumption 0} char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(Lit(char#FromInt(114)));
        assert {:id "id1639"} {:subsumption 0} char#ToInt(Lit(char#FromInt(114))) <= char#ToInt(Lit(char#FromInt(122)));
        assume false;
    }
}



// $Is axiom for subset type _module.zchar
axiom (forall ch#0: char :: 
  { $Is(ch#0, Tclass._module.zchar()) } 
  $Is(ch#0, Tclass._module.zchar())
     <==> char#ToInt(Lit(char#FromInt(0))) <= char#ToInt(ch#0)
       && char#ToInt(ch#0) <= char#ToInt(Lit(char#FromInt(122))));

// $IsAlloc axiom for subset type _module.zchar
axiom (forall ch#0: char, $h: Heap :: 
  { $IsAlloc(ch#0, Tclass._module.zchar(), $h) } 
  $IsAlloc(ch#0, Tclass._module.zchar(), $h));

procedure {:verboseName "TypeSynonym.Test (well-formedness)"} CheckWellFormed$$TypeSynonym.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeSynonym.Test (call)"} Call$$TypeSynonym.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.MoreArrays.__default: ClassName;

procedure {:verboseName "MoreArrays.Test (well-formedness)"} CheckWellFormed$$MoreArrays.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreArrays.Test (call)"} Call$$MoreArrays.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.MoreArrays.byte() : Ty
uses {
// Tclass.MoreArrays.byte Tag
axiom Tag(Tclass.MoreArrays.byte()) == Tagclass.MoreArrays.byte
   && TagFamily(Tclass.MoreArrays.byte()) == tytagFamily$byte;
}

const unique Tagclass.MoreArrays.byte: TyTag;

// Box/unbox axiom for Tclass.MoreArrays.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreArrays.byte()) } 
  $IsBox(bx, Tclass.MoreArrays.byte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.MoreArrays.byte()));

// $Is axiom for newtype MoreArrays.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreArrays.byte()) } 
  $Is(x#0, Tclass.MoreArrays.byte()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype MoreArrays.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreArrays.byte(), $h) } 
  $IsAlloc(x#0, Tclass.MoreArrays.byte(), $h));

const unique class.MoreArrays.byte: ClassName;

const unique class.MoreArrays.MyClass?: ClassName;

function Tclass.MoreArrays.MyClass?() : Ty
uses {
// Tclass.MoreArrays.MyClass? Tag
axiom Tag(Tclass.MoreArrays.MyClass?()) == Tagclass.MoreArrays.MyClass?
   && TagFamily(Tclass.MoreArrays.MyClass?()) == tytagFamily$MyClass;
}

const unique Tagclass.MoreArrays.MyClass?: TyTag;

// Box/unbox axiom for Tclass.MoreArrays.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreArrays.MyClass?()) } 
  $IsBox(bx, Tclass.MoreArrays.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.MoreArrays.MyClass?()));

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass.MoreArrays.MyClass?()) } 
  $Is($o, Tclass.MoreArrays.MyClass?())
     <==> $o == null || dtype($o) == Tclass.MoreArrays.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.MoreArrays.MyClass?(), $h) } 
  $IsAlloc($o, Tclass.MoreArrays.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.MoreArrays.MyClass() : Ty
uses {
// Tclass.MoreArrays.MyClass Tag
axiom Tag(Tclass.MoreArrays.MyClass()) == Tagclass.MoreArrays.MyClass
   && TagFamily(Tclass.MoreArrays.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass.MoreArrays.MyClass: TyTag;

// Box/unbox axiom for Tclass.MoreArrays.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreArrays.MyClass()) } 
  $IsBox(bx, Tclass.MoreArrays.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.MoreArrays.MyClass()));

// $Is axiom for non-null type MoreArrays.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.MoreArrays.MyClass()) } 
    { $Is(c#0, Tclass.MoreArrays.MyClass?()) } 
  $Is(c#0, Tclass.MoreArrays.MyClass())
     <==> $Is(c#0, Tclass.MoreArrays.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type MoreArrays.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.MoreArrays.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass.MoreArrays.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass.MoreArrays.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass.MoreArrays.MyClass?(), $h));

const unique class.NativeArrays.__default: ClassName;

procedure {:verboseName "NativeArrays.Test (well-formedness)"} CheckWellFormed$$NativeArrays.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NativeArrays.Test (call)"} Call$$NativeArrays.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.NativeArrays.byte() : Ty
uses {
// Tclass.NativeArrays.byte Tag
axiom Tag(Tclass.NativeArrays.byte()) == Tagclass.NativeArrays.byte
   && TagFamily(Tclass.NativeArrays.byte()) == tytagFamily$byte;
}

const unique Tagclass.NativeArrays.byte: TyTag;

// Box/unbox axiom for Tclass.NativeArrays.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NativeArrays.byte()) } 
  $IsBox(bx, Tclass.NativeArrays.byte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.NativeArrays.byte()));

// $Is axiom for newtype NativeArrays.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NativeArrays.byte()) } 
  $Is(x#0, Tclass.NativeArrays.byte()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype NativeArrays.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NativeArrays.byte(), $h) } 
  $IsAlloc(x#0, Tclass.NativeArrays.byte(), $h));

const unique class.NativeArrays.byte: ClassName;

function Tclass.NativeArrays.onebyte() : Ty
uses {
// Tclass.NativeArrays.onebyte Tag
axiom Tag(Tclass.NativeArrays.onebyte()) == Tagclass.NativeArrays.onebyte
   && TagFamily(Tclass.NativeArrays.onebyte()) == tytagFamily$onebyte;
}

const unique Tagclass.NativeArrays.onebyte: TyTag;

// Box/unbox axiom for Tclass.NativeArrays.onebyte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NativeArrays.onebyte()) } 
  $IsBox(bx, Tclass.NativeArrays.onebyte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NativeArrays.onebyte()));

// $Is axiom for newtype NativeArrays.onebyte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NativeArrays.onebyte()) } 
  $Is(x#0, Tclass.NativeArrays.onebyte()) <==> 0 < x#0 && x#0 < 256);

// $IsAlloc axiom for newtype NativeArrays.onebyte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NativeArrays.onebyte(), $h) } 
  $IsAlloc(x#0, Tclass.NativeArrays.onebyte(), $h));

const unique class.NativeArrays.onebyte: ClassName;

const unique class.SimultaneousAssignment.__default: ClassName;

procedure {:verboseName "SimultaneousAssignment.Test (well-formedness)"} CheckWellFormed$$SimultaneousAssignment.__default.Test();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SimultaneousAssignment.Test (call)"} Call$$SimultaneousAssignment.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.ArrayToSeq.__default: ClassName;

procedure {:verboseName "ArrayToSeq.Test (well-formedness)"} CheckWellFormed$$ArrayToSeq.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayToSeq.Test (call)"} Call$$ArrayToSeq.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.ArrayToSeq.byte() : Ty
uses {
// Tclass.ArrayToSeq.byte Tag
axiom Tag(Tclass.ArrayToSeq.byte()) == Tagclass.ArrayToSeq.byte
   && TagFamily(Tclass.ArrayToSeq.byte()) == tytagFamily$byte;
}

const unique Tagclass.ArrayToSeq.byte: TyTag;

// Box/unbox axiom for Tclass.ArrayToSeq.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayToSeq.byte()) } 
  $IsBox(bx, Tclass.ArrayToSeq.byte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.ArrayToSeq.byte()));

// $Is axiom for newtype ArrayToSeq.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.ArrayToSeq.byte()) } 
  $Is(x#0, Tclass.ArrayToSeq.byte()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype ArrayToSeq.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.ArrayToSeq.byte(), $h) } 
  $IsAlloc(x#0, Tclass.ArrayToSeq.byte(), $h));

const unique class.ArrayToSeq.byte: ClassName;

const unique class.ArrayToSeq.TraitMeRite?: ClassName;

function Tclass.ArrayToSeq.TraitMeRite?() : Ty
uses {
// Tclass.ArrayToSeq.TraitMeRite? Tag
axiom Tag(Tclass.ArrayToSeq.TraitMeRite?()) == Tagclass.ArrayToSeq.TraitMeRite?
   && TagFamily(Tclass.ArrayToSeq.TraitMeRite?()) == tytagFamily$TraitMeRite;
}

const unique Tagclass.ArrayToSeq.TraitMeRite?: TyTag;

// Box/unbox axiom for Tclass.ArrayToSeq.TraitMeRite?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayToSeq.TraitMeRite?()) } 
  $IsBox(bx, Tclass.ArrayToSeq.TraitMeRite?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ArrayToSeq.TraitMeRite?()));

// $Is axiom for trait TraitMeRite
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ArrayToSeq.TraitMeRite?()) } 
  $Is($o, Tclass.ArrayToSeq.TraitMeRite?())
     <==> $o == null || implements$ArrayToSeq.TraitMeRite(dtype($o)));

// $IsAlloc axiom for trait TraitMeRite
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ArrayToSeq.TraitMeRite?(), $h) } 
  $IsAlloc($o, Tclass.ArrayToSeq.TraitMeRite?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$ArrayToSeq.TraitMeRite(ty: Ty) : bool;

function Tclass.ArrayToSeq.TraitMeRite() : Ty
uses {
// Tclass.ArrayToSeq.TraitMeRite Tag
axiom Tag(Tclass.ArrayToSeq.TraitMeRite()) == Tagclass.ArrayToSeq.TraitMeRite
   && TagFamily(Tclass.ArrayToSeq.TraitMeRite()) == tytagFamily$TraitMeRite;
}

const unique Tagclass.ArrayToSeq.TraitMeRite: TyTag;

// Box/unbox axiom for Tclass.ArrayToSeq.TraitMeRite
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayToSeq.TraitMeRite()) } 
  $IsBox(bx, Tclass.ArrayToSeq.TraitMeRite())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ArrayToSeq.TraitMeRite()));

// $Is axiom for non-null type ArrayToSeq.TraitMeRite
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ArrayToSeq.TraitMeRite()) } 
    { $Is(c#0, Tclass.ArrayToSeq.TraitMeRite?()) } 
  $Is(c#0, Tclass.ArrayToSeq.TraitMeRite())
     <==> $Is(c#0, Tclass.ArrayToSeq.TraitMeRite?()) && c#0 != null);

// $IsAlloc axiom for non-null type ArrayToSeq.TraitMeRite
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ArrayToSeq.TraitMeRite(), $h) } 
    { $IsAlloc(c#0, Tclass.ArrayToSeq.TraitMeRite?(), $h) } 
  $IsAlloc(c#0, Tclass.ArrayToSeq.TraitMeRite(), $h)
     <==> $IsAlloc(c#0, Tclass.ArrayToSeq.TraitMeRite?(), $h));

const unique class.ArrayToSeq.MyClass?: ClassName;

function Tclass.ArrayToSeq.MyClass?() : Ty
uses {
// Tclass.ArrayToSeq.MyClass? Tag
axiom Tag(Tclass.ArrayToSeq.MyClass?()) == Tagclass.ArrayToSeq.MyClass?
   && TagFamily(Tclass.ArrayToSeq.MyClass?()) == tytagFamily$MyClass;
axiom implements$ArrayToSeq.TraitMeRite(Tclass.ArrayToSeq.MyClass?());
}

const unique Tagclass.ArrayToSeq.MyClass?: TyTag;

// Box/unbox axiom for Tclass.ArrayToSeq.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayToSeq.MyClass?()) } 
  $IsBox(bx, Tclass.ArrayToSeq.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ArrayToSeq.MyClass?()));

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ArrayToSeq.MyClass?()) } 
  $Is($o, Tclass.ArrayToSeq.MyClass?())
     <==> $o == null || dtype($o) == Tclass.ArrayToSeq.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ArrayToSeq.MyClass?(), $h) } 
  $IsAlloc($o, Tclass.ArrayToSeq.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ArrayToSeq.MyClass() : Ty
uses {
// Tclass.ArrayToSeq.MyClass Tag
axiom Tag(Tclass.ArrayToSeq.MyClass()) == Tagclass.ArrayToSeq.MyClass
   && TagFamily(Tclass.ArrayToSeq.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass.ArrayToSeq.MyClass: TyTag;

// Box/unbox axiom for Tclass.ArrayToSeq.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayToSeq.MyClass()) } 
  $IsBox(bx, Tclass.ArrayToSeq.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ArrayToSeq.MyClass()));

// $Is axiom for non-null type ArrayToSeq.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ArrayToSeq.MyClass()) } 
    { $Is(c#0, Tclass.ArrayToSeq.MyClass?()) } 
  $Is(c#0, Tclass.ArrayToSeq.MyClass())
     <==> $Is(c#0, Tclass.ArrayToSeq.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type ArrayToSeq.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ArrayToSeq.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass.ArrayToSeq.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass.ArrayToSeq.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass.ArrayToSeq.MyClass?(), $h));

const unique class.ArrayAllocationInitialization.__default: ClassName;

// function declaration for ArrayAllocationInitialization._default.AutoInitF
function ArrayAllocationInitialization.__default.AutoInitF(i#0: int) : int;

function ArrayAllocationInitialization.__default.AutoInitF#canCall(i#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.AutoInitF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF(i#0) } 
  ArrayAllocationInitialization.__default.AutoInitF#canCall(i#0)
       || LitInt(0) <= i#0
     ==> LitInt(20) <= ArrayAllocationInitialization.__default.AutoInitF(i#0)
       && ArrayAllocationInitialization.__default.AutoInitF(i#0) < 2000000);

function ArrayAllocationInitialization.__default.AutoInitF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.AutoInitF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.AutoInitF#requires(i#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.AutoInitF (revealed)
axiom {:id "id1640"} (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF(i#0) } 
  ArrayAllocationInitialization.__default.AutoInitF#canCall(i#0)
       || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.AutoInitF(i#0)
       == (if LitInt(20) <= i#0 && i#0 < 30 then i#0 else 78));

// definition axiom for ArrayAllocationInitialization.__default.AutoInitF for all literals (revealed)
axiom {:id "id1641"} (forall i#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.AutoInitF(LitInt(i#0)) } 
  ArrayAllocationInitialization.__default.AutoInitF#canCall(LitInt(i#0))
       || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.AutoInitF(LitInt(i#0))
       == (if LitInt(20) <= LitInt(i#0) && i#0 < 30 then i#0 else 78));

// function declaration for ArrayAllocationInitialization._default.NonAutoInitF
function ArrayAllocationInitialization.__default.NonAutoInitF(i#0: int) : int;

function ArrayAllocationInitialization.__default.NonAutoInitF#canCall(i#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.NonAutoInitF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.NonAutoInitF(i#0) } 
  ArrayAllocationInitialization.__default.NonAutoInitF#canCall(i#0)
       || LitInt(0) <= i#0
     ==> LitInt(20) <= ArrayAllocationInitialization.__default.NonAutoInitF(i#0)
       && ArrayAllocationInitialization.__default.NonAutoInitF(i#0) < 2000000);

function ArrayAllocationInitialization.__default.NonAutoInitF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.NonAutoInitF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.NonAutoInitF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.NonAutoInitF#requires(i#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.NonAutoInitF (revealed)
axiom {:id "id1642"} (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.NonAutoInitF(i#0) } 
  ArrayAllocationInitialization.__default.NonAutoInitF#canCall(i#0)
       || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.NonAutoInitF(i#0) == LitInt(82));

// definition axiom for ArrayAllocationInitialization.__default.NonAutoInitF for all literals (revealed)
axiom {:id "id1643"} (forall i#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.NonAutoInitF(LitInt(i#0)) } 
  ArrayAllocationInitialization.__default.NonAutoInitF#canCall(LitInt(i#0))
       || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.NonAutoInitF(LitInt(i#0)) == LitInt(82));

// function declaration for ArrayAllocationInitialization._default.ByteF
function ArrayAllocationInitialization.__default.ByteF(i#0: int) : int;

function ArrayAllocationInitialization.__default.ByteF#canCall(i#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.ByteF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF(i#0) } 
  ArrayAllocationInitialization.__default.ByteF#canCall(i#0) || LitInt(0) <= i#0
     ==> LitInt(0) <= ArrayAllocationInitialization.__default.ByteF(i#0)
       && ArrayAllocationInitialization.__default.ByteF(i#0) < 256);

function ArrayAllocationInitialization.__default.ByteF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.ByteF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.ByteF#requires(i#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.ByteF (revealed)
axiom {:id "id1644"} (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF(i#0) } 
  ArrayAllocationInitialization.__default.ByteF#canCall(i#0) || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.ByteF(i#0)
       == (if LitInt(20) <= i#0 && i#0 < 30 then i#0 else 60));

// definition axiom for ArrayAllocationInitialization.__default.ByteF for all literals (revealed)
axiom {:id "id1645"} (forall i#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.ByteF(LitInt(i#0)) } 
  ArrayAllocationInitialization.__default.ByteF#canCall(LitInt(i#0))
       || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.ByteF(LitInt(i#0))
       == (if LitInt(20) <= LitInt(i#0) && i#0 < 30 then i#0 else 60));

// function declaration for ArrayAllocationInitialization._default.CharF
function ArrayAllocationInitialization.__default.CharF(i#0: int) : char;

function ArrayAllocationInitialization.__default.CharF#canCall(i#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.CharF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.CharF(i#0) } 
  ArrayAllocationInitialization.__default.CharF#canCall(i#0) || LitInt(0) <= i#0
     ==> $Is(ArrayAllocationInitialization.__default.CharF(i#0), TChar));

function ArrayAllocationInitialization.__default.CharF#requires(int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.CharF
axiom (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.CharF#requires(i#0) } 
  LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.CharF#requires(i#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.CharF (revealed)
axiom {:id "id1646"} (forall i#0: int :: 
  { ArrayAllocationInitialization.__default.CharF(i#0) } 
  ArrayAllocationInitialization.__default.CharF#canCall(i#0) || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.CharF(i#0)
       == (if LitInt(20) <= i#0 && i#0 < 30
         then char#Plus(char#FromInt(97), char#FromInt(i#0 - 20))
         else char#FromInt(103)));

// definition axiom for ArrayAllocationInitialization.__default.CharF for all literals (revealed)
axiom {:id "id1647"} (forall i#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.CharF(LitInt(i#0)) } 
  ArrayAllocationInitialization.__default.CharF#canCall(LitInt(i#0))
       || LitInt(0) <= i#0
     ==> ArrayAllocationInitialization.__default.CharF(LitInt(i#0))
       == (if LitInt(20) <= LitInt(i#0) && i#0 < 30
         then char#Plus(char#FromInt(97), char#FromInt(LitInt(i#0 - 20)))
         else char#FromInt(103)));

// function declaration for ArrayAllocationInitialization._default.AutoInitF2
function ArrayAllocationInitialization.__default.AutoInitF2(i#0: int, j#0: int) : int;

function ArrayAllocationInitialization.__default.AutoInitF2#canCall(i#0: int, j#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.AutoInitF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) } 
  ArrayAllocationInitialization.__default.AutoInitF2#canCall(i#0, j#0)
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> LitInt(20) <= ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0)
       && ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) < 2000000);

function ArrayAllocationInitialization.__default.AutoInitF2#requires(int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.AutoInitF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF2#requires(i#0, j#0) } 
  LitInt(0) <= i#0 && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.AutoInitF2#requires(i#0, j#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.AutoInitF2 (revealed)
axiom {:id "id1648"} (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0) } 
  ArrayAllocationInitialization.__default.AutoInitF2#canCall(i#0, j#0)
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> ArrayAllocationInitialization.__default.AutoInitF2(i#0, j#0)
       == (if i#0 == j#0 then 50 else 78));

// definition axiom for ArrayAllocationInitialization.__default.AutoInitF2 for all literals (revealed)
axiom {:id "id1649"} (forall i#0: int, j#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.AutoInitF2(LitInt(i#0), LitInt(j#0)) } 
  ArrayAllocationInitialization.__default.AutoInitF2#canCall(LitInt(i#0), LitInt(j#0))
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> ArrayAllocationInitialization.__default.AutoInitF2(LitInt(i#0), LitInt(j#0))
       == (if LitInt(i#0) == LitInt(j#0) then 50 else 78));

// function declaration for ArrayAllocationInitialization._default.ByteF2
function ArrayAllocationInitialization.__default.ByteF2(i#0: int, j#0: int) : int;

function ArrayAllocationInitialization.__default.ByteF2#canCall(i#0: int, j#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.ByteF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) } 
  ArrayAllocationInitialization.__default.ByteF2#canCall(i#0, j#0)
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> LitInt(0) <= ArrayAllocationInitialization.__default.ByteF2(i#0, j#0)
       && ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) < 256);

function ArrayAllocationInitialization.__default.ByteF2#requires(int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.ByteF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF2#requires(i#0, j#0) } 
  LitInt(0) <= i#0 && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.ByteF2#requires(i#0, j#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.ByteF2 (revealed)
axiom {:id "id1650"} (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.ByteF2(i#0, j#0) } 
  ArrayAllocationInitialization.__default.ByteF2#canCall(i#0, j#0)
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> ArrayAllocationInitialization.__default.ByteF2(i#0, j#0)
       == (if i#0 == j#0 then 50 else 60));

// definition axiom for ArrayAllocationInitialization.__default.ByteF2 for all literals (revealed)
axiom {:id "id1651"} (forall i#0: int, j#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.ByteF2(LitInt(i#0), LitInt(j#0)) } 
  ArrayAllocationInitialization.__default.ByteF2#canCall(LitInt(i#0), LitInt(j#0))
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> ArrayAllocationInitialization.__default.ByteF2(LitInt(i#0), LitInt(j#0))
       == (if LitInt(i#0) == LitInt(j#0) then 50 else 60));

// function declaration for ArrayAllocationInitialization._default.CharF2
function ArrayAllocationInitialization.__default.CharF2(i#0: int, j#0: int) : char;

function ArrayAllocationInitialization.__default.CharF2#canCall(i#0: int, j#0: int) : bool;

// consequence axiom for ArrayAllocationInitialization.__default.CharF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.CharF2(i#0, j#0) } 
  ArrayAllocationInitialization.__default.CharF2#canCall(i#0, j#0)
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> $Is(ArrayAllocationInitialization.__default.CharF2(i#0, j#0), TChar));

function ArrayAllocationInitialization.__default.CharF2#requires(int, int) : bool;

// #requires axiom for ArrayAllocationInitialization.__default.CharF2
axiom (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.CharF2#requires(i#0, j#0) } 
  LitInt(0) <= i#0 && LitInt(0) <= j#0
     ==> ArrayAllocationInitialization.__default.CharF2#requires(i#0, j#0) == true);

// definition axiom for ArrayAllocationInitialization.__default.CharF2 (revealed)
axiom {:id "id1652"} (forall i#0: int, j#0: int :: 
  { ArrayAllocationInitialization.__default.CharF2(i#0, j#0) } 
  ArrayAllocationInitialization.__default.CharF2#canCall(i#0, j#0)
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> ArrayAllocationInitialization.__default.CharF2(i#0, j#0)
       == (if i#0 == j#0 then char#FromInt(97) else char#FromInt(103)));

// definition axiom for ArrayAllocationInitialization.__default.CharF2 for all literals (revealed)
axiom {:id "id1653"} (forall i#0: int, j#0: int :: 
  {:weight 3} { ArrayAllocationInitialization.__default.CharF2(LitInt(i#0), LitInt(j#0)) } 
  ArrayAllocationInitialization.__default.CharF2#canCall(LitInt(i#0), LitInt(j#0))
       || (LitInt(0) <= i#0 && LitInt(0) <= j#0)
     ==> ArrayAllocationInitialization.__default.CharF2(LitInt(i#0), LitInt(j#0))
       == (if LitInt(i#0) == LitInt(j#0) then char#FromInt(97) else char#FromInt(103)));

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



// function declaration for ArrayAllocationInitialization._default.MatrixToSequence
function ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $heap: Heap, 
    m#0: ref)
   : Seq;

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

// consequence axiom for ArrayAllocationInitialization.__default.MatrixToSequence
axiom (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $Heap: Heap, 
    m#0: ref :: 
  { ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0) } 
  ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
       || ($IsGoodHeap($Heap)
         && 
        $Is(m#0, 
          Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T))
         && $IsAlloc(m#0, 
          Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T), 
          $Heap))
     ==> $Is(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
      TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T)));

// alloc consequence axiom for ArrayAllocationInitialization.__default.MatrixToSequence
axiom (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $Heap: Heap, 
    m#0: ref :: 
  { $IsAlloc(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
      TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T), 
      $Heap) } 
  ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
       || ($IsGoodHeap($Heap)
         && 
        $Is(m#0, 
          Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T))
         && $IsAlloc(m#0, 
          Tclass._System.array2(ArrayAllocationInitialization._default.MatrixToSequence$T), 
          $Heap))
     ==> $IsAlloc(ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), 
      TSeq(ArrayAllocationInitialization._default.MatrixToSequence$T), 
      $Heap));

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

// definition axiom for ArrayAllocationInitialization.__default.MatrixToSequence (revealed)
axiom {:id "id1654"} (forall ArrayAllocationInitialization._default.MatrixToSequence$T: Ty, 
    $Heap: Heap, 
    m#0: ref :: 
  { ArrayAllocationInitialization.__default.MatrixToSequence(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0), $IsGoodHeap($Heap) } 
  ArrayAllocationInitialization.__default.MatrixToSequence#canCall(ArrayAllocationInitialization._default.MatrixToSequence$T, $Heap, m#0)
       || ($IsGoodHeap($Heap)
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

// function declaration for ArrayAllocationInitialization._default.M2S
function ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int)
   : Seq;

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

// consequence axiom for ArrayAllocationInitialization.__default.M2S
axiom (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0) } 
  ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0)
       || (
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
axiom (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { $IsAlloc(ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $ly, $Heap, m#0, i#0, j#0), 
      TSeq(ArrayAllocationInitialization._default.M2S$T), 
      $Heap) } 
  ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0)
       || (
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

// definition axiom for ArrayAllocationInitialization.__default.M2S (revealed)
axiom {:id "id1655"} (forall ArrayAllocationInitialization._default.M2S$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: ref, 
    i#0: int, 
    j#0: int :: 
  { ArrayAllocationInitialization.__default.M2S(ArrayAllocationInitialization._default.M2S$T, $LS($ly), $Heap, m#0, i#0, j#0), $IsGoodHeap($Heap) } 
  ArrayAllocationInitialization.__default.M2S#canCall(ArrayAllocationInitialization._default.M2S$T, $Heap, m#0, i#0, j#0)
       || (
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

const unique class.VariationsOnIndexAndDimensionTypes.__default: ClassName;

procedure {:verboseName "VariationsOnIndexAndDimensionTypes.Test (well-formedness)"} CheckWellFormed$$VariationsOnIndexAndDimensionTypes.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "VariationsOnIndexAndDimensionTypes.Test (call)"} Call$$VariationsOnIndexAndDimensionTypes.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for VariationsOnIndexAndDimensionTypes._default.F
function VariationsOnIndexAndDimensionTypes.__default.F(a#0: int, b#0: int, c#0: int) : int;

function VariationsOnIndexAndDimensionTypes.__default.F#canCall(a#0: int, b#0: int, c#0: int) : bool;

// consequence axiom for VariationsOnIndexAndDimensionTypes.__default.F
axiom (forall a#0: int, b#0: int, c#0: int :: 
  { VariationsOnIndexAndDimensionTypes.__default.F(a#0, b#0, c#0) } 
  VariationsOnIndexAndDimensionTypes.__default.F#canCall(a#0, b#0, c#0)
       || (LitInt(0) <= a#0 && LitInt(0) <= b#0 && LitInt(0) <= c#0)
     ==> LitInt(0) <= VariationsOnIndexAndDimensionTypes.__default.F(a#0, b#0, c#0)
       && VariationsOnIndexAndDimensionTypes.__default.F(a#0, b#0, c#0) < 256);

function VariationsOnIndexAndDimensionTypes.__default.F#requires(int, int, int) : bool;

// #requires axiom for VariationsOnIndexAndDimensionTypes.__default.F
axiom (forall a#0: int, b#0: int, c#0: int :: 
  { VariationsOnIndexAndDimensionTypes.__default.F#requires(a#0, b#0, c#0) } 
  LitInt(0) <= a#0 && LitInt(0) <= b#0 && LitInt(0) <= c#0
     ==> VariationsOnIndexAndDimensionTypes.__default.F#requires(a#0, b#0, c#0) == true);

// definition axiom for VariationsOnIndexAndDimensionTypes.__default.F (revealed)
axiom {:id "id1656"} (forall a#0: int, b#0: int, c#0: int :: 
  { VariationsOnIndexAndDimensionTypes.__default.F(a#0, b#0, c#0) } 
  VariationsOnIndexAndDimensionTypes.__default.F#canCall(a#0, b#0, c#0)
       || (LitInt(0) <= a#0 && LitInt(0) <= b#0 && LitInt(0) <= c#0)
     ==> VariationsOnIndexAndDimensionTypes.__default.F(a#0, b#0, c#0)
       == (if a#0 == LitInt(0) then 45 else (if a#0 == LitInt(1) then 46 else 47)));

// definition axiom for VariationsOnIndexAndDimensionTypes.__default.F for all literals (revealed)
axiom {:id "id1657"} (forall a#0: int, b#0: int, c#0: int :: 
  {:weight 3} { VariationsOnIndexAndDimensionTypes.__default.F(LitInt(a#0), LitInt(b#0), LitInt(c#0)) } 
  VariationsOnIndexAndDimensionTypes.__default.F#canCall(LitInt(a#0), LitInt(b#0), LitInt(c#0))
       || (LitInt(0) <= a#0 && LitInt(0) <= b#0 && LitInt(0) <= c#0)
     ==> VariationsOnIndexAndDimensionTypes.__default.F(LitInt(a#0), LitInt(b#0), LitInt(c#0))
       == (if LitInt(a#0) == LitInt(0)
         then 45
         else (if LitInt(a#0) == LitInt(1) then 46 else 47)));

function Tclass.VariationsOnIndexAndDimensionTypes.byte() : Ty
uses {
// Tclass.VariationsOnIndexAndDimensionTypes.byte Tag
axiom Tag(Tclass.VariationsOnIndexAndDimensionTypes.byte())
     == Tagclass.VariationsOnIndexAndDimensionTypes.byte
   && TagFamily(Tclass.VariationsOnIndexAndDimensionTypes.byte()) == tytagFamily$byte;
}

const unique Tagclass.VariationsOnIndexAndDimensionTypes.byte: TyTag;

// Box/unbox axiom for Tclass.VariationsOnIndexAndDimensionTypes.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.VariationsOnIndexAndDimensionTypes.byte()) } 
  $IsBox(bx, Tclass.VariationsOnIndexAndDimensionTypes.byte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.VariationsOnIndexAndDimensionTypes.byte()));

// $Is axiom for newtype VariationsOnIndexAndDimensionTypes.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.VariationsOnIndexAndDimensionTypes.byte()) } 
  $Is(x#0, Tclass.VariationsOnIndexAndDimensionTypes.byte())
     <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype VariationsOnIndexAndDimensionTypes.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.VariationsOnIndexAndDimensionTypes.byte(), $h) } 
  $IsAlloc(x#0, Tclass.VariationsOnIndexAndDimensionTypes.byte(), $h));

const unique class.VariationsOnIndexAndDimensionTypes.byte: ClassName;

function Tclass.VariationsOnIndexAndDimensionTypes.onebyte() : Ty
uses {
// Tclass.VariationsOnIndexAndDimensionTypes.onebyte Tag
axiom Tag(Tclass.VariationsOnIndexAndDimensionTypes.onebyte())
     == Tagclass.VariationsOnIndexAndDimensionTypes.onebyte
   && TagFamily(Tclass.VariationsOnIndexAndDimensionTypes.onebyte())
     == tytagFamily$onebyte;
}

const unique Tagclass.VariationsOnIndexAndDimensionTypes.onebyte: TyTag;

// Box/unbox axiom for Tclass.VariationsOnIndexAndDimensionTypes.onebyte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.VariationsOnIndexAndDimensionTypes.onebyte()) } 
  $IsBox(bx, Tclass.VariationsOnIndexAndDimensionTypes.onebyte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.VariationsOnIndexAndDimensionTypes.onebyte()));

// $Is axiom for newtype VariationsOnIndexAndDimensionTypes.onebyte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.VariationsOnIndexAndDimensionTypes.onebyte()) } 
  $Is(x#0, Tclass.VariationsOnIndexAndDimensionTypes.onebyte())
     <==> 0 < x#0 && x#0 < 256);

// $IsAlloc axiom for newtype VariationsOnIndexAndDimensionTypes.onebyte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.VariationsOnIndexAndDimensionTypes.onebyte(), $h) } 
  $IsAlloc(x#0, Tclass.VariationsOnIndexAndDimensionTypes.onebyte(), $h));

const unique class.VariationsOnIndexAndDimensionTypes.onebyte: ClassName;

function Tclass.VariationsOnIndexAndDimensionTypes.Long() : Ty
uses {
// Tclass.VariationsOnIndexAndDimensionTypes.Long Tag
axiom Tag(Tclass.VariationsOnIndexAndDimensionTypes.Long())
     == Tagclass.VariationsOnIndexAndDimensionTypes.Long
   && TagFamily(Tclass.VariationsOnIndexAndDimensionTypes.Long()) == tytagFamily$Long;
}

const unique Tagclass.VariationsOnIndexAndDimensionTypes.Long: TyTag;

// Box/unbox axiom for Tclass.VariationsOnIndexAndDimensionTypes.Long
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.VariationsOnIndexAndDimensionTypes.Long()) } 
  $IsBox(bx, Tclass.VariationsOnIndexAndDimensionTypes.Long())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.VariationsOnIndexAndDimensionTypes.Long()));

// $Is axiom for newtype VariationsOnIndexAndDimensionTypes.Long
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.VariationsOnIndexAndDimensionTypes.Long()) } 
  $Is(x#0, Tclass.VariationsOnIndexAndDimensionTypes.Long())
     <==> -9223372036854775808 < x#0 && x#0 < 9223372036854775808);

// $IsAlloc axiom for newtype VariationsOnIndexAndDimensionTypes.Long
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.VariationsOnIndexAndDimensionTypes.Long(), $h) } 
  $IsAlloc(x#0, Tclass.VariationsOnIndexAndDimensionTypes.Long(), $h));

const unique class.VariationsOnIndexAndDimensionTypes.Long: ClassName;

const unique class.TypeSpecialization.__default: ClassName;

procedure {:verboseName "TypeSpecialization.Test (well-formedness)"} CheckWellFormed$$TypeSpecialization.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeSpecialization.Test (call)"} Call$$TypeSpecialization.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.TypeSpecialization.byte() : Ty
uses {
// Tclass.TypeSpecialization.byte Tag
axiom Tag(Tclass.TypeSpecialization.byte()) == Tagclass.TypeSpecialization.byte
   && TagFamily(Tclass.TypeSpecialization.byte()) == tytagFamily$byte;
}

const unique Tagclass.TypeSpecialization.byte: TyTag;

// Box/unbox axiom for Tclass.TypeSpecialization.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeSpecialization.byte()) } 
  $IsBox(bx, Tclass.TypeSpecialization.byte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.TypeSpecialization.byte()));

// $Is axiom for newtype TypeSpecialization.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TypeSpecialization.byte()) } 
  $Is(x#0, Tclass.TypeSpecialization.byte()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype TypeSpecialization.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TypeSpecialization.byte(), $h) } 
  $IsAlloc(x#0, Tclass.TypeSpecialization.byte(), $h));

const unique class.TypeSpecialization.byte: ClassName;

const unique class.GenericArrayEquality.__default: ClassName;

procedure {:verboseName "GenericArrayEquality.Test (well-formedness)"} CheckWellFormed$$GenericArrayEquality.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericArrayEquality.Test (call)"} Call$$GenericArrayEquality.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// type axiom for trait parent: MyClass? extends TraitMeRite?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ArrayToSeq.MyClass?()) } 
  $Is($o, Tclass.ArrayToSeq.MyClass?())
     ==> $Is($o, Tclass.ArrayToSeq.TraitMeRite?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayToSeq.MyClass?()) } 
  $IsBox(bx, Tclass.ArrayToSeq.MyClass?())
     ==> $IsBox(bx, Tclass.ArrayToSeq.TraitMeRite?()));

// allocation axiom for trait parent: MyClass? extends TraitMeRite?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.ArrayToSeq.MyClass?(), $heap) } 
  $IsAlloc($o, Tclass.ArrayToSeq.MyClass?(), $heap)
     ==> $IsAlloc($o, Tclass.ArrayToSeq.TraitMeRite?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.ArrayToSeq.MyClass?(), $h) } 
  $IsAllocBox(bx, Tclass.ArrayToSeq.MyClass?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.ArrayToSeq.TraitMeRite?(), $h));

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

const unique tytagFamily$lowercase: TyTagFamily;

const unique tytagFamily$BV10: TyTagFamily;

const unique tytagFamily$Yes: TyTagFamily;

const unique tytagFamily$nByte: TyTagFamily;

const unique tytagFamily$nShort: TyTagFamily;

const unique tytagFamily$nInt: TyTagFamily;

const unique tytagFamily$nLong: TyTagFamily;

const unique tytagFamily$xchar: TyTagFamily;

const unique tytagFamily$xBV10: TyTagFamily;

const unique tytagFamily$xYes: TyTagFamily;

const unique tytagFamily$xnByte: TyTagFamily;

const unique tytagFamily$xnShort: TyTagFamily;

const unique tytagFamily$xnInt: TyTagFamily;

const unique tytagFamily$xnLong: TyTagFamily;

const unique tytagFamily$short: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$ychar: TyTagFamily;

const unique tytagFamily$zchar: TyTagFamily;

const unique tytagFamily$ubyte: TyTagFamily;

const unique tytagFamily$byte: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$onebyte: TyTagFamily;

const unique tytagFamily$TraitMeRite: TyTagFamily;

const unique tytagFamily$AutoInit: TyTagFamily;

const unique tytagFamily$NonAutoInit: TyTagFamily;

const unique tytagFamily$Long: TyTagFamily;

const unique field$arr: NameFamily;

const unique field$mat: NameFamily;
