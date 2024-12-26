// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy

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

// Box/unbox axiom for bv3
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(3)) } 
  $IsBox(bx, TBitvector(3))
     ==> $Box($Unbox(bx): bv3) == bx && $Is($Unbox(bx): bv3, TBitvector(3)));

axiom (forall v: bv3 :: { $Is(v, TBitvector(3)) } $Is(v, TBitvector(3)));

axiom (forall v: bv3, heap: Heap :: 
  { $IsAlloc(v, TBitvector(3), heap) } 
  $IsAlloc(v, TBitvector(3), heap));

function {:bvbuiltin "bvand"} and_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvor"} or_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvxor"} xor_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvnot"} not_bv3(bv3) : bv3;

function {:bvbuiltin "bvadd"} add_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvsub"} sub_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvmul"} mul_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvudiv"} div_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvurem"} mod_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvult"} lt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvule"} le_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvuge"} ge_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvugt"} gt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvlshr"} RightShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "(_ int2bv 3)"} nat_to_bv3(int) : bv3;

function {:bvbuiltin "bv2int"} smt_nat_from_bv3(bv3) : int;

function nat_from_bv3(bv3) : int;

axiom (forall b: bv3 :: 
  { nat_from_bv3(b) } 
  0 <= nat_from_bv3(b)
     && nat_from_bv3(b) < 8
     && nat_from_bv3(b) == smt_nat_from_bv3(b));

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 0 == $FunctionContextHeight;
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
  free requires 0 == $FunctionContextHeight;
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
  var m#0: Map
     where $Is(m#0, TMap(TInt, TInt)) && $IsAlloc(m#0, TMap(TInt, TInt), $Heap);

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(7,10)
    assume true;
    assume true;
    m#0 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(3))));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(9,4)
    assume true;
    if (Set#IsMember(Map#Domain(m#0), $Box(2)))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(11,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(14,6)
        assume true;
        assert {:id "id1"} Lit(false);
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(16,4)
    assume true;
    if (!Set#IsMember(Map#Domain(m#0), $Box(3)))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(18,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(21,6)
        assume true;
        assert {:id "id2"} Lit(false);
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(23,4)
    assert {:id "id3"} Set#IsMember(Map#Domain(m#0), $Box(LitInt(2)));
    assume true;
    if ($Unbox(Map#Elements(m#0)[$Box(LitInt(2))]): int == LitInt(3))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(25,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(28,6)
        assume true;
        assert {:id "id4"} Lit(false);
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(30,4)
    assume true;
    if (Set#Disjoint(Map#Domain(m#0), 
      Map#Domain(Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(3)))))))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(32,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(35,6)
        assume true;
        assert {:id "id5"} Lit(false);
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(37,4)
    assume true;
    if (Map#Equal(Map#Build(m#0, $Box(LitInt(2)), $Box(LitInt(4))), 
      Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(4)))))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(39,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(42,6)
        assume true;
        assert {:id "id6"} Lit(false);
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(44,4)
    assume true;
    if (Map#Equal(Map#Build(m#0, $Box(LitInt(7)), $Box(LitInt(1))), 
      Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(3))), 
        $Box(LitInt(7)), 
        $Box(LitInt(1)))))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(46,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(49,6)
        assume true;
        assert {:id "id7"} Lit(false);
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(51,4)
    assume true;
    if (Map#Equal(m#0, Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(3)))))
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(53,7)
        assume true;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(56,6)
        assume true;
        assert {:id "id8"} Lit(false);
    }
}



procedure {:verboseName "m (well-formedness)"} CheckWellFormed$$_module.__default.m();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m (call)"} Call$$_module.__default.m();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m (correctness)"} Impl$$_module.__default.m() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m (correctness)"} Impl$$_module.__default.m() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);
  var b#0: Map
     where $Is(b#0, TMap(TInt, TInt)) && $IsAlloc(b#0, TMap(TInt, TInt), $Heap);

    // AddMethodImpl: m, Impl$$_module.__default.m
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(62,10)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(3))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(62,30)
    assume true;
    assume true;
    b#0 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(2))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(63,4)
    assert {:id "id11"} {:subsumption 0} Set#IsMember(Map#Domain(b#0), $Box(LitInt(3)));
    assert {:id "id12"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), Map#Elements(b#0)[$Box(LitInt(3))]);
    assume true;
    assert {:id "id13"} $Unbox(Map#Elements(a#0)[Map#Elements(b#0)[$Box(LitInt(3))]]): int == LitInt(3);
}



