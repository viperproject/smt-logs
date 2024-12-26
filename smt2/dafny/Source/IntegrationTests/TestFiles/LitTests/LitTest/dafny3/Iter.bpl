// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy

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

const unique class._module.__default: ClassName;

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
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.List(_module.List$T)));

procedure {:verboseName "Client (well-formedness)"} CheckWellFormed$$_module.__default.Client(_module._default.Client$T: Ty, 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module._default.Client$T))
         && $IsAlloc(l#0, Tclass._module.List(_module._default.Client$T), $Heap), 
    stop#0: Box
       where $IsBox(stop#0, _module._default.Client$T)
         && $IsAllocBox(stop#0, _module._default.Client$T, $Heap))
   returns (s#0: Seq
       where $Is(s#0, TSeq(_module._default.Client$T))
         && $IsAlloc(s#0, TSeq(_module._default.Client$T), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.List?(Ty) : Ty;

const unique Tagclass._module.List?: TyTag;

// Tclass._module.List? Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List?(_module.List$T) } 
  Tag(Tclass._module.List?(_module.List$T)) == Tagclass._module.List?
     && TagFamily(Tclass._module.List?(_module.List$T)) == tytagFamily$List);

function Tclass._module.List?_0(Ty) : Ty;

// Tclass._module.List? injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List?(_module.List$T) } 
  Tclass._module.List?_0(Tclass._module.List?(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List?
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List?(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List?(_module.List$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.List?(_module.List$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Client (well-formedness)"} CheckWellFormed$$_module.__default.Client(_module._default.Client$T: Ty, l#0: ref, stop#0: Box) returns (s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Client, CheckWellFormed$$_module.__default.Client
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id0"} l#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(l#0), Tclass._module.List?(_module._default.Client$T), $Heap);
    assume _module.List.Valid#canCall(_module._default.Client$T, $Heap, l#0);
    assume {:id "id1"} _module.List.Valid(_module._default.Client$T, $Heap, l#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc s#0;
}



procedure {:verboseName "Client (call)"} Call$$_module.__default.Client(_module._default.Client$T: Ty, 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module._default.Client$T))
         && $IsAlloc(l#0, Tclass._module.List(_module._default.Client$T), $Heap), 
    stop#0: Box
       where $IsBox(stop#0, _module._default.Client$T)
         && $IsAllocBox(stop#0, _module._default.Client$T, $Heap))
   returns (s#0: Seq
       where $Is(s#0, TSeq(_module._default.Client$T))
         && $IsAlloc(s#0, TSeq(_module._default.Client$T), $Heap));
  // user-defined preconditions
  requires {:id "id2"} _module.List.Valid#canCall(_module._default.Client$T, $Heap, l#0)
     ==> _module.List.Valid(_module._default.Client$T, $Heap, l#0)
       || Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, $Box(l#0));
  requires {:id "id3"} _module.List.Valid#canCall(_module._default.Client$T, $Heap, l#0)
     ==> _module.List.Valid(_module._default.Client$T, $Heap, l#0)
       || Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, 
        read($Heap, l#0, _module.List.a));
  requires {:id "id4"} _module.List.Valid#canCall(_module._default.Client$T, $Heap, l#0)
     ==> _module.List.Valid(_module._default.Client$T, $Heap, l#0)
       || $Unbox(read($Heap, l#0, _module.List.n)): int
         <= _System.array.Length($Unbox(read($Heap, l#0, _module.List.a)): ref);
  requires {:id "id5"} _module.List.Valid#canCall(_module._default.Client$T, $Heap, l#0)
     ==> _module.List.Valid(_module._default.Client$T, $Heap, l#0)
       || Seq#Equal($Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
        Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, l#0, _module.List.a)): ref), 
          $Unbox(read($Heap, l#0, _module.List.n)): int));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Client (correctness)"} Impl$$_module.__default.Client(_module._default.Client$T: Ty, 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module._default.Client$T))
         && $IsAlloc(l#0, Tclass._module.List(_module._default.Client$T), $Heap), 
    stop#0: Box
       where $IsBox(stop#0, _module._default.Client$T)
         && $IsAllocBox(stop#0, _module._default.Client$T, $Heap))
   returns (s#0: Seq
       where $Is(s#0, TSeq(_module._default.Client$T))
         && $IsAlloc(s#0, TSeq(_module._default.Client$T), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id6"} _module.List.Valid#canCall(_module._default.Client$T, $Heap, l#0)
     && 
    _module.List.Valid(_module._default.Client$T, $Heap, l#0)
     && 
    Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, $Box(l#0))
     && Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, 
      read($Heap, l#0, _module.List.a))
     && $Unbox(read($Heap, l#0, _module.List.n)): int
       <= _System.array.Length($Unbox(read($Heap, l#0, _module.List.a)): ref)
     && Seq#Equal($Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
      Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, l#0, _module.List.a)): ref), 
        $Unbox(read($Heap, l#0, _module.List.n)): int));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Cell() : Ty
uses {
// Tclass._module.Cell Tag
axiom Tag(Tclass._module.Cell()) == Tagclass._module.Cell
   && TagFamily(Tclass._module.Cell()) == tytagFamily$Cell;
}

const unique Tagclass._module.Cell: TyTag;

// Box/unbox axiom for Tclass._module.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell()) } 
  $IsBox(bx, Tclass._module.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Cell()));

function Tclass._module.Cell?() : Ty
uses {
// Tclass._module.Cell? Tag
axiom Tag(Tclass._module.Cell?()) == Tagclass._module.Cell?
   && TagFamily(Tclass._module.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass._module.Cell?: TyTag;

// Box/unbox axiom for Tclass._module.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell?()) } 
  $IsBox(bx, Tclass._module.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Cell?()));

function Tclass._module.M(Ty) : Ty;

const unique Tagclass._module.M: TyTag;

// Tclass._module.M Tag
axiom (forall _module.M$T: Ty :: 
  { Tclass._module.M(_module.M$T) } 
  Tag(Tclass._module.M(_module.M$T)) == Tagclass._module.M
     && TagFamily(Tclass._module.M(_module.M$T)) == tytagFamily$M);

function Tclass._module.M_0(Ty) : Ty;

// Tclass._module.M injectivity 0
axiom (forall _module.M$T: Ty :: 
  { Tclass._module.M(_module.M$T) } 
  Tclass._module.M_0(Tclass._module.M(_module.M$T)) == _module.M$T);

// Box/unbox axiom for Tclass._module.M
axiom (forall _module.M$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.M(_module.M$T)) } 
  $IsBox(bx, Tclass._module.M(_module.M$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.M(_module.M$T)));

function Tclass._module.M?(Ty) : Ty;

const unique Tagclass._module.M?: TyTag;

// Tclass._module.M? Tag
axiom (forall _module.M$T: Ty :: 
  { Tclass._module.M?(_module.M$T) } 
  Tag(Tclass._module.M?(_module.M$T)) == Tagclass._module.M?
     && TagFamily(Tclass._module.M?(_module.M$T)) == tytagFamily$M);

function Tclass._module.M?_0(Ty) : Ty;

// Tclass._module.M? injectivity 0
axiom (forall _module.M$T: Ty :: 
  { Tclass._module.M?(_module.M$T) } 
  Tclass._module.M?_0(Tclass._module.M?(_module.M$T)) == _module.M$T);

// Box/unbox axiom for Tclass._module.M?
axiom (forall _module.M$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.M?(_module.M$T)) } 
  $IsBox(bx, Tclass._module.M?(_module.M$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.M?(_module.M$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Client (correctness)"} Impl$$_module.__default.Client(_module._default.Client$T: Ty, l#0: ref, stop#0: Box)
   returns (s#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var defass#iter#0: bool;
  var iter#0: ref
     where defass#iter#0
       ==> $Is(iter#0, Tclass._module.M(_module._default.Client$T))
         && $IsAlloc(iter#0, Tclass._module.M(_module._default.Client$T), $Heap);
  var l##0: ref;
  var c##0: ref;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var more#0_0: bool;
  var $rhs##0_0: bool;

    // AddMethodImpl: Client, Impl$$_module.__default.Client
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(75,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(76,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(76,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    l##0 := l#0;
    assert {:id "id8"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    call {:id "id9"} $nw := Call$$_module.M.__ctor(_module._default.Client$T, l##0, c##0);
    // TrCallStmt: After ProcessCallStmt
    iter#0 := $nw;
    defass#iter#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(77,5)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(78,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
       - Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.M.Valid#canCall(_module._default.Client$T, $Heap, iter#0);
      invariant {:id "id17"} $w$loop#0 ==> _module.M.Valid(_module._default.Client$T, $Heap, iter#0);
      invariant {:id "id18"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant true;
      invariant {:id "id23"} $w$loop#0
         ==> Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq)
             <= Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
           && Seq#SameUntil($Unbox(read($Heap, iter#0, _module.M.xs)): Seq, 
            $Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
            Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq));
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
      free invariant Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
           - Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id12"} defass#iter#0;
            assert {:id "id13"} {:subsumption 0} iter#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(iter#0), Tclass._module.M?(_module._default.Client$T), $Heap);
            assume _module.M.Valid#canCall(_module._default.Client$T, $Heap, iter#0);
            if (_module.M.Valid(_module._default.Client$T, $Heap, iter#0))
            {
                assert {:id "id14"} defass#iter#0;
                assert {:id "id15"} {:subsumption 0} iter#0 != null;
            }

            assume _module.M.Valid#canCall(_module._default.Client$T, $Heap, iter#0);
            assume {:id "id16"} _module.M.Valid(_module._default.Client$T, $Heap, iter#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assert {:id "id19"} defass#iter#0;
            assert {:id "id20"} {:subsumption 0} iter#0 != null;
            assert {:id "id21"} {:subsumption 0} l#0 != null;
            assume true;
            assume {:id "id22"} Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq)
                 <= Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
               && Seq#SameUntil($Unbox(read($Heap, iter#0, _module.M.xs)): Seq, 
                $Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq));
            assert {:id "id24"} l#0 != null;
            assert {:id "id25"} defass#iter#0;
            assert {:id "id26"} iter#0 != null;
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
           - Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(83,30)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id27"} defass#iter#0;
        assume true;
        assert {:id "id28"} iter#0 != null;
        assert {:id "id29"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == iter#0
                 || Set#IsMember(_module.M.__modifies(iter#0), $Box($o))
                 || Set#IsMember($Unbox(read($Heap, iter#0, _module.M.__new)): Set, $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id30"} $rhs##0_0 := Call$$_module.M.MoveNext(_module._default.Client$T, iter#0);
        // TrCallStmt: After ProcessCallStmt
        more#0_0 := $rhs##0_0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(84,5)
        assume true;
        if (!more#0_0)
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(84,18)
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(85,7)
        assume true;
        assert {:id "id32"} defass#iter#0;
        assert {:id "id33"} iter#0 != null;
        assume true;
        s#0 := Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, read($Heap, iter#0, _module.M.x)));
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(86,5)
        assert {:id "id35"} defass#iter#0;
        assert {:id "id36"} iter#0 != null;
        assume true;
        if (read($Heap, iter#0, _module.M.x) == stop#0)
        {
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(86,27)
            return;
        }
        else
        {
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(78,3)
        assert {:id "id37"} 0 <= $decr$loop#00
           || Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
               - Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq)
             == $decr$loop#00;
        assert {:id "id38"} Seq#Length($Unbox(read($Heap, l#0, _module.List.Contents)): Seq)
             - Seq#Length($Unbox(read($Heap, iter#0, _module.M.xs)): Seq)
           < $decr$loop#00;
        assume _module.M.Valid#canCall(_module._default.Client$T, $Heap, iter#0);
    }

  after_0:
}



procedure {:verboseName "PrintSequence (well-formedness)"} CheckWellFormed$$_module.__default.PrintSequence(_module._default.PrintSequence$T: Ty, 
    s#0: Seq
       where $Is(s#0, TSeq(_module._default.PrintSequence$T))
         && $IsAlloc(s#0, TSeq(_module._default.PrintSequence$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSequence (call)"} Call$$_module.__default.PrintSequence(_module._default.PrintSequence$T: Ty, 
    s#0: Seq
       where $Is(s#0, TSeq(_module._default.PrintSequence$T))
         && $IsAlloc(s#0, TSeq(_module._default.PrintSequence$T), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSequence (correctness)"} Impl$$_module.__default.PrintSequence(_module._default.PrintSequence$T: Ty, 
    s#0: Seq
       where $Is(s#0, TSeq(_module._default.PrintSequence$T))
         && $IsAlloc(s#0, TSeq(_module._default.PrintSequence$T), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSequence (correctness)"} Impl$$_module.__default.PrintSequence(_module._default.PrintSequence$T: Ty, s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: PrintSequence, Impl$$_module.__default.PrintSequence
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(92,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(93,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length(s#0) - i#0;
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
      free invariant Seq#Length(s#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(s#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(s#0) - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(95,5)
        assert {:id "id40"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(96,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(93,3)
        assert {:id "id42"} 0 <= $decr$loop#00 || Seq#Length(s#0) - i#0 == $decr$loop#00;
        assert {:id "id43"} Seq#Length(s#0) - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(98,3)
    assume true;
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 4 == $FunctionContextHeight;
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
  free requires 4 == $FunctionContextHeight;
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
  var defass#myList#0: bool;
  var myList#0: ref
     where defass#myList#0
       ==> $Is(myList#0, Tclass._module.List(TInt))
         && $IsAlloc(myList#0, Tclass._module.List(TInt), $Heap);
  var $nw: ref;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var t##0_0: int;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var $rhs##0: Seq;
  var l##0: ref;
  var stop##0: int;
  var s##0: Seq;
  var $rhs##1: Seq;
  var l##1: ref;
  var stop##1: int;
  var s##1: Seq;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(103,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(103,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id44"} $nw := Call$$_module.List.Init(TInt);
    // TrCallStmt: After ProcessCallStmt
    myList#0 := $nw;
    defass#myList#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(104,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(105,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.List.Valid#canCall(TInt, $Heap, myList#0);
      invariant {:id "id52"} $w$loop#0
         ==> 
        _module.List.Valid#canCall(TInt, $Heap, myList#0)
         ==> _module.List.Valid(TInt, $Heap, myList#0)
           || Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box(myList#0));
      invariant {:id "id53"} $w$loop#0
         ==> 
        _module.List.Valid#canCall(TInt, $Heap, myList#0)
         ==> _module.List.Valid(TInt, $Heap, myList#0)
           || Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, 
            read($Heap, myList#0, _module.List.a));
      invariant {:id "id54"} $w$loop#0
         ==> 
        _module.List.Valid#canCall(TInt, $Heap, myList#0)
         ==> _module.List.Valid(TInt, $Heap, myList#0)
           || $Unbox(read($Heap, myList#0, _module.List.n)): int
             <= _System.array.Length($Unbox(read($Heap, myList#0, _module.List.a)): ref);
      invariant {:id "id55"} $w$loop#0
         ==> 
        _module.List.Valid#canCall(TInt, $Heap, myList#0)
         ==> _module.List.Valid(TInt, $Heap, myList#0)
           || Seq#Equal($Unbox(read($Heap, myList#0, _module.List.Contents)): Seq, 
            Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, myList#0, _module.List.a)): ref), 
              $Unbox(read($Heap, myList#0, _module.List.n)): int));
      free invariant {:id "id56"} $w$loop#0
         ==> _module.List.Valid#canCall(TInt, $Heap, myList#0)
           && 
          _module.List.Valid(TInt, $Heap, myList#0)
           && 
          Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box(myList#0))
           && Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, 
            read($Heap, myList#0, _module.List.a))
           && $Unbox(read($Heap, myList#0, _module.List.n)): int
             <= _System.array.Length($Unbox(read($Heap, myList#0, _module.List.a)): ref)
           && Seq#Equal($Unbox(read($Heap, myList#0, _module.List.Contents)): Seq, 
            Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, myList#0, _module.List.a)): ref), 
              $Unbox(read($Heap, myList#0, _module.List.n)): int));
      invariant {:id "id57"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
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
      free invariant 100 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id47"} defass#myList#0;
            assert {:id "id48"} {:subsumption 0} myList#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(myList#0), Tclass._module.List?(TInt), $Heap);
            assume _module.List.Valid#canCall(TInt, $Heap, myList#0);
            if (_module.List.Valid(TInt, $Heap, myList#0))
            {
                assert {:id "id49"} defass#myList#0;
                assert {:id "id50"} {:subsumption 0} myList#0 != null;
            }

            assume _module.List.Valid#canCall(TInt, $Heap, myList#0);
            assume {:id "id51"} _module.List.Valid(TInt, $Heap, myList#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assume true;
            assume false;
        }

        assume true;
        if (100 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 100 - i#0;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(108,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id58"} defass#myList#0;
        assume true;
        assert {:id "id59"} myList#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_0 := i#0;
        assert {:id "id60"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, myList#0, _module.List.Repr)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id61"} Call$$_module.List.Add(TInt, myList#0, $Box(t##0_0));
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(109,7)
        assume true;
        assume true;
        i#0 := i#0 + 2;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(105,3)
        assert {:id "id63"} 0 <= $decr$loop#00 || 100 - i#0 == $decr$loop#00;
        assert {:id "id64"} 100 - i#0 < $decr$loop#00;
        assume _module.List.Valid#canCall(TInt, $Heap, myList#0);
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(111,18)
    assume true;
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id65"} defass#myList#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    l##0 := myList#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    stop##0 := LitInt(89);
    call {:id "id66"} $rhs##0 := Call$$_module.__default.Client(TInt, l##0, $Box(stop##0));
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(112,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    call {:id "id68"} Call$$_module.__default.PrintSequence(TInt, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(113,14)
    assume true;
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id69"} defass#myList#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    l##1 := myList#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    stop##1 := LitInt(14);
    call {:id "id70"} $rhs##1 := Call$$_module.__default.Client(TInt, l##1, $Box(stop##1));
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(114,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := s#0;
    call {:id "id72"} Call$$_module.__default.PrintSequence(TInt, s##1);
    // TrCallStmt: After ProcessCallStmt
}



const unique class._module.List?: ClassName;

// $Is axiom for class List
axiom (forall _module.List$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.List?(_module.List$T)) } 
  $Is($o, Tclass._module.List?(_module.List$T))
     <==> $o == null || dtype($o) == Tclass._module.List?(_module.List$T));

// $IsAlloc axiom for class List
axiom (forall _module.List$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.List?(_module.List$T), $h) } 
  $IsAlloc($o, Tclass._module.List?(_module.List$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.List.Contents: Field
uses {
axiom FDim(_module.List.Contents) == 0
   && FieldOfDecl(class._module.List?, field$Contents) == _module.List.Contents
   && $IsGhostField(_module.List.Contents);
}

// List.Contents: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Contents)): Seq, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.Contents)): Seq, TSeq(_module.List$T)));

// List.Contents: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Contents)): Seq, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.Contents)): Seq, TSeq(_module.List$T), $h));

const _module.List.Repr: Field
uses {
axiom FDim(_module.List.Repr) == 0
   && FieldOfDecl(class._module.List?, field$Repr) == _module.List.Repr
   && $IsGhostField(_module.List.Repr);
}

// List.Repr: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Repr)): Set, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.Repr)): Set, TSet(Tclass._System.object())));

// List.Repr: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Repr)): Set, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.Repr)): Set, TSet(Tclass._System.object()), $h));

const _module.List.a: Field
uses {
axiom FDim(_module.List.a) == 0
   && FieldOfDecl(class._module.List?, field$a) == _module.List.a
   && !$IsGhostField(_module.List.a);
}

// List.a: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.a)): ref, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.a)): ref, Tclass._System.array(_module.List$T)));

// List.a: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.a)): ref, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.a)): ref, 
      Tclass._System.array(_module.List$T), 
      $h));

const _module.List.n: Field
uses {
axiom FDim(_module.List.n) == 0
   && FieldOfDecl(class._module.List?, field$n) == _module.List.n
   && !$IsGhostField(_module.List.n);
}

// List.n: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.n)): int, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.n)): int, Tclass._System.nat()));

// List.n: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.n)): int, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.n)): int, Tclass._System.nat(), $h));

// function declaration for _module.List.Valid
function _module.List.Valid(_module.List$T: Ty, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.List.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.List$T: Ty, $Heap: Heap, this: ref :: 
    { _module.List.Valid(_module.List$T, $Heap, this) } 
    _module.List.Valid#canCall(_module.List$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.List(_module.List$T))
           && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap))
       ==> 
      _module.List.Valid(_module.List$T, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this)));
// definition axiom for _module.List.Valid (revealed)
axiom {:id "id73"} 0 <= $FunctionContextHeight
   ==> (forall _module.List$T: Ty, $Heap: Heap, this: ref :: 
    { _module.List.Valid(_module.List$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.List.Valid#canCall(_module.List$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.List(_module.List$T))
           && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap))
       ==> _module.List.Valid(_module.List$T, $Heap, this)
         == (
          Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.a))
           && $Unbox(read($Heap, this, _module.List.n)): int
             <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref)
           && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
            Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
              $Unbox(read($Heap, this, _module.List.n)): int))));
}

function _module.List.Valid#canCall(_module.List$T: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.List.Valid
axiom (forall _module.List$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.List.Valid(_module.List$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.List(_module.List$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.List.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.List.Valid(_module.List$T, $h0, this)
       == _module.List.Valid(_module.List$T, $h1, this));

function _module.List.Valid#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.List.Valid
axiom (forall _module.List$T: Ty, $Heap: Heap, this: ref :: 
  { _module.List.Valid#requires(_module.List$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.List(_module.List$T))
       && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap)
     ==> _module.List.Valid#requires(_module.List$T, $Heap, this) == true);

procedure {:verboseName "List.Valid (well-formedness)"} CheckWellformed$$_module.List.Valid(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id74"} _module.List.Valid(_module.List$T, $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Valid (well-formedness)"} CheckWellformed$$_module.List.Valid(_module.List$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
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

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.List.Repr];
    assert {:id "id75"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.List?(_module.List$T), $Heap);
            assert {:id "id76"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.List.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.List.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.List.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.List.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.List.Valid#canCall(_module.List$T, $Heap, this);
            assume {:id "id77"} _module.List.Valid(_module.List$T, $Heap, this);
            assume {:id "id78"} Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id79"} _module.List.Valid(_module.List$T, $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.List.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.List.a];
            b$reqreads#3 := $_ReadsFrame[this, _module.List.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.a)))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.List.n];
            b$reqreads#5 := $_ReadsFrame[this, _module.List.a];
            assert {:id "id80"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.a))
           && $Unbox(read($Heap, this, _module.List.n)): int
             <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref))
        {
            b$reqreads#6 := $_ReadsFrame[this, _module.List.Contents];
            b$reqreads#7 := $_ReadsFrame[this, _module.List.a];
            assert {:id "id81"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
            b$reqreads#8 := $_ReadsFrame[this, _module.List.n];
            assert {:id "id82"} 0 <= $Unbox(read($Heap, this, _module.List.n)): int
               && $Unbox(read($Heap, this, _module.List.n)): int
                 <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
            b$reqreads#9 := (forall $i: int :: 
              { $_ReadsFrame[$Unbox(read($Heap, this, _module.List.a)): ref, IndexField($i)] } 
              0 <= $i && $i < $Unbox(read($Heap, this, _module.List.n)): int
                 ==> $_ReadsFrame[$Unbox(read($Heap, this, _module.List.a)): ref, IndexField($i)]);
        }

        assume {:id "id83"} _module.List.Valid(_module.List$T, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
              read($Heap, this, _module.List.a))
             && $Unbox(read($Heap, this, _module.List.n)): int
               <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref)
             && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
              Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
                $Unbox(read($Heap, this, _module.List.n)): int)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.List.Valid(_module.List$T, $Heap, this), TBool);
        assert {:id "id84"} b$reqreads#1;
        assert {:id "id85"} b$reqreads#2;
        assert {:id "id86"} b$reqreads#3;
        assert {:id "id87"} b$reqreads#4;
        assert {:id "id88"} b$reqreads#5;
        assert {:id "id89"} b$reqreads#6;
        assert {:id "id90"} b$reqreads#7;
        assert {:id "id91"} b$reqreads#8;
        assert {:id "id92"} b$reqreads#9;
        return;

        assume false;
    }
}



procedure {:verboseName "List.Init (well-formedness)"} CheckWellFormed$$_module.List.Init(_module.List$T: Ty) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.Init (call)"} Call$$_module.List.Init(_module.List$T: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.Valid#canCall(_module.List$T, $Heap, this);
  free ensures {:id "id96"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     && 
    _module.List.Valid(_module.List$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      read($Heap, this, _module.List.a))
     && $Unbox(read($Heap, this, _module.List.n)): int
       <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref)
     && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
        $Unbox(read($Heap, this, _module.List.n)): int));
  ensures {:id "id97"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id98"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, Seq#Empty(): Seq);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "List.Init (correctness)"} Impl$$_module.List.Init(_module.List$T: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.Valid#canCall(_module.List$T, $Heap, this);
  ensures {:id "id99"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
  ensures {:id "id100"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
        read($Heap, this, _module.List.a));
  ensures {:id "id101"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.List.n)): int
         <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
  ensures {:id "id102"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
        Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
          $Unbox(read($Heap, this, _module.List.n)): int));
  ensures {:id "id103"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id104"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, Seq#Empty(): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Init (correctness)"} Impl$$_module.List.Init(_module.List$T: Ty) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Seq;
  var this.Repr: Set;
  var this.a: ref;
  var this.n: int;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: Seq;
  var $rhs#1: int;
  var $nw: ref;

    // AddMethodImpl: Init, Impl$$_module.List.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(23,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(24,17)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := Lit(Seq#Empty(): Seq);
    assert {:id "id106"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    $rhs#1 := LitInt(0);
    this.Contents := $rhs#0;
    this.n := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(25,7)
    assume true;
    assert {:id "id110"} 0 <= LitInt(0);
    assert {:id "id111"} 0 == LitInt(0);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(_module.List$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(0);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.a := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(26,10)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), $Box(this.a));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(23,3)
    assume this != null && $Is(this, Tclass._module.List?(_module.List$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.List.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, _module.List.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.List.a)): ref == this.a;
    assume $Unbox(read($Heap, this, _module.List.n)): int == this.n;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(23,3)
}



procedure {:verboseName "List.Add (well-formedness)"} CheckWellFormed$$_module.List.Add(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module.List$T) && $IsAllocBox(t#0, _module.List$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Add (well-formedness)"} CheckWellFormed$$_module.List.Add(_module.List$T: Ty, this: ref, t#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Add, CheckWellFormed$$_module.List.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.List?(_module.List$T), $Heap);
    assume _module.List.Valid#canCall(_module.List$T, $Heap, this);
    assume {:id "id114"} _module.List.Valid(_module.List$T, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.List?(_module.List$T), $Heap);
    assume _module.List.Valid#canCall(_module.List$T, $Heap, this);
    assume {:id "id115"} _module.List.Valid(_module.List$T, $Heap, this);
    assert {:id "id116"} $IsAlloc(this, Tclass._module.List(_module.List$T), old($Heap));
    assume {:id "id117"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id118"} $IsAlloc(this, Tclass._module.List(_module.List$T), old($Heap));
    assume {:id "id119"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      Seq#Append($Unbox(read(old($Heap), this, _module.List.Contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, t#0)));
}



procedure {:verboseName "List.Add (call)"} Call$$_module.List.Add(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module.List$T) && $IsAllocBox(t#0, _module.List$T, $Heap));
  // user-defined preconditions
  requires {:id "id120"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
  requires {:id "id121"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
        read($Heap, this, _module.List.a));
  requires {:id "id122"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.List.n)): int
         <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
  requires {:id "id123"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
        Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
          $Unbox(read($Heap, this, _module.List.n)): int));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.Valid#canCall(_module.List$T, $Heap, this);
  free ensures {:id "id124"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     && 
    _module.List.Valid(_module.List$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      read($Heap, this, _module.List.a))
     && $Unbox(read($Heap, this, _module.List.n)): int
       <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref)
     && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
        $Unbox(read($Heap, this, _module.List.n)): int));
  ensures {:id "id125"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id126"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
    Seq#Append($Unbox(read(old($Heap), this, _module.List.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, t#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "List.Add (correctness)"} Impl$$_module.List.Add(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module.List$T) && $IsAllocBox(t#0, _module.List$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id127"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     && 
    _module.List.Valid(_module.List$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      read($Heap, this, _module.List.a))
     && $Unbox(read($Heap, this, _module.List.n)): int
       <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref)
     && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
        $Unbox(read($Heap, this, _module.List.n)): int));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.Valid#canCall(_module.List$T, $Heap, this);
  ensures {:id "id128"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
  ensures {:id "id129"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
        read($Heap, this, _module.List.a));
  ensures {:id "id130"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.List.n)): int
         <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
  ensures {:id "id131"} _module.List.Valid#canCall(_module.List$T, $Heap, this)
     ==> _module.List.Valid(_module.List$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
        Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
          $Unbox(read($Heap, this, _module.List.n)): int));
  ensures {:id "id132"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id133"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
    Seq#Append($Unbox(read(old($Heap), this, _module.List.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, t#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Add (correctness)"} Impl$$_module.List.Add(_module.List$T: Ty, this: ref, t#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0_0: ref
     where $Is(b#0_0, Tclass._System.array(_module.List$T))
       && $IsAlloc(b#0_0, Tclass._System.array(_module.List$T), $Heap);
  var $lambdaHeap#0_0: Heap;
  var i#0_0: int;
  var $_Frame#l0_0: [ref,Field]bool;
  var b$reqreads#0_0: bool;
  var lambdaResult#0_0: Box;
  var $nw: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0_0: ref;
  var $rhs#0_1: Set;
  var $index0: Field;
  var $obj2: ref;
  var $rhs#0: Box;
  var $rhs#1: int;
  var $rhs#2: Seq;

    // AddMethodImpl: Add, Impl$$_module.List.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(35,5)
    assert {:id "id134"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
    assume true;
    if ($Unbox(read($Heap, this, _module.List.n)): int
       == _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(36,13)
        assume true;
        assert {:id "id135"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
        assert {:id "id136"} 0
           <= Mul(LitInt(2), _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref))
             + 1;
        // Begin Comprehension WF check
        b$reqreads#0_0 := true;
        if (*)
        {
            havoc $lambdaHeap#0_0;
            assume $IsGoodHeap($lambdaHeap#0_0);
            assume $Heap == $lambdaHeap#0_0 || $HeapSucc($Heap, $lambdaHeap#0_0);
            havoc i#0_0;
            if (true)
            {
                $_Frame#l0_0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0_0, $o, alloc)): bool
                     ==> $o == this || $o == $Unbox(read($lambdaHeap#0_0, this, _module.List.a)): ref);
                b$reqreads#0_0 := $_Frame#l0_0[this, _module.List.a];
                assert {:id "id137"} b$reqreads#0_0;
                if (LitInt(0) <= i#0_0)
                {
                    assert {:id "id138"} $_Frame#l0_0[this, _module.List.a];
                    assert {:id "id139"} $Unbox(read($lambdaHeap#0_0, this, _module.List.a)): ref != null;
                    if (i#0_0
                       < _System.array.Length($Unbox(read($lambdaHeap#0_0, this, _module.List.a)): ref))
                    {
                        assert {:id "id140"} $_Frame#l0_0[this, _module.List.a];
                        assert {:id "id141"} $Unbox(read($lambdaHeap#0_0, this, _module.List.a)): ref != null;
                        assert {:id "id142"} 0 <= i#0_0
                           && i#0_0
                             < _System.array.Length($Unbox(read($lambdaHeap#0_0, this, _module.List.a)): ref);
                        assert {:id "id143"} $_Frame#l0_0[$Unbox(read($lambdaHeap#0_0, this, _module.List.a)): ref, IndexField(i#0_0)];
                        assume {:id "id144"} lambdaResult#0_0
                           == read($Heap, $Unbox(read($Heap, this, _module.List.a)): ref, IndexField(i#0_0));
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $IsBox(lambdaResult#0_0, _module.List$T);
                    }
                    else
                    {
                        assume {:id "id145"} lambdaResult#0_0 == t#0;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $IsBox(lambdaResult#0_0, _module.List$T);
                    }
                }
            }

            assume false;
        }

        // End Comprehension WF check
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._System.array?(_module.List$T));
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        assume _System.array.Length($nw)
           == Mul(LitInt(2), _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref))
             + 1;
        assert {:id "id146"} {:subsumption 0} (forall arrayinit#0_0#i0#0: int :: 
          0 <= arrayinit#0_0#i0#0
               && arrayinit#0_0#i0#0
                 < Mul(LitInt(2), _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref))
                   + 1
             ==> Requires1(TInt, 
              _module.List$T, 
              $Heap, 
              Lit(AtLayer((lambda $l#0_0#ly#0: LayerType :: 
                    Handle1((lambda $l#0_0#heap#0: Heap, $l#0_0#i#0: Box :: 
                        (if $Unbox($l#0_0#i#0): int
                             < _System.array.Length($Unbox(read($l#0_0#heap#0, this, _module.List.a)): ref)
                           then read($l#0_0#heap#0, 
                            $Unbox(read($l#0_0#heap#0, this, _module.List.a)): ref, 
                            IndexField($Unbox($l#0_0#i#0): int))
                           else t#0)), 
                      (lambda $l#0_0#heap#0: Heap, $l#0_0#i#0: Box :: 
                        $IsBox($l#0_0#i#0, TInt) && LitInt(0) <= $Unbox($l#0_0#i#0): int), 
                      (lambda $l#0_0#heap#0: Heap, $l#0_0#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0_0#o#0: ref :: 
                            $l#0_0#o#0 == this
                               || $l#0_0#o#0 == $Unbox(read($l#0_0#heap#0, this, _module.List.a)): ref))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0_0#i0#0)));
        assume (forall arrayinit#0_0#i0#0: int :: 
          { read($Heap, $nw, IndexField(arrayinit#0_0#i0#0)) } 
          0 <= arrayinit#0_0#i0#0
               && arrayinit#0_0#i0#0
                 < Mul(LitInt(2), _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref))
                   + 1
             ==> read($Heap, $nw, IndexField(arrayinit#0_0#i0#0))
               == Apply1(TInt, 
                _module.List$T, 
                $Heap, 
                Lit(AtLayer((lambda $l#0_0#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0#heap#0: Heap, $l#0_0#i#0: Box :: 
                          (if $Unbox($l#0_0#i#0): int
                               < _System.array.Length($Unbox(read($l#0_0#heap#0, this, _module.List.a)): ref)
                             then read($l#0_0#heap#0, 
                              $Unbox(read($l#0_0#heap#0, this, _module.List.a)): ref, 
                              IndexField($Unbox($l#0_0#i#0): int))
                             else t#0)), 
                        (lambda $l#0_0#heap#0: Heap, $l#0_0#i#0: Box :: 
                          $IsBox($l#0_0#i#0, TInt) && LitInt(0) <= $Unbox($l#0_0#i#0): int), 
                        (lambda $l#0_0#heap#0: Heap, $l#0_0#i#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0#o#0: ref :: 
                              $l#0_0#o#0 == this
                                 || $l#0_0#o#0 == $Unbox(read($l#0_0#heap#0, this, _module.List.a)): ref))))), 
                    $LS($LZ))), 
                $Box(arrayinit#0_0#i0#0)));
        $Heap := update($Heap, $nw, alloc, $Box(true));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        b#0_0 := $nw;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(38,7)
        assert {:id "id148"} b#0_0 != null;
        assert {:id "id149"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.List.n)): int
           && $Unbox(read($Heap, this, _module.List.n)): int <= _System.array.Length(b#0_0);
        assert {:id "id150"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
        assert {:id "id151"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.List.n)): int
           && $Unbox(read($Heap, this, _module.List.n)): int
             <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
        if (Seq#Equal(Seq#Take(Seq#FromArray($Heap, b#0_0), $Unbox(read($Heap, this, _module.List.n)): int), 
          Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
            $Unbox(read($Heap, this, _module.List.n)): int)))
        {
            assert {:id "id152"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
            assert {:id "id153"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.List.n)): int
               && $Unbox(read($Heap, this, _module.List.n)): int
                 <= _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
        }

        assume true;
        assert {:id "id154"} {:subsumption 0} Seq#Equal(Seq#Take(Seq#FromArray($Heap, b#0_0), $Unbox(read($Heap, this, _module.List.n)): int), 
          Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
            $Unbox(read($Heap, this, _module.List.n)): int));
        assert {:id "id155"} {:subsumption 0} Seq#Equal(Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
            $Unbox(read($Heap, this, _module.List.n)): int), 
          $Unbox(read($Heap, this, _module.List.Contents)): Seq);
        assume {:id "id156"} Seq#Equal(Seq#Take(Seq#FromArray($Heap, b#0_0), $Unbox(read($Heap, this, _module.List.n)): int), 
            Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
              $Unbox(read($Heap, this, _module.List.n)): int))
           && Seq#Equal(Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.List.a)): ref), 
              $Unbox(read($Heap, this, _module.List.n)): int), 
            $Unbox(read($Heap, this, _module.List.Contents)): Seq);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(39,15)
        assume true;
        $obj0 := this;
        assert {:id "id157"} $_ModifiesFrame[$obj0, _module.List.a];
        assume true;
        $obj1 := this;
        assert {:id "id158"} $_ModifiesFrame[$obj1, _module.List.Repr];
        assume true;
        $rhs#0_0 := b#0_0;
        assume true;
        $rhs#0_1 := Set#Union($Unbox(read($Heap, this, _module.List.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(b#0_0)));
        $Heap := update($Heap, $obj0, _module.List.a, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.List.Repr, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(40,7)
        assert {:id "id163"} b#0_0 != null;
        assert {:id "id164"} {:subsumption 0} 0 <= $Unbox(read($Heap, this, _module.List.n)): int
           && $Unbox(read($Heap, this, _module.List.n)): int <= _System.array.Length(b#0_0);
        assume true;
        assert {:id "id165"} Seq#Equal(Seq#Take(Seq#FromArray($Heap, b#0_0), $Unbox(read($Heap, this, _module.List.n)): int), 
          $Unbox(read($Heap, this, _module.List.Contents)): Seq);
        pop;
    }
    else
    {
    }

    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(42,23)
    assert {:id "id166"} $Unbox(read($Heap, this, _module.List.a)): ref != null;
    assert {:id "id167"} 0 <= $Unbox(read($Heap, this, _module.List.n)): int
       && $Unbox(read($Heap, this, _module.List.n)): int
         < _System.array.Length($Unbox(read($Heap, this, _module.List.a)): ref);
    assume true;
    $obj0 := $Unbox(read($Heap, this, _module.List.a)): ref;
    $index0 := IndexField($Unbox(read($Heap, this, _module.List.n)): int);
    assert {:id "id168"} $_ModifiesFrame[$obj0, $index0];
    assume true;
    $obj1 := this;
    assert {:id "id169"} $_ModifiesFrame[$obj1, _module.List.n];
    assume true;
    $obj2 := this;
    assert {:id "id170"} $_ModifiesFrame[$obj2, _module.List.Contents];
    assume true;
    $rhs#0 := t#0;
    assert {:id "id172"} $Is($Unbox(read($Heap, this, _module.List.n)): int + 1, Tclass._System.nat());
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.List.n)): int + 1;
    assume true;
    $rhs#2 := Seq#Append($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, t#0));
    $Heap := update($Heap, $obj0, $index0, $rhs#0);
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.List.n, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, _module.List.Contents, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.List
axiom (forall _module.List$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.List(_module.List$T)) } 
    { $Is(c#0, Tclass._module.List?(_module.List$T)) } 
  $Is(c#0, Tclass._module.List(_module.List$T))
     <==> $Is(c#0, Tclass._module.List?(_module.List$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.List
axiom (forall _module.List$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.List(_module.List$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.List?(_module.List$T), $h) } 
  $IsAlloc(c#0, Tclass._module.List(_module.List$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.List?(_module.List$T), $h));

const unique class._module.Cell?: ClassName;

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Cell?()) } 
  $Is($o, Tclass._module.Cell?())
     <==> $o == null || dtype($o) == Tclass._module.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Cell?(), $h) } 
  $IsAlloc($o, Tclass._module.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Cell.data: Field
uses {
axiom FDim(_module.Cell.data) == 0
   && FieldOfDecl(class._module.Cell?, field$data) == _module.Cell.data
   && !$IsGhostField(_module.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Cell?()
     ==> $Is($Unbox(read($h, $o, _module.Cell.data)): int, TInt));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cell.data)): int, TInt, $h));

// $Is axiom for non-null type _module.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Cell()) } { $Is(c#0, Tclass._module.Cell?()) } 
  $Is(c#0, Tclass._module.Cell())
     <==> $Is(c#0, Tclass._module.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Cell?(), $h));

const unique class._module.M?: ClassName;

// $Is axiom for iterator M
axiom (forall _module.M$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.M?(_module.M$T)) } 
  $Is($o, Tclass._module.M?(_module.M$T))
     <==> $o == null || dtype($o) == Tclass._module.M?(_module.M$T));

// $IsAlloc axiom for iterator M
axiom (forall _module.M$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.M?(_module.M$T), $h) } 
  $IsAlloc($o, Tclass._module.M?(_module.M$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.M.l(ref) : ref;

// M.l: Type axiom
axiom (forall _module.M$T: Ty, $o: ref :: 
  { _module.M.l($o), Tclass._module.M?(_module.M$T) } 
  $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is(_module.M.l($o), Tclass._module.List(_module.M$T)));

// M.l: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { _module.M.l($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.M.l($o), Tclass._module.List(_module.M$T), $h));

function _module.M.c(ref) : ref;

// M.c: Type axiom
axiom (forall _module.M$T: Ty, $o: ref :: 
  { _module.M.c($o), Tclass._module.M?(_module.M$T) } 
  $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is(_module.M.c($o), Tclass._module.Cell()));

// M.c: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { _module.M.c($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.M.c($o), Tclass._module.Cell(), $h));

const _module.M.x: Field
uses {
axiom FDim(_module.M.x) == 0
   && FieldOfDecl(class._module.M?, field$x) == _module.M.x
   && !$IsGhostField(_module.M.x);
}

// M.x: Type axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.M.x), Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $IsBox(read($h, $o, _module.M.x), _module.M$T));

// M.x: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.M.x), Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.M.x), _module.M$T, $h));

const _module.M.xs: Field
uses {
axiom FDim(_module.M.xs) == 0
   && FieldOfDecl(class._module.M?, field$xs) == _module.M.xs
   && $IsGhostField(_module.M.xs);
}

// M.xs: Type axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.M.xs)): Seq, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is($Unbox(read($h, $o, _module.M.xs)): Seq, TSeq(_module.M$T)));

// M.xs: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.M.xs)): Seq, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.M.xs)): Seq, TSeq(_module.M$T), $h));

function _module.M.__reads(ref) : Set;

// M._reads: Type axiom
axiom (forall _module.M$T: Ty, $o: ref :: 
  { _module.M.__reads($o), Tclass._module.M?(_module.M$T) } 
  $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is(_module.M.__reads($o), TSet(Tclass._System.object?())));

// M._reads: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { _module.M.__reads($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.M.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.M.__modifies(ref) : Set;

// M._modifies: Type axiom
axiom (forall _module.M$T: Ty, $o: ref :: 
  { _module.M.__modifies($o), Tclass._module.M?(_module.M$T) } 
  $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is(_module.M.__modifies($o), TSet(Tclass._System.object?())));

// M._modifies: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { _module.M.__modifies($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.M.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.M.__new: Field
uses {
axiom FDim(_module.M.__new) == 0
   && FieldOfDecl(class._module.M?, field$_new) == _module.M.__new
   && $IsGhostField(_module.M.__new);
}

// M._new: Type axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.M.__new)): Set, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is($Unbox(read($h, $o, _module.M.__new)): Set, TSet(Tclass._System.object?())));

// M._new: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.M.__new)): Set, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.M.__new)): Set, TSet(Tclass._System.object?()), $h));

function _module.M.__decreases0(ref) : ref;

// M._decreases0: Type axiom
axiom (forall _module.M$T: Ty, $o: ref :: 
  { _module.M.__decreases0($o), Tclass._module.M?(_module.M$T) } 
  $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is(_module.M.__decreases0($o), Tclass._module.List?(_module.M$T)));

// M._decreases0: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { _module.M.__decreases0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.M.__decreases0($o), Tclass._module.List?(_module.M$T), $h));

function _module.M.__decreases1(ref) : ref;

// M._decreases1: Type axiom
axiom (forall _module.M$T: Ty, $o: ref :: 
  { _module.M.__decreases1($o), Tclass._module.M?(_module.M$T) } 
  $o != null && dtype($o) == Tclass._module.M?(_module.M$T)
     ==> $Is(_module.M.__decreases1($o), Tclass._module.Cell?()));

// M._decreases1: Allocation axiom
axiom (forall _module.M$T: Ty, $h: Heap, $o: ref :: 
  { _module.M.__decreases1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.M?(_module.M$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.M?(_module.M$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.M.__decreases1($o), Tclass._module.Cell?(), $h));

procedure {:verboseName "M._ctor (well-formedness)"} CheckWellFormed$$_module.M.__ctor(_module.M$T: Ty, 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module.M$T))
         && $IsAlloc(l#0, Tclass._module.List(_module.M$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M._ctor (well-formedness)"} CheckWellFormed$$_module.M.__ctor(_module.M$T: Ty, l#0: ref, c#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.M.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id178"} l#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(l#0), Tclass._module.List?(_module.M$T), $Heap);
    assume _module.List.Valid#canCall(_module.M$T, $Heap, l#0);
    assume {:id "id179"} _module.List.Valid(_module.M$T, $Heap, l#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.M(_module.M$T))
       && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap);
    assume {:id "id180"} _module.M.l(this) == l#0;
    assume {:id "id181"} _module.M.c(this) == c#0;
    assume {:id "id182"} Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, Seq#Empty(): Seq);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.M?(_module.M$T), $Heap);
    assume _module.M.Valid#canCall(_module.M$T, $Heap, this);
    assume {:id "id183"} _module.M.Valid(_module.M$T, $Heap, this);
    assert {:id "id184"} l#0 != null;
    assert {:id "id185"} $IsAlloc(l#0, Tclass._module.List(_module.M$T), old($Heap));
    assume {:id "id186"} Set#Equal(_module.M.__reads(this), 
      Set#Union(Set#Empty(): Set, $Unbox(read(old($Heap), l#0, _module.List.Repr)): Set));
    assume {:id "id187"} Set#Equal(_module.M.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id188"} Set#Equal($Unbox(read($Heap, this, _module.M.__new)): Set, Set#Empty(): Set);
    assume {:id "id189"} _module.M.__decreases0(this) == l#0;
    assume {:id "id190"} _module.M.__decreases1(this) == c#0;
}



procedure {:verboseName "M._ctor (call)"} Call$$_module.M.__ctor(_module.M$T: Ty, 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module.M$T))
         && $IsAlloc(l#0, Tclass._module.List(_module.M$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.M(_module.M$T))
         && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap));
  // user-defined preconditions
  requires {:id "id191"} _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, $Box(l#0));
  requires {:id "id192"} _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, 
        read($Heap, l#0, _module.List.a));
  requires {:id "id193"} _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || $Unbox(read($Heap, l#0, _module.List.n)): int
         <= _System.array.Length($Unbox(read($Heap, l#0, _module.List.a)): ref);
  requires {:id "id194"} _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || Seq#Equal($Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
        Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, l#0, _module.List.a)): ref), 
          $Unbox(read($Heap, l#0, _module.List.n)): int));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id195"} _module.M.l(this) == l#0;
  free ensures true;
  ensures {:id "id196"} _module.M.c(this) == c#0;
  free ensures true;
  ensures {:id "id197"} Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, Seq#Empty(): Seq);
  free ensures _module.M.Valid#canCall(_module.M$T, $Heap, this);
  ensures {:id "id198"} _module.M.Valid(_module.M$T, $Heap, this);
  free ensures true;
  ensures {:id "id199"} Set#Equal(_module.M.__reads(this), 
    Set#Union(Set#Empty(): Set, $Unbox(read(old($Heap), l#0, _module.List.Repr)): Set));
  free ensures true;
  ensures {:id "id200"} Set#Equal(_module.M.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id201"} Set#Equal($Unbox(read($Heap, this, _module.M.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id202"} _module.M.__decreases0(this) == l#0;
  free ensures true;
  ensures {:id "id203"} _module.M.__decreases1(this) == c#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.M.Valid
function _module.M.Valid(_module.M$T: Ty, $heap: Heap, this: ref) : bool;

function _module.M.Valid#canCall(_module.M$T: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.M.Valid
axiom (forall _module.M$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.M.Valid(_module.M$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.M(_module.M$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.M.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.M.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.M.Valid(_module.M$T, $h0, this)
       == _module.M.Valid(_module.M$T, $h1, this));

function _module.M.Valid#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.M.Valid
axiom (forall _module.M$T: Ty, $Heap: Heap, this: ref :: 
  { _module.M.Valid#requires(_module.M$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.M(_module.M$T))
       && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap)
     ==> _module.M.Valid#requires(_module.M$T, $Heap, this) == true);

procedure {:verboseName "M.Valid (well-formedness)"} CheckWellformed$$_module.M.Valid(_module.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.M(_module.M$T))
         && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M.Valid (well-formedness)"} CheckWellformed$$_module.M.Valid(_module.M$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.M.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.M.__new];
    assert {:id "id204"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "M.MoveNext (call)"} Call$$_module.M.MoveNext(_module.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.M(_module.M$T))
         && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id205"} _module.M.Valid(_module.M$T, $Heap, this);
  requires {:id "id206"} Lit(true);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id207"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.M.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.M.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id208"} !Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.M.Valid#canCall(_module.M$T, $Heap, this);
  ensures {:id "id209"} more#0 ==> _module.M.Valid(_module.M$T, $Heap, this);
  free ensures true;
  ensures {:id "id210"} Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.M.xs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.M.x)))
       else $Unbox(read(old($Heap), this, _module.M.xs)): Seq));
  free ensures true;
  ensures {:id "id211"} more#0
     ==> Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
         <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
       && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
        $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
        Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
  free ensures true;
  ensures {:id "id212"} more#0
     ==> read($Heap, this, _module.M.x)
       == Seq#Index($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
        Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1);
  free ensures true;
  ensures {:id "id213"} !more#0
     ==> Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, 
      $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.M.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.M.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.M
axiom (forall _module.M$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.M(_module.M$T)) } 
    { $Is(c#0, Tclass._module.M?(_module.M$T)) } 
  $Is(c#0, Tclass._module.M(_module.M$T))
     <==> $Is(c#0, Tclass._module.M?(_module.M$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.M
axiom (forall _module.M$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.M(_module.M$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.M?(_module.M$T), $h) } 
  $IsAlloc(c#0, Tclass._module.M(_module.M$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.M?(_module.M$T), $h));

procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.M(_module.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.M(_module.M$T))
         && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap), 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module.M$T))
         && $IsAlloc(l#0, Tclass._module.List(_module.M$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.M(_module.M$T: Ty, this: ref, l#0: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $_OldIterHeap: Heap;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    assert {:id "id214"} l#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(l#0), Tclass._module.List?(_module.M$T), $Heap);
    assume _module.List.Valid#canCall(_module.M$T, $Heap, l#0);
    assume {:id "id215"} _module.List.Valid(_module.M$T, $Heap, l#0);
    assert {:id "id216"} l#0 != null;
    assume {:id "id217"} _module.M.l(this) == l#0;
    assume {:id "id218"} _module.M.c(this) == c#0;
    assume {:id "id219"} Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, Seq#Empty(): Seq);
    assume {:id "id220"} _module.M.Valid(_module.M$T, $Heap, this);
    assume {:id "id221"} Set#Equal(_module.M.__reads(this), 
      Set#Union(Set#Empty(): Set, $Unbox(read(old($Heap), l#0, _module.List.Repr)): Set));
    assume {:id "id222"} Set#Equal(_module.M.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id223"} Set#Equal($Unbox(read($Heap, this, _module.M.__new)): Set, Set#Empty(): Set);
    assume {:id "id224"} _module.M.__decreases0(this) == l#0;
    assume {:id "id225"} _module.M.__decreases1(this) == c#0;
    call $IterHavoc0(this, _module.M.__reads(this), _module.M.__modifies(this));
    assume _module.M.Valid(_module.M$T, $Heap, this);
    assume {:id "id226"} true;
    $_OldIterHeap := $Heap;
    call $IterHavoc1(this, _module.M.__modifies(this), $Unbox(read($Heap, this, _module.M.__new)): Set);
    assume (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($_OldIterHeap, this, _module.M.__new)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read($_OldIterHeap, $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($_OldIterHeap, this, _module.M.__new)): Set, $Box($o))
           ==> !$Unbox(read($_OldIterHeap, $o, alloc)): bool);
    if (*)
    {
        assume {:id "id227"} _module.M.Valid(_module.M$T, $Heap, this);
        assume $Unbox(read($Heap, this, _module.M.xs)): Seq
           == Seq#Append($Unbox(read($_OldIterHeap, this, _module.M.xs)): Seq, 
            Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.M.x)));
        assert {:id "id228"} _module.M.l(this) != null;
        assume {:id "id229"} Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
             <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
           && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
            $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
            Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
        assert {:id "id230"} _module.M.l(this) != null;
        assert {:id "id231"} 0 <= Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1
           && Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1
             < Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq);
        assume {:id "id232"} read($Heap, this, _module.M.x)
           == Seq#Index($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
            Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1);
    }
    else
    {
        assume $Unbox(read($Heap, this, _module.M.xs)): Seq
           == $Unbox(read($_OldIterHeap, this, _module.M.xs)): Seq;
        assert {:id "id233"} _module.M.l(this) != null;
        assume {:id "id234"} Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, 
          $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq);
    }
}



procedure {:verboseName "M (correctness)"} Impl$$_module.M(_module.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.M(_module.M$T))
         && $IsAlloc(this, Tclass._module.M(_module.M$T), $Heap), 
    l#0: ref
       where $Is(l#0, Tclass._module.List(_module.M$T))
         && $IsAlloc(l#0, Tclass._module.List(_module.M$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap));
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, $Box(l#0));
  requires _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, 
        read($Heap, l#0, _module.List.a));
  requires _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || $Unbox(read($Heap, l#0, _module.List.n)): int
         <= _System.array.Length($Unbox(read($Heap, l#0, _module.List.a)): ref);
  requires _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     ==> _module.List.Valid(_module.M$T, $Heap, l#0)
       || Seq#Equal($Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
        Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, l#0, _module.List.a)): ref), 
          $Unbox(read($Heap, l#0, _module.List.n)): int));
  free requires _module.List.Valid#canCall(_module.M$T, $Heap, l#0)
     && 
    _module.List.Valid(_module.M$T, $Heap, l#0)
     && 
    Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, $Box(l#0))
     && Set#IsMember($Unbox(read($Heap, l#0, _module.List.Repr)): Set, 
      read($Heap, l#0, _module.List.a))
     && $Unbox(read($Heap, l#0, _module.List.n)): int
       <= _System.array.Length($Unbox(read($Heap, l#0, _module.List.a)): ref)
     && Seq#Equal($Unbox(read($Heap, l#0, _module.List.Contents)): Seq, 
      Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, l#0, _module.List.a)): ref), 
        $Unbox(read($Heap, l#0, _module.List.n)): int));
  modifies $Heap;
  // user-defined postconditions
  ensures Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, 
    $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.M(_module.M$T: Ty, this: ref, l#0: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $rhs#0_1_0: Box;
  var $obj0: ref;
  var $rhs#0_2_0: Box;
  var $rhs#0_2_1: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    assume {:id "id235"} _module.List.Valid(_module.M$T, $Heap, l#0);
    assume {:id "id236"} _module.M.l(this) == l#0;
    assume {:id "id237"} _module.M.c(this) == c#0;
    assume {:id "id238"} Seq#Equal($Unbox(read($Heap, this, _module.M.xs)): Seq, Seq#Empty(): Seq);
    assume {:id "id239"} _module.M.Valid(_module.M$T, $Heap, this);
    assume {:id "id240"} Set#Equal(_module.M.__reads(this), 
      Set#Union(Set#Empty(): Set, $Unbox(read(old($Heap), l#0, _module.List.Repr)): Set));
    assume {:id "id241"} Set#Equal(_module.M.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id242"} Set#Equal($Unbox(read($Heap, this, _module.M.__new)): Set, Set#Empty(): Set);
    assume {:id "id243"} _module.M.__decreases0(this) == l#0;
    assume {:id "id244"} _module.M.__decreases1(this) == c#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.M.__reads(this), $Unbox(read($Heap, this, _module.M.__new)): Set);
    assume {:id "id245"} true;
    $_OldIterHeap := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(57,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(58,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    $decr_init$loop#01 := $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id250"} $w$loop#0 ==> i#0 <= $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int;
      invariant {:id "id251"} $w$loop#0 ==> i#0 == Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq);
      invariant {:id "id252"} $w$loop#0
         ==> Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
             <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
           && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
            $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
            Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.M.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00
         && (_yieldCount#0 == $decr_init$loop#00
           ==> $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int - i#0
             <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            assert {:id "id247"} {:subsumption 0} _module.M.l(this) != null;
            if (i#0 <= $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int)
            {
            }

            if (i#0 <= $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int
               && i#0 == Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq))
            {
                assert {:id "id248"} {:subsumption 0} _module.M.l(this) != null;
            }

            assume true;
            assume {:id "id249"} i#0 <= $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int
               && i#0 == Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
               && 
              Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
                 <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
               && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
            assume true;
            assert {:id "id253"} _module.M.l(this) != null;
            assume true;
            assume false;
        }

        assert {:id "id254"} _module.M.l(this) != null;
        assume true;
        if ($Unbox(read($Heap, _module.M.l(this), _module.List.n)): int <= i#0)
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        $decr$loop#01 := $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int - i#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(61,5)
        if (*)
        {
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(61,14)
            assert {:id "id255"} {:subsumption 0} _module.M.l(this) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.M.l(this)), Tclass._module.List?(_module.M$T), $Heap);
            assume _module.List.Valid#canCall(_module.M$T, $Heap, _module.M.l(this));
            assume _module.List.Valid#canCall(_module.M$T, $Heap, _module.M.l(this));
            assert {:id "id256"} {:subsumption 0} _module.List.Valid#canCall(_module.M$T, $Heap, _module.M.l(this))
               ==> _module.List.Valid(_module.M$T, $Heap, _module.M.l(this))
                 || Set#IsMember($Unbox(read($Heap, _module.M.l(this), _module.List.Repr)): Set, 
                  $Box(_module.M.l(this)));
            assert {:id "id257"} {:subsumption 0} _module.List.Valid#canCall(_module.M$T, $Heap, _module.M.l(this))
               ==> _module.List.Valid(_module.M$T, $Heap, _module.M.l(this))
                 || Set#IsMember($Unbox(read($Heap, _module.M.l(this), _module.List.Repr)): Set, 
                  read($Heap, _module.M.l(this), _module.List.a));
            assert {:id "id258"} {:subsumption 0} _module.List.Valid#canCall(_module.M$T, $Heap, _module.M.l(this))
               ==> _module.List.Valid(_module.M$T, $Heap, _module.M.l(this))
                 || $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int
                   <= _System.array.Length($Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref);
            assert {:id "id259"} {:subsumption 0} _module.List.Valid#canCall(_module.M$T, $Heap, _module.M.l(this))
               ==> _module.List.Valid(_module.M$T, $Heap, _module.M.l(this))
                 || Seq#Equal($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                  Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref), 
                    $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int));
            assume {:id "id260"} _module.List.Valid(_module.M$T, $Heap, _module.M.l(this));
            pop;
        }
        else
        {
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(62,5)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(63,9)
            assume true;
            assert {:id "id261"} $_ModifiesFrame[this, _module.M.x];
            assert {:id "id262"} _module.M.l(this) != null;
            assert {:id "id263"} $Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref != null;
            assert {:id "id264"} 0 <= i#0
               && i#0
                 < _System.array.Length($Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref);
            assume true;
            $rhs#0_1_0 := read($Heap, 
              $Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref, 
              IndexField(i#0));
            $Heap := update($Heap, this, _module.M.x, $rhs#0_1_0);
            assume $IsGoodHeap($Heap);
            // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(63,20)
            $Heap := update($Heap, 
              this, 
              _module.M.xs, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.M.x)))));
            _yieldCount#0 := _yieldCount#0 + 1;
            assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq);
            assume $IsGoodHeap($Heap);
            assert {:id "id267"} {:subsumption 0} Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
                 <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
               && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
            assume {:id "id268"} Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
                 <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
               && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
            assert {:id "id269"} {:subsumption 0} read($Heap, this, _module.M.x)
               == Seq#Index($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1);
            assume {:id "id270"} read($Heap, this, _module.M.x)
               == Seq#Index($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1);
            call $YieldHavoc(this, _module.M.__reads(this), $Unbox(read($Heap, this, _module.M.__new)): Set);
            assume {:id "id271"} true;
            $_OldIterHeap := $Heap;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(64,9)
            assume true;
            assume true;
            i#0 := i#0 + 1;
        }
        else
        {
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(66,12)
            assume true;
            $obj0 := this;
            assert {:id "id273"} $_ModifiesFrame[$obj0, _module.M.x];
            assume true;
            assert {:id "id274"} _module.M.l(this) != null;
            assert {:id "id275"} $Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref != null;
            assert {:id "id276"} 0 <= i#0
               && i#0
                 < _System.array.Length($Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref);
            assume true;
            $rhs#0_2_0 := read($Heap, 
              $Unbox(read($Heap, _module.M.l(this), _module.List.a)): ref, 
              IndexField(i#0));
            assume true;
            $rhs#0_2_1 := i#0 + 1;
            $Heap := update($Heap, $obj0, _module.M.x, $rhs#0_2_0);
            assume $IsGoodHeap($Heap);
            i#0 := $rhs#0_2_1;
            // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(67,7)
            $Heap := update($Heap, 
              this, 
              _module.M.xs, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.M.x)))));
            _yieldCount#0 := _yieldCount#0 + 1;
            assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq);
            assume $IsGoodHeap($Heap);
            assert {:id "id281"} {:subsumption 0} Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
                 <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
               && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
            assume {:id "id282"} Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq)
                 <= Seq#Length($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq)
               && Seq#SameUntil($Unbox(read($Heap, this, _module.M.xs)): Seq, 
                $Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq));
            assert {:id "id283"} {:subsumption 0} read($Heap, this, _module.M.x)
               == Seq#Index($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1);
            assume {:id "id284"} read($Heap, this, _module.M.x)
               == Seq#Index($Unbox(read($Heap, _module.M.l(this), _module.List.Contents)): Seq, 
                Seq#Length($Unbox(read($Heap, this, _module.M.xs)): Seq) - 1);
            call $YieldHavoc(this, _module.M.__reads(this), $Unbox(read($Heap, this, _module.M.__new)): Set);
            assume {:id "id285"} true;
            $_OldIterHeap := $Heap;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Iter.dfy(58,3)
        assert {:id "id286"} 0 <= $decr$loop#01
           || _yieldCount#0 > $decr$loop#00
           || $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int - i#0
             == $decr$loop#01;
        assert {:id "id287"} _yieldCount#0 > $decr$loop#00
           || (_yieldCount#0 == $decr$loop#00
             && $Unbox(read($Heap, _module.M.l(this), _module.List.n)): int - i#0
               < $decr$loop#01);
        assume true;
    }
}



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

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$M: TyTagFamily;

const unique field$Repr: NameFamily;

const unique field$a: NameFamily;

const unique field$n: NameFamily;

const unique field$Contents: NameFamily;

const unique field$xs: NameFamily;

const unique field$_new: NameFamily;

const unique field$x: NameFamily;

const unique field$data: NameFamily;
