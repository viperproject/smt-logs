// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 5 == $FunctionContextHeight;
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
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ArrayTests() : Ty
uses {
// Tclass._module.ArrayTests Tag
axiom Tag(Tclass._module.ArrayTests()) == Tagclass._module.ArrayTests
   && TagFamily(Tclass._module.ArrayTests()) == tytagFamily$ArrayTests;
}

const unique Tagclass._module.ArrayTests: TyTag;

// Box/unbox axiom for Tclass._module.ArrayTests
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArrayTests()) } 
  $IsBox(bx, Tclass._module.ArrayTests())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ArrayTests()));

function Tclass._module.MultiArrayTests() : Ty
uses {
// Tclass._module.MultiArrayTests Tag
axiom Tag(Tclass._module.MultiArrayTests()) == Tagclass._module.MultiArrayTests
   && TagFamily(Tclass._module.MultiArrayTests()) == tytagFamily$MultiArrayTests;
}

const unique Tagclass._module.MultiArrayTests: TyTag;

// Box/unbox axiom for Tclass._module.MultiArrayTests
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MultiArrayTests()) } 
  $IsBox(bx, Tclass._module.MultiArrayTests())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MultiArrayTests()));

function Tclass._module.ObjectTests() : Ty
uses {
// Tclass._module.ObjectTests Tag
axiom Tag(Tclass._module.ObjectTests()) == Tagclass._module.ObjectTests
   && TagFamily(Tclass._module.ObjectTests()) == tytagFamily$ObjectTests;
}

const unique Tagclass._module.ObjectTests: TyTag;

// Box/unbox axiom for Tclass._module.ObjectTests
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ObjectTests()) } 
  $IsBox(bx, Tclass._module.ObjectTests())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ObjectTests()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#arrayTests#0: bool;
  var arrayTests#0: ref
     where defass#arrayTests#0
       ==> $Is(arrayTests#0, Tclass._module.ArrayTests())
         && $IsAlloc(arrayTests#0, Tclass._module.ArrayTests(), $Heap);
  var $nw: ref;
  var defass#multiArrayTests#0: bool;
  var multiArrayTests#0: ref
     where defass#multiArrayTests#0
       ==> $Is(multiArrayTests#0, Tclass._module.MultiArrayTests())
         && $IsAlloc(multiArrayTests#0, Tclass._module.MultiArrayTests(), $Heap);
  var defass#objectTests#0: bool;
  var objectTests#0: ref
     where defass#objectTests#0
       ==> $Is(objectTests#0, Tclass._module.ObjectTests())
         && $IsAlloc(objectTests#0, Tclass._module.ObjectTests(), $Heap);

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(4,18)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(4,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id17"} $nw := Call$$_module.ArrayTests.__ctor();
    // TrCallStmt: After ProcessCallStmt
    arrayTests#0 := $nw;
    defass#arrayTests#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(5,17)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id19"} defass#arrayTests#0;
    assume true;
    assert {:id "id20"} arrayTests#0 != null;
    assert {:id "id21"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, arrayTests#0, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, arrayTests#0, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id22"} Call$$_module.ArrayTests.Run(arrayTests#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(7,23)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(7,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id23"} $nw := Call$$_module.MultiArrayTests.__ctor();
    // TrCallStmt: After ProcessCallStmt
    multiArrayTests#0 := $nw;
    defass#multiArrayTests#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(8,22)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id25"} defass#multiArrayTests#0;
    assume true;
    assert {:id "id26"} multiArrayTests#0 != null;
    assert {:id "id27"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $o == $Unbox(read($Heap, multiArrayTests#0, _module.MultiArrayTests.a)): ref
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id28"} Call$$_module.MultiArrayTests.Run(multiArrayTests#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(10,19)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(10,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id29"} $nw := Call$$_module.ObjectTests.__ctor();
    // TrCallStmt: After ProcessCallStmt
    objectTests#0 := $nw;
    defass#objectTests#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(11,18)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id31"} defass#objectTests#0;
    assume true;
    assert {:id "id32"} objectTests#0 != null;
    assert {:id "id33"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, objectTests#0, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, objectTests#0, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, objectTests#0, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id34"} Call$$_module.ObjectTests.Run(objectTests#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(13,25)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id35"} Call$$ForallWithNewtype.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



const unique class._module.ArrayTests?: ClassName;

function Tclass._module.ArrayTests?() : Ty
uses {
// Tclass._module.ArrayTests? Tag
axiom Tag(Tclass._module.ArrayTests?()) == Tagclass._module.ArrayTests?
   && TagFamily(Tclass._module.ArrayTests?()) == tytagFamily$ArrayTests;
}

const unique Tagclass._module.ArrayTests?: TyTag;

// Box/unbox axiom for Tclass._module.ArrayTests?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArrayTests?()) } 
  $IsBox(bx, Tclass._module.ArrayTests?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ArrayTests?()));

// $Is axiom for class ArrayTests
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ArrayTests?()) } 
  $Is($o, Tclass._module.ArrayTests?())
     <==> $o == null || dtype($o) == Tclass._module.ArrayTests?());

// $IsAlloc axiom for class ArrayTests
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ArrayTests?(), $h) } 
  $IsAlloc($o, Tclass._module.ArrayTests?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.ArrayTests.a: Field
uses {
axiom FDim(_module.ArrayTests.a) == 0
   && FieldOfDecl(class._module.ArrayTests?, field$a) == _module.ArrayTests.a
   && !$IsGhostField(_module.ArrayTests.a);
}

// ArrayTests.a: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArrayTests.a)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ArrayTests?()
     ==> $Is($Unbox(read($h, $o, _module.ArrayTests.a)): ref, Tclass._System.array(TInt)));

// ArrayTests.a: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArrayTests.a)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ArrayTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ArrayTests.a)): ref, Tclass._System.array(TInt), $h));

const _module.ArrayTests.b: Field
uses {
axiom FDim(_module.ArrayTests.b) == 0
   && FieldOfDecl(class._module.ArrayTests?, field$b) == _module.ArrayTests.b
   && !$IsGhostField(_module.ArrayTests.b);
}

// ArrayTests.b: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArrayTests.b)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ArrayTests?()
     ==> $Is($Unbox(read($h, $o, _module.ArrayTests.b)): ref, Tclass._System.array(TInt)));

// ArrayTests.b: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArrayTests.b)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ArrayTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ArrayTests.b)): ref, Tclass._System.array(TInt), $h));

// function declaration for _module.ArrayTests.Valid
function _module.ArrayTests.Valid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.ArrayTests.Valid (revealed)
axiom {:id "id36"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.ArrayTests.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.ArrayTests.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArrayTests())
           && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
       ==> _module.ArrayTests.Valid($Heap, this)
         == (_System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
             == LitInt(5)
           && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
             == LitInt(5)));
}

function _module.ArrayTests.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.ArrayTests.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ArrayTests.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.ArrayTests())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || $o == $Unbox(read($h0, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($h0, this, _module.ArrayTests.b)): ref)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ArrayTests.Valid($h0, this) == _module.ArrayTests.Valid($h1, this));

function _module.ArrayTests.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.ArrayTests.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.ArrayTests.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArrayTests())
       && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
     ==> _module.ArrayTests.Valid#requires($Heap, this) == true);

procedure {:verboseName "ArrayTests.Valid (well-formedness)"} CheckWellformed$$_module.ArrayTests.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.Valid (well-formedness)"} CheckWellformed$$_module.ArrayTests.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.ArrayTests.a];
    b$reqreads#1 := $_ReadsFrame[this, _module.ArrayTests.b];
    assert {:id "id37"} b$reqreads#0;
    assert {:id "id38"} b$reqreads#1;
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
        b$reqreads#2 := $_ReadsFrame[this, _module.ArrayTests.a];
        assert {:id "id39"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        if (_System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           == LitInt(5))
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.ArrayTests.b];
            assert {:id "id40"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
        }

        assume {:id "id41"} _module.ArrayTests.Valid($Heap, this)
           == (_System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
               == LitInt(5)
             && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
               == LitInt(5));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ArrayTests.Valid($Heap, this), TBool);
        assert {:id "id42"} b$reqreads#2;
        assert {:id "id43"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "ArrayTests._ctor (well-formedness)"} CheckWellFormed$$_module.ArrayTests.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests._ctor (call)"} Call$$_module.ArrayTests.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, alloc)): bool
     ==> 
    $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, alloc)): bool
     ==> _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id47"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, alloc)): bool;
  ensures {:id "id48"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, alloc)): bool;
  free ensures {:id "id49"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests._ctor (correctness)"} Impl$$_module.ArrayTests.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, alloc)): bool
     ==> 
    $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, alloc)): bool
     ==> _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id50"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, alloc)): bool;
  ensures {:id "id51"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, alloc)): bool;
  ensures {:id "id52"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id53"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests._ctor (correctness)"} Impl$$_module.ArrayTests.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.a: ref;
  var this.b: ref;
  var $nw: ref;

    // AddMethodImpl: _ctor, Impl$$_module.ArrayTests.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(24,57)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(25,7)
    assume true;
    assert {:id "id54"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.a := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(26,7)
    assume true;
    assert {:id "id56"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.b := $nw;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(24,57)
    assume this != null && $Is(this, Tclass._module.ArrayTests?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.ArrayTests.a)): ref == this.a;
    assume $Unbox(read($Heap, this, _module.ArrayTests.b)): ref == this.b;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(24,57)
}