procedure {:verboseName "m2 (well-formedness)"} CheckWellFormed$$_module.__default.m2(a#0: Map
       where $Is(a#0, TMap(TInt, TBool)) && $IsAlloc(a#0, TMap(TInt, TBool), $Heap), 
    b#0: Map
       where $Is(b#0, TMap(TInt, TBool)) && $IsAlloc(b#0, TMap(TInt, TBool), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m2 (well-formedness)"} CheckWellFormed$$_module.__default.m2(a#0: Map, b#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;


    // AddMethodImpl: m2, CheckWellFormed$$_module.__default.m2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id14"} LitInt(0) <= i#0 && i#0 < 100;
        assume {:id "id15"} Set#IsMember(Map#Domain(a#0), $Box(i#0));
        assume {:id "id16"} Set#IsMember(Map#Domain(b#0), $Box(i#0));
        assert {:id "id17"} Set#IsMember(Map#Domain(a#0), $Box(i#0));
        assert {:id "id18"} Set#IsMember(Map#Domain(b#0), $Box(i#0));
        assume {:id "id19"} $Unbox(Map#Elements(a#0)[$Box(i#0)]): bool
           != $Unbox(Map#Elements(b#0)[$Box(i#0)]): bool;
    }
    else
    {
        assume {:id "id20"} LitInt(0) <= i#0 && i#0 < 100
           ==> Set#IsMember(Map#Domain(a#0), $Box(i#0))
             && Set#IsMember(Map#Domain(b#0), $Box(i#0))
             && $Unbox(Map#Elements(a#0)[$Box(i#0)]): bool
               != $Unbox(Map#Elements(b#0)[$Box(i#0)]): bool;
    }

    assume {:id "id21"} (forall i#1: int :: 
      { $Unbox(Map#Elements(b#0)[$Box(i#1)]): bool } 
        { $Unbox(Map#Elements(a#0)[$Box(i#1)]): bool } 
        { Set#IsMember(Map#Domain(b#0), $Box(i#1)) } 
        { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
      LitInt(0) <= i#1 && i#1 < 100
         ==> Set#IsMember(Map#Domain(a#0), $Box(i#1))
           && Set#IsMember(Map#Domain(b#0), $Box(i#1))
           && $Unbox(Map#Elements(a#0)[$Box(i#1)]): bool
             != $Unbox(Map#Elements(b#0)[$Box(i#1)]): bool);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "m2 (call)"} Call$$_module.__default.m2(a#0: Map
       where $Is(a#0, TMap(TInt, TBool)) && $IsAlloc(a#0, TMap(TInt, TBool), $Heap), 
    b#0: Map
       where $Is(b#0, TMap(TInt, TBool)) && $IsAlloc(b#0, TMap(TInt, TBool), $Heap));
  // user-defined preconditions
  requires {:id "id22"} (forall i#1: int :: 
    { $Unbox(Map#Elements(b#0)[$Box(i#1)]): bool } 
      { $Unbox(Map#Elements(a#0)[$Box(i#1)]): bool } 
      { Set#IsMember(Map#Domain(b#0), $Box(i#1)) } 
      { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
    LitInt(0) <= i#1 && i#1 < 100
       ==> Set#IsMember(Map#Domain(a#0), $Box(i#1))
         && Set#IsMember(Map#Domain(b#0), $Box(i#1))
         && $Unbox(Map#Elements(a#0)[$Box(i#1)]): bool
           != $Unbox(Map#Elements(b#0)[$Box(i#1)]): bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m2 (correctness)"} Impl$$_module.__default.m2(a#0: Map
       where $Is(a#0, TMap(TInt, TBool)) && $IsAlloc(a#0, TMap(TInt, TBool), $Heap), 
    b#0: Map
       where $Is(b#0, TMap(TInt, TBool)) && $IsAlloc(b#0, TMap(TInt, TBool), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id23"} (forall i#1: int :: 
    { $Unbox(Map#Elements(b#0)[$Box(i#1)]): bool } 
      { $Unbox(Map#Elements(a#0)[$Box(i#1)]): bool } 
      { Set#IsMember(Map#Domain(b#0), $Box(i#1)) } 
      { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
    LitInt(0) <= i#1 && i#1 < 100
       ==> Set#IsMember(Map#Domain(a#0), $Box(i#1))
         && Set#IsMember(Map#Domain(b#0), $Box(i#1))
         && $Unbox(Map#Elements(a#0)[$Box(i#1)]): bool
           != $Unbox(Map#Elements(b#0)[$Box(i#1)]): bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m2 (correctness)"} Impl$$_module.__default.m2(a#0: Map, b#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#2: int;

    // AddMethodImpl: m2, Impl$$_module.__default.m2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(68,4)
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < 100)
        {
            assert {:id "id24"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(i#2));
            if (!$Unbox(Map#Elements(a#0)[$Box(i#2)]): bool)
            {
                assert {:id "id25"} {:subsumption 0} Set#IsMember(Map#Domain(b#0), $Box(i#2));
            }
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id26"} (forall i#3: int :: 
      { $Unbox(Map#Elements(b#0)[$Box(i#3)]): bool } 
        { $Unbox(Map#Elements(a#0)[$Box(i#3)]): bool } 
      LitInt(0) <= i#3 && i#3 < 100
         ==> $Unbox(Map#Elements(a#0)[$Box(i#3)]): bool
           || $Unbox(Map#Elements(b#0)[$Box(i#3)]): bool);
}



procedure {:verboseName "m3 (well-formedness)"} CheckWellFormed$$_module.__default.m3(a#0: Map
       where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m3 (well-formedness)"} CheckWellFormed$$_module.__default.m3(a#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;


    // AddMethodImpl: m3, CheckWellFormed$$_module.__default.m3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id27"} LitInt(0) <= i#0 && i#0 < 100;
        assume {:id "id28"} Set#IsMember(Map#Domain(a#0), $Box(i#0));
        assert {:id "id29"} Set#IsMember(Map#Domain(a#0), $Box(i#0));
        assume {:id "id30"} $Unbox(Map#Elements(a#0)[$Box(i#0)]): int == Mul(i#0, i#0);
    }
    else
    {
        assume {:id "id31"} LitInt(0) <= i#0 && i#0 < 100
           ==> Set#IsMember(Map#Domain(a#0), $Box(i#0))
             && $Unbox(Map#Elements(a#0)[$Box(i#0)]): int == Mul(i#0, i#0);
    }

    assume {:id "id32"} (forall i#1: int :: 
      { $Unbox(Map#Elements(a#0)[$Box(i#1)]): int } 
        { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
      LitInt(0) <= i#1 && i#1 < 100
         ==> Set#IsMember(Map#Domain(a#0), $Box(i#1))
           && $Unbox(Map#Elements(a#0)[$Box(i#1)]): int == Mul(i#1, i#1));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "m3 (call)"} Call$$_module.__default.m3(a#0: Map
       where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap));
  // user-defined preconditions
  requires {:id "id33"} (forall i#1: int :: 
    { $Unbox(Map#Elements(a#0)[$Box(i#1)]): int } 
      { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
    LitInt(0) <= i#1 && i#1 < 100
       ==> Set#IsMember(Map#Domain(a#0), $Box(i#1))
         && $Unbox(Map#Elements(a#0)[$Box(i#1)]): int == Mul(i#1, i#1));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m3 (correctness)"} Impl$$_module.__default.m3(a#0: Map
       where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id34"} (forall i#1: int :: 
    { $Unbox(Map#Elements(a#0)[$Box(i#1)]): int } 
      { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
    LitInt(0) <= i#1 && i#1 < 100
       ==> Set#IsMember(Map#Domain(a#0), $Box(i#1))
         && $Unbox(Map#Elements(a#0)[$Box(i#1)]): int == Mul(i#1, i#1));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m3 (correctness)"} Impl$$_module.__default.m3(a#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: m3, Impl$$_module.__default.m3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(73,4)
    assert {:id "id35"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(LitInt(20)));
    assume true;
    assert {:id "id36"} $Unbox(Map#Elements(a#0)[$Box(LitInt(20))]): int == LitInt(400);
}



procedure {:verboseName "m4 (well-formedness)"} CheckWellFormed$$_module.__default.m4();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m4 (call)"} Call$$_module.__default.m4();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m4 (correctness)"} Impl$$_module.__default.m4() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m4 (correctness)"} Impl$$_module.__default.m4() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);

    // AddMethodImpl: m4, Impl$$_module.__default.m4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(77,10)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(9))));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(78,4)
    assert {:id "id38"} Set#IsMember(Map#Domain(a#0), $Box(LitInt(4)));
    assume true;
    if ($Unbox(Map#Elements(a#0)[$Box(LitInt(4))]): int == LitInt(4))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(80,8)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id39"} Call$$_module.__default.m();
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "m5 (well-formedness)"} CheckWellFormed$$_module.__default.m5(a#0: Map
       where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m5 (call)"} Call$$_module.__default.m5(a#0: Map
       where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap));
  // user-defined preconditions
  requires {:id "id41"} Set#IsMember(Map#Domain(a#0), $Box(20));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m5 (correctness)"} Impl$$_module.__default.m5(a#0: Map
       where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id42"} Set#IsMember(Map#Domain(a#0), $Box(20));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m5 (correctness)"} Impl$$_module.__default.m5(a#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: m5, Impl$$_module.__default.m5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(87,4)
    assert {:id "id43"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(LitInt(20)));
    if (LitInt(0) < $Unbox(Map#Elements(a#0)[$Box(LitInt(20))]): int)
    {
        assert {:id "id44"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(LitInt(20)));
    }

    assume true;
    assert {:id "id45"} $Unbox(Map#Elements(a#0)[$Box(LitInt(20))]): int <= LitInt(0)
       || 0 < $Unbox(Map#Elements(a#0)[$Box(LitInt(20))]): int;
}



procedure {:verboseName "m6 (well-formedness)"} CheckWellFormed$$_module.__default.m6();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m6 (call)"} Call$$_module.__default.m6();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m6 (correctness)"} Impl$$_module.__default.m6() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m6 (correctness)"} Impl$$_module.__default.m6() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);

    // AddMethodImpl: m6, Impl$$_module.__default.m6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(91,10)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(9))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(92,4)
    assume true;
    assert {:id "id47"} Map#Equal(Map#Build(a#0, $Box(LitInt(3)), $Box(LitInt(5))), 
      Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(5))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(93,4)
    assume true;
    assert {:id "id48"} Map#Equal(Map#Build(a#0, $Box(LitInt(2)), $Box(LitInt(5))), 
      Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(5))), 
        $Box(LitInt(3)), 
        $Box(LitInt(9))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(94,4)
    assume true;
    assert {:id "id49"} Map#Equal(Map#Build(a#0, $Box(LitInt(2)), $Box(LitInt(5))), 
      Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(6))), 
          $Box(LitInt(3)), 
          $Box(LitInt(9))), 
        $Box(LitInt(2)), 
        $Box(LitInt(5))));
}



procedure {:verboseName "m7 (well-formedness)"} CheckWellFormed$$_module.__default.m7();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m7 (call)"} Call$$_module.__default.m7();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m7 (correctness)"} Impl$$_module.__default.m7() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m7 (correctness)"} Impl$$_module.__default.m7() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);
  var i#0: int;
  var i#2: int;

    // AddMethodImpl: m7, Impl$$_module.__default.m7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(98,10)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(1)), $Box(LitInt(1))), 
          $Box(LitInt(2)), 
          $Box(LitInt(4))), 
        $Box(LitInt(3)), 
        $Box(LitInt(9))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(99,4)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (Set#IsMember(Map#Domain(a#0), $Box(i#0)))
        {
            assert {:id "id51"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(i#0));
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id52"} (forall i#1: int :: 
      { $Unbox(Map#Elements(a#0)[$Box(i#1)]): int } 
        { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
      Set#IsMember(Map#Domain(a#0), $Box(i#1))
         ==> $Unbox(Map#Elements(a#0)[$Box(i#1)]): int == Mul(i#1, i#1));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(100,4)
    assume true;
    assert {:id "id53"} !Set#IsMember(Map#Domain(a#0), $Box(0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(101,4)
    assume true;
    assert {:id "id54"} Set#IsMember(Map#Domain(a#0), $Box(1));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(102,4)
    assume true;
    assert {:id "id55"} Set#IsMember(Map#Domain(a#0), $Box(2));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(103,4)
    assume true;
    assert {:id "id56"} Set#IsMember(Map#Domain(a#0), $Box(3));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(104,4)
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (1 <= i#2)
        {
        }

        if (i#2 < 1 || i#2 > 3)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id57"} (forall i#3: int :: 
      { Set#IsMember(Map#Domain(a#0), $Box(i#3)) } 
      i#3 < 1 || i#3 > 3 ==> !Set#IsMember(Map#Domain(a#0), $Box(i#3)));
}



procedure {:verboseName "m8 (well-formedness)"} CheckWellFormed$$_module.__default.m8();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m8 (call)"} Call$$_module.__default.m8();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m8 (correctness)"} Impl$$_module.__default.m8() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m8 (correctness)"} Impl$$_module.__default.m8() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);
  var i#0: int;
  var i#2: int;
  var n#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#3: int;
  var k#0: int;
  var $decr$loop#00: int;
  var a##0: Map;

    // AddMethodImpl: m8, Impl$$_module.__default.m8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(108,24)
    assume true;
    assume true;
    a#0 := Lit(Map#Empty(): Map);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(109,4)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id59"} (forall i#1: int :: 
      { Set#IsMember(Map#Domain(a#0), $Box(i#1)) } 
      !Set#IsMember(Map#Domain(a#0), $Box(i#1)));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(110,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(100);
    i#2 := $rhs#0;
    n#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(111,4)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#2;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id65"} $w$loop#0 ==> LitInt(0) <= i#2;
      invariant {:id "id66"} $w$loop#0 ==> i#2 <= n#0;
      free invariant true;
      invariant {:id "id69"} $w$loop#0
         ==> (forall i#4: int :: 
          { $Unbox(Map#Elements(a#0)[$Box(i#4)]): int } 
            { Set#IsMember(Map#Domain(a#0), $Box(i#4)) } 
          Set#IsMember(Map#Domain(a#0), $Box(i#4))
             ==> $Unbox(Map#Elements(a#0)[$Box(i#4)]): int == Mul(i#4, i#4));
      free invariant true;
      invariant {:id "id71"} $w$loop#0
         ==> (forall k#1: int :: 
          { Set#IsMember(Map#Domain(a#0), $Box(k#1)) } 
          LitInt(0) <= k#1 && k#1 < i#2 <==> Set#IsMember(Map#Domain(a#0), $Box(k#1)));
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
      free invariant n#0 - i#2 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#2)
            {
            }

            assume true;
            assume {:id "id64"} LitInt(0) <= i#2 && i#2 <= n#0;
            // Begin Comprehension WF check
            havoc i#3;
            if (true)
            {
                if (Set#IsMember(Map#Domain(a#0), $Box(i#3)))
                {
                    assert {:id "id67"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(i#3));
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id68"} (forall i#4: int :: 
              { $Unbox(Map#Elements(a#0)[$Box(i#4)]): int } 
                { Set#IsMember(Map#Domain(a#0), $Box(i#4)) } 
              Set#IsMember(Map#Domain(a#0), $Box(i#4))
                 ==> $Unbox(Map#Elements(a#0)[$Box(i#4)]): int == Mul(i#4, i#4));
            // Begin Comprehension WF check
            havoc k#0;
            if (true)
            {
                if (LitInt(0) <= k#0)
                {
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id70"} (forall k#1: int :: 
              { Set#IsMember(Map#Domain(a#0), $Box(k#1)) } 
              LitInt(0) <= k#1 && k#1 < i#2 <==> Set#IsMember(Map#Domain(a#0), $Box(k#1)));
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#2)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#2;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(116,9)
        assume true;
        assume true;
        a#0 := Map#Build(a#0, $Box(i#2), $Box(Mul(i#2, i#2)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(117,9)
        assume true;
        assume true;
        i#2 := i#2 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(111,4)
        assert {:id "id74"} 0 <= $decr$loop#00 || n#0 - i#2 == $decr$loop#00;
        assert {:id "id75"} n#0 - i#2 < $decr$loop#00;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(119,4)
    assume true;
    assert {:id "id76"} Set#Disjoint(Map#Domain(a#0), 
      Map#Domain(Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(-1)), $Box(LitInt(2))))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(120,6)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id77"} Call$$_module.__default.m3(a##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "m9 (well-formedness)"} CheckWellFormed$$_module.__default.m9();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m9 (call)"} Call$$_module.__default.m9();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m9 (correctness)"} Impl$$_module.__default.m9() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m9 (correctness)"} Impl$$_module.__default.m9() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);
  var b#0: Map
     where $Is(b#0, TMap(TInt, TInt)) && $IsAlloc(b#0, TMap(TInt, TInt), $Heap);
  var $rhs#0: Map;
  var $rhs#1: Map;

    // AddMethodImpl: m9, Impl$$_module.__default.m9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(124,27)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Lit(Map#Empty(): Map);
    assume true;
    $rhs#1 := Lit(Map#Empty(): Map);
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(125,4)
    assume true;
    assert {:id "id82"} Set#Disjoint(Map#Domain(a#0), Map#Domain(b#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(126,6)
    assume true;
    assume true;
    b#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(3))), 
            $Box(LitInt(4)), 
            $Box(LitInt(2))), 
          $Box(LitInt(5)), 
          $Box(LitInt(-6))), 
        $Box(LitInt(6)), 
        $Box(LitInt(7))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(127,4)
    assume true;
    assert {:id "id84"} Set#Disjoint(Map#Domain(a#0), Map#Domain(b#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(128,4)
    assume true;
    assert {:id "id85"} Set#Disjoint(Map#Domain(b#0), 
      Map#Domain(Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(6)), $Box(LitInt(3))))));
}



procedure {:verboseName "m10 (well-formedness)"} CheckWellFormed$$_module.__default.m10();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m10 (call)"} Call$$_module.__default.m10();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m10 (correctness)"} Impl$$_module.__default.m10() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m10 (correctness)"} Impl$$_module.__default.m10() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);
  var b#0: Map
     where $Is(b#0, TMap(TInt, TInt)) && $IsAlloc(b#0, TMap(TInt, TInt), $Heap);
  var $rhs#0: Map;
  var $rhs#1: Map;

    // AddMethodImpl: m10, Impl$$_module.__default.m10
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(132,13)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Lit(Map#Empty(): Map);
    assume true;
    $rhs#1 := Lit(Map#Empty(): Map);
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(133,4)
    assume true;
    assert {:id "id90"} Set#Disjoint(Map#Domain(a#0), Map#Domain(b#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(134,6)
    assume true;
    assume true;
    b#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(3))), 
            $Box(LitInt(4)), 
            $Box(LitInt(2))), 
          $Box(LitInt(5)), 
          $Box(LitInt(-6))), 
        $Box(LitInt(6)), 
        $Box(LitInt(7))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(135,4)
    assume true;
    assert {:id "id92"} Set#Disjoint(Map#Domain(a#0), Map#Domain(b#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(136,6)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(3))), 
            $Box(LitInt(1)), 
            $Box(LitInt(2))), 
          $Box(LitInt(9)), 
          $Box(LitInt(-6))), 
        $Box(LitInt(8)), 
        $Box(LitInt(7))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(137,4)
    assume true;
    assert {:id "id94"} Set#Disjoint(Map#Domain(a#0), Map#Domain(b#0));
}



procedure {:verboseName "m11 (well-formedness)"} CheckWellFormed$$_module.__default.m11(_module._default.m11$U: Ty, 
    _module._default.m11$V: Ty, 
    a#0: Map
       where $Is(a#0, TMap(_module._default.m11$U, _module._default.m11$V))
         && $IsAlloc(a#0, TMap(_module._default.m11$U, _module._default.m11$V), $Heap), 
    b#0: Map
       where $Is(b#0, TMap(_module._default.m11$U, _module._default.m11$V))
         && $IsAlloc(b#0, TMap(_module._default.m11$U, _module._default.m11$V), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m11 (call)"} Call$$_module.__default.m11(_module._default.m11$U: Ty, 
    _module._default.m11$V: Ty, 
    a#0: Map
       where $Is(a#0, TMap(_module._default.m11$U, _module._default.m11$V))
         && $IsAlloc(a#0, TMap(_module._default.m11$U, _module._default.m11$V), $Heap), 
    b#0: Map
       where $Is(b#0, TMap(_module._default.m11$U, _module._default.m11$V))
         && $IsAlloc(b#0, TMap(_module._default.m11$U, _module._default.m11$V), $Heap));
  // user-defined preconditions
  requires {:id "id97"} (forall i#1: Box :: 
    { Set#IsMember(Map#Domain(b#0), i#1) } { Set#IsMember(Map#Domain(a#0), i#1) } 
    $IsBox(i#1, _module._default.m11$U)
       ==> !(Set#IsMember(Map#Domain(a#0), i#1) && Set#IsMember(Map#Domain(b#0), i#1)));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m11 (correctness)"} Impl$$_module.__default.m11(_module._default.m11$U: Ty, 
    _module._default.m11$V: Ty, 
    a#0: Map
       where $Is(a#0, TMap(_module._default.m11$U, _module._default.m11$V))
         && $IsAlloc(a#0, TMap(_module._default.m11$U, _module._default.m11$V), $Heap), 
    b#0: Map
       where $Is(b#0, TMap(_module._default.m11$U, _module._default.m11$V))
         && $IsAlloc(b#0, TMap(_module._default.m11$U, _module._default.m11$V), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id98"} (forall i#1: Box :: 
    { Set#IsMember(Map#Domain(b#0), i#1) } { Set#IsMember(Map#Domain(a#0), i#1) } 
    $IsBox(i#1, _module._default.m11$U)
       ==> !(Set#IsMember(Map#Domain(a#0), i#1) && Set#IsMember(Map#Domain(b#0), i#1)));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m11 (correctness)"} Impl$$_module.__default.m11(_module._default.m11$U: Ty, _module._default.m11$V: Ty, a#0: Map, b#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: m11, Impl$$_module.__default.m11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(142,4)
    assume true;
    assert {:id "id99"} Set#Disjoint(Map#Domain(a#0), Map#Domain(b#0));
}



procedure {:verboseName "m12 (well-formedness)"} CheckWellFormed$$_module.__default.m12();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m12 (call)"} Call$$_module.__default.m12();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m12 (correctness)"} Impl$$_module.__default.m12() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m12 (correctness)"} Impl$$_module.__default.m12() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: Map
     where $Is(x#0, TMap(TInt, TInt)) && $IsAlloc(x#0, TMap(TInt, TInt), $Heap);
  var i#0: int;

    // AddMethodImpl: m12, Impl$$_module.__default.m12
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(147,10)
    assume true;
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < 10)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    x#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt) && LitInt(0) <= $Unbox($w#0): int && $Unbox($w#0): int < 10)), 
      (lambda $w#0: Box :: $Box(Mul($Unbox($w#0): int, LitInt(2)))), 
      TMap(TInt, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(148,4)
    assume true;
    assert {:id "id101"} Set#IsMember(Map#Domain(x#0), $Box(0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(149,4)
    assume true;
    assert {:id "id102"} Set#IsMember(Map#Domain(x#0), $Box(1));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(150,4)
    assume true;
    assert {:id "id103"} !Set#IsMember(Map#Domain(x#0), $Box(10));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(151,4)
    assert {:id "id104"} {:subsumption 0} Set#IsMember(Map#Domain(x#0), $Box(LitInt(0)));
    if ($Unbox(Map#Elements(x#0)[$Box(LitInt(0))]): int == LitInt(0))
    {
        assert {:id "id105"} {:subsumption 0} Set#IsMember(Map#Domain(x#0), $Box(LitInt(2)));
    }

    assume true;
    assert {:id "id106"} {:subsumption 0} $Unbox(Map#Elements(x#0)[$Box(LitInt(0))]): int == LitInt(0);
    assert {:id "id107"} {:subsumption 0} $Unbox(Map#Elements(x#0)[$Box(LitInt(2))]): int == LitInt(4);
    assume {:id "id108"} $Unbox(Map#Elements(x#0)[$Box(LitInt(0))]): int == LitInt(0)
       && $Unbox(Map#Elements(x#0)[$Box(LitInt(2))]): int == LitInt(4);
}



// function declaration for _module._default.domain
function _module.__default.domain(_module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map) : Set
uses {
// consequence axiom for _module.__default.domain
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map :: 
    { _module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0) } 
    _module.__default.domain#canCall(_module._default.domain$U, _module._default.domain$V, m#0)
         || (0 < $FunctionContextHeight
           && $Is(m#0, TMap(_module._default.domain$U, _module._default.domain$V)))
       ==> (forall i#0: Box :: 
          { Set#IsMember(Map#Domain(m#0), i#0) } 
            { Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#0) } 
          $IsBox(i#0, _module._default.domain$U)
             ==> 
            Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#0)
             ==> Set#IsMember(Map#Domain(m#0), i#0))
         && (forall i#1: Box :: 
          { Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#1) } 
            { Set#IsMember(Map#Domain(m#0), i#1) } 
          $IsBox(i#1, _module._default.domain$U)
             ==> 
            Set#IsMember(Map#Domain(m#0), i#1)
             ==> Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#1))
         && $Is(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
          TSet(_module._default.domain$U)));
// alloc consequence axiom for _module.__default.domain
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.domain$U: Ty, 
      _module._default.domain$V: Ty, 
      m#0: Map :: 
    { $IsAlloc(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
        TSet(_module._default.domain$U), 
        $Heap) } 
    (_module.__default.domain#canCall(_module._default.domain$U, _module._default.domain$V, m#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(m#0, TMap(_module._default.domain$U, _module._default.domain$V))
             && $IsAlloc(m#0, TMap(_module._default.domain$U, _module._default.domain$V), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
        TSet(_module._default.domain$U), 
        $Heap));
// definition axiom for _module.__default.domain (revealed)
axiom {:id "id109"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map :: 
    { _module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0) } 
    _module.__default.domain#canCall(_module._default.domain$U, _module._default.domain$V, m#0)
         || (0 < $FunctionContextHeight
           && $Is(m#0, TMap(_module._default.domain$U, _module._default.domain$V)))
       ==> _module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0)
         == Set#FromBoogieMap((lambda $y#0: Box :: 
            $IsBox($y#0, _module._default.domain$U) && Set#IsMember(Map#Domain(m#0), $y#0))));
// definition axiom for _module.__default.domain for all literals (revealed)
axiom {:id "id110"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map :: 
    {:weight 3} { _module.__default.domain(_module._default.domain$U, _module._default.domain$V, Lit(m#0)) } 
    _module.__default.domain#canCall(_module._default.domain$U, _module._default.domain$V, Lit(m#0))
         || (0 < $FunctionContextHeight
           && $Is(m#0, TMap(_module._default.domain$U, _module._default.domain$V)))
       ==> _module.__default.domain(_module._default.domain$U, _module._default.domain$V, Lit(m#0))
         == Set#FromBoogieMap((lambda $y#1: Box :: 
            $IsBox($y#1, _module._default.domain$U) && Set#IsMember(Map#Domain(m#0), $y#1))));
}

function _module.__default.domain#canCall(_module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map) : bool;

function _module.__default.domain#requires(Ty, Ty, Map) : bool;

// #requires axiom for _module.__default.domain
axiom (forall _module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map :: 
  { _module.__default.domain#requires(_module._default.domain$U, _module._default.domain$V, m#0) } 
  $Is(m#0, TMap(_module._default.domain$U, _module._default.domain$V))
     ==> _module.__default.domain#requires(_module._default.domain$U, _module._default.domain$V, m#0)
       == true);

procedure {:verboseName "domain (well-formedness)"} CheckWellformed$$_module.__default.domain(_module._default.domain$U: Ty, 
    _module._default.domain$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.domain$U, _module._default.domain$V)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id111"} (forall i#2: Box :: 
    { Set#IsMember(Map#Domain(m#0), i#2) } 
      { Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
        i#2) } 
    $IsBox(i#2, _module._default.domain$U)
       ==> 
      Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
        i#2)
       ==> Set#IsMember(Map#Domain(m#0), i#2));
  ensures {:id "id112"} (forall i#3: Box :: 
    { Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
        i#3) } 
      { Set#IsMember(Map#Domain(m#0), i#3) } 
    $IsBox(i#3, _module._default.domain$U)
       ==> 
      Set#IsMember(Map#Domain(m#0), i#3)
       ==> Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
        i#3));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "domain (well-formedness)"} CheckWellformed$$_module.__default.domain(_module._default.domain$U: Ty, _module._default.domain$V: Ty, m#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#4: Box;
  var ##m#0: Map;
  var i#5: Box;
  var ##m#1: Map;
  var s#2: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
          TSet(_module._default.domain$U));
        havoc i#4;
        assume $IsBox(i#4, _module._default.domain$U)
           && $IsAllocBox(i#4, _module._default.domain$U, $Heap);
        if (*)
        {
            ##m#0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, TMap(_module._default.domain$U, _module._default.domain$V), $Heap);
            assert {:id "id113"} Map#Equal(m#0, m#0)
               || (Set#Subset(Map#Domain(##m#0), Map#Domain(m#0))
                 && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#0)));
            assume Map#Equal(m#0, m#0)
               || _module.__default.domain#canCall(_module._default.domain$U, _module._default.domain$V, m#0);
            assume {:id "id114"} Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#4);
            assume {:id "id115"} Set#IsMember(Map#Domain(m#0), i#4);
        }
        else
        {
            assume {:id "id116"} Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
                i#4)
               ==> Set#IsMember(Map#Domain(m#0), i#4);
        }

        assume {:id "id117"} (forall i#2: Box :: 
          { Set#IsMember(Map#Domain(m#0), i#2) } 
            { Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#2) } 
          $IsBox(i#2, _module._default.domain$U)
             ==> 
            Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#2)
             ==> Set#IsMember(Map#Domain(m#0), i#2));
        havoc i#5;
        assume $IsBox(i#5, _module._default.domain$U)
           && $IsAllocBox(i#5, _module._default.domain$U, $Heap);
        if (*)
        {
            assume {:id "id118"} Set#IsMember(Map#Domain(m#0), i#5);
            ##m#1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1, TMap(_module._default.domain$U, _module._default.domain$V), $Heap);
            assert {:id "id119"} Map#Equal(m#0, m#0)
               || (Set#Subset(Map#Domain(##m#1), Map#Domain(m#0))
                 && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#1)));
            assume Map#Equal(m#0, m#0)
               || _module.__default.domain#canCall(_module._default.domain$U, _module._default.domain$V, m#0);
            assume {:id "id120"} Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#5);
        }
        else
        {
            assume {:id "id121"} Set#IsMember(Map#Domain(m#0), i#5)
               ==> Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
                i#5);
        }

        assume {:id "id122"} (forall i#3: Box :: 
          { Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#3) } 
            { Set#IsMember(Map#Domain(m#0), i#3) } 
          $IsBox(i#3, _module._default.domain$U)
             ==> 
            Set#IsMember(Map#Domain(m#0), i#3)
             ==> Set#IsMember(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
              i#3));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc s#2;
        if ($IsBox(s#2, _module._default.domain$U)
           && $IsAllocBox(s#2, _module._default.domain$U, $Heap))
        {
            if (Set#IsMember(Map#Domain(m#0), s#2))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id123"} _module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0)
           == Set#FromBoogieMap((lambda $y#3: Box :: 
              $IsBox($y#3, _module._default.domain$U) && Set#IsMember(Map#Domain(m#0), $y#3)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.domain(_module._default.domain$U, _module._default.domain$V, m#0), 
          TSet(_module._default.domain$U));
        return;

        assume false;
    }
}



procedure {:verboseName "m13 (well-formedness)"} CheckWellFormed$$_module.__default.m13();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m13 (call)"} Call$$_module.__default.m13();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m13 (correctness)"} Impl$$_module.__default.m13() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m13 (correctness)"} Impl$$_module.__default.m13() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var x#0: Map
     where $Is(x#0, TMap(TInt, TInt)) && $IsAlloc(x#0, TMap(TInt, TInt), $Heap);
  var i#0: int;
  var i#2: int;
  var ##m#0: Map;

    // AddMethodImpl: m13, Impl$$_module.__default.m13
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(163,10)
    assume true;
    assume true;
    s#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), $Box(LitInt(1))), 
          $Box(LitInt(3))), 
        $Box(LitInt(4))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(164,10)
    assume true;
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (Set#IsMember(s#0, $Box(i#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    x#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: $IsBox($w#0, TInt) && Set#IsMember(s#0, $w#0))), 
      (lambda $w#0: Box :: $w#0), 
      TMap(TInt, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(165,4)
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (Set#IsMember(Map#Domain(x#0), $Box(i#2)))
        {
            assert {:id "id126"} {:subsumption 0} Set#IsMember(Map#Domain(x#0), $Box(i#2));
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id127"} (forall i#3: int :: 
      { $Unbox(Map#Elements(x#0)[$Box(i#3)]): int } 
        { Set#IsMember(Map#Domain(x#0), $Box(i#3)) } 
      Set#IsMember(Map#Domain(x#0), $Box(i#3))
         ==> $Unbox(Map#Elements(x#0)[$Box(i#3)]): int == i#3);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(166,4)
    ##m#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, TMap(TInt, TInt), $Heap);
    assume _module.__default.domain#canCall(TInt, TInt, x#0);
    assume _module.__default.domain#canCall(TInt, TInt, x#0);
    assert {:id "id128"} Set#Equal(_module.__default.domain(TInt, TInt, x#0), s#0);
}



// function declaration for _module._default.union
function _module.__default.union(_module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map)
   : Map
uses {
// consequence axiom for _module.__default.union
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map :: 
    { _module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0) } 
    _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.union$U, _module._default.union$V))
           && $Is(m'#0, TMap(_module._default.union$U, _module._default.union$V))
           && Set#Disjoint(Map#Domain(m#0), Map#Domain(m'#0)))
       ==> (forall i#0: Box :: 
          { Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#0) } 
            { Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#0) } 
          $IsBox(i#0, _module._default.union$U)
             ==> 
            Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#0)
             ==> Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#0))
         && (forall i#1: Box :: 
          { Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#1) } 
            { Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#1) } 
          $IsBox(i#1, _module._default.union$U)
             ==> 
            Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#1)
             ==> Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#1))
         && (forall i#2: Box :: 
          { Map#Elements(m#0)[i#2] } 
            { Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#2] } 
            { Set#IsMember(Map#Domain(m#0), i#2) } 
          $IsBox(i#2, _module._default.union$U)
             ==> 
            Set#IsMember(Map#Domain(m#0), i#2)
             ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#2]
               == Map#Elements(m#0)[i#2])
         && (forall i#3: Box :: 
          { Map#Elements(m'#0)[i#3] } 
            { Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#3] } 
            { Set#IsMember(Map#Domain(m'#0), i#3) } 
          $IsBox(i#3, _module._default.union$U)
             ==> 
            Set#IsMember(Map#Domain(m'#0), i#3)
             ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#3]
               == Map#Elements(m'#0)[i#3])
         && $Is(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0), 
          TMap(_module._default.union$U, _module._default.union$V)));
// alloc consequence axiom for _module.__default.union
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.union$U: Ty, 
      _module._default.union$V: Ty, 
      m#0: Map, 
      m'#0: Map :: 
    { $IsAlloc(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0), 
        TMap(_module._default.union$U, _module._default.union$V), 
        $Heap) } 
    (_module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(m#0, TMap(_module._default.union$U, _module._default.union$V))
             && $IsAlloc(m#0, TMap(_module._default.union$U, _module._default.union$V), $Heap)
             && 
            $Is(m'#0, TMap(_module._default.union$U, _module._default.union$V))
             && $IsAlloc(m'#0, TMap(_module._default.union$U, _module._default.union$V), $Heap)
             && Set#Disjoint(Map#Domain(m#0), Map#Domain(m'#0))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0), 
        TMap(_module._default.union$U, _module._default.union$V), 
        $Heap));
// definition axiom for _module.__default.union (revealed)
axiom {:id "id129"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map :: 
    { _module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0) } 
    _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.union$U, _module._default.union$V))
           && $Is(m'#0, TMap(_module._default.union$U, _module._default.union$V))
           && Set#Disjoint(Map#Domain(m#0), Map#Domain(m'#0)))
       ==> _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, m#0)
         && _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, m'#0)
         && _module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                $IsBox($w#0, _module._default.union$U)
                   && Set#IsMember(Set#Union(_module.__default.domain(_module._default.union$U, _module._default.union$V, m#0), 
                      _module.__default.domain(_module._default.union$U, _module._default.union$V, m'#0)), 
                    $w#0))), 
            (lambda $w#0: Box :: 
              (if Set#IsMember(Map#Domain(m#0), $w#0)
                 then Map#Elements(m#0)[$w#0]
                 else Map#Elements(m'#0)[$w#0])), 
            TMap(_module._default.union$U, _module._default.union$V)));
// definition axiom for _module.__default.union for all literals (revealed)
axiom {:id "id130"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map :: 
    {:weight 3} { _module.__default.union(_module._default.union$U, _module._default.union$V, Lit(m#0), Lit(m'#0)) } 
    _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, Lit(m#0), Lit(m'#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.union$U, _module._default.union$V))
           && $Is(m'#0, TMap(_module._default.union$U, _module._default.union$V))
           && Set#Disjoint(Map#Domain(Lit(m#0)), Map#Domain(Lit(m'#0))))
       ==> _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, Lit(m#0))
         && _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, Lit(m'#0))
         && _module.__default.union(_module._default.union$U, _module._default.union$V, Lit(m#0), Lit(m'#0))
           == Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
                $IsBox($w#1, _module._default.union$U)
                   && Set#IsMember(Set#Union(_module.__default.domain(_module._default.union$U, _module._default.union$V, Lit(m#0)), 
                      _module.__default.domain(_module._default.union$U, _module._default.union$V, Lit(m'#0))), 
                    $w#1))), 
            (lambda $w#1: Box :: 
              (if Set#IsMember(Map#Domain(m#0), $w#1)
                 then Map#Elements(Lit(m#0))[$w#1]
                 else Map#Elements(Lit(m'#0))[$w#1])), 
            TMap(_module._default.union$U, _module._default.union$V)));
}

function _module.__default.union#canCall(_module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map)
   : bool;

function _module.__default.union#requires(Ty, Ty, Map, Map) : bool;

// #requires axiom for _module.__default.union
axiom (forall _module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map :: 
  { _module.__default.union#requires(_module._default.union$U, _module._default.union$V, m#0, m'#0) } 
  $Is(m#0, TMap(_module._default.union$U, _module._default.union$V))
       && $Is(m'#0, TMap(_module._default.union$U, _module._default.union$V))
     ==> _module.__default.union#requires(_module._default.union$U, _module._default.union$V, m#0, m'#0)
       == Set#Disjoint(Map#Domain(m#0), Map#Domain(m'#0)));

procedure {:verboseName "union (well-formedness)"} CheckWellformed$$_module.__default.union(_module._default.union$U: Ty, 
    _module._default.union$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.union$U, _module._default.union$V)), 
    m'#0: Map
       where $Is(m'#0, TMap(_module._default.union$U, _module._default.union$V)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id131"} (forall i#5: Box :: 
    { Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#5) } 
      { Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
        i#5) } 
    $IsBox(i#5, _module._default.union$U)
       ==> 
      Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
        i#5)
       ==> Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#5));
  ensures {:id "id132"} (forall i#6: Box :: 
    { Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
        i#6) } 
      { Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#6) } 
    $IsBox(i#6, _module._default.union$U)
       ==> 
      Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#6)
       ==> Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
        i#6));
  ensures {:id "id133"} (forall i#7: Box :: 
    { Map#Elements(m#0)[i#7] } 
      { Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#7] } 
      { Set#IsMember(Map#Domain(m#0), i#7) } 
    $IsBox(i#7, _module._default.union$U)
       ==> 
      Set#IsMember(Map#Domain(m#0), i#7)
       ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#7]
         == Map#Elements(m#0)[i#7]);
  ensures {:id "id134"} (forall i#8: Box :: 
    { Map#Elements(m'#0)[i#8] } 
      { Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#8] } 
      { Set#IsMember(Map#Domain(m'#0), i#8) } 
    $IsBox(i#8, _module._default.union$U)
       ==> 
      Set#IsMember(Map#Domain(m'#0), i#8)
       ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#8]
         == Map#Elements(m'#0)[i#8]);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "union (well-formedness)"} CheckWellformed$$_module.__default.union(_module._default.union$U: Ty, _module._default.union$V: Ty, m#0: Map, m'#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#9: Box;
  var ##m#0: Map;
  var ##m'#0: Map;
  var i#10: Box;
  var ##m#1: Map;
  var ##m'#1: Map;
  var i#11: Box;
  var ##m#2: Map;
  var ##m'#2: Map;
  var i#12: Box;
  var ##m#3: Map;
  var ##m'#3: Map;
  var i#13: Box;
  var ##m#4: Map;
  var ##m#5: Map;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id135"} Set#Disjoint(Map#Domain(m#0), Map#Domain(m'#0));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0), 
          TMap(_module._default.union$U, _module._default.union$V));
        havoc i#9;
        assume $IsBox(i#9, _module._default.union$U)
           && $IsAllocBox(i#9, _module._default.union$U, $Heap);
        if (*)
        {
            ##m#0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            ##m'#0 := m'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m'#0, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            assert {:id "id136"} {:subsumption 0} Set#Disjoint(Map#Domain(##m#0), Map#Domain(##m'#0));
            assume Set#Disjoint(Map#Domain(##m#0), Map#Domain(##m'#0));
            assert {:id "id137"} (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || 
              (Set#Subset(Map#Domain(##m#0), Map#Domain(m#0))
                 && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#0)))
               || (Set#Equal(Map#Domain(##m#0), Map#Domain(m#0))
                 && 
                Set#Subset(Map#Domain(##m'#0), Map#Domain(m'#0))
                 && !Set#Subset(Map#Domain(m'#0), Map#Domain(##m'#0)));
            assume (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0);
            assume {:id "id138"} Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#9);
            assume {:id "id139"} Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#9);
        }
        else
        {
            assume {:id "id140"} Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
                i#9)
               ==> Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#9);
        }

        assume {:id "id141"} (forall i#5: Box :: 
          { Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#5) } 
            { Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#5) } 
          $IsBox(i#5, _module._default.union$U)
             ==> 
            Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#5)
             ==> Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#5));
        havoc i#10;
        assume $IsBox(i#10, _module._default.union$U)
           && $IsAllocBox(i#10, _module._default.union$U, $Heap);
        if (*)
        {
            assume {:id "id142"} Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#10);
            ##m#1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            ##m'#1 := m'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m'#1, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            assert {:id "id143"} {:subsumption 0} Set#Disjoint(Map#Domain(##m#1), Map#Domain(##m'#1));
            assume Set#Disjoint(Map#Domain(##m#1), Map#Domain(##m'#1));
            assert {:id "id144"} (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || 
              (Set#Subset(Map#Domain(##m#1), Map#Domain(m#0))
                 && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#1)))
               || (Set#Equal(Map#Domain(##m#1), Map#Domain(m#0))
                 && 
                Set#Subset(Map#Domain(##m'#1), Map#Domain(m'#0))
                 && !Set#Subset(Map#Domain(m'#0), Map#Domain(##m'#1)));
            assume (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0);
            assume {:id "id145"} Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#10);
        }
        else
        {
            assume {:id "id146"} Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#10)
               ==> Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
                i#10);
        }

        assume {:id "id147"} (forall i#6: Box :: 
          { Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#6) } 
            { Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#6) } 
          $IsBox(i#6, _module._default.union$U)
             ==> 
            Set#IsMember(Set#Union(Map#Domain(m#0), Map#Domain(m'#0)), i#6)
             ==> Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#6));
        havoc i#11;
        assume $IsBox(i#11, _module._default.union$U)
           && $IsAllocBox(i#11, _module._default.union$U, $Heap);
        if (*)
        {
            assume {:id "id148"} Set#IsMember(Map#Domain(m#0), i#11);
            ##m#2 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#2, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            ##m'#2 := m'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m'#2, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            assert {:id "id149"} {:subsumption 0} Set#Disjoint(Map#Domain(##m#2), Map#Domain(##m'#2));
            assume Set#Disjoint(Map#Domain(##m#2), Map#Domain(##m'#2));
            assert {:id "id150"} (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || 
              (Set#Subset(Map#Domain(##m#2), Map#Domain(m#0))
                 && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#2)))
               || (Set#Equal(Map#Domain(##m#2), Map#Domain(m#0))
                 && 
                Set#Subset(Map#Domain(##m'#2), Map#Domain(m'#0))
                 && !Set#Subset(Map#Domain(m'#0), Map#Domain(##m'#2)));
            assume (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0);
            assert {:id "id151"} Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#11);
            assert {:id "id152"} Set#IsMember(Map#Domain(m#0), i#11);
            assume {:id "id153"} Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#11]
               == Map#Elements(m#0)[i#11];
        }
        else
        {
            assume {:id "id154"} Set#IsMember(Map#Domain(m#0), i#11)
               ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#11]
                 == Map#Elements(m#0)[i#11];
        }

        assume {:id "id155"} (forall i#7: Box :: 
          { Map#Elements(m#0)[i#7] } 
            { Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#7] } 
            { Set#IsMember(Map#Domain(m#0), i#7) } 
          $IsBox(i#7, _module._default.union$U)
             ==> 
            Set#IsMember(Map#Domain(m#0), i#7)
             ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#7]
               == Map#Elements(m#0)[i#7]);
        havoc i#12;
        assume $IsBox(i#12, _module._default.union$U)
           && $IsAllocBox(i#12, _module._default.union$U, $Heap);
        if (*)
        {
            assume {:id "id156"} Set#IsMember(Map#Domain(m'#0), i#12);
            ##m#3 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#3, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            ##m'#3 := m'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m'#3, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            assert {:id "id157"} {:subsumption 0} Set#Disjoint(Map#Domain(##m#3), Map#Domain(##m'#3));
            assume Set#Disjoint(Map#Domain(##m#3), Map#Domain(##m'#3));
            assert {:id "id158"} (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || 
              (Set#Subset(Map#Domain(##m#3), Map#Domain(m#0))
                 && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#3)))
               || (Set#Equal(Map#Domain(##m#3), Map#Domain(m#0))
                 && 
                Set#Subset(Map#Domain(##m'#3), Map#Domain(m'#0))
                 && !Set#Subset(Map#Domain(m'#0), Map#Domain(##m'#3)));
            assume (Map#Equal(m#0, m#0) && Map#Equal(m'#0, m'#0))
               || _module.__default.union#canCall(_module._default.union$U, _module._default.union$V, m#0, m'#0);
            assert {:id "id159"} Set#IsMember(Map#Domain(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)), 
              i#12);
            assert {:id "id160"} Set#IsMember(Map#Domain(m'#0), i#12);
            assume {:id "id161"} Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#12]
               == Map#Elements(m'#0)[i#12];
        }
        else
        {
            assume {:id "id162"} Set#IsMember(Map#Domain(m'#0), i#12)
               ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#12]
                 == Map#Elements(m'#0)[i#12];
        }

        assume {:id "id163"} (forall i#8: Box :: 
          { Map#Elements(m'#0)[i#8] } 
            { Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#8] } 
            { Set#IsMember(Map#Domain(m'#0), i#8) } 
          $IsBox(i#8, _module._default.union$U)
             ==> 
            Set#IsMember(Map#Domain(m'#0), i#8)
             ==> Map#Elements(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0))[i#8]
               == Map#Elements(m'#0)[i#8]);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#13;
        if ($IsBox(i#13, _module._default.union$U)
           && $IsAllocBox(i#13, _module._default.union$U, $Heap))
        {
            ##m#4 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#4, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            assume _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, m#0);
            ##m#5 := m'#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#5, TMap(_module._default.union$U, _module._default.union$V), $Heap);
            assume _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, m'#0);
            if (Set#IsMember(Set#Union(_module.__default.domain(_module._default.union$U, _module._default.union$V, m#0), 
                _module.__default.domain(_module._default.union$U, _module._default.union$V, m'#0)), 
              i#13))
            {
                if (Set#IsMember(Map#Domain(m#0), i#13))
                {
                    assert {:id "id164"} Set#IsMember(Map#Domain(m#0), i#13);
                }
                else
                {
                    assert {:id "id165"} Set#IsMember(Map#Domain(m'#0), i#13);
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id166"} _module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#3: Box :: 
                $IsBox($w#3, _module._default.union$U)
                   && Set#IsMember(Set#Union(_module.__default.domain(_module._default.union$U, _module._default.union$V, m#0), 
                      _module.__default.domain(_module._default.union$U, _module._default.union$V, m'#0)), 
                    $w#3))), 
            (lambda $w#3: Box :: 
              (if Set#IsMember(Map#Domain(m#0), $w#3)
                 then Map#Elements(m#0)[$w#3]
                 else Map#Elements(m'#0)[$w#3])), 
            TMap(_module._default.union$U, _module._default.union$V));
        assume _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, m#0)
           && _module.__default.domain#canCall(_module._default.union$U, _module._default.union$V, m'#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.union(_module._default.union$U, _module._default.union$V, m#0, m'#0), 
          TMap(_module._default.union$U, _module._default.union$V));
        return;

        assume false;
    }
}



procedure {:verboseName "m14 (well-formedness)"} CheckWellFormed$$_module.__default.m14();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m14 (call)"} Call$$_module.__default.m14();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m14 (correctness)"} Impl$$_module.__default.m14() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m14 (correctness)"} Impl$$_module.__default.m14() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var t#0: Set where $Is(t#0, TSet(TInt)) && $IsAlloc(t#0, TSet(TInt), $Heap);
  var $rhs#0: Set;
  var $rhs#1: Set;
  var x#0: Map
     where $Is(x#0, TMap(TInt, TInt)) && $IsAlloc(x#0, TMap(TInt, TInt), $Heap);
  var y#0: Map
     where $Is(y#0, TMap(TInt, TInt)) && $IsAlloc(y#0, TMap(TInt, TInt), $Heap);
  var $rhs#2: Map;
  var i#0: int;
  var $rhs#3: Map;
  var i#2: int;
  var u#0: Map
     where $Is(u#0, TMap(TInt, TInt)) && $IsAlloc(u#0, TMap(TInt, TInt), $Heap);
  var ##m#0: Map;
  var ##m'#0: Map;
  var ##m#1: Map;

    // AddMethodImpl: m14, Impl$$_module.__default.m14
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(182,13)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), $Box(LitInt(1))));
    assume true;
    $rhs#1 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(3))), $Box(LitInt(4))));
    s#0 := $rhs#0;
    t#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(183,12)
    assume true;
    assume true;
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (Set#IsMember(s#0, $Box(i#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    $rhs#2 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: $IsBox($w#0, TInt) && Set#IsMember(s#0, $w#0))), 
      (lambda $w#0: Box :: $w#0), 
      TMap(TInt, TInt));
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (Set#IsMember(t#0, $Box(i#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    $rhs#3 := Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: $IsBox($w#1, TInt) && Set#IsMember(t#0, $w#1))), 
      (lambda $w#1: Box :: $Box(1 + $Unbox($w#1): int)), 
      TMap(TInt, TInt));
    x#0 := $rhs#2;
    y#0 := $rhs#3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(184,16)
    assume true;
    ##m#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, TMap(TInt, TInt), $Heap);
    ##m'#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m'#0, TMap(TInt, TInt), $Heap);
    assert {:id "id175"} {:subsumption 0} Set#Disjoint(Map#Domain(##m#0), Map#Domain(##m'#0));
    assume Set#Disjoint(Map#Domain(##m#0), Map#Domain(##m'#0));
    assume _module.__default.union#canCall(TInt, TInt, x#0, y#0);
    assume _module.__default.union#canCall(TInt, TInt, x#0, y#0);
    u#0 := _module.__default.union(TInt, TInt, x#0, y#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(185,4)
    assert {:id "id177"} {:subsumption 0} Set#IsMember(Map#Domain(u#0), $Box(LitInt(1)));
    if ($Unbox(Map#Elements(u#0)[$Box(LitInt(1))]): int == LitInt(1))
    {
        assert {:id "id178"} {:subsumption 0} Set#IsMember(Map#Domain(u#0), $Box(LitInt(3)));
    }

    assume true;
    assert {:id "id179"} {:subsumption 0} $Unbox(Map#Elements(u#0)[$Box(LitInt(1))]): int == LitInt(1);
    assert {:id "id180"} {:subsumption 0} $Unbox(Map#Elements(u#0)[$Box(LitInt(3))]): int == LitInt(4);
    assume {:id "id181"} $Unbox(Map#Elements(u#0)[$Box(LitInt(1))]): int == LitInt(1)
       && $Unbox(Map#Elements(u#0)[$Box(LitInt(3))]): int == LitInt(4);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(186,4)
    ##m#1 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, TMap(TInt, TInt), $Heap);
    assume _module.__default.domain#canCall(TInt, TInt, u#0);
    assume _module.__default.domain#canCall(TInt, TInt, u#0);
    assert {:id "id182"} Set#Equal(_module.__default.domain(TInt, TInt, u#0), 
      Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), $Box(LitInt(1))), 
          $Box(LitInt(3))), 
        $Box(LitInt(4))));
}



function Tclass._module.A() : Ty
uses {
// Tclass._module.A Tag
axiom Tag(Tclass._module.A()) == Tagclass._module.A
   && TagFamily(Tclass._module.A()) == tytagFamily$A;
}

const unique Tagclass._module.A: TyTag;

// Box/unbox axiom for Tclass._module.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.A()) } 
  $IsBox(bx, Tclass._module.A())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.A()));

procedure {:verboseName "m15 (well-formedness)"} CheckWellFormed$$_module.__default.m15(b#0: Set
       where $Is(b#0, TSet(Tclass._module.A()))
         && $IsAlloc(b#0, TSet(Tclass._module.A()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m15 (call)"} Call$$_module.__default.m15(b#0: Set
       where $Is(b#0, TSet(Tclass._module.A()))
         && $IsAlloc(b#0, TSet(Tclass._module.A()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m15 (correctness)"} Impl$$_module.__default.m15(b#0: Set
       where $Is(b#0, TSet(Tclass._module.A()))
         && $IsAlloc(b#0, TSet(Tclass._module.A()), $Heap))
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



function Tclass._module.A?() : Ty
uses {
// Tclass._module.A? Tag
axiom Tag(Tclass._module.A?()) == Tagclass._module.A?
   && TagFamily(Tclass._module.A?()) == tytagFamily$A;
}

const unique Tagclass._module.A?: TyTag;

// Box/unbox axiom for Tclass._module.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.A?()) } 
  $IsBox(bx, Tclass._module.A?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.A?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "m15 (correctness)"} Impl$$_module.__default.m15(b#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.A(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.A(), TInt), $Heap);
  var a#0: ref;
  var defass#aa#0: bool;
  var aa#0: ref
     where defass#aa#0
       ==> $Is(aa#0, Tclass._module.A()) && $IsAlloc(aa#0, Tclass._module.A(), $Heap);
  var $nw: ref;

    // AddMethodImpl: m15, Impl$$_module.__default.m15
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(193,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#0;
    if ($Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), $Heap))
    {
        if (Set#IsMember(b#0, $Box(a#0)))
        {
            assert {:id "id183"} a#0 != null;
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, Tclass._module.A()) && Set#IsMember(b#0, $w#0))), 
      (lambda $w#0: Box :: read($Heap, $Unbox($w#0): ref, _module.A.x)), 
      TMap(Tclass._module.A(), TInt));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(194,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.A?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    defass#aa#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(195,3)
    assert {:id "id186"} defass#aa#0;
    assume true;
    assert {:id "id187"} !Set#IsMember(Map#Domain(m#0), $Box(aa#0));
}



// function declaration for _module._default.Plus
function _module.__default.Plus(x#0: int, y#0: int) : int
uses {
// definition axiom for _module.__default.Plus (revealed)
axiom {:id "id188"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    { _module.__default.Plus(x#0, y#0) } 
    _module.__default.Plus#canCall(x#0, y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Plus(x#0, y#0) == x#0 + y#0);
// definition axiom for _module.__default.Plus for all literals (revealed)
axiom {:id "id189"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.Plus(LitInt(x#0), LitInt(y#0)) } 
    _module.__default.Plus#canCall(LitInt(x#0), LitInt(y#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Plus(LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
}

function _module.__default.Plus#canCall(x#0: int, y#0: int) : bool;

function _module.__default.Plus#requires(int, int) : bool;

// #requires axiom for _module.__default.Plus
axiom (forall x#0: int, y#0: int :: 
  { _module.__default.Plus#requires(x#0, y#0) } 
  _module.__default.Plus#requires(x#0, y#0) == true);

procedure {:verboseName "Plus (well-formedness)"} CheckWellformed$$_module.__default.Plus(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps0 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps0();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps0 (call)"} Call$$_module.__default.GeneralMaps0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps0 (correctness)"} Impl$$_module.__default.GeneralMaps0() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$0#0#y#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps0 (correctness)"} Impl$$_module.__default.GeneralMaps0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: Map
     where $Is(m#0, TMap(TInt, TInt)) && $IsAlloc(m#0, TMap(TInt, TInt), $Heap);
  var x#0: int;
  var y#0: int;
  var y#prime#0: int;
  var ##x#0: int;
  var ##y#0: int;
  var ##x#1: int;
  var ##y#1: int;

    // AddMethodImpl: GeneralMaps0, Impl$$_module.__default.GeneralMaps0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(200,9)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        if (LitInt(2) <= x#0)
        {
        }

        if (LitInt(2) <= x#0 && x#0 < 6)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt) && LitInt(2) <= $Unbox($w#0): int && $Unbox($w#0): int < 6)), 
      (lambda $w#0: Box :: $Box($Unbox($w#0): int + 1)), 
      TMap(TInt, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(201,3)
    assume true;
    assert {:id "id192"} Set#IsMember(Map#Domain(m#0), $Box(LitInt(5)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(202,3)
    assume true;
    assert {:id "id193"} !Set#IsMember(Map#Domain(m#0), $Box(LitInt(6)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(203,3)
    assert {:id "id194"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(LitInt(5)));
    assume true;
    assert {:id "id195"} $Unbox(Map#Elements(m#0)[$Box(LitInt(5))]): int == LitInt(6);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(204,3)
    assume true;
    assert {:id "id196"} Set#IsMember(Map#Values(m#0), $Box(LitInt(6)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(205,3)
    assume true;
    assert {:id "id197"} Set#IsMember(Map#Items(m#0), 
      $Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(5)), $Box(LitInt(6))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(206,5)
    assume true;
    // Begin Comprehension WF check
    havoc y#0;
    if (true)
    {
        havoc y#prime#0;
        assume true;
        if (LitInt(2) <= y#0)
        {
        }

        if (LitInt(2) <= y#0 && y#0 < 6)
        {
            ##x#0 := y#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            ##y#0 := LitInt(1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0, TInt, $Heap);
            assume _module.__default.Plus#canCall(y#0, LitInt(1));
        }

        if (LitInt(2) <= y#0 && y#0 < 6)
        {
        }

        if (LitInt(2) <= y#0 && y#0 < 6 && LitInt(2) <= y#prime#0 && y#prime#0 < 6)
        {
            assert {:id "id198"} _module.__default.Plus(y#0, LitInt(1))
                 != _module.__default.Plus(y#prime#0, LitInt(1))
               || y#0 + 3 == y#prime#0 + 3;
        }
    }

    // End Comprehension WF check
    assume (forall y#1: int :: 
      { _module.__default.Plus(y#1, 1) } 
      _module.__default.Plus#canCall(y#1, LitInt(1))
         && (forall a#1#0#0: int :: 
          { _module.__default.Plus(a#1#0#0, 1) } 
          LitInt(2) <= a#1#0#0 && a#1#0#0 < 6
             ==> LitInt(2) <= map$project$0#0#y#0(_module.__default.Plus(a#1#0#0, LitInt(1)))
               && map$project$0#0#y#0(_module.__default.Plus(a#1#0#0, LitInt(1))) < 6
               && _module.__default.Plus(a#1#0#0, LitInt(1))
                 == _module.__default.Plus(map$project$0#0#y#0(_module.__default.Plus(a#1#0#0, LitInt(1))), LitInt(1))));
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, TInt)
             && (exists a#0#0#0: int :: 
              LitInt(2) <= a#0#0#0
                 && a#0#0#0 < 6
                 && $Unbox($w#1): int == _module.__default.Plus(a#0#0#0, LitInt(1))))), 
      (lambda $w#1: Box :: $Box(map$project$0#0#y#0($Unbox($w#1): int) + 3)), 
      TMap(TInt, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(207,3)
    ##x#1 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    ##y#1 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#1, TInt, $Heap);
    assume _module.__default.Plus#canCall(LitInt(5), LitInt(1));
    assume _module.__default.Plus#canCall(LitInt(5), LitInt(1));
    assert {:id "id200"} Set#IsMember(Map#Domain(m#0), $Box(LitInt(_module.__default.Plus(LitInt(5), LitInt(1)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(208,3)
    assume true;
    assert {:id "id201"} !Set#IsMember(Map#Domain(m#0), $Box(LitInt(7)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(209,3)
    assert {:id "id202"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(LitInt(6)));
    assume true;
    assert {:id "id203"} $Unbox(Map#Elements(m#0)[$Box(LitInt(6))]): int == LitInt(8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(210,3)
    assume true;
    assert {:id "id204"} Set#IsMember(Map#Values(m#0), $Box(LitInt(8)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(211,3)
    assume true;
    assert {:id "id205"} Set#IsMember(Map#Items(m#0), 
      $Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(6)), $Box(LitInt(8))))));
}



// function declaration for _module._default.f
function _module.__default.f(x#0: int) : int;

function _module.__default.f#canCall(x#0: int) : bool;

function _module.__default.f#requires(int) : bool;

// #requires axiom for _module.__default.f
axiom (forall x#0: int :: 
  { _module.__default.f#requires(x#0) } 
  _module.__default.f#requires(x#0) == (LitInt(0) <= x#0));

procedure {:verboseName "f (well-formedness)"} CheckWellformed$$_module.__default.f(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.g
function _module.__default.g(x#0: int) : int;

function _module.__default.g#canCall(x#0: int) : bool;

function _module.__default.g#requires(int) : bool;

// #requires axiom for _module.__default.g
axiom (forall x#0: int :: 
  { _module.__default.g#requires(x#0) } 
  _module.__default.g#requires(x#0) == true);

procedure {:verboseName "g (well-formedness)"} CheckWellformed$$_module.__default.g(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps1 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps1();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps1 (call)"} Call$$_module.__default.GeneralMaps1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps1 (correctness)"} Impl$$_module.__default.GeneralMaps1() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$1#0_0#z#0(int) : int;

function map$project$2#1_0_0#z#0(int) : int;

function map$project$3#1_1_0_0#z#0(int) : int;

function map$project$4#1_1_1_0_0#z#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps1 (correctness)"} Impl$$_module.__default.GeneralMaps1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0_0: Map
     where $Is(m#0_0, TMap(TInt, TInt)) && $IsAlloc(m#0_0, TMap(TInt, TInt), $Heap);
  var z#0_0: int;
  var z#prime#0_0: int;
  var m#1_0_0: Map
     where $Is(m#1_0_0, TMap(TInt, TInt)) && $IsAlloc(m#1_0_0, TMap(TInt, TInt), $Heap);
  var z#1_0_0: int;
  var z#prime#1_0_0: int;
  var m#1_1_0_0: Map
     where $Is(m#1_1_0_0, TMap(TInt, TInt)) && $IsAlloc(m#1_1_0_0, TMap(TInt, TInt), $Heap);
  var z#1_1_0_0: int;
  var z#prime#1_1_0_0: int;
  var ##x#1_1_0_0: int;
  var m#1_1_1_0_0: Map
     where $Is(m#1_1_1_0_0, TMap(TInt, TInt))
       && $IsAlloc(m#1_1_1_0_0, TMap(TInt, TInt), $Heap);
  var z#1_1_1_0_0: int;
  var z#prime#1_1_1_0_0: int;
  var ##x#1_1_1_0_0: int;

    // AddMethodImpl: GeneralMaps1, Impl$$_module.__default.GeneralMaps1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(219,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(220,11)
        assume true;
        // Begin Comprehension WF check
        havoc z#0_0;
        if (true)
        {
            havoc z#prime#0_0;
            assume true;
            if (LitInt(2) <= z#0_0)
            {
            }

            if (LitInt(2) <= z#0_0 && z#0_0 < 6)
            {
                assert {:id "id207"} LitInt(2) != 0;
            }

            if (LitInt(2) <= z#0_0 && z#0_0 < 6)
            {
            }

            if (LitInt(2) <= z#0_0 && z#0_0 < 6 && LitInt(2) <= z#prime#0_0 && z#prime#0_0 < 6)
            {
                assert {:id "id208"} Div(z#0_0, LitInt(2)) != Div(z#prime#0_0, LitInt(2)) || z#0_0 == z#prime#0_0;
            }
        }

        // End Comprehension WF check
        assume (forall a#0_1#0#0: int :: 
          { Div(a#0_1#0#0, 2) } 
          LitInt(2) <= a#0_1#0#0 && a#0_1#0#0 < 6
             ==> LitInt(2) <= map$project$1#0_0#z#0(Div(a#0_1#0#0, LitInt(2)))
               && map$project$1#0_0#z#0(Div(a#0_1#0#0, LitInt(2))) < 6
               && Div(a#0_1#0#0, LitInt(2))
                 == Div(map$project$1#0_0#z#0(Div(a#0_1#0#0, LitInt(2))), LitInt(2)));
        m#0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#0_0: Box :: 
              $IsBox($w#0_0, TInt)
                 && (exists a#0_0#0#0: int :: 
                  LitInt(2) <= a#0_0#0#0
                     && a#0_0#0#0 < 6
                     && $Unbox($w#0_0): int == Div(a#0_0#0#0, LitInt(2))))), 
          (lambda $w#0_0: Box :: $Box(map$project$1#0_0#z#0($Unbox($w#0_0): int))), 
          TMap(TInt, TInt));
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(221,10)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(222,11)
            assume true;
            // Begin Comprehension WF check
            havoc z#1_0_0;
            if (true)
            {
                havoc z#prime#1_0_0;
                assume true;
                if (LitInt(2) <= z#1_0_0)
                {
                }

                if (LitInt(2) <= z#1_0_0 && z#1_0_0 < 6)
                {
                    assert {:id "id210"} LitInt(2) != 0;
                }

                if (LitInt(2) <= z#1_0_0 && z#1_0_0 < 6)
                {
                    assert {:id "id211"} LitInt(2) != 0;
                }

                if (LitInt(2) <= z#1_0_0
                   && z#1_0_0 < 6
                   && 
                  LitInt(2) <= z#prime#1_0_0
                   && z#prime#1_0_0 < 6)
                {
                    assert {:id "id212"} Div(z#1_0_0, LitInt(2)) != Div(z#prime#1_0_0, LitInt(2))
                       || Div(z#1_0_0, LitInt(2)) + 3 == Div(z#prime#1_0_0, LitInt(2)) + 3;
                }
            }

            // End Comprehension WF check
            assume (forall a#1_0_1#0#0: int :: 
              { Div(a#1_0_1#0#0, 2) } 
              LitInt(2) <= a#1_0_1#0#0 && a#1_0_1#0#0 < 6
                 ==> LitInt(2) <= map$project$2#1_0_0#z#0(Div(a#1_0_1#0#0, LitInt(2)))
                   && map$project$2#1_0_0#z#0(Div(a#1_0_1#0#0, LitInt(2))) < 6
                   && Div(a#1_0_1#0#0, LitInt(2))
                     == Div(map$project$2#1_0_0#z#0(Div(a#1_0_1#0#0, LitInt(2))), LitInt(2)));
            m#1_0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#1_0_0: Box :: 
                  $IsBox($w#1_0_0, TInt)
                     && (exists a#1_0_0#0#0: int :: 
                      LitInt(2) <= a#1_0_0#0#0
                         && a#1_0_0#0#0 < 6
                         && $Unbox($w#1_0_0): int == Div(a#1_0_0#0#0, LitInt(2))))), 
              (lambda $w#1_0_0: Box :: 
                $Box(Div(map$project$2#1_0_0#z#0($Unbox($w#1_0_0): int), LitInt(2)) + 3)), 
              TMap(TInt, TInt));
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(223,10)
            if (*)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(224,11)
                assume true;
                // Begin Comprehension WF check
                havoc z#1_1_0_0;
                if (true)
                {
                    havoc z#prime#1_1_0_0;
                    assume true;
                    if (LitInt(2) <= z#1_1_0_0)
                    {
                    }

                    if (LitInt(2) <= z#1_1_0_0 && z#1_1_0_0 < 6)
                    {
                        ##x#1_1_0_0 := z#1_1_0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##x#1_1_0_0, TInt, $Heap);
                        assert {:id "id214"} {:subsumption 0} LitInt(0) <= ##x#1_1_0_0;
                        assume LitInt(0) <= ##x#1_1_0_0;
                        assume _module.__default.f#canCall(z#1_1_0_0);
                    }

                    if (LitInt(2) <= z#1_1_0_0 && z#1_1_0_0 < 6)
                    {
                    }

                    if (LitInt(2) <= z#1_1_0_0
                       && z#1_1_0_0 < 6
                       && 
                      LitInt(2) <= z#prime#1_1_0_0
                       && z#prime#1_1_0_0 < 6)
                    {
                        assert {:id "id215"} _module.__default.f(z#1_1_0_0) != _module.__default.f(z#prime#1_1_0_0)
                           || LitInt(20) == LitInt(20);
                    }
                }

                // End Comprehension WF check
                assume (forall z#1_1_0_1: int :: 
                  { _module.__default.f(z#1_1_0_1) } 
                  _module.__default.f#canCall(z#1_1_0_1)
                     && (forall a#1_1_0_1#0#0: int :: 
                      { _module.__default.f(a#1_1_0_1#0#0) } 
                      LitInt(2) <= a#1_1_0_1#0#0 && a#1_1_0_1#0#0 < 6
                         ==> LitInt(2) <= map$project$3#1_1_0_0#z#0(_module.__default.f(a#1_1_0_1#0#0))
                           && map$project$3#1_1_0_0#z#0(_module.__default.f(a#1_1_0_1#0#0)) < 6
                           && _module.__default.f(a#1_1_0_1#0#0)
                             == _module.__default.f(map$project$3#1_1_0_0#z#0(_module.__default.f(a#1_1_0_1#0#0)))));
                m#1_1_0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#1_1_0_0: Box :: 
                      $IsBox($w#1_1_0_0, TInt)
                         && (exists a#1_1_0_0#0#0: int :: 
                          LitInt(2) <= a#1_1_0_0#0#0
                             && a#1_1_0_0#0#0 < 6
                             && $Unbox($w#1_1_0_0): int == _module.__default.f(a#1_1_0_0#0#0)))), 
                  (lambda $w#1_1_0_0: Box :: $Box(LitInt(20))), 
                  TMap(TInt, TInt));
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(225,10)
                if (*)
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(226,11)
                    assume true;
                    // Begin Comprehension WF check
                    havoc z#1_1_1_0_0;
                    if (true)
                    {
                        havoc z#prime#1_1_1_0_0;
                        assume true;
                        if (LitInt(2) <= z#1_1_1_0_0)
                        {
                        }

                        if (LitInt(2) <= z#1_1_1_0_0 && z#1_1_1_0_0 < 6)
                        {
                            ##x#1_1_1_0_0 := z#1_1_1_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##x#1_1_1_0_0, TInt, $Heap);
                            assert {:id "id217"} {:subsumption 0} LitInt(0) <= ##x#1_1_1_0_0;
                            assume LitInt(0) <= ##x#1_1_1_0_0;
                            assume _module.__default.f#canCall(z#1_1_1_0_0);
                        }

                        if (LitInt(2) <= z#1_1_1_0_0 && z#1_1_1_0_0 < 6)
                        {
                        }

                        if (LitInt(2) <= z#1_1_1_0_0
                           && z#1_1_1_0_0 < 6
                           && 
                          LitInt(2) <= z#prime#1_1_1_0_0
                           && z#prime#1_1_1_0_0 < 6)
                        {
                            assert {:id "id218"} _module.__default.f(z#1_1_1_0_0) != _module.__default.f(z#prime#1_1_1_0_0)
                               || z#1_1_1_0_0 == z#prime#1_1_1_0_0;
                        }
                    }

                    // End Comprehension WF check
                    assume (forall z#1_1_1_0_1: int :: 
                      { _module.__default.f(z#1_1_1_0_1) } 
                      _module.__default.f#canCall(z#1_1_1_0_1)
                         && (forall a#1_1_1_0_1#0#0: int :: 
                          { _module.__default.f(a#1_1_1_0_1#0#0) } 
                          LitInt(2) <= a#1_1_1_0_1#0#0 && a#1_1_1_0_1#0#0 < 6
                             ==> LitInt(2) <= map$project$4#1_1_1_0_0#z#0(_module.__default.f(a#1_1_1_0_1#0#0))
                               && map$project$4#1_1_1_0_0#z#0(_module.__default.f(a#1_1_1_0_1#0#0)) < 6
                               && _module.__default.f(a#1_1_1_0_1#0#0)
                                 == _module.__default.f(map$project$4#1_1_1_0_0#z#0(_module.__default.f(a#1_1_1_0_1#0#0)))));
                    m#1_1_1_0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#1_1_1_0_0: Box :: 
                          $IsBox($w#1_1_1_0_0, TInt)
                             && (exists a#1_1_1_0_0#0#0: int :: 
                              LitInt(2) <= a#1_1_1_0_0#0#0
                                 && a#1_1_1_0_0#0#0 < 6
                                 && $Unbox($w#1_1_1_0_0): int == _module.__default.f(a#1_1_1_0_0#0#0)))), 
                      (lambda $w#1_1_1_0_0: Box :: 
                        $Box(map$project$4#1_1_1_0_0#z#0($Unbox($w#1_1_1_0_0): int))), 
                      TMap(TInt, TInt));
                }
                else
                {
                }
            }
        }
    }
}



procedure {:verboseName "GeneralMaps2 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps2();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps2 (call)"} Call$$_module.__default.GeneralMaps2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps2 (correctness)"} Impl$$_module.__default.GeneralMaps2() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



function map$project$5#0_0#z#0(int) : int;

function map$project$6#1_0#z#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps2 (correctness)"} Impl$$_module.__default.GeneralMaps2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0_0: IMap
     where $Is(m#0_0, TIMap(TInt, TInt)) && $IsAlloc(m#0_0, TIMap(TInt, TInt), $Heap);
  var z#0_0: int;
  var z#prime#0_0: int;
  var ##x#0_0: int;
  var m#1_0: IMap
     where $Is(m#1_0, TIMap(TInt, TInt)) && $IsAlloc(m#1_0, TIMap(TInt, TInt), $Heap);
  var z#1_0: int;
  var z#prime#1_0: int;
  var ##x#1_0: int;

    // AddMethodImpl: GeneralMaps2, Impl$$_module.__default.GeneralMaps2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(231,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(232,11)
        assume true;
        // Begin Comprehension WF check
        havoc z#0_0;
        if (true)
        {
            havoc z#prime#0_0;
            assume true;
            if (LitInt(2) <= z#0_0)
            {
            }

            if (LitInt(2) <= z#0_0 && z#0_0 < 6)
            {
                ##x#0_0 := z#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0_0, TInt, $Heap);
                assume _module.__default.g#canCall(z#0_0);
            }

            if (LitInt(2) <= z#0_0 && z#0_0 < 6)
            {
            }

            if (LitInt(2) <= z#0_0 && z#0_0 < 6 && LitInt(2) <= z#prime#0_0 && z#prime#0_0 < 6)
            {
                assert {:id "id220"} _module.__default.g(z#0_0) != _module.__default.g(z#prime#0_0)
                   || z#0_0 == z#prime#0_0;
            }
        }

        // End Comprehension WF check
        assume (forall z#0_1: int :: 
          { _module.__default.g(z#0_1) } 
          _module.__default.g#canCall(z#0_1)
             && (forall a#0_1#0#0: int :: 
              { _module.__default.g(a#0_1#0#0) } 
              LitInt(2) <= a#0_1#0#0 && a#0_1#0#0 < 6
                 ==> LitInt(2) <= map$project$5#0_0#z#0(_module.__default.g(a#0_1#0#0))
                   && map$project$5#0_0#z#0(_module.__default.g(a#0_1#0#0)) < 6
                   && _module.__default.g(a#0_1#0#0)
                     == _module.__default.g(map$project$5#0_0#z#0(_module.__default.g(a#0_1#0#0)))));
        m#0_0 := IMap#Glue((lambda $w#0_0: Box :: 
            $IsBox($w#0_0, TInt)
               && (exists a#0_0#0#0: int :: 
                LitInt(2) <= a#0_0#0#0
                   && a#0_0#0#0 < 6
                   && $Unbox($w#0_0): int == _module.__default.g(a#0_0#0#0))), 
          (lambda $w#0_0: Box :: $Box(map$project$5#0_0#z#0($Unbox($w#0_0): int))), 
          TIMap(TInt, TInt));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(234,11)
        assume true;
        // Begin Comprehension WF check
        havoc z#1_0;
        if (true)
        {
            havoc z#prime#1_0;
            assume true;
            if (Lit(true))
            {
                ##x#1_0 := z#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1_0, TInt, $Heap);
                assume _module.__default.g#canCall(z#1_0);
            }

            if (Lit(true))
            {
            }

            if (Lit(true) && Lit(true))
            {
                assert {:id "id222"} _module.__default.g(z#1_0) != _module.__default.g(z#prime#1_0)
                   || z#1_0 == z#prime#1_0;
            }
        }

        // End Comprehension WF check
        assume (forall z#1_1: int :: 
          { _module.__default.g(z#1_1) } 
          _module.__default.g#canCall(z#1_1)
             && (forall a#1_1#0#0: int :: 
              { _module.__default.g(a#1_1#0#0) } 
              Lit(true)
                 ==> Lit(true)
                   && _module.__default.g(a#1_1#0#0)
                     == _module.__default.g(map$project$6#1_0#z#0(_module.__default.g(a#1_1#0#0)))));
        m#1_0 := IMap#Glue((lambda $w#1_0: Box :: 
            $IsBox($w#1_0, TInt)
               && (exists a#1_0#0#0: int :: 
                Lit(true) && $Unbox($w#1_0): int == _module.__default.g(a#1_0#0#0))), 
          (lambda $w#1_0: Box :: $Box(map$project$6#1_0#z#0($Unbox($w#1_0): int))), 
          TIMap(TInt, TInt));
    }
}



procedure {:verboseName "GeneralMaps3 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps3();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps3 (call)"} Call$$_module.__default.GeneralMaps3();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps3 (correctness)"} Impl$$_module.__default.GeneralMaps3() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$7#1_0_0#u#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps3 (correctness)"} Impl$$_module.__default.GeneralMaps3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0_0: Map
     where $Is(m#0_0, TMap(TInt, TInt)) && $IsAlloc(m#0_0, TMap(TInt, TInt), $Heap);
  var u#0_0: int;
  var ##x#0_0: int;
  var m#1_0_0: Map
     where $Is(m#1_0_0, TMap(TInt, TInt)) && $IsAlloc(m#1_0_0, TMap(TInt, TInt), $Heap);
  var u#1_0_0: int;
  var u#prime#1_0_0: int;
  var ##x#1_0_0: int;

    // AddMethodImpl: GeneralMaps3, Impl$$_module.__default.GeneralMaps3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(240,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(241,11)
        assume true;
        // Begin Comprehension WF check
        havoc u#0_0;
        if (true)
        {
            if (LitInt(-2) <= u#0_0)
            {
            }

            if (LitInt(-2) <= u#0_0 && u#0_0 < 6)
            {
                ##x#0_0 := u#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0_0, TInt, $Heap);
                assert {:id "id224"} {:subsumption 0} LitInt(0) <= ##x#0_0;
                assume LitInt(0) <= ##x#0_0;
                assume _module.__default.f#canCall(u#0_0);
            }
        }

        // End Comprehension WF check
        assume (forall u#0_1: int :: 
          { _module.__default.f(u#0_1) } 
          LitInt(-2) <= u#0_1 && u#0_1 < 6 ==> _module.__default.f#canCall(u#0_1));
        m#0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#0_0: Box :: 
              $IsBox($w#0_0, TInt)
                 && 
                LitInt(-2) <= $Unbox($w#0_0): int
                 && $Unbox($w#0_0): int < 6)), 
          (lambda $w#0_0: Box :: $Box(_module.__default.f($Unbox($w#0_0): int))), 
          TMap(TInt, TInt));
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(242,10)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(243,11)
            assume true;
            // Begin Comprehension WF check
            havoc u#1_0_0;
            if (true)
            {
                havoc u#prime#1_0_0;
                assume true;
                if (LitInt(-2) <= u#1_0_0)
                {
                }

                if (LitInt(-2) <= u#1_0_0 && u#1_0_0 < 6)
                {
                    ##x#1_0_0 := u#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##x#1_0_0, TInt, $Heap);
                    assert {:id "id226"} {:subsumption 0} LitInt(0) <= ##x#1_0_0;
                    assume LitInt(0) <= ##x#1_0_0;
                    assume _module.__default.f#canCall(u#1_0_0);
                }

                if (LitInt(-2) <= u#1_0_0 && u#1_0_0 < 6)
                {
                }

                if (LitInt(-2) <= u#1_0_0
                   && u#1_0_0 < 6
                   && 
                  LitInt(-2) <= u#prime#1_0_0
                   && u#prime#1_0_0 < 6)
                {
                    assert {:id "id227"} _module.__default.f(u#1_0_0) != _module.__default.f(u#prime#1_0_0)
                       || u#1_0_0 == u#prime#1_0_0;
                }
            }

            // End Comprehension WF check
            assume (forall u#1_0_1: int :: 
              { _module.__default.f(u#1_0_1) } 
              _module.__default.f#canCall(u#1_0_1)
                 && (forall a#1_0_1#0#0: int :: 
                  { _module.__default.f(a#1_0_1#0#0) } 
                  LitInt(-2) <= a#1_0_1#0#0 && a#1_0_1#0#0 < 6
                     ==> LitInt(-2) <= map$project$7#1_0_0#u#0(_module.__default.f(a#1_0_1#0#0))
                       && map$project$7#1_0_0#u#0(_module.__default.f(a#1_0_1#0#0)) < 6
                       && _module.__default.f(a#1_0_1#0#0)
                         == _module.__default.f(map$project$7#1_0_0#u#0(_module.__default.f(a#1_0_1#0#0)))));
            m#1_0_0 := Map#Glue(Set#FromBoogieMap((lambda $w#1_0_0: Box :: 
                  $IsBox($w#1_0_0, TInt)
                     && (exists a#1_0_0#0#0: int :: 
                      LitInt(-2) <= a#1_0_0#0#0
                         && a#1_0_0#0#0 < 6
                         && $Unbox($w#1_0_0): int == _module.__default.f(a#1_0_0#0#0)))), 
              (lambda $w#1_0_0: Box :: $Box(map$project$7#1_0_0#u#0($Unbox($w#1_0_0): int))), 
              TMap(TInt, TInt));
        }
        else
        {
        }
    }
}



// function declaration for _module._default.UnboxTest
function _module.__default.UnboxTest(s#0: Seq) : Map
uses {
// consequence axiom for _module.__default.UnboxTest
axiom 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.UnboxTest(s#0) } 
    _module.__default.UnboxTest#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TSeq(TInt))))
       ==> $Is(_module.__default.UnboxTest(s#0), TMap(TSeq(TInt), TSeq(TInt))));
// definition axiom for _module.__default.UnboxTest (revealed)
axiom {:id "id229"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.UnboxTest(s#0) } 
    _module.__default.UnboxTest#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TSeq(TInt))))
       ==> (forall a#1#0#0: int :: 
          { $Unbox(Seq#Index(s#0, a#1#0#0)): Seq } 
          LitInt(0) <= a#1#0#0 && a#1#0#0 < Seq#Length(s#0)
             ==> LitInt(0) <= map$project$8#0#i#0($Unbox(Seq#Index(s#0, a#1#0#0)): Seq)
               && map$project$8#0#i#0($Unbox(Seq#Index(s#0, a#1#0#0)): Seq) < Seq#Length(s#0)
               && $Unbox(Seq#Index(s#0, a#1#0#0)): Seq
                 == $Unbox(Seq#Index(s#0, map$project$8#0#i#0($Unbox(Seq#Index(s#0, a#1#0#0)): Seq))): Seq)
         && _module.__default.UnboxTest(s#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                $IsBox($w#0, TSeq(TInt))
                   && (exists a#0#0#0: int :: 
                    LitInt(0) <= a#0#0#0
                       && a#0#0#0 < Seq#Length(s#0)
                       && $Unbox($w#0): Seq == $Unbox(Seq#Index(s#0, a#0#0#0)): Seq))), 
            (lambda $w#0: Box :: Seq#Index(s#0, map$project$8#0#i#0($Unbox($w#0): Seq))), 
            TMap(TSeq(TInt), TSeq(TInt))));
// definition axiom for _module.__default.UnboxTest for all literals (revealed)
axiom {:id "id230"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.UnboxTest(Lit(s#0)) } 
    _module.__default.UnboxTest#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TSeq(TInt))))
       ==> (forall a#3#0#0: int :: 
          { $Unbox(Seq#Index(s#0, a#3#0#0)): Seq } 
          LitInt(0) <= a#3#0#0 && a#3#0#0 < Seq#Length(Lit(s#0))
             ==> LitInt(0) <= map$project$9#0#i#0($Unbox(Seq#Index(Lit(s#0), a#3#0#0)): Seq)
               && map$project$9#0#i#0($Unbox(Seq#Index(Lit(s#0), a#3#0#0)): Seq)
                 < Seq#Length(Lit(s#0))
               && $Unbox(Seq#Index(Lit(s#0), a#3#0#0)): Seq
                 == $Unbox(Seq#Index(Lit(s#0), map$project$9#0#i#0($Unbox(Seq#Index(Lit(s#0), a#3#0#0)): Seq))): Seq)
         && _module.__default.UnboxTest(Lit(s#0))
           == Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
                $IsBox($w#1, TSeq(TInt))
                   && (exists a#2#0#0: int :: 
                    LitInt(0) <= a#2#0#0
                       && a#2#0#0 < Seq#Length(Lit(s#0))
                       && $Unbox($w#1): Seq == $Unbox(Seq#Index(Lit(s#0), a#2#0#0)): Seq))), 
            (lambda $w#1: Box :: 
              Seq#Index(Lit(s#0), map$project$9#0#i#0($Unbox($w#1): Seq))), 
            TMap(TSeq(TInt), TSeq(TInt))));
}

function _module.__default.UnboxTest#canCall(s#0: Seq) : bool;

function _module.__default.UnboxTest#requires(Seq) : bool;

// #requires axiom for _module.__default.UnboxTest
axiom (forall s#0: Seq :: 
  { _module.__default.UnboxTest#requires(s#0) } 
  $Is(s#0, TSeq(TSeq(TInt))) ==> _module.__default.UnboxTest#requires(s#0) == true);

function map$project$8#0#i#0(Seq) : int;

function map$project$9#0#i#0(Seq) : int;

procedure {:verboseName "UnboxTest (well-formedness)"} CheckWellformed$$_module.__default.UnboxTest(s#0: Seq where $Is(s#0, TSeq(TSeq(TInt))));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function map$project$10#0#i#0(Seq) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UnboxTest (well-formedness)"} CheckWellformed$$_module.__default.UnboxTest(s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#1: int;
  var i#prime#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.UnboxTest(s#0), TMap(TSeq(TInt), TSeq(TInt)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#1;
        if (true)
        {
            havoc i#prime#0;
            assume true;
            if (LitInt(0) <= i#1)
            {
            }

            if (LitInt(0) <= i#1 && i#1 < Seq#Length(s#0))
            {
                assert {:id "id231"} 0 <= i#1 && i#1 < Seq#Length(s#0);
            }

            if (LitInt(0) <= i#1 && i#1 < Seq#Length(s#0))
            {
                assert {:id "id232"} 0 <= i#1 && i#1 < Seq#Length(s#0);
            }

            if (LitInt(0) <= i#1
               && i#1 < Seq#Length(s#0)
               && 
              LitInt(0) <= i#prime#0
               && i#prime#0 < Seq#Length(s#0))
            {
                assert {:id "id233"} $Unbox(Seq#Index(s#0, i#1)): Seq != $Unbox(Seq#Index(s#0, i#prime#0)): Seq
                   || $Unbox(Seq#Index(s#0, i#1)): Seq == $Unbox(Seq#Index(s#0, i#prime#0)): Seq;
            }
        }

        // End Comprehension WF check
        assume {:id "id234"} _module.__default.UnboxTest(s#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#3: Box :: 
                $IsBox($w#3, TSeq(TInt))
                   && (exists a#5#0#0: int :: 
                    LitInt(0) <= a#5#0#0
                       && a#5#0#0 < Seq#Length(s#0)
                       && $Unbox($w#3): Seq == $Unbox(Seq#Index(s#0, a#5#0#0)): Seq))), 
            (lambda $w#3: Box :: Seq#Index(s#0, map$project$10#0#i#0($Unbox($w#3): Seq))), 
            TMap(TSeq(TInt), TSeq(TInt)));
        assume (forall a#6#0#0: int :: 
          { $Unbox(Seq#Index(s#0, a#6#0#0)): Seq } 
          LitInt(0) <= a#6#0#0 && a#6#0#0 < Seq#Length(s#0)
             ==> LitInt(0) <= map$project$10#0#i#0($Unbox(Seq#Index(s#0, a#6#0#0)): Seq)
               && map$project$10#0#i#0($Unbox(Seq#Index(s#0, a#6#0#0)): Seq) < Seq#Length(s#0)
               && $Unbox(Seq#Index(s#0, a#6#0#0)): Seq
                 == $Unbox(Seq#Index(s#0, map$project$10#0#i#0($Unbox(Seq#Index(s#0, a#6#0#0)): Seq))): Seq);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.UnboxTest(s#0), TMap(TSeq(TInt), TSeq(TInt)));
        return;

        assume false;
    }
}



procedure {:verboseName "GeneralMaps4 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps4(s#0: Set where $Is(s#0, TSet(TReal)) && $IsAlloc(s#0, TSet(TReal), $Heap), 
    twelve#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps4 (call)"} Call$$_module.__default.GeneralMaps4(s#0: Set where $Is(s#0, TSet(TReal)) && $IsAlloc(s#0, TSet(TReal), $Heap), 
    twelve#0: real);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps4 (correctness)"} Impl$$_module.__default.GeneralMaps4(s#0: Set where $Is(s#0, TSet(TReal)) && $IsAlloc(s#0, TSet(TReal), $Heap), 
    twelve#0: real)
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



function map$project$11#0#n#0(real) : real;

function map$project$11#0#p#0(real) : real;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps4 (correctness)"} Impl$$_module.__default.GeneralMaps4(s#0: Set, twelve#0: real) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c0#0: Map
     where $Is(c0#0, TMap(TReal, TReal)) && $IsAlloc(c0#0, TMap(TReal, TReal), $Heap);
  var n#0: real;
  var p#0: real;
  var n#prime#0: real;
  var p#prime#0: real;

    // AddMethodImpl: GeneralMaps4, Impl$$_module.__default.GeneralMaps4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(255,10)
    assume true;
    // Begin Comprehension WF check
    havoc n#0;
    havoc p#0;
    if (true)
    {
        havoc n#prime#0;
        havoc p#prime#0;
        assume true;
        if (Set#IsMember(s#0, $Box(n#0)))
        {
        }

        if (Set#IsMember(s#0, $Box(n#0)) && Set#IsMember(s#0, $Box(p#0)))
        {
        }

        if (Set#IsMember(s#0, $Box(n#0)) && Set#IsMember(s#0, $Box(p#0)))
        {
        }

        if (Set#IsMember(s#0, $Box(n#0))
           && Set#IsMember(s#0, $Box(p#0))
           && 
          Set#IsMember(s#0, $Box(n#prime#0))
           && Set#IsMember(s#0, $Box(p#prime#0)))
        {
            assert {:id "id235"} n#0 != n#prime#0 || twelve#0 == twelve#0;
        }
    }

    // End Comprehension WF check
    assume (forall a#1#0#0: real, a#1#1#0: real :: 
      { Set#IsMember(s#0, $Box(a#1#1#0)), Set#IsMember(s#0, $Box(a#1#0#0)) } 
      Set#IsMember(s#0, $Box(a#1#0#0)) && Set#IsMember(s#0, $Box(a#1#1#0))
         ==> Set#IsMember(s#0, $Box(map$project$11#0#n#0(a#1#0#0)))
           && Set#IsMember(s#0, $Box(map$project$11#0#p#0(a#1#0#0)))
           && a#1#0#0 == map$project$11#0#n#0(a#1#0#0));
    c0#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TReal)
             && (exists a#0#0#0: real, a#0#1#0: real :: 
              Set#IsMember(s#0, $Box(a#0#0#0))
                 && Set#IsMember(s#0, $Box(a#0#1#0))
                 && $Unbox($w#0): real == a#0#0#0))), 
      (lambda $w#0: Box :: $Box(twelve#0)), 
      TMap(TReal, TReal));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(256,3)
    if (Set#IsMember(s#0, $Box(LitReal(2e0))))
    {
        assert {:id "id237"} {:subsumption 0} Set#IsMember(Map#Domain(c0#0), $Box(LitReal(2e0)));
    }

    assume true;
    assert {:id "id238"} {:subsumption 0} Set#IsMember(s#0, $Box(LitReal(2e0)))
       ==> $Unbox(Map#Elements(c0#0)[$Box(LitReal(2e0))]): real == twelve#0;
    assume {:id "id239"} Set#IsMember(s#0, $Box(LitReal(2e0)))
       ==> $Unbox(Map#Elements(c0#0)[$Box(LitReal(2e0))]): real == twelve#0;
}



procedure {:verboseName "GeneralMaps5 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps5(u#0: Seq where $Is(u#0, TSeq(TInt)) && $IsAlloc(u#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps5 (call)"} Call$$_module.__default.GeneralMaps5(u#0: Seq where $Is(u#0, TSeq(TInt)) && $IsAlloc(u#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps5 (correctness)"} Impl$$_module.__default.GeneralMaps5(u#0: Seq where $Is(u#0, TSeq(TInt)) && $IsAlloc(u#0, TSeq(TInt), $Heap))
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



function map$project$12#0#i#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps5 (correctness)"} Impl$$_module.__default.GeneralMaps5(u#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c1#0: Map
     where $Is(c1#0, TMap(TInt, TInt)) && $IsAlloc(c1#0, TMap(TInt, TInt), $Heap);
  var i#0: int;
  var i#prime#0: int;

    // AddMethodImpl: GeneralMaps5, Impl$$_module.__default.GeneralMaps5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(260,10)
    assume true;
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        havoc i#prime#0;
        assume true;
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < Seq#Length(u#0))
        {
            assert {:id "id240"} 0 <= i#0 && i#0 < Seq#Length(u#0);
        }

        if (LitInt(0) <= i#0 && i#0 < Seq#Length(u#0))
        {
            assert {:id "id241"} 0 <= i#0 && i#0 < Seq#Length(u#0);
        }

        if (LitInt(0) <= i#0
           && i#0 < Seq#Length(u#0)
           && 
          LitInt(0) <= i#prime#0
           && i#prime#0 < Seq#Length(u#0))
        {
            assert {:id "id242"} $Unbox(Seq#Index(u#0, i#0)): int != $Unbox(Seq#Index(u#0, i#prime#0)): int
               || $Unbox(Seq#Index(u#0, i#0)): int + 100
                 == $Unbox(Seq#Index(u#0, i#prime#0)): int + 100;
        }
    }

    // End Comprehension WF check
    assume (forall a#1#0#0: int :: 
      { $Unbox(Seq#Index(u#0, a#1#0#0)): int } 
      LitInt(0) <= a#1#0#0 && a#1#0#0 < Seq#Length(u#0)
         ==> LitInt(0) <= map$project$12#0#i#0($Unbox(Seq#Index(u#0, a#1#0#0)): int)
           && map$project$12#0#i#0($Unbox(Seq#Index(u#0, a#1#0#0)): int) < Seq#Length(u#0)
           && $Unbox(Seq#Index(u#0, a#1#0#0)): int
             == $Unbox(Seq#Index(u#0, map$project$12#0#i#0($Unbox(Seq#Index(u#0, a#1#0#0)): int))): int);
    c1#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt)
             && (exists a#0#0#0: int :: 
              LitInt(0) <= a#0#0#0
                 && a#0#0#0 < Seq#Length(u#0)
                 && $Unbox($w#0): int == $Unbox(Seq#Index(u#0, a#0#0#0)): int))), 
      (lambda $w#0: Box :: 
        $Box($Unbox(Seq#Index(u#0, map$project$12#0#i#0($Unbox($w#0): int))): int + 100)), 
      TMap(TInt, TInt));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(261,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(262,5)
        if (7 < Seq#Length(u#0))
        {
            assert {:id "id244"} {:subsumption 0} 0 <= LitInt(7) && LitInt(7) < Seq#Length(u#0);
            if (101 < $Unbox(Seq#Index(u#0, LitInt(7))): int)
            {
                assert {:id "id245"} {:subsumption 0} 0 <= LitInt(7) && LitInt(7) < Seq#Length(u#0);
            }
        }

        if (7 < Seq#Length(u#0)
           && 
          101 < $Unbox(Seq#Index(u#0, LitInt(7))): int
           && $Unbox(Seq#Index(u#0, LitInt(7))): int < 103)
        {
            assert {:id "id246"} {:subsumption 0} Set#IsMember(Map#Domain(c1#0), $Box(LitInt(102)));
        }

        assume true;
        assert {:id "id247"} {:subsumption 0} 7 < Seq#Length(u#0)
             && 
            101 < $Unbox(Seq#Index(u#0, LitInt(7))): int
             && $Unbox(Seq#Index(u#0, LitInt(7))): int < 103
           ==> $Unbox(Map#Elements(c1#0)[$Box(LitInt(102))]): int == LitInt(202);
        assume {:id "id248"} 7 < Seq#Length(u#0)
             && 
            101 < $Unbox(Seq#Index(u#0, LitInt(7))): int
             && $Unbox(Seq#Index(u#0, LitInt(7))): int < 103
           ==> $Unbox(Map#Elements(c1#0)[$Box(LitInt(102))]): int == LitInt(202);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(264,5)
        if (7 < Seq#Length(u#0))
        {
            assert {:id "id249"} {:subsumption 0} 0 <= LitInt(7) && LitInt(7) < Seq#Length(u#0);
            if (2101 < $Unbox(Seq#Index(u#0, LitInt(7))): int)
            {
                assert {:id "id250"} {:subsumption 0} 0 <= LitInt(7) && LitInt(7) < Seq#Length(u#0);
            }
        }

        if (7 < Seq#Length(u#0)
           && 
          2101 < $Unbox(Seq#Index(u#0, LitInt(7))): int
           && $Unbox(Seq#Index(u#0, LitInt(7))): int < 2103)
        {
            assert {:id "id251"} {:subsumption 0} Set#IsMember(Map#Domain(c1#0), $Box(LitInt(2102)));
        }

        assume true;
        assert {:id "id252"} {:subsumption 0} 7 < Seq#Length(u#0)
             && 
            2101 < $Unbox(Seq#Index(u#0, LitInt(7))): int
             && $Unbox(Seq#Index(u#0, LitInt(7))): int < 2103
           ==> $Unbox(Map#Elements(c1#0)[$Box(LitInt(2102))]): int == LitInt(2200);
        assume {:id "id253"} 7 < Seq#Length(u#0)
             && 
            2101 < $Unbox(Seq#Index(u#0, LitInt(7))): int
             && $Unbox(Seq#Index(u#0, LitInt(7))): int < 2103
           ==> $Unbox(Map#Elements(c1#0)[$Box(LitInt(2102))]): int == LitInt(2200);
    }
}



// function declaration for _module._default.Thirteen
function _module.__default.Thirteen(x#0: int) : bool
uses {
// definition axiom for _module.__default.Thirteen (revealed)
axiom {:id "id254"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Thirteen(x#0) } 
    _module.__default.Thirteen#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Thirteen(x#0) == (x#0 == LitInt(13)));
// definition axiom for _module.__default.Thirteen for all literals (revealed)
axiom {:id "id255"} 0 <= $FunctionContextHeight
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



// function declaration for _module._default.Odd
function _module.__default.Odd(y#0: int) : bool
uses {
// definition axiom for _module.__default.Odd (revealed)
axiom {:id "id257"} 0 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    { _module.__default.Odd(y#0) } 
    _module.__default.Odd#canCall(y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Odd(y#0) == (Mod(y#0, LitInt(2)) == LitInt(1)));
// definition axiom for _module.__default.Odd for all literals (revealed)
axiom {:id "id258"} 0 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    {:weight 3} { _module.__default.Odd(LitInt(y#0)) } 
    _module.__default.Odd#canCall(LitInt(y#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Odd(LitInt(y#0)) == (LitInt(Mod(y#0, LitInt(2))) == LitInt(1)));
}

function _module.__default.Odd#canCall(y#0: int) : bool;

function _module.__default.Odd#requires(int) : bool;

// #requires axiom for _module.__default.Odd
axiom (forall y#0: int :: 
  { _module.__default.Odd#requires(y#0) } 
  _module.__default.Odd#requires(y#0) == true);

procedure {:verboseName "Odd (well-formedness)"} CheckWellformed$$_module.__default.Odd(y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Odd (well-formedness)"} CheckWellformed$$_module.__default.Odd(y#0: int)
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
        assert {:id "id259"} LitInt(2) != 0;
        assume {:id "id260"} _module.__default.Odd(y#0) == (Mod(y#0, LitInt(2)) == LitInt(1));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Odd(y#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "GeneralMaps6 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps6();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps6 (call)"} Call$$_module.__default.GeneralMaps6();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps6 (correctness)"} Impl$$_module.__default.GeneralMaps6() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$13#0#x#0(int) : int;

function map$project$13#0#y#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps6 (correctness)"} Impl$$_module.__default.GeneralMaps6() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c2#0: Map
     where $Is(c2#0, TMap(TInt, TInt)) && $IsAlloc(c2#0, TMap(TInt, TInt), $Heap);
  var x#0: int;
  var y#0: int;
  var x#prime#0: int;
  var y#prime#0: int;
  var ##x#0: int;
  var ##y#0: int;
  var ##x#1: int;
  var ##y#1: int;

    // AddMethodImpl: GeneralMaps6, Impl$$_module.__default.GeneralMaps6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(272,10)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    havoc y#0;
    if (true)
    {
        havoc x#prime#0;
        havoc y#prime#0;
        assume true;
        if (LitInt(12) <= x#0)
        {
        }

        if (LitInt(12) <= x#0 && x#0 < y#0)
        {
        }

        if (LitInt(12) <= x#0 && x#0 < y#0 && y#0 < 17)
        {
            ##x#0 := x#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(x#0);
        }

        if (LitInt(12) <= x#0 && x#0 < y#0 && y#0 < 17 && _module.__default.Thirteen(x#0))
        {
            ##y#0 := y#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0, TInt, $Heap);
            assume _module.__default.Odd#canCall(y#0);
        }

        if (LitInt(12) <= x#0
           && x#0 < y#0
           && y#0 < 17
           && _module.__default.Thirteen(x#0)
           && _module.__default.Odd(y#0))
        {
        }

        if (LitInt(12) <= x#0
           && x#0 < y#0
           && y#0 < 17
           && _module.__default.Thirteen(x#0)
           && _module.__default.Odd(y#0))
        {
        }

        if (LitInt(12) <= x#0
           && x#0 < y#0
           && y#0 < 17
           && _module.__default.Thirteen(x#0)
           && _module.__default.Odd(y#0)
           && 
          LitInt(12) <= x#prime#0
           && x#prime#0 < y#prime#0
           && y#prime#0 < 17
           && _module.__default.Thirteen(x#prime#0)
           && _module.__default.Odd(y#prime#0))
        {
            assert {:id "id261"} x#0 != x#prime#0 || y#0 == y#prime#0;
        }
    }

    // End Comprehension WF check
    assume (forall x#1: int, y#1: int :: 
      { _module.__default.Odd(y#1), _module.__default.Thirteen(x#1) } 
      (LitInt(12) <= x#1 && x#1 < y#1 && y#1 < 17
           ==> _module.__default.Thirteen#canCall(x#1)
             && (_module.__default.Thirteen(x#1) ==> _module.__default.Odd#canCall(y#1)))
         && (forall a#1#0#0: int, a#1#1#0: int :: 
          { _module.__default.Odd(a#1#1#0), _module.__default.Thirteen(a#1#0#0) } 
          LitInt(12) <= a#1#0#0
               && a#1#0#0 < a#1#1#0
               && a#1#1#0 < 17
               && _module.__default.Thirteen(a#1#0#0)
               && _module.__default.Odd(a#1#1#0)
             ==> LitInt(12) <= map$project$13#0#x#0(a#1#0#0)
               && map$project$13#0#x#0(a#1#0#0) < map$project$13#0#y#0(a#1#0#0)
               && map$project$13#0#y#0(a#1#0#0) < 17
               && _module.__default.Thirteen(map$project$13#0#x#0(a#1#0#0))
               && _module.__default.Odd(map$project$13#0#y#0(a#1#0#0))
               && a#1#0#0 == map$project$13#0#x#0(a#1#0#0)));
    c2#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt)
             && (exists a#0#0#0: int, a#0#1#0: int :: 
              LitInt(12) <= a#0#0#0
                 && a#0#0#0 < a#0#1#0
                 && a#0#1#0 < 17
                 && _module.__default.Thirteen(a#0#0#0)
                 && _module.__default.Odd(a#0#1#0)
                 && $Unbox($w#0): int == a#0#0#0))), 
      (lambda $w#0: Box :: $Box(map$project$13#0#y#0($Unbox($w#0): int))), 
      TMap(TInt, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(273,3)
    ##x#1 := LitInt(13);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.__default.Thirteen#canCall(LitInt(13));
    if (Lit(_module.__default.Thirteen(LitInt(13))))
    {
        ##y#1 := LitInt(15);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#1, TInt, $Heap);
        assume _module.__default.Odd#canCall(LitInt(15));
    }

    assume _module.__default.Thirteen#canCall(LitInt(13))
       && (Lit(_module.__default.Thirteen(LitInt(13)))
         ==> _module.__default.Odd#canCall(LitInt(15)));
    assert {:id "id263"} {:subsumption 0} _module.__default.Thirteen#canCall(LitInt(13))
       ==> Lit(_module.__default.Thirteen(LitInt(13))) || LitInt(13) == LitInt(13);
    assert {:id "id264"} {:subsumption 0} _module.__default.Odd#canCall(LitInt(15))
       ==> Lit(_module.__default.Odd(LitInt(15)))
         || LitInt(Mod(15, LitInt(2))) == LitInt(1);
    assume {:id "id265"} Lit(_module.__default.Thirteen(LitInt(13)) && _module.__default.Odd(LitInt(15)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(274,3)
    assert {:id "id266"} {:subsumption 0} Set#IsMember(Map#Domain(c2#0), $Box(LitInt(13)));
    assume true;
    assert {:id "id267"} $Unbox(Map#Elements(c2#0)[$Box(LitInt(13))]): int == LitInt(15);
}



procedure {:verboseName "GeneralMaps7 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps7();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps7 (call)"} Call$$_module.__default.GeneralMaps7();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps7 (correctness)"} Impl$$_module.__default.GeneralMaps7() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$14#0#i#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps7 (correctness)"} Impl$$_module.__default.GeneralMaps7() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c3#0: Map
     where $Is(c3#0, TMap(TInt, TInt)) && $IsAlloc(c3#0, TMap(TInt, TInt), $Heap);
  var i#0: int;
  var i#prime#0: int;
  var ##x#0: int;
  var ##x#1: int;

    // AddMethodImpl: GeneralMaps7, Impl$$_module.__default.GeneralMaps7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(278,10)
    assume true;
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        havoc i#prime#0;
        assume true;
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < 100)
        {
            ##x#0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(i#0);
        }

        if (LitInt(0) <= i#0 && i#0 < 100 && _module.__default.Thirteen(i#0))
        {
        }

        if (LitInt(0) <= i#0 && i#0 < 100 && _module.__default.Thirteen(i#0))
        {
        }

        if (LitInt(0) <= i#0
           && i#0 < 100
           && _module.__default.Thirteen(i#0)
           && 
          LitInt(0) <= i#prime#0
           && i#prime#0 < 100
           && _module.__default.Thirteen(i#prime#0))
        {
            assert {:id "id268"} LitInt(5) != LitInt(5) || i#0 == i#prime#0;
        }
    }

    // End Comprehension WF check
    assume (forall i#1: int :: 
      { _module.__default.Thirteen(i#1) } 
      (LitInt(0) <= i#1 && i#1 < 100 ==> _module.__default.Thirteen#canCall(i#1))
         && (forall a#1#0#0: int :: 
          { _module.__default.Thirteen(a#1#0#0) } 
          LitInt(0) <= a#1#0#0 && a#1#0#0 < 100 && _module.__default.Thirteen(a#1#0#0)
             ==> LitInt(0) <= map$project$14#0#i#0(LitInt(5))
               && map$project$14#0#i#0(LitInt(5)) < 100
               && _module.__default.Thirteen(map$project$14#0#i#0(LitInt(5)))
               && LitInt(5) == LitInt(5)));
    c3#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt)
             && (exists a#0#0#0: int :: 
              LitInt(0) <= a#0#0#0
                 && a#0#0#0 < 100
                 && _module.__default.Thirteen(a#0#0#0)
                 && $Unbox($w#0): int == LitInt(5)))), 
      (lambda $w#0: Box :: $Box(map$project$14#0#i#0($Unbox($w#0): int))), 
      TMap(TInt, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(279,3)
    ##x#1 := LitInt(13);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.__default.Thirteen#canCall(LitInt(13));
    assume _module.__default.Thirteen#canCall(LitInt(13));
    assert {:id "id270"} {:subsumption 0} _module.__default.Thirteen#canCall(LitInt(13))
       ==> Lit(_module.__default.Thirteen(LitInt(13))) || LitInt(13) == LitInt(13);
    assume {:id "id271"} Lit(_module.__default.Thirteen(LitInt(13)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(280,3)
    assert {:id "id272"} {:subsumption 0} Set#IsMember(Map#Domain(c3#0), $Box(LitInt(5)));
    assume true;
    assert {:id "id273"} $Unbox(Map#Elements(c3#0)[$Box(LitInt(5))]): int == LitInt(13);
}



// function declaration for _module._default.P8
function _module.__default.P8(x#0: int) : bool
uses {
// definition axiom for _module.__default.P8 (revealed)
axiom {:id "id274"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.P8(x#0) } 
    _module.__default.P8#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P8(x#0) == Lit(true));
// definition axiom for _module.__default.P8 for all literals (revealed)
axiom {:id "id275"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.P8(LitInt(x#0)) } 
    _module.__default.P8#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.P8(LitInt(x#0)) == Lit(true));
}

function _module.__default.P8#canCall(x#0: int) : bool;

function _module.__default.P8#requires(int) : bool;

// #requires axiom for _module.__default.P8
axiom (forall x#0: int :: 
  { _module.__default.P8#requires(x#0) } 
  _module.__default.P8#requires(x#0) == true);

procedure {:verboseName "P8 (well-formedness)"} CheckWellformed$$_module.__default.P8(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps8 (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps8();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps8 (call)"} Call$$_module.__default.GeneralMaps8();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps8 (correctness)"} Impl$$_module.__default.GeneralMaps8() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$15#0#x#0(bool) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps8 (correctness)"} Impl$$_module.__default.GeneralMaps8() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c4#0: Map
     where $Is(c4#0, TMap(TBool, TInt)) && $IsAlloc(c4#0, TMap(TBool, TInt), $Heap);
  var x#0: int;
  var x#prime#0: int;
  var ##x#0: int;
  var ##x#1: int;

    // AddMethodImpl: GeneralMaps8, Impl$$_module.__default.GeneralMaps8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(286,16)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        havoc x#prime#0;
        assume true;
        if (Lit(true))
        {
            ##x#0 := x#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.P8#canCall(x#0);
        }

        if (Lit(true))
        {
        }

        if (Lit(true) && Lit(true))
        {
            assert {:id "id277"} _module.__default.P8(x#0) != _module.__default.P8(x#prime#0)
               || LitInt(6) == LitInt(6);
        }
    }

    // End Comprehension WF check
    assume (forall x#1: int :: 
      { _module.__default.P8(x#1) } 
      _module.__default.P8#canCall(x#1)
         && (forall a#1#0#0: int :: 
          { _module.__default.P8(a#1#0#0) } 
          Lit(true)
             ==> Lit(true)
               && _module.__default.P8(a#1#0#0)
                 == _module.__default.P8(map$project$15#0#x#0(_module.__default.P8(a#1#0#0)))));
    c4#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TBool)
             && (exists a#0#0#0: int :: 
              Lit(true) && $Unbox($w#0): bool == _module.__default.P8(a#0#0#0)))), 
      (lambda $w#0: Box :: $Box(LitInt(6))), 
      TMap(TBool, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(287,3)
    ##x#1 := LitInt(177);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.__default.P8#canCall(LitInt(177));
    assume _module.__default.P8#canCall(LitInt(177));
    assert {:id "id279"} {:subsumption 0} _module.__default.P8#canCall(LitInt(177))
       ==> Lit(_module.__default.P8(LitInt(177))) || Lit(true);
    assume {:id "id280"} Lit(_module.__default.P8(LitInt(177)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(288,3)
    assert {:id "id281"} {:subsumption 0} Set#IsMember(Map#Domain(c4#0), $Box(Lit(true)));
    assume true;
    assert {:id "id282"} $Unbox(Map#Elements(c4#0)[$Box(Lit(true))]): int == LitInt(6);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(289,3)
    assume true;
    assert {:id "id283"} !Set#IsMember(Map#Domain(c4#0), $Box(Lit(false)));
}



procedure {:verboseName "GeneralMaps8' (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps8_k();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps8' (call)"} Call$$_module.__default.GeneralMaps8_k();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps8' (correctness)"} Impl$$_module.__default.GeneralMaps8_k() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$16#0#x#0(bool) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps8' (correctness)"} Impl$$_module.__default.GeneralMaps8_k() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c4#0: Map
     where $Is(c4#0, TMap(TBool, TInt)) && $IsAlloc(c4#0, TMap(TBool, TInt), $Heap);
  var x#0: int;
  var x#prime#0: int;
  var ##x#0: int;
  var ##x#1: int;

    // AddMethodImpl: GeneralMaps8', Impl$$_module.__default.GeneralMaps8_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(293,16)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        havoc x#prime#0;
        assume true;
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assume _module.__default.P8#canCall(x#0);
        if (_module.__default.P8(x#0))
        {
        }

        if (_module.__default.P8(x#0))
        {
        }

        if (_module.__default.P8(x#0) && _module.__default.P8(x#prime#0))
        {
            assert {:id "id284"} Lit(true) != Lit(true) || LitInt(6) == LitInt(6);
        }
    }

    // End Comprehension WF check
    assume (forall x#1: int :: 
      { _module.__default.P8(x#1) } 
      _module.__default.P8#canCall(x#1)
         && (forall a#1#0#0: int :: 
          { _module.__default.P8(a#1#0#0) } 
          _module.__default.P8(a#1#0#0)
             ==> _module.__default.P8(map$project$16#0#x#0(Lit(true))) && Lit(true) == Lit(true)));
    c4#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TBool)
             && (exists a#0#0#0: int :: 
              _module.__default.P8(a#0#0#0) && $Unbox($w#0): bool == Lit(true)))), 
      (lambda $w#0: Box :: $Box(LitInt(6))), 
      TMap(TBool, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(294,3)
    ##x#1 := LitInt(177);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.__default.P8#canCall(LitInt(177));
    assume _module.__default.P8#canCall(LitInt(177));
    assert {:id "id286"} {:subsumption 0} _module.__default.P8#canCall(LitInt(177))
       ==> Lit(_module.__default.P8(LitInt(177))) || Lit(true);
    assume {:id "id287"} Lit(_module.__default.P8(LitInt(177)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(295,3)
    assert {:id "id288"} {:subsumption 0} Set#IsMember(Map#Domain(c4#0), $Box(Lit(true)));
    assume true;
    assert {:id "id289"} $Unbox(Map#Elements(c4#0)[$Box(Lit(true))]): int == LitInt(6);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(296,3)
    assume true;
    assert {:id "id290"} !Set#IsMember(Map#Domain(c4#0), $Box(Lit(false)));
}



procedure {:verboseName "GeneralMaps8'' (well-formedness)"} CheckWellFormed$$_module.__default.GeneralMaps8_k_k();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps8'' (call)"} Call$$_module.__default.GeneralMaps8_k_k();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GeneralMaps8'' (correctness)"} Impl$$_module.__default.GeneralMaps8_k_k() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$17#0#x#0(bool) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GeneralMaps8'' (correctness)"} Impl$$_module.__default.GeneralMaps8_k_k() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c4#0: Map
     where $Is(c4#0, TMap(TBool, TInt)) && $IsAlloc(c4#0, TMap(TBool, TInt), $Heap);
  var x#0: int;
  var x#prime#0: int;
  var ##x#0: int;

    // AddMethodImpl: GeneralMaps8'', Impl$$_module.__default.GeneralMaps8_k_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(300,16)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        havoc x#prime#0;
        assume true;
        if (LitInt(0) <= x#0)
        {
        }

        if (LitInt(0) <= x#0 && x#0 < 10)
        {
            ##x#0 := x#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.Thirteen#canCall(x#0);
        }

        if (LitInt(0) <= x#0 && x#0 < 10 && _module.__default.Thirteen(x#0))
        {
        }

        if (LitInt(0) <= x#0 && x#0 < 10 && _module.__default.Thirteen(x#0))
        {
        }

        if (LitInt(0) <= x#0
           && x#0 < 10
           && _module.__default.Thirteen(x#0)
           && 
          LitInt(0) <= x#prime#0
           && x#prime#0 < 10
           && _module.__default.Thirteen(x#prime#0))
        {
            assert {:id "id291"} Lit(true) != Lit(true) || LitInt(6) == LitInt(6);
        }
    }

    // End Comprehension WF check
    assume (forall x#1: int :: 
      { _module.__default.Thirteen(x#1) } 
      (LitInt(0) <= x#1 && x#1 < 10 ==> _module.__default.Thirteen#canCall(x#1))
         && (forall a#1#0#0: int :: 
          { _module.__default.Thirteen(a#1#0#0) } 
          LitInt(0) <= a#1#0#0 && a#1#0#0 < 10 && _module.__default.Thirteen(a#1#0#0)
             ==> LitInt(0) <= map$project$17#0#x#0(Lit(true))
               && map$project$17#0#x#0(Lit(true)) < 10
               && _module.__default.Thirteen(map$project$17#0#x#0(Lit(true)))
               && Lit(true) == Lit(true)));
    c4#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TBool)
             && (exists a#0#0#0: int :: 
              LitInt(0) <= a#0#0#0
                 && a#0#0#0 < 10
                 && _module.__default.Thirteen(a#0#0#0)
                 && $Unbox($w#0): bool == Lit(true)))), 
      (lambda $w#0: Box :: $Box(LitInt(6))), 
      TMap(TBool, TInt));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(301,3)
    assume true;
    assert {:id "id293"} Map#Equal(c4#0, Map#Empty(): Map);
}



procedure {:verboseName "UpdateValiditySeq (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValiditySeq();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpdateValiditySeq (call)"} Call$$_module.__default.UpdateValiditySeq();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateValiditySeq (correctness)"} Impl$$_module.__default.UpdateValiditySeq() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValiditySeq (correctness)"} Impl$$_module.__default.UpdateValiditySeq() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(s#0, TSeq(Tclass._System.nat()), $Heap);

    // AddMethodImpl: UpdateValiditySeq, Impl$$_module.__default.UpdateValiditySeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(307,19)
    assume true;
    assert {:id "id294"} $Is(LitInt(4), Tclass._System.nat());
    assert {:id "id295"} $Is(LitInt(4), Tclass._System.nat());
    assert {:id "id296"} $Is(LitInt(4), Tclass._System.nat());
    assert {:id "id297"} $Is(LitInt(4), Tclass._System.nat());
    assert {:id "id298"} $Is(LitInt(4), Tclass._System.nat());
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(4))), $Box(LitInt(4))), 
            $Box(LitInt(4))), 
          $Box(LitInt(4))), 
        $Box(LitInt(4))));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(308,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(309,7)
        assume true;
        assert {:id "id300"} 0 <= LitInt(10) && LitInt(10) < Seq#Length(s#0);
        assert {:id "id301"} $Is(LitInt(4), Tclass._System.nat());
        assume true;
        s#0 := Seq#Update(s#0, LitInt(10), $Box(LitInt(4)));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(311,7)
        assume true;
        assert {:id "id303"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s#0);
        assert {:id "id304"} $Is(LitInt(-5), Tclass._System.nat());
        assume true;
        s#0 := Seq#Update(s#0, LitInt(1), $Box(LitInt(-5)));
    }
}



procedure {:verboseName "UpdateValidityMultiset (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValidityMultiset();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpdateValidityMultiset (call)"} Call$$_module.__default.UpdateValidityMultiset();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateValidityMultiset (correctness)"} Impl$$_module.__default.UpdateValidityMultiset() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValidityMultiset (correctness)"} Impl$$_module.__default.UpdateValidityMultiset() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(Tclass._System.nat()))
       && $IsAlloc(s#0, TMultiSet(Tclass._System.nat()), $Heap);

    // AddMethodImpl: UpdateValidityMultiset, Impl$$_module.__default.UpdateValidityMultiset
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc s#0 /* where $Is(s#0, TMultiSet(Tclass._System.nat()))
       && $IsAlloc(s#0, TMultiSet(Tclass._System.nat()), $Heap) */;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(316,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(317,7)
        assume true;
        assert {:id "id306"} $Is(LitInt(-2), Tclass._System.nat());
        assert {:id "id307"} 0 <= LitInt(5);
        assume true;
        s#0 := MultiSet#UpdateMultiplicity(s#0, $Box(LitInt(-2)), LitInt(5));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(319,7)
        assume true;
        assert {:id "id309"} $Is(LitInt(2), Tclass._System.nat());
        assert {:id "id310"} 0 <= LitInt(-5);
        assume true;
        s#0 := MultiSet#UpdateMultiplicity(s#0, $Box(LitInt(2)), LitInt(-5));
    }
}



procedure {:verboseName "UpdateValidityMap (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValidityMap(mm#0: Map
       where $Is(mm#0, TMap(TInt, TInt)) && $IsAlloc(mm#0, TMap(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValidityMap (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValidityMap(mm#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var k#2: int;


    // AddMethodImpl: UpdateValidityMap, CheckWellFormed$$_module.__default.UpdateValidityMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc k#0;
    assume true;
    if (*)
    {
        assume {:id "id312"} Set#IsMember(Map#Domain(mm#0), $Box(k#0));
        assume {:id "id313"} LitInt(0) <= k#0;
    }
    else
    {
        assume {:id "id314"} Set#IsMember(Map#Domain(mm#0), $Box(k#0)) ==> LitInt(0) <= k#0;
    }

    assume {:id "id315"} (forall k#1: int :: 
      { Set#IsMember(Map#Domain(mm#0), $Box(k#1)) } 
      Set#IsMember(Map#Domain(mm#0), $Box(k#1)) ==> LitInt(0) <= k#1);
    havoc k#2;
    assume true;
    if (*)
    {
        assume {:id "id316"} Set#IsMember(Map#Domain(mm#0), $Box(k#2));
        assert {:id "id317"} Set#IsMember(Map#Domain(mm#0), $Box(k#2));
        assume {:id "id318"} LitInt(0) <= $Unbox(Map#Elements(mm#0)[$Box(k#2)]): int;
    }
    else
    {
        assume {:id "id319"} Set#IsMember(Map#Domain(mm#0), $Box(k#2))
           ==> LitInt(0) <= $Unbox(Map#Elements(mm#0)[$Box(k#2)]): int;
    }

    assume {:id "id320"} (forall k#3: int :: 
      { $Unbox(Map#Elements(mm#0)[$Box(k#3)]): int } 
        { Set#IsMember(Map#Domain(mm#0), $Box(k#3)) } 
      Set#IsMember(Map#Domain(mm#0), $Box(k#3))
         ==> LitInt(0) <= $Unbox(Map#Elements(mm#0)[$Box(k#3)]): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "UpdateValidityMap (call)"} Call$$_module.__default.UpdateValidityMap(mm#0: Map
       where $Is(mm#0, TMap(TInt, TInt)) && $IsAlloc(mm#0, TMap(TInt, TInt), $Heap));
  // user-defined preconditions
  requires {:id "id321"} (forall k#1: int :: 
    { Set#IsMember(Map#Domain(mm#0), $Box(k#1)) } 
    Set#IsMember(Map#Domain(mm#0), $Box(k#1)) ==> LitInt(0) <= k#1);
  requires {:id "id322"} (forall k#3: int :: 
    { $Unbox(Map#Elements(mm#0)[$Box(k#3)]): int } 
      { Set#IsMember(Map#Domain(mm#0), $Box(k#3)) } 
    Set#IsMember(Map#Domain(mm#0), $Box(k#3))
       ==> LitInt(0) <= $Unbox(Map#Elements(mm#0)[$Box(k#3)]): int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateValidityMap (correctness)"} Impl$$_module.__default.UpdateValidityMap(mm#0: Map
       where $Is(mm#0, TMap(TInt, TInt)) && $IsAlloc(mm#0, TMap(TInt, TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id323"} (forall k#1: int :: 
    { Set#IsMember(Map#Domain(mm#0), $Box(k#1)) } 
    Set#IsMember(Map#Domain(mm#0), $Box(k#1)) ==> LitInt(0) <= k#1);
  requires {:id "id324"} (forall k#3: int :: 
    { $Unbox(Map#Elements(mm#0)[$Box(k#3)]): int } 
      { Set#IsMember(Map#Domain(mm#0), $Box(k#3)) } 
    Set#IsMember(Map#Domain(mm#0), $Box(k#3))
       ==> LitInt(0) <= $Unbox(Map#Elements(mm#0)[$Box(k#3)]): int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValidityMap (correctness)"} Impl$$_module.__default.UpdateValidityMap(mm#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._System.nat(), Tclass._System.nat()))
       && $IsAlloc(m#0, TMap(Tclass._System.nat(), Tclass._System.nat()), $Heap);

    // AddMethodImpl: UpdateValidityMap, Impl$$_module.__default.UpdateValidityMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(326,24)
    assume true;
    assert {:id "id325"} $Is(mm#0, TMap(Tclass._System.nat(), Tclass._System.nat()));
    assume true;
    m#0 := mm#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(327,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(328,7)
        assume true;
        assert {:id "id327"} $Is(LitInt(-2), Tclass._System.nat());
        assert {:id "id328"} $Is(LitInt(10), Tclass._System.nat());
        assume true;
        m#0 := Map#Build(m#0, $Box(LitInt(-2)), $Box(LitInt(10)));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(330,7)
        assume true;
        assert {:id "id330"} $Is(LitInt(10), Tclass._System.nat());
        assert {:id "id331"} $Is(LitInt(-2), Tclass._System.nat());
        assume true;
        m#0 := Map#Build(m#0, $Box(LitInt(10)), $Box(LitInt(-2)));
    }
}



function Tclass._module.Elem?() : Ty
uses {
// Tclass._module.Elem? Tag
axiom Tag(Tclass._module.Elem?()) == Tagclass._module.Elem?
   && TagFamily(Tclass._module.Elem?()) == tytagFamily$Elem;
}

const unique Tagclass._module.Elem?: TyTag;

// Box/unbox axiom for Tclass._module.Elem?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Elem?()) } 
  $IsBox(bx, Tclass._module.Elem?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Elem?()));

function Tclass._module.Elem() : Ty
uses {
// Tclass._module.Elem Tag
axiom Tag(Tclass._module.Elem()) == Tagclass._module.Elem
   && TagFamily(Tclass._module.Elem()) == tytagFamily$Elem;
}

const unique Tagclass._module.Elem: TyTag;

// Box/unbox axiom for Tclass._module.Elem
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Elem()) } 
  $IsBox(bx, Tclass._module.Elem())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Elem()));

procedure {:verboseName "UpdateValiditySeqNull (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValiditySeqNull(d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpdateValiditySeqNull (call)"} Call$$_module.__default.UpdateValiditySeqNull(d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateValiditySeqNull (correctness)"} Impl$$_module.__default.UpdateValiditySeqNull(d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValiditySeqNull (correctness)"} Impl$$_module.__default.UpdateValiditySeqNull(d#0: ref, e#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass._module.Elem()))
       && $IsAlloc(s#0, TSeq(Tclass._module.Elem()), $Heap);

    // AddMethodImpl: UpdateValiditySeqNull, Impl$$_module.__default.UpdateValiditySeqNull
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(337,20)
    assume true;
    assume true;
    s#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), $Box(e#0)), $Box(e#0)), 
        $Box(e#0)), 
      $Box(e#0));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(338,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(339,7)
        assume true;
        assert {:id "id334"} 0 <= LitInt(10) && LitInt(10) < Seq#Length(s#0);
        assume true;
        s#0 := Seq#Update(s#0, LitInt(10), $Box(e#0));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(341,7)
        assume true;
        assert {:id "id336"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s#0);
        assert {:id "id337"} $Is(d#0, Tclass._module.Elem());
        assume true;
        s#0 := Seq#Update(s#0, LitInt(1), $Box(d#0));
    }
}



procedure {:verboseName "UpdateValidityMultisetNull (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValidityMultisetNull(d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpdateValidityMultisetNull (call)"} Call$$_module.__default.UpdateValidityMultisetNull(d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateValidityMultisetNull (correctness)"} Impl$$_module.__default.UpdateValidityMultisetNull(d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValidityMultisetNull (correctness)"} Impl$$_module.__default.UpdateValidityMultisetNull(d#0: ref, e#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(Tclass._module.Elem()))
       && $IsAlloc(s#0, TMultiSet(Tclass._module.Elem()), $Heap);

    // AddMethodImpl: UpdateValidityMultisetNull, Impl$$_module.__default.UpdateValidityMultisetNull
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc s#0 /* where $Is(s#0, TMultiSet(Tclass._module.Elem()))
       && $IsAlloc(s#0, TMultiSet(Tclass._module.Elem()), $Heap) */;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(346,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(347,7)
        assume true;
        assert {:id "id339"} $Is(d#0, Tclass._module.Elem());
        assert {:id "id340"} 0 <= LitInt(5);
        assume true;
        s#0 := MultiSet#UpdateMultiplicity(s#0, $Box(d#0), LitInt(5));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(349,7)
        assume true;
        assert {:id "id342"} 0 <= LitInt(-5);
        assume true;
        s#0 := MultiSet#UpdateMultiplicity(s#0, $Box(e#0), LitInt(-5));
    }
}



procedure {:verboseName "UpdateValidityMapNull (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValidityMapNull(mm#0: Map
       where $Is(mm#0, TMap(Tclass._module.Elem?(), Tclass._module.Elem?()))
         && $IsAlloc(mm#0, TMap(Tclass._module.Elem?(), Tclass._module.Elem?()), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValidityMapNull (well-formedness)"} CheckWellFormed$$_module.__default.UpdateValidityMapNull(mm#0: Map, d#0: ref, e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: ref;
  var newtype$check#0: ref;
  var k#2: ref;
  var newtype$check#1: ref;


    // AddMethodImpl: UpdateValidityMapNull, CheckWellFormed$$_module.__default.UpdateValidityMapNull
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc k#0;
    assume $Is(k#0, Tclass._module.Elem?()) && $IsAlloc(k#0, Tclass._module.Elem?(), $Heap);
    if (*)
    {
        assume {:id "id344"} Set#IsMember(Map#Domain(mm#0), $Box(k#0));
        newtype$check#0 := null;
        assume {:id "id345"} k#0 != null;
    }
    else
    {
        assume {:id "id346"} Set#IsMember(Map#Domain(mm#0), $Box(k#0)) ==> k#0 != null;
    }

    assume {:id "id347"} (forall k#1: ref :: 
      { Set#IsMember(Map#Domain(mm#0), $Box(k#1)) } 
      $Is(k#1, Tclass._module.Elem?())
         ==> 
        Set#IsMember(Map#Domain(mm#0), $Box(k#1))
         ==> k#1 != null);
    havoc k#2;
    assume $Is(k#2, Tclass._module.Elem?()) && $IsAlloc(k#2, Tclass._module.Elem?(), $Heap);
    if (*)
    {
        assume {:id "id348"} Set#IsMember(Map#Domain(mm#0), $Box(k#2));
        assert {:id "id349"} Set#IsMember(Map#Domain(mm#0), $Box(k#2));
        newtype$check#1 := null;
        assume {:id "id350"} $Unbox(Map#Elements(mm#0)[$Box(k#2)]): ref != null;
    }
    else
    {
        assume {:id "id351"} Set#IsMember(Map#Domain(mm#0), $Box(k#2))
           ==> $Unbox(Map#Elements(mm#0)[$Box(k#2)]): ref != null;
    }

    assume {:id "id352"} (forall k#3: ref :: 
      { $Unbox(Map#Elements(mm#0)[$Box(k#3)]): ref } 
        { Set#IsMember(Map#Domain(mm#0), $Box(k#3)) } 
      $Is(k#3, Tclass._module.Elem?())
         ==> 
        Set#IsMember(Map#Domain(mm#0), $Box(k#3))
         ==> $Unbox(Map#Elements(mm#0)[$Box(k#3)]): ref != null);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "UpdateValidityMapNull (call)"} Call$$_module.__default.UpdateValidityMapNull(mm#0: Map
       where $Is(mm#0, TMap(Tclass._module.Elem?(), Tclass._module.Elem?()))
         && $IsAlloc(mm#0, TMap(Tclass._module.Elem?(), Tclass._module.Elem?()), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap));
  // user-defined preconditions
  requires {:id "id353"} (forall k#1: ref :: 
    { Set#IsMember(Map#Domain(mm#0), $Box(k#1)) } 
    $Is(k#1, Tclass._module.Elem?())
       ==> 
      Set#IsMember(Map#Domain(mm#0), $Box(k#1))
       ==> k#1 != null);
  requires {:id "id354"} (forall k#3: ref :: 
    { $Unbox(Map#Elements(mm#0)[$Box(k#3)]): ref } 
      { Set#IsMember(Map#Domain(mm#0), $Box(k#3)) } 
    $Is(k#3, Tclass._module.Elem?())
       ==> 
      Set#IsMember(Map#Domain(mm#0), $Box(k#3))
       ==> $Unbox(Map#Elements(mm#0)[$Box(k#3)]): ref != null);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateValidityMapNull (correctness)"} Impl$$_module.__default.UpdateValidityMapNull(mm#0: Map
       where $Is(mm#0, TMap(Tclass._module.Elem?(), Tclass._module.Elem?()))
         && $IsAlloc(mm#0, TMap(Tclass._module.Elem?(), Tclass._module.Elem?()), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.Elem?()) && $IsAlloc(d#0, Tclass._module.Elem?(), $Heap), 
    e#0: ref
       where $Is(e#0, Tclass._module.Elem()) && $IsAlloc(e#0, Tclass._module.Elem(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id355"} (forall k#1: ref :: 
    { Set#IsMember(Map#Domain(mm#0), $Box(k#1)) } 
    $Is(k#1, Tclass._module.Elem?())
       ==> 
      Set#IsMember(Map#Domain(mm#0), $Box(k#1))
       ==> k#1 != null);
  requires {:id "id356"} (forall k#3: ref :: 
    { $Unbox(Map#Elements(mm#0)[$Box(k#3)]): ref } 
      { Set#IsMember(Map#Domain(mm#0), $Box(k#3)) } 
    $Is(k#3, Tclass._module.Elem?())
       ==> 
      Set#IsMember(Map#Domain(mm#0), $Box(k#3))
       ==> $Unbox(Map#Elements(mm#0)[$Box(k#3)]): ref != null);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateValidityMapNull (correctness)"} Impl$$_module.__default.UpdateValidityMapNull(mm#0: Map, d#0: ref, e#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.Elem(), Tclass._module.Elem()))
       && $IsAlloc(m#0, TMap(Tclass._module.Elem(), Tclass._module.Elem()), $Heap);

    // AddMethodImpl: UpdateValidityMapNull, Impl$$_module.__default.UpdateValidityMapNull
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(356,26)
    assume true;
    assert {:id "id357"} $Is(mm#0, TMap(Tclass._module.Elem(), Tclass._module.Elem()));
    assume true;
    m#0 := mm#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(357,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(358,7)
        assume true;
        assert {:id "id359"} $Is(d#0, Tclass._module.Elem());
        assume true;
        m#0 := Map#Build(m#0, $Box(d#0), $Box(e#0));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(360,7)
        assume true;
        assert {:id "id361"} $Is(d#0, Tclass._module.Elem());
        assume true;
        m#0 := Map#Build(m#0, $Box(e#0), $Box(d#0));
    }
}



procedure {:verboseName "TestMapSubtraction (well-formedness)"} CheckWellFormed$$_module.__default.TestMapSubtraction(m#0: Map
       where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapSubtraction (call)"} Call$$_module.__default.TestMapSubtraction(m#0: Map
       where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  // user-defined preconditions
  requires {:id "id367"} Set#IsMember(Map#Domain(m#0), $Box(x#0));
  requires {:id "id368"} Set#IsMember(s#0, $Box(x#0));
  requires {:id "id369"} Set#IsMember(Map#Domain(m#0), $Box(y#0));
  requires {:id "id370"} !Set#IsMember(s#0, $Box(y#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapSubtraction (correctness)"} Impl$$_module.__default.TestMapSubtraction(m#0: Map
       where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id371"} Set#IsMember(Map#Domain(m#0), $Box(x#0));
  requires {:id "id372"} Set#IsMember(s#0, $Box(x#0));
  requires {:id "id373"} Set#IsMember(Map#Domain(m#0), $Box(y#0));
  requires {:id "id374"} !Set#IsMember(s#0, $Box(y#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapSubtraction (correctness)"} Impl$$_module.__default.TestMapSubtraction(m#0: Map, s#0: Set, x#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#0: real;
  var yy#0: real;
  var $rhs#0: real;
  var $rhs#1: real;
  var m'#0: Map
     where $Is(m'#0, TMap(TInt, TReal)) && $IsAlloc(m'#0, TMap(TInt, TReal), $Heap);

    // AddMethodImpl: TestMapSubtraction, Impl$$_module.__default.TestMapSubtraction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(370,14)
    assume true;
    assume true;
    assert {:id "id375"} Set#IsMember(Map#Domain(m#0), $Box(x#0));
    assume true;
    $rhs#0 := $Unbox(Map#Elements(m#0)[$Box(x#0)]): real;
    assert {:id "id377"} Set#IsMember(Map#Domain(m#0), $Box(y#0));
    assume true;
    $rhs#1 := $Unbox(Map#Elements(m#0)[$Box(y#0)]): real;
    xx#0 := $rhs#0;
    yy#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(371,10)
    assume true;
    assume true;
    m'#0 := Map#Subtract(m#0, s#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(372,3)
    assume true;
    assert {:id "id382"} !Set#IsMember(Map#Domain(m'#0), $Box(x#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(373,3)
    assume true;
    assert {:id "id383"} Set#IsMember(Map#Domain(m'#0), $Box(y#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(374,3)
    assert {:id "id384"} {:subsumption 0} Set#IsMember(Map#Domain(m'#0), $Box(y#0));
    assume true;
    assert {:id "id385"} $Unbox(Map#Elements(m'#0)[$Box(y#0)]): real == yy#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(375,3)
    assume true;
    assert {:id "id386"} Set#Subset(Map#Domain(m'#0), Map#Domain(m#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(376,3)
    assume true;
    assert {:id "id387"} Set#Equal(Map#Domain(m'#0), Set#Difference(Map#Domain(m#0), s#0));
}



procedure {:verboseName "TestIMapSubtraction (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapSubtraction(m#0: IMap
       where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapSubtraction (call)"} Call$$_module.__default.TestIMapSubtraction(m#0: IMap
       where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  // user-defined preconditions
  requires {:id "id392"} IMap#Domain(m#0)[$Box(x#0)];
  requires {:id "id393"} Set#IsMember(s#0, $Box(x#0));
  requires {:id "id394"} IMap#Domain(m#0)[$Box(y#0)];
  requires {:id "id395"} !Set#IsMember(s#0, $Box(y#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapSubtraction (correctness)"} Impl$$_module.__default.TestIMapSubtraction(m#0: IMap
       where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id396"} IMap#Domain(m#0)[$Box(x#0)];
  requires {:id "id397"} Set#IsMember(s#0, $Box(x#0));
  requires {:id "id398"} IMap#Domain(m#0)[$Box(y#0)];
  requires {:id "id399"} !Set#IsMember(s#0, $Box(y#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapSubtraction (correctness)"} Impl$$_module.__default.TestIMapSubtraction(m#0: IMap, s#0: Set, x#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#0: real;
  var yy#0: real;
  var $rhs#0: real;
  var $rhs#1: real;
  var m'#0: IMap
     where $Is(m'#0, TIMap(TInt, TReal)) && $IsAlloc(m'#0, TIMap(TInt, TReal), $Heap);
  var u#0: int;

    // AddMethodImpl: TestIMapSubtraction, Impl$$_module.__default.TestIMapSubtraction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(383,14)
    assume true;
    assume true;
    assert {:id "id400"} IMap#Domain(m#0)[$Box(x#0)];
    assume true;
    $rhs#0 := $Unbox(IMap#Elements(m#0)[$Box(x#0)]): real;
    assert {:id "id402"} IMap#Domain(m#0)[$Box(y#0)];
    assume true;
    $rhs#1 := $Unbox(IMap#Elements(m#0)[$Box(y#0)]): real;
    xx#0 := $rhs#0;
    yy#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(384,10)
    assume true;
    assume true;
    m'#0 := IMap#Subtract(m#0, s#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(385,3)
    assume true;
    assert {:id "id407"} !IMap#Domain(m'#0)[$Box(x#0)];
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(386,3)
    assume true;
    assert {:id "id408"} IMap#Domain(m'#0)[$Box(y#0)];
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(387,3)
    assert {:id "id409"} {:subsumption 0} IMap#Domain(m'#0)[$Box(y#0)];
    assume true;
    assert {:id "id410"} $Unbox(IMap#Elements(m'#0)[$Box(y#0)]): real == yy#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(388,3)
    assume true;
    assert {:id "id411"} ISet#Subset(IMap#Domain(m'#0), IMap#Domain(m#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(389,3)
    // Begin Comprehension WF check
    havoc u#0;
    if (true)
    {
        if (Set#IsMember(s#0, $Box(u#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id412"} ISet#Equal(IMap#Domain(m'#0), 
      ISet#Difference(IMap#Domain(m#0), 
        (lambda $y#1: Box :: $IsBox($y#1, TInt) && Set#IsMember(s#0, $y#1))));
}



procedure {:verboseName "TestMapUnion (well-formedness)"} CheckWellFormed$$_module.__default.TestMapUnion(m0#0: Map
       where $Is(m0#0, TMap(TInt, TReal)) && $IsAlloc(m0#0, TMap(TInt, TReal), $Heap), 
    m1#0: Map
       where $Is(m1#0, TMap(TInt, TReal)) && $IsAlloc(m1#0, TMap(TInt, TReal), $Heap), 
    m2#0: Map
       where $Is(m2#0, TMap(TInt, TReal)) && $IsAlloc(m2#0, TMap(TInt, TReal), $Heap), 
    x#0: int, 
    y#0: int, 
    z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapUnion (call)"} Call$$_module.__default.TestMapUnion(m0#0: Map
       where $Is(m0#0, TMap(TInt, TReal)) && $IsAlloc(m0#0, TMap(TInt, TReal), $Heap), 
    m1#0: Map
       where $Is(m1#0, TMap(TInt, TReal)) && $IsAlloc(m1#0, TMap(TInt, TReal), $Heap), 
    m2#0: Map
       where $Is(m2#0, TMap(TInt, TReal)) && $IsAlloc(m2#0, TMap(TInt, TReal), $Heap), 
    x#0: int, 
    y#0: int, 
    z#0: int);
  // user-defined preconditions
  requires {:id "id416"} Set#IsMember(Map#Domain(m0#0), $Box(x#0));
  requires {:id "id417"} Set#IsMember(Map#Domain(m1#0), $Box(y#0));
  requires {:id "id418"} Set#IsMember(Map#Domain(m2#0), $Box(z#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapUnion (correctness)"} Impl$$_module.__default.TestMapUnion(m0#0: Map
       where $Is(m0#0, TMap(TInt, TReal)) && $IsAlloc(m0#0, TMap(TInt, TReal), $Heap), 
    m1#0: Map
       where $Is(m1#0, TMap(TInt, TReal)) && $IsAlloc(m1#0, TMap(TInt, TReal), $Heap), 
    m2#0: Map
       where $Is(m2#0, TMap(TInt, TReal)) && $IsAlloc(m2#0, TMap(TInt, TReal), $Heap), 
    x#0: int, 
    y#0: int, 
    z#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id419"} Set#IsMember(Map#Domain(m0#0), $Box(x#0));
  requires {:id "id420"} Set#IsMember(Map#Domain(m1#0), $Box(y#0));
  requires {:id "id421"} Set#IsMember(Map#Domain(m2#0), $Box(z#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapUnion (correctness)"} Impl$$_module.__default.TestMapUnion(m0#0: Map, m1#0: Map, m2#0: Map, x#0: int, y#0: int, z#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#0: real;
  var yy#0: real;
  var zz#0: real;
  var $rhs#0: real;
  var $rhs#1: real;
  var $rhs#2: real;
  var m#0: Map
     where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap);
  var u#0: int;

    // AddMethodImpl: TestMapUnion, Impl$$_module.__default.TestMapUnion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(395,18)
    assume true;
    assume true;
    assume true;
    assert {:id "id422"} Set#IsMember(Map#Domain(m0#0), $Box(x#0));
    assume true;
    $rhs#0 := $Unbox(Map#Elements(m0#0)[$Box(x#0)]): real;
    assert {:id "id424"} Set#IsMember(Map#Domain(m1#0), $Box(y#0));
    assume true;
    $rhs#1 := $Unbox(Map#Elements(m1#0)[$Box(y#0)]): real;
    assert {:id "id426"} Set#IsMember(Map#Domain(m2#0), $Box(z#0));
    assume true;
    $rhs#2 := $Unbox(Map#Elements(m2#0)[$Box(z#0)]): real;
    xx#0 := $rhs#0;
    yy#0 := $rhs#1;
    zz#0 := $rhs#2;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(396,9)
    assume true;
    assume true;
    m#0 := Map#Merge(Map#Merge(m0#0, m1#0), m2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(397,3)
    if (Set#IsMember(Map#Domain(m#0), $Box(x#0)))
    {
    }

    if (Set#IsMember(Map#Domain(m#0), $Box(x#0))
       && Set#IsMember(Map#Domain(m#0), $Box(y#0)))
    {
    }

    assume true;
    assert {:id "id432"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(x#0));
    assert {:id "id433"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(y#0));
    assert {:id "id434"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(z#0));
    assume {:id "id435"} Set#IsMember(Map#Domain(m#0), $Box(x#0))
       && Set#IsMember(Map#Domain(m#0), $Box(y#0))
       && Set#IsMember(Map#Domain(m#0), $Box(z#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(398,3)
    assert {:id "id436"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(x#0));
    if ($Unbox(Map#Elements(m#0)[$Box(x#0)]): real != xx#0)
    {
    }

    if (!($Unbox(Map#Elements(m#0)[$Box(x#0)]): real == xx#0
       || Set#IsMember(Map#Domain(m1#0), $Box(x#0))))
    {
    }

    assume true;
    assert {:id "id437"} $Unbox(Map#Elements(m#0)[$Box(x#0)]): real == xx#0
       || Set#IsMember(Map#Domain(m1#0), $Box(x#0))
       || Set#IsMember(Map#Domain(m2#0), $Box(x#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(399,3)
    assert {:id "id438"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(y#0));
    if ($Unbox(Map#Elements(m#0)[$Box(y#0)]): real != yy#0)
    {
    }

    assume true;
    assert {:id "id439"} $Unbox(Map#Elements(m#0)[$Box(y#0)]): real == yy#0
       || Set#IsMember(Map#Domain(m2#0), $Box(y#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(400,3)
    assert {:id "id440"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(z#0));
    assume true;
    assert {:id "id441"} $Unbox(Map#Elements(m#0)[$Box(z#0)]): real == zz#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(401,3)
    // Begin Comprehension WF check
    havoc u#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id442"} (forall u#1: int :: 
      { Set#IsMember(Set#Union(Set#Union(Map#Domain(m0#0), Map#Domain(m1#0)), Map#Domain(m2#0)), 
          $Box(u#1)) } 
        { Set#IsMember(Map#Domain(m#0), $Box(u#1)) } 
      Set#IsMember(Map#Domain(m#0), $Box(u#1))
         <==> Set#IsMember(Set#Union(Set#Union(Map#Domain(m0#0), Map#Domain(m1#0)), Map#Domain(m2#0)), 
          $Box(u#1)));
}



procedure {:verboseName "TestIMapUnion (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapUnion(m0#0: IMap
       where $Is(m0#0, TIMap(TInt, TReal)) && $IsAlloc(m0#0, TIMap(TInt, TReal), $Heap), 
    m1#0: IMap
       where $Is(m1#0, TIMap(TInt, TReal)) && $IsAlloc(m1#0, TIMap(TInt, TReal), $Heap), 
    m2#0: IMap
       where $Is(m2#0, TIMap(TInt, TReal)) && $IsAlloc(m2#0, TIMap(TInt, TReal), $Heap), 
    x#0: int, 
    y#0: int, 
    z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapUnion (call)"} Call$$_module.__default.TestIMapUnion(m0#0: IMap
       where $Is(m0#0, TIMap(TInt, TReal)) && $IsAlloc(m0#0, TIMap(TInt, TReal), $Heap), 
    m1#0: IMap
       where $Is(m1#0, TIMap(TInt, TReal)) && $IsAlloc(m1#0, TIMap(TInt, TReal), $Heap), 
    m2#0: IMap
       where $Is(m2#0, TIMap(TInt, TReal)) && $IsAlloc(m2#0, TIMap(TInt, TReal), $Heap), 
    x#0: int, 
    y#0: int, 
    z#0: int);
  // user-defined preconditions
  requires {:id "id446"} IMap#Domain(m0#0)[$Box(x#0)];
  requires {:id "id447"} IMap#Domain(m1#0)[$Box(y#0)];
  requires {:id "id448"} IMap#Domain(m2#0)[$Box(z#0)];
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapUnion (correctness)"} Impl$$_module.__default.TestIMapUnion(m0#0: IMap
       where $Is(m0#0, TIMap(TInt, TReal)) && $IsAlloc(m0#0, TIMap(TInt, TReal), $Heap), 
    m1#0: IMap
       where $Is(m1#0, TIMap(TInt, TReal)) && $IsAlloc(m1#0, TIMap(TInt, TReal), $Heap), 
    m2#0: IMap
       where $Is(m2#0, TIMap(TInt, TReal)) && $IsAlloc(m2#0, TIMap(TInt, TReal), $Heap), 
    x#0: int, 
    y#0: int, 
    z#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id449"} IMap#Domain(m0#0)[$Box(x#0)];
  requires {:id "id450"} IMap#Domain(m1#0)[$Box(y#0)];
  requires {:id "id451"} IMap#Domain(m2#0)[$Box(z#0)];
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapUnion (correctness)"} Impl$$_module.__default.TestIMapUnion(m0#0: IMap, m1#0: IMap, m2#0: IMap, x#0: int, y#0: int, z#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#0: real;
  var yy#0: real;
  var zz#0: real;
  var $rhs#0: real;
  var $rhs#1: real;
  var $rhs#2: real;
  var m#0: IMap
     where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap);
  var u#0: int;

    // AddMethodImpl: TestIMapUnion, Impl$$_module.__default.TestIMapUnion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(407,18)
    assume true;
    assume true;
    assume true;
    assert {:id "id452"} IMap#Domain(m0#0)[$Box(x#0)];
    assume true;
    $rhs#0 := $Unbox(IMap#Elements(m0#0)[$Box(x#0)]): real;
    assert {:id "id454"} IMap#Domain(m1#0)[$Box(y#0)];
    assume true;
    $rhs#1 := $Unbox(IMap#Elements(m1#0)[$Box(y#0)]): real;
    assert {:id "id456"} IMap#Domain(m2#0)[$Box(z#0)];
    assume true;
    $rhs#2 := $Unbox(IMap#Elements(m2#0)[$Box(z#0)]): real;
    xx#0 := $rhs#0;
    yy#0 := $rhs#1;
    zz#0 := $rhs#2;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(408,9)
    assume true;
    assume true;
    m#0 := IMap#Merge(IMap#Merge(m0#0, m1#0), m2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(409,3)
    if (IMap#Domain(m#0)[$Box(x#0)])
    {
    }

    if (IMap#Domain(m#0)[$Box(x#0)] && IMap#Domain(m#0)[$Box(y#0)])
    {
    }

    assume true;
    assert {:id "id462"} {:subsumption 0} IMap#Domain(m#0)[$Box(x#0)];
    assert {:id "id463"} {:subsumption 0} IMap#Domain(m#0)[$Box(y#0)];
    assert {:id "id464"} {:subsumption 0} IMap#Domain(m#0)[$Box(z#0)];
    assume {:id "id465"} IMap#Domain(m#0)[$Box(x#0)]
       && IMap#Domain(m#0)[$Box(y#0)]
       && IMap#Domain(m#0)[$Box(z#0)];
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(410,3)
    assert {:id "id466"} {:subsumption 0} IMap#Domain(m#0)[$Box(x#0)];
    if ($Unbox(IMap#Elements(m#0)[$Box(x#0)]): real != xx#0)
    {
    }

    if (!($Unbox(IMap#Elements(m#0)[$Box(x#0)]): real == xx#0
       || IMap#Domain(m1#0)[$Box(x#0)]))
    {
    }

    assume true;
    assert {:id "id467"} $Unbox(IMap#Elements(m#0)[$Box(x#0)]): real == xx#0
       || IMap#Domain(m1#0)[$Box(x#0)]
       || IMap#Domain(m2#0)[$Box(x#0)];
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(411,3)
    assert {:id "id468"} {:subsumption 0} IMap#Domain(m#0)[$Box(y#0)];
    if ($Unbox(IMap#Elements(m#0)[$Box(y#0)]): real != yy#0)
    {
    }

    assume true;
    assert {:id "id469"} $Unbox(IMap#Elements(m#0)[$Box(y#0)]): real == yy#0
       || IMap#Domain(m2#0)[$Box(y#0)];
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(412,3)
    assert {:id "id470"} {:subsumption 0} IMap#Domain(m#0)[$Box(z#0)];
    assume true;
    assert {:id "id471"} $Unbox(IMap#Elements(m#0)[$Box(z#0)]): real == zz#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(413,3)
    // Begin Comprehension WF check
    havoc u#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id472"} (forall u#1: int :: 
      { ISet#Union(ISet#Union(IMap#Domain(m0#0), IMap#Domain(m1#0)), IMap#Domain(m2#0))[$Box(u#1)] } 
        { IMap#Domain(m#0)[$Box(u#1)] } 
      IMap#Domain(m#0)[$Box(u#1)]
         <==> ISet#Union(ISet#Union(IMap#Domain(m0#0), IMap#Domain(m1#0)), IMap#Domain(m2#0))[$Box(u#1)]);
}



procedure {:verboseName "FailingMapOperations (well-formedness)"} CheckWellFormed$$_module.__default.FailingMapOperations(m#0: Map
       where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(TInt, TReal)) && $IsAlloc(n#0, TMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingMapOperations (call)"} Call$$_module.__default.FailingMapOperations(m#0: Map
       where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(TInt, TReal)) && $IsAlloc(n#0, TMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  // user-defined preconditions
  requires {:id "id475"} Set#IsMember(Map#Domain(m#0), $Box(x#0));
  requires {:id "id476"} Set#IsMember(Map#Domain(n#0), $Box(y#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingMapOperations (correctness)"} Impl$$_module.__default.FailingMapOperations(m#0: Map
       where $Is(m#0, TMap(TInt, TReal)) && $IsAlloc(m#0, TMap(TInt, TReal), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(TInt, TReal)) && $IsAlloc(n#0, TMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id477"} Set#IsMember(Map#Domain(m#0), $Box(x#0));
  requires {:id "id478"} Set#IsMember(Map#Domain(n#0), $Box(y#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailingMapOperations (correctness)"} Impl$$_module.__default.FailingMapOperations(m#0: Map, n#0: Map, s#0: Set, x#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#0: real;
  var yy#0: real;
  var $rhs#0: real;
  var $rhs#1: real;
  var m'#0_0: Map
     where $Is(m'#0_0, TMap(TInt, TReal)) && $IsAlloc(m'#0_0, TMap(TInt, TReal), $Heap);
  var m'#1_0: Map
     where $Is(m'#1_0, TMap(TInt, TReal)) && $IsAlloc(m'#1_0, TMap(TInt, TReal), $Heap);

    // AddMethodImpl: FailingMapOperations, Impl$$_module.__default.FailingMapOperations
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(419,14)
    assume true;
    assume true;
    assert {:id "id479"} Set#IsMember(Map#Domain(m#0), $Box(x#0));
    assume true;
    $rhs#0 := $Unbox(Map#Elements(m#0)[$Box(x#0)]): real;
    assert {:id "id481"} Set#IsMember(Map#Domain(n#0), $Box(y#0));
    assume true;
    $rhs#1 := $Unbox(Map#Elements(n#0)[$Box(y#0)]): real;
    xx#0 := $rhs#0;
    yy#0 := $rhs#1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(420,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(421,12)
        assume true;
        assume true;
        m'#0_0 := Map#Subtract(m#0, s#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(422,5)
        if (Set#IsMember(Map#Domain(m'#0_0), $Box(x#0)))
        {
            assert {:id "id486"} {:subsumption 0} Set#IsMember(Map#Domain(m'#0_0), $Box(x#0));
        }

        assume true;
        assert {:id "id487"} {:subsumption 0} Set#IsMember(Map#Domain(m'#0_0), $Box(x#0))
           ==> $Unbox(Map#Elements(m'#0_0)[$Box(x#0)]): real == xx#0;
        assume {:id "id488"} Set#IsMember(Map#Domain(m'#0_0), $Box(x#0))
           ==> $Unbox(Map#Elements(m'#0_0)[$Box(x#0)]): real == xx#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(423,5)
        if (!Set#IsMember(Map#Domain(m'#0_0), $Box(x#0)))
        {
        }

        assume true;
        assert {:id "id489"} {:subsumption 0} !Set#IsMember(Map#Domain(m'#0_0), $Box(x#0)) ==> Set#IsMember(s#0, $Box(x#0));
        assume {:id "id490"} !Set#IsMember(Map#Domain(m'#0_0), $Box(x#0)) ==> Set#IsMember(s#0, $Box(x#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(424,5)
        assume true;
        assert {:id "id491"} Set#IsMember(Map#Domain(m'#0_0), $Box(x#0));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(426,12)
        assume true;
        assume true;
        m'#1_0 := Map#Merge(m#0, n#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(427,5)
        assert {:id "id493"} {:subsumption 0} Set#IsMember(Map#Domain(m'#1_0), $Box(y#0));
        assert {:id "id494"} {:subsumption 0} Set#IsMember(Map#Domain(n#0), $Box(y#0));
        assume true;
        assert {:id "id495"} $Unbox(Map#Elements(m'#1_0)[$Box(y#0)]): real
           == $Unbox(Map#Elements(n#0)[$Box(y#0)]): real;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(428,5)
        if (!Set#IsMember(Map#Domain(n#0), $Box(x#0)))
        {
            assert {:id "id496"} {:subsumption 0} Set#IsMember(Map#Domain(m'#1_0), $Box(x#0));
            assert {:id "id497"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(x#0));
        }

        assume true;
        assert {:id "id498"} {:subsumption 0} !Set#IsMember(Map#Domain(n#0), $Box(x#0))
           ==> $Unbox(Map#Elements(m'#1_0)[$Box(x#0)]): real
             == $Unbox(Map#Elements(m#0)[$Box(x#0)]): real;
        assume {:id "id499"} !Set#IsMember(Map#Domain(n#0), $Box(x#0))
           ==> $Unbox(Map#Elements(m'#1_0)[$Box(x#0)]): real
             == $Unbox(Map#Elements(m#0)[$Box(x#0)]): real;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(429,5)
        assert {:id "id500"} {:subsumption 0} Set#IsMember(Map#Domain(m'#1_0), $Box(x#0));
        assert {:id "id501"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(x#0));
        assume true;
        assert {:id "id502"} $Unbox(Map#Elements(m'#1_0)[$Box(x#0)]): real
           == $Unbox(Map#Elements(m#0)[$Box(x#0)]): real;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(430,5)
        assume true;
        assert {:id "id503"} Set#IsMember(Map#Domain(m#0), $Box(y#0));
    }
}



procedure {:verboseName "FailingIMapOperations (well-formedness)"} CheckWellFormed$$_module.__default.FailingIMapOperations(m#0: IMap
       where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap), 
    n#0: IMap
       where $Is(n#0, TIMap(TInt, TReal)) && $IsAlloc(n#0, TIMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingIMapOperations (call)"} Call$$_module.__default.FailingIMapOperations(m#0: IMap
       where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap), 
    n#0: IMap
       where $Is(n#0, TIMap(TInt, TReal)) && $IsAlloc(n#0, TIMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int);
  // user-defined preconditions
  requires {:id "id506"} IMap#Domain(m#0)[$Box(x#0)];
  requires {:id "id507"} IMap#Domain(n#0)[$Box(y#0)];
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingIMapOperations (correctness)"} Impl$$_module.__default.FailingIMapOperations(m#0: IMap
       where $Is(m#0, TIMap(TInt, TReal)) && $IsAlloc(m#0, TIMap(TInt, TReal), $Heap), 
    n#0: IMap
       where $Is(n#0, TIMap(TInt, TReal)) && $IsAlloc(n#0, TIMap(TInt, TReal), $Heap), 
    s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap), 
    x#0: int, 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id508"} IMap#Domain(m#0)[$Box(x#0)];
  requires {:id "id509"} IMap#Domain(n#0)[$Box(y#0)];
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailingIMapOperations (correctness)"} Impl$$_module.__default.FailingIMapOperations(m#0: IMap, n#0: IMap, s#0: Set, x#0: int, y#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xx#0: real;
  var yy#0: real;
  var $rhs#0: real;
  var $rhs#1: real;
  var m'#0_0: IMap
     where $Is(m'#0_0, TIMap(TInt, TReal)) && $IsAlloc(m'#0_0, TIMap(TInt, TReal), $Heap);
  var m'#1_0: IMap
     where $Is(m'#1_0, TIMap(TInt, TReal)) && $IsAlloc(m'#1_0, TIMap(TInt, TReal), $Heap);

    // AddMethodImpl: FailingIMapOperations, Impl$$_module.__default.FailingIMapOperations
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(437,14)
    assume true;
    assume true;
    assert {:id "id510"} IMap#Domain(m#0)[$Box(x#0)];
    assume true;
    $rhs#0 := $Unbox(IMap#Elements(m#0)[$Box(x#0)]): real;
    assert {:id "id512"} IMap#Domain(n#0)[$Box(y#0)];
    assume true;
    $rhs#1 := $Unbox(IMap#Elements(n#0)[$Box(y#0)]): real;
    xx#0 := $rhs#0;
    yy#0 := $rhs#1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(438,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(439,12)
        assume true;
        assume true;
        m'#0_0 := IMap#Subtract(m#0, s#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(440,5)
        if (IMap#Domain(m'#0_0)[$Box(x#0)])
        {
            assert {:id "id517"} {:subsumption 0} IMap#Domain(m'#0_0)[$Box(x#0)];
        }

        assume true;
        assert {:id "id518"} {:subsumption 0} IMap#Domain(m'#0_0)[$Box(x#0)]
           ==> $Unbox(IMap#Elements(m'#0_0)[$Box(x#0)]): real == xx#0;
        assume {:id "id519"} IMap#Domain(m'#0_0)[$Box(x#0)]
           ==> $Unbox(IMap#Elements(m'#0_0)[$Box(x#0)]): real == xx#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(441,5)
        if (!IMap#Domain(m'#0_0)[$Box(x#0)])
        {
        }

        assume true;
        assert {:id "id520"} {:subsumption 0} !IMap#Domain(m'#0_0)[$Box(x#0)] ==> Set#IsMember(s#0, $Box(x#0));
        assume {:id "id521"} !IMap#Domain(m'#0_0)[$Box(x#0)] ==> Set#IsMember(s#0, $Box(x#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(442,5)
        assume true;
        assert {:id "id522"} IMap#Domain(m'#0_0)[$Box(x#0)];
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(444,12)
        assume true;
        assume true;
        m'#1_0 := IMap#Merge(m#0, n#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(445,5)
        assert {:id "id524"} {:subsumption 0} IMap#Domain(m'#1_0)[$Box(y#0)];
        assert {:id "id525"} {:subsumption 0} IMap#Domain(n#0)[$Box(y#0)];
        assume true;
        assert {:id "id526"} $Unbox(IMap#Elements(m'#1_0)[$Box(y#0)]): real
           == $Unbox(IMap#Elements(n#0)[$Box(y#0)]): real;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(446,5)
        if (!IMap#Domain(n#0)[$Box(x#0)])
        {
            assert {:id "id527"} {:subsumption 0} IMap#Domain(m'#1_0)[$Box(x#0)];
            assert {:id "id528"} {:subsumption 0} IMap#Domain(m#0)[$Box(x#0)];
        }

        assume true;
        assert {:id "id529"} {:subsumption 0} !IMap#Domain(n#0)[$Box(x#0)]
           ==> $Unbox(IMap#Elements(m'#1_0)[$Box(x#0)]): real
             == $Unbox(IMap#Elements(m#0)[$Box(x#0)]): real;
        assume {:id "id530"} !IMap#Domain(n#0)[$Box(x#0)]
           ==> $Unbox(IMap#Elements(m'#1_0)[$Box(x#0)]): real
             == $Unbox(IMap#Elements(m#0)[$Box(x#0)]): real;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(447,5)
        assert {:id "id531"} {:subsumption 0} IMap#Domain(m'#1_0)[$Box(x#0)];
        assert {:id "id532"} {:subsumption 0} IMap#Domain(m#0)[$Box(x#0)];
        assume true;
        assert {:id "id533"} $Unbox(IMap#Elements(m'#1_0)[$Box(x#0)]): real
           == $Unbox(IMap#Elements(m#0)[$Box(x#0)]): real;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(448,5)
        assume true;
        assert {:id "id534"} IMap#Domain(m#0)[$Box(y#0)];
    }
}



function Tclass._module.MyClass() : Ty
uses {
// Tclass._module.MyClass Tag
axiom Tag(Tclass._module.MyClass()) == Tagclass._module.MyClass
   && TagFamily(Tclass._module.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass: TyTag;

// Box/unbox axiom for Tclass._module.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass()) } 
  $IsBox(bx, Tclass._module.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass()));

procedure {:verboseName "CommonUseCase0 (well-formedness)"} CheckWellFormed$$_module.__default.CommonUseCase0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CommonUseCase0 (call)"} Call$$_module.__default.CommonUseCase0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CommonUseCase0 (correctness)"} Impl$$_module.__default.CommonUseCase0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CommonUseCase0 (correctness)"} Impl$$_module.__default.CommonUseCase0(m#0: Map) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: Map
     where $Is(m#1, TMap(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(m#1, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#k#0_0: bool;
  var k#0_0: ref
     where defass#k#0_0
       ==> $Is(k#0_0, Tclass._module.MyClass())
         && $IsAlloc(k#0_0, Tclass._module.MyClass(), $Heap);
  var k#0_1: ref;
  var v#0_0: bv3;

    // AddMethodImpl: CommonUseCase0, Impl$$_module.__default.CommonUseCase0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(457,5)
    assume true;
    assert {:id "id535"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    s#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(458,9)
    assume true;
    assume true;
    m#1 := m#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(459,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Map#Domain(m#1);
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
      free invariant Set#Subset(Map#Domain(m#1), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Map#Equal(m#1, Map#Empty(): Map))
        {
            break;
        }

        $decr$loop#00 := Map#Domain(m#1);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(462,11)
        havoc k#0_1;
        if ($Is(k#0_1, Tclass._module.MyClass())
           && $IsAlloc(k#0_1, Tclass._module.MyClass(), $Heap))
        {
            assume true;
        }

        assert {:id "id538"} ($Is(null, Tclass._module.MyClass())
             && Set#IsMember(Map#Domain(m#1), $Box(null)))
           || (exists $as#k0_0#0_0: ref :: 
            $Is($as#k0_0#0_0, Tclass._module.MyClass())
               && Set#IsMember(Map#Domain(m#1), $Box($as#k0_0#0_0)));
        defass#k#0_0 := true;
        havoc k#0_0;
        assume {:id "id539"} Set#IsMember(Map#Domain(m#1), $Box(k#0_0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(463,11)
        assume true;
        assert {:id "id540"} defass#k#0_0;
        assert {:id "id541"} Set#IsMember(Map#Domain(m#1), $Box(k#0_0));
        assume true;
        v#0_0 := $Unbox(Map#Elements(m#1)[$Box(k#0_0)]): bv3;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(464,7)
        assume true;
        assert {:id "id543"} $Is(s#0 + nat_from_bv3(v#0_0), Tclass._System.nat());
        assume true;
        s#0 := s#0 + nat_from_bv3(v#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(465,7)
        assume true;
        assert {:id "id545"} defass#k#0_0;
        assume true;
        m#1 := Map#Subtract(m#1, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(459,3)
        assert {:id "id547"} Set#Subset(Map#Domain(m#1), $decr$loop#00)
           && !Set#Subset($decr$loop#00, Map#Domain(m#1));
    }
}



procedure {:verboseName "CommonUseCase1 (well-formedness)"} CheckWellFormed$$_module.__default.CommonUseCase1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CommonUseCase1 (call)"} Call$$_module.__default.CommonUseCase1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CommonUseCase1 (correctness)"} Impl$$_module.__default.CommonUseCase1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CommonUseCase1 (correctness)"} Impl$$_module.__default.CommonUseCase1(m#0: Map) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: Map
     where $Is(m#1, TMap(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(m#1, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#kv#0_0: bool;
  var kv#0_0: DatatypeType
     where defass#kv#0_0
       ==> $Is(kv#0_0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(kv#0_0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var kv#0_1: DatatypeType;
  var k#0_0: ref;
  var v#0_0: bv3;
  var let#0_0#0#0: DatatypeType;

    // AddMethodImpl: CommonUseCase1, Impl$$_module.__default.CommonUseCase1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(471,5)
    assume true;
    assert {:id "id548"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    s#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(472,9)
    assume true;
    assume true;
    m#1 := m#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(473,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Map#Domain(m#1);
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
      free invariant Set#Subset(Map#Domain(m#1), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Map#Equal(m#1, Map#Empty(): Map))
        {
            break;
        }

        $decr$loop#00 := Map#Domain(m#1);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(476,12)
        havoc kv#0_1;
        if ($Is(kv#0_1, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
           && $IsAlloc(kv#0_1, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)), $Heap))
        {
            assume true;
        }

        assert {:id "id551"} (exists $as#kv0_0#0_0: DatatypeType :: 
          $Is($as#kv0_0#0_0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
             && Set#IsMember(Map#Items(m#1), $Box($as#kv0_0#0_0)));
        defass#kv#0_0 := true;
        havoc kv#0_0;
        assume {:id "id552"} Set#IsMember(Map#Items(m#1), $Box(kv#0_0));
        havoc k#0_0;
        assume $Is(k#0_0, Tclass._module.MyClass())
           && $IsAlloc(k#0_0, Tclass._module.MyClass(), $Heap);
        havoc v#0_0;
        assert {:id "id553"} defass#kv#0_0;
        assume {:id "id554"} let#0_0#0#0 == kv#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)));
        assume _System.Tuple2.___hMake2_q(let#0_0#0#0);
        assume {:id "id555"} #_System._tuple#2._#Make2($Box(k#0_0), $Box(v#0_0)) == let#0_0#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(478,7)
        assume true;
        assert {:id "id556"} $Is(s#0 + nat_from_bv3(v#0_0), Tclass._System.nat());
        assume true;
        s#0 := s#0 + nat_from_bv3(v#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(479,7)
        assume true;
        assume true;
        m#1 := Map#Subtract(m#1, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(473,3)
        assert {:id "id559"} Set#Subset(Map#Domain(m#1), $decr$loop#00)
           && !Set#Subset($decr$loop#00, Map#Domain(m#1));
    }
}



procedure {:verboseName "CommonUseCase2 (well-formedness)"} CheckWellFormed$$_module.__default.CommonUseCase2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CommonUseCase2 (call)"} Call$$_module.__default.CommonUseCase2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CommonUseCase2 (correctness)"} Impl$$_module.__default.CommonUseCase2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CommonUseCase2 (correctness)"} Impl$$_module.__default.CommonUseCase2(m#0: Map) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: Map
     where $Is(m#1, TMap(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(m#1, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#k#0_0: bool;
  var k#0_0: ref
     where defass#k#0_0
       ==> $Is(k#0_0, Tclass._module.MyClass())
         && $IsAlloc(k#0_0, Tclass._module.MyClass(), $Heap);
  var v#0_0: bv3;
  var k#0_1: ref;
  var v#0_1: bv3;

    // AddMethodImpl: CommonUseCase2, Impl$$_module.__default.CommonUseCase2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(485,5)
    assume true;
    assert {:id "id560"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    s#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(486,9)
    assume true;
    assume true;
    m#1 := m#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(487,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Map#Domain(m#1);
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
      free invariant Set#Subset(Map#Domain(m#1), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Map#Equal(m#1, Map#Empty(): Map))
        {
            break;
        }

        $decr$loop#00 := Map#Domain(m#1);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(490,14)
        havoc k#0_1;
        havoc v#0_1;
        if ($Is(k#0_1, Tclass._module.MyClass())
           && $IsAlloc(k#0_1, Tclass._module.MyClass(), $Heap))
        {
            assume true;
        }

        assert {:id "id563"} (exists $as#v0_0#0_0: bv3 :: 
            $Is(null, Tclass._module.MyClass())
               && Set#IsMember(Map#Items(m#1), $Box(#_System._tuple#2._#Make2($Box(null), $Box($as#v0_0#0_0)))))
           || (exists $as#k0_0#0_0: ref, $as#v0_0#0_0: bv3 :: 
            $Is($as#k0_0#0_0, Tclass._module.MyClass())
               && $IsAlloc($as#k0_0#0_0, Tclass._module.MyClass(), $Heap)
               && Set#IsMember(Map#Items(m#1), 
                $Box(#_System._tuple#2._#Make2($Box($as#k0_0#0_0), $Box($as#v0_0#0_0)))));
        defass#k#0_0 := true;
        havoc k#0_0, v#0_0;
        assume {:id "id564"} Set#IsMember(Map#Items(m#1), $Box(#_System._tuple#2._#Make2($Box(k#0_0), $Box(v#0_0))));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(491,7)
        assume true;
        assert {:id "id565"} $Is(s#0 + nat_from_bv3(v#0_0), Tclass._System.nat());
        assume true;
        s#0 := s#0 + nat_from_bv3(v#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(492,7)
        assume true;
        assert {:id "id567"} defass#k#0_0;
        assume true;
        m#1 := Map#Subtract(m#1, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(487,3)
        assert {:id "id569"} Set#Subset(Map#Domain(m#1), $decr$loop#00)
           && !Set#Subset($decr$loop#00, Map#Domain(m#1));
    }
}



procedure {:verboseName "TestMapPropertyNonempty (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyNonempty(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyNonempty (call)"} Call$$_module.__default.TestMapPropertyNonempty(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id571"} !Map#Equal(m#0, Map#Empty(): Map);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyNonempty (correctness)"} Impl$$_module.__default.TestMapPropertyNonempty(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id572"} !Map#Equal(m#0, Map#Empty(): Map);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyNonempty (correctness)"} Impl$$_module.__default.TestMapPropertyNonempty(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapPropertyNonempty, Impl$$_module.__default.TestMapPropertyNonempty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(503,3)
    if (*)
    {
        assume true;
        assume {:id "id580"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(505,5)
        assume true;
        assert {:id "id581"} Map#Card(m#0) != 0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id578"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(507,5)
        assume true;
        assert {:id "id579"} !Set#Equal(Map#Domain(m#0), Set#Empty(): Set);
    }
    else if (*)
    {
        assume true;
        assume {:id "id576"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(509,5)
        assume true;
        assert {:id "id577"} !Set#Equal(Map#Values(m#0), Set#Empty(): Set);
    }
    else if (*)
    {
        assume true;
        assume {:id "id574"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(511,5)
        assume true;
        assert {:id "id575"} !Set#Equal(Map#Items(m#0), Set#Empty(): Set);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id573"} false;
    }
}



procedure {:verboseName "TestMapPropertyCardinality0 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyCardinality0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyCardinality0 (call)"} Call$$_module.__default.TestMapPropertyCardinality0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyCardinality0 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyCardinality0 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality0(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapPropertyCardinality0, Impl$$_module.__default.TestMapPropertyCardinality0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(515,3)
    assume true;
    assert {:id "id582"} Map#Card(m#0) == Set#Card(Map#Domain(m#0));
}



procedure {:verboseName "TestMapPropertyCardinality1 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyCardinality1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyCardinality1 (call)"} Call$$_module.__default.TestMapPropertyCardinality1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyCardinality1 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyCardinality1 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality1(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapPropertyCardinality1, Impl$$_module.__default.TestMapPropertyCardinality1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(519,3)
    assume true;
    assert {:id "id583"} Set#Card(Map#Values(m#0)) <= Set#Card(Map#Domain(m#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(520,3)
    assume true;
    assert {:id "id584"} Set#Card(Map#Domain(m#0)) == Set#Card(Map#Values(m#0));
}



procedure {:verboseName "TestMapPropertyCardinality2 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyCardinality2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyCardinality2 (call)"} Call$$_module.__default.TestMapPropertyCardinality2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyCardinality2 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyCardinality2 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality2(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapPropertyCardinality2, Impl$$_module.__default.TestMapPropertyCardinality2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(524,3)
    assume true;
    assert {:id "id585"} Set#Card(Map#Values(m#0)) <= Set#Card(Map#Items(m#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(525,3)
    assume true;
    assert {:id "id586"} Set#Card(Map#Values(m#0)) == Set#Card(Map#Items(m#0));
}



procedure {:verboseName "TestMapPropertyCardinality3 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyCardinality3(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyCardinality3 (call)"} Call$$_module.__default.TestMapPropertyCardinality3(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyCardinality3 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality3(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyCardinality3 (correctness)"} Impl$$_module.__default.TestMapPropertyCardinality3(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapPropertyCardinality3, Impl$$_module.__default.TestMapPropertyCardinality3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(529,3)
    assume true;
    assert {:id "id587"} Set#Card(Map#Items(m#0)) == Map#Card(m#0);
}



procedure {:verboseName "TestMapPropertyMembership0 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyMembership0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyMembership0 (call)"} Call$$_module.__default.TestMapPropertyMembership0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id591"} Set#Card(Map#Values(m#0)) != 0 || Set#Card(Map#Items(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyMembership0 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership0(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id592"} Set#Card(Map#Values(m#0)) != 0 || Set#Card(Map#Items(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyMembership0 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership0(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: ref;

    // AddMethodImpl: TestMapPropertyMembership0, Impl$$_module.__default.TestMapPropertyMembership0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(535,3)
    // Begin Comprehension WF check
    havoc k#0;
    if ($Is(k#0, Tclass._module.MyClass())
       && $IsAlloc(k#0, Tclass._module.MyClass(), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id593"} (exists k#1: ref :: 
      { Set#IsMember(Map#Domain(m#0), $Box(k#1)) } 
      $Is(k#1, Tclass._module.MyClass()) && Set#IsMember(Map#Domain(m#0), $Box(k#1)));
}



procedure {:verboseName "TestMapPropertyMembership1 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyMembership1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyMembership1 (call)"} Call$$_module.__default.TestMapPropertyMembership1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id597"} Set#Card(Map#Items(m#0)) != 0 || Set#Card(Map#Domain(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyMembership1 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership1(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id598"} Set#Card(Map#Items(m#0)) != 0 || Set#Card(Map#Domain(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyMembership1 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership1(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var v#0: bv3;

    // AddMethodImpl: TestMapPropertyMembership1, Impl$$_module.__default.TestMapPropertyMembership1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(540,2)
    assume true;
    assert {:id "id599"} !Set#Equal(Map#Values(m#0), Set#Empty(): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(541,3)
    // Begin Comprehension WF check
    havoc v#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id600"} (exists v#1: bv3 :: 
      { Set#IsMember(Map#Values(m#0), $Box(v#1)) } 
      Set#IsMember(Map#Values(m#0), $Box(v#1)));
}



procedure {:verboseName "TestMapPropertyMembership2 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyMembership2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyMembership2 (call)"} Call$$_module.__default.TestMapPropertyMembership2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id604"} Set#Card(Map#Domain(m#0)) != 0 || Set#Card(Map#Values(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyMembership2 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership2(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id605"} Set#Card(Map#Domain(m#0)) != 0 || Set#Card(Map#Values(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyMembership2 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership2(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var kv#0: DatatypeType;

    // AddMethodImpl: TestMapPropertyMembership2, Impl$$_module.__default.TestMapPropertyMembership2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(547,3)
    // Begin Comprehension WF check
    havoc kv#0;
    if ($Is(kv#0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(kv#0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id606"} (exists kv#1: DatatypeType :: 
      { Set#IsMember(Map#Items(m#0), $Box(kv#1)) } 
      $Is(kv#1, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
         && Set#IsMember(Map#Items(m#0), $Box(kv#1)));
}



procedure {:verboseName "TestMapPropertyMembership3 (well-formedness)"} CheckWellFormed$$_module.__default.TestMapPropertyMembership3(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapPropertyMembership3 (call)"} Call$$_module.__default.TestMapPropertyMembership3(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id610"} Set#Card(Map#Domain(m#0)) != 0 || Set#Card(Map#Values(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapPropertyMembership3 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership3(m#0: Map
       where $Is(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id611"} Set#Card(Map#Domain(m#0)) != 0 || Set#Card(Map#Values(m#0)) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapPropertyMembership3 (correctness)"} Impl$$_module.__default.TestMapPropertyMembership3(m#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var v#0: bv3;
  var k#0: ref;

    // AddMethodImpl: TestMapPropertyMembership3, Impl$$_module.__default.TestMapPropertyMembership3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(553,3)
    // Begin Comprehension WF check
    havoc v#0;
    havoc k#0;
    if ($Is(k#0, Tclass._module.MyClass())
       && $IsAlloc(k#0, Tclass._module.MyClass(), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id612"} (exists v#1: bv3, k#1: ref :: 
      { #_System._tuple#2._#Make2($Box(k#1), $Box(v#1)) } 
      $Is(k#1, Tclass._module.MyClass())
         && $IsAlloc(k#1, Tclass._module.MyClass(), $Heap)
         && Set#IsMember(Map#Items(m#0), $Box(#_System._tuple#2._#Make2($Box(k#1), $Box(v#1)))));
}



procedure {:verboseName "IMapCommonUseCase0 (well-formedness)"} CheckWellFormed$$_module.__default.IMapCommonUseCase0(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IMapCommonUseCase0 (call)"} Call$$_module.__default.IMapCommonUseCase0(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IMapCommonUseCase0 (correctness)"} Impl$$_module.__default.IMapCommonUseCase0(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IMapCommonUseCase0 (correctness)"} Impl$$_module.__default.IMapCommonUseCase0(m#0: IMap) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: IMap
     where $Is(m#1, TIMap(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(m#1, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ISet;
  var $w$loop#0: bool;
  var $decr$loop#00: ISet;
  var defass#k#0_0: bool;
  var k#0_0: ref
     where defass#k#0_0
       ==> $Is(k#0_0, Tclass._module.MyClass())
         && $IsAlloc(k#0_0, Tclass._module.MyClass(), $Heap);
  var k#0_1: ref;
  var v#0_0: bv3;

    // AddMethodImpl: IMapCommonUseCase0, Impl$$_module.__default.IMapCommonUseCase0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(560,5)
    assume true;
    assert {:id "id613"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    s#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(561,9)
    assume true;
    assume true;
    m#1 := m#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(562,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := IMap#Domain(m#1);
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
      free invariant ISet#Equal(IMap#Domain(m#1), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (IMap#Equal(m#1, IMap#Empty(): IMap))
        {
            break;
        }

        $decr$loop#00 := IMap#Domain(m#1);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(565,11)
        havoc k#0_1;
        if ($Is(k#0_1, Tclass._module.MyClass())
           && $IsAlloc(k#0_1, Tclass._module.MyClass(), $Heap))
        {
            assume true;
        }

        assert {:id "id616"} ($Is(null, Tclass._module.MyClass()) && IMap#Domain(m#1)[$Box(null)])
           || (exists $as#k0_0#0_0: ref :: 
            $Is($as#k0_0#0_0, Tclass._module.MyClass())
               && IMap#Domain(m#1)[$Box($as#k0_0#0_0)]);
        defass#k#0_0 := true;
        havoc k#0_0;
        assume {:id "id617"} IMap#Domain(m#1)[$Box(k#0_0)];
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(566,11)
        assume true;
        assert {:id "id618"} defass#k#0_0;
        assert {:id "id619"} IMap#Domain(m#1)[$Box(k#0_0)];
        assume true;
        v#0_0 := $Unbox(IMap#Elements(m#1)[$Box(k#0_0)]): bv3;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(567,7)
        assume true;
        assert {:id "id621"} $Is(s#0 + nat_from_bv3(v#0_0), Tclass._System.nat());
        assume true;
        s#0 := s#0 + nat_from_bv3(v#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(568,7)
        assume true;
        assert {:id "id623"} defass#k#0_0;
        assume true;
        m#1 := IMap#Subtract(m#1, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(562,3)
        assert {:id "id625"} false;
    }
}



procedure {:verboseName "IMapCommonUseCase1 (well-formedness)"} CheckWellFormed$$_module.__default.IMapCommonUseCase1(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IMapCommonUseCase1 (call)"} Call$$_module.__default.IMapCommonUseCase1(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IMapCommonUseCase1 (correctness)"} Impl$$_module.__default.IMapCommonUseCase1(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IMapCommonUseCase1 (correctness)"} Impl$$_module.__default.IMapCommonUseCase1(m#0: IMap) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: IMap
     where $Is(m#1, TIMap(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(m#1, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ISet;
  var $w$loop#0: bool;
  var $decr$loop#00: ISet;
  var defass#kv#0_0: bool;
  var kv#0_0: DatatypeType
     where defass#kv#0_0
       ==> $Is(kv#0_0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(kv#0_0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var kv#0_1: DatatypeType;
  var k#0_0: ref;
  var v#0_0: bv3;
  var let#0_0#0#0: DatatypeType;

    // AddMethodImpl: IMapCommonUseCase1, Impl$$_module.__default.IMapCommonUseCase1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(574,5)
    assume true;
    assert {:id "id626"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    s#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(575,9)
    assume true;
    assume true;
    m#1 := m#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(576,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := IMap#Domain(m#1);
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
      free invariant ISet#Equal(IMap#Domain(m#1), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (IMap#Equal(m#1, IMap#Empty(): IMap))
        {
            break;
        }

        $decr$loop#00 := IMap#Domain(m#1);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(579,12)
        havoc kv#0_1;
        if ($Is(kv#0_1, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
           && $IsAlloc(kv#0_1, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)), $Heap))
        {
            assume true;
        }

        assert {:id "id629"} (exists $as#kv0_0#0_0: DatatypeType :: 
          $Is($as#kv0_0#0_0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
             && IMap#Items(m#1)[$Box($as#kv0_0#0_0)]);
        defass#kv#0_0 := true;
        havoc kv#0_0;
        assume {:id "id630"} IMap#Items(m#1)[$Box(kv#0_0)];
        havoc k#0_0;
        assume $Is(k#0_0, Tclass._module.MyClass())
           && $IsAlloc(k#0_0, Tclass._module.MyClass(), $Heap);
        havoc v#0_0;
        assert {:id "id631"} defass#kv#0_0;
        assume {:id "id632"} let#0_0#0#0 == kv#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)));
        assume _System.Tuple2.___hMake2_q(let#0_0#0#0);
        assume {:id "id633"} #_System._tuple#2._#Make2($Box(k#0_0), $Box(v#0_0)) == let#0_0#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(581,7)
        assume true;
        assert {:id "id634"} $Is(s#0 + nat_from_bv3(v#0_0), Tclass._System.nat());
        assume true;
        s#0 := s#0 + nat_from_bv3(v#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(582,7)
        assume true;
        assume true;
        m#1 := IMap#Subtract(m#1, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(576,3)
        assert {:id "id637"} false;
    }
}



procedure {:verboseName "IMapCommonUseCase2 (well-formedness)"} CheckWellFormed$$_module.__default.IMapCommonUseCase2(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IMapCommonUseCase2 (call)"} Call$$_module.__default.IMapCommonUseCase2(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IMapCommonUseCase2 (correctness)"} Impl$$_module.__default.IMapCommonUseCase2(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns (s#0: int where LitInt(0) <= s#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IMapCommonUseCase2 (correctness)"} Impl$$_module.__default.IMapCommonUseCase2(m#0: IMap) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: IMap
     where $Is(m#1, TIMap(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(m#1, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var defass#k#0_0: bool;
  var k#0_0: ref
     where defass#k#0_0
       ==> $Is(k#0_0, Tclass._module.MyClass())
         && $IsAlloc(k#0_0, Tclass._module.MyClass(), $Heap);
  var v#0_0: bv3;
  var k#0_1: ref;
  var v#0_1: bv3;

    // AddMethodImpl: IMapCommonUseCase2, Impl$$_module.__default.IMapCommonUseCase2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(589,5)
    assume true;
    assert {:id "id638"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    s#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(590,9)
    assume true;
    assume true;
    m#1 := m#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(591,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (IMap#Equal(m#1, IMap#Empty(): IMap))
        {
            break;
        }

        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(594,14)
        havoc k#0_1;
        havoc v#0_1;
        if ($Is(k#0_1, Tclass._module.MyClass())
           && $IsAlloc(k#0_1, Tclass._module.MyClass(), $Heap))
        {
            assume true;
        }

        assert {:id "id641"} (exists $as#v0_0#0_0: bv3 :: 
            $Is(null, Tclass._module.MyClass())
               && IMap#Items(m#1)[$Box(#_System._tuple#2._#Make2($Box(null), $Box($as#v0_0#0_0)))])
           || (exists $as#k0_0#0_0: ref, $as#v0_0#0_0: bv3 :: 
            $Is($as#k0_0#0_0, Tclass._module.MyClass())
               && $IsAlloc($as#k0_0#0_0, Tclass._module.MyClass(), $Heap)
               && IMap#Items(m#1)[$Box(#_System._tuple#2._#Make2($Box($as#k0_0#0_0), $Box($as#v0_0#0_0)))]);
        defass#k#0_0 := true;
        havoc k#0_0, v#0_0;
        assume {:id "id642"} IMap#Items(m#1)[$Box(#_System._tuple#2._#Make2($Box(k#0_0), $Box(v#0_0)))];
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(595,7)
        assume true;
        assert {:id "id643"} $Is(s#0 + nat_from_bv3(v#0_0), Tclass._System.nat());
        assume true;
        s#0 := s#0 + nat_from_bv3(v#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(596,7)
        assume true;
        assert {:id "id645"} defass#k#0_0;
        assume true;
        m#1 := IMap#Subtract(m#1, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
    }
}



procedure {:verboseName "TestIMapPropertyNonempty (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapPropertyNonempty(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapPropertyNonempty (call)"} Call$$_module.__default.TestIMapPropertyNonempty(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id648"} !IMap#Equal(m#0, IMap#Empty(): IMap);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapPropertyNonempty (correctness)"} Impl$$_module.__default.TestIMapPropertyNonempty(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id649"} !IMap#Equal(m#0, IMap#Empty(): IMap);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapPropertyNonempty (correctness)"} Impl$$_module.__default.TestIMapPropertyNonempty(m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestIMapPropertyNonempty, Impl$$_module.__default.TestIMapPropertyNonempty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(607,3)
    if (*)
    {
        assume true;
        assume {:id "id655"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(609,5)
        assume true;
        assert {:id "id656"} !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id653"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(611,5)
        assume true;
        assert {:id "id654"} !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id651"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(613,5)
        assume true;
        assert {:id "id652"} !ISet#Equal(IMap#Items(m#0), ISet#Empty(): ISet);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id650"} false;
    }
}



procedure {:verboseName "TestIMapPropertyMembership0 (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapPropertyMembership0(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapPropertyMembership0 (call)"} Call$$_module.__default.TestIMapPropertyMembership0(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id660"} !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Items(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapPropertyMembership0 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership0(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id661"} !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Items(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapPropertyMembership0 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership0(m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: ref;

    // AddMethodImpl: TestIMapPropertyMembership0, Impl$$_module.__default.TestIMapPropertyMembership0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(619,3)
    // Begin Comprehension WF check
    havoc k#0;
    if ($Is(k#0, Tclass._module.MyClass())
       && $IsAlloc(k#0, Tclass._module.MyClass(), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id662"} (exists k#1: ref :: 
      { IMap#Domain(m#0)[$Box(k#1)] } 
      $Is(k#1, Tclass._module.MyClass()) && IMap#Domain(m#0)[$Box(k#1)]);
}



procedure {:verboseName "TestIMapPropertyMembership1 (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapPropertyMembership1(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapPropertyMembership1 (call)"} Call$$_module.__default.TestIMapPropertyMembership1(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id666"} !ISet#Equal(IMap#Items(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapPropertyMembership1 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership1(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id667"} !ISet#Equal(IMap#Items(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapPropertyMembership1 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership1(m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var v#0: bv3;

    // AddMethodImpl: TestIMapPropertyMembership1, Impl$$_module.__default.TestIMapPropertyMembership1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(625,3)
    // Begin Comprehension WF check
    havoc v#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id668"} (exists v#1: bv3 :: { IMap#Values(m#0)[$Box(v#1)] } IMap#Values(m#0)[$Box(v#1)]);
}



procedure {:verboseName "TestIMapPropertyMembership2 (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapPropertyMembership2(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapPropertyMembership2 (call)"} Call$$_module.__default.TestIMapPropertyMembership2(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id672"} !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapPropertyMembership2 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership2(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id673"} !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapPropertyMembership2 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership2(m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var kv#0: DatatypeType;

    // AddMethodImpl: TestIMapPropertyMembership2, Impl$$_module.__default.TestIMapPropertyMembership2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(631,3)
    // Begin Comprehension WF check
    havoc kv#0;
    if ($Is(kv#0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
       && $IsAlloc(kv#0, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id674"} (exists kv#1: DatatypeType :: 
      { IMap#Items(m#0)[$Box(kv#1)] } 
      $Is(kv#1, Tclass._System.Tuple2(Tclass._module.MyClass(), TBitvector(3)))
         && IMap#Items(m#0)[$Box(kv#1)]);
}



procedure {:verboseName "TestIMapPropertyMembership3 (well-formedness)"} CheckWellFormed$$_module.__default.TestIMapPropertyMembership3(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIMapPropertyMembership3 (call)"} Call$$_module.__default.TestIMapPropertyMembership3(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap));
  // user-defined preconditions
  requires {:id "id678"} !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIMapPropertyMembership3 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership3(m#0: IMap
       where $Is(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)))
         && $IsAlloc(m#0, TIMap(Tclass._module.MyClass(), TBitvector(3)), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id679"} !ISet#Equal(IMap#Domain(m#0), ISet#Empty(): ISet)
     || !ISet#Equal(IMap#Values(m#0), ISet#Empty(): ISet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIMapPropertyMembership3 (correctness)"} Impl$$_module.__default.TestIMapPropertyMembership3(m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var v#0: bv3;
  var k#0: ref;

    // AddMethodImpl: TestIMapPropertyMembership3, Impl$$_module.__default.TestIMapPropertyMembership3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Maps.dfy(637,3)
    // Begin Comprehension WF check
    havoc v#0;
    havoc k#0;
    if ($Is(k#0, Tclass._module.MyClass())
       && $IsAlloc(k#0, Tclass._module.MyClass(), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id680"} (exists v#1: bv3, k#1: ref :: 
      { #_System._tuple#2._#Make2($Box(k#1), $Box(v#1)) } 
      $Is(k#1, Tclass._module.MyClass())
         && $IsAlloc(k#1, Tclass._module.MyClass(), $Heap)
         && IMap#Items(m#0)[$Box(#_System._tuple#2._#Make2($Box(k#1), $Box(v#1)))]);
}



const unique class._module.A?: ClassName;

// $Is axiom for class A
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.A?()) } 
  $Is($o, Tclass._module.A?()) <==> $o == null || dtype($o) == Tclass._module.A?());

// $IsAlloc axiom for class A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.A?(), $h) } 
  $IsAlloc($o, Tclass._module.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.A.x: Field
uses {
axiom FDim(_module.A.x) == 0
   && FieldOfDecl(class._module.A?, field$x) == _module.A.x
   && !$IsGhostField(_module.A.x);
}

// A.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.A?()
     ==> $Is($Unbox(read($h, $o, _module.A.x)): int, TInt));

// A.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.A.x)): int, TInt, $h));

// $Is axiom for non-null type _module.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.A()) } { $Is(c#0, Tclass._module.A?()) } 
  $Is(c#0, Tclass._module.A()) <==> $Is(c#0, Tclass._module.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.A(), $h) } 
    { $IsAlloc(c#0, Tclass._module.A?(), $h) } 
  $IsAlloc(c#0, Tclass._module.A(), $h)
     <==> $IsAlloc(c#0, Tclass._module.A?(), $h));

const unique class._module.Elem?: ClassName;

// $Is axiom for class Elem
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Elem?()) } 
  $Is($o, Tclass._module.Elem?())
     <==> $o == null || dtype($o) == Tclass._module.Elem?());

// $IsAlloc axiom for class Elem
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Elem?(), $h) } 
  $IsAlloc($o, Tclass._module.Elem?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.Elem
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Elem()) } { $Is(c#0, Tclass._module.Elem?()) } 
  $Is(c#0, Tclass._module.Elem())
     <==> $Is(c#0, Tclass._module.Elem?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Elem
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Elem(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Elem?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Elem(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Elem?(), $h));

const unique class._module.MyClass?: ClassName;

function Tclass._module.MyClass?() : Ty
uses {
// Tclass._module.MyClass? Tag
axiom Tag(Tclass._module.MyClass?()) == Tagclass._module.MyClass?
   && TagFamily(Tclass._module.MyClass?()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass?: TyTag;

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass?()));

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClass?()) } 
  $Is($o, Tclass._module.MyClass?())
     <==> $o == null || dtype($o) == Tclass._module.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(), $h) } 
  $IsAlloc($o, Tclass._module.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClass()) } { $Is(c#0, Tclass._module.MyClass?()) } 
  $Is(c#0, Tclass._module.MyClass())
     <==> $Is(c#0, Tclass._module.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(), $h));

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

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$Elem: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique field$x: NameFamily;
