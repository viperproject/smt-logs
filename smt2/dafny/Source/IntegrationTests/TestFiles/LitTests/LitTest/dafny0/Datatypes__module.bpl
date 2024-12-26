// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy

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

function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

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

function Tclass._module.AnotherNode() : Ty
uses {
// Tclass._module.AnotherNode Tag
axiom Tag(Tclass._module.AnotherNode()) == Tagclass._module.AnotherNode
   && TagFamily(Tclass._module.AnotherNode()) == tytagFamily$AnotherNode;
}

const unique Tagclass._module.AnotherNode: TyTag;

// Box/unbox axiom for Tclass._module.AnotherNode
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AnotherNode()) } 
  $IsBox(bx, Tclass._module.AnotherNode())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AnotherNode()));

procedure {:verboseName "TestAllocatednessAxioms (well-formedness)"} CheckWellFormed$$_module.__default.TestAllocatednessAxioms(a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(Tclass._module.Node()))
         && $IsAlloc(a#0, Tclass._module.List(Tclass._module.Node()), $Heap)
         && $IsA#_module.List(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(Tclass._module.Node()))
         && $IsAlloc(b#0, Tclass._module.List(Tclass._module.Node()), $Heap)
         && $IsA#_module.List(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.List(Tclass._module.AnotherNode()))
         && $IsAlloc(c#0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap)
         && $IsA#_module.List(c#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAllocatednessAxioms (call)"} Call$$_module.__default.TestAllocatednessAxioms(a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(Tclass._module.Node()))
         && $IsAlloc(a#0, Tclass._module.List(Tclass._module.Node()), $Heap)
         && $IsA#_module.List(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(Tclass._module.Node()))
         && $IsAlloc(b#0, Tclass._module.List(Tclass._module.Node()), $Heap)
         && $IsA#_module.List(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.List(Tclass._module.AnotherNode()))
         && $IsAlloc(c#0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap)
         && $IsA#_module.List(c#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAllocatednessAxioms (correctness)"} Impl$$_module.__default.TestAllocatednessAxioms(a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(Tclass._module.Node()))
         && $IsAlloc(a#0, Tclass._module.List(Tclass._module.Node()), $Heap)
         && $IsA#_module.List(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(Tclass._module.Node()))
         && $IsAlloc(b#0, Tclass._module.List(Tclass._module.Node()), $Heap)
         && $IsA#_module.List(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.List(Tclass._module.AnotherNode()))
         && $IsAlloc(c#0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap)
         && $IsA#_module.List(c#0))
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



function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestAllocatednessAxioms (correctness)"} Impl$$_module.__default.TestAllocatednessAxioms(a#0: DatatypeType, b#0: DatatypeType, c#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var defass#p#0: bool;
  var p#0: ref
     where defass#p#0
       ==> $Is(p#0, Tclass._module.Node()) && $IsAlloc(p#0, Tclass._module.Node(), $Heap);
  var _mcc#0#0_0: ref;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: ref;
  var let#0_1#0#0: ref;
  var _mcc#2#2_0: ref;
  var _mcc#3#2_0: DatatypeType;
  var tail#2_0: DatatypeType;
  var let#2_0#0#0: DatatypeType;
  var x#2_0: ref;
  var let#2_1#0#0: ref;
  var _mcc#4#2_0_0: ref;
  var _mcc#5#2_0_0: DatatypeType;
  var more#2_0_0: DatatypeType;
  var let#2_0_0#0#0: DatatypeType;
  var y#2_0_0: ref;
  var let#2_0_1#0#0: ref;
  var _mcc#6#4_0: ref;
  var _mcc#7#4_0: DatatypeType;
  var tail#4_0: DatatypeType;
  var let#4_0#0#0: DatatypeType;
  var x#4_0: ref;
  var let#4_1#0#0: ref;
  var _mcc#8#4_0_0: ref;
  var _mcc#9#4_0_0: DatatypeType;
  var more#4_0_0: DatatypeType;
  var let#4_0_0#0#0: DatatypeType;
  var y#4_0_0: ref;
  var let#4_0_1#0#0: ref;
  var defass#o#4_0_0: bool;
  var o#4_0_0: ref
     where defass#o#4_0_0
       ==> $Is(o#4_0_0, Tclass._System.object())
         && $IsAlloc(o#4_0_0, Tclass._System.object(), $Heap);

    // AddMethodImpl: TestAllocatednessAxioms, Impl$$_module.__default.TestAllocatednessAxioms
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(69,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(70,9)
    assume true;
    assert {:id "id122"} defass#n#0;
    assume true;
    p#0 := n#0;
    defass#p#0 := true;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (a#0 == #_module.List.Nil())
    {
    }
    else if (a#0 == #_module.List.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Node())
           && $IsAlloc(_mcc#0#0_0, Tclass._module.Node(), $Heap);
        assume $Is(_mcc#1#0_0, Tclass._module.List(Tclass._module.Node()))
           && $IsAlloc(_mcc#1#0_0, Tclass._module.List(Tclass._module.Node()), $Heap);
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.List(Tclass._module.Node()))
           && $IsAlloc(tail#0_0, Tclass._module.List(Tclass._module.Node()), $Heap);
        assume {:id "id124"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(Tclass._module.Node()));
        assume {:id "id125"} tail#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume $Is(x#0_0, Tclass._module.Node())
           && $IsAlloc(x#0_0, Tclass._module.Node(), $Heap);
        assume {:id "id126"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Node());
        assume {:id "id127"} x#0_0 == let#0_1#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(73,27)
        assert {:id "id128"} defass#n#0;
        assume true;
        assert {:id "id129"} x#0_0 != n#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(73,44)
        assume true;
        assume true;
        p#0 := x#0_0;
        defass#p#0 := true;
    }
    else
    {
        assume false;
    }

    assume true;
    havoc _mcc#2#2_0, _mcc#3#2_0;
    if (b#0 == #_module.List.Nil())
    {
    }
    else if (b#0 == #_module.List.Cons($Box(_mcc#2#2_0), _mcc#3#2_0))
    {
        assume $Is(_mcc#2#2_0, Tclass._module.Node());
        assume $Is(_mcc#3#2_0, Tclass._module.List(Tclass._module.Node()));
        havoc tail#2_0;
        assume $Is(tail#2_0, Tclass._module.List(Tclass._module.Node()))
           && $IsAlloc(tail#2_0, Tclass._module.List(Tclass._module.Node()), $Heap);
        assume {:id "id131"} let#2_0#0#0 == _mcc#3#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_0#0#0, Tclass._module.List(Tclass._module.Node()));
        assume {:id "id132"} tail#2_0 == let#2_0#0#0;
        havoc x#2_0;
        assume $Is(x#2_0, Tclass._module.Node())
           && $IsAlloc(x#2_0, Tclass._module.Node(), $Heap);
        assume {:id "id133"} let#2_1#0#0 == _mcc#2#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_1#0#0, Tclass._module.Node());
        assume {:id "id134"} x#2_0 == let#2_1#0#0;
        assume true;
        havoc _mcc#4#2_0_0, _mcc#5#2_0_0;
        if (tail#2_0 == #_module.List.Nil())
        {
        }
        else if (tail#2_0 == #_module.List.Cons($Box(_mcc#4#2_0_0), _mcc#5#2_0_0))
        {
            assume $Is(_mcc#4#2_0_0, Tclass._module.Node());
            assume $Is(_mcc#5#2_0_0, Tclass._module.List(Tclass._module.Node()));
            havoc more#2_0_0;
            assume $Is(more#2_0_0, Tclass._module.List(Tclass._module.Node()))
               && $IsAlloc(more#2_0_0, Tclass._module.List(Tclass._module.Node()), $Heap);
            assume {:id "id135"} let#2_0_0#0#0 == _mcc#5#2_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2_0_0#0#0, Tclass._module.List(Tclass._module.Node()));
            assume {:id "id136"} more#2_0_0 == let#2_0_0#0#0;
            havoc y#2_0_0;
            assume $Is(y#2_0_0, Tclass._module.Node())
               && $IsAlloc(y#2_0_0, Tclass._module.Node(), $Heap);
            assume {:id "id137"} let#2_0_1#0#0 == _mcc#4#2_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2_0_1#0#0, Tclass._module.Node());
            assume {:id "id138"} y#2_0_0 == let#2_0_1#0#0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(81,11)
            assert {:id "id139"} defass#n#0;
            assume true;
            assert {:id "id140"} y#2_0_0 != n#0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(82,11)
            assert {:id "id141"} defass#p#0;
            assume true;
            assert {:id "id142"} y#2_0_0 != p#0;
        }
        else
        {
            assume false;
        }
    }
    else
    {
        assume false;
    }

    assume true;
    havoc _mcc#6#4_0, _mcc#7#4_0;
    if (c#0 == #_module.List.Nil())
    {
    }
    else if (c#0 == #_module.List.Cons($Box(_mcc#6#4_0), _mcc#7#4_0))
    {
        assume $Is(_mcc#6#4_0, Tclass._module.AnotherNode())
           && $IsAlloc(_mcc#6#4_0, Tclass._module.AnotherNode(), $Heap);
        assume $Is(_mcc#7#4_0, Tclass._module.List(Tclass._module.AnotherNode()))
           && $IsAlloc(_mcc#7#4_0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap);
        havoc tail#4_0;
        assume $Is(tail#4_0, Tclass._module.List(Tclass._module.AnotherNode()))
           && $IsAlloc(tail#4_0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap);
        assume {:id "id143"} let#4_0#0#0 == _mcc#7#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_0#0#0, Tclass._module.List(Tclass._module.AnotherNode()));
        assume {:id "id144"} tail#4_0 == let#4_0#0#0;
        havoc x#4_0;
        assume $Is(x#4_0, Tclass._module.AnotherNode())
           && $IsAlloc(x#4_0, Tclass._module.AnotherNode(), $Heap);
        assume {:id "id145"} let#4_1#0#0 == _mcc#6#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_1#0#0, Tclass._module.AnotherNode());
        assume {:id "id146"} x#4_0 == let#4_1#0#0;
        assume true;
        havoc _mcc#8#4_0_0, _mcc#9#4_0_0;
        if (tail#4_0 == #_module.List.Nil())
        {
        }
        else if (tail#4_0 == #_module.List.Cons($Box(_mcc#8#4_0_0), _mcc#9#4_0_0))
        {
            assume $Is(_mcc#8#4_0_0, Tclass._module.AnotherNode())
               && $IsAlloc(_mcc#8#4_0_0, Tclass._module.AnotherNode(), $Heap);
            assume $Is(_mcc#9#4_0_0, Tclass._module.List(Tclass._module.AnotherNode()))
               && $IsAlloc(_mcc#9#4_0_0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap);
            havoc more#4_0_0;
            assume $Is(more#4_0_0, Tclass._module.List(Tclass._module.AnotherNode()))
               && $IsAlloc(more#4_0_0, Tclass._module.List(Tclass._module.AnotherNode()), $Heap);
            assume {:id "id147"} let#4_0_0#0#0 == _mcc#9#4_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4_0_0#0#0, Tclass._module.List(Tclass._module.AnotherNode()));
            assume {:id "id148"} more#4_0_0 == let#4_0_0#0#0;
            havoc y#4_0_0;
            assume $Is(y#4_0_0, Tclass._module.AnotherNode())
               && $IsAlloc(y#4_0_0, Tclass._module.AnotherNode(), $Heap);
            assume {:id "id149"} let#4_0_1#0#0 == _mcc#8#4_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4_0_1#0#0, Tclass._module.AnotherNode());
            assume {:id "id150"} y#4_0_0 == let#4_0_1#0#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(91,25)
            assume true;
            assume true;
            o#4_0_0 := y#4_0_0;
            defass#o#4_0_0 := true;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(92,11)
            assert {:id "id152"} defass#p#0;
            assert {:id "id153"} defass#o#4_0_0;
            assume true;
            assert {:id "id154"} p#0 != o#4_0_0;
        }
        else
        {
            assume false;
        }
    }
    else
    {
        assume false;
    }
}



function Tclass._module.XList() : Ty
uses {
// Tclass._module.XList Tag
axiom Tag(Tclass._module.XList()) == Tagclass._module.XList
   && TagFamily(Tclass._module.XList()) == tytagFamily$XList;
}

const unique Tagclass._module.XList: TyTag;

// Box/unbox axiom for Tclass._module.XList
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.XList()) } 
  $IsBox(bx, Tclass._module.XList())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.XList()));

procedure {:verboseName "Destructors0 (well-formedness)"} CheckWellFormed$$_module.__default.Destructors0(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Destructors0 (call)"} Call$$_module.__default.Destructors0(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Destructors0 (correctness)"} Impl$$_module.__default.Destructors0(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Destructors0 (correctness)"} Impl$$_module.__default.Destructors0(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d##0: DatatypeType;
  var hd#0_0: int;
  var tl#0_0: DatatypeType
     where $Is(tl#0_0, Tclass._module.XList())
       && $IsAlloc(tl#0_0, Tclass._module.XList(), $Heap);

    // AddMethodImpl: Destructors0, Impl$$_module.__default.Destructors0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(146,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := d#0;
    call {:id "id155"} Call$$_module.__default.Lemma__AllCases(d##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(147,3)
    if (*)
    {
        assume true;
        assume {:id "id163"} _module.XList.XNil_q(d#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(149,7)
        assume $IsA#_module.XList(d#0);
        assert {:id "id164"} _module.XList#Equal(d#0, #_module.XList.XNil());
    }
    else if (*)
    {
        assume true;
        assume {:id "id157"} _module.XList.XCons_q(d#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(151,14)
        assume true;
        assert {:id "id158"} _module.XList.XCons_q(d#0);
        assume true;
        hd#0_0 := _module.XList.Car(d#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(152,14)
        assume true;
        assert {:id "id160"} _module.XList.XCons_q(d#0);
        assume true;
        tl#0_0 := _module.XList.Cdr(d#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(153,7)
        assume $IsA#_module.XList(d#0);
        assert {:id "id162"} _module.XList#Equal(d#0, #_module.XList.XCons(hd#0_0, tl#0_0));
    }
    else
    {
        assume true;
        assume true;
        assume !_module.XList.XNil_q(d#0) && !_module.XList.XCons_q(d#0);
        assert {:id "id156"} false;
    }
}



procedure {:verboseName "Destructors1 (well-formedness)"} CheckWellFormed$$_module.__default.Destructors1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Destructors1 (call)"} Call$$_module.__default.Destructors1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Destructors1 (correctness)"} Impl$$_module.__default.Destructors1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Destructors1 (correctness)"} Impl$$_module.__default.Destructors1(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var tl#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var hd#0_0: int;
  var let#0_1#0#0: int;

    // AddMethodImpl: Destructors1, Impl$$_module.__default.Destructors1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (d#0 == #_module.XList.XNil())
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(160,7)
        assume true;
        assert {:id "id170"} _module.XList.XNil_q(d#0);
    }
    else if (d#0 == #_module.XList.XCons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.XList());
        havoc tl#0_0;
        assume $Is(tl#0_0, Tclass._module.XList())
           && $IsAlloc(tl#0_0, Tclass._module.XList(), $Heap);
        assume {:id "id165"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.XList());
        assume {:id "id166"} tl#0_0 == let#0_0#0#0;
        havoc hd#0_0;
        assume {:id "id167"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id168"} hd#0_0 == let#0_1#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(162,7)
        assume true;
        assert {:id "id169"} _module.XList.XCons_q(d#0);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Destructors2 (well-formedness)"} CheckWellFormed$$_module.__default.Destructors2(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Destructors2 (call)"} Call$$_module.__default.Destructors2(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Destructors2 (correctness)"} Impl$$_module.__default.Destructors2(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Destructors2 (correctness)"} Impl$$_module.__default.Destructors2(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var tl#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var hd#0_0: int;
  var let#0_1#0#0: int;

    // AddMethodImpl: Destructors2, Impl$$_module.__default.Destructors2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (d#0 == #_module.XList.XNil())
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(170,7)
        assume true;
        assert {:id "id176"} _module.XList.XCons_q(d#0);
    }
    else if (d#0 == #_module.XList.XCons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.XList());
        havoc tl#0_0;
        assume $Is(tl#0_0, Tclass._module.XList())
           && $IsAlloc(tl#0_0, Tclass._module.XList(), $Heap);
        assume {:id "id171"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.XList());
        assume {:id "id172"} tl#0_0 == let#0_0#0#0;
        havoc hd#0_0;
        assume {:id "id173"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id174"} hd#0_0 == let#0_1#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(172,7)
        assume true;
        assert {:id "id175"} _module.XList.XNil_q(d#0);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Lemma_AllCases (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__AllCases(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_AllCases (call)"} Call$$_module.__default.Lemma__AllCases(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id180"} _module.XList.XNil_q(d#0) || _module.XList.XCons_q(d#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Lemma_AllCases (correctness)"} Impl$$_module.__default.Lemma__AllCases(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id181"} _module.XList.XNil_q(d#0) || _module.XList.XCons_q(d#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_AllCases (correctness)"} Impl$$_module.__default.Lemma__AllCases(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;

    // AddMethodImpl: Lemma_AllCases, Impl$$_module.__default.Lemma__AllCases
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (d#0 == #_module.XList.XNil())
    {
    }
    else if (d#0 == #_module.XList.XCons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.XList());
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "InjectivityTests (well-formedness)"} CheckWellFormed$$_module.__default.InjectivityTests(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InjectivityTests (call)"} Call$$_module.__default.InjectivityTests(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0));
  // user-defined preconditions
  requires {:id "id183"} !_module.XList#Equal(d#0, #_module.XList.XNil());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "InjectivityTests (correctness)"} Impl$$_module.__default.InjectivityTests(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id184"} !_module.XList#Equal(d#0, #_module.XList.XNil());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InjectivityTests (correctness)"} Impl$$_module.__default.InjectivityTests(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var b#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var a#0_0: int;
  var let#0_1#0#0: int;
  var _mcc#2#0_0_0: int;
  var _mcc#3#0_0_0: DatatypeType;
  var y#0_0_0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0_0_0: int;
  var let#0_0_1#0#0: int;

    // AddMethodImpl: InjectivityTests, Impl$$_module.__default.InjectivityTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (d#0 == #_module.XList.XCons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.XList());
        havoc b#0_0;
        assume $Is(b#0_0, Tclass._module.XList())
           && $IsAlloc(b#0_0, Tclass._module.XList(), $Heap);
        assume {:id "id186"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.XList());
        assume {:id "id187"} b#0_0 == let#0_0#0#0;
        havoc a#0_0;
        assume {:id "id188"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id189"} a#0_0 == let#0_1#0#0;
        assume true;
        havoc _mcc#2#0_0_0, _mcc#3#0_0_0;
        if (d#0 == #_module.XList.XCons(_mcc#2#0_0_0, _mcc#3#0_0_0))
        {
            assume $Is(_mcc#3#0_0_0, Tclass._module.XList());
            havoc y#0_0_0;
            assume $Is(y#0_0_0, Tclass._module.XList())
               && $IsAlloc(y#0_0_0, Tclass._module.XList(), $Heap);
            assume {:id "id191"} let#0_0_0#0#0 == _mcc#3#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.XList());
            assume {:id "id192"} y#0_0_0 == let#0_0_0#0#0;
            havoc x#0_0_0;
            assume {:id "id193"} let#0_0_1#0#0 == _mcc#2#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, TInt);
            assume {:id "id194"} x#0_0_0 == let#0_0_1#0#0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(192,11)
            if (a#0_0 == x#0_0_0)
            {
            }

            assume a#0_0 == x#0_0_0 ==> $IsA#_module.XList(b#0_0) && $IsA#_module.XList(y#0_0_0);
            assert {:id "id195"} {:subsumption 0} a#0_0 == x#0_0_0;
            assert {:id "id196"} {:subsumption 0} _module.XList#Equal(b#0_0, y#0_0_0);
            assume {:id "id197"} a#0_0 == x#0_0_0 && _module.XList#Equal(b#0_0, y#0_0_0);
        }
        else if (d#0 == #_module.XList.XNil())
        {
            assert {:id "id190"} false;
        }
        else
        {
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(194,7)
        assert {:id "id198"} _module.XList.XCons_q(d#0);
        assume true;
        assert {:id "id199"} a#0_0 == _module.XList.Car(d#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(195,7)
        assert {:id "id200"} _module.XList.XCons_q(d#0);
        assume $IsA#_module.XList(b#0_0) && $IsA#_module.XList(_module.XList.Cdr(d#0));
        assert {:id "id201"} _module.XList#Equal(b#0_0, _module.XList.Cdr(d#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(196,7)
        assert {:id "id202"} _module.XList.XCons_q(d#0);
        assert {:id "id203"} _module.XList.XCons_q(d#0);
        assume $IsA#_module.XList(d#0);
        assert {:id "id204"} _module.XList#Equal(d#0, #_module.XList.XCons(_module.XList.Car(d#0), _module.XList.Cdr(d#0)));
    }
    else if (d#0 == #_module.XList.XNil())
    {
        assert {:id "id185"} false;
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "MatchingDestructor (well-formedness)"} CheckWellFormed$$_module.__default.MatchingDestructor(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.XList()) && $IsAlloc(r#0, Tclass._module.XList(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MatchingDestructor (well-formedness)"} CheckWellFormed$$_module.__default.MatchingDestructor(d#0: DatatypeType) returns (r#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MatchingDestructor, CheckWellFormed$$_module.__default.MatchingDestructor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id205"} _module.XList.XCons_q(r#0);
    assume {:id "id206"} _module.XList.Car(r#0) == LitInt(5);
}



procedure {:verboseName "MatchingDestructor (call)"} Call$$_module.__default.MatchingDestructor(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.XList()) && $IsAlloc(r#0, Tclass._module.XList(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id207"} _module.XList.Car(r#0) == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MatchingDestructor (correctness)"} Impl$$_module.__default.MatchingDestructor(d#0: DatatypeType
       where $Is(d#0, Tclass._module.XList())
         && $IsAlloc(d#0, Tclass._module.XList(), $Heap)
         && $IsA#_module.XList(d#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.XList()) && $IsAlloc(r#0, Tclass._module.XList(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id208"} _module.XList.Car(r#0) == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MatchingDestructor (correctness)"} Impl$$_module.__default.MatchingDestructor(d#0: DatatypeType) returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x0#0_0: int;
  var x1#1_0_0: int;

    // AddMethodImpl: MatchingDestructor, Impl$$_module.__default.MatchingDestructor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(203,3)
    if (*)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(204,12)
        assume true;
        assert {:id "id209"} _module.XList.XCons_q(d#0);
        assume true;
        x0#0_0 := _module.XList.Car(d#0);
        pop;
    }
    else
    {
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(205,10)
        assume true;
        if (_module.XList.XCons_q(d#0))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(206,12)
            assume true;
            assert {:id "id211"} _module.XList.XCons_q(d#0);
            assume true;
            x1#1_0_0 := _module.XList.Car(d#0);
            pop;
        }
        else
        {
        }

        pop;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(208,5)
    assume true;
    assume true;
    r#0 := Lit(#_module.XList.XCons(LitInt(5), Lit(#_module.XList.XNil())));
}



function Tclass._module.Triple() : Ty
uses {
// Tclass._module.Triple Tag
axiom Tag(Tclass._module.Triple()) == Tagclass._module.Triple
   && TagFamily(Tclass._module.Triple()) == tytagFamily$Triple;
}

const unique Tagclass._module.Triple: TyTag;

// Box/unbox axiom for Tclass._module.Triple
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Triple()) } 
  $IsBox(bx, Tclass._module.Triple())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Triple()));

procedure {:verboseName "Rotate0 (well-formedness)"} CheckWellFormed$$_module.__default.Rotate0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Triple())
         && $IsAlloc(t#0, Tclass._module.Triple(), $Heap)
         && $IsA#_module.Triple(t#0))
   returns (u#0: DatatypeType
       where $Is(u#0, Tclass._module.Triple())
         && $IsAlloc(u#0, Tclass._module.Triple(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Rotate0 (call)"} Call$$_module.__default.Rotate0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Triple())
         && $IsAlloc(t#0, Tclass._module.Triple(), $Heap)
         && $IsA#_module.Triple(t#0))
   returns (u#0: DatatypeType
       where $Is(u#0, Tclass._module.Triple())
         && $IsAlloc(u#0, Tclass._module.Triple(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Rotate0 (correctness)"} Impl$$_module.__default.Rotate0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Triple())
         && $IsAlloc(t#0, Tclass._module.Triple(), $Heap)
         && $IsA#_module.Triple(t#0))
   returns (u#0: DatatypeType
       where $Is(u#0, Tclass._module.Triple())
         && $IsAlloc(u#0, Tclass._module.Triple(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.TripleAndMore() : Ty
uses {
// Tclass._module.TripleAndMore Tag
axiom Tag(Tclass._module.TripleAndMore()) == Tagclass._module.TripleAndMore
   && TagFamily(Tclass._module.TripleAndMore()) == tytagFamily$TripleAndMore;
}

const unique Tagclass._module.TripleAndMore: TyTag;

// Box/unbox axiom for Tclass._module.TripleAndMore
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TripleAndMore()) } 
  $IsBox(bx, Tclass._module.TripleAndMore())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.TripleAndMore()));

procedure {:verboseName "Rotate1 (well-formedness)"} CheckWellFormed$$_module.__default.Rotate1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.TripleAndMore())
         && $IsAlloc(t#0, Tclass._module.TripleAndMore(), $Heap)
         && $IsA#_module.TripleAndMore(t#0))
   returns (u#0: DatatypeType
       where $Is(u#0, Tclass._module.TripleAndMore())
         && $IsAlloc(u#0, Tclass._module.TripleAndMore(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Rotate1 (call)"} Call$$_module.__default.Rotate1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.TripleAndMore())
         && $IsAlloc(t#0, Tclass._module.TripleAndMore(), $Heap)
         && $IsA#_module.TripleAndMore(t#0))
   returns (u#0: DatatypeType
       where $Is(u#0, Tclass._module.TripleAndMore())
         && $IsAlloc(u#0, Tclass._module.TripleAndMore(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Rotate1 (correctness)"} Impl$$_module.__default.Rotate1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.TripleAndMore())
         && $IsAlloc(t#0, Tclass._module.TripleAndMore(), $Heap)
         && $IsA#_module.TripleAndMore(t#0))
   returns (u#0: DatatypeType
       where $Is(u#0, Tclass._module.TripleAndMore())
         && $IsAlloc(u#0, Tclass._module.TripleAndMore(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Rotate1 (correctness)"} Impl$$_module.__default.Rotate1(t#0: DatatypeType) returns (u#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Rotate1, Impl$$_module.__default.Rotate1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(221,3)
    if (*)
    {
        assume true;
        assume {:id "id221"} _module.TripleAndMore.T_k_q(t#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(223,9)
        assume true;
        assert {:id "id222"} _module.TripleAndMore.T_k_q(t#0);
        assert {:id "id223"} _module.TripleAndMore.T_k_q(t#0);
        assert {:id "id224"} _module.TripleAndMore.T_k_q(t#0);
        assume true;
        u#0 := #_module.TripleAndMore.T'(_module.TripleAndMore.c(t#0), 
          _module.TripleAndMore.a(t#0), 
          _module.TripleAndMore.b(t#0));
    }
    else if (*)
    {
        assume true;
        assume {:id "id216"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(225,9)
        assume true;
        assert {:id "id217"} _module.TripleAndMore.T_k_q(t#0);
        assert {:id "id218"} _module.TripleAndMore.T_k_q(t#0);
        assert {:id "id219"} _module.TripleAndMore.T_k_q(t#0);
        assume true;
        u#0 := #_module.TripleAndMore.T'(_module.TripleAndMore.c(t#0), 
          _module.TripleAndMore.a(t#0), 
          _module.TripleAndMore.b(t#0));
    }
    else
    {
        assume true;
        assume true;
        assume !_module.TripleAndMore.T_k_q(t#0) && !Lit(true);
        assert {:id "id215"} false;
    }
}



function Tclass._module.Fwd() : Ty
uses {
// Tclass._module.Fwd Tag
axiom Tag(Tclass._module.Fwd()) == Tagclass._module.Fwd
   && TagFamily(Tclass._module.Fwd()) == tytagFamily$Fwd;
}

const unique Tagclass._module.Fwd: TyTag;

// Box/unbox axiom for Tclass._module.Fwd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Fwd()) } 
  $IsBox(bx, Tclass._module.Fwd())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Fwd()));

procedure {:verboseName "FwdBug (well-formedness)"} CheckWellFormed$$_module.__default.FwdBug(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0), 
    initialized#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FwdBug (call)"} Call$$_module.__default.FwdBug(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0), 
    initialized#0: bool);
  // user-defined preconditions
  requires {:id "id227"} !_module.Fwd.FwdCons_q(f#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FwdBug (correctness)"} Impl$$_module.__default.FwdBug(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0), 
    initialized#0: bool)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id228"} !_module.Fwd.FwdCons_q(f#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FwdBug (correctness)"} Impl$$_module.__default.FwdBug(f#0: DatatypeType, initialized#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0#0#0: int;
  var a#0#1#0: DatatypeType;

    // AddMethodImpl: FwdBug, Impl$$_module.__default.FwdBug
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc a#0#0#0, a#0#1#0;
    if (f#0 == #_module.Fwd.FwdNil())
    {
    }
    else if (f#0 == #_module.Fwd.FwdCons(a#0#0#0, a#0#1#0))
    {
        assert {:id "id229"} false;
    }
    else
    {
        assume false;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(239,3)
    assume true;
    if (!initialized#0)
    {
    }
    else
    {
    }
}



// function declaration for _module._default.FwdBugFunction
function _module.__default.FwdBugFunction(f#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.FwdBugFunction (revealed)
axiom {:id "id230"} 1 <= $FunctionContextHeight
   ==> (forall f#0: DatatypeType :: 
    { _module.__default.FwdBugFunction(f#0) } 
    _module.__default.FwdBugFunction#canCall(f#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.Fwd())
           && !_module.Fwd.FwdCons_q(f#0))
       ==> _module.__default.FwdBugFunction(f#0) == Lit(true));
// definition axiom for _module.__default.FwdBugFunction for all literals (revealed)
axiom {:id "id231"} 1 <= $FunctionContextHeight
   ==> (forall f#0: DatatypeType :: 
    {:weight 3} { _module.__default.FwdBugFunction(Lit(f#0)) } 
    _module.__default.FwdBugFunction#canCall(Lit(f#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.Fwd())
           && !Lit(_module.Fwd.FwdCons_q(Lit(f#0))))
       ==> _module.__default.FwdBugFunction(Lit(f#0)) == Lit(true));
}

function _module.__default.FwdBugFunction#canCall(f#0: DatatypeType) : bool;

function _module.__default.FwdBugFunction#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.FwdBugFunction
axiom (forall f#0: DatatypeType :: 
  { _module.__default.FwdBugFunction#requires(f#0) } 
  $Is(f#0, Tclass._module.Fwd())
     ==> _module.__default.FwdBugFunction#requires(f#0) == !_module.Fwd.FwdCons_q(f#0));

procedure {:verboseName "FwdBugFunction (well-formedness)"} CheckWellformed$$_module.__default.FwdBugFunction(f#0: DatatypeType where $Is(f#0, Tclass._module.Fwd()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FwdBugFunction (well-formedness)"} CheckWellformed$$_module.__default.FwdBugFunction(f#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var a#0#0#0: int;
  var a#0#1#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id232"} !_module.Fwd.FwdCons_q(f#0);
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
        havoc a#0#0#0, a#0#1#0;
        if (f#0 == #_module.Fwd.FwdNil())
        {
            assume {:id "id234"} _module.__default.FwdBugFunction(f#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.FwdBugFunction(f#0), TBool);
            return;
        }
        else if (f#0 == #_module.Fwd.FwdCons(a#0#0#0, a#0#1#0))
        {
            assert {:id "id233"} false;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "TestAllCases (well-formedness)"} CheckWellFormed$$_module.__default.TestAllCases(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAllCases (call)"} Call$$_module.__default.TestAllCases(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAllCases (correctness)"} Impl$$_module.__default.TestAllCases(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestAllCases (correctness)"} Impl$$_module.__default.TestAllCases(f#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestAllCases, Impl$$_module.__default.TestAllCases
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(256,3)
    if (!_module.Fwd.FwdNil_q(f#0))
    {
    }

    assume true;
    assert {:id "id235"} _module.Fwd.FwdNil_q(f#0) || _module.Fwd.FwdCons_q(f#0);
}



procedure {:verboseName "TestAllCases_Inside (well-formedness)"} CheckWellFormed$$_module.__default.TestAllCases__Inside(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAllCases_Inside (call)"} Call$$_module.__default.TestAllCases__Inside(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAllCases_Inside (correctness)"} Impl$$_module.__default.TestAllCases__Inside(f#0: DatatypeType
       where $Is(f#0, Tclass._module.Fwd())
         && $IsAlloc(f#0, Tclass._module.Fwd(), $Heap)
         && $IsA#_module.Fwd(f#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestAllCases_Inside (correctness)"} Impl$$_module.__default.TestAllCases__Inside(f#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestAllCases_Inside, Impl$$_module.__default.TestAllCases__Inside
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(261,3)
    assume true;
    if (_module.Fwd.FwdCons_q(f#0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(262,5)
        assert {:id "id236"} _module.Fwd.FwdCons_q(f#0);
        if (!_module.Fwd.FwdNil_q(_module.Fwd.w(f#0)))
        {
            assert {:id "id237"} _module.Fwd.FwdCons_q(f#0);
        }

        assume true;
        assert {:id "id238"} _module.Fwd.FwdNil_q(_module.Fwd.w(f#0))
           || _module.Fwd.FwdCons_q(_module.Fwd.w(f#0));
    }
    else
    {
    }
}



// function declaration for _module._default.foo
function _module.__default.foo(f#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.foo (revealed)
axiom {:id "id239"} 1 <= $FunctionContextHeight
   ==> (forall f#0: DatatypeType :: 
    { _module.__default.foo(f#0) } 
    _module.__default.foo#canCall(f#0)
         || (1 < $FunctionContextHeight && $Is(f#0, Tclass._module.Fwd()))
       ==> _module.__default.foo(f#0)
         == (if _module.Fwd.FwdNil_q(f#0) then 0 else _module.Fwd.k(f#0)));
// definition axiom for _module.__default.foo for all literals (revealed)
axiom {:id "id240"} 1 <= $FunctionContextHeight
   ==> (forall f#0: DatatypeType :: 
    {:weight 3} { _module.__default.foo(Lit(f#0)) } 
    _module.__default.foo#canCall(Lit(f#0))
         || (1 < $FunctionContextHeight && $Is(f#0, Tclass._module.Fwd()))
       ==> _module.__default.foo(Lit(f#0))
         == (if _module.Fwd.FwdNil_q(Lit(f#0)) then 0 else _module.Fwd.k(Lit(f#0))));
}

function _module.__default.foo#canCall(f#0: DatatypeType) : bool;

function _module.__default.foo#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.foo
axiom (forall f#0: DatatypeType :: 
  { _module.__default.foo#requires(f#0) } 
  $Is(f#0, Tclass._module.Fwd()) ==> _module.__default.foo#requires(f#0) == true);

procedure {:verboseName "foo (well-formedness)"} CheckWellformed$$_module.__default.foo(f#0: DatatypeType where $Is(f#0, Tclass._module.Fwd()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "foo (well-formedness)"} CheckWellformed$$_module.__default.foo(f#0: DatatypeType)
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
        if (_module.Fwd.FwdNil_q(f#0))
        {
            assume {:id "id241"} _module.__default.foo(f#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.foo(f#0), TInt);
            return;
        }
        else
        {
            assert {:id "id242"} _module.Fwd.FwdCons_q(f#0);
            assume {:id "id243"} _module.__default.foo(f#0) == _module.Fwd.k(f#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.foo(f#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.F
function _module.__default.F(_module._default.F$_T0: Ty, $ly: LayerType, xs#0: DatatypeType, vs#0: Map)
   : bool
uses {
// definition axiom for _module.__default.F (revealed)
axiom {:id "id244"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.F$_T0: Ty, $ly: LayerType, xs#0: DatatypeType, vs#0: Map :: 
    { _module.__default.F(_module._default.F$_T0, $LS($ly), xs#0, vs#0) } 
    _module.__default.F#canCall(_module._default.F$_T0, xs#0, vs#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.F$_T0))
           && $Is(vs#0, TMap(TInt, TInt)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List._h1(xs#0); 
            (forall vsi#1: Map :: 
              { _module.__default.F(_module._default.F$_T0, $ly, tail#1, vsi#1) } 
              $Is(vsi#1, TMap(TInt, TInt))
                 ==> _module.__default.F#canCall(_module._default.F$_T0, tail#1, vsi#1))))
         && _module.__default.F(_module._default.F$_T0, $LS($ly), xs#0, vs#0)
           == (if _module.List.Nil_q(xs#0)
             then true
             else (var tail#0 := _module.List._h1(xs#0); 
              (forall vsi#0: Map :: 
                { _module.__default.F(_module._default.F$_T0, $ly, tail#0, vsi#0) } 
                $Is(vsi#0, TMap(TInt, TInt))
                   ==> _module.__default.F(_module._default.F$_T0, $ly, tail#0, vsi#0)))));
// definition axiom for _module.__default.F for all literals (revealed)
axiom {:id "id245"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.F$_T0: Ty, $ly: LayerType, xs#0: DatatypeType, vs#0: Map :: 
    {:weight 3} { _module.__default.F(_module._default.F$_T0, $LS($ly), Lit(xs#0), Lit(vs#0)) } 
    _module.__default.F#canCall(_module._default.F$_T0, Lit(xs#0), Lit(vs#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.F$_T0))
           && $Is(vs#0, TMap(TInt, TInt)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#3 := Lit(_module.List._h1(Lit(xs#0))); 
            (forall vsi#3: Map :: 
              { _module.__default.F(_module._default.F$_T0, $LS($ly), tail#3, vsi#3) } 
              $Is(vsi#3, TMap(TInt, TInt))
                 ==> _module.__default.F#canCall(_module._default.F$_T0, tail#3, vsi#3))))
         && _module.__default.F(_module._default.F$_T0, $LS($ly), Lit(xs#0), Lit(vs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then true
             else (var tail#2 := Lit(_module.List._h1(Lit(xs#0))); 
              (forall vsi#2: Map :: 
                { _module.__default.F(_module._default.F$_T0, $LS($ly), tail#2, vsi#2) } 
                $Is(vsi#2, TMap(TInt, TInt))
                   ==> _module.__default.F(_module._default.F$_T0, $LS($ly), tail#2, vsi#2)))));
}

function _module.__default.F#canCall(_module._default.F$_T0: Ty, xs#0: DatatypeType, vs#0: Map) : bool;

// layer synonym axiom
axiom (forall _module._default.F$_T0: Ty, $ly: LayerType, xs#0: DatatypeType, vs#0: Map :: 
  { _module.__default.F(_module._default.F$_T0, $LS($ly), xs#0, vs#0) } 
  _module.__default.F(_module._default.F$_T0, $LS($ly), xs#0, vs#0)
     == _module.__default.F(_module._default.F$_T0, $ly, xs#0, vs#0));

// fuel synonym axiom
axiom (forall _module._default.F$_T0: Ty, $ly: LayerType, xs#0: DatatypeType, vs#0: Map :: 
  { _module.__default.F(_module._default.F$_T0, AsFuelBottom($ly), xs#0, vs#0) } 
  _module.__default.F(_module._default.F$_T0, $ly, xs#0, vs#0)
     == _module.__default.F(_module._default.F$_T0, $LZ, xs#0, vs#0));

function _module.__default.F#requires(Ty, LayerType, DatatypeType, Map) : bool;

// #requires axiom for _module.__default.F
axiom (forall _module._default.F$_T0: Ty, $ly: LayerType, xs#0: DatatypeType, vs#0: Map :: 
  { _module.__default.F#requires(_module._default.F$_T0, $ly, xs#0, vs#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.F$_T0))
       && $Is(vs#0, TMap(TInt, TInt))
     ==> _module.__default.F#requires(_module._default.F$_T0, $ly, xs#0, vs#0) == true);

procedure {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(_module._default.F$_T0: Ty, 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List(_module._default.F$_T0)), 
    vs#0: Map where $Is(vs#0, TMap(TInt, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(_module._default.F$_T0: Ty, xs#0: DatatypeType, vs#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var vsi#4: Map;
  var ##xs#0: DatatypeType;
  var ##vs#0: Map;


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
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id250"} _module.__default.F(_module._default.F$_T0, $LS($LZ), xs#0, vs#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F(_module._default.F$_T0, $LS($LZ), xs#0, vs#0), TBool);
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.F$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.F$_T0));
            havoc tail#Z#0;
            assume {:id "id246"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.F$_T0));
            assume {:id "id247"} tail#Z#0 == let#0#0#0;
            // Begin Comprehension WF check
            havoc vsi#4;
            if ($Is(vsi#4, TMap(TInt, TInt)) && $IsAlloc(vsi#4, TMap(TInt, TInt), $Heap))
            {
                ##xs#0 := tail#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.F$_T0), $Heap);
                ##vs#0 := vsi#4;
                // assume allocatedness for argument to function
                assume $IsAlloc(##vs#0, TMap(TInt, TInt), $Heap);
                assert {:id "id248"} DtRank(##xs#0) < DtRank(xs#0)
                   || (DtRank(##xs#0) == DtRank(xs#0)
                     && 
                    Set#Subset(Map#Domain(##vs#0), Map#Domain(vs#0))
                     && !Set#Subset(Map#Domain(vs#0), Map#Domain(##vs#0)));
                assume _module.__default.F#canCall(_module._default.F$_T0, tail#Z#0, vsi#4);
            }

            // End Comprehension WF check
            assume {:id "id249"} _module.__default.F(_module._default.F$_T0, $LS($LZ), xs#0, vs#0)
               == (forall vsi#5: Map :: 
                { _module.__default.F(_module._default.F$_T0, $LS($LZ), tail#Z#0, vsi#5) } 
                $Is(vsi#5, TMap(TInt, TInt))
                   ==> _module.__default.F(_module._default.F$_T0, $LS($LZ), tail#Z#0, vsi#5));
            assume (forall vsi#5: Map :: 
              { _module.__default.F(_module._default.F$_T0, $LS($LZ), tail#Z#0, vsi#5) } 
              $Is(vsi#5, TMap(TInt, TInt))
                 ==> _module.__default.F#canCall(_module._default.F$_T0, tail#Z#0, vsi#5));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F(_module._default.F$_T0, $LS($LZ), xs#0, vs#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
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
  { $IsAllocBox(_module.List._h0(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List._h0(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List._h1(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List._h1(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List._h0(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List._h1(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

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
       <==> _module.List._h0(a) == _module.List._h0(b)
         && _module.List#Equal(_module.List._h1(a), _module.List._h1(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

const unique class._module.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.data: Field
uses {
axiom FDim(_module.Node.data) == 0
   && FieldOfDecl(class._module.Node?, field$data) == _module.Node.data
   && !$IsGhostField(_module.Node.data);
}

// Node.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.data)): int, TInt));

// Node.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.data)): int, TInt, $h));

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?()));

// Node.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(), $h));

// function declaration for _module.Node.Repr
function _module.Node.Repr($ly: LayerType, $heap: Heap, this: ref, list#0: DatatypeType) : bool
uses {
// definition axiom for _module.Node.Repr (revealed)
axiom {:id "id251"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, list#0: DatatypeType :: 
    { _module.Node.Repr($LS($ly), $Heap, this, list#0), $IsGoodHeap($Heap) } 
    _module.Node.Repr#canCall($Heap, this, list#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && $Is(list#0, Tclass._module.List(TInt)))
       ==> (!_module.List.Nil_q(list#0)
           ==> (var cdr#1 := _module.List._h1(list#0); 
            (var d#1 := $Unbox(_module.List._h0(list#0)): int; 
              $Unbox(read($Heap, this, _module.Node.data)): int == d#1
                 ==> 
                $Unbox(read($Heap, this, _module.Node.next)): ref != null
                 ==> _module.Node.Repr#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#1))))
         && _module.Node.Repr($LS($ly), $Heap, this, list#0)
           == (if _module.List.Nil_q(list#0)
             then $Unbox(read($Heap, this, _module.Node.next)): ref == null
             else (var cdr#0 := _module.List._h1(list#0); 
              (var d#0 := $Unbox(_module.List._h0(list#0)): int; 
                $Unbox(read($Heap, this, _module.Node.data)): int == d#0
                   && $Unbox(read($Heap, this, _module.Node.next)): ref != null
                   && _module.Node.Repr($ly, $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#0)))));
}

function _module.Node.Repr#canCall($heap: Heap, this: ref, list#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, list#0: DatatypeType :: 
  { _module.Node.Repr($LS($ly), $Heap, this, list#0) } 
  _module.Node.Repr($LS($ly), $Heap, this, list#0)
     == _module.Node.Repr($ly, $Heap, this, list#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, list#0: DatatypeType :: 
  { _module.Node.Repr(AsFuelBottom($ly), $Heap, this, list#0) } 
  _module.Node.Repr($ly, $Heap, this, list#0)
     == _module.Node.Repr($LZ, $Heap, this, list#0));

// frame axiom for _module.Node.Repr
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, list#0: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Repr($ly, $h1, this, list#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $h0)
       && (_module.Node.Repr#canCall($h0, this, list#0)
         || ($Is(list#0, Tclass._module.List(TInt))
           && $IsAlloc(list#0, Tclass._module.List(TInt), $h0)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Repr($ly, $h0, this, list#0)
       == _module.Node.Repr($ly, $h1, this, list#0));

function _module.Node.Repr#requires(LayerType, Heap, ref, DatatypeType) : bool;

// #requires axiom for _module.Node.Repr
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, list#0: DatatypeType :: 
  { _module.Node.Repr#requires($ly, $Heap, this, list#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
       && $Is(list#0, Tclass._module.List(TInt))
     ==> _module.Node.Repr#requires($ly, $Heap, this, list#0) == true);

procedure {:verboseName "Node.Repr (well-formedness)"} CheckWellformed$$_module.Node.Repr(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    list#0: DatatypeType where $Is(list#0, Tclass._module.List(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Repr (well-formedness)"} CheckWellformed$$_module.Node.Repr(this: ref, list#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var cdr#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var d#Z#0: int;
  var let#1#0#0: int;
  var newtype$check#0: ref;
  var ##list#0: DatatypeType;
  var newtype$check#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
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
        if (list#0 == #_module.List.Nil())
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.Node.next];
            newtype$check#1 := null;
            assume {:id "id263"} _module.Node.Repr($LS($LZ), $Heap, this, list#0)
               == 
              ($Unbox(read($Heap, this, _module.Node.next)): ref
               == null);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.Repr($LS($LZ), $Heap, this, list#0), TBool);
            assert {:id "id264"} b$reqreads#0;
            assert {:id "id265"} b$reqreads#1;
            assert {:id "id266"} b$reqreads#2;
            assert {:id "id267"} b$reqreads#3;
            assert {:id "id268"} b$reqreads#4;
            return;
        }
        else if (list#0 == #_module.List.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List(TInt));
            havoc cdr#Z#0;
            assume {:id "id252"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(TInt));
            assume {:id "id253"} cdr#Z#0 == let#0#0#0;
            havoc d#Z#0;
            assume {:id "id254"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id255"} d#Z#0 == let#1#0#0;
            b$reqreads#0 := $_ReadsFrame[this, _module.Node.data];
            if ($Unbox(read($Heap, this, _module.Node.data)): int == d#Z#0)
            {
                b$reqreads#1 := $_ReadsFrame[this, _module.Node.next];
                newtype$check#0 := null;
            }

            if ($Unbox(read($Heap, this, _module.Node.data)): int == d#Z#0
               && $Unbox(read($Heap, this, _module.Node.next)): ref != null)
            {
                b$reqreads#2 := $_ReadsFrame[this, _module.Node.next];
                assert {:id "id256"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
                ##list#0 := cdr#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##list#0, Tclass._module.List(TInt), $Heap);
                b$reqreads#3 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && $Unbox(read($Heap, $o, alloc)): bool
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id257"} DtRank(##list#0) < DtRank(list#0);
                assume _module.Node.Repr#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#Z#0);
            }

            assume {:id "id258"} _module.Node.Repr($LS($LZ), $Heap, this, list#0)
               == (
                $Unbox(read($Heap, this, _module.Node.data)): int == d#Z#0
                 && $Unbox(read($Heap, this, _module.Node.next)): ref != null
                 && _module.Node.Repr($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#Z#0));
            assume $Unbox(read($Heap, this, _module.Node.data)): int == d#Z#0
               ==> 
              $Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> _module.Node.Repr#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.Repr($LS($LZ), $Heap, this, list#0), TBool);
            assert {:id "id259"} b$reqreads#0;
            assert {:id "id260"} b$reqreads#1;
            assert {:id "id261"} b$reqreads#2;
            assert {:id "id262"} b$reqreads#3;
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "Node.Init (well-formedness)"} CheckWellFormed$$_module.Node.Init(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Init (call)"} Call$$_module.Node.Init(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()));
  free ensures {:id "id270"} _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()))
     && 
    _module.Node.Repr($LS($LZ), $Heap, this, Lit(#_module.List.Nil()))
     && (if _module.List.Nil_q(Lit(#_module.List.Nil()))
       then $Unbox(read($Heap, this, _module.Node.next)): ref == null
       else (var cdr#1 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
        (var d#1 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
          $Unbox(read($Heap, this, _module.Node.data)): int == d#1
             && $Unbox(read($Heap, this, _module.Node.next)): ref != null
             && _module.Node.Repr($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#1))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Init (correctness)"} Impl$$_module.Node.Init(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()));
  ensures {:id "id271"} _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()))
     ==> _module.Node.Repr($LS($LZ), $Heap, this, Lit(#_module.List.Nil()))
       || (Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> $Unbox(read($Heap, this, _module.Node.next)): ref == null);
  ensures {:id "id272"} _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()))
     ==> _module.Node.Repr($LS($LZ), $Heap, this, Lit(#_module.List.Nil()))
       || (!Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> (var cdr#2 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
          (var d#2 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
            $Unbox(read($Heap, this, _module.Node.data)): int == d#2)));
  ensures {:id "id273"} _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()))
     ==> _module.Node.Repr($LS($LZ), $Heap, this, Lit(#_module.List.Nil()))
       || (!Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> (var cdr#2 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
          (var d#2 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
            $Unbox(read($Heap, this, _module.Node.next)): ref != null)));
  ensures {:id "id274"} _module.Node.Repr#canCall($Heap, this, Lit(#_module.List.Nil()))
     ==> _module.Node.Repr($LS($LZ), $Heap, this, Lit(#_module.List.Nil()))
       || (!Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> (var cdr#2 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
          (var d#2 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
            _module.Node.Repr($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#2))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Init (correctness)"} Impl$$_module.Node.Init(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: Init, Impl$$_module.Node.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(24,10)
    assume true;
    assert {:id "id275"} $_ModifiesFrame[this, _module.Node.next];
    newtype$check#0 := null;
    assume true;
    $rhs#0 := null;
    $Heap := update($Heap, this, _module.Node.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "Node.Add (well-formedness)"} CheckWellFormed$$_module.Node.Add(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    d#0: int, 
    L#0: DatatypeType
       where $Is(L#0, Tclass._module.List(TInt))
         && $IsAlloc(L#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(L#0))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.Node()) && $IsAlloc(r#0, Tclass._module.Node(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Add (well-formedness)"} CheckWellFormed$$_module.Node.Add(this: ref, d#0: int, L#0: DatatypeType) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##list#0: DatatypeType;
  var ##list#1: DatatypeType;


    // AddMethodImpl: Add, CheckWellFormed$$_module.Node.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##list#0 := L#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##list#0, Tclass._module.List(TInt), $Heap);
    assume _module.Node.Repr#canCall($Heap, this, L#0);
    assume {:id "id278"} _module.Node.Repr($LS($LZ), $Heap, this, L#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id279"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.Node?(), $Heap);
    ##list#1 := #_module.List.Cons($Box(d#0), L#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##list#1, Tclass._module.List(TInt), $Heap);
    assume _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0));
    assume {:id "id280"} _module.Node.Repr($LS($LZ), $Heap, r#0, #_module.List.Cons($Box(d#0), L#0));
}



procedure {:verboseName "Node.Add (call)"} Call$$_module.Node.Add(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    d#0: int, 
    L#0: DatatypeType
       where $Is(L#0, Tclass._module.List(TInt))
         && $IsAlloc(L#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(L#0))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.Node()) && $IsAlloc(r#0, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id281"} _module.Node.Repr#canCall($Heap, this, L#0)
     ==> _module.Node.Repr($LS($LZ), $Heap, this, L#0)
       || (_module.List.Nil_q(L#0)
         ==> $Unbox(read($Heap, this, _module.Node.next)): ref == null);
  requires {:id "id282"} _module.Node.Repr#canCall($Heap, this, L#0)
     ==> _module.Node.Repr($LS($LZ), $Heap, this, L#0)
       || (!_module.List.Nil_q(L#0)
         ==> (var cdr#0 := _module.List._h1(L#0); 
          (var d#1 := $Unbox(_module.List._h0(L#0)): int; 
            $Unbox(read($Heap, this, _module.Node.data)): int == d#1)));
  requires {:id "id283"} _module.Node.Repr#canCall($Heap, this, L#0)
     ==> _module.Node.Repr($LS($LZ), $Heap, this, L#0)
       || (!_module.List.Nil_q(L#0)
         ==> (var cdr#0 := _module.List._h1(L#0); 
          (var d#1 := $Unbox(_module.List._h0(L#0)): int; 
            $Unbox(read($Heap, this, _module.Node.next)): ref != null)));
  requires {:id "id284"} _module.Node.Repr#canCall($Heap, this, L#0)
     ==> _module.Node.Repr($LS($LZ), $Heap, this, L#0)
       || (!_module.List.Nil_q(L#0)
         ==> (var cdr#0 := _module.List._h1(L#0); 
          (var d#1 := $Unbox(_module.List._h0(L#0)): int; 
            _module.Node.Repr($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0));
  free ensures {:id "id285"} _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
     && 
    _module.Node.Repr($LS($LZ), $Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
     && (if _module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
       then $Unbox(read($Heap, r#0, _module.Node.next)): ref == null
       else (var cdr#3 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
        (var d#4 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
          $Unbox(read($Heap, r#0, _module.Node.data)): int == d#4
             && $Unbox(read($Heap, r#0, _module.Node.next)): ref != null
             && _module.Node.Repr($LS($LZ), $Heap, $Unbox(read($Heap, r#0, _module.Node.next)): ref, cdr#3))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Add (correctness)"} Impl$$_module.Node.Add(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    d#0: int, 
    L#0: DatatypeType
       where $Is(L#0, Tclass._module.List(TInt))
         && $IsAlloc(L#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(L#0))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.Node()) && $IsAlloc(r#0, Tclass._module.Node(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id286"} _module.Node.Repr#canCall($Heap, this, L#0)
     && 
    _module.Node.Repr($LS($LZ), $Heap, this, L#0)
     && (if _module.List.Nil_q(L#0)
       then $Unbox(read($Heap, this, _module.Node.next)): ref == null
       else (var cdr#5 := _module.List._h1(L#0); 
        (var d#6 := $Unbox(_module.List._h0(L#0)): int; 
          $Unbox(read($Heap, this, _module.Node.data)): int == d#6
             && $Unbox(read($Heap, this, _module.Node.next)): ref != null
             && _module.Node.Repr($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, cdr#5))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0));
  ensures {:id "id287"} _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.Node.Repr($LS($LZ), $Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> $Unbox(read($Heap, r#0, _module.Node.next)): ref == null);
  ensures {:id "id288"} _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.Node.Repr($LS($LZ), $Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (!_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> (var cdr#6 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
          (var d#7 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
            $Unbox(read($Heap, r#0, _module.Node.data)): int == d#7)));
  ensures {:id "id289"} _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.Node.Repr($LS($LZ), $Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (!_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> (var cdr#6 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
          (var d#7 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
            $Unbox(read($Heap, r#0, _module.Node.next)): ref != null)));
  ensures {:id "id290"} _module.Node.Repr#canCall($Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.Node.Repr($LS($LZ), $Heap, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (!_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> (var cdr#6 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
          (var d#7 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
            _module.Node.Repr($LS($LS($LZ)), $Heap, $Unbox(read($Heap, r#0, _module.Node.next)): ref, cdr#6))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Add (correctness)"} Impl$$_module.Node.Add(this: ref, d#0: int, L#0: DatatypeType)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0: int;
  var $rhs#1: ref;

    // AddMethodImpl: Add, Impl$$_module.Node.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(31,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    r#0 := $nw;
    defass#r#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(32,12)
    assert {:id "id292"} defass#r#0;
    assert {:id "id293"} r#0 != null;
    assume true;
    assert {:id "id294"} $_ModifiesFrame[r#0, _module.Node.data];
    assume true;
    $rhs#0 := d#0;
    $Heap := update($Heap, r#0, _module.Node.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(33,12)
    assert {:id "id297"} defass#r#0;
    assert {:id "id298"} r#0 != null;
    assume true;
    assert {:id "id299"} $_ModifiesFrame[r#0, _module.Node.next];
    assume true;
    $rhs#1 := this;
    $Heap := update($Heap, r#0, _module.Node.next, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    assert {:id "id302"} defass#r#0;
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique class._module.AnotherNode?: ClassName;

function Tclass._module.AnotherNode?() : Ty
uses {
// Tclass._module.AnotherNode? Tag
axiom Tag(Tclass._module.AnotherNode?()) == Tagclass._module.AnotherNode?
   && TagFamily(Tclass._module.AnotherNode?()) == tytagFamily$AnotherNode;
}

const unique Tagclass._module.AnotherNode?: TyTag;

// Box/unbox axiom for Tclass._module.AnotherNode?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AnotherNode?()) } 
  $IsBox(bx, Tclass._module.AnotherNode?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AnotherNode?()));

// $Is axiom for class AnotherNode
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.AnotherNode?()) } 
  $Is($o, Tclass._module.AnotherNode?())
     <==> $o == null || dtype($o) == Tclass._module.AnotherNode?());

// $IsAlloc axiom for class AnotherNode
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AnotherNode?(), $h) } 
  $IsAlloc($o, Tclass._module.AnotherNode?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.AnotherNode.data: Field
uses {
axiom FDim(_module.AnotherNode.data) == 0
   && FieldOfDecl(class._module.AnotherNode?, field$data) == _module.AnotherNode.data
   && !$IsGhostField(_module.AnotherNode.data);
}

// AnotherNode.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AnotherNode.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.AnotherNode?()
     ==> $Is($Unbox(read($h, $o, _module.AnotherNode.data)): int, TInt));

// AnotherNode.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AnotherNode.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AnotherNode?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AnotherNode.data)): int, TInt, $h));

const _module.AnotherNode.next: Field
uses {
axiom FDim(_module.AnotherNode.next) == 0
   && FieldOfDecl(class._module.AnotherNode?, field$next) == _module.AnotherNode.next
   && !$IsGhostField(_module.AnotherNode.next);
}

// AnotherNode.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AnotherNode.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.AnotherNode?()
     ==> $Is($Unbox(read($h, $o, _module.AnotherNode.next)): ref, 
      Tclass._module.AnotherNode?()));

// AnotherNode.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AnotherNode.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AnotherNode?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AnotherNode.next)): ref, 
      Tclass._module.AnotherNode?(), 
      $h));

// function declaration for _module.AnotherNode.Repr
function _module.AnotherNode.Repr($ly: LayerType, $heap: Heap, this: ref, n#0: ref, list#0: DatatypeType) : bool
uses {
// definition axiom for _module.AnotherNode.Repr (revealed)
axiom {:id "id303"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: ref, list#0: DatatypeType :: 
    { _module.AnotherNode.Repr($LS($ly), $Heap, this, n#0, list#0), $IsGoodHeap($Heap) } 
    _module.AnotherNode.Repr#canCall($Heap, this, n#0, list#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.AnotherNode())
           && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap)
           && $Is(n#0, Tclass._module.AnotherNode?())
           && $Is(list#0, Tclass._module.List(TInt)))
       ==> (!_module.List.Nil_q(list#0)
           ==> (var cdr#1 := _module.List._h1(list#0); 
            (var d#1 := $Unbox(_module.List._h0(list#0)): int; 
              n#0 != null
                 ==> 
                $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#1
                 ==> _module.AnotherNode.Repr#canCall($Heap, this, $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, cdr#1))))
         && _module.AnotherNode.Repr($LS($ly), $Heap, this, n#0, list#0)
           == (if _module.List.Nil_q(list#0)
             then n#0 == null
             else (var cdr#0 := _module.List._h1(list#0); 
              (var d#0 := $Unbox(_module.List._h0(list#0)): int; 
                n#0 != null
                   && $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#0
                   && _module.AnotherNode.Repr($ly, $Heap, this, $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, cdr#0)))));
}

function _module.AnotherNode.Repr#canCall($heap: Heap, this: ref, n#0: ref, list#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: ref, list#0: DatatypeType :: 
  { _module.AnotherNode.Repr($LS($ly), $Heap, this, n#0, list#0) } 
  _module.AnotherNode.Repr($LS($ly), $Heap, this, n#0, list#0)
     == _module.AnotherNode.Repr($ly, $Heap, this, n#0, list#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: ref, list#0: DatatypeType :: 
  { _module.AnotherNode.Repr(AsFuelBottom($ly), $Heap, this, n#0, list#0) } 
  _module.AnotherNode.Repr($ly, $Heap, this, n#0, list#0)
     == _module.AnotherNode.Repr($LZ, $Heap, this, n#0, list#0));

// frame axiom for _module.AnotherNode.Repr
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, n#0: ref, list#0: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.AnotherNode.Repr($ly, $h1, this, n#0, list#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.AnotherNode())
       && $IsAlloc(this, Tclass._module.AnotherNode(), $h0)
       && (_module.AnotherNode.Repr#canCall($h0, this, n#0, list#0)
         || (
          $Is(n#0, Tclass._module.AnotherNode?())
           && $IsAlloc(n#0, Tclass._module.AnotherNode?(), $h0)
           && 
          $Is(list#0, Tclass._module.List(TInt))
           && $IsAlloc(list#0, Tclass._module.List(TInt), $h0)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.AnotherNode.Repr($ly, $h0, this, n#0, list#0)
       == _module.AnotherNode.Repr($ly, $h1, this, n#0, list#0));

function _module.AnotherNode.Repr#requires(LayerType, Heap, ref, ref, DatatypeType) : bool;

// #requires axiom for _module.AnotherNode.Repr
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: ref, list#0: DatatypeType :: 
  { _module.AnotherNode.Repr#requires($ly, $Heap, this, n#0, list#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.AnotherNode())
       && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap)
       && $Is(n#0, Tclass._module.AnotherNode?())
       && $Is(list#0, Tclass._module.List(TInt))
     ==> _module.AnotherNode.Repr#requires($ly, $Heap, this, n#0, list#0) == true);

procedure {:verboseName "AnotherNode.Repr (well-formedness)"} CheckWellformed$$_module.AnotherNode.Repr(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap), 
    n#0: ref where $Is(n#0, Tclass._module.AnotherNode?()), 
    list#0: DatatypeType where $Is(list#0, Tclass._module.List(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AnotherNode.Repr (well-formedness)"} CheckWellformed$$_module.AnotherNode.Repr(this: ref, n#0: ref, list#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var cdr#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var d#Z#0: int;
  var let#1#0#0: int;
  var newtype$check#0: ref;
  var ##n#0: ref;
  var ##list#0: DatatypeType;
  var newtype$check#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
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
        if (list#0 == #_module.List.Nil())
        {
            newtype$check#1 := null;
            assume {:id "id315"} _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, list#0) == (n#0 == null);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, list#0), TBool);
            assert {:id "id316"} b$reqreads#0;
            assert {:id "id317"} b$reqreads#1;
            assert {:id "id318"} b$reqreads#2;
            return;
        }
        else if (list#0 == #_module.List.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List(TInt));
            havoc cdr#Z#0;
            assume {:id "id304"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(TInt));
            assume {:id "id305"} cdr#Z#0 == let#0#0#0;
            havoc d#Z#0;
            assume {:id "id306"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id307"} d#Z#0 == let#1#0#0;
            newtype$check#0 := null;
            if (n#0 != null)
            {
                assert {:id "id308"} n#0 != null;
                b$reqreads#0 := $_ReadsFrame[n#0, _module.AnotherNode.data];
            }

            if (n#0 != null && $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#Z#0)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.AnotherNode?(), $Heap);
                assert {:id "id309"} n#0 != null;
                b$reqreads#1 := $_ReadsFrame[n#0, _module.AnotherNode.next];
                ##n#0 := $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.AnotherNode?(), $Heap);
                ##list#0 := cdr#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##list#0, Tclass._module.List(TInt), $Heap);
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && $Unbox(read($Heap, $o, alloc)): bool
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id310"} DtRank(##list#0) < DtRank(list#0);
                assume _module.AnotherNode.Repr#canCall($Heap, this, $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, cdr#Z#0);
            }

            assume {:id "id311"} _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, list#0)
               == (
                n#0 != null
                 && $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#Z#0
                 && _module.AnotherNode.Repr($LS($LZ), 
                  $Heap, 
                  this, 
                  $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, 
                  cdr#Z#0));
            assume n#0 != null
               ==> 
              $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#Z#0
               ==> _module.AnotherNode.Repr#canCall($Heap, this, $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, cdr#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, list#0), TBool);
            assert {:id "id312"} b$reqreads#0;
            assert {:id "id313"} b$reqreads#1;
            assert {:id "id314"} b$reqreads#2;
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "AnotherNode.Create (well-formedness)"} CheckWellFormed$$_module.AnotherNode.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap))
   returns (n#0: ref
       where $Is(n#0, Tclass._module.AnotherNode?())
         && $IsAlloc(n#0, Tclass._module.AnotherNode?(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AnotherNode.Create (call)"} Call$$_module.AnotherNode.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap))
   returns (n#0: ref
       where $Is(n#0, Tclass._module.AnotherNode?())
         && $IsAlloc(n#0, Tclass._module.AnotherNode?(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()));
  free ensures {:id "id320"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()))
     && 
    _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, Lit(#_module.List.Nil()))
     && (if _module.List.Nil_q(Lit(#_module.List.Nil()))
       then n#0 == null
       else (var cdr#1 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
        (var d#1 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
          n#0 != null
             && $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#1
             && _module.AnotherNode.Repr($LS($LZ), 
              $Heap, 
              this, 
              $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, 
              cdr#1))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AnotherNode.Create (correctness)"} Impl$$_module.AnotherNode.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap))
   returns (n#0: ref
       where $Is(n#0, Tclass._module.AnotherNode?())
         && $IsAlloc(n#0, Tclass._module.AnotherNode?(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()));
  ensures {:id "id321"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, Lit(#_module.List.Nil()))
       || (Lit(_module.List.Nil_q(Lit(#_module.List.Nil()))) ==> n#0 == null);
  ensures {:id "id322"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, Lit(#_module.List.Nil()))
       || (!Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> (var cdr#2 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
          (var d#2 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
            n#0 != null)));
  ensures {:id "id323"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, Lit(#_module.List.Nil()))
       || (!Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> (var cdr#2 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
          (var d#2 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
            $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#2)));
  ensures {:id "id324"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, Lit(#_module.List.Nil()))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, Lit(#_module.List.Nil()))
       || (!Lit(_module.List.Nil_q(Lit(#_module.List.Nil())))
         ==> (var cdr#2 := Lit(_module.List._h1(Lit(#_module.List.Nil()))); 
          (var d#2 := LitInt($Unbox(_module.List._h0(Lit(#_module.List.Nil()))): int); 
            _module.AnotherNode.Repr($LS($LS($LZ)), 
              $Heap, 
              this, 
              $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, 
              cdr#2))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AnotherNode.Create (correctness)"} Impl$$_module.AnotherNode.Create(this: ref) returns (n#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;

    // AddMethodImpl: Create, Impl$$_module.AnotherNode.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(54,7)
    assume true;
    newtype$check#0 := null;
    assume true;
    n#0 := null;
}



procedure {:verboseName "AnotherNode.Add (well-formedness)"} CheckWellFormed$$_module.AnotherNode.Add(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap), 
    n#0: ref
       where $Is(n#0, Tclass._module.AnotherNode())
         && $IsAlloc(n#0, Tclass._module.AnotherNode(), $Heap), 
    d#0: int, 
    L#0: DatatypeType
       where $Is(L#0, Tclass._module.List(TInt))
         && $IsAlloc(L#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(L#0))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AnotherNode())
         && $IsAlloc(r#0, Tclass._module.AnotherNode(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AnotherNode.Add (call)"} Call$$_module.AnotherNode.Add(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap), 
    n#0: ref
       where $Is(n#0, Tclass._module.AnotherNode())
         && $IsAlloc(n#0, Tclass._module.AnotherNode(), $Heap), 
    d#0: int, 
    L#0: DatatypeType
       where $Is(L#0, Tclass._module.List(TInt))
         && $IsAlloc(L#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(L#0))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AnotherNode())
         && $IsAlloc(r#0, Tclass._module.AnotherNode(), $Heap));
  // user-defined preconditions
  requires {:id "id328"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, L#0)
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, L#0)
       || (_module.List.Nil_q(L#0) ==> n#0 == null);
  requires {:id "id329"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, L#0)
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, L#0)
       || (!_module.List.Nil_q(L#0)
         ==> (var cdr#0 := _module.List._h1(L#0); 
          (var d#1 := $Unbox(_module.List._h0(L#0)): int; n#0 != null)));
  requires {:id "id330"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, L#0)
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, L#0)
       || (!_module.List.Nil_q(L#0)
         ==> (var cdr#0 := _module.List._h1(L#0); 
          (var d#1 := $Unbox(_module.List._h0(L#0)): int; 
            $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#1)));
  requires {:id "id331"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, L#0)
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, L#0)
       || (!_module.List.Nil_q(L#0)
         ==> (var cdr#0 := _module.List._h1(L#0); 
          (var d#1 := $Unbox(_module.List._h0(L#0)): int; 
            _module.AnotherNode.Repr($LS($LS($LZ)), 
              $Heap, 
              this, 
              $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, 
              cdr#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0));
  free ensures {:id "id332"} _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
     && 
    _module.AnotherNode.Repr($LS($LZ), $Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
     && (if _module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
       then r#0 == null
       else (var cdr#3 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
        (var d#4 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
          r#0 != null
             && $Unbox(read($Heap, r#0, _module.AnotherNode.data)): int == d#4
             && _module.AnotherNode.Repr($LS($LZ), 
              $Heap, 
              this, 
              $Unbox(read($Heap, r#0, _module.AnotherNode.next)): ref, 
              cdr#3))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AnotherNode.Add (correctness)"} Impl$$_module.AnotherNode.Add(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AnotherNode())
         && $IsAlloc(this, Tclass._module.AnotherNode(), $Heap), 
    n#0: ref
       where $Is(n#0, Tclass._module.AnotherNode())
         && $IsAlloc(n#0, Tclass._module.AnotherNode(), $Heap), 
    d#0: int, 
    L#0: DatatypeType
       where $Is(L#0, Tclass._module.List(TInt))
         && $IsAlloc(L#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(L#0))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.AnotherNode())
           && $IsAlloc(r#0, Tclass._module.AnotherNode(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id333"} _module.AnotherNode.Repr#canCall($Heap, this, n#0, L#0)
     && 
    _module.AnotherNode.Repr($LS($LZ), $Heap, this, n#0, L#0)
     && (if _module.List.Nil_q(L#0)
       then n#0 == null
       else (var cdr#5 := _module.List._h1(L#0); 
        (var d#6 := $Unbox(_module.List._h0(L#0)): int; 
          n#0 != null
             && $Unbox(read($Heap, n#0, _module.AnotherNode.data)): int == d#6
             && _module.AnotherNode.Repr($LS($LZ), 
              $Heap, 
              this, 
              $Unbox(read($Heap, n#0, _module.AnotherNode.next)): ref, 
              cdr#5))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0));
  ensures {:id "id334"} _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0)) ==> r#0 == null);
  ensures {:id "id335"} _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (!_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> (var cdr#6 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
          (var d#7 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
            r#0 != null)));
  ensures {:id "id336"} _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (!_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> (var cdr#6 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
          (var d#7 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
            $Unbox(read($Heap, r#0, _module.AnotherNode.data)): int == d#7)));
  ensures {:id "id337"} _module.AnotherNode.Repr#canCall($Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
     ==> _module.AnotherNode.Repr($LS($LZ), $Heap, this, r#0, #_module.List.Cons($Box(d#0), L#0))
       || (!_module.List.Nil_q(#_module.List.Cons($Box(d#0), L#0))
         ==> (var cdr#6 := _module.List._h1(#_module.List.Cons($Box(d#0), L#0)); 
          (var d#7 := $Unbox(_module.List._h0(#_module.List.Cons($Box(d#0), L#0))): int; 
            _module.AnotherNode.Repr($LS($LS($LZ)), 
              $Heap, 
              this, 
              $Unbox(read($Heap, r#0, _module.AnotherNode.next)): ref, 
              cdr#6))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AnotherNode.Add (correctness)"} Impl$$_module.AnotherNode.Add(this: ref, n#0: ref, d#0: int, L#0: DatatypeType)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0: int;
  var $rhs#1: ref;

    // AddMethodImpl: Add, Impl$$_module.AnotherNode.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(61,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.AnotherNode?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    r#0 := $nw;
    defass#r#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(62,12)
    assert {:id "id339"} defass#r#0;
    assert {:id "id340"} r#0 != null;
    assume true;
    assert {:id "id341"} $_ModifiesFrame[r#0, _module.AnotherNode.data];
    assume true;
    $rhs#0 := d#0;
    $Heap := update($Heap, r#0, _module.AnotherNode.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(63,12)
    assert {:id "id344"} defass#r#0;
    assert {:id "id345"} r#0 != null;
    assume true;
    assert {:id "id346"} $_ModifiesFrame[r#0, _module.AnotherNode.next];
    assume true;
    $rhs#1 := n#0;
    $Heap := update($Heap, r#0, _module.AnotherNode.next, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    assert {:id "id349"} defass#r#0;
}



// $Is axiom for non-null type _module.AnotherNode
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.AnotherNode()) } 
    { $Is(c#0, Tclass._module.AnotherNode?()) } 
  $Is(c#0, Tclass._module.AnotherNode())
     <==> $Is(c#0, Tclass._module.AnotherNode?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.AnotherNode
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AnotherNode(), $h) } 
    { $IsAlloc(c#0, Tclass._module.AnotherNode?(), $h) } 
  $IsAlloc(c#0, Tclass._module.AnotherNode(), $h)
     <==> $IsAlloc(c#0, Tclass._module.AnotherNode?(), $h));

const unique class._module.NestedMatchExpr?: ClassName;

function Tclass._module.NestedMatchExpr?() : Ty
uses {
// Tclass._module.NestedMatchExpr? Tag
axiom Tag(Tclass._module.NestedMatchExpr?()) == Tagclass._module.NestedMatchExpr?
   && TagFamily(Tclass._module.NestedMatchExpr?()) == tytagFamily$NestedMatchExpr;
}

const unique Tagclass._module.NestedMatchExpr?: TyTag;

// Box/unbox axiom for Tclass._module.NestedMatchExpr?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NestedMatchExpr?()) } 
  $IsBox(bx, Tclass._module.NestedMatchExpr?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NestedMatchExpr?()));

// $Is axiom for class NestedMatchExpr
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NestedMatchExpr?()) } 
  $Is($o, Tclass._module.NestedMatchExpr?())
     <==> $o == null || dtype($o) == Tclass._module.NestedMatchExpr?());

// $IsAlloc axiom for class NestedMatchExpr
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NestedMatchExpr?(), $h) } 
  $IsAlloc($o, Tclass._module.NestedMatchExpr?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.NestedMatchExpr.Cadr
function _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box)
   : Box
uses {
// consequence axiom for _module.NestedMatchExpr.Cadr
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box :: 
    { _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0) } 
    _module.NestedMatchExpr.Cadr#canCall(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T))
       ==> $IsBox(_module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0), 
        _module.NestedMatchExpr.Cadr$T));
// alloc consequence axiom for _module.NestedMatchExpr.Cadr
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.NestedMatchExpr.Cadr$T: Ty, 
      this: ref, 
      a#0: DatatypeType, 
      Default#0: Box :: 
    { $IsAllocBox(_module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0), 
        _module.NestedMatchExpr.Cadr$T, 
        $Heap) } 
    (_module.NestedMatchExpr.Cadr#canCall(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap)
             && 
            $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T))
             && $IsAlloc(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T), $Heap)
             && 
            $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T)
             && $IsAllocBox(Default#0, _module.NestedMatchExpr.Cadr$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0), 
        _module.NestedMatchExpr.Cadr$T, 
        $Heap));
// definition axiom for _module.NestedMatchExpr.Cadr (revealed)
axiom {:id "id350"} 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box :: 
    { _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0) } 
    _module.NestedMatchExpr.Cadr#canCall(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T))
       ==> _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0)
         == (if _module.List.Nil_q(a#0)
           then Default#0
           else (var t#0 := _module.List._h1(a#0); 
            (var x#0 := _module.List._h0(a#0); 
              (if _module.List.Nil_q(t#0)
                 then Default#0
                 else (var tail#0 := _module.List._h1(t#0); (var y#0 := _module.List._h0(t#0); y#0)))))));
// definition axiom for _module.NestedMatchExpr.Cadr for decreasing-related literals (revealed)
axiom {:id "id351"} 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box :: 
    {:weight 3} { _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, Lit(a#0), Default#0) } 
    _module.NestedMatchExpr.Cadr#canCall(_module.NestedMatchExpr.Cadr$T, this, Lit(a#0), Default#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T))
       ==> _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, this, Lit(a#0), Default#0)
         == (if _module.List.Nil_q(Lit(a#0))
           then Default#0
           else (var t#2 := Lit(_module.List._h1(Lit(a#0))); 
            (var x#2 := Lit(_module.List._h0(Lit(a#0))); 
              (if _module.List.Nil_q(t#2)
                 then Default#0
                 else (var tail#2 := Lit(_module.List._h1(t#2)); 
                  (var y#2 := Lit(_module.List._h0(t#2)); y#2)))))));
// definition axiom for _module.NestedMatchExpr.Cadr for all literals (revealed)
axiom {:id "id352"} 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box :: 
    {:weight 3} { _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, Lit(this), Lit(a#0), Lit(Default#0)) } 
    _module.NestedMatchExpr.Cadr#canCall(_module.NestedMatchExpr.Cadr$T, Lit(this), Lit(a#0), Lit(Default#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T))
       ==> _module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T, Lit(this), Lit(a#0), Lit(Default#0))
         == (if _module.List.Nil_q(Lit(a#0))
           then Default#0
           else (var t#4 := Lit(_module.List._h1(Lit(a#0))); 
            (var x#4 := Lit(_module.List._h0(Lit(a#0))); 
              (if _module.List.Nil_q(t#4)
                 then Default#0
                 else (var tail#4 := Lit(_module.List._h1(t#4)); 
                  (var y#4 := Lit(_module.List._h0(t#4)); y#4)))))));
}

function _module.NestedMatchExpr.Cadr#canCall(_module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box)
   : bool;

function Tclass._module.NestedMatchExpr() : Ty
uses {
// Tclass._module.NestedMatchExpr Tag
axiom Tag(Tclass._module.NestedMatchExpr()) == Tagclass._module.NestedMatchExpr
   && TagFamily(Tclass._module.NestedMatchExpr()) == tytagFamily$NestedMatchExpr;
}

const unique Tagclass._module.NestedMatchExpr: TyTag;

// Box/unbox axiom for Tclass._module.NestedMatchExpr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NestedMatchExpr()) } 
  $IsBox(bx, Tclass._module.NestedMatchExpr())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NestedMatchExpr()));

function _module.NestedMatchExpr.Cadr#requires(Ty, ref, DatatypeType, Box) : bool;

// #requires axiom for _module.NestedMatchExpr.Cadr
axiom (forall _module.NestedMatchExpr.Cadr$T: Ty, this: ref, a#0: DatatypeType, Default#0: Box :: 
  { _module.NestedMatchExpr.Cadr#requires(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0) } 
  this != null
       && $Is(this, Tclass._module.NestedMatchExpr())
       && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T))
       && $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T)
     ==> _module.NestedMatchExpr.Cadr#requires(_module.NestedMatchExpr.Cadr$T, this, a#0, Default#0)
       == true);

procedure {:verboseName "NestedMatchExpr.Cadr (well-formedness)"} CheckWellformed$$_module.NestedMatchExpr.Cadr(_module.NestedMatchExpr.Cadr$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.Cadr$T)), 
    Default#0: Box where $IsBox(Default#0, _module.NestedMatchExpr.Cadr$T));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.NestedMatchExpr.CadrAlt
function _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T: Ty, 
    this: ref, 
    a#0: DatatypeType, 
    Default#0: Box)
   : Box
uses {
// consequence axiom for _module.NestedMatchExpr.CadrAlt
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.CadrAlt$T: Ty, 
      this: ref, 
      a#0: DatatypeType, 
      Default#0: Box :: 
    { _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0) } 
    _module.NestedMatchExpr.CadrAlt#canCall(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T))
       ==> $IsBox(_module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0), 
        _module.NestedMatchExpr.CadrAlt$T));
// alloc consequence axiom for _module.NestedMatchExpr.CadrAlt
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.NestedMatchExpr.CadrAlt$T: Ty, 
      this: ref, 
      a#0: DatatypeType, 
      Default#0: Box :: 
    { $IsAllocBox(_module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0), 
        _module.NestedMatchExpr.CadrAlt$T, 
        $Heap) } 
    (_module.NestedMatchExpr.CadrAlt#canCall(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap)
             && 
            $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T))
             && $IsAlloc(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T), $Heap)
             && 
            $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T)
             && $IsAllocBox(Default#0, _module.NestedMatchExpr.CadrAlt$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0), 
        _module.NestedMatchExpr.CadrAlt$T, 
        $Heap));
// definition axiom for _module.NestedMatchExpr.CadrAlt (revealed)
axiom {:id "id364"} 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.CadrAlt$T: Ty, 
      this: ref, 
      a#0: DatatypeType, 
      Default#0: Box :: 
    { _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0) } 
    _module.NestedMatchExpr.CadrAlt#canCall(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T))
       ==> _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0)
         == (if _module.List.Nil_q(a#0)
           then Default#0
           else (var t#0 := _module.List._h1(a#0); 
            (var x#0 := _module.List._h0(a#0); 
              (if _module.List.Nil_q(t#0)
                 then Default#0
                 else (var tail#0 := _module.List._h1(t#0); (var y#0 := _module.List._h0(t#0); y#0)))))));
// definition axiom for _module.NestedMatchExpr.CadrAlt for decreasing-related literals (revealed)
axiom {:id "id365"} 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.CadrAlt$T: Ty, 
      this: ref, 
      a#0: DatatypeType, 
      Default#0: Box :: 
    {:weight 3} { _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, Lit(a#0), Default#0) } 
    _module.NestedMatchExpr.CadrAlt#canCall(_module.NestedMatchExpr.CadrAlt$T, this, Lit(a#0), Default#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T))
       ==> _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, this, Lit(a#0), Default#0)
         == (if _module.List.Nil_q(Lit(a#0))
           then Default#0
           else (var t#2 := Lit(_module.List._h1(Lit(a#0))); 
            (var x#2 := Lit(_module.List._h0(Lit(a#0))); 
              (if _module.List.Nil_q(t#2)
                 then Default#0
                 else (var tail#2 := Lit(_module.List._h1(t#2)); 
                  (var y#2 := Lit(_module.List._h0(t#2)); y#2)))))));
// definition axiom for _module.NestedMatchExpr.CadrAlt for all literals (revealed)
axiom {:id "id366"} 1 <= $FunctionContextHeight
   ==> (forall _module.NestedMatchExpr.CadrAlt$T: Ty, 
      this: ref, 
      a#0: DatatypeType, 
      Default#0: Box :: 
    {:weight 3} { _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, Lit(this), Lit(a#0), Lit(Default#0)) } 
    _module.NestedMatchExpr.CadrAlt#canCall(_module.NestedMatchExpr.CadrAlt$T, Lit(this), Lit(a#0), Lit(Default#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.NestedMatchExpr())
           && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T))
           && $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T))
       ==> _module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T, Lit(this), Lit(a#0), Lit(Default#0))
         == (if _module.List.Nil_q(Lit(a#0))
           then Default#0
           else (var t#4 := Lit(_module.List._h1(Lit(a#0))); 
            (var x#4 := Lit(_module.List._h0(Lit(a#0))); 
              (if _module.List.Nil_q(t#4)
                 then Default#0
                 else (var tail#4 := Lit(_module.List._h1(t#4)); 
                  (var y#4 := Lit(_module.List._h0(t#4)); y#4)))))));
}

function _module.NestedMatchExpr.CadrAlt#canCall(_module.NestedMatchExpr.CadrAlt$T: Ty, 
    this: ref, 
    a#0: DatatypeType, 
    Default#0: Box)
   : bool;

function _module.NestedMatchExpr.CadrAlt#requires(Ty, ref, DatatypeType, Box) : bool;

// #requires axiom for _module.NestedMatchExpr.CadrAlt
axiom (forall _module.NestedMatchExpr.CadrAlt$T: Ty, 
    this: ref, 
    a#0: DatatypeType, 
    Default#0: Box :: 
  { _module.NestedMatchExpr.CadrAlt#requires(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0) } 
  this != null
       && $Is(this, Tclass._module.NestedMatchExpr())
       && $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T))
       && $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T)
     ==> _module.NestedMatchExpr.CadrAlt#requires(_module.NestedMatchExpr.CadrAlt$T, this, a#0, Default#0)
       == true);

procedure {:verboseName "NestedMatchExpr.CadrAlt (well-formedness)"} CheckWellformed$$_module.NestedMatchExpr.CadrAlt(_module.NestedMatchExpr.CadrAlt$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module.NestedMatchExpr.CadrAlt$T)), 
    Default#0: Box where $IsBox(Default#0, _module.NestedMatchExpr.CadrAlt$T));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NestedMatchExpr.TestNesting0 (well-formedness)"} CheckWellFormed$$_module.NestedMatchExpr.TestNesting0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NestedMatchExpr.TestNesting0 (call)"} Call$$_module.NestedMatchExpr.TestNesting0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NestedMatchExpr.TestNesting0 (correctness)"} Impl$$_module.NestedMatchExpr.TestNesting0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NestedMatchExpr.TestNesting0 (correctness)"} Impl$$_module.NestedMatchExpr.TestNesting0(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var list#0: DatatypeType
     where $Is(list#0, Tclass._module.List(TInt))
       && $IsAlloc(list#0, Tclass._module.List(TInt), $Heap);
  var ##a#0: DatatypeType;
  var ##Default#0: int;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var t#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var h#0_0: int;
  var let#0_1#0#0: int;
  var ##a#0_0: DatatypeType;
  var ##Default#0_0: int;

    // AddMethodImpl: TestNesting0, Impl$$_module.NestedMatchExpr.TestNesting0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(119,11)
    assume true;
    assume true;
    x#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(120,14)
    assume true;
    assume true;
    list#0 := Lit(#_module.List.Cons($Box(LitInt(3)), 
        Lit(#_module.List.Cons($Box(LitInt(6)), Lit(#_module.List.Nil())))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(121,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NestedMatchExpr?(), $Heap);
    ##a#0 := list#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.List(TInt), $Heap);
    ##Default#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##Default#0, TInt, $Heap);
    assume _module.NestedMatchExpr.Cadr#canCall(TInt, this, list#0, $Box(x#0));
    assume _module.NestedMatchExpr.Cadr#canCall(TInt, this, list#0, $Box(x#0));
    assert {:id "id380"} $Unbox(_module.NestedMatchExpr.Cadr(TInt, this, list#0, $Box(x#0))): int
       == LitInt(6);
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (list#0 == #_module.List.Nil())
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(123,19)
        assume true;
        assert {:id "id386"} Lit(false);
    }
    else if (list#0 == #_module.List.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.List(TInt));
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.List(TInt))
           && $IsAlloc(t#0_0, Tclass._module.List(TInt), $Heap);
        assume {:id "id381"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(TInt));
        assume {:id "id382"} t#0_0 == let#0_0#0#0;
        havoc h#0_0;
        assume {:id "id383"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id384"} h#0_0 == let#0_1#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(124,25)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.NestedMatchExpr?(), $Heap);
        ##a#0_0 := t#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_0, Tclass._module.List(TInt), $Heap);
        ##Default#0_0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##Default#0_0, TInt, $Heap);
        assume _module.NestedMatchExpr.Cadr#canCall(TInt, this, t#0_0, $Box(x#0));
        assume _module.NestedMatchExpr.Cadr#canCall(TInt, this, t#0_0, $Box(x#0));
        assert {:id "id385"} $Unbox(_module.NestedMatchExpr.Cadr(TInt, this, t#0_0, $Box(x#0))): int
           == LitInt(5);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "NestedMatchExpr.TestNesting1 (well-formedness)"} CheckWellFormed$$_module.NestedMatchExpr.TestNesting1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(Tclass._module.NestedMatchExpr()))
         && $IsAlloc(a#0, Tclass._module.List(Tclass._module.NestedMatchExpr()), $Heap)
         && $IsA#_module.List(a#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NestedMatchExpr.TestNesting1 (call)"} Call$$_module.NestedMatchExpr.TestNesting1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(Tclass._module.NestedMatchExpr()))
         && $IsAlloc(a#0, Tclass._module.List(Tclass._module.NestedMatchExpr()), $Heap)
         && $IsA#_module.List(a#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NestedMatchExpr.Cadr#canCall(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this))
     && _module.NestedMatchExpr.CadrAlt#canCall(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this));
  ensures {:id "id388"} $Unbox(_module.NestedMatchExpr.Cadr(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this))): ref
     == $Unbox(_module.NestedMatchExpr.CadrAlt(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this))): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NestedMatchExpr.TestNesting1 (correctness)"} Impl$$_module.NestedMatchExpr.TestNesting1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NestedMatchExpr())
         && $IsAlloc(this, Tclass._module.NestedMatchExpr(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(Tclass._module.NestedMatchExpr()))
         && $IsAlloc(a#0, Tclass._module.List(Tclass._module.NestedMatchExpr()), $Heap)
         && $IsA#_module.List(a#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NestedMatchExpr.Cadr#canCall(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this))
     && _module.NestedMatchExpr.CadrAlt#canCall(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this));
  ensures {:id "id389"} $Unbox(_module.NestedMatchExpr.Cadr(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this))): ref
     == $Unbox(_module.NestedMatchExpr.CadrAlt(Tclass._module.NestedMatchExpr(), this, a#0, $Box(this))): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NestedMatchExpr.TestNesting1 (correctness)"} Impl$$_module.NestedMatchExpr.TestNesting1(this: ref, a#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: ref;
  var _mcc#1#0_0: DatatypeType;
  var t#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: ref;
  var let#0_1#0#0: ref;
  var _mcc#2#0_0_0: ref;
  var _mcc#3#0_0_0: DatatypeType;

    // AddMethodImpl: TestNesting1, Impl$$_module.NestedMatchExpr.TestNesting1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (a#0 == #_module.List.Nil())
    {
    }
    else if (a#0 == #_module.List.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.NestedMatchExpr());
        assume $Is(_mcc#1#0_0, Tclass._module.List(Tclass._module.NestedMatchExpr()));
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.List(Tclass._module.NestedMatchExpr()))
           && $IsAlloc(t#0_0, Tclass._module.List(Tclass._module.NestedMatchExpr()), $Heap);
        assume {:id "id390"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(Tclass._module.NestedMatchExpr()));
        assume {:id "id391"} t#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume $Is(x#0_0, Tclass._module.NestedMatchExpr())
           && $IsAlloc(x#0_0, Tclass._module.NestedMatchExpr(), $Heap);
        assume {:id "id392"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.NestedMatchExpr());
        assume {:id "id393"} x#0_0 == let#0_1#0#0;
        assume true;
        havoc _mcc#2#0_0_0, _mcc#3#0_0_0;
        if (t#0_0 == #_module.List.Nil())
        {
        }
        else if (t#0_0 == #_module.List.Cons($Box(_mcc#2#0_0_0), _mcc#3#0_0_0))
        {
            assume $Is(_mcc#2#0_0_0, Tclass._module.NestedMatchExpr());
            assume $Is(_mcc#3#0_0_0, Tclass._module.List(Tclass._module.NestedMatchExpr()));
        }
        else
        {
            assume false;
        }
    }
    else
    {
        assume false;
    }
}



// $Is axiom for non-null type _module.NestedMatchExpr
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NestedMatchExpr()) } 
    { $Is(c#0, Tclass._module.NestedMatchExpr?()) } 
  $Is(c#0, Tclass._module.NestedMatchExpr())
     <==> $Is(c#0, Tclass._module.NestedMatchExpr?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NestedMatchExpr
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NestedMatchExpr(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NestedMatchExpr?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NestedMatchExpr(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NestedMatchExpr?(), $h));

// Constructor function declaration
function #_module.XList.XNil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.XList.XNil()) == ##_module.XList.XNil;
// Constructor $Is
axiom $Is(#_module.XList.XNil(), Tclass._module.XList());
// Constructor literal
axiom #_module.XList.XNil() == Lit(#_module.XList.XNil());
}

const unique ##_module.XList.XNil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.XList.XNil()) == ##_module.XList.XNil;
}

function _module.XList.XNil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.XList.XNil_q(d) } 
  _module.XList.XNil_q(d) <==> DatatypeCtorId(d) == ##_module.XList.XNil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.XList.XNil_q(d) } 
  _module.XList.XNil_q(d) ==> d == #_module.XList.XNil());

// Constructor function declaration
function #_module.XList.XCons(int, DatatypeType) : DatatypeType;

const unique ##_module.XList.XCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: int, a#4#1#0: DatatypeType :: 
  { #_module.XList.XCons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.XList.XCons(a#4#0#0, a#4#1#0)) == ##_module.XList.XCons);
}

function _module.XList.XCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.XList.XCons_q(d) } 
  _module.XList.XCons_q(d) <==> DatatypeCtorId(d) == ##_module.XList.XCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.XList.XCons_q(d) } 
  _module.XList.XCons_q(d)
     ==> (exists a#5#0#0: int, a#5#1#0: DatatypeType :: 
      d == #_module.XList.XCons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall a#6#0#0: int, a#6#1#0: DatatypeType :: 
  { $Is(#_module.XList.XCons(a#6#0#0, a#6#1#0), Tclass._module.XList()) } 
  $Is(#_module.XList.XCons(a#6#0#0, a#6#1#0), Tclass._module.XList())
     <==> $Is(a#6#0#0, TInt) && $Is(a#6#1#0, Tclass._module.XList()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.XList.Car(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.XList.XCons_q(d)
       && $IsAlloc(d, Tclass._module.XList(), $h)
     ==> $IsAlloc(_module.XList.Car(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.XList.Cdr(d), Tclass._module.XList(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.XList.XCons_q(d)
       && $IsAlloc(d, Tclass._module.XList(), $h)
     ==> $IsAlloc(_module.XList.Cdr(d), Tclass._module.XList(), $h));

// Constructor literal
axiom (forall a#7#0#0: int, a#7#1#0: DatatypeType :: 
  { #_module.XList.XCons(LitInt(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.XList.XCons(LitInt(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.XList.XCons(a#7#0#0, a#7#1#0)));

function _module.XList.Car(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#8#0#0: int, a#8#1#0: DatatypeType :: 
  { #_module.XList.XCons(a#8#0#0, a#8#1#0) } 
  _module.XList.Car(#_module.XList.XCons(a#8#0#0, a#8#1#0)) == a#8#0#0);

function _module.XList.Cdr(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: int, a#9#1#0: DatatypeType :: 
  { #_module.XList.XCons(a#9#0#0, a#9#1#0) } 
  _module.XList.Cdr(#_module.XList.XCons(a#9#0#0, a#9#1#0)) == a#9#1#0);

// Inductive rank
axiom (forall a#10#0#0: int, a#10#1#0: DatatypeType :: 
  { #_module.XList.XCons(a#10#0#0, a#10#1#0) } 
  DtRank(a#10#1#0) < DtRank(#_module.XList.XCons(a#10#0#0, a#10#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.XList(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.XList())
     ==> $IsAlloc(d, Tclass._module.XList(), $h));

// Depth-one case-split function
function $IsA#_module.XList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.XList(d) } 
  $IsA#_module.XList(d) ==> _module.XList.XNil_q(d) || _module.XList.XCons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.XList.XCons_q(d), $Is(d, Tclass._module.XList()) } 
    { _module.XList.XNil_q(d), $Is(d, Tclass._module.XList()) } 
  $Is(d, Tclass._module.XList())
     ==> _module.XList.XNil_q(d) || _module.XList.XCons_q(d));

// Datatype extensional equality declaration
function _module.XList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.XList.XNil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.XList#Equal(a, b), _module.XList.XNil_q(a) } 
    { _module.XList#Equal(a, b), _module.XList.XNil_q(b) } 
  _module.XList.XNil_q(a) && _module.XList.XNil_q(b) ==> _module.XList#Equal(a, b));

// Datatype extensional equality definition: #_module.XList.XCons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.XList#Equal(a, b), _module.XList.XCons_q(a) } 
    { _module.XList#Equal(a, b), _module.XList.XCons_q(b) } 
  _module.XList.XCons_q(a) && _module.XList.XCons_q(b)
     ==> (_module.XList#Equal(a, b)
       <==> _module.XList.Car(a) == _module.XList.Car(b)
         && _module.XList#Equal(_module.XList.Cdr(a), _module.XList.Cdr(b))));

// Datatype extensionality axiom: _module.XList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.XList#Equal(a, b) } 
  _module.XList#Equal(a, b) <==> a == b);

const unique class._module.XList: ClassName;

// Constructor function declaration
function #_module.Triple.T(int, int, int) : DatatypeType;

const unique ##_module.Triple.T: DtCtorId
uses {
// Constructor identifier
axiom (forall a#11#0#0: int, a#11#1#0: int, a#11#2#0: int :: 
  { #_module.Triple.T(a#11#0#0, a#11#1#0, a#11#2#0) } 
  DatatypeCtorId(#_module.Triple.T(a#11#0#0, a#11#1#0, a#11#2#0))
     == ##_module.Triple.T);
}

function _module.Triple.T_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Triple.T_q(d) } 
  _module.Triple.T_q(d) <==> DatatypeCtorId(d) == ##_module.Triple.T);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Triple.T_q(d) } 
  _module.Triple.T_q(d)
     ==> (exists a#12#0#0: int, a#12#1#0: int, a#12#2#0: int :: 
      d == #_module.Triple.T(a#12#0#0, a#12#1#0, a#12#2#0)));

// Constructor $Is
axiom (forall a#13#0#0: int, a#13#1#0: int, a#13#2#0: int :: 
  { $Is(#_module.Triple.T(a#13#0#0, a#13#1#0, a#13#2#0), Tclass._module.Triple()) } 
  $Is(#_module.Triple.T(a#13#0#0, a#13#1#0, a#13#2#0), Tclass._module.Triple())
     <==> $Is(a#13#0#0, TInt) && $Is(a#13#1#0, TInt) && $Is(a#13#2#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Triple.a(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Triple.T_q(d)
       && $IsAlloc(d, Tclass._module.Triple(), $h)
     ==> $IsAlloc(_module.Triple.a(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Triple.b(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Triple.T_q(d)
       && $IsAlloc(d, Tclass._module.Triple(), $h)
     ==> $IsAlloc(_module.Triple.b(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Triple.c(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Triple.T_q(d)
       && $IsAlloc(d, Tclass._module.Triple(), $h)
     ==> $IsAlloc(_module.Triple.c(d), TInt, $h));

// Constructor literal
axiom (forall a#14#0#0: int, a#14#1#0: int, a#14#2#0: int :: 
  { #_module.Triple.T(LitInt(a#14#0#0), LitInt(a#14#1#0), LitInt(a#14#2#0)) } 
  #_module.Triple.T(LitInt(a#14#0#0), LitInt(a#14#1#0), LitInt(a#14#2#0))
     == Lit(#_module.Triple.T(a#14#0#0, a#14#1#0, a#14#2#0)));

function _module.Triple.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#15#0#0: int, a#15#1#0: int, a#15#2#0: int :: 
  { #_module.Triple.T(a#15#0#0, a#15#1#0, a#15#2#0) } 
  _module.Triple.a(#_module.Triple.T(a#15#0#0, a#15#1#0, a#15#2#0)) == a#15#0#0);

function _module.Triple.b(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#16#0#0: int, a#16#1#0: int, a#16#2#0: int :: 
  { #_module.Triple.T(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _module.Triple.b(#_module.Triple.T(a#16#0#0, a#16#1#0, a#16#2#0)) == a#16#1#0);

function _module.Triple.c(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#17#0#0: int, a#17#1#0: int, a#17#2#0: int :: 
  { #_module.Triple.T(a#17#0#0, a#17#1#0, a#17#2#0) } 
  _module.Triple.c(#_module.Triple.T(a#17#0#0, a#17#1#0, a#17#2#0)) == a#17#2#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Triple(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Triple())
     ==> $IsAlloc(d, Tclass._module.Triple(), $h));

// Depth-one case-split function
function $IsA#_module.Triple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Triple(d) } 
  $IsA#_module.Triple(d) ==> _module.Triple.T_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Triple.T_q(d), $Is(d, Tclass._module.Triple()) } 
  $Is(d, Tclass._module.Triple()) ==> _module.Triple.T_q(d));

// Datatype extensional equality declaration
function _module.Triple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Triple.T
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Triple#Equal(a, b) } 
  _module.Triple#Equal(a, b)
     <==> _module.Triple.a(a) == _module.Triple.a(b)
       && _module.Triple.b(a) == _module.Triple.b(b)
       && _module.Triple.c(a) == _module.Triple.c(b));

// Datatype extensionality axiom: _module.Triple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Triple#Equal(a, b) } 
  _module.Triple#Equal(a, b) <==> a == b);

const unique class._module.Triple: ClassName;

// Constructor function declaration
function #_module.TripleAndMore.T'(int, int, int) : DatatypeType;

const unique ##_module.TripleAndMore.T': DtCtorId
uses {
// Constructor identifier
axiom (forall a#18#0#0: int, a#18#1#0: int, a#18#2#0: int :: 
  { #_module.TripleAndMore.T'(a#18#0#0, a#18#1#0, a#18#2#0) } 
  DatatypeCtorId(#_module.TripleAndMore.T'(a#18#0#0, a#18#1#0, a#18#2#0))
     == ##_module.TripleAndMore.T');
}

function _module.TripleAndMore.T_k_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.TripleAndMore.T_k_q(d) } 
  _module.TripleAndMore.T_k_q(d)
     <==> DatatypeCtorId(d) == ##_module.TripleAndMore.T');

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.TripleAndMore.T_k_q(d) } 
  _module.TripleAndMore.T_k_q(d)
     ==> (exists a#19#0#0: int, a#19#1#0: int, a#19#2#0: int :: 
      d == #_module.TripleAndMore.T'(a#19#0#0, a#19#1#0, a#19#2#0)));

// Constructor $Is
axiom (forall a#20#0#0: int, a#20#1#0: int, a#20#2#0: int :: 
  { $Is(#_module.TripleAndMore.T'(a#20#0#0, a#20#1#0, a#20#2#0), 
      Tclass._module.TripleAndMore()) } 
  $Is(#_module.TripleAndMore.T'(a#20#0#0, a#20#1#0, a#20#2#0), 
      Tclass._module.TripleAndMore())
     <==> $Is(a#20#0#0, TInt) && $Is(a#20#1#0, TInt) && $Is(a#20#2#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.TripleAndMore.a(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.TripleAndMore.T_k_q(d)
       && $IsAlloc(d, Tclass._module.TripleAndMore(), $h)
     ==> $IsAlloc(_module.TripleAndMore.a(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.TripleAndMore.b(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.TripleAndMore.T_k_q(d)
       && $IsAlloc(d, Tclass._module.TripleAndMore(), $h)
     ==> $IsAlloc(_module.TripleAndMore.b(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.TripleAndMore.c(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.TripleAndMore.T_k_q(d)
       && $IsAlloc(d, Tclass._module.TripleAndMore(), $h)
     ==> $IsAlloc(_module.TripleAndMore.c(d), TInt, $h));

// Constructor literal
axiom (forall a#21#0#0: int, a#21#1#0: int, a#21#2#0: int :: 
  { #_module.TripleAndMore.T'(LitInt(a#21#0#0), LitInt(a#21#1#0), LitInt(a#21#2#0)) } 
  #_module.TripleAndMore.T'(LitInt(a#21#0#0), LitInt(a#21#1#0), LitInt(a#21#2#0))
     == Lit(#_module.TripleAndMore.T'(a#21#0#0, a#21#1#0, a#21#2#0)));

function _module.TripleAndMore.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#22#0#0: int, a#22#1#0: int, a#22#2#0: int :: 
  { #_module.TripleAndMore.T'(a#22#0#0, a#22#1#0, a#22#2#0) } 
  _module.TripleAndMore.a(#_module.TripleAndMore.T'(a#22#0#0, a#22#1#0, a#22#2#0))
     == a#22#0#0);

function _module.TripleAndMore.b(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#23#0#0: int, a#23#1#0: int, a#23#2#0: int :: 
  { #_module.TripleAndMore.T'(a#23#0#0, a#23#1#0, a#23#2#0) } 
  _module.TripleAndMore.b(#_module.TripleAndMore.T'(a#23#0#0, a#23#1#0, a#23#2#0))
     == a#23#1#0);

function _module.TripleAndMore.c(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#24#0#0: int, a#24#1#0: int, a#24#2#0: int :: 
  { #_module.TripleAndMore.T'(a#24#0#0, a#24#1#0, a#24#2#0) } 
  _module.TripleAndMore.c(#_module.TripleAndMore.T'(a#24#0#0, a#24#1#0, a#24#2#0))
     == a#24#2#0);

// Constructor function declaration
function #_module.TripleAndMore.NotATriple() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.TripleAndMore.NotATriple())
   == ##_module.TripleAndMore.NotATriple;
// Constructor $Is
axiom $Is(#_module.TripleAndMore.NotATriple(), Tclass._module.TripleAndMore());
// Constructor literal
axiom #_module.TripleAndMore.NotATriple() == Lit(#_module.TripleAndMore.NotATriple());
}

const unique ##_module.TripleAndMore.NotATriple: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.TripleAndMore.NotATriple())
   == ##_module.TripleAndMore.NotATriple;
}

function _module.TripleAndMore.NotATriple_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.TripleAndMore.NotATriple_q(d) } 
  _module.TripleAndMore.NotATriple_q(d)
     <==> DatatypeCtorId(d) == ##_module.TripleAndMore.NotATriple);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.TripleAndMore.NotATriple_q(d) } 
  _module.TripleAndMore.NotATriple_q(d)
     ==> d == #_module.TripleAndMore.NotATriple());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.TripleAndMore(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.TripleAndMore())
     ==> $IsAlloc(d, Tclass._module.TripleAndMore(), $h));

// Depth-one case-split function
function $IsA#_module.TripleAndMore(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.TripleAndMore(d) } 
  $IsA#_module.TripleAndMore(d)
     ==> _module.TripleAndMore.T_k_q(d) || _module.TripleAndMore.NotATriple_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.TripleAndMore.NotATriple_q(d), $Is(d, Tclass._module.TripleAndMore()) } 
    { _module.TripleAndMore.T_k_q(d), $Is(d, Tclass._module.TripleAndMore()) } 
  $Is(d, Tclass._module.TripleAndMore())
     ==> _module.TripleAndMore.T_k_q(d) || _module.TripleAndMore.NotATriple_q(d));

// Datatype extensional equality declaration
function _module.TripleAndMore#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.TripleAndMore.T'
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TripleAndMore#Equal(a, b), _module.TripleAndMore.T_k_q(a) } 
    { _module.TripleAndMore#Equal(a, b), _module.TripleAndMore.T_k_q(b) } 
  _module.TripleAndMore.T_k_q(a) && _module.TripleAndMore.T_k_q(b)
     ==> (_module.TripleAndMore#Equal(a, b)
       <==> _module.TripleAndMore.a(a) == _module.TripleAndMore.a(b)
         && _module.TripleAndMore.b(a) == _module.TripleAndMore.b(b)
         && _module.TripleAndMore.c(a) == _module.TripleAndMore.c(b)));

// Datatype extensional equality definition: #_module.TripleAndMore.NotATriple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TripleAndMore#Equal(a, b), _module.TripleAndMore.NotATriple_q(a) } 
    { _module.TripleAndMore#Equal(a, b), _module.TripleAndMore.NotATriple_q(b) } 
  _module.TripleAndMore.NotATriple_q(a) && _module.TripleAndMore.NotATriple_q(b)
     ==> _module.TripleAndMore#Equal(a, b));

// Datatype extensionality axiom: _module.TripleAndMore
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TripleAndMore#Equal(a, b) } 
  _module.TripleAndMore#Equal(a, b) <==> a == b);

const unique class._module.TripleAndMore: ClassName;

// Constructor function declaration
function #_module.Fwd.FwdNil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Fwd.FwdNil()) == ##_module.Fwd.FwdNil;
// Constructor $Is
axiom $Is(#_module.Fwd.FwdNil(), Tclass._module.Fwd());
// Constructor literal
axiom #_module.Fwd.FwdNil() == Lit(#_module.Fwd.FwdNil());
}

const unique ##_module.Fwd.FwdNil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Fwd.FwdNil()) == ##_module.Fwd.FwdNil;
}

function _module.Fwd.FwdNil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Fwd.FwdNil_q(d) } 
  _module.Fwd.FwdNil_q(d) <==> DatatypeCtorId(d) == ##_module.Fwd.FwdNil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Fwd.FwdNil_q(d) } 
  _module.Fwd.FwdNil_q(d) ==> d == #_module.Fwd.FwdNil());

// Constructor function declaration
function #_module.Fwd.FwdCons(int, DatatypeType) : DatatypeType;

const unique ##_module.Fwd.FwdCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#33#0#0: int, a#33#1#0: DatatypeType :: 
  { #_module.Fwd.FwdCons(a#33#0#0, a#33#1#0) } 
  DatatypeCtorId(#_module.Fwd.FwdCons(a#33#0#0, a#33#1#0))
     == ##_module.Fwd.FwdCons);
}

function _module.Fwd.FwdCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Fwd.FwdCons_q(d) } 
  _module.Fwd.FwdCons_q(d) <==> DatatypeCtorId(d) == ##_module.Fwd.FwdCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Fwd.FwdCons_q(d) } 
  _module.Fwd.FwdCons_q(d)
     ==> (exists a#34#0#0: int, a#34#1#0: DatatypeType :: 
      d == #_module.Fwd.FwdCons(a#34#0#0, a#34#1#0)));

// Constructor $Is
axiom (forall a#35#0#0: int, a#35#1#0: DatatypeType :: 
  { $Is(#_module.Fwd.FwdCons(a#35#0#0, a#35#1#0), Tclass._module.Fwd()) } 
  $Is(#_module.Fwd.FwdCons(a#35#0#0, a#35#1#0), Tclass._module.Fwd())
     <==> $Is(a#35#0#0, TInt) && $Is(a#35#1#0, Tclass._module.Fwd()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Fwd.k(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Fwd.FwdCons_q(d)
       && $IsAlloc(d, Tclass._module.Fwd(), $h)
     ==> $IsAlloc(_module.Fwd.k(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Fwd.w(d), Tclass._module.Fwd(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Fwd.FwdCons_q(d)
       && $IsAlloc(d, Tclass._module.Fwd(), $h)
     ==> $IsAlloc(_module.Fwd.w(d), Tclass._module.Fwd(), $h));

// Constructor literal
axiom (forall a#36#0#0: int, a#36#1#0: DatatypeType :: 
  { #_module.Fwd.FwdCons(LitInt(a#36#0#0), Lit(a#36#1#0)) } 
  #_module.Fwd.FwdCons(LitInt(a#36#0#0), Lit(a#36#1#0))
     == Lit(#_module.Fwd.FwdCons(a#36#0#0, a#36#1#0)));

function _module.Fwd.k(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#37#0#0: int, a#37#1#0: DatatypeType :: 
  { #_module.Fwd.FwdCons(a#37#0#0, a#37#1#0) } 
  _module.Fwd.k(#_module.Fwd.FwdCons(a#37#0#0, a#37#1#0)) == a#37#0#0);

function _module.Fwd.w(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#38#0#0: int, a#38#1#0: DatatypeType :: 
  { #_module.Fwd.FwdCons(a#38#0#0, a#38#1#0) } 
  _module.Fwd.w(#_module.Fwd.FwdCons(a#38#0#0, a#38#1#0)) == a#38#1#0);

// Inductive rank
axiom (forall a#39#0#0: int, a#39#1#0: DatatypeType :: 
  { #_module.Fwd.FwdCons(a#39#0#0, a#39#1#0) } 
  DtRank(a#39#1#0) < DtRank(#_module.Fwd.FwdCons(a#39#0#0, a#39#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Fwd(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Fwd())
     ==> $IsAlloc(d, Tclass._module.Fwd(), $h));

// Depth-one case-split function
function $IsA#_module.Fwd(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Fwd(d) } 
  $IsA#_module.Fwd(d) ==> _module.Fwd.FwdNil_q(d) || _module.Fwd.FwdCons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Fwd.FwdCons_q(d), $Is(d, Tclass._module.Fwd()) } 
    { _module.Fwd.FwdNil_q(d), $Is(d, Tclass._module.Fwd()) } 
  $Is(d, Tclass._module.Fwd())
     ==> _module.Fwd.FwdNil_q(d) || _module.Fwd.FwdCons_q(d));

// Datatype extensional equality declaration
function _module.Fwd#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Fwd.FwdNil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Fwd#Equal(a, b), _module.Fwd.FwdNil_q(a) } 
    { _module.Fwd#Equal(a, b), _module.Fwd.FwdNil_q(b) } 
  _module.Fwd.FwdNil_q(a) && _module.Fwd.FwdNil_q(b) ==> _module.Fwd#Equal(a, b));

// Datatype extensional equality definition: #_module.Fwd.FwdCons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Fwd#Equal(a, b), _module.Fwd.FwdCons_q(a) } 
    { _module.Fwd#Equal(a, b), _module.Fwd.FwdCons_q(b) } 
  _module.Fwd.FwdCons_q(a) && _module.Fwd.FwdCons_q(b)
     ==> (_module.Fwd#Equal(a, b)
       <==> _module.Fwd.k(a) == _module.Fwd.k(b)
         && _module.Fwd#Equal(_module.Fwd.w(a), _module.Fwd.w(b))));

// Datatype extensionality axiom: _module.Fwd
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Fwd#Equal(a, b) } 
  _module.Fwd#Equal(a, b) <==> a == b);

const unique class._module.Fwd: ClassName;

const unique class._module.ContainsFwd?: ClassName;

function Tclass._module.ContainsFwd?() : Ty
uses {
// Tclass._module.ContainsFwd? Tag
axiom Tag(Tclass._module.ContainsFwd?()) == Tagclass._module.ContainsFwd?
   && TagFamily(Tclass._module.ContainsFwd?()) == tytagFamily$ContainsFwd;
}

const unique Tagclass._module.ContainsFwd?: TyTag;

// Box/unbox axiom for Tclass._module.ContainsFwd?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ContainsFwd?()) } 
  $IsBox(bx, Tclass._module.ContainsFwd?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ContainsFwd?()));

// $Is axiom for class ContainsFwd
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ContainsFwd?()) } 
  $Is($o, Tclass._module.ContainsFwd?())
     <==> $o == null || dtype($o) == Tclass._module.ContainsFwd?());

// $IsAlloc axiom for class ContainsFwd
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ContainsFwd?(), $h) } 
  $IsAlloc($o, Tclass._module.ContainsFwd?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.ContainsFwd.fwd: Field
uses {
axiom FDim(_module.ContainsFwd.fwd) == 0
   && FieldOfDecl(class._module.ContainsFwd?, field$fwd) == _module.ContainsFwd.fwd
   && !$IsGhostField(_module.ContainsFwd.fwd);
}

// ContainsFwd.fwd: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ContainsFwd.fwd)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ContainsFwd?()
     ==> $Is($Unbox(read($h, $o, _module.ContainsFwd.fwd)): DatatypeType, 
      Tclass._module.Fwd()));

// ContainsFwd.fwd: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ContainsFwd.fwd)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ContainsFwd?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ContainsFwd.fwd)): DatatypeType, 
      Tclass._module.Fwd(), 
      $h));

function Tclass._module.ContainsFwd() : Ty
uses {
// Tclass._module.ContainsFwd Tag
axiom Tag(Tclass._module.ContainsFwd()) == Tagclass._module.ContainsFwd
   && TagFamily(Tclass._module.ContainsFwd()) == tytagFamily$ContainsFwd;
}

const unique Tagclass._module.ContainsFwd: TyTag;

// Box/unbox axiom for Tclass._module.ContainsFwd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ContainsFwd()) } 
  $IsBox(bx, Tclass._module.ContainsFwd())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ContainsFwd()));

procedure {:verboseName "ContainsFwd.TestCases (well-formedness)"} CheckWellFormed$$_module.ContainsFwd.TestCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ContainsFwd())
         && $IsAlloc(this, Tclass._module.ContainsFwd(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContainsFwd.TestCases (call)"} Call$$_module.ContainsFwd.TestCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ContainsFwd())
         && $IsAlloc(this, Tclass._module.ContainsFwd(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContainsFwd.TestCases (correctness)"} Impl$$_module.ContainsFwd.TestCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ContainsFwd())
         && $IsAlloc(this, Tclass._module.ContainsFwd(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContainsFwd.TestCases (correctness)"} Impl$$_module.ContainsFwd.TestCases(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestCases, Impl$$_module.ContainsFwd.TestCases
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Datatypes.dfy(270,5)
    if (!_module.Fwd.FwdNil_q($Unbox(read($Heap, this, _module.ContainsFwd.fwd)): DatatypeType))
    {
    }

    assume true;
    assert {:id "id394"} _module.Fwd.FwdNil_q($Unbox(read($Heap, this, _module.ContainsFwd.fwd)): DatatypeType)
       || _module.Fwd.FwdCons_q($Unbox(read($Heap, this, _module.ContainsFwd.fwd)): DatatypeType);
}



// $Is axiom for non-null type _module.ContainsFwd
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ContainsFwd()) } 
    { $Is(c#0, Tclass._module.ContainsFwd?()) } 
  $Is(c#0, Tclass._module.ContainsFwd())
     <==> $Is(c#0, Tclass._module.ContainsFwd?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ContainsFwd
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ContainsFwd(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ContainsFwd?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ContainsFwd(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ContainsFwd?(), $h));

const unique class.MatchExpressionsInArbitraryPositions.__default: ClassName;

// function declaration for MatchExpressionsInArbitraryPositions._default.F
function MatchExpressionsInArbitraryPositions.__default.F(xs#0: DatatypeType, ys#0: DatatypeType) : int;

function MatchExpressionsInArbitraryPositions.__default.F#canCall(xs#0: DatatypeType, ys#0: DatatypeType) : bool;

function Tclass.MatchExpressionsInArbitraryPositions.List(Ty) : Ty;

const unique Tagclass.MatchExpressionsInArbitraryPositions.List: TyTag;

// Tclass.MatchExpressionsInArbitraryPositions.List Tag
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty :: 
  { Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T) } 
  Tag(Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T))
       == Tagclass.MatchExpressionsInArbitraryPositions.List
     && TagFamily(Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T))
       == tytagFamily$List);

function Tclass.MatchExpressionsInArbitraryPositions.List_0(Ty) : Ty;

// Tclass.MatchExpressionsInArbitraryPositions.List injectivity 0
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty :: 
  { Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T) } 
  Tclass.MatchExpressionsInArbitraryPositions.List_0(Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T))
     == MatchExpressionsInArbitraryPositions.List$T);

// Box/unbox axiom for Tclass.MatchExpressionsInArbitraryPositions.List
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)) } 
  $IsBox(bx, 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)));

function MatchExpressionsInArbitraryPositions.__default.F#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for MatchExpressionsInArbitraryPositions.__default.F
axiom (forall xs#0: DatatypeType, ys#0: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.__default.F#requires(xs#0, ys#0) } 
  $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
       && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.F#requires(xs#0, ys#0) == true);

// definition axiom for MatchExpressionsInArbitraryPositions.__default.F (revealed)
axiom {:id "id395"} (forall xs#0: DatatypeType, ys#0: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.__default.F(xs#0, ys#0) } 
  MatchExpressionsInArbitraryPositions.__default.F#canCall(xs#0, ys#0)
       || ($Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
         && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt)))
     ==> MatchExpressionsInArbitraryPositions.__default.F(xs#0, ys#0)
       == (if MatchExpressionsInArbitraryPositions.List.Nil_q(xs#0)
         then (if MatchExpressionsInArbitraryPositions.List.Nil_q(ys#0)
           then 0
           else (var y#8 := $Unbox(MatchExpressionsInArbitraryPositions.List.head(ys#0)): int; 
            y#8))
         else (var x#4 := $Unbox(MatchExpressionsInArbitraryPositions.List.head(xs#0)): int; 
          (if MatchExpressionsInArbitraryPositions.List.Nil_q(ys#0)
             then x#4
             else (var y#9 := $Unbox(MatchExpressionsInArbitraryPositions.List.head(ys#0)): int; 
              x#4 + y#9)))));

// definition axiom for MatchExpressionsInArbitraryPositions.__default.F for all literals (revealed)
axiom {:id "id396"} (forall xs#0: DatatypeType, ys#0: DatatypeType :: 
  {:weight 3} { MatchExpressionsInArbitraryPositions.__default.F(Lit(xs#0), Lit(ys#0)) } 
  MatchExpressionsInArbitraryPositions.__default.F#canCall(Lit(xs#0), Lit(ys#0))
       || ($Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
         && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt)))
     ==> MatchExpressionsInArbitraryPositions.__default.F(Lit(xs#0), Lit(ys#0))
       == (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(xs#0))
         then (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(ys#0))
           then 0
           else (var y#12 := LitInt($Unbox(MatchExpressionsInArbitraryPositions.List.head(Lit(ys#0))): int); 
            y#12))
         else (var x#6 := LitInt($Unbox(MatchExpressionsInArbitraryPositions.List.head(Lit(xs#0))): int); 
          (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(ys#0))
             then x#6
             else (var y#13 := LitInt($Unbox(MatchExpressionsInArbitraryPositions.List.head(Lit(ys#0))): int); 
              LitInt(x#6 + y#13))))));

// function declaration for MatchExpressionsInArbitraryPositions._default.G
function MatchExpressionsInArbitraryPositions.__default.G(xs#0: DatatypeType, ys#0: DatatypeType, k#0: int) : int;

function MatchExpressionsInArbitraryPositions.__default.G#canCall(xs#0: DatatypeType, ys#0: DatatypeType, k#0: int) : bool;

function MatchExpressionsInArbitraryPositions.__default.G#requires(DatatypeType, DatatypeType, int) : bool;

// #requires axiom for MatchExpressionsInArbitraryPositions.__default.G
axiom (forall xs#0: DatatypeType, ys#0: DatatypeType, k#0: int :: 
  { MatchExpressionsInArbitraryPositions.__default.G#requires(xs#0, ys#0, k#0) } 
  $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
       && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.G#requires(xs#0, ys#0, k#0)
       == true);

// definition axiom for MatchExpressionsInArbitraryPositions.__default.G (revealed)
axiom {:id "id397"} (forall xs#0: DatatypeType, ys#0: DatatypeType, k#0: int :: 
  { MatchExpressionsInArbitraryPositions.__default.G(xs#0, ys#0, k#0) } 
  MatchExpressionsInArbitraryPositions.__default.G#canCall(xs#0, ys#0, k#0)
       || ($Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
         && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt)))
     ==> MatchExpressionsInArbitraryPositions.__default.G(xs#0, ys#0, k#0)
       == (if MatchExpressionsInArbitraryPositions.List.Nil_q(xs#0)
         then (if k#0 == LitInt(0)
           then 3
           else (if MatchExpressionsInArbitraryPositions.List.Nil_q(ys#0)
             then 3
             else (var y#8 := $Unbox(MatchExpressionsInArbitraryPositions.List.head(ys#0)): int; 
              3 + y#8)))
         else (var x#4 := $Unbox(MatchExpressionsInArbitraryPositions.List.head(xs#0)): int; 
          (if k#0 == LitInt(0)
             then 3
             else (if MatchExpressionsInArbitraryPositions.List.Nil_q(ys#0)
               then x#4
               else (var y#9 := $Unbox(MatchExpressionsInArbitraryPositions.List.head(ys#0)): int; 
                x#4 + y#9))))));

// definition axiom for MatchExpressionsInArbitraryPositions.__default.G for all literals (revealed)
axiom {:id "id398"} (forall xs#0: DatatypeType, ys#0: DatatypeType, k#0: int :: 
  {:weight 3} { MatchExpressionsInArbitraryPositions.__default.G(Lit(xs#0), Lit(ys#0), LitInt(k#0)) } 
  MatchExpressionsInArbitraryPositions.__default.G#canCall(Lit(xs#0), Lit(ys#0), LitInt(k#0))
       || ($Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
         && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt)))
     ==> MatchExpressionsInArbitraryPositions.__default.G(Lit(xs#0), Lit(ys#0), LitInt(k#0))
       == (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(xs#0))
         then (if LitInt(k#0) == LitInt(0)
           then 3
           else (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(ys#0))
             then 3
             else (var y#12 := LitInt($Unbox(MatchExpressionsInArbitraryPositions.List.head(Lit(ys#0))): int); 
              LitInt(3 + y#12))))
         else (var x#6 := LitInt($Unbox(MatchExpressionsInArbitraryPositions.List.head(Lit(xs#0))): int); 
          (if LitInt(k#0) == LitInt(0)
             then 3
             else (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(ys#0))
               then x#6
               else (var y#13 := LitInt($Unbox(MatchExpressionsInArbitraryPositions.List.head(Lit(ys#0))): int); 
                LitInt(x#6 + y#13)))))));

// function declaration for MatchExpressionsInArbitraryPositions._default.H
function MatchExpressionsInArbitraryPositions.__default.H(xs#0: DatatypeType, ys#0: DatatypeType, k#0: int) : int;

function MatchExpressionsInArbitraryPositions.__default.H#canCall(xs#0: DatatypeType, ys#0: DatatypeType, k#0: int) : bool;

function MatchExpressionsInArbitraryPositions.__default.H#requires(DatatypeType, DatatypeType, int) : bool;

// #requires axiom for MatchExpressionsInArbitraryPositions.__default.H
axiom (forall xs#0: DatatypeType, ys#0: DatatypeType, k#0: int :: 
  { MatchExpressionsInArbitraryPositions.__default.H#requires(xs#0, ys#0, k#0) } 
  $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
       && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.H#requires(xs#0, ys#0, k#0)
       == true);

// definition axiom for MatchExpressionsInArbitraryPositions.__default.H (revealed)
axiom {:id "id399"} (forall xs#0: DatatypeType, ys#0: DatatypeType, k#0: int :: 
  { MatchExpressionsInArbitraryPositions.__default.H(xs#0, ys#0, k#0) } 
  MatchExpressionsInArbitraryPositions.__default.H#canCall(xs#0, ys#0, k#0)
       || ($Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
         && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt)))
     ==> MatchExpressionsInArbitraryPositions.__default.H(xs#0, ys#0, k#0)
       == (if LitInt(0) <= k#0
         then (if k#0 < 10 then 0 else 3) + (if k#0 < 100 then 2 else 5)
         else (if k#0 < -17
           then 10
           else (if k#0 < -110 then 0 else 3) + (if k#0 < -200 then 2 else 5))));

// definition axiom for MatchExpressionsInArbitraryPositions.__default.H for all literals (revealed)
axiom {:id "id400"} (forall xs#0: DatatypeType, ys#0: DatatypeType, k#0: int :: 
  {:weight 3} { MatchExpressionsInArbitraryPositions.__default.H(Lit(xs#0), Lit(ys#0), LitInt(k#0)) } 
  MatchExpressionsInArbitraryPositions.__default.H#canCall(Lit(xs#0), Lit(ys#0), LitInt(k#0))
       || ($Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
         && $Is(ys#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt)))
     ==> MatchExpressionsInArbitraryPositions.__default.H(Lit(xs#0), Lit(ys#0), LitInt(k#0))
       == (if LitInt(0) <= LitInt(k#0)
         then (if k#0 < 10 then 0 else 3) + (if k#0 < 100 then 2 else 5)
         else (if k#0 < -17
           then 10
           else (if k#0 < -110 then 0 else 3) + (if k#0 < -200 then 2 else 5))));

// function declaration for MatchExpressionsInArbitraryPositions._default.J
function MatchExpressionsInArbitraryPositions.__default.J(xs#0: DatatypeType) : int;

function MatchExpressionsInArbitraryPositions.__default.J#canCall(xs#0: DatatypeType) : bool;

function MatchExpressionsInArbitraryPositions.__default.J#requires(DatatypeType) : bool;

// #requires axiom for MatchExpressionsInArbitraryPositions.__default.J
axiom (forall xs#0: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.__default.J#requires(xs#0) } 
  $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.J#requires(xs#0) == true);

// definition axiom for MatchExpressionsInArbitraryPositions.__default.J (revealed)
axiom {:id "id401"} (forall xs#0: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.__default.J(xs#0) } 
  MatchExpressionsInArbitraryPositions.__default.J#canCall(xs#0)
       || $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.J(xs#0)
       == $Unbox($ArbitraryBoxValue): int);

// definition axiom for MatchExpressionsInArbitraryPositions.__default.J for all literals (revealed)
axiom {:id "id402"} (forall xs#0: DatatypeType :: 
  {:weight 3} { MatchExpressionsInArbitraryPositions.__default.J(Lit(xs#0)) } 
  MatchExpressionsInArbitraryPositions.__default.J#canCall(Lit(xs#0))
       || $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.J(Lit(xs#0))
       == $Unbox($ArbitraryBoxValue): int);

// function declaration for MatchExpressionsInArbitraryPositions._default.K
function MatchExpressionsInArbitraryPositions.__default.K(xs#0: DatatypeType) : int;

function MatchExpressionsInArbitraryPositions.__default.K#canCall(xs#0: DatatypeType) : bool;

function MatchExpressionsInArbitraryPositions.__default.K#requires(DatatypeType) : bool;

// #requires axiom for MatchExpressionsInArbitraryPositions.__default.K
axiom (forall xs#0: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.__default.K#requires(xs#0) } 
  $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.K#requires(xs#0) == true);

// definition axiom for MatchExpressionsInArbitraryPositions.__default.K (revealed)
axiom {:id "id403"} (forall xs#0: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.__default.K(xs#0) } 
  MatchExpressionsInArbitraryPositions.__default.K#canCall(xs#0)
       || $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.K(xs#0)
       == (if MatchExpressionsInArbitraryPositions.List.Nil_q(xs#0)
         then 0
         else (var ys#4 := MatchExpressionsInArbitraryPositions.List.tail(xs#0); 
          $Unbox($ArbitraryBoxValue): int)));

// definition axiom for MatchExpressionsInArbitraryPositions.__default.K for all literals (revealed)
axiom {:id "id404"} (forall xs#0: DatatypeType :: 
  {:weight 3} { MatchExpressionsInArbitraryPositions.__default.K(Lit(xs#0)) } 
  MatchExpressionsInArbitraryPositions.__default.K#canCall(Lit(xs#0))
       || $Is(xs#0, Tclass.MatchExpressionsInArbitraryPositions.List(TInt))
     ==> MatchExpressionsInArbitraryPositions.__default.K(Lit(xs#0))
       == (if MatchExpressionsInArbitraryPositions.List.Nil_q(Lit(xs#0))
         then 0
         else (var ys#6 := Lit(MatchExpressionsInArbitraryPositions.List.tail(Lit(xs#0))); 
          $Unbox($ArbitraryBoxValue): int)));

// Constructor function declaration
function #MatchExpressionsInArbitraryPositions.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressionsInArbitraryPositions.List.Nil())
   == ##MatchExpressionsInArbitraryPositions.List.Nil;
// Constructor literal
axiom #MatchExpressionsInArbitraryPositions.List.Nil()
   == Lit(#MatchExpressionsInArbitraryPositions.List.Nil());
}

const unique ##MatchExpressionsInArbitraryPositions.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressionsInArbitraryPositions.List.Nil())
   == ##MatchExpressionsInArbitraryPositions.List.Nil;
}

function MatchExpressionsInArbitraryPositions.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List.Nil_q(d) } 
  MatchExpressionsInArbitraryPositions.List.Nil_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressionsInArbitraryPositions.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List.Nil_q(d) } 
  MatchExpressionsInArbitraryPositions.List.Nil_q(d)
     ==> d == #MatchExpressionsInArbitraryPositions.List.Nil());

// Constructor $Is
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty :: 
  { $Is(#MatchExpressionsInArbitraryPositions.List.Nil(), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)) } 
  $Is(#MatchExpressionsInArbitraryPositions.List.Nil(), 
    Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)));

// Constructor $IsAlloc
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#MatchExpressionsInArbitraryPositions.List.Nil(), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#MatchExpressionsInArbitraryPositions.List.Nil(), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
      $h));

// Constructor function declaration
function #MatchExpressionsInArbitraryPositions.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##MatchExpressionsInArbitraryPositions.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#MatchExpressionsInArbitraryPositions.List.Cons(a#4#0#0, a#4#1#0))
     == ##MatchExpressionsInArbitraryPositions.List.Cons);
}

function MatchExpressionsInArbitraryPositions.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List.Cons_q(d) } 
  MatchExpressionsInArbitraryPositions.List.Cons_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressionsInArbitraryPositions.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List.Cons_q(d) } 
  MatchExpressionsInArbitraryPositions.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #MatchExpressionsInArbitraryPositions.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty, 
    a#6#0#0: Box, 
    a#6#1#0: DatatypeType :: 
  { $Is(#MatchExpressionsInArbitraryPositions.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)) } 
  $Is(#MatchExpressionsInArbitraryPositions.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T))
     <==> $IsBox(a#6#0#0, MatchExpressionsInArbitraryPositions.List$T)
       && $Is(a#6#1#0, 
        Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)));

// Constructor $IsAlloc
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty, 
    a#6#0#0: Box, 
    a#6#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#MatchExpressionsInArbitraryPositions.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MatchExpressionsInArbitraryPositions.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, MatchExpressionsInArbitraryPositions.List$T, $h)
         && $IsAlloc(a#6#1#0, 
          Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MatchExpressionsInArbitraryPositions.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(MatchExpressionsInArbitraryPositions.List.head(d), 
      MatchExpressionsInArbitraryPositions.List$T, 
      $h) } 
  $IsGoodHeap($h)
       && 
      MatchExpressionsInArbitraryPositions.List.Cons_q(d)
       && $IsAlloc(d, 
        Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
        $h)
     ==> $IsAllocBox(MatchExpressionsInArbitraryPositions.List.head(d), 
      MatchExpressionsInArbitraryPositions.List$T, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MatchExpressionsInArbitraryPositions.List$T: Ty, $h: Heap :: 
  { $IsAlloc(MatchExpressionsInArbitraryPositions.List.tail(d), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      MatchExpressionsInArbitraryPositions.List.Cons_q(d)
       && $IsAlloc(d, 
        Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
        $h)
     ==> $IsAlloc(MatchExpressionsInArbitraryPositions.List.tail(d), 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T), 
      $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #MatchExpressionsInArbitraryPositions.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#MatchExpressionsInArbitraryPositions.List.Cons(a#7#0#0, a#7#1#0)));

function MatchExpressionsInArbitraryPositions.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.List.Cons(a#8#0#0, a#8#1#0) } 
  MatchExpressionsInArbitraryPositions.List.head(#MatchExpressionsInArbitraryPositions.List.Cons(a#8#0#0, a#8#1#0))
     == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0)
     < DtRank(#MatchExpressionsInArbitraryPositions.List.Cons(a#9#0#0, a#9#1#0)));

function MatchExpressionsInArbitraryPositions.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.List.Cons(a#10#0#0, a#10#1#0) } 
  MatchExpressionsInArbitraryPositions.List.tail(#MatchExpressionsInArbitraryPositions.List.Cons(a#10#0#0, a#10#1#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0)
     < DtRank(#MatchExpressionsInArbitraryPositions.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#MatchExpressionsInArbitraryPositions.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchExpressionsInArbitraryPositions.List(d) } 
  $IsA#MatchExpressionsInArbitraryPositions.List(d)
     ==> MatchExpressionsInArbitraryPositions.List.Nil_q(d)
       || MatchExpressionsInArbitraryPositions.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall MatchExpressionsInArbitraryPositions.List$T: Ty, d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List.Cons_q(d), $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)) } 
    { MatchExpressionsInArbitraryPositions.List.Nil_q(d), $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T)) } 
  $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.List(MatchExpressionsInArbitraryPositions.List$T))
     ==> MatchExpressionsInArbitraryPositions.List.Nil_q(d)
       || MatchExpressionsInArbitraryPositions.List.Cons_q(d));

// Datatype extensional equality declaration
function MatchExpressionsInArbitraryPositions.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchExpressionsInArbitraryPositions.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List#Equal(a, b), MatchExpressionsInArbitraryPositions.List.Nil_q(a) } 
    { MatchExpressionsInArbitraryPositions.List#Equal(a, b), MatchExpressionsInArbitraryPositions.List.Nil_q(b) } 
  MatchExpressionsInArbitraryPositions.List.Nil_q(a)
       && MatchExpressionsInArbitraryPositions.List.Nil_q(b)
     ==> MatchExpressionsInArbitraryPositions.List#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressionsInArbitraryPositions.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List#Equal(a, b), MatchExpressionsInArbitraryPositions.List.Cons_q(a) } 
    { MatchExpressionsInArbitraryPositions.List#Equal(a, b), MatchExpressionsInArbitraryPositions.List.Cons_q(b) } 
  MatchExpressionsInArbitraryPositions.List.Cons_q(a)
       && MatchExpressionsInArbitraryPositions.List.Cons_q(b)
     ==> (MatchExpressionsInArbitraryPositions.List#Equal(a, b)
       <==> MatchExpressionsInArbitraryPositions.List.head(a)
           == MatchExpressionsInArbitraryPositions.List.head(b)
         && MatchExpressionsInArbitraryPositions.List#Equal(MatchExpressionsInArbitraryPositions.List.tail(a), 
          MatchExpressionsInArbitraryPositions.List.tail(b))));

// Datatype extensionality axiom: MatchExpressionsInArbitraryPositions.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.List#Equal(a, b) } 
  MatchExpressionsInArbitraryPositions.List#Equal(a, b) <==> a == b);

const unique class.MatchExpressionsInArbitraryPositions.List: ClassName;

// Constructor function declaration
function #MatchExpressionsInArbitraryPositions.AList.ANil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressionsInArbitraryPositions.AList.ANil())
   == ##MatchExpressionsInArbitraryPositions.AList.ANil;
// Constructor literal
axiom #MatchExpressionsInArbitraryPositions.AList.ANil()
   == Lit(#MatchExpressionsInArbitraryPositions.AList.ANil());
}

const unique ##MatchExpressionsInArbitraryPositions.AList.ANil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressionsInArbitraryPositions.AList.ANil())
   == ##MatchExpressionsInArbitraryPositions.AList.ANil;
}

function MatchExpressionsInArbitraryPositions.AList.ANil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.ANil_q(d) } 
  MatchExpressionsInArbitraryPositions.AList.ANil_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressionsInArbitraryPositions.AList.ANil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.ANil_q(d) } 
  MatchExpressionsInArbitraryPositions.AList.ANil_q(d)
     ==> d == #MatchExpressionsInArbitraryPositions.AList.ANil());

function Tclass.MatchExpressionsInArbitraryPositions.AList(Ty) : Ty;

const unique Tagclass.MatchExpressionsInArbitraryPositions.AList: TyTag;

// Tclass.MatchExpressionsInArbitraryPositions.AList Tag
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty :: 
  { Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T) } 
  Tag(Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
       == Tagclass.MatchExpressionsInArbitraryPositions.AList
     && TagFamily(Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
       == tytagFamily$AList);

function Tclass.MatchExpressionsInArbitraryPositions.AList_0(Ty) : Ty;

// Tclass.MatchExpressionsInArbitraryPositions.AList injectivity 0
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty :: 
  { Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T) } 
  Tclass.MatchExpressionsInArbitraryPositions.AList_0(Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
     == MatchExpressionsInArbitraryPositions.AList$T);

// Box/unbox axiom for Tclass.MatchExpressionsInArbitraryPositions.AList
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
  $IsBox(bx, 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)));

// Constructor $Is
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty :: 
  { $Is(#MatchExpressionsInArbitraryPositions.AList.ANil(), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
  $Is(#MatchExpressionsInArbitraryPositions.AList.ANil(), 
    Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)));

// Constructor $IsAlloc
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, $h: Heap :: 
  { $IsAlloc(#MatchExpressionsInArbitraryPositions.AList.ANil(), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#MatchExpressionsInArbitraryPositions.AList.ANil(), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
      $h));

// Constructor function declaration
function #MatchExpressionsInArbitraryPositions.AList.ACons(Box, DatatypeType) : DatatypeType;

const unique ##MatchExpressionsInArbitraryPositions.AList.ACons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: Box, a#16#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.AList.ACons(a#16#0#0, a#16#1#0) } 
  DatatypeCtorId(#MatchExpressionsInArbitraryPositions.AList.ACons(a#16#0#0, a#16#1#0))
     == ##MatchExpressionsInArbitraryPositions.AList.ACons);
}

function MatchExpressionsInArbitraryPositions.AList.ACons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.ACons_q(d) } 
  MatchExpressionsInArbitraryPositions.AList.ACons_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressionsInArbitraryPositions.AList.ACons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.ACons_q(d) } 
  MatchExpressionsInArbitraryPositions.AList.ACons_q(d)
     ==> (exists a#17#0#0: Box, a#17#1#0: DatatypeType :: 
      d == #MatchExpressionsInArbitraryPositions.AList.ACons(a#17#0#0, a#17#1#0)));

// Constructor $Is
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, 
    a#18#0#0: Box, 
    a#18#1#0: DatatypeType :: 
  { $Is(#MatchExpressionsInArbitraryPositions.AList.ACons(a#18#0#0, a#18#1#0), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
  $Is(#MatchExpressionsInArbitraryPositions.AList.ACons(a#18#0#0, a#18#1#0), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
     <==> $IsBox(a#18#0#0, MatchExpressionsInArbitraryPositions.AList$T)
       && $Is(a#18#1#0, 
        Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)));

// Constructor $IsAlloc
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, 
    a#18#0#0: Box, 
    a#18#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#MatchExpressionsInArbitraryPositions.AList.ACons(a#18#0#0, a#18#1#0), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MatchExpressionsInArbitraryPositions.AList.ACons(a#18#0#0, a#18#1#0), 
        Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
        $h)
       <==> $IsAllocBox(a#18#0#0, MatchExpressionsInArbitraryPositions.AList$T, $h)
         && $IsAlloc(a#18#1#0, 
          Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MatchExpressionsInArbitraryPositions.AList$T: Ty, $h: Heap :: 
  { $IsAllocBox(MatchExpressionsInArbitraryPositions.AList.head(d), 
      MatchExpressionsInArbitraryPositions.AList$T, 
      $h) } 
  $IsGoodHeap($h)
       && 
      MatchExpressionsInArbitraryPositions.AList.ACons_q(d)
       && $IsAlloc(d, 
        Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
        $h)
     ==> $IsAllocBox(MatchExpressionsInArbitraryPositions.AList.head(d), 
      MatchExpressionsInArbitraryPositions.AList$T, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MatchExpressionsInArbitraryPositions.AList$T: Ty, $h: Heap :: 
  { $IsAlloc(MatchExpressionsInArbitraryPositions.AList.tail(d), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      MatchExpressionsInArbitraryPositions.AList.ACons_q(d)
       && $IsAlloc(d, 
        Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
        $h)
     ==> $IsAlloc(MatchExpressionsInArbitraryPositions.AList.tail(d), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
      $h));

// Constructor literal
axiom (forall a#19#0#0: Box, a#19#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.AList.ACons(Lit(a#19#0#0), Lit(a#19#1#0)) } 
  #MatchExpressionsInArbitraryPositions.AList.ACons(Lit(a#19#0#0), Lit(a#19#1#0))
     == Lit(#MatchExpressionsInArbitraryPositions.AList.ACons(a#19#0#0, a#19#1#0)));

function MatchExpressionsInArbitraryPositions.AList.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.AList.ACons(a#20#0#0, a#20#1#0) } 
  MatchExpressionsInArbitraryPositions.AList.head(#MatchExpressionsInArbitraryPositions.AList.ACons(a#20#0#0, a#20#1#0))
     == a#20#0#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.AList.ACons(a#21#0#0, a#21#1#0) } 
  BoxRank(a#21#0#0)
     < DtRank(#MatchExpressionsInArbitraryPositions.AList.ACons(a#21#0#0, a#21#1#0)));

function MatchExpressionsInArbitraryPositions.AList.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#22#0#0: Box, a#22#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.AList.ACons(a#22#0#0, a#22#1#0) } 
  MatchExpressionsInArbitraryPositions.AList.tail(#MatchExpressionsInArbitraryPositions.AList.ACons(a#22#0#0, a#22#1#0))
     == a#22#1#0);

// Inductive rank
axiom (forall a#23#0#0: Box, a#23#1#0: DatatypeType :: 
  { #MatchExpressionsInArbitraryPositions.AList.ACons(a#23#0#0, a#23#1#0) } 
  DtRank(a#23#1#0)
     < DtRank(#MatchExpressionsInArbitraryPositions.AList.ACons(a#23#0#0, a#23#1#0)));

// Constructor function declaration
function #MatchExpressionsInArbitraryPositions.AList.Appendix(bool) : DatatypeType;

const unique ##MatchExpressionsInArbitraryPositions.AList.Appendix: DtCtorId
uses {
// Constructor identifier
axiom (forall a#24#0#0: bool :: 
  { #MatchExpressionsInArbitraryPositions.AList.Appendix(a#24#0#0) } 
  DatatypeCtorId(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#24#0#0))
     == ##MatchExpressionsInArbitraryPositions.AList.Appendix);
}

function MatchExpressionsInArbitraryPositions.AList.Appendix_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.Appendix_q(d) } 
  MatchExpressionsInArbitraryPositions.AList.Appendix_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressionsInArbitraryPositions.AList.Appendix);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.Appendix_q(d) } 
  MatchExpressionsInArbitraryPositions.AList.Appendix_q(d)
     ==> (exists a#25#0#0: bool :: 
      d == #MatchExpressionsInArbitraryPositions.AList.Appendix(a#25#0#0)));

// Constructor $Is
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, a#26#0#0: bool :: 
  { $Is(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#26#0#0), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
  $Is(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#26#0#0), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
     <==> $Is(a#26#0#0, TBool));

// Constructor $IsAlloc
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, a#26#0#0: bool, $h: Heap :: 
  { $IsAlloc(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#26#0#0), 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#26#0#0), 
        Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
        $h)
       <==> $IsAlloc(a#26#0#0, TBool, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MatchExpressionsInArbitraryPositions.AList.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      MatchExpressionsInArbitraryPositions.AList.Appendix_q(d)
       && (exists MatchExpressionsInArbitraryPositions.AList$T: Ty :: 
        { $IsAlloc(d, 
            Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
            $h) } 
        $IsAlloc(d, 
          Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T), 
          $h))
     ==> $IsAlloc(MatchExpressionsInArbitraryPositions.AList.b(d), TBool, $h));

// Constructor literal
axiom (forall a#27#0#0: bool :: 
  { #MatchExpressionsInArbitraryPositions.AList.Appendix(Lit(a#27#0#0)) } 
  #MatchExpressionsInArbitraryPositions.AList.Appendix(Lit(a#27#0#0))
     == Lit(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#27#0#0)));

function MatchExpressionsInArbitraryPositions.AList.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#28#0#0: bool :: 
  { #MatchExpressionsInArbitraryPositions.AList.Appendix(a#28#0#0) } 
  MatchExpressionsInArbitraryPositions.AList.b(#MatchExpressionsInArbitraryPositions.AList.Appendix(a#28#0#0))
     == a#28#0#0);

// Depth-one case-split function
function $IsA#MatchExpressionsInArbitraryPositions.AList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchExpressionsInArbitraryPositions.AList(d) } 
  $IsA#MatchExpressionsInArbitraryPositions.AList(d)
     ==> MatchExpressionsInArbitraryPositions.AList.ANil_q(d)
       || MatchExpressionsInArbitraryPositions.AList.ACons_q(d)
       || MatchExpressionsInArbitraryPositions.AList.Appendix_q(d));

// Questionmark data type disjunctivity
axiom (forall MatchExpressionsInArbitraryPositions.AList$T: Ty, d: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList.Appendix_q(d), $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
    { MatchExpressionsInArbitraryPositions.AList.ACons_q(d), $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
    { MatchExpressionsInArbitraryPositions.AList.ANil_q(d), $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T)) } 
  $Is(d, 
      Tclass.MatchExpressionsInArbitraryPositions.AList(MatchExpressionsInArbitraryPositions.AList$T))
     ==> MatchExpressionsInArbitraryPositions.AList.ANil_q(d)
       || MatchExpressionsInArbitraryPositions.AList.ACons_q(d)
       || MatchExpressionsInArbitraryPositions.AList.Appendix_q(d));

// Datatype extensional equality declaration
function MatchExpressionsInArbitraryPositions.AList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchExpressionsInArbitraryPositions.AList.ANil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList#Equal(a, b), MatchExpressionsInArbitraryPositions.AList.ANil_q(a) } 
    { MatchExpressionsInArbitraryPositions.AList#Equal(a, b), MatchExpressionsInArbitraryPositions.AList.ANil_q(b) } 
  MatchExpressionsInArbitraryPositions.AList.ANil_q(a)
       && MatchExpressionsInArbitraryPositions.AList.ANil_q(b)
     ==> MatchExpressionsInArbitraryPositions.AList#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressionsInArbitraryPositions.AList.ACons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList#Equal(a, b), MatchExpressionsInArbitraryPositions.AList.ACons_q(a) } 
    { MatchExpressionsInArbitraryPositions.AList#Equal(a, b), MatchExpressionsInArbitraryPositions.AList.ACons_q(b) } 
  MatchExpressionsInArbitraryPositions.AList.ACons_q(a)
       && MatchExpressionsInArbitraryPositions.AList.ACons_q(b)
     ==> (MatchExpressionsInArbitraryPositions.AList#Equal(a, b)
       <==> MatchExpressionsInArbitraryPositions.AList.head(a)
           == MatchExpressionsInArbitraryPositions.AList.head(b)
         && MatchExpressionsInArbitraryPositions.AList#Equal(MatchExpressionsInArbitraryPositions.AList.tail(a), 
          MatchExpressionsInArbitraryPositions.AList.tail(b))));

// Datatype extensional equality definition: #MatchExpressionsInArbitraryPositions.AList.Appendix
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList#Equal(a, b), MatchExpressionsInArbitraryPositions.AList.Appendix_q(a) } 
    { MatchExpressionsInArbitraryPositions.AList#Equal(a, b), MatchExpressionsInArbitraryPositions.AList.Appendix_q(b) } 
  MatchExpressionsInArbitraryPositions.AList.Appendix_q(a)
       && MatchExpressionsInArbitraryPositions.AList.Appendix_q(b)
     ==> (MatchExpressionsInArbitraryPositions.AList#Equal(a, b)
       <==> MatchExpressionsInArbitraryPositions.AList.b(a)
         == MatchExpressionsInArbitraryPositions.AList.b(b)));

// Datatype extensionality axiom: MatchExpressionsInArbitraryPositions.AList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressionsInArbitraryPositions.AList#Equal(a, b) } 
  MatchExpressionsInArbitraryPositions.AList#Equal(a, b) <==> a == b);

const unique class.MatchExpressionsInArbitraryPositions.AList: ClassName;

const unique class.LetPatterns.__default: ClassName;

// function declaration for LetPatterns._default.M
function LetPatterns.__default.M(m#0: DatatypeType) : int;

function LetPatterns.__default.M#canCall(m#0: DatatypeType) : bool;

function Tclass.LetPatterns.MyDt() : Ty
uses {
// Tclass.LetPatterns.MyDt Tag
axiom Tag(Tclass.LetPatterns.MyDt()) == Tagclass.LetPatterns.MyDt
   && TagFamily(Tclass.LetPatterns.MyDt()) == tytagFamily$MyDt;
}

const unique Tagclass.LetPatterns.MyDt: TyTag;

// Box/unbox axiom for Tclass.LetPatterns.MyDt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.LetPatterns.MyDt()) } 
  $IsBox(bx, Tclass.LetPatterns.MyDt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.LetPatterns.MyDt()));

function LetPatterns.__default.M#requires(DatatypeType) : bool;

// #requires axiom for LetPatterns.__default.M
axiom (forall m#0: DatatypeType :: 
  { LetPatterns.__default.M#requires(m#0) } 
  $Is(m#0, Tclass.LetPatterns.MyDt())
     ==> LetPatterns.__default.M#requires(m#0) == LetPatterns.MyDt.AAA_q(m#0));

// definition axiom for LetPatterns.__default.M (revealed)
axiom {:id "id405"} (forall m#0: DatatypeType :: 
  { LetPatterns.__default.M(m#0) } 
  LetPatterns.__default.M#canCall(m#0)
       || ($Is(m#0, Tclass.LetPatterns.MyDt()) && LetPatterns.MyDt.AAA_q(m#0))
     ==> LetPatterns.__default.M(m#0) == (var u#2 := LetPatterns.MyDt.x(m#0); u#2));

// definition axiom for LetPatterns.__default.M for all literals (revealed)
axiom {:id "id406"} (forall m#0: DatatypeType :: 
  {:weight 3} { LetPatterns.__default.M(Lit(m#0)) } 
  LetPatterns.__default.M#canCall(Lit(m#0))
       || ($Is(m#0, Tclass.LetPatterns.MyDt()) && Lit(LetPatterns.MyDt.AAA_q(Lit(m#0))))
     ==> LetPatterns.__default.M(Lit(m#0))
       == (var u#3 := LetPatterns.MyDt.x(Lit(m#0)); u#3));

// Constructor function declaration
function #LetPatterns.MyDt.AAA(int) : DatatypeType;

const unique ##LetPatterns.MyDt.AAA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #LetPatterns.MyDt.AAA(a#0#0#0) } 
  DatatypeCtorId(#LetPatterns.MyDt.AAA(a#0#0#0)) == ##LetPatterns.MyDt.AAA);
}

function LetPatterns.MyDt.AAA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { LetPatterns.MyDt.AAA_q(d) } 
  LetPatterns.MyDt.AAA_q(d) <==> DatatypeCtorId(d) == ##LetPatterns.MyDt.AAA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { LetPatterns.MyDt.AAA_q(d) } 
  LetPatterns.MyDt.AAA_q(d)
     ==> (exists a#1#0#0: int :: d == #LetPatterns.MyDt.AAA(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#LetPatterns.MyDt.AAA(a#2#0#0), Tclass.LetPatterns.MyDt()) } 
  $Is(#LetPatterns.MyDt.AAA(a#2#0#0), Tclass.LetPatterns.MyDt())
     <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(LetPatterns.MyDt.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      LetPatterns.MyDt.AAA_q(d)
       && $IsAlloc(d, Tclass.LetPatterns.MyDt(), $h)
     ==> $IsAlloc(LetPatterns.MyDt.x(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #LetPatterns.MyDt.AAA(LitInt(a#3#0#0)) } 
  #LetPatterns.MyDt.AAA(LitInt(a#3#0#0)) == Lit(#LetPatterns.MyDt.AAA(a#3#0#0)));

function LetPatterns.MyDt.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #LetPatterns.MyDt.AAA(a#4#0#0) } 
  LetPatterns.MyDt.x(#LetPatterns.MyDt.AAA(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #LetPatterns.MyDt.BBB(int) : DatatypeType;

const unique ##LetPatterns.MyDt.BBB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: int :: 
  { #LetPatterns.MyDt.BBB(a#5#0#0) } 
  DatatypeCtorId(#LetPatterns.MyDt.BBB(a#5#0#0)) == ##LetPatterns.MyDt.BBB);
}

function LetPatterns.MyDt.BBB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { LetPatterns.MyDt.BBB_q(d) } 
  LetPatterns.MyDt.BBB_q(d) <==> DatatypeCtorId(d) == ##LetPatterns.MyDt.BBB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { LetPatterns.MyDt.BBB_q(d) } 
  LetPatterns.MyDt.BBB_q(d)
     ==> (exists a#6#0#0: int :: d == #LetPatterns.MyDt.BBB(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: int :: 
  { $Is(#LetPatterns.MyDt.BBB(a#7#0#0), Tclass.LetPatterns.MyDt()) } 
  $Is(#LetPatterns.MyDt.BBB(a#7#0#0), Tclass.LetPatterns.MyDt())
     <==> $Is(a#7#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(LetPatterns.MyDt.y(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      LetPatterns.MyDt.BBB_q(d)
       && $IsAlloc(d, Tclass.LetPatterns.MyDt(), $h)
     ==> $IsAlloc(LetPatterns.MyDt.y(d), TInt, $h));

// Constructor literal
axiom (forall a#8#0#0: int :: 
  { #LetPatterns.MyDt.BBB(LitInt(a#8#0#0)) } 
  #LetPatterns.MyDt.BBB(LitInt(a#8#0#0)) == Lit(#LetPatterns.MyDt.BBB(a#8#0#0)));

function LetPatterns.MyDt.y(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#9#0#0: int :: 
  { #LetPatterns.MyDt.BBB(a#9#0#0) } 
  LetPatterns.MyDt.y(#LetPatterns.MyDt.BBB(a#9#0#0)) == a#9#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.LetPatterns.MyDt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.LetPatterns.MyDt())
     ==> $IsAlloc(d, Tclass.LetPatterns.MyDt(), $h));

// Depth-one case-split function
function $IsA#LetPatterns.MyDt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#LetPatterns.MyDt(d) } 
  $IsA#LetPatterns.MyDt(d)
     ==> LetPatterns.MyDt.AAA_q(d) || LetPatterns.MyDt.BBB_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { LetPatterns.MyDt.BBB_q(d), $Is(d, Tclass.LetPatterns.MyDt()) } 
    { LetPatterns.MyDt.AAA_q(d), $Is(d, Tclass.LetPatterns.MyDt()) } 
  $Is(d, Tclass.LetPatterns.MyDt())
     ==> LetPatterns.MyDt.AAA_q(d) || LetPatterns.MyDt.BBB_q(d));

// Datatype extensional equality declaration
function LetPatterns.MyDt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #LetPatterns.MyDt.AAA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LetPatterns.MyDt#Equal(a, b), LetPatterns.MyDt.AAA_q(a) } 
    { LetPatterns.MyDt#Equal(a, b), LetPatterns.MyDt.AAA_q(b) } 
  LetPatterns.MyDt.AAA_q(a) && LetPatterns.MyDt.AAA_q(b)
     ==> (LetPatterns.MyDt#Equal(a, b)
       <==> LetPatterns.MyDt.x(a) == LetPatterns.MyDt.x(b)));

// Datatype extensional equality definition: #LetPatterns.MyDt.BBB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LetPatterns.MyDt#Equal(a, b), LetPatterns.MyDt.BBB_q(a) } 
    { LetPatterns.MyDt#Equal(a, b), LetPatterns.MyDt.BBB_q(b) } 
  LetPatterns.MyDt.BBB_q(a) && LetPatterns.MyDt.BBB_q(b)
     ==> (LetPatterns.MyDt#Equal(a, b)
       <==> LetPatterns.MyDt.y(a) == LetPatterns.MyDt.y(b)));

// Datatype extensionality axiom: LetPatterns.MyDt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LetPatterns.MyDt#Equal(a, b) } 
  LetPatterns.MyDt#Equal(a, b) <==> a == b);

const unique class.LetPatterns.MyDt: ClassName;

const unique class.Exhaustiveness.__default: ClassName;

// Constructor function declaration
function #Exhaustiveness.Color.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Exhaustiveness.Color.A()) == ##Exhaustiveness.Color.A;
// Constructor $Is
axiom $Is(#Exhaustiveness.Color.A(), Tclass.Exhaustiveness.Color());
// Constructor literal
axiom #Exhaustiveness.Color.A() == Lit(#Exhaustiveness.Color.A());
}

const unique ##Exhaustiveness.Color.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Exhaustiveness.Color.A()) == ##Exhaustiveness.Color.A;
}

function Exhaustiveness.Color.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.A_q(d) } 
  Exhaustiveness.Color.A_q(d) <==> DatatypeCtorId(d) == ##Exhaustiveness.Color.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.A_q(d) } 
  Exhaustiveness.Color.A_q(d) ==> d == #Exhaustiveness.Color.A());

function Tclass.Exhaustiveness.Color() : Ty
uses {
// Tclass.Exhaustiveness.Color Tag
axiom Tag(Tclass.Exhaustiveness.Color()) == Tagclass.Exhaustiveness.Color
   && TagFamily(Tclass.Exhaustiveness.Color()) == tytagFamily$Color;
}

const unique Tagclass.Exhaustiveness.Color: TyTag;

// Box/unbox axiom for Tclass.Exhaustiveness.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Exhaustiveness.Color()) } 
  $IsBox(bx, Tclass.Exhaustiveness.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Exhaustiveness.Color()));

// Constructor function declaration
function #Exhaustiveness.Color.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Exhaustiveness.Color.B()) == ##Exhaustiveness.Color.B;
// Constructor $Is
axiom $Is(#Exhaustiveness.Color.B(), Tclass.Exhaustiveness.Color());
// Constructor literal
axiom #Exhaustiveness.Color.B() == Lit(#Exhaustiveness.Color.B());
}

const unique ##Exhaustiveness.Color.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Exhaustiveness.Color.B()) == ##Exhaustiveness.Color.B;
}

function Exhaustiveness.Color.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.B_q(d) } 
  Exhaustiveness.Color.B_q(d) <==> DatatypeCtorId(d) == ##Exhaustiveness.Color.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.B_q(d) } 
  Exhaustiveness.Color.B_q(d) ==> d == #Exhaustiveness.Color.B());

// Constructor function declaration
function #Exhaustiveness.Color.C() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Exhaustiveness.Color.C()) == ##Exhaustiveness.Color.C;
// Constructor $Is
axiom $Is(#Exhaustiveness.Color.C(), Tclass.Exhaustiveness.Color());
// Constructor literal
axiom #Exhaustiveness.Color.C() == Lit(#Exhaustiveness.Color.C());
}

const unique ##Exhaustiveness.Color.C: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Exhaustiveness.Color.C()) == ##Exhaustiveness.Color.C;
}

function Exhaustiveness.Color.C_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.C_q(d) } 
  Exhaustiveness.Color.C_q(d) <==> DatatypeCtorId(d) == ##Exhaustiveness.Color.C);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.C_q(d) } 
  Exhaustiveness.Color.C_q(d) ==> d == #Exhaustiveness.Color.C());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Exhaustiveness.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Exhaustiveness.Color())
     ==> $IsAlloc(d, Tclass.Exhaustiveness.Color(), $h));

// Depth-one case-split function
function $IsA#Exhaustiveness.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Exhaustiveness.Color(d) } 
  $IsA#Exhaustiveness.Color(d)
     ==> Exhaustiveness.Color.A_q(d)
       || Exhaustiveness.Color.B_q(d)
       || Exhaustiveness.Color.C_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Exhaustiveness.Color.C_q(d), $Is(d, Tclass.Exhaustiveness.Color()) } 
    { Exhaustiveness.Color.B_q(d), $Is(d, Tclass.Exhaustiveness.Color()) } 
    { Exhaustiveness.Color.A_q(d), $Is(d, Tclass.Exhaustiveness.Color()) } 
  $Is(d, Tclass.Exhaustiveness.Color())
     ==> Exhaustiveness.Color.A_q(d)
       || Exhaustiveness.Color.B_q(d)
       || Exhaustiveness.Color.C_q(d));

// Datatype extensional equality declaration
function Exhaustiveness.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Exhaustiveness.Color.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Exhaustiveness.Color#Equal(a, b), Exhaustiveness.Color.A_q(a) } 
    { Exhaustiveness.Color#Equal(a, b), Exhaustiveness.Color.A_q(b) } 
  Exhaustiveness.Color.A_q(a) && Exhaustiveness.Color.A_q(b)
     ==> Exhaustiveness.Color#Equal(a, b));

// Datatype extensional equality definition: #Exhaustiveness.Color.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Exhaustiveness.Color#Equal(a, b), Exhaustiveness.Color.B_q(a) } 
    { Exhaustiveness.Color#Equal(a, b), Exhaustiveness.Color.B_q(b) } 
  Exhaustiveness.Color.B_q(a) && Exhaustiveness.Color.B_q(b)
     ==> Exhaustiveness.Color#Equal(a, b));

// Datatype extensional equality definition: #Exhaustiveness.Color.C
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Exhaustiveness.Color#Equal(a, b), Exhaustiveness.Color.C_q(a) } 
    { Exhaustiveness.Color#Equal(a, b), Exhaustiveness.Color.C_q(b) } 
  Exhaustiveness.Color.C_q(a) && Exhaustiveness.Color.C_q(b)
     ==> Exhaustiveness.Color#Equal(a, b));

// Datatype extensionality axiom: Exhaustiveness.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Exhaustiveness.Color#Equal(a, b) } 
  Exhaustiveness.Color#Equal(a, b) <==> a == b);

const unique class.Exhaustiveness.Color: ClassName;

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

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$AnotherNode: TyTagFamily;

const unique tytagFamily$XList: TyTagFamily;

const unique tytagFamily$Triple: TyTagFamily;

const unique tytagFamily$TripleAndMore: TyTagFamily;

const unique tytagFamily$Fwd: TyTagFamily;

const unique tytagFamily$NestedMatchExpr: TyTagFamily;

const unique tytagFamily$ContainsFwd: TyTagFamily;

const unique tytagFamily$AList: TyTagFamily;

const unique tytagFamily$MyDt: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique field$data: NameFamily;

const unique field$next: NameFamily;

const unique field$fwd: NameFamily;