procedure {:verboseName "ArrayTests.Initialize (well-formedness)"} CheckWellFormed$$_module.ArrayTests.Initialize(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.Initialize (call)"} Call$$_module.ArrayTests.Initialize(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.Initialize (correctness)"} Impl$$_module.ArrayTests.Initialize(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.Initialize (correctness)"} Impl$$_module.ArrayTests.Initialize(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;

    // AddMethodImpl: Initialize, Impl$$_module.ArrayTests.Initialize
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(30,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id58"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assert {:id "id59"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id60"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id61"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0)];
        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1
           && i#0_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume i#0_0 != i#0_1;
        assert {:id "id62"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || i#0_0 == i#0_1;
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
                 && i#0_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0
               && i#inv#0_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#0_0))
               == $Box(i#inv#0_0));
    }

    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(33,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id63"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
        assert {:id "id64"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
        assert {:id "id65"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
        assume true;
        assert {:id "id66"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.b)): ref, IndexField(i#1_0)];
        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(0) <= i#1_1
           && i#1_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
        assume i#1_0 != i#1_1;
        assert {:id "id67"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
           || IndexField(i#1_0) != IndexField(i#1_1)
           || i#1_0 == i#1_1;
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
                 && i#1_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref, 
              IndexField(i#inv#1_0)) } 
          LitInt(0) <= i#inv#1_0
               && i#inv#1_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref, 
                IndexField(i#inv#1_0))
               == $Box(i#inv#1_0));
    }
}



procedure {:verboseName "ArrayTests.Run (well-formedness)"} CheckWellFormed$$_module.ArrayTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.Run (call)"} Call$$_module.ArrayTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id70"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  requires {:id "id71"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id72"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.Run (correctness)"} Impl$$_module.ArrayTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id73"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id74"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id75"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.Run (correctness)"} Impl$$_module.ArrayTests.Run(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Run, Impl$$_module.ArrayTests.Run
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(39,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id76"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id77"} Call$$_module.ArrayTests.BasicCases(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(40,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id78"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id79"} Call$$_module.ArrayTests.WrongIndex(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(41,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id80"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id81"} Call$$_module.ArrayTests.SequenceConversion(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(42,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id82"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id83"} Call$$_module.ArrayTests.IndexCollection(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(43,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id84"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id85"} Call$$_module.ArrayTests.Functions(this);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ArrayTests.BasicCases (well-formedness)"} CheckWellFormed$$_module.ArrayTests.BasicCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.BasicCases (call)"} Call$$_module.ArrayTests.BasicCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id88"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  requires {:id "id89"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id90"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.BasicCases (correctness)"} Impl$$_module.ArrayTests.BasicCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id91"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id92"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id93"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.BasicCases (correctness)"} Impl$$_module.ArrayTests.BasicCases(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;
  var i#2_0: int;
  var i#2_1: int;

    // AddMethodImpl: BasicCases, Impl$$_module.ArrayTests.BasicCases
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(47,5)
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(50,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id94"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assert {:id "id95"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id96"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id97"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0)];
        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1
           && i#0_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume i#0_0 != i#0_1;
        assert {:id "id98"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || i#0_0 == i#0_1;
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
                 && i#0_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0
               && i#inv#0_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#0_0))
               == $Box(i#inv#0_0));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(53,5)
    assert {:id "id99"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(56,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id100"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assert {:id "id101"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
        assert {:id "id102"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
        assume true;
        assert {:id "id103"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.b)): ref, IndexField(i#1_0)];
        assert {:id "id104"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id105"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(0) <= i#1_1
           && i#1_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume i#1_0 != i#1_1;
        assert {:id "id106"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
           || IndexField(i#1_0) != IndexField(i#1_1)
           || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0))): int
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_1))): int;
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
                 && i#1_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref, 
              IndexField(i#inv#1_0)) } 
          LitInt(0) <= i#inv#1_0
               && i#inv#1_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.b)): ref, 
                IndexField(i#inv#1_0))
               == $Box($Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                    IndexField(i#inv#1_0))): int));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(59,5)
    assert {:id "id107"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(62,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#2_0;
        assume true;
        if (LitInt(0) <= i#2_0)
        {
            assert {:id "id108"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref))
        {
            assert {:id "id109"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
            assert {:id "id110"} {:subsumption 0} 0 <= i#2_0
               && i#2_0
                 < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
            assert {:id "id111"} {:subsumption 0} LitInt(2) != 0;
        }

        assume true;
        assume LitInt(0) <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && Mod($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0))): int, 
              LitInt(2))
             == LitInt(0);
        assert {:id "id112"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id113"} {:subsumption 0} 0 <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id114"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0)];
        assert {:id "id115"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id116"} {:subsumption 0} 0 <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#2_1;
        assume true;
        assume LitInt(0) <= i#2_1
           && i#2_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && Mod($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_1))): int, 
              LitInt(2))
             == LitInt(0);
        assume i#2_0 != i#2_1;
        assert {:id "id117"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#2_0) != IndexField(i#2_1)
           || Mul($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0))): int, 
              LitInt(2))
             == Mul($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_1))): int, 
              LitInt(2));
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
                 && i#2_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && Mod($Unbox(read($prevHeap, 
                        $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                        IndexField(i#2_2))): int, 
                    LitInt(2))
                   == LitInt(0)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#2_2)));
        assume (forall i#inv#2_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#2_0)) } 
          LitInt(0) <= i#inv#2_0
               && i#inv#2_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
               && Mod($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#inv#2_0))): int, 
                  LitInt(2))
                 == LitInt(0)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#2_0))
               == $Box(Mul($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#inv#2_0))): int, 
                  LitInt(2))));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(65,5)
    assert {:id "id118"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
}



procedure {:verboseName "ArrayTests.WrongIndex (well-formedness)"} CheckWellFormed$$_module.ArrayTests.WrongIndex(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.WrongIndex (call)"} Call$$_module.ArrayTests.WrongIndex(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id121"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  requires {:id "id122"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id123"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.WrongIndex (correctness)"} Impl$$_module.ArrayTests.WrongIndex(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id124"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id125"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id126"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.WrongIndex (correctness)"} Impl$$_module.ArrayTests.WrongIndex(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;
  var i#2_0: int;
  var i#2_1: int;

    // AddMethodImpl: WrongIndex, Impl$$_module.ArrayTests.WrongIndex
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(69,5)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(72,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id127"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id128"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(73,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(1) <= i#0_0)
        {
            assert {:id "id129"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(1) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assert {:id "id130"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id131"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id132"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0)];
        assert {:id "id133"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id134"} {:subsumption 0} 0 <= i#0_0 - 1
           && i#0_0 - 1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(1) <= i#0_1
           && i#0_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume i#0_0 != i#0_1;
        assert {:id "id135"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#0_0 - 1))): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#0_1 - 1))): int;
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
              LitInt(1) <= i#0_2
                 && i#0_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#0_0)) } 
          LitInt(1) <= i#inv#0_0
               && i#inv#0_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#0_0))
               == $Box($Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                    IndexField(i#inv#0_0 - 1))): int));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(76,5)
    assert {:id "id136"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(79,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id137"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id138"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(80,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id139"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref) - 1;
        assert {:id "id140"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id141"} {:subsumption 0} 0 <= i#1_0 + 1
           && i#1_0 + 1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id142"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0 + 1)];
        assert {:id "id143"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id144"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(0) <= i#1_1
           && i#1_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref) - 1;
        assume i#1_0 != i#1_1;
        assert {:id "id145"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#1_0 + 1) != IndexField(i#1_1 + 1)
           || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0))): int
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_1))): int;
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
                 && i#1_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                     - 1
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#1_2 + 1)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#1_0)) } 
          LitInt(0) <= i#inv#1_0 - 1
               && i#inv#1_0 - 1
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                   - 1
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#1_0))
               == $Box($Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                    IndexField(i#inv#1_0 - 1))): int));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(83,5)
    assert {:id "id146"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(86,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id147"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id148"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(87,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#2_0;
        assume true;
        if (LitInt(0) <= i#2_0)
        {
            assert {:id "id149"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref))
        {
            if (i#2_0 != LitInt(0))
            {
                assert {:id "id150"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
                assert {:id "id151"} {:subsumption 0} 0 <= LitInt(0)
                   && LitInt(0)
                     < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
            }
        }

        assume true;
        assume LitInt(0) <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && (i#2_0 == LitInt(0)
             || i#2_0
               != $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, 
                  IndexField(LitInt(0)))): int);
        assert {:id "id152"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id153"} {:subsumption 0} 0 <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id154"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0)];
        assert {:id "id155"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id156"} {:subsumption 0} 0 <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#2_1;
        assume true;
        assume LitInt(0) <= i#2_1
           && i#2_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && (i#2_1 == LitInt(0)
             || i#2_1
               != $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, 
                  IndexField(LitInt(0)))): int);
        assume i#2_0 != i#2_1;
        assert {:id "id157"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#2_0) != IndexField(i#2_1)
           || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0))): int
               + 1
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_1))): int
               + 1;
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
                 && i#2_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && (i#2_2 == LitInt(0)
                   || i#2_2
                     != $Unbox(read($prevHeap, 
                        $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                        IndexField(LitInt(0)))): int)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#2_2)));
        assume (forall i#inv#2_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#2_0)) } 
          LitInt(0) <= i#inv#2_0
               && i#inv#2_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
               && (i#inv#2_0 == LitInt(0)
                 || i#inv#2_0
                   != $Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(LitInt(0)))): int)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#2_0))
               == $Box($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#inv#2_0))): int
                   + 1));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(90,5)
    assert {:id "id158"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
}



procedure {:verboseName "ArrayTests.SequenceConversion (well-formedness)"} CheckWellFormed$$_module.ArrayTests.SequenceConversion(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.SequenceConversion (call)"} Call$$_module.ArrayTests.SequenceConversion(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id161"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  requires {:id "id162"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id163"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.SequenceConversion (correctness)"} Impl$$_module.ArrayTests.SequenceConversion(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id164"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id165"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id166"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.SequenceConversion (correctness)"} Impl$$_module.ArrayTests.SequenceConversion(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;

    // AddMethodImpl: SequenceConversion, Impl$$_module.ArrayTests.SequenceConversion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(94,5)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(97,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id167"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id168"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(98,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id169"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref))
        {
            if (i#0_0 != LitInt(0))
            {
                assert {:id "id170"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
                assert {:id "id171"} {:subsumption 0} 0 <= LitInt(2)
                   && LitInt(2)
                     <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
            }
        }

        assume true;
        assume LitInt(0) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && (i#0_0 == LitInt(0)
             || !Seq#Contains(Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref), 
                LitInt(2)), 
              $Box(i#0_0)));
        assert {:id "id172"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id173"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id174"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0)];
        assert {:id "id175"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id176"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1
           && i#0_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && (i#0_1 == LitInt(0)
             || !Seq#Contains(Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref), 
                LitInt(2)), 
              $Box(i#0_1)));
        assume i#0_0 != i#0_1;
        assert {:id "id177"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0))): int
               + 2
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_1))): int
               + 2;
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
                 && i#0_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && (i#0_2 == LitInt(0)
                   || !Seq#Contains(Seq#Take(Seq#FromArray($prevHeap, $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref), 
                      LitInt(2)), 
                    $Box(i#0_2)))
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0
               && i#inv#0_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
               && (i#inv#0_0 == LitInt(0)
                 || !Seq#Contains(Seq#Take(Seq#FromArray($prevHeap, $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref), 
                    LitInt(2)), 
                  $Box(i#inv#0_0)))
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#0_0))
               == $Box($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#inv#0_0))): int
                   + 2));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(101,5)
    assert {:id "id178"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(104,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id179"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id180"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(105,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(1) <= i#1_0)
        {
            assert {:id "id181"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(1) <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref) - 1;
        assert {:id "id182"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id183"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id184"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0)];
        assert {:id "id185"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id186"} {:subsumption 0} 0 <= i#1_0 - 1
           && i#1_0 - 1
             <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assert {:id "id187"} {:subsumption 0} i#1_0 - 1 <= i#1_0 + 2
           && i#1_0 + 2
             <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(1) <= i#1_1
           && i#1_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref) - 1;
        assume i#1_0 != i#1_1;
        assert {:id "id188"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#1_0) != IndexField(i#1_1)
           || Seq#Length(Seq#Drop(Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref), 
                  i#1_0 + 2), 
                i#1_0 - 1))
             == Seq#Length(Seq#Drop(Seq#Take(Seq#FromArray($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref), 
                  i#1_1 + 2), 
                i#1_1 - 1));
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
              LitInt(1) <= i#1_2
                 && i#1_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                     - 1
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#1_0)) } 
          LitInt(1) <= i#inv#1_0
               && i#inv#1_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                   - 1
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#1_0))
               == $Box(Seq#Length(Seq#Drop(Seq#Take(Seq#FromArray($prevHeap, $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref), 
                      i#inv#1_0 + 2), 
                    i#inv#1_0 - 1))));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(108,5)
    assert {:id "id189"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
}



procedure {:verboseName "ArrayTests.IndexCollection (well-formedness)"} CheckWellFormed$$_module.ArrayTests.IndexCollection(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.IndexCollection (call)"} Call$$_module.ArrayTests.IndexCollection(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id192"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  requires {:id "id193"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id194"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.IndexCollection (correctness)"} Impl$$_module.ArrayTests.IndexCollection(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id195"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id196"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id197"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.IndexCollection (correctness)"} Impl$$_module.ArrayTests.IndexCollection(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;

    // AddMethodImpl: IndexCollection, Impl$$_module.ArrayTests.IndexCollection
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(112,5)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(115,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id198"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id199"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(116,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        assume true;
        assume Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0))), 
            $Box(LitInt(0))), 
          $Box(i#0_0));
        assert {:id "id200"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id201"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id202"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0)];
        assert {:id "id203"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id204"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#0_1;
        assume true;
        assume Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0))), 
            $Box(LitInt(0))), 
          $Box(i#0_1));
        assume i#0_0 != i#0_1;
        assert {:id "id205"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0))): int
               + 1
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_1))): int
               + 1;
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
              Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0))), 
                    $Box(LitInt(0))), 
                  $Box(i#0_2))
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#0_0)) } 
          Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0))), 
                $Box(LitInt(0))), 
              $Box(i#inv#0_0))
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#0_0))
               == $Box($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#inv#0_0))): int
                   + 1));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(119,5)
    assert {:id "id206"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(122,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id207"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id208"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(123,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        assume true;
        assume i#1_0 == LitInt(0) || i#1_0 == LitInt(0) || i#1_0 == LitInt(0);
        assert {:id "id209"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id210"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id211"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0)];
        assert {:id "id212"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id213"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#1_1;
        assume true;
        assume i#1_1 == LitInt(0) || i#1_1 == LitInt(0) || i#1_1 == LitInt(0);
        assume i#1_0 != i#1_1;
        assert {:id "id214"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#1_0) != IndexField(i#1_1)
           || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0))): int
               + 1
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_1))): int
               + 1;
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
              (i#1_2 == LitInt(0) || i#1_2 == LitInt(0) || i#1_2 == LitInt(0))
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#1_0)) } 
          i#inv#1_0 == LitInt(0) || i#inv#1_0 == LitInt(0) || i#inv#1_0 == LitInt(0)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#1_0))
               == $Box($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#inv#1_0))): int
                   + 1));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(126,5)
    assert {:id "id215"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
}



procedure {:verboseName "ArrayTests.Functions (well-formedness)"} CheckWellFormed$$_module.ArrayTests.Functions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.Functions (call)"} Call$$_module.ArrayTests.Functions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id218"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  requires {:id "id219"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id220"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.Functions (correctness)"} Impl$$_module.ArrayTests.Functions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id221"} _module.ArrayTests.Valid#canCall($Heap, this)
     && 
    _module.ArrayTests.Valid($Heap, this)
     && 
    _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
       == LitInt(5)
     && _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
       == LitInt(5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id222"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
         == LitInt(5);
  ensures {:id "id223"} _module.ArrayTests.Valid#canCall($Heap, this)
     ==> _module.ArrayTests.Valid($Heap, this)
       || _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         == LitInt(5);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ArrayTests.a)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.Functions (correctness)"} Impl$$_module.ArrayTests.Functions(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#0: HandleType
     where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var x#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;
  var g#0: HandleType
     where $Is(g#0, Tclass._System.___hFunc1(TInt, TInt))
       && $IsAlloc(g#0, Tclass._System.___hFunc1(TInt, TInt), $Heap);
  var $lambdaHeap#1: Heap;
  var x#1: int;
  var $_Frame#l1: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var lambdaResult#1: int;
  var i#2_0: int;
  var i#2_1: int;
  var i#3_0: int;
  var i#3_1: int;

    // AddMethodImpl: Functions, Impl$$_module.ArrayTests.Functions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(132,5)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(134,23)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc x#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id224"} lambdaResult#0 == x#0 + 1;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    f#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: $Box($Unbox($l#0#x#0): int + 1)), 
            (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: $IsBox($l#0#x#0, TInt)), 
            (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(137,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id226"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id227"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(138,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id228"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref))
        {
            assert {:id "id229"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
            assert {:id "id230"} {:subsumption 0} 0 <= i#0_0
               && i#0_0
                 < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        }

        assume true;
        assume LitInt(0) <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0))): int
             != $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(LitInt(0)))): int;
        assert {:id "id231"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id232"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id233"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0)];
        assert {:id "id234"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id235"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1
           && i#0_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_1))): int
             != $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(LitInt(0)))): int;
        assume i#0_0 != i#0_1;
        assert {:id "id236"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                f#0, 
                $Box($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_0))): int))): int
             == $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                f#0, 
                $Box($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#0_1))): int))): int;
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
                 && i#0_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#0_2))): int
                   != $Unbox(Apply1(TInt, TInt, $prevHeap, f#0, $Box(LitInt(0)))): int
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0
               && i#inv#0_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
               && $Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                    IndexField(i#inv#0_0))): int
                 != $Unbox(Apply1(TInt, TInt, $prevHeap, f#0, $Box(LitInt(0)))): int
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#0_0))
               == $Box($Unbox(Apply1(TInt, 
                    TInt, 
                    $prevHeap, 
                    f#0, 
                    $Box($Unbox(read($prevHeap, 
                          $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                          IndexField(i#inv#0_0))): int))): int));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(141,5)
    assert {:id "id237"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(144,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id238"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id239"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(145,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id240"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref))
        {
            assert {:id "id241"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
            assert {:id "id242"} {:subsumption 0} 0 <= i#1_0
               && i#1_0
                 < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        }

        assume true;
        assume LitInt(0) <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0))): int
             != $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(LitInt(0)))): int;
        assert {:id "id243"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id244"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id245"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0)];
        assert {:id "id246"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id247"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(0) <= i#1_1
           && i#1_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_1))): int
             != $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(LitInt(0)))): int;
        assume i#1_0 != i#1_1;
        assert {:id "id248"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#1_0) != IndexField(i#1_1)
           || $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                f#0, 
                $Box($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_0))): int))): int
             == $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                f#0, 
                $Box($Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#1_1))): int))): int;
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
                 && i#1_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#1_2))): int
                   != $Unbox(Apply1(TInt, TInt, $prevHeap, f#0, $Box(LitInt(0)))): int
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#1_0)) } 
          LitInt(0) <= i#inv#1_0
               && i#inv#1_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
               && $Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                    IndexField(i#inv#1_0))): int
                 != $Unbox(Apply1(TInt, TInt, $prevHeap, f#0, $Box(LitInt(0)))): int
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#1_0))
               == $Box($Unbox(Apply1(TInt, 
                    TInt, 
                    $prevHeap, 
                    f#0, 
                    $Box($Unbox(read($prevHeap, 
                          $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                          IndexField(i#inv#1_0))): int))): int));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(148,5)
    assert {:id "id249"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(150,23)
    assume true;
    // Begin Comprehension WF check
    b$reqreads#0 := true;
    b$reqreads#1 := true;
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc x#1;
        if (true)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool
                 ==> $o == this
                   || $o == $Unbox(read($lambdaHeap#1, this, _module.ArrayTests.a)): ref
                   || $o == $Unbox(read($lambdaHeap#1, this, _module.ArrayTests.b)): ref);
            b$reqreads#0 := $_Frame#l1[this, _module.ArrayTests.a];
            b$reqreads#1 := $_Frame#l1[this, _module.ArrayTests.b];
            assert {:id "id250"} b$reqreads#0;
            assert {:id "id251"} b$reqreads#1;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.ArrayTests?(), $lambdaHeap#1);
            assert {:id "id252"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($lambdaHeap#1, $o, alloc)): bool
                   && (
                    $o == this
                     || $o == $Unbox(read($lambdaHeap#1, this, _module.ArrayTests.a)): ref
                     || $o == $Unbox(read($lambdaHeap#1, this, _module.ArrayTests.b)): ref)
                 ==> $_Frame#l1[$o, $f]);
            assume _module.ArrayTests.Valid#canCall($lambdaHeap#1, this);
            if (_module.ArrayTests.Valid($lambdaHeap#1, this))
            {
                assert {:id "id253"} $_Frame#l1[this, _module.ArrayTests.a];
                assert {:id "id254"} $Unbox(read($lambdaHeap#1, this, _module.ArrayTests.a)): ref != null;
                assert {:id "id255"} 0 <= LitInt(1)
                   && LitInt(1)
                     < _System.array.Length($Unbox(read($lambdaHeap#1, this, _module.ArrayTests.a)): ref);
                assert {:id "id256"} $_Frame#l1[$Unbox(read($lambdaHeap#1, this, _module.ArrayTests.a)): ref, IndexField(LitInt(1))];
                assume {:id "id257"} lambdaResult#1
                   == x#1
                     + $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, 
                        IndexField(LitInt(1)))): int;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#1, TInt);
            }
        }

        assume false;
    }

    // End Comprehension WF check
    assume _module.ArrayTests.Valid#canCall($Heap, this);
    g#0 := Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
          Handle1((lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: 
              $Box($Unbox($l#2#x#0): int
                   + $Unbox(read($l#2#heap#0, 
                      $Unbox(read($l#2#heap#0, this, _module.ArrayTests.a)): ref, 
                      IndexField(LitInt(1)))): int)), 
            (lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: 
              $IsBox($l#2#x#0, TInt) && _module.ArrayTests.Valid($l#2#heap#0, this)), 
            (lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: 
              SetRef_to_SetBox((lambda $l#2#o#0: ref :: 
                  $l#2#o#0 == this
                     || $l#2#o#0 == $Unbox(read($l#2#heap#0, this, _module.ArrayTests.a)): ref
                     || $l#2#o#0 == $Unbox(read($l#2#heap#0, this, _module.ArrayTests.b)): ref))))), 
        $LS($LZ)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(153,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id259"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id260"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(154,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#2_0;
        assume true;
        if (LitInt(0) <= i#2_0)
        {
            assert {:id "id261"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref))
        {
            assert {:id "id262"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
            assert {:id "id263"} {:subsumption 0} 0 <= i#2_0
               && i#2_0
                 < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
            assert {:id "id264"} Requires1(TInt, TInt, $Heap, g#0, $Box(LitInt(2)));
        }

        assume true;
        assume LitInt(0) <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0))): int
             != $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(LitInt(2)))): int;
        assert {:id "id265"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id266"} {:subsumption 0} 0 <= i#2_0
           && i#2_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id267"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_0)];
        assume true;
        havoc i#2_1;
        assume true;
        assume LitInt(0) <= i#2_1
           && i#2_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref)
           && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#2_1))): int
             != $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(LitInt(2)))): int;
        assume i#2_0 != i#2_1;
        assert {:id "id268"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#2_0) != IndexField(i#2_1)
           || i#2_0 + 1 == i#2_1 + 1;
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
                 && i#2_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                      IndexField(i#2_2))): int
                   != $Unbox(Apply1(TInt, TInt, $prevHeap, g#0, $Box(LitInt(2)))): int
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#2_2)));
        assume (forall i#inv#2_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#2_0)) } 
          LitInt(0) <= i#inv#2_0
               && i#inv#2_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
               && $Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                    IndexField(i#inv#2_0))): int
                 != $Unbox(Apply1(TInt, TInt, $prevHeap, g#0, $Box(LitInt(2)))): int
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#2_0))
               == $Box(i#inv#2_0 + 1));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(157,5)
    assert {:id "id269"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(160,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id270"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id271"} Call$$_module.ArrayTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(161,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#3_0;
        assume true;
        if (LitInt(0) <= i#3_0)
        {
            assert {:id "id272"} {:subsumption 0} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#3_0
           && i#3_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assert {:id "id273"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
        assert {:id "id274"} {:subsumption 0} 0 <= i#3_0
           && i#3_0
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume true;
        assert {:id "id275"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.a)): ref, IndexField(i#3_0)];
        assert {:id "id276"} Requires1(TInt, TInt, $Heap, g#0, $Box(i#3_0));
        assume true;
        havoc i#3_1;
        assume true;
        assume LitInt(0) <= i#3_1
           && i#3_1
             < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.a)): ref);
        assume i#3_0 != i#3_1;
        assert {:id "id277"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.ArrayTests.a)): ref
           || IndexField(i#3_0) != IndexField(i#3_1)
           || $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(i#3_0))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(i#3_1))): int;
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
             || (exists i#3_2: int :: 
              LitInt(0) <= i#3_2
                 && i#3_2
                   < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref
                 && $f == IndexField(i#3_2)));
        assume (forall i#inv#3_0: int :: 
          { read($Heap, 
              $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
              IndexField(i#inv#3_0)) } 
          LitInt(0) <= i#inv#3_0
               && i#inv#3_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.ArrayTests.a)): ref, 
                IndexField(i#inv#3_0))
               == $Box($Unbox(Apply1(TInt, TInt, $prevHeap, g#0, $Box(i#inv#3_0))): int));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(164,5)
    assert {:id "id278"} $Unbox(read($Heap, this, _module.ArrayTests.a)): ref != null;
    assume true;
    assume true;
}



// $Is axiom for non-null type _module.ArrayTests
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ArrayTests()) } 
    { $Is(c#0, Tclass._module.ArrayTests?()) } 
  $Is(c#0, Tclass._module.ArrayTests())
     <==> $Is(c#0, Tclass._module.ArrayTests?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ArrayTests
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ArrayTests(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ArrayTests?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ArrayTests(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ArrayTests?(), $h));

const unique class._module.MultiArrayTests?: ClassName;

function Tclass._module.MultiArrayTests?() : Ty
uses {
// Tclass._module.MultiArrayTests? Tag
axiom Tag(Tclass._module.MultiArrayTests?()) == Tagclass._module.MultiArrayTests?
   && TagFamily(Tclass._module.MultiArrayTests?()) == tytagFamily$MultiArrayTests;
}

const unique Tagclass._module.MultiArrayTests?: TyTag;

// Box/unbox axiom for Tclass._module.MultiArrayTests?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MultiArrayTests?()) } 
  $IsBox(bx, Tclass._module.MultiArrayTests?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MultiArrayTests?()));

// $Is axiom for class MultiArrayTests
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MultiArrayTests?()) } 
  $Is($o, Tclass._module.MultiArrayTests?())
     <==> $o == null || dtype($o) == Tclass._module.MultiArrayTests?());

// $IsAlloc axiom for class MultiArrayTests
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MultiArrayTests?(), $h) } 
  $IsAlloc($o, Tclass._module.MultiArrayTests?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.MultiArrayTests.a: Field
uses {
axiom FDim(_module.MultiArrayTests.a) == 0
   && FieldOfDecl(class._module.MultiArrayTests?, field$a)
     == _module.MultiArrayTests.a
   && !$IsGhostField(_module.MultiArrayTests.a);
}

// MultiArrayTests.a: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MultiArrayTests.a)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MultiArrayTests?()
     ==> $Is($Unbox(read($h, $o, _module.MultiArrayTests.a)): ref, 
      Tclass._System.array2(TInt)));

// MultiArrayTests.a: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MultiArrayTests.a)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MultiArrayTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MultiArrayTests.a)): ref, 
      Tclass._System.array2(TInt), 
      $h));

// function declaration for _module.MultiArrayTests.Valid
function _module.MultiArrayTests.Valid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.MultiArrayTests.Valid (revealed)
axiom {:id "id279"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.MultiArrayTests.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.MultiArrayTests.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.MultiArrayTests())
           && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap))
       ==> _module.MultiArrayTests.Valid($Heap, this)
         == (_System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
             == LitInt(3)
           && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
             == LitInt(3)));
}

function _module.MultiArrayTests.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.MultiArrayTests.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.MultiArrayTests.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.MultiArrayTests())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this || $o == $Unbox(read($h0, this, _module.MultiArrayTests.a)): ref)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.MultiArrayTests.Valid($h0, this)
       == _module.MultiArrayTests.Valid($h1, this));

function _module.MultiArrayTests.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.MultiArrayTests.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.MultiArrayTests.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.MultiArrayTests())
       && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap)
     ==> _module.MultiArrayTests.Valid#requires($Heap, this) == true);

procedure {:verboseName "MultiArrayTests.Valid (well-formedness)"} CheckWellformed$$_module.MultiArrayTests.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiArrayTests.Valid (well-formedness)"} CheckWellformed$$_module.MultiArrayTests.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.MultiArrayTests.a];
    assert {:id "id280"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id281"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        if (_System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           == LitInt(3))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.MultiArrayTests.a];
            assert {:id "id282"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        }

        assume {:id "id283"} _module.MultiArrayTests.Valid($Heap, this)
           == (_System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
               == LitInt(3)
             && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
               == LitInt(3));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.MultiArrayTests.Valid($Heap, this), TBool);
        assert {:id "id284"} b$reqreads#1;
        assert {:id "id285"} b$reqreads#2;
        return;

        assume false;
    }
}



procedure {:verboseName "MultiArrayTests._ctor (well-formedness)"} CheckWellFormed$$_module.MultiArrayTests.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiArrayTests._ctor (call)"} Call$$_module.MultiArrayTests.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, alloc)): bool
     ==> _module.MultiArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id288"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, alloc)): bool;
  free ensures {:id "id289"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     && 
    _module.MultiArrayTests.Valid($Heap, this)
     && 
    _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3)
     && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultiArrayTests._ctor (correctness)"} Impl$$_module.MultiArrayTests.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, alloc)): bool
     ==> _module.MultiArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id290"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, alloc)): bool;
  ensures {:id "id291"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  ensures {:id "id292"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiArrayTests._ctor (correctness)"} Impl$$_module.MultiArrayTests.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.a: ref;
  var $nw: ref;

    // AddMethodImpl: _ctor, Impl$$_module.MultiArrayTests.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(175,45)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(176,7)
    assume true;
    assert {:id "id293"} 0 <= LitInt(3);
    assert {:id "id294"} 0 <= LitInt(3);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(3);
    assume _System.array2.Length1($nw) == LitInt(3);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.a := $nw;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(175,45)
    assume this != null && $Is(this, Tclass._module.MultiArrayTests?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref == this.a;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(175,45)
}



// function declaration for _module.MultiArrayTests.StateAsSeq
function _module.MultiArrayTests.StateAsSeq($heap: Heap, this: ref) : Seq
uses {
// consequence axiom for _module.MultiArrayTests.StateAsSeq
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.MultiArrayTests.StateAsSeq($Heap, this) } 
    _module.MultiArrayTests.StateAsSeq#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.MultiArrayTests())
           && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap)
           && _module.MultiArrayTests.Valid($Heap, this))
       ==> $Is(_module.MultiArrayTests.StateAsSeq($Heap, this), TSeq(TSeq(TInt))));
// definition axiom for _module.MultiArrayTests.StateAsSeq (revealed)
axiom {:id "id296"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.MultiArrayTests.StateAsSeq($Heap, this), $IsGoodHeap($Heap) } 
    _module.MultiArrayTests.StateAsSeq#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.MultiArrayTests())
           && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap)
           && _module.MultiArrayTests.Valid($Heap, this))
       ==> _module.MultiArrayTests.StateAsSeq($Heap, this)
         == Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
              $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                      read($Heap, 
                        $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                        MultiIndexField(IndexField(LitInt(0)), LitInt(0)))), 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                      MultiIndexField(IndexField(LitInt(0)), LitInt(1)))), 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                    MultiIndexField(IndexField(LitInt(0)), LitInt(2)))))), 
            $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                      MultiIndexField(IndexField(LitInt(1)), LitInt(0)))), 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                    MultiIndexField(IndexField(LitInt(1)), LitInt(1)))), 
                read($Heap, 
                  $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                  MultiIndexField(IndexField(LitInt(1)), LitInt(2)))))), 
          $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                    MultiIndexField(IndexField(LitInt(2)), LitInt(0)))), 
                read($Heap, 
                  $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                  MultiIndexField(IndexField(LitInt(2)), LitInt(1)))), 
              read($Heap, 
                $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                MultiIndexField(IndexField(LitInt(2)), LitInt(2)))))));
}

function _module.MultiArrayTests.StateAsSeq#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.MultiArrayTests.StateAsSeq
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.MultiArrayTests.StateAsSeq($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.MultiArrayTests())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this || $o == $Unbox(read($h0, this, _module.MultiArrayTests.a)): ref)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.MultiArrayTests.StateAsSeq($h0, this)
       == _module.MultiArrayTests.StateAsSeq($h1, this));

function _module.MultiArrayTests.StateAsSeq#requires(Heap, ref) : bool;

// #requires axiom for _module.MultiArrayTests.StateAsSeq
axiom (forall $Heap: Heap, this: ref :: 
  { _module.MultiArrayTests.StateAsSeq#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.MultiArrayTests())
       && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap)
     ==> _module.MultiArrayTests.StateAsSeq#requires($Heap, this)
       == _module.MultiArrayTests.Valid($Heap, this));

procedure {:verboseName "MultiArrayTests.StateAsSeq (well-formedness)"} CheckWellformed$$_module.MultiArrayTests.StateAsSeq(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiArrayTests.StateAsSeq (well-formedness)"} CheckWellformed$$_module.MultiArrayTests.StateAsSeq(this: ref)
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
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;

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
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.MultiArrayTests?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this || $o == $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         ==> $_ReadsFrame[$o, $f]);
    assume _module.MultiArrayTests.Valid#canCall($Heap, this);
    assume {:id "id297"} _module.MultiArrayTests.Valid($Heap, this);
    assert {:id "id298"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.MultiArrayTests.a];
    assert {:id "id299"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.MultiArrayTests.StateAsSeq($Heap, this), TSeq(TSeq(TInt)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#2 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id300"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id301"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id302"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#3 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(0)), LitInt(0))];
        b$reqreads#4 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id303"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id304"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id305"} 0 <= LitInt(1)
           && LitInt(1)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#5 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(0)), LitInt(1))];
        b$reqreads#6 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id306"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id307"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id308"} 0 <= LitInt(2)
           && LitInt(2)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#7 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(0)), LitInt(2))];
        b$reqreads#8 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id309"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id310"} 0 <= LitInt(1)
           && LitInt(1)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id311"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(1)), LitInt(0))];
        b$reqreads#10 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id312"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id313"} 0 <= LitInt(1)
           && LitInt(1)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id314"} 0 <= LitInt(1)
           && LitInt(1)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#11 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(1)), LitInt(1))];
        b$reqreads#12 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id315"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id316"} 0 <= LitInt(1)
           && LitInt(1)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id317"} 0 <= LitInt(2)
           && LitInt(2)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(1)), LitInt(2))];
        b$reqreads#14 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id318"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id319"} 0 <= LitInt(2)
           && LitInt(2)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id320"} 0 <= LitInt(0)
           && LitInt(0)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#15 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(2)), LitInt(0))];
        b$reqreads#16 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id321"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id322"} 0 <= LitInt(2)
           && LitInt(2)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id323"} 0 <= LitInt(1)
           && LitInt(1)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#17 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(2)), LitInt(1))];
        b$reqreads#18 := $_ReadsFrame[this, _module.MultiArrayTests.a];
        assert {:id "id324"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id325"} 0 <= LitInt(2)
           && LitInt(2)
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id326"} 0 <= LitInt(2)
           && LitInt(2)
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        b$reqreads#19 := $_ReadsFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(LitInt(2)), LitInt(2))];
        assume {:id "id327"} _module.MultiArrayTests.StateAsSeq($Heap, this)
           == Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                        read($Heap, 
                          $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                          MultiIndexField(IndexField(LitInt(0)), LitInt(0)))), 
                      read($Heap, 
                        $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                        MultiIndexField(IndexField(LitInt(0)), LitInt(1)))), 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                      MultiIndexField(IndexField(LitInt(0)), LitInt(2)))))), 
              $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                      read($Heap, 
                        $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                        MultiIndexField(IndexField(LitInt(1)), LitInt(0)))), 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                      MultiIndexField(IndexField(LitInt(1)), LitInt(1)))), 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                    MultiIndexField(IndexField(LitInt(1)), LitInt(2)))))), 
            $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                      MultiIndexField(IndexField(LitInt(2)), LitInt(0)))), 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                    MultiIndexField(IndexField(LitInt(2)), LitInt(1)))), 
                read($Heap, 
                  $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                  MultiIndexField(IndexField(LitInt(2)), LitInt(2))))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.MultiArrayTests.StateAsSeq($Heap, this), TSeq(TSeq(TInt)));
        assert {:id "id328"} b$reqreads#2;
        assert {:id "id329"} b$reqreads#3;
        assert {:id "id330"} b$reqreads#4;
        assert {:id "id331"} b$reqreads#5;
        assert {:id "id332"} b$reqreads#6;
        assert {:id "id333"} b$reqreads#7;
        assert {:id "id334"} b$reqreads#8;
        assert {:id "id335"} b$reqreads#9;
        assert {:id "id336"} b$reqreads#10;
        assert {:id "id337"} b$reqreads#11;
        assert {:id "id338"} b$reqreads#12;
        assert {:id "id339"} b$reqreads#13;
        assert {:id "id340"} b$reqreads#14;
        assert {:id "id341"} b$reqreads#15;
        assert {:id "id342"} b$reqreads#16;
        assert {:id "id343"} b$reqreads#17;
        assert {:id "id344"} b$reqreads#18;
        assert {:id "id345"} b$reqreads#19;
        return;

        assume false;
    }
}



procedure {:verboseName "MultiArrayTests.Report (well-formedness)"} CheckWellFormed$$_module.MultiArrayTests.Report(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiArrayTests.Report (call)"} Call$$_module.MultiArrayTests.Report(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id348"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  requires {:id "id349"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.MultiArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id350"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     && 
    _module.MultiArrayTests.Valid($Heap, this)
     && 
    _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3)
     && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultiArrayTests.Report (correctness)"} Impl$$_module.MultiArrayTests.Report(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id351"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     && 
    _module.MultiArrayTests.Valid($Heap, this)
     && 
    _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3)
     && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.MultiArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id352"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  ensures {:id "id353"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiArrayTests.Report (correctness)"} Impl$$_module.MultiArrayTests.Report(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Report, Impl$$_module.MultiArrayTests.Report
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(186,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.MultiArrayTests?(), $Heap);
    assert {:id "id354"} {:subsumption 0} _module.MultiArrayTests.Valid#canCall($Heap, this)
       ==> _module.MultiArrayTests.Valid($Heap, this)
         || _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           == LitInt(3);
    assert {:id "id355"} {:subsumption 0} _module.MultiArrayTests.Valid#canCall($Heap, this)
       ==> _module.MultiArrayTests.Valid($Heap, this)
         || _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           == LitInt(3);
    assume _module.MultiArrayTests.StateAsSeq#canCall($Heap, this);
    assume _module.MultiArrayTests.StateAsSeq#canCall($Heap, this);
    assume true;
}



procedure {:verboseName "MultiArrayTests.Run (well-formedness)"} CheckWellFormed$$_module.MultiArrayTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiArrayTests.Run (call)"} Call$$_module.MultiArrayTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id358"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  requires {:id "id359"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.MultiArrayTests.Valid#canCall($Heap, this);
  free ensures {:id "id360"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     && 
    _module.MultiArrayTests.Valid($Heap, this)
     && 
    _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3)
     && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), this, _module.MultiArrayTests.a)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultiArrayTests.Run (correctness)"} Impl$$_module.MultiArrayTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MultiArrayTests())
         && $IsAlloc(this, Tclass._module.MultiArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id361"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     && 
    _module.MultiArrayTests.Valid($Heap, this)
     && 
    _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3)
     && _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
       == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.MultiArrayTests.Valid#canCall($Heap, this);
  ensures {:id "id362"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  ensures {:id "id363"} _module.MultiArrayTests.Valid#canCall($Heap, this)
     ==> _module.MultiArrayTests.Valid($Heap, this)
       || _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
         == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), this, _module.MultiArrayTests.a)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiArrayTests.Run (correctness)"} Impl$$_module.MultiArrayTests.Run(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var j#0_0: int;
  var i#0_1: int;
  var j#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var j#1_0: int;
  var i#1_1: int;
  var j#1_1: int;

    // AddMethodImpl: Run, Impl$$_module.MultiArrayTests.Run
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(190,5)
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(193,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        havoc j#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id364"} {:subsumption 0} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#0_0
           && i#0_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref))
        {
            if (LitInt(0) <= j#0_0)
            {
                assert {:id "id365"} {:subsumption 0} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
            }
        }

        assume true;
        assume LitInt(0) <= i#0_0
           && i#0_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           && 
          LitInt(0) <= j#0_0
           && j#0_0
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id366"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id367"} {:subsumption 0} 0 <= i#0_0
           && i#0_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id368"} {:subsumption 0} 0 <= j#0_0
           && j#0_0
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assume true;
        assert {:id "id369"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(i#0_0), j#0_0)];
        assume true;
        havoc i#0_1;
        havoc j#0_1;
        assume true;
        assume LitInt(0) <= i#0_1
           && i#0_1
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           && 
          LitInt(0) <= j#0_1
           && j#0_1
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assume !(i#0_0 == i#0_1 && j#0_0 == j#0_1);
        assert {:id "id370"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref
           || MultiIndexField(IndexField(i#0_0), j#0_0)
             != MultiIndexField(IndexField(i#0_1), j#0_1)
           || i#0_0 + Mul(LitInt(2), j#0_0) == i#0_1 + Mul(LitInt(2), j#0_1);
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
             || (exists i#0_2: int, j#0_2: int :: 
              LitInt(0) <= i#0_2
                 && i#0_2
                   < _System.array2.Length0($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
                 && 
                LitInt(0) <= j#0_2
                 && j#0_2
                   < _System.array2.Length1($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref
                 && $f == MultiIndexField(IndexField(i#0_2), j#0_2)));
        assume (forall i#0_2: int, j#0_2: int :: 
          LitInt(0) <= i#0_2
               && i#0_2
                 < _System.array2.Length0($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
               && 
              LitInt(0) <= j#0_2
               && j#0_2
                 < _System.array2.Length1($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref, 
                MultiIndexField(IndexField(i#0_2), j#0_2))
               == $Box(i#0_2 + Mul(LitInt(2), j#0_2)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(196,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id371"} Call$$_module.MultiArrayTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(199,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        havoc j#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id372"} {:subsumption 0} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        }

        if (LitInt(0) <= i#1_0
           && i#1_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref))
        {
            if (LitInt(0) <= j#1_0)
            {
                assert {:id "id373"} {:subsumption 0} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
            }
        }

        assume true;
        assume LitInt(0) <= i#1_0
           && i#1_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           && 
          LitInt(0) <= j#1_0
           && j#1_0
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id374"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id375"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id376"} {:subsumption 0} 0 <= j#1_0
           && j#1_0
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assume true;
        assert {:id "id377"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, MultiIndexField(IndexField(i#1_0), j#1_0)];
        assert {:id "id378"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref != null;
        assert {:id "id379"} {:subsumption 0} 0 <= j#1_0
           && j#1_0
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assert {:id "id380"} {:subsumption 0} 0 <= i#1_0
           && i#1_0
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assume true;
        havoc i#1_1;
        havoc j#1_1;
        assume true;
        assume LitInt(0) <= i#1_1
           && i#1_1
             < _System.array2.Length0($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref)
           && 
          LitInt(0) <= j#1_1
           && j#1_1
             < _System.array2.Length1($Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref);
        assume !(i#1_0 == i#1_1 && j#1_0 == j#1_1);
        assert {:id "id381"} $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref
             != $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref
           || MultiIndexField(IndexField(i#1_0), j#1_0)
             != MultiIndexField(IndexField(i#1_1), j#1_1)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                MultiIndexField(IndexField(j#1_0), i#1_0))): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.MultiArrayTests.a)): ref, 
                MultiIndexField(IndexField(j#1_1), i#1_1))): int;
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
             || (exists i#1_2: int, j#1_2: int :: 
              LitInt(0) <= i#1_2
                 && i#1_2
                   < _System.array2.Length0($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
                 && 
                LitInt(0) <= j#1_2
                 && j#1_2
                   < _System.array2.Length1($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref
                 && $f == MultiIndexField(IndexField(i#1_2), j#1_2)));
        assume (forall i#1_2: int, j#1_2: int :: 
          LitInt(0) <= i#1_2
               && i#1_2
                 < _System.array2.Length0($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
               && 
              LitInt(0) <= j#1_2
               && j#1_2
                 < _System.array2.Length1($Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref)
             ==> read($Heap, 
                $Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref, 
                MultiIndexField(IndexField(i#1_2), j#1_2))
               == $Box($Unbox(read($prevHeap, 
                    $Unbox(read($prevHeap, this, _module.MultiArrayTests.a)): ref, 
                    MultiIndexField(IndexField(j#1_2), i#1_2))): int));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(202,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id382"} Call$$_module.MultiArrayTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
}



// $Is axiom for non-null type _module.MultiArrayTests
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MultiArrayTests()) } 
    { $Is(c#0, Tclass._module.MultiArrayTests?()) } 
  $Is(c#0, Tclass._module.MultiArrayTests())
     <==> $Is(c#0, Tclass._module.MultiArrayTests?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MultiArrayTests
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MultiArrayTests(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MultiArrayTests?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MultiArrayTests(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MultiArrayTests?(), $h));

const unique class._module.Thing?: ClassName;

function Tclass._module.Thing?() : Ty
uses {
// Tclass._module.Thing? Tag
axiom Tag(Tclass._module.Thing?()) == Tagclass._module.Thing?
   && TagFamily(Tclass._module.Thing?()) == tytagFamily$Thing;
}

const unique Tagclass._module.Thing?: TyTag;

// Box/unbox axiom for Tclass._module.Thing?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Thing?()) } 
  $IsBox(bx, Tclass._module.Thing?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Thing?()));

// $Is axiom for class Thing
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Thing?()) } 
  $Is($o, Tclass._module.Thing?())
     <==> $o == null || dtype($o) == Tclass._module.Thing?());

// $IsAlloc axiom for class Thing
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Thing?(), $h) } 
  $IsAlloc($o, Tclass._module.Thing?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Thing.i: Field
uses {
axiom FDim(_module.Thing.i) == 0
   && FieldOfDecl(class._module.Thing?, field$i) == _module.Thing.i
   && !$IsGhostField(_module.Thing.i);
}

// Thing.i: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Thing.i)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Thing?()
     ==> $Is($Unbox(read($h, $o, _module.Thing.i)): int, TInt));

// Thing.i: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Thing.i)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Thing?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Thing.i)): int, TInt, $h));

const _module.Thing.r: Field
uses {
axiom FDim(_module.Thing.r) == 0
   && FieldOfDecl(class._module.Thing?, field$r) == _module.Thing.r
   && !$IsGhostField(_module.Thing.r);
}

// Thing.r: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Thing.r)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Thing?()
     ==> $Is($Unbox(read($h, $o, _module.Thing.r)): real, TReal));

// Thing.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Thing.r)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Thing?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Thing.r)): real, TReal, $h));

const _module.Thing.t: Field
uses {
axiom FDim(_module.Thing.t) == 0
   && FieldOfDecl(class._module.Thing?, field$t) == _module.Thing.t
   && !$IsGhostField(_module.Thing.t);
}

// Thing.t: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Thing.t)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Thing?()
     ==> $Is($Unbox(read($h, $o, _module.Thing.t)): ref, Tclass._module.Thing?()));

// Thing.t: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Thing.t)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Thing?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Thing.t)): ref, Tclass._module.Thing?(), $h));

procedure {:verboseName "Thing._ctor (well-formedness)"} CheckWellFormed$$_module.Thing.__ctor(i#0: int, 
    r#0: real, 
    t#0: ref
       where $Is(t#0, Tclass._module.Thing?())
         && $IsAlloc(t#0, Tclass._module.Thing?(), $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Thing() : Ty
uses {
// Tclass._module.Thing Tag
axiom Tag(Tclass._module.Thing()) == Tagclass._module.Thing
   && TagFamily(Tclass._module.Thing()) == tytagFamily$Thing;
}

const unique Tagclass._module.Thing: TyTag;

// Box/unbox axiom for Tclass._module.Thing
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Thing()) } 
  $IsBox(bx, Tclass._module.Thing())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Thing()));

procedure {:verboseName "Thing._ctor (call)"} Call$$_module.Thing.__ctor(i#0: int, 
    r#0: real, 
    t#0: ref
       where $Is(t#0, Tclass._module.Thing?())
         && $IsAlloc(t#0, Tclass._module.Thing?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Thing())
         && $IsAlloc(this, Tclass._module.Thing(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id386"} $Unbox(read($Heap, this, _module.Thing.i)): int == i#0;
  ensures {:id "id387"} $Unbox(read($Heap, this, _module.Thing.r)): real == r#0;
  ensures {:id "id388"} $Unbox(read($Heap, this, _module.Thing.t)): ref == t#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Thing._ctor (correctness)"} Impl$$_module.Thing.__ctor(i#0: int, 
    r#0: real, 
    t#0: ref
       where $Is(t#0, Tclass._module.Thing?())
         && $IsAlloc(t#0, Tclass._module.Thing?(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id389"} $Unbox(read($Heap, this, _module.Thing.i)): int == i#0;
  ensures {:id "id390"} $Unbox(read($Heap, this, _module.Thing.r)): real == r#0;
  ensures {:id "id391"} $Unbox(read($Heap, this, _module.Thing.t)): ref == t#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Thing._ctor (correctness)"} Impl$$_module.Thing.__ctor(i#0: int, r#0: real, t#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.i: int;
  var this.r: real;
  var this.t: ref;

    // AddMethodImpl: _ctor, Impl$$_module.Thing.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(211,93)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(212,12)
    assume true;
    assume true;
    this.i := i#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(213,12)
    assume true;
    assume true;
    this.r := r#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(214,12)
    assume true;
    assume true;
    this.t := t#0;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(211,93)
    assume this != null && $Is(this, Tclass._module.Thing?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Thing.i)): int == this.i;
    assume $Unbox(read($Heap, this, _module.Thing.r)): real == this.r;
    assume $Unbox(read($Heap, this, _module.Thing.t)): ref == this.t;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(211,93)
}



procedure {:verboseName "Thing.Print (well-formedness)"} CheckWellFormed$$_module.Thing.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Thing())
         && $IsAlloc(this, Tclass._module.Thing(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Thing.Print (call)"} Call$$_module.Thing.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Thing())
         && $IsAlloc(this, Tclass._module.Thing(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Thing.Print (correctness)"} Impl$$_module.Thing.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Thing())
         && $IsAlloc(this, Tclass._module.Thing(), $Heap))
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



procedure {:verboseName "Thing.PrintMany (well-formedness)"} CheckWellFormed$$_module.Thing.PrintMany(things#0: Seq
       where $Is(things#0, TSeq(Tclass._module.Thing()))
         && $IsAlloc(things#0, TSeq(Tclass._module.Thing()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Thing.PrintMany (call)"} Call$$_module.Thing.PrintMany(things#0: Seq
       where $Is(things#0, TSeq(Tclass._module.Thing()))
         && $IsAlloc(things#0, TSeq(Tclass._module.Thing()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Thing.PrintMany (correctness)"} Impl$$_module.Thing.PrintMany(things#0: Seq
       where $Is(things#0, TSeq(Tclass._module.Thing()))
         && $IsAlloc(things#0, TSeq(Tclass._module.Thing()), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Thing.PrintMany (correctness)"} Impl$$_module.Thing.PrintMany(things#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: PrintMany, Impl$$_module.Thing.PrintMany
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(222,5)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(223,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(224,13)
    assume true;
    assume true;
    sep#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(225,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length(things#0) - i#0;
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
      free invariant Seq#Length(things#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(things#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(things#0) - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(226,7)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(227,22)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id397"} 0 <= i#0 && i#0 < Seq#Length(things#0);
        assume true;
        assert {:id "id398"} $Unbox(Seq#Index(things#0, i#0)): ref != null;
        call {:id "id399"} Call$$_module.Thing.Print($Unbox(Seq#Index(things#0, i#0)): ref);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(228,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(229,11)
        assume true;
        assume true;
        sep#0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(44))), $Box(char#FromInt(32))));
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(225,5)
        assert {:id "id402"} 0 <= $decr$loop#00 || Seq#Length(things#0) - i#0 == $decr$loop#00;
        assert {:id "id403"} Seq#Length(things#0) - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(231,5)
    assume true;
}



// $Is axiom for non-null type _module.Thing
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Thing()) } { $Is(c#0, Tclass._module.Thing?()) } 
  $Is(c#0, Tclass._module.Thing())
     <==> $Is(c#0, Tclass._module.Thing?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Thing
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Thing(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Thing?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Thing(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Thing?(), $h));

const unique class._module.ObjectTests?: ClassName;

function Tclass._module.ObjectTests?() : Ty
uses {
// Tclass._module.ObjectTests? Tag
axiom Tag(Tclass._module.ObjectTests?()) == Tagclass._module.ObjectTests?
   && TagFamily(Tclass._module.ObjectTests?()) == tytagFamily$ObjectTests;
}

const unique Tagclass._module.ObjectTests?: TyTag;

// Box/unbox axiom for Tclass._module.ObjectTests?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ObjectTests?()) } 
  $IsBox(bx, Tclass._module.ObjectTests?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ObjectTests?()));

// $Is axiom for class ObjectTests
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ObjectTests?()) } 
  $Is($o, Tclass._module.ObjectTests?())
     <==> $o == null || dtype($o) == Tclass._module.ObjectTests?());

// $IsAlloc axiom for class ObjectTests
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ObjectTests?(), $h) } 
  $IsAlloc($o, Tclass._module.ObjectTests?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.ObjectTests.thing1: Field
uses {
axiom FDim(_module.ObjectTests.thing1) == 0
   && FieldOfDecl(class._module.ObjectTests?, field$thing1)
     == _module.ObjectTests.thing1
   && !$IsGhostField(_module.ObjectTests.thing1);
}

// ObjectTests.thing1: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ObjectTests.thing1)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ObjectTests?()
     ==> $Is($Unbox(read($h, $o, _module.ObjectTests.thing1)): ref, Tclass._module.Thing()));

// ObjectTests.thing1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ObjectTests.thing1)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ObjectTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ObjectTests.thing1)): ref, 
      Tclass._module.Thing(), 
      $h));

const _module.ObjectTests.thing2: Field
uses {
axiom FDim(_module.ObjectTests.thing2) == 0
   && FieldOfDecl(class._module.ObjectTests?, field$thing2)
     == _module.ObjectTests.thing2
   && !$IsGhostField(_module.ObjectTests.thing2);
}

// ObjectTests.thing2: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ObjectTests.thing2)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ObjectTests?()
     ==> $Is($Unbox(read($h, $o, _module.ObjectTests.thing2)): ref, Tclass._module.Thing()));

// ObjectTests.thing2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ObjectTests.thing2)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ObjectTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ObjectTests.thing2)): ref, 
      Tclass._module.Thing(), 
      $h));

const _module.ObjectTests.thing3: Field
uses {
axiom FDim(_module.ObjectTests.thing3) == 0
   && FieldOfDecl(class._module.ObjectTests?, field$thing3)
     == _module.ObjectTests.thing3
   && !$IsGhostField(_module.ObjectTests.thing3);
}

// ObjectTests.thing3: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ObjectTests.thing3)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ObjectTests?()
     ==> $Is($Unbox(read($h, $o, _module.ObjectTests.thing3)): ref, Tclass._module.Thing()));

// ObjectTests.thing3: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ObjectTests.thing3)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ObjectTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ObjectTests.thing3)): ref, 
      Tclass._module.Thing(), 
      $h));

// function declaration for _module.ObjectTests.Valid
function _module.ObjectTests.Valid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.ObjectTests.Valid (revealed)
axiom {:id "id404"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.ObjectTests.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.ObjectTests.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ObjectTests())
           && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
       ==> _module.ObjectTests.Valid($Heap, this)
         == (
          $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
           && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref));
}

function _module.ObjectTests.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.ObjectTests.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ObjectTests.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.ObjectTests())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ObjectTests.Valid($h0, this) == _module.ObjectTests.Valid($h1, this));

function _module.ObjectTests.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.ObjectTests.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.ObjectTests.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ObjectTests())
       && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap)
     ==> _module.ObjectTests.Valid#requires($Heap, this) == true);

procedure {:verboseName "ObjectTests.Valid (well-formedness)"} CheckWellformed$$_module.ObjectTests.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.Valid (well-formedness)"} CheckWellformed$$_module.ObjectTests.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
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
        b$reqreads#0 := $_ReadsFrame[this, _module.ObjectTests.thing1];
        b$reqreads#1 := $_ReadsFrame[this, _module.ObjectTests.thing2];
        if ($Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
           != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref)
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.ObjectTests.thing1];
            b$reqreads#3 := $_ReadsFrame[this, _module.ObjectTests.thing3];
        }

        if ($Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.ObjectTests.thing2];
            b$reqreads#5 := $_ReadsFrame[this, _module.ObjectTests.thing3];
        }

        assume {:id "id405"} _module.ObjectTests.Valid($Heap, this)
           == (
            $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
               != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
               != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
             && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
               != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ObjectTests.Valid($Heap, this), TBool);
        assert {:id "id406"} b$reqreads#0;
        assert {:id "id407"} b$reqreads#1;
        assert {:id "id408"} b$reqreads#2;
        assert {:id "id409"} b$reqreads#3;
        assert {:id "id410"} b$reqreads#4;
        assert {:id "id411"} b$reqreads#5;
        return;

        assume false;
    }
}



procedure {:verboseName "ObjectTests._ctor (well-formedness)"} CheckWellFormed$$_module.ObjectTests.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests._ctor (call)"} Call$$_module.ObjectTests.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, alloc)): bool
     ==> 
    $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, alloc)): bool
     ==> 
    $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, alloc)): bool
     ==> _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id416"} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, alloc)): bool;
  ensures {:id "id417"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, alloc)): bool;
  ensures {:id "id418"} $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, alloc)): bool;
  free ensures {:id "id419"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests._ctor (correctness)"} Impl$$_module.ObjectTests.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, alloc)): bool
     ==> 
    $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, alloc)): bool
     ==> 
    $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, alloc)): bool
     ==> _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id420"} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, alloc)): bool;
  ensures {:id "id421"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, alloc)): bool;
  ensures {:id "id422"} $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null
     && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, alloc)): bool;
  ensures {:id "id423"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  ensures {:id "id424"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  ensures {:id "id425"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests._ctor (correctness)"} Impl$$_module.ObjectTests.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.thing1: ref;
  var this.thing2: ref;
  var this.thing3: ref;
  var defass#this.thing1: bool;
  var defass#this.thing2: bool;
  var defass#this.thing3: bool;
  var $nw: ref;
  var i##0: int;
  var r##0: real;
  var t##0: ref;
  var newtype$check#0: ref;
  var i##1: int;
  var r##1: real;
  var t##1: ref;
  var newtype$check#1: ref;
  var i##2: int;
  var r##2: real;
  var t##2: ref;
  var newtype$check#2: ref;

    // AddMethodImpl: _ctor, Impl$$_module.ObjectTests.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(242,84)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(243,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(243,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##0 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##0 := LitReal(1e0);
    newtype$check#0 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := null;
    call {:id "id426"} $nw := Call$$_module.Thing.__ctor(i##0, r##0, t##0);
    // TrCallStmt: After ProcessCallStmt
    this.thing1 := $nw;
    defass#this.thing1 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(244,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(244,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##1 := LitInt(2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##1 := LitReal(2e0);
    newtype$check#1 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##1 := null;
    call {:id "id428"} $nw := Call$$_module.Thing.__ctor(i##1, r##1, t##1);
    // TrCallStmt: After ProcessCallStmt
    this.thing2 := $nw;
    defass#this.thing2 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(245,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(245,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##2 := LitInt(3);
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##2 := LitReal(3e0);
    newtype$check#2 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##2 := null;
    call {:id "id430"} $nw := Call$$_module.Thing.__ctor(i##2, r##2, t##2);
    // TrCallStmt: After ProcessCallStmt
    this.thing3 := $nw;
    defass#this.thing3 := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(242,84)
    assert {:id "id432"} defass#this.thing1;
    assert {:id "id433"} defass#this.thing2;
    assert {:id "id434"} defass#this.thing3;
    assume this != null && $Is(this, Tclass._module.ObjectTests?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref == this.thing1;
    assume $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref == this.thing2;
    assume $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref == this.thing3;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(242,84)
}



procedure {:verboseName "ObjectTests.Initialize (well-formedness)"} CheckWellFormed$$_module.ObjectTests.Initialize(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.Initialize (call)"} Call$$_module.ObjectTests.Initialize(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  // user-defined preconditions
  requires {:id "id437"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  requires {:id "id438"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  requires {:id "id439"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  free ensures {:id "id440"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests.Initialize (correctness)"} Impl$$_module.ObjectTests.Initialize(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id441"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id442"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  ensures {:id "id443"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  ensures {:id "id444"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.Initialize (correctness)"} Impl$$_module.ObjectTests.Initialize(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: real;
  var $rhs#2: ref;
  var newtype$check#0: ref;
  var $rhs#3: int;
  var $rhs#4: real;
  var $rhs#5: ref;
  var newtype$check#1: ref;
  var $rhs#6: int;
  var $rhs#7: real;
  var $rhs#8: ref;
  var newtype$check#2: ref;

    // AddMethodImpl: Initialize, Impl$$_module.ObjectTests.Initialize
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(249,14)
    assert {:id "id445"} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null;
    assume true;
    assert {:id "id446"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, _module.Thing.i];
    assume true;
    $rhs#0 := LitInt(1);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, 
      _module.Thing.i, 
      $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(249,29)
    assert {:id "id449"} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null;
    assume true;
    assert {:id "id450"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, _module.Thing.r];
    assume true;
    $rhs#1 := LitReal(1e0);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, 
      _module.Thing.r, 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(249,46)
    assert {:id "id453"} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null;
    assume true;
    assert {:id "id454"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, _module.Thing.t];
    newtype$check#0 := null;
    assume true;
    $rhs#2 := null;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, 
      _module.Thing.t, 
      $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(250,14)
    assert {:id "id457"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null;
    assume true;
    assert {:id "id458"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, _module.Thing.i];
    assume true;
    $rhs#3 := LitInt(2);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, 
      _module.Thing.i, 
      $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(250,29)
    assert {:id "id461"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null;
    assume true;
    assert {:id "id462"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, _module.Thing.r];
    assume true;
    $rhs#4 := LitReal(2e0);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, 
      _module.Thing.r, 
      $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(250,46)
    assert {:id "id465"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null;
    assume true;
    assert {:id "id466"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, _module.Thing.t];
    newtype$check#1 := null;
    assume true;
    $rhs#5 := null;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, 
      _module.Thing.t, 
      $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(251,14)
    assert {:id "id469"} $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null;
    assume true;
    assert {:id "id470"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, _module.Thing.i];
    assume true;
    $rhs#6 := LitInt(3);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, 
      _module.Thing.i, 
      $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(251,29)
    assert {:id "id473"} $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null;
    assume true;
    assert {:id "id474"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, _module.Thing.r];
    assume true;
    $rhs#7 := LitReal(3e0);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, 
      _module.Thing.r, 
      $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(251,46)
    assert {:id "id477"} $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null;
    assume true;
    assert {:id "id478"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, _module.Thing.t];
    newtype$check#2 := null;
    assume true;
    $rhs#8 := null;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, 
      _module.Thing.t, 
      $Box($rhs#8));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "ObjectTests.Report (well-formedness)"} CheckWellFormed$$_module.ObjectTests.Report(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.Report (call)"} Call$$_module.ObjectTests.Report(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests.Report (correctness)"} Impl$$_module.ObjectTests.Report(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.Report (correctness)"} Impl$$_module.ObjectTests.Report(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var things##0: Seq;

    // AddMethodImpl: Report, Impl$$_module.ObjectTests.Report
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(255,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    things##0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.ObjectTests.thing1)), 
        read($Heap, this, _module.ObjectTests.thing2)), 
      read($Heap, this, _module.ObjectTests.thing3));
    call {:id "id481"} Call$$_module.Thing.PrintMany(things##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(256,5)
    assume true;
}



procedure {:verboseName "ObjectTests.Run (well-formedness)"} CheckWellFormed$$_module.ObjectTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.Run (call)"} Call$$_module.ObjectTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  // user-defined preconditions
  requires {:id "id484"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  requires {:id "id485"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  requires {:id "id486"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  free ensures {:id "id487"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests.Run (correctness)"} Impl$$_module.ObjectTests.Run(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id488"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id489"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  ensures {:id "id490"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  ensures {:id "id491"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.Run (correctness)"} Impl$$_module.ObjectTests.Run(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Run, Impl$$_module.ObjectTests.Run
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(260,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id492"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id493"} Call$$_module.ObjectTests.BasicCases(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(261,21)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id494"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id495"} Call$$_module.ObjectTests.BadFieldAccesses(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(262,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id496"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id497"} Call$$_module.ObjectTests.Functions(this);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ObjectTests.BasicCases (well-formedness)"} CheckWellFormed$$_module.ObjectTests.BasicCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.BasicCases (call)"} Call$$_module.ObjectTests.BasicCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  // user-defined preconditions
  requires {:id "id500"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  requires {:id "id501"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  requires {:id "id502"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  free ensures {:id "id503"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests.BasicCases (correctness)"} Impl$$_module.ObjectTests.BasicCases(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id504"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id505"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  ensures {:id "id506"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  ensures {:id "id507"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.BasicCases (correctness)"} Impl$$_module.ObjectTests.BasicCases(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var things#0: Seq
     where $Is(things#0, TSeq(Tclass._module.Thing()))
       && $IsAlloc(things#0, TSeq(Tclass._module.Thing()), $Heap);
  var t#0_0: ref;
  var t#0_1: ref;
  var $prevHeap: Heap;
  var t#1_0: ref;
  var t#1_1: ref;
  var t#2_0: ref;
  var t#2_1: ref;

    // AddMethodImpl: BasicCases, Impl$$_module.ObjectTests.BasicCases
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(266,5)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(267,28)
    assume true;
    assume true;
    things#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.ObjectTests.thing1)), 
        read($Heap, this, _module.ObjectTests.thing2)), 
      read($Heap, this, _module.ObjectTests.thing3));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(270,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id509"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id510"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(271,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.Thing())
           && $IsAlloc(t#0_0, Tclass._module.Thing(), $Heap);
        assume true;
        assume Seq#Contains(things#0, $Box(t#0_0));
        assert {:id "id511"} {:subsumption 0} t#0_0 != null;
        assume true;
        assert {:id "id512"} $_ModifiesFrame[t#0_0, _module.Thing.i];
        assume true;
        havoc t#0_1;
        assume $Is(t#0_1, Tclass._module.Thing())
           && $IsAlloc(t#0_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#0_1));
        assume t#0_0 != t#0_1;
        assert {:id "id513"} t#0_0 != t#0_1 || _module.Thing.i != _module.Thing.i || LitInt(0) == LitInt(0);
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
             || (exists t#0_2: ref :: 
              $Is(t#0_2, Tclass._module.Thing())
                 && Seq#Contains(things#0, $Box(t#0_2))
                 && $o == t#0_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#0_0: ref :: 
          { read($Heap, t#inv#0_0, _module.Thing.i) } 
          $Is(t#inv#0_0, Tclass._module.Thing())
               && 
              t#inv#0_0 != null
               && Seq#Contains(things#0, $Box(t#inv#0_0))
             ==> read($Heap, t#inv#0_0, _module.Thing.i) == $Box(LitInt(0)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(274,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id514"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(277,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id515"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id516"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(278,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#1_0;
        assume $Is(t#1_0, Tclass._module.Thing())
           && $IsAlloc(t#1_0, Tclass._module.Thing(), $Heap);
        if (Seq#Contains(things#0, $Box(t#1_0)))
        {
            assert {:id "id517"} {:subsumption 0} t#1_0 != null;
        }

        assume true;
        assume Seq#Contains(things#0, $Box(t#1_0))
           && $Unbox(read($Heap, t#1_0, _module.Thing.r)): real != 2e0;
        assert {:id "id518"} {:subsumption 0} t#1_0 != null;
        assume true;
        assert {:id "id519"} $_ModifiesFrame[t#1_0, _module.Thing.i];
        assert {:id "id520"} {:subsumption 0} t#1_0 != null;
        assume true;
        havoc t#1_1;
        assume $Is(t#1_1, Tclass._module.Thing())
           && $IsAlloc(t#1_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#1_1))
           && $Unbox(read($Heap, t#1_1, _module.Thing.r)): real != 2e0;
        assume t#1_0 != t#1_1;
        assert {:id "id521"} t#1_0 != t#1_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, t#1_0, _module.Thing.i)): int + 1
             == $Unbox(read($Heap, t#1_1, _module.Thing.i)): int + 1;
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
             || (exists t#1_2: ref :: 
              $Is(t#1_2, Tclass._module.Thing())
                 && 
                Seq#Contains(things#0, $Box(t#1_2))
                 && $Unbox(read($prevHeap, t#1_2, _module.Thing.r)): real != 2e0
                 && $o == t#1_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#1_0: ref :: 
          { read($Heap, t#inv#1_0, _module.Thing.i) } 
          $Is(t#inv#1_0, Tclass._module.Thing())
               && 
              t#inv#1_0 != null
               && 
              Seq#Contains(things#0, $Box(t#inv#1_0))
               && $Unbox(read($prevHeap, t#inv#1_0, _module.Thing.r)): real != 2e0
             ==> read($Heap, t#inv#1_0, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, t#inv#1_0, _module.Thing.i)): int + 1));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(281,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id522"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(284,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id523"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id524"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(285,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#2_0;
        assume $Is(t#2_0, Tclass._module.Thing())
           && $IsAlloc(t#2_0, Tclass._module.Thing(), $Heap);
        if (Seq#Contains(things#0, $Box(t#2_0)))
        {
            assert {:id "id525"} {:subsumption 0} t#2_0 != null;
        }

        assume true;
        assume Seq#Contains(things#0, $Box(t#2_0))
           && $Unbox(read($Heap, t#2_0, _module.Thing.i)): int != 3;
        assert {:id "id526"} {:subsumption 0} t#2_0 != null;
        assume true;
        assert {:id "id527"} $_ModifiesFrame[t#2_0, _module.Thing.i];
        assert {:id "id528"} {:subsumption 0} t#2_0 != null;
        assume true;
        havoc t#2_1;
        assume $Is(t#2_1, Tclass._module.Thing())
           && $IsAlloc(t#2_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#2_1))
           && $Unbox(read($Heap, t#2_1, _module.Thing.i)): int != 3;
        assume t#2_0 != t#2_1;
        assert {:id "id529"} t#2_0 != t#2_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, t#2_0, _module.Thing.i)): int + 1
             == $Unbox(read($Heap, t#2_1, _module.Thing.i)): int + 1;
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
             || (exists t#2_2: ref :: 
              $Is(t#2_2, Tclass._module.Thing())
                 && 
                Seq#Contains(things#0, $Box(t#2_2))
                 && $Unbox(read($prevHeap, t#2_2, _module.Thing.i)): int != 3
                 && $o == t#2_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#2_0: ref :: 
          { read($Heap, t#inv#2_0, _module.Thing.i) } 
          $Is(t#inv#2_0, Tclass._module.Thing())
               && 
              t#inv#2_0 != null
               && 
              Seq#Contains(things#0, $Box(t#inv#2_0))
               && $Unbox(read($prevHeap, t#inv#2_0, _module.Thing.i)): int != 3
             ==> read($Heap, t#inv#2_0, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, t#inv#2_0, _module.Thing.i)): int + 1));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(288,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id530"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ObjectTests.BadFieldAccesses (well-formedness)"} CheckWellFormed$$_module.ObjectTests.BadFieldAccesses(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.BadFieldAccesses (call)"} Call$$_module.ObjectTests.BadFieldAccesses(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  // user-defined preconditions
  requires {:id "id533"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  requires {:id "id534"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  requires {:id "id535"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  free ensures {:id "id536"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests.BadFieldAccesses (correctness)"} Impl$$_module.ObjectTests.BadFieldAccesses(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id537"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id538"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  ensures {:id "id539"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  ensures {:id "id540"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.BadFieldAccesses (correctness)"} Impl$$_module.ObjectTests.BadFieldAccesses(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var things#0: Seq
     where $Is(things#0, TSeq(Tclass._module.Thing()))
       && $IsAlloc(things#0, TSeq(Tclass._module.Thing()), $Heap);
  var $rhs#0: ref;
  var t#0_0: ref;
  var newtype$check#0_0: ref;
  var t#0_1: ref;
  var $prevHeap: Heap;
  var t#1_0: ref;
  var t#1_1: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var t#2_0: ref;
  var t#2_1: ref;

    // AddMethodImpl: BadFieldAccesses, Impl$$_module.ObjectTests.BadFieldAccesses
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(292,5)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(293,28)
    assume true;
    assume true;
    things#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.ObjectTests.thing1)), 
        read($Heap, this, _module.ObjectTests.thing2)), 
      read($Heap, this, _module.ObjectTests.thing3));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(296,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id542"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id543"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(297,14)
    assert {:id "id544"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null;
    assume true;
    assert {:id "id545"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, _module.Thing.t];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, 
      _module.Thing.t, 
      $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(298,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.Thing())
           && $IsAlloc(t#0_0, Tclass._module.Thing(), $Heap);
        if (Seq#Contains(things#0, $Box(t#0_0)))
        {
            assert {:id "id548"} {:subsumption 0} t#0_0 != null;
            newtype$check#0_0 := null;
            if ($Unbox(read($Heap, t#0_0, _module.Thing.t)): ref != null)
            {
                assert {:id "id549"} {:subsumption 0} t#0_0 != null;
                assert {:id "id550"} {:subsumption 0} $Unbox(read($Heap, t#0_0, _module.Thing.t)): ref != null;
            }
        }

        assume true;
        assume Seq#Contains(things#0, $Box(t#0_0))
           && ($Unbox(read($Heap, t#0_0, _module.Thing.t)): ref == null
             || $Unbox(read($Heap, $Unbox(read($Heap, t#0_0, _module.Thing.t)): ref, _module.Thing.i)): int
               == LitInt(1));
        assert {:id "id551"} {:subsumption 0} t#0_0 != null;
        assume true;
        assert {:id "id552"} $_ModifiesFrame[t#0_0, _module.Thing.i];
        assert {:id "id553"} {:subsumption 0} t#0_0 != null;
        assume true;
        havoc t#0_1;
        assume $Is(t#0_1, Tclass._module.Thing())
           && $IsAlloc(t#0_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#0_1))
           && ($Unbox(read($Heap, t#0_1, _module.Thing.t)): ref == null
             || $Unbox(read($Heap, $Unbox(read($Heap, t#0_1, _module.Thing.t)): ref, _module.Thing.i)): int
               == LitInt(1));
        assume t#0_0 != t#0_1;
        assert {:id "id554"} t#0_0 != t#0_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, t#0_0, _module.Thing.i)): int + 1
             == $Unbox(read($Heap, t#0_1, _module.Thing.i)): int + 1;
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
             || (exists t#0_2: ref :: 
              $Is(t#0_2, Tclass._module.Thing())
                 && 
                Seq#Contains(things#0, $Box(t#0_2))
                 && ($Unbox(read($prevHeap, t#0_2, _module.Thing.t)): ref == null
                   || $Unbox(read($prevHeap, $Unbox(read($prevHeap, t#0_2, _module.Thing.t)): ref, _module.Thing.i)): int
                     == LitInt(1))
                 && $o == t#0_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#0_0: ref :: 
          { read($Heap, t#inv#0_0, _module.Thing.i) } 
          $Is(t#inv#0_0, Tclass._module.Thing())
               && 
              t#inv#0_0 != null
               && 
              Seq#Contains(things#0, $Box(t#inv#0_0))
               && ($Unbox(read($prevHeap, t#inv#0_0, _module.Thing.t)): ref == null
                 || $Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, t#inv#0_0, _module.Thing.t)): ref, 
                      _module.Thing.i)): int
                   == LitInt(1))
             ==> read($Heap, t#inv#0_0, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, t#inv#0_0, _module.Thing.i)): int + 1));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(301,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id555"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(304,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id556"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id557"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(305,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#1_0;
        assume $Is(t#1_0, Tclass._module.Thing())
           && $IsAlloc(t#1_0, Tclass._module.Thing(), $Heap);
        assume true;
        assume Seq#Contains(things#0, $Box(t#1_0));
        assert {:id "id558"} {:subsumption 0} t#1_0 != null;
        assume true;
        assert {:id "id559"} $_ModifiesFrame[t#1_0, _module.Thing.i];
        assert {:id "id560"} {:subsumption 0} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null;
        assume true;
        havoc t#1_1;
        assume $Is(t#1_1, Tclass._module.Thing())
           && $IsAlloc(t#1_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#1_1));
        assume t#1_0 != t#1_1;
        assert {:id "id561"} t#1_0 != t#1_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, 
                  _module.Thing.i)): int
               + 1
             == $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, 
                  _module.Thing.i)): int
               + 1;
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
             || (exists t#1_2: ref :: 
              $Is(t#1_2, Tclass._module.Thing())
                 && Seq#Contains(things#0, $Box(t#1_2))
                 && $o == t#1_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#1_0: ref :: 
          { read($Heap, t#inv#1_0, _module.Thing.i) } 
          $Is(t#inv#1_0, Tclass._module.Thing())
               && 
              t#inv#1_0 != null
               && Seq#Contains(things#0, $Box(t#inv#1_0))
             ==> read($Heap, t#inv#1_0, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.ObjectTests.thing1)): ref, 
                      _module.Thing.i)): int
                   + 1));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(308,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id562"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(311,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id563"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id564"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(312,14)
    assert {:id "id565"} $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref != null;
    assume true;
    assert {:id "id566"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, _module.Thing.t];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref, 
      _module.Thing.t, 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(313,14)
    assert {:id "id569"} $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref != null;
    assume true;
    assert {:id "id570"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, _module.Thing.t];
    assume true;
    $rhs#2 := $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, 
      _module.Thing.t, 
      $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(314,14)
    assert {:id "id573"} $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref != null;
    assume true;
    assert {:id "id574"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, _module.Thing.t];
    assume true;
    $rhs#3 := $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref, 
      _module.Thing.t, 
      $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(315,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#2_0;
        assume $Is(t#2_0, Tclass._module.Thing())
           && $IsAlloc(t#2_0, Tclass._module.Thing(), $Heap);
        assume true;
        assume Seq#Contains(things#0, $Box(t#2_0));
        assert {:id "id577"} {:subsumption 0} t#2_0 != null;
        assert {:id "id578"} {:subsumption 0} $Unbox(read($Heap, t#2_0, _module.Thing.t)): ref != null;
        assume true;
        assert {:id "id579"} $_ModifiesFrame[$Unbox(read($Heap, t#2_0, _module.Thing.t)): ref, _module.Thing.i];
        assert {:id "id580"} {:subsumption 0} t#2_0 != null;
        assume true;
        havoc t#2_1;
        assume $Is(t#2_1, Tclass._module.Thing())
           && $IsAlloc(t#2_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#2_1));
        assume t#2_0 != t#2_1;
        assert {:id "id581"} $Unbox(read($Heap, t#2_0, _module.Thing.t)): ref
             != $Unbox(read($Heap, t#2_1, _module.Thing.t)): ref
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, t#2_0, _module.Thing.i)): int
             == $Unbox(read($Heap, t#2_1, _module.Thing.i)): int;
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
             || (exists t#2_2: ref :: 
              $Is(t#2_2, Tclass._module.Thing())
                 && Seq#Contains(things#0, $Box(t#2_2))
                 && $o == $Unbox(read($prevHeap, t#2_2, _module.Thing.t)): ref
                 && $f == _module.Thing.i));
        assume (forall t#2_2: ref :: 
          $Is(t#2_2, Tclass._module.Thing()) && Seq#Contains(things#0, $Box(t#2_2))
             ==> read($Heap, $Unbox(read($prevHeap, t#2_2, _module.Thing.t)): ref, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, t#2_2, _module.Thing.i)): int));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(318,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id582"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ObjectTests.Functions (well-formedness)"} CheckWellFormed$$_module.ObjectTests.Functions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectTests.Functions (call)"} Call$$_module.ObjectTests.Functions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap));
  // user-defined preconditions
  requires {:id "id585"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  requires {:id "id586"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  requires {:id "id587"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  free ensures {:id "id588"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ObjectTests.Functions (correctness)"} Impl$$_module.ObjectTests.Functions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ObjectTests())
         && $IsAlloc(this, Tclass._module.ObjectTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id589"} _module.ObjectTests.Valid#canCall($Heap, this)
     && 
    _module.ObjectTests.Valid($Heap, this)
     && 
    $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref
     && $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
       != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ObjectTests.Valid#canCall($Heap, this);
  ensures {:id "id590"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref;
  ensures {:id "id591"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  ensures {:id "id592"} _module.ObjectTests.Valid#canCall($Heap, this)
     ==> _module.ObjectTests.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
         != $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing1)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing2)): ref
         || $o == $Unbox(read(old($Heap), this, _module.ObjectTests.thing3)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ObjectTests.Functions (correctness)"} Impl$$_module.ObjectTests.Functions(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var things#0: Seq
     where $Is(things#0, TSeq(Tclass._module.Thing()))
       && $IsAlloc(things#0, TSeq(Tclass._module.Thing()), $Heap);
  var f#0: HandleType
     where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var x#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var t#0_0: ref;
  var t#0_1: ref;
  var $prevHeap: Heap;
  var g#0: HandleType
     where $Is(g#0, Tclass._System.___hFunc0(TInt))
       && $IsAlloc(g#0, Tclass._System.___hFunc0(TInt), $Heap);
  var $lambdaHeap#1: Heap;
  var $_Frame#l1: [ref,Field]bool;
  var b$reqreads#0: bool;
  var lambdaResult#1: int;
  var t#1_0: ref;
  var t#1_1: ref;
  var t#2_0: ref;
  var t#2_1: ref;

    // AddMethodImpl: Functions, Impl$$_module.ObjectTests.Functions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
           || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(322,5)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(323,28)
    assume true;
    assume true;
    things#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.ObjectTests.thing1)), 
        read($Heap, this, _module.ObjectTests.thing2)), 
      read($Heap, this, _module.ObjectTests.thing3));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(325,23)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc x#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id594"} lambdaResult#0 == Mul(x#0, LitInt(2));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    f#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: 
              $Box(Mul($Unbox($l#0#x#0): int, LitInt(2)))), 
            (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: $IsBox($l#0#x#0, TInt)), 
            (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(328,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id596"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id597"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(329,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.Thing())
           && $IsAlloc(t#0_0, Tclass._module.Thing(), $Heap);
        assume true;
        assume Seq#Contains(things#0, $Box(t#0_0));
        assert {:id "id598"} {:subsumption 0} t#0_0 != null;
        assume true;
        assert {:id "id599"} $_ModifiesFrame[t#0_0, _module.Thing.i];
        assert {:id "id600"} {:subsumption 0} t#0_0 != null;
        assume true;
        havoc t#0_1;
        assume $Is(t#0_1, Tclass._module.Thing())
           && $IsAlloc(t#0_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#0_1));
        assume t#0_0 != t#0_1;
        assert {:id "id601"} t#0_0 != t#0_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box($Unbox(read($Heap, t#0_0, _module.Thing.i)): int))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box($Unbox(read($Heap, t#0_1, _module.Thing.i)): int))): int;
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
             || (exists t#0_2: ref :: 
              $Is(t#0_2, Tclass._module.Thing())
                 && Seq#Contains(things#0, $Box(t#0_2))
                 && $o == t#0_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#0_0: ref :: 
          { read($Heap, t#inv#0_0, _module.Thing.i) } 
          $Is(t#inv#0_0, Tclass._module.Thing())
               && 
              t#inv#0_0 != null
               && Seq#Contains(things#0, $Box(t#inv#0_0))
             ==> read($Heap, t#inv#0_0, _module.Thing.i)
               == $Box($Unbox(Apply1(TInt, 
                    TInt, 
                    $prevHeap, 
                    f#0, 
                    $Box($Unbox(read($prevHeap, t#inv#0_0, _module.Thing.i)): int))): int));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(332,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id602"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(334,22)
    assume true;
    // Begin Comprehension WF check
    b$reqreads#0 := true;
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        if (true)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool
                 ==> $o == this
                   || $o == $Unbox(read($lambdaHeap#1, this, _module.ObjectTests.thing2)): ref);
            b$reqreads#0 := $_Frame#l1[this, _module.ObjectTests.thing2];
            assert {:id "id603"} b$reqreads#0;
            assert {:id "id604"} $_Frame#l1[this, _module.ObjectTests.thing2];
            assert {:id "id605"} $Unbox(read($lambdaHeap#1, this, _module.ObjectTests.thing2)): ref != null;
            assert {:id "id606"} $_Frame#l1[$Unbox(read($lambdaHeap#1, this, _module.ObjectTests.thing2)): ref, _module.Thing.i];
            assume {:id "id607"} lambdaResult#1
               == $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref, 
                  _module.Thing.i)): int;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    g#0 := Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
          Handle0((lambda $l#2#heap#0: Heap :: 
              $Box($Unbox(read($l#2#heap#0, 
                    $Unbox(read($l#2#heap#0, this, _module.ObjectTests.thing2)): ref, 
                    _module.Thing.i)): int)), 
            (lambda $l#2#heap#0: Heap :: true), 
            (lambda $l#2#heap#0: Heap :: 
              SetRef_to_SetBox((lambda $l#2#o#0: ref :: 
                  $l#2#o#0 == this
                     || $l#2#o#0 == $Unbox(read($l#2#heap#0, this, _module.ObjectTests.thing2)): ref))))), 
        $LS($LZ)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(337,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id609"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id610"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(338,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#1_0;
        assume $Is(t#1_0, Tclass._module.Thing())
           && $IsAlloc(t#1_0, Tclass._module.Thing(), $Heap);
        if (Seq#Contains(things#0, $Box(t#1_0)))
        {
            assert {:id "id611"} {:subsumption 0} t#1_0 != null;
            assert {:id "id612"} Requires0(TInt, $Heap, g#0);
        }

        assume true;
        assume Seq#Contains(things#0, $Box(t#1_0))
           && $Unbox(read($Heap, t#1_0, _module.Thing.i)): int
               + $Unbox(Apply0(TInt, $Heap, g#0)): int
             != 5;
        assert {:id "id613"} {:subsumption 0} t#1_0 != null;
        assume true;
        assert {:id "id614"} $_ModifiesFrame[t#1_0, _module.Thing.i];
        assert {:id "id615"} {:subsumption 0} t#1_0 != null;
        assume true;
        havoc t#1_1;
        assume $Is(t#1_1, Tclass._module.Thing())
           && $IsAlloc(t#1_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#1_1))
           && $Unbox(read($Heap, t#1_1, _module.Thing.i)): int
               + $Unbox(Apply0(TInt, $Heap, g#0)): int
             != 5;
        assume t#1_0 != t#1_1;
        assert {:id "id616"} t#1_0 != t#1_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, t#1_0, _module.Thing.i)): int + 1
             == $Unbox(read($Heap, t#1_1, _module.Thing.i)): int + 1;
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
             || (exists t#1_2: ref :: 
              $Is(t#1_2, Tclass._module.Thing())
                 && 
                Seq#Contains(things#0, $Box(t#1_2))
                 && $Unbox(read($prevHeap, t#1_2, _module.Thing.i)): int
                     + $Unbox(Apply0(TInt, $prevHeap, g#0)): int
                   != 5
                 && $o == t#1_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#1_0: ref :: 
          { read($Heap, t#inv#1_0, _module.Thing.i) } 
          $Is(t#inv#1_0, Tclass._module.Thing())
               && 
              t#inv#1_0 != null
               && 
              Seq#Contains(things#0, $Box(t#inv#1_0))
               && $Unbox(read($prevHeap, t#inv#1_0, _module.Thing.i)): int
                   + $Unbox(Apply0(TInt, $prevHeap, g#0)): int
                 != 5
             ==> read($Heap, t#inv#1_0, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, t#inv#1_0, _module.Thing.i)): int + 1));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(341,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id617"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(344,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id618"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == $Unbox(read($Heap, this, _module.ObjectTests.thing1)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing2)): ref
             || $o == $Unbox(read($Heap, this, _module.ObjectTests.thing3)): ref)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id619"} Call$$_module.ObjectTests.Initialize(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(345,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc t#2_0;
        assume $Is(t#2_0, Tclass._module.Thing())
           && $IsAlloc(t#2_0, Tclass._module.Thing(), $Heap);
        assume true;
        assume Seq#Contains(things#0, $Box(t#2_0));
        assert {:id "id620"} {:subsumption 0} t#2_0 != null;
        assume true;
        assert {:id "id621"} $_ModifiesFrame[t#2_0, _module.Thing.i];
        assert {:id "id622"} {:subsumption 0} t#2_0 != null;
        assert {:id "id623"} Requires0(TInt, $Heap, g#0);
        assume true;
        havoc t#2_1;
        assume $Is(t#2_1, Tclass._module.Thing())
           && $IsAlloc(t#2_1, Tclass._module.Thing(), $Heap);
        assume Seq#Contains(things#0, $Box(t#2_1));
        assume t#2_0 != t#2_1;
        assert {:id "id624"} t#2_0 != t#2_1
           || _module.Thing.i != _module.Thing.i
           || $Unbox(read($Heap, t#2_0, _module.Thing.i)): int
               + $Unbox(Apply0(TInt, $Heap, g#0)): int
             == $Unbox(read($Heap, t#2_1, _module.Thing.i)): int
               + $Unbox(Apply0(TInt, $Heap, g#0)): int;
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
             || (exists t#2_2: ref :: 
              $Is(t#2_2, Tclass._module.Thing())
                 && Seq#Contains(things#0, $Box(t#2_2))
                 && $o == t#2_2
                 && $f == _module.Thing.i));
        assume (forall t#inv#2_0: ref :: 
          { read($Heap, t#inv#2_0, _module.Thing.i) } 
          $Is(t#inv#2_0, Tclass._module.Thing())
               && 
              t#inv#2_0 != null
               && Seq#Contains(things#0, $Box(t#inv#2_0))
             ==> read($Heap, t#inv#2_0, _module.Thing.i)
               == $Box($Unbox(read($prevHeap, t#inv#2_0, _module.Thing.i)): int
                   + $Unbox(Apply0(TInt, $prevHeap, g#0)): int));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Forall.dfy(348,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id625"} Call$$_module.ObjectTests.Report(this);
    // TrCallStmt: After ProcessCallStmt
}



// $Is axiom for non-null type _module.ObjectTests
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ObjectTests()) } 
    { $Is(c#0, Tclass._module.ObjectTests?()) } 
  $Is(c#0, Tclass._module.ObjectTests())
     <==> $Is(c#0, Tclass._module.ObjectTests?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ObjectTests
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ObjectTests(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ObjectTests?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ObjectTests(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ObjectTests?(), $h));

const unique class.ForallWithNewtype.__default: ClassName;

// function declaration for ForallWithNewtype._default.P
function ForallWithNewtype.__default.P(x#0: int) : bool;

function ForallWithNewtype.__default.P#canCall(x#0: int) : bool;

function ForallWithNewtype.__default.P#requires(int) : bool;

// #requires axiom for ForallWithNewtype.__default.P
axiom (forall x#0: int :: 
  { ForallWithNewtype.__default.P#requires(x#0) } 
  ForallWithNewtype.__default.P#requires(x#0) == true);

// definition axiom for ForallWithNewtype.__default.P (revealed)
axiom {:id "id626"} (forall x#0: int :: 
  { ForallWithNewtype.__default.P(x#0) } 
  ForallWithNewtype.__default.P(x#0) == (x#0 != 11));

// definition axiom for ForallWithNewtype.__default.P for all literals (revealed)
axiom {:id "id627"} (forall x#0: int :: 
  {:weight 3} { ForallWithNewtype.__default.P(LitInt(x#0)) } 
  ForallWithNewtype.__default.P(LitInt(x#0)) == Lit(x#0 != 11));

procedure {:verboseName "ForallWithNewtype.Test (well-formedness)"} CheckWellFormed$$ForallWithNewtype.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ForallWithNewtype.Test (call)"} Call$$ForallWithNewtype.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.ForallWithNewtype.MyInt() : Ty
uses {
// Tclass.ForallWithNewtype.MyInt Tag
axiom Tag(Tclass.ForallWithNewtype.MyInt()) == Tagclass.ForallWithNewtype.MyInt
   && TagFamily(Tclass.ForallWithNewtype.MyInt()) == tytagFamily$MyInt;
}

const unique Tagclass.ForallWithNewtype.MyInt: TyTag;

// Box/unbox axiom for Tclass.ForallWithNewtype.MyInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ForallWithNewtype.MyInt()) } 
  $IsBox(bx, Tclass.ForallWithNewtype.MyInt())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.ForallWithNewtype.MyInt()));

// $Is axiom for newtype ForallWithNewtype.MyInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.ForallWithNewtype.MyInt()) } 
  $Is(x#0, Tclass.ForallWithNewtype.MyInt())
     <==> LitInt(-2) <= x#0 && x#0 < 16 && ForallWithNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype ForallWithNewtype.MyInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.ForallWithNewtype.MyInt(), $h) } 
  $IsAlloc(x#0, Tclass.ForallWithNewtype.MyInt(), $h));

const unique class.ForallWithNewtype.MyInt: ClassName;

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

const unique tytagFamily$ArrayTests: TyTagFamily;

const unique tytagFamily$MultiArrayTests: TyTagFamily;

const unique tytagFamily$ObjectTests: TyTagFamily;

const unique tytagFamily$Thing: TyTagFamily;

const unique tytagFamily$MyInt: TyTagFamily;

const unique field$a: NameFamily;

const unique field$b: NameFamily;

const unique field$thing1: NameFamily;

const unique field$thing2: NameFamily;

const unique field$thing3: NameFamily;

const unique field$i: NameFamily;

const unique field$r: NameFamily;

const unique field$t: NameFamily;
