// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy

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

const reveal_OpaqueTest._default.foo: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.f
function _module.__default.f(x#0: int) : bool
uses {
// definition axiom for _module.__default.f (revealed)
axiom {:id "id263"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.f(x#0) } 
    _module.__default.f#canCall(x#0) || (0 < $FunctionContextHeight && x#0 > 3)
       ==> _module.__default.f(x#0) == (x#0 > 7));
// definition axiom for _module.__default.f for all literals (revealed)
axiom {:id "id264"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.f(LitInt(x#0)) } 
    _module.__default.f#canCall(LitInt(x#0))
         || (0 < $FunctionContextHeight && Lit(x#0 > 3))
       ==> _module.__default.f(LitInt(x#0)) == Lit(x#0 > 7));
}

function _module.__default.f#canCall(x#0: int) : bool;

function _module.__default.f#requires(int) : bool;

// #requires axiom for _module.__default.f
axiom (forall x#0: int :: 
  { _module.__default.f#requires(x#0) } 
  _module.__default.f#requires(x#0) == (x#0 > 3));

procedure {:verboseName "f (well-formedness)"} CheckWellformed$$_module.__default.f(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.g
function _module.__default.g(y#0: int) : bool
uses {
// definition axiom for _module.__default.g (revealed)
axiom {:id "id267"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    { _module.__default.g(y#0) } 
    _module.__default.g#canCall(y#0) || 1 < $FunctionContextHeight
       ==> _module.__default.f#canCall(y#0)
         && _module.__default.g(y#0) == _module.__default.f(y#0));
// definition axiom for _module.__default.g for all literals (revealed)
axiom {:id "id268"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    {:weight 3} { _module.__default.g(LitInt(y#0)) } 
    _module.__default.g#canCall(LitInt(y#0)) || 1 < $FunctionContextHeight
       ==> _module.__default.f#canCall(LitInt(y#0))
         && _module.__default.g(LitInt(y#0)) == Lit(_module.__default.f(LitInt(y#0))));
}

function _module.__default.g#canCall(y#0: int) : bool;

function _module.__default.g#requires(int) : bool;

// #requires axiom for _module.__default.g
axiom (forall y#0: int :: 
  { _module.__default.g#requires(y#0) } 
  _module.__default.g#requires(y#0) == true);

procedure {:verboseName "g (well-formedness)"} CheckWellformed$$_module.__default.g(y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "g (well-formedness)"} CheckWellformed$$_module.__default.g(y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;


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
        ##x#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id269"} {:subsumption 0} ##x#0 > 3;
        assume ##x#0 > 3;
        assume _module.__default.f#canCall(y#0);
        assume {:id "id270"} _module.__default.g(y#0) == _module.__default.f(y#0);
        assume _module.__default.f#canCall(y#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.g(y#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.h
function _module.__default.h(y#0: int) : bool
uses {
// definition axiom for _module.__default.h (revealed)
axiom {:id "id271"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    { _module.__default.h(y#0) } 
    _module.__default.h#canCall(y#0) || (1 < $FunctionContextHeight && y#0 > 3)
       ==> _module.__default.f#canCall(y#0)
         && _module.__default.h(y#0) == _module.__default.f(y#0));
// definition axiom for _module.__default.h for all literals (revealed)
axiom {:id "id272"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    {:weight 3} { _module.__default.h(LitInt(y#0)) } 
    _module.__default.h#canCall(LitInt(y#0))
         || (1 < $FunctionContextHeight && Lit(y#0 > 3))
       ==> _module.__default.f#canCall(LitInt(y#0))
         && _module.__default.h(LitInt(y#0)) == Lit(_module.__default.f(LitInt(y#0))));
}

function _module.__default.h#canCall(y#0: int) : bool;

function _module.__default.h#requires(int) : bool;

// #requires axiom for _module.__default.h
axiom (forall y#0: int :: 
  { _module.__default.h#requires(y#0) } 
  _module.__default.h#requires(y#0) == (y#0 > 3));

procedure {:verboseName "h (well-formedness)"} CheckWellformed$$_module.__default.h(y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "h (well-formedness)"} CheckWellformed$$_module.__default.h(y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id273"} y#0 > 3;
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
        ##x#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id274"} {:subsumption 0} ##x#0 > 3;
        assume ##x#0 > 3;
        assume _module.__default.f#canCall(y#0);
        assume {:id "id275"} _module.__default.h(y#0) == _module.__default.f(y#0);
        assume _module.__default.f#canCall(y#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.h(y#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.h_tester
function _module.__default.h__tester() : bool
uses {
// definition axiom for _module.__default.h__tester (revealed)
axiom {:id "id276"} 2 <= $FunctionContextHeight
   ==> 
  _module.__default.h__tester#canCall() || 2 < $FunctionContextHeight
   ==> _module.__default.h#canCall(LitInt(2))
     && _module.__default.h__tester() == Lit(_module.__default.h(LitInt(2)));
// definition axiom for _module.__default.h__tester for all literals (revealed)
axiom {:id "id277"} 2 <= $FunctionContextHeight
   ==> 
  _module.__default.h__tester#canCall() || 2 < $FunctionContextHeight
   ==> _module.__default.h#canCall(LitInt(2))
     && _module.__default.h__tester() == Lit(_module.__default.h(LitInt(2)));
}

function _module.__default.h__tester#canCall() : bool;

function _module.__default.h__tester#requires() : bool
uses {
// #requires axiom for _module.__default.h__tester
axiom _module.__default.h__tester#requires() == true;
}

procedure {:verboseName "h_tester (well-formedness)"} CheckWellformed$$_module.__default.h__tester();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "h_tester (well-formedness)"} CheckWellformed$$_module.__default.h__tester()
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##y#0: int;


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
        ##y#0 := LitInt(2);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0, TInt, $Heap);
        assert {:id "id278"} {:subsumption 0} ##y#0 > 3;
        assume ##y#0 > 3;
        assume _module.__default.h#canCall(LitInt(2));
        assume {:id "id279"} _module.__default.h__tester() == Lit(_module.__default.h(LitInt(2)));
        assume _module.__default.h#canCall(LitInt(2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.h__tester(), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.i
function _module.__default.i(y#0: int, b#0: bool) : bool
uses {
// definition axiom for _module.__default.i (revealed)
axiom {:id "id280"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int, b#0: bool :: 
    { _module.__default.i(y#0, b#0) } 
    _module.__default.i#canCall(y#0, b#0)
         || (1 < $FunctionContextHeight
           && (if b#0 then y#0 + 2 > 3 else Mul(LitInt(2), y#0) > 3))
       ==> (b#0 ==> _module.__default.f#canCall(y#0 + 2))
         && (!b#0 ==> _module.__default.f#canCall(Mul(LitInt(2), y#0)))
         && _module.__default.i(y#0, b#0)
           == (if b#0
             then _module.__default.f(y#0 + 2)
             else _module.__default.f(Mul(LitInt(2), y#0))));
// definition axiom for _module.__default.i for all literals (revealed)
axiom {:id "id281"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int, b#0: bool :: 
    {:weight 3} { _module.__default.i(LitInt(y#0), Lit(b#0)) } 
    _module.__default.i#canCall(LitInt(y#0), Lit(b#0))
         || (1 < $FunctionContextHeight
           && (if b#0 then y#0 + 2 > 3 else Mul(LitInt(2), LitInt(y#0)) > 3))
       ==> (Lit(b#0) ==> _module.__default.f#canCall(LitInt(y#0 + 2)))
         && (!Lit(b#0) ==> _module.__default.f#canCall(LitInt(Mul(LitInt(2), LitInt(y#0)))))
         && _module.__default.i(LitInt(y#0), Lit(b#0))
           == (if b#0
             then _module.__default.f(LitInt(y#0 + 2))
             else _module.__default.f(LitInt(Mul(LitInt(2), LitInt(y#0))))));
}

function _module.__default.i#canCall(y#0: int, b#0: bool) : bool;

function _module.__default.i#requires(int, bool) : bool;

// #requires axiom for _module.__default.i
axiom (forall y#0: int, b#0: bool :: 
  { _module.__default.i#requires(y#0, b#0) } 
  _module.__default.i#requires(y#0, b#0)
     == (if b#0 then y#0 + 2 > 3 else Mul(LitInt(2), y#0) > 3));

procedure {:verboseName "i (well-formedness)"} CheckWellformed$$_module.__default.i(y#0: int, b#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "i (well-formedness)"} CheckWellformed$$_module.__default.i(y#0: int, b#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var ##x#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (b#0)
    {
    }
    else
    {
    }

    assume {:id "id282"} (if b#0 then y#0 + 2 > 3 else Mul(LitInt(2), y#0) > 3);
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
        if (b#0)
        {
            ##x#0 := y#0 + 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assert {:id "id283"} {:subsumption 0} ##x#0 > 3;
            assume ##x#0 > 3;
            assume _module.__default.f#canCall(y#0 + 2);
            assume {:id "id284"} _module.__default.i(y#0, b#0) == _module.__default.f(y#0 + 2);
            assume _module.__default.f#canCall(y#0 + 2);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.i(y#0, b#0), TBool);
            return;
        }
        else
        {
            ##x#1 := Mul(LitInt(2), y#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            assert {:id "id285"} {:subsumption 0} ##x#1 > 3;
            assume ##x#1 > 3;
            assume _module.__default.f#canCall(Mul(LitInt(2), y#0));
            assume {:id "id286"} _module.__default.i(y#0, b#0) == _module.__default.f(Mul(LitInt(2), y#0));
            assume _module.__default.f#canCall(Mul(LitInt(2), y#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.i(y#0, b#0), TBool);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "test (well-formedness)"} CheckWellFormed$$_module.__default.test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test (call)"} Call$$_module.__default.test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test (correctness)"} Impl$$_module.__default.test() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test (correctness)"} Impl$$_module.__default.test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##y#0_0: int;
  var ##b#0_0: bool;
  var ##y#1_0_0: int;
  var ##b#1_0_0: bool;
  var ##y#2_0: int;
  var ##b#2_0: bool;
  var ##y#0: int;
  var ##b#0: bool;

    // AddMethodImpl: test, Impl$$_module.__default.test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(37,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(38,5)
        ##y#0_0 := LitInt(1);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_0, TInt, $Heap);
        ##b#0_0 := Lit(true);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_0, TBool, $Heap);
        assert {:id "id287"} {:subsumption 0} ##b#0_0 ==> ##y#0_0 + 2 > 3;
        assert {:id "id288"} {:subsumption 0} !##b#0_0 ==> Mul(LitInt(2), ##y#0_0) > 3;
        assume _module.__default.i#canCall(LitInt(1), Lit(true));
        assume _module.__default.i#canCall(LitInt(1), Lit(true));
        assert {:id "id289"} {:subsumption 0} _module.__default.i#canCall(LitInt(1), Lit(true))
           ==> Lit(_module.__default.i(LitInt(1), Lit(true)))
             || (Lit(true)
               ==> 
              _module.__default.f#canCall(LitInt(1 + 2))
               ==> Lit(_module.__default.f(LitInt(1 + 2))) || Lit(1 + 2 > 7));
        assert {:id "id290"} {:subsumption 0} _module.__default.i#canCall(LitInt(1), Lit(true))
           ==> Lit(_module.__default.i(LitInt(1), Lit(true)))
             || (!Lit(true)
               ==> 
              _module.__default.f#canCall(LitInt(Mul(LitInt(2), LitInt(1))))
               ==> Lit(_module.__default.f(LitInt(Mul(LitInt(2), LitInt(1)))))
                 || Lit(Mul(LitInt(2), LitInt(1)) > 7));
        assume {:id "id291"} Lit(_module.__default.i(LitInt(1), Lit(true)));
        pop;
    }
    else
    {
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(39,10)
        if (*)
        {
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(40,5)
            ##y#1_0_0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#1_0_0, TInt, $Heap);
            ##b#1_0_0 := Lit(false);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_0, TBool, $Heap);
            assert {:id "id292"} {:subsumption 0} ##b#1_0_0 ==> ##y#1_0_0 + 2 > 3;
            assert {:id "id293"} {:subsumption 0} !##b#1_0_0 ==> Mul(LitInt(2), ##y#1_0_0) > 3;
            assume _module.__default.i#canCall(LitInt(0), Lit(false));
            assume _module.__default.i#canCall(LitInt(0), Lit(false));
            assert {:id "id294"} {:subsumption 0} _module.__default.i#canCall(LitInt(0), Lit(false))
               ==> Lit(_module.__default.i(LitInt(0), Lit(false)))
                 || (Lit(false)
                   ==> 
                  _module.__default.f#canCall(LitInt(0 + 2))
                   ==> Lit(_module.__default.f(LitInt(0 + 2))) || Lit(0 + 2 > 7));
            assert {:id "id295"} {:subsumption 0} _module.__default.i#canCall(LitInt(0), Lit(false))
               ==> Lit(_module.__default.i(LitInt(0), Lit(false)))
                 || (!Lit(false)
                   ==> 
                  _module.__default.f#canCall(LitInt(Mul(LitInt(2), LitInt(0))))
                   ==> Lit(_module.__default.f(LitInt(Mul(LitInt(2), LitInt(0)))))
                     || Lit(Mul(LitInt(2), LitInt(0)) > 7));
            assume {:id "id296"} Lit(_module.__default.i(LitInt(0), Lit(false)));
            pop;
        }
        else
        {
        }

        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(44,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(45,5)
        ##y#2_0 := LitInt(3);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#2_0, TInt, $Heap);
        ##b#2_0 := Lit(true);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#2_0, TBool, $Heap);
        assert {:id "id297"} {:subsumption 0} ##b#2_0 ==> ##y#2_0 + 2 > 3;
        assert {:id "id298"} {:subsumption 0} !##b#2_0 ==> Mul(LitInt(2), ##y#2_0) > 3;
        assume _module.__default.i#canCall(LitInt(3), Lit(true));
        assume _module.__default.i#canCall(LitInt(3), Lit(true));
        assert {:id "id299"} {:subsumption 0} _module.__default.i#canCall(LitInt(3), Lit(true))
           ==> Lit(_module.__default.i(LitInt(3), Lit(true)))
             || (Lit(true)
               ==> 
              _module.__default.f#canCall(LitInt(3 + 2))
               ==> Lit(_module.__default.f(LitInt(3 + 2))) || Lit(3 + 2 > 7));
        assert {:id "id300"} {:subsumption 0} _module.__default.i#canCall(LitInt(3), Lit(true))
           ==> Lit(_module.__default.i(LitInt(3), Lit(true)))
             || (!Lit(true)
               ==> 
              _module.__default.f#canCall(LitInt(Mul(LitInt(2), LitInt(3))))
               ==> Lit(_module.__default.f(LitInt(Mul(LitInt(2), LitInt(3)))))
                 || Lit(Mul(LitInt(2), LitInt(3)) > 7));
        assume {:id "id301"} Lit(_module.__default.i(LitInt(3), Lit(true)));
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/AutoReq.dfy(47,3)
    ##y#0 := LitInt(7);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TInt, $Heap);
    ##b#0 := Lit(false);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assert {:id "id302"} {:subsumption 0} ##b#0 ==> ##y#0 + 2 > 3;
    assert {:id "id303"} {:subsumption 0} !##b#0 ==> Mul(LitInt(2), ##y#0) > 3;
    assume _module.__default.i#canCall(LitInt(7), Lit(false));
    assume _module.__default.i#canCall(LitInt(7), Lit(false));
    assert {:id "id304"} {:subsumption 0} _module.__default.i#canCall(LitInt(7), Lit(false))
       ==> Lit(_module.__default.i(LitInt(7), Lit(false)))
         || (Lit(false)
           ==> 
          _module.__default.f#canCall(LitInt(7 + 2))
           ==> Lit(_module.__default.f(LitInt(7 + 2))) || Lit(7 + 2 > 7));
    assert {:id "id305"} {:subsumption 0} _module.__default.i#canCall(LitInt(7), Lit(false))
       ==> Lit(_module.__default.i(LitInt(7), Lit(false)))
         || (!Lit(false)
           ==> 
          _module.__default.f#canCall(LitInt(Mul(LitInt(2), LitInt(7))))
           ==> Lit(_module.__default.f(LitInt(Mul(LitInt(2), LitInt(7)))))
             || Lit(Mul(LitInt(2), LitInt(7)) > 7));
    assume {:id "id306"} Lit(_module.__default.i(LitInt(7), Lit(false)));
}



const unique class.TwoLayersOfRequires.__default: ClassName;

// function declaration for TwoLayersOfRequires._default.f
function TwoLayersOfRequires.__default.f(x#0: int) : bool;

function TwoLayersOfRequires.__default.f#canCall(x#0: int) : bool;

function TwoLayersOfRequires.__default.f#requires(int) : bool;

// #requires axiom for TwoLayersOfRequires.__default.f
axiom (forall x#0: int :: 
  { TwoLayersOfRequires.__default.f#requires(x#0) } 
  TwoLayersOfRequires.__default.f#requires(x#0) == (x#0 > 4));

// definition axiom for TwoLayersOfRequires.__default.f (revealed)
axiom {:id "id307"} (forall x#0: int :: 
  { TwoLayersOfRequires.__default.f(x#0) } 
  TwoLayersOfRequires.__default.f#canCall(x#0) || x#0 > 4
     ==> TwoLayersOfRequires.__default.f(x#0) == (x#0 > 5));

// definition axiom for TwoLayersOfRequires.__default.f for all literals (revealed)
axiom {:id "id308"} (forall x#0: int :: 
  {:weight 3} { TwoLayersOfRequires.__default.f(LitInt(x#0)) } 
  TwoLayersOfRequires.__default.f#canCall(LitInt(x#0)) || Lit(x#0 > 4)
     ==> TwoLayersOfRequires.__default.f(LitInt(x#0)) == Lit(x#0 > 5));

// function declaration for TwoLayersOfRequires._default.g
function TwoLayersOfRequires.__default.g(y#0: int) : bool;

function TwoLayersOfRequires.__default.g#canCall(y#0: int) : bool;

function TwoLayersOfRequires.__default.g#requires(int) : bool;

// #requires axiom for TwoLayersOfRequires.__default.g
axiom (forall y#0: int :: 
  { TwoLayersOfRequires.__default.g#requires(y#0) } 
  TwoLayersOfRequires.__default.g#requires(y#0) == (y#0 < 50 && y#0 > 4));

// definition axiom for TwoLayersOfRequires.__default.g (revealed)
axiom {:id "id309"} (forall y#0: int :: 
  { TwoLayersOfRequires.__default.g(y#0) } 
  TwoLayersOfRequires.__default.g#canCall(y#0) || (y#0 < 50 && y#0 > 4)
     ==> TwoLayersOfRequires.__default.f#canCall(y#0)
       && TwoLayersOfRequires.__default.g(y#0) == TwoLayersOfRequires.__default.f(y#0));

// definition axiom for TwoLayersOfRequires.__default.g for all literals (revealed)
axiom {:id "id310"} (forall y#0: int :: 
  {:weight 3} { TwoLayersOfRequires.__default.g(LitInt(y#0)) } 
  TwoLayersOfRequires.__default.g#canCall(LitInt(y#0))
       || (Lit(y#0 < 50) && Lit(y#0 > 4))
     ==> TwoLayersOfRequires.__default.f#canCall(LitInt(y#0))
       && TwoLayersOfRequires.__default.g(LitInt(y#0))
         == Lit(TwoLayersOfRequires.__default.f(LitInt(y#0))));

// function declaration for TwoLayersOfRequires._default.h
function TwoLayersOfRequires.__default.h(z#0: int) : bool;

function TwoLayersOfRequires.__default.h#canCall(z#0: int) : bool;

function TwoLayersOfRequires.__default.h#requires(int) : bool;

// #requires axiom for TwoLayersOfRequires.__default.h
axiom (forall z#0: int :: 
  { TwoLayersOfRequires.__default.h#requires(z#0) } 
  TwoLayersOfRequires.__default.h#requires(z#0) == (z#0 < 50 && z#0 > 4));

// definition axiom for TwoLayersOfRequires.__default.h (revealed)
axiom {:id "id311"} (forall z#0: int :: 
  { TwoLayersOfRequires.__default.h(z#0) } 
  TwoLayersOfRequires.__default.h#canCall(z#0) || (z#0 < 50 && z#0 > 4)
     ==> TwoLayersOfRequires.__default.g#canCall(z#0)
       && TwoLayersOfRequires.__default.h(z#0) == TwoLayersOfRequires.__default.g(z#0));

// definition axiom for TwoLayersOfRequires.__default.h for all literals (revealed)
axiom {:id "id312"} (forall z#0: int :: 
  {:weight 3} { TwoLayersOfRequires.__default.h(LitInt(z#0)) } 
  TwoLayersOfRequires.__default.h#canCall(LitInt(z#0))
       || (Lit(z#0 < 50) && Lit(z#0 > 4))
     ==> TwoLayersOfRequires.__default.g#canCall(LitInt(z#0))
       && TwoLayersOfRequires.__default.h(LitInt(z#0))
         == Lit(TwoLayersOfRequires.__default.g(LitInt(z#0))));

const unique class.QuantifierTestsSimple.__default: ClassName;

// function declaration for QuantifierTestsSimple._default.byte
function QuantifierTestsSimple.__default.byte(x#0: int) : bool;

function QuantifierTestsSimple.__default.byte#canCall(x#0: int) : bool;

function QuantifierTestsSimple.__default.byte#requires(int) : bool;

// #requires axiom for QuantifierTestsSimple.__default.byte
axiom (forall x#0: int :: 
  { QuantifierTestsSimple.__default.byte#requires(x#0) } 
  QuantifierTestsSimple.__default.byte#requires(x#0) == true);

// definition axiom for QuantifierTestsSimple.__default.byte (revealed)
axiom {:id "id313"} (forall x#0: int :: 
  { QuantifierTestsSimple.__default.byte(x#0) } 
  QuantifierTestsSimple.__default.byte(x#0) == (LitInt(0) <= x#0 && x#0 < 256));

// definition axiom for QuantifierTestsSimple.__default.byte for all literals (revealed)
axiom {:id "id314"} (forall x#0: int :: 
  {:weight 3} { QuantifierTestsSimple.__default.byte(LitInt(x#0)) } 
  QuantifierTestsSimple.__default.byte(LitInt(x#0))
     == (LitInt(0) <= LitInt(x#0) && x#0 < 256));

// function declaration for QuantifierTestsSimple._default.f_forall
function QuantifierTestsSimple.__default.f__forall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.f__forall#canCall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.f__forall#requires(Seq) : bool;

// #requires axiom for QuantifierTestsSimple.__default.f__forall
axiom (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.f__forall#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsSimple.__default.f__forall#requires(s#0) == true);

// definition axiom for QuantifierTestsSimple.__default.f__forall (revealed)
axiom {:id "id315"} (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.f__forall(s#0) } 
  QuantifierTestsSimple.__default.f__forall#canCall(s#0) || $Is(s#0, TSeq(TInt))
     ==> (forall i#4: int :: 
        { $Unbox(Seq#Index(s#0, i#4)): int } 
        LitInt(0) <= i#4
           ==> 
          i#4 < Seq#Length(s#0)
           ==> QuantifierTestsSimple.__default.byte#canCall($Unbox(Seq#Index(s#0, i#4)): int))
       && QuantifierTestsSimple.__default.f__forall(s#0)
         == (forall i#4: int :: 
          { $Unbox(Seq#Index(s#0, i#4)): int } 
          LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
             ==> QuantifierTestsSimple.__default.byte($Unbox(Seq#Index(s#0, i#4)): int)));

// definition axiom for QuantifierTestsSimple.__default.f__forall for all literals (revealed)
axiom {:id "id316"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsSimple.__default.f__forall(Lit(s#0)) } 
  QuantifierTestsSimple.__default.f__forall#canCall(Lit(s#0))
       || $Is(s#0, TSeq(TInt))
     ==> (forall i#5: int :: 
        { $Unbox(Seq#Index(s#0, i#5)): int } 
        LitInt(0) <= i#5
           ==> 
          i#5 < Seq#Length(Lit(s#0))
           ==> QuantifierTestsSimple.__default.byte#canCall($Unbox(Seq#Index(Lit(s#0), i#5)): int))
       && QuantifierTestsSimple.__default.f__forall(Lit(s#0))
         == (forall i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
             ==> QuantifierTestsSimple.__default.byte($Unbox(Seq#Index(Lit(s#0), i#5)): int)));

// function declaration for QuantifierTestsSimple._default.f_exists
function QuantifierTestsSimple.__default.f__exists(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.f__exists#canCall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.f__exists#requires(Seq) : bool;

// #requires axiom for QuantifierTestsSimple.__default.f__exists
axiom (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.f__exists#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsSimple.__default.f__exists#requires(s#0) == true);

// definition axiom for QuantifierTestsSimple.__default.f__exists (revealed)
axiom {:id "id317"} (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.f__exists(s#0) } 
  QuantifierTestsSimple.__default.f__exists#canCall(s#0) || $Is(s#0, TSeq(TInt))
     ==> (forall i#4: int :: 
        { $Unbox(Seq#Index(s#0, i#4)): int } 
        LitInt(0) <= i#4
           ==> 
          i#4 < Seq#Length(s#0)
           ==> QuantifierTestsSimple.__default.byte#canCall($Unbox(Seq#Index(s#0, i#4)): int))
       && QuantifierTestsSimple.__default.f__exists(s#0)
         == (exists i#4: int :: 
          { $Unbox(Seq#Index(s#0, i#4)): int } 
          LitInt(0) <= i#4
             && i#4 < Seq#Length(s#0)
             && QuantifierTestsSimple.__default.byte($Unbox(Seq#Index(s#0, i#4)): int)));

// definition axiom for QuantifierTestsSimple.__default.f__exists for all literals (revealed)
axiom {:id "id318"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsSimple.__default.f__exists(Lit(s#0)) } 
  QuantifierTestsSimple.__default.f__exists#canCall(Lit(s#0))
       || $Is(s#0, TSeq(TInt))
     ==> (forall i#5: int :: 
        { $Unbox(Seq#Index(s#0, i#5)): int } 
        LitInt(0) <= i#5
           ==> 
          i#5 < Seq#Length(Lit(s#0))
           ==> QuantifierTestsSimple.__default.byte#canCall($Unbox(Seq#Index(Lit(s#0), i#5)): int))
       && QuantifierTestsSimple.__default.f__exists(Lit(s#0))
         == (exists i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          LitInt(0) <= i#5
             && i#5 < Seq#Length(Lit(s#0))
             && QuantifierTestsSimple.__default.byte($Unbox(Seq#Index(Lit(s#0), i#5)): int)));

// function declaration for QuantifierTestsSimple._default.g_forall
function QuantifierTestsSimple.__default.g__forall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.g__forall#canCall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.g__forall#requires(Seq) : bool;

// #requires axiom for QuantifierTestsSimple.__default.g__forall
axiom (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.g__forall#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsSimple.__default.g__forall#requires(s#0)
       == QuantifierTestsSimple.__default.f__forall(s#0));

// definition axiom for QuantifierTestsSimple.__default.g__forall (revealed)
axiom {:id "id319"} (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.g__forall(s#0) } 
  QuantifierTestsSimple.__default.g__forall#canCall(s#0)
       || ($Is(s#0, TSeq(TInt)) && QuantifierTestsSimple.__default.f__forall(s#0))
     ==> QuantifierTestsSimple.__default.g__forall(s#0) == (Seq#Length(s#0) > 2));

// definition axiom for QuantifierTestsSimple.__default.g__forall for all literals (revealed)
axiom {:id "id320"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsSimple.__default.g__forall(Lit(s#0)) } 
  QuantifierTestsSimple.__default.g__forall#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && Lit(QuantifierTestsSimple.__default.f__forall(Lit(s#0))))
     ==> QuantifierTestsSimple.__default.g__forall(Lit(s#0))
       == (Seq#Length(Lit(s#0)) > 2));

// function declaration for QuantifierTestsSimple._default.g_exists
function QuantifierTestsSimple.__default.g__exists(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.g__exists#canCall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.g__exists#requires(Seq) : bool;

// #requires axiom for QuantifierTestsSimple.__default.g__exists
axiom (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.g__exists#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsSimple.__default.g__exists#requires(s#0)
       == QuantifierTestsSimple.__default.f__exists(s#0));

// definition axiom for QuantifierTestsSimple.__default.g__exists (revealed)
axiom {:id "id321"} (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.g__exists(s#0) } 
  QuantifierTestsSimple.__default.g__exists#canCall(s#0)
       || ($Is(s#0, TSeq(TInt)) && QuantifierTestsSimple.__default.f__exists(s#0))
     ==> QuantifierTestsSimple.__default.g__exists(s#0) == (Seq#Length(s#0) > 2));

// definition axiom for QuantifierTestsSimple.__default.g__exists for all literals (revealed)
axiom {:id "id322"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsSimple.__default.g__exists(Lit(s#0)) } 
  QuantifierTestsSimple.__default.g__exists#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && Lit(QuantifierTestsSimple.__default.f__exists(Lit(s#0))))
     ==> QuantifierTestsSimple.__default.g__exists(Lit(s#0))
       == (Seq#Length(Lit(s#0)) > 2));

// function declaration for QuantifierTestsSimple._default.h
function QuantifierTestsSimple.__default.h(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.h#canCall(s#0: Seq) : bool;

function QuantifierTestsSimple.__default.h#requires(Seq) : bool;

// #requires axiom for QuantifierTestsSimple.__default.h
axiom (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.h#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsSimple.__default.h#requires(s#0)
       == (QuantifierTestsSimple.__default.f__forall(s#0)
         && (QuantifierTestsSimple.__default.g__forall(s#0)
           ==> QuantifierTestsSimple.__default.f__exists(s#0))));

// definition axiom for QuantifierTestsSimple.__default.h (revealed)
axiom {:id "id323"} (forall s#0: Seq :: 
  { QuantifierTestsSimple.__default.h(s#0) } 
  QuantifierTestsSimple.__default.h#canCall(s#0)
       || ($Is(s#0, TSeq(TInt))
         && 
        QuantifierTestsSimple.__default.f__forall(s#0)
         && (QuantifierTestsSimple.__default.g__forall(s#0)
           ==> QuantifierTestsSimple.__default.f__exists(s#0)))
     ==> QuantifierTestsSimple.__default.g__forall#canCall(s#0)
       && (QuantifierTestsSimple.__default.g__forall(s#0)
         ==> QuantifierTestsSimple.__default.g__exists#canCall(s#0))
       && QuantifierTestsSimple.__default.h(s#0)
         == (QuantifierTestsSimple.__default.g__forall(s#0)
           && QuantifierTestsSimple.__default.g__exists(s#0)));

// definition axiom for QuantifierTestsSimple.__default.h for all literals (revealed)
axiom {:id "id324"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsSimple.__default.h(Lit(s#0)) } 
  QuantifierTestsSimple.__default.h#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && 
        Lit(QuantifierTestsSimple.__default.f__forall(Lit(s#0)))
         && Lit(QuantifierTestsSimple.__default.g__forall(Lit(s#0))
             ==> QuantifierTestsSimple.__default.f__exists(Lit(s#0))))
     ==> QuantifierTestsSimple.__default.g__forall#canCall(Lit(s#0))
       && (Lit(QuantifierTestsSimple.__default.g__forall(Lit(s#0)))
         ==> QuantifierTestsSimple.__default.g__exists#canCall(Lit(s#0)))
       && QuantifierTestsSimple.__default.h(Lit(s#0))
         == Lit(QuantifierTestsSimple.__default.g__forall(Lit(s#0))
             && QuantifierTestsSimple.__default.g__exists(Lit(s#0))));

const unique class.QuantifierTestsHard.__default: ClassName;

// function declaration for QuantifierTestsHard._default.byte
function QuantifierTestsHard.__default.byte(x#0: int) : bool;

function QuantifierTestsHard.__default.byte#canCall(x#0: int) : bool;

function QuantifierTestsHard.__default.byte#requires(int) : bool;

// #requires axiom for QuantifierTestsHard.__default.byte
axiom (forall x#0: int :: 
  { QuantifierTestsHard.__default.byte#requires(x#0) } 
  QuantifierTestsHard.__default.byte#requires(x#0)
     == (LitInt(0) <= x#0 && x#0 < 256));

// definition axiom for QuantifierTestsHard.__default.byte (revealed)
axiom {:id "id325"} (forall x#0: int :: 
  { QuantifierTestsHard.__default.byte(x#0) } 
  QuantifierTestsHard.__default.byte#canCall(x#0)
       || (LitInt(0) <= x#0 && x#0 < 256)
     ==> QuantifierTestsHard.__default.byte(x#0) == Lit(true));

// definition axiom for QuantifierTestsHard.__default.byte for all literals (revealed)
axiom {:id "id326"} (forall x#0: int :: 
  {:weight 3} { QuantifierTestsHard.__default.byte(LitInt(x#0)) } 
  QuantifierTestsHard.__default.byte#canCall(LitInt(x#0))
       || (LitInt(0) <= LitInt(x#0) && x#0 < 256)
     ==> QuantifierTestsHard.__default.byte(LitInt(x#0)) == Lit(true));

// function declaration for QuantifierTestsHard._default.f_forall
function QuantifierTestsHard.__default.f__forall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.f__forall#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.f__forall#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.f__forall
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.f__forall#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.f__forall#requires(s#0) == true);

// definition axiom for QuantifierTestsHard.__default.f__forall (revealed)
axiom {:id "id327"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.f__forall(s#0) } 
  QuantifierTestsHard.__default.f__forall#canCall(s#0) || $Is(s#0, TSeq(TInt))
     ==> (forall i#4: int :: 
        { $Unbox(Seq#Index(s#0, i#4)): int } 
        (LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
           ==> LitInt(0) <= $Unbox(Seq#Index(s#0, i#4)): int
             && $Unbox(Seq#Index(s#0, i#4)): int < 256)
           ==> 
          LitInt(0) <= i#4
           ==> 
          i#4 < Seq#Length(s#0)
           ==> QuantifierTestsHard.__default.byte#canCall($Unbox(Seq#Index(s#0, i#4)): int))
       && QuantifierTestsHard.__default.f__forall(s#0)
         == (forall i#4: int :: 
          { $Unbox(Seq#Index(s#0, i#4)): int } 
          (LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
               ==> LitInt(0) <= $Unbox(Seq#Index(s#0, i#4)): int
                 && $Unbox(Seq#Index(s#0, i#4)): int < 256)
             && (LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
               ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(s#0, i#4)): int))));

// definition axiom for QuantifierTestsHard.__default.f__forall for all literals (revealed)
axiom {:id "id328"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.f__forall(Lit(s#0)) } 
  QuantifierTestsHard.__default.f__forall#canCall(Lit(s#0))
       || $Is(s#0, TSeq(TInt))
     ==> (forall i#5: int :: 
        { $Unbox(Seq#Index(s#0, i#5)): int } 
        (LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
           ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), i#5)): int
             && $Unbox(Seq#Index(Lit(s#0), i#5)): int < 256)
           ==> 
          LitInt(0) <= i#5
           ==> 
          i#5 < Seq#Length(Lit(s#0))
           ==> QuantifierTestsHard.__default.byte#canCall($Unbox(Seq#Index(Lit(s#0), i#5)): int))
       && QuantifierTestsHard.__default.f__forall(Lit(s#0))
         == (forall i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          (LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
               ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), i#5)): int
                 && $Unbox(Seq#Index(Lit(s#0), i#5)): int < 256)
             && (LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
               ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(Lit(s#0), i#5)): int))));

// function declaration for QuantifierTestsHard._default.f_exists
function QuantifierTestsHard.__default.f__exists(s#0: Seq) : bool;

function QuantifierTestsHard.__default.f__exists#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.f__exists#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.f__exists
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.f__exists#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.f__exists#requires(s#0) == true);

// definition axiom for QuantifierTestsHard.__default.f__exists (revealed)
axiom {:id "id329"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.f__exists(s#0) } 
  QuantifierTestsHard.__default.f__exists#canCall(s#0) || $Is(s#0, TSeq(TInt))
     ==> (forall i#4: int :: 
        { $Unbox(Seq#Index(s#0, i#4)): int } 
        (LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
           ==> LitInt(0) <= $Unbox(Seq#Index(s#0, i#4)): int
             && $Unbox(Seq#Index(s#0, i#4)): int < 256)
           ==> 
          LitInt(0) <= i#4
           ==> 
          i#4 < Seq#Length(s#0)
           ==> QuantifierTestsHard.__default.byte#canCall($Unbox(Seq#Index(s#0, i#4)): int))
       && QuantifierTestsHard.__default.f__exists(s#0)
         == (exists i#4: int :: 
          { $Unbox(Seq#Index(s#0, i#4)): int } 
          (LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)
               ==> LitInt(0) <= $Unbox(Seq#Index(s#0, i#4)): int
                 && $Unbox(Seq#Index(s#0, i#4)): int < 256)
             && 
            LitInt(0) <= i#4
             && i#4 < Seq#Length(s#0)
             && QuantifierTestsHard.__default.byte($Unbox(Seq#Index(s#0, i#4)): int)));

// definition axiom for QuantifierTestsHard.__default.f__exists for all literals (revealed)
axiom {:id "id330"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.f__exists(Lit(s#0)) } 
  QuantifierTestsHard.__default.f__exists#canCall(Lit(s#0))
       || $Is(s#0, TSeq(TInt))
     ==> (forall i#5: int :: 
        { $Unbox(Seq#Index(s#0, i#5)): int } 
        (LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
           ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), i#5)): int
             && $Unbox(Seq#Index(Lit(s#0), i#5)): int < 256)
           ==> 
          LitInt(0) <= i#5
           ==> 
          i#5 < Seq#Length(Lit(s#0))
           ==> QuantifierTestsHard.__default.byte#canCall($Unbox(Seq#Index(Lit(s#0), i#5)): int))
       && QuantifierTestsHard.__default.f__exists(Lit(s#0))
         == (exists i#5: int :: 
          { $Unbox(Seq#Index(s#0, i#5)): int } 
          (LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))
               ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), i#5)): int
                 && $Unbox(Seq#Index(Lit(s#0), i#5)): int < 256)
             && 
            LitInt(0) <= i#5
             && i#5 < Seq#Length(Lit(s#0))
             && QuantifierTestsHard.__default.byte($Unbox(Seq#Index(Lit(s#0), i#5)): int)));

// function declaration for QuantifierTestsHard._default.g_forall
function QuantifierTestsHard.__default.g__forall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.g__forall#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.g__forall#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.g__forall
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.g__forall#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.g__forall#requires(s#0)
       == (forall j#4: int :: 
        { $Unbox(Seq#Index(s#0, j#4)): int } 
        (LitInt(0) <= j#4 && j#4 < Seq#Length(s#0)
             ==> LitInt(0) <= $Unbox(Seq#Index(s#0, j#4)): int
               && $Unbox(Seq#Index(s#0, j#4)): int < 256)
           && (LitInt(0) <= j#4 && j#4 < Seq#Length(s#0)
             ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(s#0, j#4)): int))));

// definition axiom for QuantifierTestsHard.__default.g__forall (revealed)
axiom {:id "id331"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.g__forall(s#0) } 
  QuantifierTestsHard.__default.g__forall#canCall(s#0)
       || ($Is(s#0, TSeq(TInt))
         && (forall j#4: int :: 
          { $Unbox(Seq#Index(s#0, j#4)): int } 
          (LitInt(0) <= j#4 && j#4 < Seq#Length(s#0)
               ==> LitInt(0) <= $Unbox(Seq#Index(s#0, j#4)): int
                 && $Unbox(Seq#Index(s#0, j#4)): int < 256)
             && (LitInt(0) <= j#4 && j#4 < Seq#Length(s#0)
               ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(s#0, j#4)): int))))
     ==> QuantifierTestsHard.__default.g__forall(s#0) == (Seq#Length(s#0) > 2));

// definition axiom for QuantifierTestsHard.__default.g__forall for all literals (revealed)
axiom {:id "id332"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.g__forall(Lit(s#0)) } 
  QuantifierTestsHard.__default.g__forall#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && (forall j#5: int :: 
          { $Unbox(Seq#Index(s#0, j#5)): int } 
          (LitInt(0) <= j#5 && j#5 < Seq#Length(Lit(s#0))
               ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), j#5)): int
                 && $Unbox(Seq#Index(Lit(s#0), j#5)): int < 256)
             && (LitInt(0) <= j#5 && j#5 < Seq#Length(Lit(s#0))
               ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(Lit(s#0), j#5)): int))))
     ==> QuantifierTestsHard.__default.g__forall(Lit(s#0)) == (Seq#Length(Lit(s#0)) > 2));

// function declaration for QuantifierTestsHard._default.h_forall
function QuantifierTestsHard.__default.h__forall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.h__forall#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.h__forall#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.h__forall
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.h__forall#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.h__forall#requires(s#0) == true);

// definition axiom for QuantifierTestsHard.__default.h__forall (revealed)
axiom {:id "id333"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.h__forall(s#0) } 
  QuantifierTestsHard.__default.h__forall#canCall(s#0) || $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.f__forall#canCall(s#0)
       && QuantifierTestsHard.__default.h__forall(s#0)
         == QuantifierTestsHard.__default.f__forall(s#0));

// definition axiom for QuantifierTestsHard.__default.h__forall for all literals (revealed)
axiom {:id "id334"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.h__forall(Lit(s#0)) } 
  QuantifierTestsHard.__default.h__forall#canCall(Lit(s#0))
       || $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.f__forall#canCall(Lit(s#0))
       && QuantifierTestsHard.__default.h__forall(Lit(s#0))
         == Lit(QuantifierTestsHard.__default.f__forall(Lit(s#0))));

// function declaration for QuantifierTestsHard._default.h
function QuantifierTestsHard.__default.h(s#0: Seq) : bool;

function QuantifierTestsHard.__default.h#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.h#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.h
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.h#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.h#requires(s#0)
       == (forall j#5: int :: 
        { $Unbox(Seq#Index(s#0, j#5)): int } 
        (LitInt(0) <= j#5 && j#5 < Seq#Length(s#0)
             ==> LitInt(0) <= $Unbox(Seq#Index(s#0, j#5)): int
               && $Unbox(Seq#Index(s#0, j#5)): int < 256)
           && (LitInt(0) <= j#5 && j#5 < Seq#Length(s#0)
             ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(s#0, j#5)): int))));

// definition axiom for QuantifierTestsHard.__default.h (revealed)
axiom {:id "id335"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.h(s#0) } 
  QuantifierTestsHard.__default.h#canCall(s#0)
       || ($Is(s#0, TSeq(TInt))
         && (forall j#5: int :: 
          { $Unbox(Seq#Index(s#0, j#5)): int } 
          (LitInt(0) <= j#5 && j#5 < Seq#Length(s#0)
               ==> LitInt(0) <= $Unbox(Seq#Index(s#0, j#5)): int
                 && $Unbox(Seq#Index(s#0, j#5)): int < 256)
             && (LitInt(0) <= j#5 && j#5 < Seq#Length(s#0)
               ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(s#0, j#5)): int))))
     ==> QuantifierTestsHard.__default.g__forall#canCall(s#0)
       && QuantifierTestsHard.__default.h(s#0)
         == QuantifierTestsHard.__default.g__forall(s#0));

// definition axiom for QuantifierTestsHard.__default.h for all literals (revealed)
axiom {:id "id336"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.h(Lit(s#0)) } 
  QuantifierTestsHard.__default.h#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && (forall j#6: int :: 
          { $Unbox(Seq#Index(s#0, j#6)): int } 
          (LitInt(0) <= j#6 && j#6 < Seq#Length(Lit(s#0))
               ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), j#6)): int
                 && $Unbox(Seq#Index(Lit(s#0), j#6)): int < 256)
             && (LitInt(0) <= j#6 && j#6 < Seq#Length(Lit(s#0))
               ==> QuantifierTestsHard.__default.byte($Unbox(Seq#Index(Lit(s#0), j#6)): int))))
     ==> QuantifierTestsHard.__default.g__forall#canCall(Lit(s#0))
       && QuantifierTestsHard.__default.h(Lit(s#0))
         == Lit(QuantifierTestsHard.__default.g__forall(Lit(s#0))));

// function declaration for QuantifierTestsHard._default.i
function QuantifierTestsHard.__default.i(s#0: Seq) : bool;

function QuantifierTestsHard.__default.i#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.i#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.i
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.i#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.i#requires(s#0)
       == (forall k#4: int :: 
        { $Unbox(Seq#Index(s#0, k#4)): int } 
        (LitInt(0) <= k#4 && k#4 < Seq#Length(s#0)
             ==> LitInt(0) <= $Unbox(Seq#Index(s#0, k#4)): int)
           && (LitInt(0) <= k#4 && k#4 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, k#4)): int < 5)));

// definition axiom for QuantifierTestsHard.__default.i (revealed)
axiom {:id "id337"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.i(s#0) } 
  QuantifierTestsHard.__default.i#canCall(s#0)
       || ($Is(s#0, TSeq(TInt))
         && (forall k#4: int :: 
          { $Unbox(Seq#Index(s#0, k#4)): int } 
          (LitInt(0) <= k#4 && k#4 < Seq#Length(s#0)
               ==> LitInt(0) <= $Unbox(Seq#Index(s#0, k#4)): int)
             && (LitInt(0) <= k#4 && k#4 < Seq#Length(s#0)
               ==> $Unbox(Seq#Index(s#0, k#4)): int < 5)))
     ==> QuantifierTestsHard.__default.i(s#0) == Lit(true));

// definition axiom for QuantifierTestsHard.__default.i for all literals (revealed)
axiom {:id "id338"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.i(Lit(s#0)) } 
  QuantifierTestsHard.__default.i#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && (forall k#5: int :: 
          { $Unbox(Seq#Index(s#0, k#5)): int } 
          (LitInt(0) <= k#5 && k#5 < Seq#Length(Lit(s#0))
               ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), k#5)): int)
             && (LitInt(0) <= k#5 && k#5 < Seq#Length(Lit(s#0))
               ==> $Unbox(Seq#Index(Lit(s#0), k#5)): int < 5)))
     ==> QuantifierTestsHard.__default.i(Lit(s#0)) == Lit(true));

// function declaration for QuantifierTestsHard._default.j
function QuantifierTestsHard.__default.j(s#0: Seq) : bool;

function QuantifierTestsHard.__default.j#canCall(s#0: Seq) : bool;

function QuantifierTestsHard.__default.j#requires(Seq) : bool;

// #requires axiom for QuantifierTestsHard.__default.j
axiom (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.j#requires(s#0) } 
  $Is(s#0, TSeq(TInt))
     ==> QuantifierTestsHard.__default.j#requires(s#0)
       == (forall k#5: int :: 
        { $Unbox(Seq#Index(s#0, k#5)): int } 
        (LitInt(0) <= k#5 && k#5 < Seq#Length(s#0)
             ==> LitInt(0) <= $Unbox(Seq#Index(s#0, k#5)): int)
           && (LitInt(0) <= k#5 && k#5 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, k#5)): int < 5)));

// definition axiom for QuantifierTestsHard.__default.j (revealed)
axiom {:id "id339"} (forall s#0: Seq :: 
  { QuantifierTestsHard.__default.j(s#0) } 
  QuantifierTestsHard.__default.j#canCall(s#0)
       || ($Is(s#0, TSeq(TInt))
         && (forall k#5: int :: 
          { $Unbox(Seq#Index(s#0, k#5)): int } 
          (LitInt(0) <= k#5 && k#5 < Seq#Length(s#0)
               ==> LitInt(0) <= $Unbox(Seq#Index(s#0, k#5)): int)
             && (LitInt(0) <= k#5 && k#5 < Seq#Length(s#0)
               ==> $Unbox(Seq#Index(s#0, k#5)): int < 5)))
     ==> QuantifierTestsHard.__default.i#canCall(s#0)
       && QuantifierTestsHard.__default.j(s#0) == QuantifierTestsHard.__default.i(s#0));

// definition axiom for QuantifierTestsHard.__default.j for all literals (revealed)
axiom {:id "id340"} (forall s#0: Seq :: 
  {:weight 3} { QuantifierTestsHard.__default.j(Lit(s#0)) } 
  QuantifierTestsHard.__default.j#canCall(Lit(s#0))
       || ($Is(s#0, TSeq(TInt))
         && (forall k#6: int :: 
          { $Unbox(Seq#Index(s#0, k#6)): int } 
          (LitInt(0) <= k#6 && k#6 < Seq#Length(Lit(s#0))
               ==> LitInt(0) <= $Unbox(Seq#Index(Lit(s#0), k#6)): int)
             && (LitInt(0) <= k#6 && k#6 < Seq#Length(Lit(s#0))
               ==> $Unbox(Seq#Index(Lit(s#0), k#6)): int < 5)))
     ==> QuantifierTestsHard.__default.i#canCall(Lit(s#0))
       && QuantifierTestsHard.__default.j(Lit(s#0))
         == Lit(QuantifierTestsHard.__default.i(Lit(s#0))));

// function declaration for QuantifierTestsHard._default.m
function QuantifierTestsHard.__default.m(x#0: int) : bool;

function QuantifierTestsHard.__default.m#canCall(x#0: int) : bool;

function QuantifierTestsHard.__default.m#requires(int) : bool;

// #requires axiom for QuantifierTestsHard.__default.m
axiom (forall x#0: int :: 
  { QuantifierTestsHard.__default.m#requires(x#0) } 
  QuantifierTestsHard.__default.m#requires(x#0) == true);

// function declaration for QuantifierTestsHard._default.n
function QuantifierTestsHard.__default.n(x#0: int) : bool;

function QuantifierTestsHard.__default.n#canCall(x#0: int) : bool;

function QuantifierTestsHard.__default.n#requires(int) : bool;

// #requires axiom for QuantifierTestsHard.__default.n
axiom (forall x#0: int :: 
  { QuantifierTestsHard.__default.n#requires(x#0) } 
  QuantifierTestsHard.__default.n#requires(x#0) == true);

// function declaration for QuantifierTestsHard._default.f1
function QuantifierTestsHard.__default.f1(x#0: int) : bool;

function QuantifierTestsHard.__default.f1#canCall(x#0: int) : bool;

function QuantifierTestsHard.__default.f1#requires(int) : bool;

// #requires axiom for QuantifierTestsHard.__default.f1
axiom (forall x#0: int :: 
  { QuantifierTestsHard.__default.f1#requires(x#0) } 
  QuantifierTestsHard.__default.f1#requires(x#0) == (x#0 > 3 && x#0 < 16));

// function declaration for QuantifierTestsHard._default.variable_uniqueness_test
function QuantifierTestsHard.__default.variable__uniqueness__test(x#0: int) : bool;

function QuantifierTestsHard.__default.variable__uniqueness__test#canCall(x#0: int) : bool;

function QuantifierTestsHard.__default.variable__uniqueness__test#requires(int) : bool;

// #requires axiom for QuantifierTestsHard.__default.variable__uniqueness__test
axiom (forall x#0: int :: 
  { QuantifierTestsHard.__default.variable__uniqueness__test#requires(x#0) } 
  QuantifierTestsHard.__default.variable__uniqueness__test#requires(x#0)
     == (((forall y#12: int :: 
          { QuantifierTestsHard.__default.m(y#12) } 
          QuantifierTestsHard.__default.m(y#12))
         ==> x#0 > 3)
       && ((forall y#13: int :: 
          { QuantifierTestsHard.__default.m(y#13) } 
          QuantifierTestsHard.__default.m(y#13))
         ==> x#0 < 16)));

// definition axiom for QuantifierTestsHard.__default.variable__uniqueness__test (revealed)
axiom {:id "id341"} (forall x#0: int :: 
  { QuantifierTestsHard.__default.variable__uniqueness__test(x#0) } 
  QuantifierTestsHard.__default.variable__uniqueness__test#canCall(x#0)
       || (((forall y#12: int :: 
            { QuantifierTestsHard.__default.m(y#12) } 
            QuantifierTestsHard.__default.m(y#12))
           ==> x#0 > 3)
         && ((forall y#13: int :: 
            { QuantifierTestsHard.__default.m(y#13) } 
            QuantifierTestsHard.__default.m(y#13))
           ==> x#0 < 16))
     ==> (forall y#14: int :: 
        { QuantifierTestsHard.__default.m(y#14) } 
        QuantifierTestsHard.__default.m#canCall(y#14))
       && ((forall y#14: int :: 
          { QuantifierTestsHard.__default.m(y#14) } 
          QuantifierTestsHard.__default.m(y#14))
         ==> QuantifierTestsHard.__default.f1#canCall(x#0))
       && QuantifierTestsHard.__default.variable__uniqueness__test(x#0)
         == ((forall y#14: int :: 
            { QuantifierTestsHard.__default.m(y#14) } 
            QuantifierTestsHard.__default.m(y#14))
           && QuantifierTestsHard.__default.f1(x#0)));

// definition axiom for QuantifierTestsHard.__default.variable__uniqueness__test for all literals (revealed)
axiom {:id "id342"} (forall x#0: int :: 
  {:weight 3} { QuantifierTestsHard.__default.variable__uniqueness__test(LitInt(x#0)) } 
  QuantifierTestsHard.__default.variable__uniqueness__test#canCall(LitInt(x#0))
       || (((forall y#15: int :: 
            { QuantifierTestsHard.__default.m(y#15) } 
            QuantifierTestsHard.__default.m(y#15))
           ==> x#0 > 3)
         && ((forall y#16: int :: 
            { QuantifierTestsHard.__default.m(y#16) } 
            QuantifierTestsHard.__default.m(y#16))
           ==> x#0 < 16))
     ==> (forall y#17: int :: 
        { QuantifierTestsHard.__default.m(y#17) } 
        QuantifierTestsHard.__default.m#canCall(y#17))
       && ((forall y#17: int :: 
          { QuantifierTestsHard.__default.m(y#17) } 
          QuantifierTestsHard.__default.m(y#17))
         ==> QuantifierTestsHard.__default.f1#canCall(LitInt(x#0)))
       && QuantifierTestsHard.__default.variable__uniqueness__test(LitInt(x#0))
         == ((forall y#17: int :: 
            { QuantifierTestsHard.__default.m(y#17) } 
            QuantifierTestsHard.__default.m(y#17))
           && QuantifierTestsHard.__default.f1(LitInt(x#0))));

const unique class.CorrectReqOrdering.__default: ClassName;

// function declaration for CorrectReqOrdering._default.f1
function CorrectReqOrdering.__default.f1(x#0: int) : bool;

function CorrectReqOrdering.__default.f1#canCall(x#0: int) : bool;

function CorrectReqOrdering.__default.f1#requires(int) : bool;

// #requires axiom for CorrectReqOrdering.__default.f1
axiom (forall x#0: int :: 
  { CorrectReqOrdering.__default.f1#requires(x#0) } 
  CorrectReqOrdering.__default.f1#requires(x#0) == (x#0 > 3));

// function declaration for CorrectReqOrdering._default.f2
function CorrectReqOrdering.__default.f2(b#0: bool) : bool;

function CorrectReqOrdering.__default.f2#canCall(b#0: bool) : bool;

function CorrectReqOrdering.__default.f2#requires(bool) : bool;

// #requires axiom for CorrectReqOrdering.__default.f2
axiom (forall b#0: bool :: 
  { CorrectReqOrdering.__default.f2#requires(b#0) } 
  CorrectReqOrdering.__default.f2#requires(b#0) == b#0);

// function declaration for CorrectReqOrdering._default.f3
function CorrectReqOrdering.__default.f3(z#0: int) : bool;

function CorrectReqOrdering.__default.f3#canCall(z#0: int) : bool;

function CorrectReqOrdering.__default.f3#requires(int) : bool;

// #requires axiom for CorrectReqOrdering.__default.f3
axiom (forall z#0: int :: 
  { CorrectReqOrdering.__default.f3#requires(z#0) } 
  CorrectReqOrdering.__default.f3#requires(z#0)
     == (z#0 > 3 && CorrectReqOrdering.__default.f1(z#0)));

// definition axiom for CorrectReqOrdering.__default.f3 (revealed)
axiom {:id "id343"} (forall z#0: int :: 
  { CorrectReqOrdering.__default.f3(z#0) } 
  CorrectReqOrdering.__default.f3#canCall(z#0)
       || (z#0 > 3 && CorrectReqOrdering.__default.f1(z#0))
     ==> CorrectReqOrdering.__default.f1#canCall(z#0)
       && CorrectReqOrdering.__default.f2#canCall(CorrectReqOrdering.__default.f1(z#0))
       && CorrectReqOrdering.__default.f3(z#0)
         == CorrectReqOrdering.__default.f2(CorrectReqOrdering.__default.f1(z#0)));

// definition axiom for CorrectReqOrdering.__default.f3 for all literals (revealed)
axiom {:id "id344"} (forall z#0: int :: 
  {:weight 3} { CorrectReqOrdering.__default.f3(LitInt(z#0)) } 
  CorrectReqOrdering.__default.f3#canCall(LitInt(z#0))
       || (Lit(z#0 > 3) && CorrectReqOrdering.__default.f1(LitInt(z#0)))
     ==> CorrectReqOrdering.__default.f1#canCall(LitInt(z#0))
       && CorrectReqOrdering.__default.f2#canCall(CorrectReqOrdering.__default.f1(LitInt(z#0)))
       && CorrectReqOrdering.__default.f3(LitInt(z#0))
         == CorrectReqOrdering.__default.f2(CorrectReqOrdering.__default.f1(LitInt(z#0))));

const unique class.ShortCircuiting.__default: ClassName;

// function declaration for ShortCircuiting._default.f1
function ShortCircuiting.__default.f1(x#0: int) : bool;

function ShortCircuiting.__default.f1#canCall(x#0: int) : bool;

function ShortCircuiting.__default.f1#requires(int) : bool;

// #requires axiom for ShortCircuiting.__default.f1
axiom (forall x#0: int :: 
  { ShortCircuiting.__default.f1#requires(x#0) } 
  ShortCircuiting.__default.f1#requires(x#0) == (x#0 > 3));

// function declaration for ShortCircuiting._default.f2
function ShortCircuiting.__default.f2(y#0: int) : bool;

function ShortCircuiting.__default.f2#canCall(y#0: int) : bool;

function ShortCircuiting.__default.f2#requires(int) : bool;

// #requires axiom for ShortCircuiting.__default.f2
axiom (forall y#0: int :: 
  { ShortCircuiting.__default.f2#requires(y#0) } 
  ShortCircuiting.__default.f2#requires(y#0) == (y#0 < 10));

// function declaration for ShortCircuiting._default.test1
function ShortCircuiting.__default.test1(x'#0: int, y'#0: int) : bool;

function ShortCircuiting.__default.test1#canCall(x'#0: int, y'#0: int) : bool;

function ShortCircuiting.__default.test1#requires(int, int) : bool;

// #requires axiom for ShortCircuiting.__default.test1
axiom (forall x'#0: int, y'#0: int :: 
  { ShortCircuiting.__default.test1#requires(x'#0, y'#0) } 
  ShortCircuiting.__default.test1#requires(x'#0, y'#0)
     == (x'#0 > 3 && (ShortCircuiting.__default.f1(x'#0) ==> y'#0 < 10)));

// definition axiom for ShortCircuiting.__default.test1 (revealed)
axiom {:id "id345"} (forall x'#0: int, y'#0: int :: 
  { ShortCircuiting.__default.test1(x'#0, y'#0) } 
  ShortCircuiting.__default.test1#canCall(x'#0, y'#0)
       || (x'#0 > 3 && (ShortCircuiting.__default.f1(x'#0) ==> y'#0 < 10))
     ==> ShortCircuiting.__default.f1#canCall(x'#0)
       && (ShortCircuiting.__default.f1(x'#0)
         ==> ShortCircuiting.__default.f2#canCall(y'#0))
       && ShortCircuiting.__default.test1(x'#0, y'#0)
         == (ShortCircuiting.__default.f1(x'#0) && ShortCircuiting.__default.f2(y'#0)));

// definition axiom for ShortCircuiting.__default.test1 for all literals (revealed)
axiom {:id "id346"} (forall x'#0: int, y'#0: int :: 
  {:weight 3} { ShortCircuiting.__default.test1(LitInt(x'#0), LitInt(y'#0)) } 
  ShortCircuiting.__default.test1#canCall(LitInt(x'#0), LitInt(y'#0))
       || (Lit(x'#0 > 3) && (ShortCircuiting.__default.f1(LitInt(x'#0)) ==> y'#0 < 10))
     ==> ShortCircuiting.__default.f1#canCall(LitInt(x'#0))
       && (ShortCircuiting.__default.f1(LitInt(x'#0))
         ==> ShortCircuiting.__default.f2#canCall(LitInt(y'#0)))
       && ShortCircuiting.__default.test1(LitInt(x'#0), LitInt(y'#0))
         == (ShortCircuiting.__default.f1(LitInt(x'#0))
           && ShortCircuiting.__default.f2(LitInt(y'#0))));

// function declaration for ShortCircuiting._default.test2
function ShortCircuiting.__default.test2(x'#0: int, y'#0: int) : bool;

function ShortCircuiting.__default.test2#canCall(x'#0: int, y'#0: int) : bool;

function ShortCircuiting.__default.test2#requires(int, int) : bool;

// #requires axiom for ShortCircuiting.__default.test2
axiom (forall x'#0: int, y'#0: int :: 
  { ShortCircuiting.__default.test2#requires(x'#0, y'#0) } 
  ShortCircuiting.__default.test2#requires(x'#0, y'#0)
     == (x'#0 > 3 && (ShortCircuiting.__default.f1(x'#0) ==> y'#0 < 10)));

// definition axiom for ShortCircuiting.__default.test2 (revealed)
axiom {:id "id347"} (forall x'#0: int, y'#0: int :: 
  { ShortCircuiting.__default.test2(x'#0, y'#0) } 
  ShortCircuiting.__default.test2#canCall(x'#0, y'#0)
       || (x'#0 > 3 && (ShortCircuiting.__default.f1(x'#0) ==> y'#0 < 10))
     ==> ShortCircuiting.__default.f1#canCall(x'#0)
       && (ShortCircuiting.__default.f1(x'#0)
         ==> ShortCircuiting.__default.f2#canCall(y'#0))
       && ShortCircuiting.__default.test2(x'#0, y'#0)
         == (ShortCircuiting.__default.f1(x'#0) ==> ShortCircuiting.__default.f2(y'#0)));

// definition axiom for ShortCircuiting.__default.test2 for all literals (revealed)
axiom {:id "id348"} (forall x'#0: int, y'#0: int :: 
  {:weight 3} { ShortCircuiting.__default.test2(LitInt(x'#0), LitInt(y'#0)) } 
  ShortCircuiting.__default.test2#canCall(LitInt(x'#0), LitInt(y'#0))
       || (Lit(x'#0 > 3) && (ShortCircuiting.__default.f1(LitInt(x'#0)) ==> y'#0 < 10))
     ==> ShortCircuiting.__default.f1#canCall(LitInt(x'#0))
       && (ShortCircuiting.__default.f1(LitInt(x'#0))
         ==> ShortCircuiting.__default.f2#canCall(LitInt(y'#0)))
       && ShortCircuiting.__default.test2(LitInt(x'#0), LitInt(y'#0))
         == (ShortCircuiting.__default.f1(LitInt(x'#0))
           ==> ShortCircuiting.__default.f2(LitInt(y'#0))));

// function declaration for ShortCircuiting._default.test3
function ShortCircuiting.__default.test3(x'#0: int, y'#0: int) : bool;

function ShortCircuiting.__default.test3#canCall(x'#0: int, y'#0: int) : bool;

function ShortCircuiting.__default.test3#requires(int, int) : bool;

// #requires axiom for ShortCircuiting.__default.test3
axiom (forall x'#0: int, y'#0: int :: 
  { ShortCircuiting.__default.test3#requires(x'#0, y'#0) } 
  ShortCircuiting.__default.test3#requires(x'#0, y'#0)
     == (x'#0 > 3 && (!ShortCircuiting.__default.f1(x'#0) ==> y'#0 < 10)));

// definition axiom for ShortCircuiting.__default.test3 (revealed)
axiom {:id "id349"} (forall x'#0: int, y'#0: int :: 
  { ShortCircuiting.__default.test3(x'#0, y'#0) } 
  ShortCircuiting.__default.test3#canCall(x'#0, y'#0)
       || (x'#0 > 3 && (!ShortCircuiting.__default.f1(x'#0) ==> y'#0 < 10))
     ==> ShortCircuiting.__default.f1#canCall(x'#0)
       && (!ShortCircuiting.__default.f1(x'#0)
         ==> ShortCircuiting.__default.f2#canCall(y'#0))
       && ShortCircuiting.__default.test3(x'#0, y'#0)
         == (ShortCircuiting.__default.f1(x'#0) || ShortCircuiting.__default.f2(y'#0)));

// definition axiom for ShortCircuiting.__default.test3 for all literals (revealed)
axiom {:id "id350"} (forall x'#0: int, y'#0: int :: 
  {:weight 3} { ShortCircuiting.__default.test3(LitInt(x'#0), LitInt(y'#0)) } 
  ShortCircuiting.__default.test3#canCall(LitInt(x'#0), LitInt(y'#0))
       || (Lit(x'#0 > 3) && (!ShortCircuiting.__default.f1(LitInt(x'#0)) ==> y'#0 < 10))
     ==> ShortCircuiting.__default.f1#canCall(LitInt(x'#0))
       && (!ShortCircuiting.__default.f1(LitInt(x'#0))
         ==> ShortCircuiting.__default.f2#canCall(LitInt(y'#0)))
       && ShortCircuiting.__default.test3(LitInt(x'#0), LitInt(y'#0))
         == (ShortCircuiting.__default.f1(LitInt(x'#0))
           || ShortCircuiting.__default.f2(LitInt(y'#0))));

const unique class.Lets.__default: ClassName;

// function declaration for Lets._default.f1
function Lets.__default.f1(x#0: int) : bool;

function Lets.__default.f1#canCall(x#0: int) : bool;

function Lets.__default.f1#requires(int) : bool;

// #requires axiom for Lets.__default.f1
axiom (forall x#0: int :: 
  { Lets.__default.f1#requires(x#0) } 
  Lets.__default.f1#requires(x#0) == (x#0 > 3));

// function declaration for Lets._default.test1
function Lets.__default.test1(x'#0: int) : bool;

function Lets.__default.test1#canCall(x'#0: int) : bool;

function Lets.__default.test1#requires(int) : bool;

// #requires axiom for Lets.__default.test1
axiom (forall x'#0: int :: 
  { Lets.__default.test1#requires(x'#0) } 
  Lets.__default.test1#requires(x'#0)
     == (var y'#5 := Mul(LitInt(3), x'#0); y'#5 > 3));

// definition axiom for Lets.__default.test1 (revealed)
axiom {:id "id351"} (forall x'#0: int :: 
  { Lets.__default.test1(x'#0) } 
  Lets.__default.test1#canCall(x'#0)
       || (var y'#5 := Mul(LitInt(3), x'#0); y'#5 > 3)
     ==> (var y'#6 := Mul(LitInt(3), x'#0); Lets.__default.f1#canCall(y'#6))
       && Lets.__default.test1(x'#0)
         == (var y'#6 := Mul(LitInt(3), x'#0); Lets.__default.f1(y'#6)));

// definition axiom for Lets.__default.test1 for all literals (revealed)
axiom {:id "id352"} (forall x'#0: int :: 
  {:weight 3} { Lets.__default.test1(LitInt(x'#0)) } 
  Lets.__default.test1#canCall(LitInt(x'#0))
       || (var y'#7 := LitInt(Mul(LitInt(3), LitInt(x'#0))); Lit(y'#7 > 3))
     ==> (var y'#8 := LitInt(Mul(LitInt(3), LitInt(x'#0))); 
        Lets.__default.f1#canCall(y'#8))
       && Lets.__default.test1(LitInt(x'#0))
         == (var y'#8 := LitInt(Mul(LitInt(3), LitInt(x'#0))); Lets.__default.f1(y'#8)));

const unique class.M1_mM2.__default: ClassName;

// function declaration for M1.M2._default.f
function M1_mM2.__default.f(x#0: int) : bool;

function M1_mM2.__default.f#canCall(x#0: int) : bool;

function M1_mM2.__default.f#requires(int) : bool;

// #requires axiom for M1_mM2.__default.f
axiom (forall x#0: int :: 
  { M1_mM2.__default.f#requires(x#0) } 
  M1_mM2.__default.f#requires(x#0) == (x#0 > 3));

// definition axiom for M1_mM2.__default.f (revealed)
axiom {:id "id353"} (forall x#0: int :: 
  { M1_mM2.__default.f(x#0) } 
  M1_mM2.__default.f#canCall(x#0) || x#0 > 3
     ==> M1_mM2.__default.f(x#0) == (x#0 > 7));

// definition axiom for M1_mM2.__default.f for all literals (revealed)
axiom {:id "id354"} (forall x#0: int :: 
  {:weight 3} { M1_mM2.__default.f(LitInt(x#0)) } 
  M1_mM2.__default.f#canCall(LitInt(x#0)) || Lit(x#0 > 3)
     ==> M1_mM2.__default.f(LitInt(x#0)) == Lit(x#0 > 7));

// function declaration for M1.M2._default.h
function M1_mM2.__default.h(y#0: int) : bool;

function M1_mM2.__default.h#canCall(y#0: int) : bool;

function M1_mM2.__default.h#requires(int) : bool;

// #requires axiom for M1_mM2.__default.h
axiom (forall y#0: int :: 
  { M1_mM2.__default.h#requires(y#0) } 
  M1_mM2.__default.h#requires(y#0) == (y#0 > 3));

// definition axiom for M1_mM2.__default.h (revealed)
axiom {:id "id355"} (forall y#0: int :: 
  { M1_mM2.__default.h(y#0) } 
  M1_mM2.__default.h#canCall(y#0) || y#0 > 3
     ==> M1_mM2.__default.f#canCall(y#0)
       && M1_mM2.__default.h(y#0) == M1_mM2.__default.f(y#0));

// definition axiom for M1_mM2.__default.h for all literals (revealed)
axiom {:id "id356"} (forall y#0: int :: 
  {:weight 3} { M1_mM2.__default.h(LitInt(y#0)) } 
  M1_mM2.__default.h#canCall(LitInt(y#0)) || Lit(y#0 > 3)
     ==> M1_mM2.__default.f#canCall(LitInt(y#0))
       && M1_mM2.__default.h(LitInt(y#0)) == Lit(M1_mM2.__default.f(LitInt(y#0))));

const unique class.M1.__default: ClassName;

const unique class.Datatypes.__default: ClassName;

// function declaration for Datatypes._default.f1
function Datatypes.__default.f1(t#0: DatatypeType) : bool;

function Datatypes.__default.f1#canCall(t#0: DatatypeType) : bool;

function Tclass.Datatypes.TheType() : Ty
uses {
// Tclass.Datatypes.TheType Tag
axiom Tag(Tclass.Datatypes.TheType()) == Tagclass.Datatypes.TheType
   && TagFamily(Tclass.Datatypes.TheType()) == tytagFamily$TheType;
}

const unique Tagclass.Datatypes.TheType: TyTag;

// Box/unbox axiom for Tclass.Datatypes.TheType
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Datatypes.TheType()) } 
  $IsBox(bx, Tclass.Datatypes.TheType())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Datatypes.TheType()));

function Datatypes.__default.f1#requires(DatatypeType) : bool;

// #requires axiom for Datatypes.__default.f1
axiom (forall t#0: DatatypeType :: 
  { Datatypes.__default.f1#requires(t#0) } 
  $Is(t#0, Tclass.Datatypes.TheType())
     ==> Datatypes.__default.f1#requires(t#0)
       == (Datatypes.TheType.TheType__builder_q(t#0) && Datatypes.TheType.x(t#0) > 3));

// function declaration for Datatypes._default.test
function Datatypes.__default.test(t#0: DatatypeType) : bool;

function Datatypes.__default.test#canCall(t#0: DatatypeType) : bool;

function Datatypes.__default.test#requires(DatatypeType) : bool;

// #requires axiom for Datatypes.__default.test
axiom (forall t#0: DatatypeType :: 
  { Datatypes.__default.test#requires(t#0) } 
  $Is(t#0, Tclass.Datatypes.TheType())
     ==> Datatypes.__default.test#requires(t#0)
       == (Datatypes.TheType.TheType__builder_q(t#0) && Datatypes.TheType.x(t#0) > 3));

// definition axiom for Datatypes.__default.test (revealed)
axiom {:id "id357"} (forall t#0: DatatypeType :: 
  { Datatypes.__default.test(t#0) } 
  Datatypes.__default.test#canCall(t#0)
       || ($Is(t#0, Tclass.Datatypes.TheType())
         && 
        Datatypes.TheType.TheType__builder_q(t#0)
         && Datatypes.TheType.x(t#0) > 3)
     ==> Datatypes.__default.f1#canCall(t#0)
       && Datatypes.__default.test(t#0) == Datatypes.__default.f1(t#0));

// definition axiom for Datatypes.__default.test for all literals (revealed)
axiom {:id "id358"} (forall t#0: DatatypeType :: 
  {:weight 3} { Datatypes.__default.test(Lit(t#0)) } 
  Datatypes.__default.test#canCall(Lit(t#0))
       || ($Is(t#0, Tclass.Datatypes.TheType())
         && Lit(Datatypes.TheType.TheType__builder_q(Lit(t#0))
             && Datatypes.TheType.x(Lit(t#0)) > 3))
     ==> Datatypes.__default.f1#canCall(Lit(t#0))
       && Datatypes.__default.test(Lit(t#0)) == Datatypes.__default.f1(Lit(t#0)));

// function declaration for Datatypes._default.f2
function Datatypes.__default.f2(x#0: int) : bool;

function Datatypes.__default.f2#canCall(x#0: int) : bool;

function Datatypes.__default.f2#requires(int) : bool;

// #requires axiom for Datatypes.__default.f2
axiom (forall x#0: int :: 
  { Datatypes.__default.f2#requires(x#0) } 
  Datatypes.__default.f2#requires(x#0)
     == (forall t#4: DatatypeType :: 
      { Datatypes.TheType.x(t#4) } { Datatypes.TheType.TheType__builder_q(t#4) } 
      $Is(t#4, Tclass.Datatypes.TheType())
         ==> Datatypes.TheType.TheType__builder_q(t#4) && Datatypes.TheType.x(t#4) > x#0));

// definition axiom for Datatypes.__default.f2 (revealed)
axiom {:id "id359"} (forall x#0: int :: 
  { Datatypes.__default.f2(x#0) } 
  Datatypes.__default.f2#canCall(x#0)
       || (forall t#4: DatatypeType :: 
        { Datatypes.TheType.x(t#4) } { Datatypes.TheType.TheType__builder_q(t#4) } 
        $Is(t#4, Tclass.Datatypes.TheType())
           ==> Datatypes.TheType.TheType__builder_q(t#4) && Datatypes.TheType.x(t#4) > x#0)
     ==> Datatypes.__default.f2(x#0) == Lit(true));

// definition axiom for Datatypes.__default.f2 for all literals (revealed)
axiom {:id "id360"} (forall x#0: int :: 
  {:weight 3} { Datatypes.__default.f2(LitInt(x#0)) } 
  Datatypes.__default.f2#canCall(LitInt(x#0))
       || (forall t#5: DatatypeType :: 
        { Datatypes.TheType.x(t#5) } { Datatypes.TheType.TheType__builder_q(t#5) } 
        $Is(t#5, Tclass.Datatypes.TheType())
           ==> Datatypes.TheType.TheType__builder_q(t#5) && Datatypes.TheType.x(t#5) > x#0)
     ==> Datatypes.__default.f2(LitInt(x#0)) == Lit(true));

// function declaration for Datatypes._default.f3
function Datatypes.__default.f3(y#0: int) : bool;

function Datatypes.__default.f3#canCall(y#0: int) : bool;

function Datatypes.__default.f3#requires(int) : bool;

// #requires axiom for Datatypes.__default.f3
axiom (forall y#0: int :: 
  { Datatypes.__default.f3#requires(y#0) } 
  Datatypes.__default.f3#requires(y#0) == true);

// definition axiom for Datatypes.__default.f3 (revealed)
axiom {:id "id361"} (forall y#0: int :: 
  { Datatypes.__default.f3(y#0) } 
  Datatypes.__default.f2#canCall(y#0)
     && Datatypes.__default.f3(y#0) == Datatypes.__default.f2(y#0));

// definition axiom for Datatypes.__default.f3 for all literals (revealed)
axiom {:id "id362"} (forall y#0: int :: 
  {:weight 3} { Datatypes.__default.f3(LitInt(y#0)) } 
  Datatypes.__default.f2#canCall(LitInt(y#0))
     && Datatypes.__default.f3(LitInt(y#0)) == Lit(Datatypes.__default.f2(LitInt(y#0))));

// function declaration for Datatypes._default.test2
function Datatypes.__default.test2(z#0: int) : bool;

function Datatypes.__default.test2#canCall(z#0: int) : bool;

function Datatypes.__default.test2#requires(int) : bool;

// #requires axiom for Datatypes.__default.test2
axiom (forall z#0: int :: 
  { Datatypes.__default.test2#requires(z#0) } 
  Datatypes.__default.test2#requires(z#0)
     == (forall t#5: DatatypeType :: 
      { Datatypes.TheType.x(t#5) } { Datatypes.TheType.TheType__builder_q(t#5) } 
      $Is(t#5, Tclass.Datatypes.TheType())
         ==> Datatypes.TheType.TheType__builder_q(t#5) && Datatypes.TheType.x(t#5) > z#0));

// definition axiom for Datatypes.__default.test2 (revealed)
axiom {:id "id363"} (forall z#0: int :: 
  { Datatypes.__default.test2(z#0) } 
  Datatypes.__default.test2#canCall(z#0)
       || (forall t#5: DatatypeType :: 
        { Datatypes.TheType.x(t#5) } { Datatypes.TheType.TheType__builder_q(t#5) } 
        $Is(t#5, Tclass.Datatypes.TheType())
           ==> Datatypes.TheType.TheType__builder_q(t#5) && Datatypes.TheType.x(t#5) > z#0)
     ==> Datatypes.__default.f2#canCall(z#0)
       && Datatypes.__default.test2(z#0) == Datatypes.__default.f2(z#0));

// definition axiom for Datatypes.__default.test2 for all literals (revealed)
axiom {:id "id364"} (forall z#0: int :: 
  {:weight 3} { Datatypes.__default.test2(LitInt(z#0)) } 
  Datatypes.__default.test2#canCall(LitInt(z#0))
       || (forall t#6: DatatypeType :: 
        { Datatypes.TheType.x(t#6) } { Datatypes.TheType.TheType__builder_q(t#6) } 
        $Is(t#6, Tclass.Datatypes.TheType())
           ==> Datatypes.TheType.TheType__builder_q(t#6) && Datatypes.TheType.x(t#6) > z#0)
     ==> Datatypes.__default.f2#canCall(LitInt(z#0))
       && Datatypes.__default.test2(LitInt(z#0))
         == Lit(Datatypes.__default.f2(LitInt(z#0))));

// Constructor function declaration
function #Datatypes.TheType.TheType_builder(int) : DatatypeType;

const unique ##Datatypes.TheType.TheType_builder: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #Datatypes.TheType.TheType_builder(a#0#0#0) } 
  DatatypeCtorId(#Datatypes.TheType.TheType_builder(a#0#0#0))
     == ##Datatypes.TheType.TheType_builder);
}

function Datatypes.TheType.TheType__builder_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Datatypes.TheType.TheType__builder_q(d) } 
  Datatypes.TheType.TheType__builder_q(d)
     <==> DatatypeCtorId(d) == ##Datatypes.TheType.TheType_builder);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Datatypes.TheType.TheType__builder_q(d) } 
  Datatypes.TheType.TheType__builder_q(d)
     ==> (exists a#1#0#0: int :: d == #Datatypes.TheType.TheType_builder(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#Datatypes.TheType.TheType_builder(a#2#0#0), Tclass.Datatypes.TheType()) } 
  $Is(#Datatypes.TheType.TheType_builder(a#2#0#0), Tclass.Datatypes.TheType())
     <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Datatypes.TheType.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      Datatypes.TheType.TheType__builder_q(d)
       && $IsAlloc(d, Tclass.Datatypes.TheType(), $h)
     ==> $IsAlloc(Datatypes.TheType.x(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #Datatypes.TheType.TheType_builder(LitInt(a#3#0#0)) } 
  #Datatypes.TheType.TheType_builder(LitInt(a#3#0#0))
     == Lit(#Datatypes.TheType.TheType_builder(a#3#0#0)));

function Datatypes.TheType.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #Datatypes.TheType.TheType_builder(a#4#0#0) } 
  Datatypes.TheType.x(#Datatypes.TheType.TheType_builder(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #Datatypes.TheType.TheType_copier(DatatypeType) : DatatypeType;

const unique ##Datatypes.TheType.TheType_copier: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: DatatypeType :: 
  { #Datatypes.TheType.TheType_copier(a#5#0#0) } 
  DatatypeCtorId(#Datatypes.TheType.TheType_copier(a#5#0#0))
     == ##Datatypes.TheType.TheType_copier);
}

function Datatypes.TheType.TheType__copier_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Datatypes.TheType.TheType__copier_q(d) } 
  Datatypes.TheType.TheType__copier_q(d)
     <==> DatatypeCtorId(d) == ##Datatypes.TheType.TheType_copier);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Datatypes.TheType.TheType__copier_q(d) } 
  Datatypes.TheType.TheType__copier_q(d)
     ==> (exists a#6#0#0: DatatypeType :: 
      d == #Datatypes.TheType.TheType_copier(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: DatatypeType :: 
  { $Is(#Datatypes.TheType.TheType_copier(a#7#0#0), Tclass.Datatypes.TheType()) } 
  $Is(#Datatypes.TheType.TheType_copier(a#7#0#0), Tclass.Datatypes.TheType())
     <==> $Is(a#7#0#0, Tclass.Datatypes.TheType()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Datatypes.TheType.t(d), Tclass.Datatypes.TheType(), $h) } 
  $IsGoodHeap($h)
       && 
      Datatypes.TheType.TheType__copier_q(d)
       && $IsAlloc(d, Tclass.Datatypes.TheType(), $h)
     ==> $IsAlloc(Datatypes.TheType.t(d), Tclass.Datatypes.TheType(), $h));

// Constructor literal
axiom (forall a#8#0#0: DatatypeType :: 
  { #Datatypes.TheType.TheType_copier(Lit(a#8#0#0)) } 
  #Datatypes.TheType.TheType_copier(Lit(a#8#0#0))
     == Lit(#Datatypes.TheType.TheType_copier(a#8#0#0)));

function Datatypes.TheType.t(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: DatatypeType :: 
  { #Datatypes.TheType.TheType_copier(a#9#0#0) } 
  Datatypes.TheType.t(#Datatypes.TheType.TheType_copier(a#9#0#0)) == a#9#0#0);

// Inductive rank
axiom (forall a#10#0#0: DatatypeType :: 
  { #Datatypes.TheType.TheType_copier(a#10#0#0) } 
  DtRank(a#10#0#0) < DtRank(#Datatypes.TheType.TheType_copier(a#10#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Datatypes.TheType(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Datatypes.TheType())
     ==> $IsAlloc(d, Tclass.Datatypes.TheType(), $h));

// Depth-one case-split function
function $IsA#Datatypes.TheType(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Datatypes.TheType(d) } 
  $IsA#Datatypes.TheType(d)
     ==> Datatypes.TheType.TheType__builder_q(d)
       || Datatypes.TheType.TheType__copier_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Datatypes.TheType.TheType__copier_q(d), $Is(d, Tclass.Datatypes.TheType()) } 
    { Datatypes.TheType.TheType__builder_q(d), $Is(d, Tclass.Datatypes.TheType()) } 
  $Is(d, Tclass.Datatypes.TheType())
     ==> Datatypes.TheType.TheType__builder_q(d)
       || Datatypes.TheType.TheType__copier_q(d));

// Datatype extensional equality declaration
function Datatypes.TheType#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Datatypes.TheType.TheType_builder
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Datatypes.TheType#Equal(a, b), Datatypes.TheType.TheType__builder_q(a) } 
    { Datatypes.TheType#Equal(a, b), Datatypes.TheType.TheType__builder_q(b) } 
  Datatypes.TheType.TheType__builder_q(a)
       && Datatypes.TheType.TheType__builder_q(b)
     ==> (Datatypes.TheType#Equal(a, b)
       <==> Datatypes.TheType.x(a) == Datatypes.TheType.x(b)));

// Datatype extensional equality definition: #Datatypes.TheType.TheType_copier
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Datatypes.TheType#Equal(a, b), Datatypes.TheType.TheType__copier_q(a) } 
    { Datatypes.TheType#Equal(a, b), Datatypes.TheType.TheType__copier_q(b) } 
  Datatypes.TheType.TheType__copier_q(a) && Datatypes.TheType.TheType__copier_q(b)
     ==> (Datatypes.TheType#Equal(a, b)
       <==> Datatypes.TheType#Equal(Datatypes.TheType.t(a), Datatypes.TheType.t(b))));

// Datatype extensionality axiom: Datatypes.TheType
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Datatypes.TheType#Equal(a, b) } 
  Datatypes.TheType#Equal(a, b) <==> a == b);

const unique class.Datatypes.TheType: ClassName;

const unique class.Matches.__default: ClassName;

// function declaration for Matches._default.f1
function Matches.__default.f1(x#0: int) : bool;

function Matches.__default.f1#canCall(x#0: int) : bool;

function Matches.__default.f1#requires(int) : bool;

// #requires axiom for Matches.__default.f1
axiom (forall x#0: int :: 
  { Matches.__default.f1#requires(x#0) } 
  Matches.__default.f1#requires(x#0) == (x#0 > 3));

// function declaration for Matches._default.basic_test
function Matches.__default.basic__test(t#0: DatatypeType) : bool;

function Matches.__default.basic__test#canCall(t#0: DatatypeType) : bool;

function Tclass.Matches.TheType() : Ty
uses {
// Tclass.Matches.TheType Tag
axiom Tag(Tclass.Matches.TheType()) == Tagclass.Matches.TheType
   && TagFamily(Tclass.Matches.TheType()) == tytagFamily$TheType;
}

const unique Tagclass.Matches.TheType: TyTag;

// Box/unbox axiom for Tclass.Matches.TheType
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Matches.TheType()) } 
  $IsBox(bx, Tclass.Matches.TheType())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Matches.TheType()));

function Matches.__default.basic__test#requires(DatatypeType) : bool;

// #requires axiom for Matches.__default.basic__test
axiom (forall t#0: DatatypeType :: 
  { Matches.__default.basic__test#requires(t#0) } 
  $Is(t#0, Tclass.Matches.TheType())
     ==> Matches.__default.basic__test#requires(t#0)
       == (if Matches.TheType.TheType__builder_q(t#0)
         then (var x#9 := Matches.TheType.x(t#0); x#9 > 3)
         else (var t#10 := Matches.TheType.t(t#0); Lit(true))));

// definition axiom for Matches.__default.basic__test (revealed)
axiom {:id "id365"} (forall t#0: DatatypeType :: 
  { Matches.__default.basic__test(t#0) } 
  Matches.__default.basic__test#canCall(t#0)
       || ($Is(t#0, Tclass.Matches.TheType())
         && (if Matches.TheType.TheType__builder_q(t#0)
           then (var x#9 := Matches.TheType.x(t#0); x#9 > 3)
           else (var t#10 := Matches.TheType.t(t#0); Lit(true))))
     ==> (Matches.TheType.TheType__builder_q(t#0)
         ==> (var x#11 := Matches.TheType.x(t#0); Matches.__default.f1#canCall(x#11)))
       && Matches.__default.basic__test(t#0)
         == (if Matches.TheType.TheType__builder_q(t#0)
           then (var x#10 := Matches.TheType.x(t#0); Matches.__default.f1(x#10))
           else (var t#11 := Matches.TheType.t(t#0); Lit(true))));

// definition axiom for Matches.__default.basic__test for all literals (revealed)
axiom {:id "id366"} (forall t#0: DatatypeType :: 
  {:weight 3} { Matches.__default.basic__test(Lit(t#0)) } 
  Matches.__default.basic__test#canCall(Lit(t#0))
       || ($Is(t#0, Tclass.Matches.TheType())
         && (if Matches.TheType.TheType__builder_q(Lit(t#0))
           then (var x#12 := LitInt(Matches.TheType.x(Lit(t#0))); Lit(x#12 > 3))
           else (var t#13 := Lit(Matches.TheType.t(Lit(t#0))); Lit(true))))
     ==> (Lit(Matches.TheType.TheType__builder_q(Lit(t#0)))
         ==> (var x#14 := LitInt(Matches.TheType.x(Lit(t#0))); 
          Matches.__default.f1#canCall(x#14)))
       && Matches.__default.basic__test(Lit(t#0))
         == (if Matches.TheType.TheType__builder_q(Lit(t#0))
           then (var x#13 := LitInt(Matches.TheType.x(Lit(t#0))); Matches.__default.f1(x#13))
           else (var t#14 := Lit(Matches.TheType.t(Lit(t#0))); Lit(true))));

// Constructor function declaration
function #Matches.TheType.TheType_builder(int) : DatatypeType;

const unique ##Matches.TheType.TheType_builder: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #Matches.TheType.TheType_builder(a#0#0#0) } 
  DatatypeCtorId(#Matches.TheType.TheType_builder(a#0#0#0))
     == ##Matches.TheType.TheType_builder);
}

function Matches.TheType.TheType__builder_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Matches.TheType.TheType__builder_q(d) } 
  Matches.TheType.TheType__builder_q(d)
     <==> DatatypeCtorId(d) == ##Matches.TheType.TheType_builder);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Matches.TheType.TheType__builder_q(d) } 
  Matches.TheType.TheType__builder_q(d)
     ==> (exists a#1#0#0: int :: d == #Matches.TheType.TheType_builder(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#Matches.TheType.TheType_builder(a#2#0#0), Tclass.Matches.TheType()) } 
  $Is(#Matches.TheType.TheType_builder(a#2#0#0), Tclass.Matches.TheType())
     <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Matches.TheType.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      Matches.TheType.TheType__builder_q(d)
       && $IsAlloc(d, Tclass.Matches.TheType(), $h)
     ==> $IsAlloc(Matches.TheType.x(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #Matches.TheType.TheType_builder(LitInt(a#3#0#0)) } 
  #Matches.TheType.TheType_builder(LitInt(a#3#0#0))
     == Lit(#Matches.TheType.TheType_builder(a#3#0#0)));

function Matches.TheType.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #Matches.TheType.TheType_builder(a#4#0#0) } 
  Matches.TheType.x(#Matches.TheType.TheType_builder(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #Matches.TheType.TheType_copier(DatatypeType) : DatatypeType;

const unique ##Matches.TheType.TheType_copier: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: DatatypeType :: 
  { #Matches.TheType.TheType_copier(a#5#0#0) } 
  DatatypeCtorId(#Matches.TheType.TheType_copier(a#5#0#0))
     == ##Matches.TheType.TheType_copier);
}

function Matches.TheType.TheType__copier_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Matches.TheType.TheType__copier_q(d) } 
  Matches.TheType.TheType__copier_q(d)
     <==> DatatypeCtorId(d) == ##Matches.TheType.TheType_copier);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Matches.TheType.TheType__copier_q(d) } 
  Matches.TheType.TheType__copier_q(d)
     ==> (exists a#6#0#0: DatatypeType :: d == #Matches.TheType.TheType_copier(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: DatatypeType :: 
  { $Is(#Matches.TheType.TheType_copier(a#7#0#0), Tclass.Matches.TheType()) } 
  $Is(#Matches.TheType.TheType_copier(a#7#0#0), Tclass.Matches.TheType())
     <==> $Is(a#7#0#0, Tclass.Matches.TheType()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Matches.TheType.t(d), Tclass.Matches.TheType(), $h) } 
  $IsGoodHeap($h)
       && 
      Matches.TheType.TheType__copier_q(d)
       && $IsAlloc(d, Tclass.Matches.TheType(), $h)
     ==> $IsAlloc(Matches.TheType.t(d), Tclass.Matches.TheType(), $h));

// Constructor literal
axiom (forall a#8#0#0: DatatypeType :: 
  { #Matches.TheType.TheType_copier(Lit(a#8#0#0)) } 
  #Matches.TheType.TheType_copier(Lit(a#8#0#0))
     == Lit(#Matches.TheType.TheType_copier(a#8#0#0)));

function Matches.TheType.t(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: DatatypeType :: 
  { #Matches.TheType.TheType_copier(a#9#0#0) } 
  Matches.TheType.t(#Matches.TheType.TheType_copier(a#9#0#0)) == a#9#0#0);

// Inductive rank
axiom (forall a#10#0#0: DatatypeType :: 
  { #Matches.TheType.TheType_copier(a#10#0#0) } 
  DtRank(a#10#0#0) < DtRank(#Matches.TheType.TheType_copier(a#10#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Matches.TheType(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Matches.TheType())
     ==> $IsAlloc(d, Tclass.Matches.TheType(), $h));

// Depth-one case-split function
function $IsA#Matches.TheType(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Matches.TheType(d) } 
  $IsA#Matches.TheType(d)
     ==> Matches.TheType.TheType__builder_q(d) || Matches.TheType.TheType__copier_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Matches.TheType.TheType__copier_q(d), $Is(d, Tclass.Matches.TheType()) } 
    { Matches.TheType.TheType__builder_q(d), $Is(d, Tclass.Matches.TheType()) } 
  $Is(d, Tclass.Matches.TheType())
     ==> Matches.TheType.TheType__builder_q(d) || Matches.TheType.TheType__copier_q(d));

// Datatype extensional equality declaration
function Matches.TheType#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Matches.TheType.TheType_builder
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Matches.TheType#Equal(a, b), Matches.TheType.TheType__builder_q(a) } 
    { Matches.TheType#Equal(a, b), Matches.TheType.TheType__builder_q(b) } 
  Matches.TheType.TheType__builder_q(a) && Matches.TheType.TheType__builder_q(b)
     ==> (Matches.TheType#Equal(a, b) <==> Matches.TheType.x(a) == Matches.TheType.x(b)));

// Datatype extensional equality definition: #Matches.TheType.TheType_copier
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Matches.TheType#Equal(a, b), Matches.TheType.TheType__copier_q(a) } 
    { Matches.TheType#Equal(a, b), Matches.TheType.TheType__copier_q(b) } 
  Matches.TheType.TheType__copier_q(a) && Matches.TheType.TheType__copier_q(b)
     ==> (Matches.TheType#Equal(a, b)
       <==> Matches.TheType#Equal(Matches.TheType.t(a), Matches.TheType.t(b))));

// Datatype extensionality axiom: Matches.TheType
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Matches.TheType#Equal(a, b) } 
  Matches.TheType#Equal(a, b) <==> a == b);

const unique class.Matches.TheType: ClassName;

const unique class.StaticTest.__default: ClassName;

// function declaration for StaticTest._default.f
function StaticTest.__default.f(x#0: int) : bool;

function StaticTest.__default.f#canCall(x#0: int) : bool;

function StaticTest.__default.f#requires(int) : bool;

// #requires axiom for StaticTest.__default.f
axiom (forall x#0: int :: 
  { StaticTest.__default.f#requires(x#0) } 
  StaticTest.__default.f#requires(x#0) == (x#0 > 3));

// definition axiom for StaticTest.__default.f (revealed)
axiom {:id "id367"} (forall x#0: int :: 
  { StaticTest.__default.f(x#0) } 
  StaticTest.__default.f#canCall(x#0) || x#0 > 3
     ==> StaticTest.__default.f(x#0) == (x#0 > 7));

// definition axiom for StaticTest.__default.f for all literals (revealed)
axiom {:id "id368"} (forall x#0: int :: 
  {:weight 3} { StaticTest.__default.f(LitInt(x#0)) } 
  StaticTest.__default.f#canCall(LitInt(x#0)) || Lit(x#0 > 3)
     ==> StaticTest.__default.f(LitInt(x#0)) == Lit(x#0 > 7));

// function declaration for StaticTest._default.g
function StaticTest.__default.g(z#0: int) : bool;

function StaticTest.__default.g#canCall(z#0: int) : bool;

function StaticTest.__default.g#requires(int) : bool;

// #requires axiom for StaticTest.__default.g
axiom (forall z#0: int :: 
  { StaticTest.__default.g#requires(z#0) } 
  StaticTest.__default.g#requires(z#0) == (z#0 > 3 && StaticTest.__default.f(z#0)));

// definition axiom for StaticTest.__default.g (revealed)
axiom {:id "id369"} (forall z#0: int :: 
  { StaticTest.__default.g(z#0) } 
  StaticTest.__default.g#canCall(z#0) || (z#0 > 3 && StaticTest.__default.f(z#0))
     ==> StaticTest.__default.g(z#0) == Lit(true));

// definition axiom for StaticTest.__default.g for all literals (revealed)
axiom {:id "id370"} (forall z#0: int :: 
  {:weight 3} { StaticTest.__default.g(LitInt(z#0)) } 
  StaticTest.__default.g#canCall(LitInt(z#0))
       || (Lit(z#0 > 3) && Lit(StaticTest.__default.f(LitInt(z#0))))
     ==> StaticTest.__default.g(LitInt(z#0)) == Lit(true));

// function declaration for StaticTest._default.h
function StaticTest.__default.h(y#0: int) : bool;

function StaticTest.__default.h#canCall(y#0: int) : bool;

function StaticTest.__default.h#requires(int) : bool;

// #requires axiom for StaticTest.__default.h
axiom (forall y#0: int :: 
  { StaticTest.__default.h#requires(y#0) } 
  StaticTest.__default.h#requires(y#0) == (y#0 > 3 && StaticTest.__default.f(y#0)));

// definition axiom for StaticTest.__default.h (revealed)
axiom {:id "id371"} (forall y#0: int :: 
  { StaticTest.__default.h(y#0) } 
  StaticTest.__default.h#canCall(y#0) || (y#0 > 3 && StaticTest.__default.f(y#0))
     ==> StaticTest.__default.g#canCall(y#0)
       && StaticTest.__default.h(y#0) == StaticTest.__default.g(y#0));

// definition axiom for StaticTest.__default.h for all literals (revealed)
axiom {:id "id372"} (forall y#0: int :: 
  {:weight 3} { StaticTest.__default.h(LitInt(y#0)) } 
  StaticTest.__default.h#canCall(LitInt(y#0))
       || (Lit(y#0 > 3) && Lit(StaticTest.__default.f(LitInt(y#0))))
     ==> StaticTest.__default.g#canCall(LitInt(y#0))
       && StaticTest.__default.h(LitInt(y#0)) == Lit(StaticTest.__default.g(LitInt(y#0))));

// function declaration for StaticTest._default.IsEven
function StaticTest.__default.IsEven(x#0: int) : bool;

function StaticTest.__default.IsEven#canCall(x#0: int) : bool;

function StaticTest.__default.IsEven#requires(int) : bool;

// #requires axiom for StaticTest.__default.IsEven
axiom (forall x#0: int :: 
  { StaticTest.__default.IsEven#requires(x#0) } 
  StaticTest.__default.IsEven#requires(x#0) == true);

// function declaration for StaticTest._default.EvenDoubler
function StaticTest.__default.EvenDoubler(x#0: int) : int;

function StaticTest.__default.EvenDoubler#canCall(x#0: int) : bool;

function StaticTest.__default.EvenDoubler#requires(int) : bool;

// #requires axiom for StaticTest.__default.EvenDoubler
axiom (forall x#0: int :: 
  { StaticTest.__default.EvenDoubler#requires(x#0) } 
  StaticTest.__default.EvenDoubler#requires(x#0)
     == StaticTest.__default.IsEven(x#0));

// function declaration for StaticTest._default.test
function StaticTest.__default.test(y#0: int) : int;

function StaticTest.__default.test#canCall(y#0: int) : bool;

function StaticTest.__default.test#requires(int) : bool;

// #requires axiom for StaticTest.__default.test
axiom (forall y#0: int :: 
  { StaticTest.__default.test#requires(y#0) } 
  StaticTest.__default.test#requires(y#0) == StaticTest.__default.IsEven(y#0));

// definition axiom for StaticTest.__default.test (revealed)
axiom {:id "id373"} (forall y#0: int :: 
  { StaticTest.__default.test(y#0) } 
  StaticTest.__default.test#canCall(y#0) || StaticTest.__default.IsEven(y#0)
     ==> StaticTest.__default.EvenDoubler#canCall(y#0)
       && StaticTest.__default.test(y#0) == StaticTest.__default.EvenDoubler(y#0));

// definition axiom for StaticTest.__default.test for all literals (revealed)
axiom {:id "id374"} (forall y#0: int :: 
  {:weight 3} { StaticTest.__default.test(LitInt(y#0)) } 
  StaticTest.__default.test#canCall(LitInt(y#0))
       || StaticTest.__default.IsEven(LitInt(y#0))
     ==> StaticTest.__default.EvenDoubler#canCall(LitInt(y#0))
       && StaticTest.__default.test(LitInt(y#0))
         == StaticTest.__default.EvenDoubler(LitInt(y#0)));

const unique class.OpaqueTest.__default: ClassName;

// function declaration for OpaqueTest._default.bar
function OpaqueTest.__default.bar(x#0: int) : int;

function OpaqueTest.__default.bar#canCall(x#0: int) : bool;

function OpaqueTest.__default.bar#requires(int) : bool;

// #requires axiom for OpaqueTest.__default.bar
axiom (forall x#0: int :: 
  { OpaqueTest.__default.bar#requires(x#0) } 
  OpaqueTest.__default.bar#requires(x#0) == (x#0 > 7));

// definition axiom for OpaqueTest.__default.bar (revealed)
axiom {:id "id375"} (forall x#0: int :: 
  { OpaqueTest.__default.bar(x#0) } 
  OpaqueTest.__default.bar#canCall(x#0) || x#0 > 7
     ==> OpaqueTest.__default.bar(x#0) == x#0 - 2);

// definition axiom for OpaqueTest.__default.bar for all literals (revealed)
axiom {:id "id376"} (forall x#0: int :: 
  {:weight 3} { OpaqueTest.__default.bar(LitInt(x#0)) } 
  OpaqueTest.__default.bar#canCall(LitInt(x#0)) || Lit(x#0 > 7)
     ==> OpaqueTest.__default.bar(LitInt(x#0)) == LitInt(x#0 - 2));

// function declaration for OpaqueTest._default.foo
function OpaqueTest.__default.foo($reveal: bool, x#0: int) : int;

function OpaqueTest.__default.foo#canCall(x#0: int) : bool;

function OpaqueTest.__default.foo#requires(int) : bool;

// #requires axiom for OpaqueTest.__default.foo
axiom (forall x#0: int :: 
  { OpaqueTest.__default.foo#requires(x#0) } 
  OpaqueTest.__default.foo#requires(x#0) == (x#0 > 7));

// definition axiom for OpaqueTest.__default.foo (revealed)
axiom {:id "id377"} (forall x#0: int :: 
  { OpaqueTest.__default.foo(true, x#0) } 
  OpaqueTest.__default.foo#canCall(x#0) || x#0 > 7
     ==> OpaqueTest.__default.bar#canCall(x#0)
       && OpaqueTest.__default.foo(true, x#0) == OpaqueTest.__default.bar(x#0));

// definition axiom for OpaqueTest.__default.foo for all literals (revealed)
axiom {:id "id378"} (forall x#0: int :: 
  {:weight 3} { OpaqueTest.__default.foo(true, LitInt(x#0)) } 
  OpaqueTest.__default.foo#canCall(LitInt(x#0)) || Lit(x#0 > 7)
     ==> OpaqueTest.__default.bar#canCall(LitInt(x#0))
       && OpaqueTest.__default.foo(true, LitInt(x#0))
         == LitInt(OpaqueTest.__default.bar(LitInt(x#0))));

const unique class.TypeParameterTest.__default: ClassName;

const unique class.TypeParameterTest.MyClass?: ClassName;

function Tclass.TypeParameterTest.MyClass?(Ty) : Ty;

const unique Tagclass.TypeParameterTest.MyClass?: TyTag;

// Tclass.TypeParameterTest.MyClass? Tag
axiom (forall TypeParameterTest.MyClass$X: Ty :: 
  { Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X) } 
  Tag(Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X))
       == Tagclass.TypeParameterTest.MyClass?
     && TagFamily(Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X))
       == tytagFamily$MyClass);

function Tclass.TypeParameterTest.MyClass?_0(Ty) : Ty;

// Tclass.TypeParameterTest.MyClass? injectivity 0
axiom (forall TypeParameterTest.MyClass$X: Ty :: 
  { Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X) } 
  Tclass.TypeParameterTest.MyClass?_0(Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X))
     == TypeParameterTest.MyClass$X);

// Box/unbox axiom for Tclass.TypeParameterTest.MyClass?
axiom (forall TypeParameterTest.MyClass$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X)) } 
  $IsBox(bx, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X)));

// $Is axiom for class MyClass
axiom (forall TypeParameterTest.MyClass$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X)) } 
  $Is($o, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X))
     <==> $o == null
       || dtype($o) == Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X));

// $IsAlloc axiom for class MyClass
axiom (forall TypeParameterTest.MyClass$X: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X), $h) } 
  $IsAlloc($o, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for TypeParameterTest.MyClass.P
function TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.P$W: Ty, 
    this: ref, 
    s#0: Seq)
   : bool;

function TypeParameterTest.MyClass.P#canCall(TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.P$W: Ty, 
    this: ref, 
    s#0: Seq)
   : bool;

function Tclass.TypeParameterTest.MyClass(Ty) : Ty;

const unique Tagclass.TypeParameterTest.MyClass: TyTag;

// Tclass.TypeParameterTest.MyClass Tag
axiom (forall TypeParameterTest.MyClass$X: Ty :: 
  { Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X) } 
  Tag(Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
       == Tagclass.TypeParameterTest.MyClass
     && TagFamily(Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
       == tytagFamily$MyClass);

function Tclass.TypeParameterTest.MyClass_0(Ty) : Ty;

// Tclass.TypeParameterTest.MyClass injectivity 0
axiom (forall TypeParameterTest.MyClass$X: Ty :: 
  { Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X) } 
  Tclass.TypeParameterTest.MyClass_0(Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
     == TypeParameterTest.MyClass$X);

// Box/unbox axiom for Tclass.TypeParameterTest.MyClass
axiom (forall TypeParameterTest.MyClass$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X)) } 
  $IsBox(bx, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X)));

function TypeParameterTest.MyClass.P#requires(Ty, Ty, ref, Seq) : bool;

// #requires axiom for TypeParameterTest.MyClass.P
axiom (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.P$W: Ty, 
    this: ref, 
    s#0: Seq :: 
  { TypeParameterTest.MyClass.P#requires(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, s#0) } 
  this != null
       && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
       && $Is(s#0, TSeq(TInt))
     ==> TypeParameterTest.MyClass.P#requires(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, s#0)
       == true);

// definition axiom for TypeParameterTest.MyClass.P (revealed)
axiom {:id "id379"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.P$W: Ty, 
    this: ref, 
    s#0: Seq :: 
  { TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, s#0) } 
  TypeParameterTest.MyClass.P#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, s#0)
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt)))
     ==> TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, s#0)
       == Lit(true));

// definition axiom for TypeParameterTest.MyClass.P for decreasing-related literals (revealed)
axiom {:id "id380"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.P$W: Ty, 
    this: ref, 
    s#0: Seq :: 
  {:weight 3} { TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, Lit(s#0)) } 
  TypeParameterTest.MyClass.P#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, Lit(s#0))
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt)))
     ==> TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, this, Lit(s#0))
       == Lit(true));

// definition axiom for TypeParameterTest.MyClass.P for all literals (revealed)
axiom {:id "id381"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.P$W: Ty, 
    this: ref, 
    s#0: Seq :: 
  {:weight 3} { TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, Lit(this), Lit(s#0)) } 
  TypeParameterTest.MyClass.P#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, Lit(this), Lit(s#0))
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt)))
     ==> TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.P$W, Lit(this), Lit(s#0))
       == Lit(true));

// function declaration for TypeParameterTest.MyClass.g
function TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.g$Z: Ty, 
    this: ref, 
    s#0: Seq)
   : bool;

function TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.g$Z: Ty, 
    this: ref, 
    s#0: Seq)
   : bool;

function TypeParameterTest.MyClass.g#requires(Ty, Ty, ref, Seq) : bool;

// #requires axiom for TypeParameterTest.MyClass.g
axiom (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.g$Z: Ty, 
    this: ref, 
    s#0: Seq :: 
  { TypeParameterTest.MyClass.g#requires(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, s#0) } 
  this != null
       && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
       && $Is(s#0, TSeq(TInt))
     ==> TypeParameterTest.MyClass.g#requires(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, s#0)
       == TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
        Tclass._System.Tuple3(TypeParameterTest.MyClass$X, TInt, TypeParameterTest.MyClass.g$Z), 
        this, 
        s#0));

// definition axiom for TypeParameterTest.MyClass.g (revealed)
axiom {:id "id382"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.g$Z: Ty, 
    this: ref, 
    s#0: Seq :: 
  { TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, s#0) } 
  TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, s#0)
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt))
         && TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
          Tclass._System.Tuple3(TypeParameterTest.MyClass$X, TInt, TypeParameterTest.MyClass.g$Z), 
          this, 
          s#0))
     ==> TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, s#0)
       == (Seq#Length(s#0) > 2));

// definition axiom for TypeParameterTest.MyClass.g for decreasing-related literals (revealed)
axiom {:id "id383"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.g$Z: Ty, 
    this: ref, 
    s#0: Seq :: 
  {:weight 3} { TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, Lit(s#0)) } 
  TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, Lit(s#0))
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt))
         && TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
          Tclass._System.Tuple3(TypeParameterTest.MyClass$X, TInt, TypeParameterTest.MyClass.g$Z), 
          this, 
          Lit(s#0)))
     ==> TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, this, Lit(s#0))
       == (Seq#Length(Lit(s#0)) > 2));

// definition axiom for TypeParameterTest.MyClass.g for all literals (revealed)
axiom {:id "id384"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.g$Z: Ty, 
    this: ref, 
    s#0: Seq :: 
  {:weight 3} { TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, Lit(this), Lit(s#0)) } 
  TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, Lit(this), Lit(s#0))
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt))
         && Lit(TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
            Tclass._System.Tuple3(TypeParameterTest.MyClass$X, TInt, TypeParameterTest.MyClass.g$Z), 
            Lit(this), 
            Lit(s#0))))
     ==> TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.g$Z, Lit(this), Lit(s#0))
       == (Seq#Length(Lit(s#0)) > 2));

// function declaration for TypeParameterTest.MyClass.h
function TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.h$Y: Ty, 
    this: ref, 
    s#0: Seq)
   : bool;

function TypeParameterTest.MyClass.h#canCall(TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.h$Y: Ty, 
    this: ref, 
    s#0: Seq)
   : bool;

function TypeParameterTest.MyClass.h#requires(Ty, Ty, ref, Seq) : bool;

// #requires axiom for TypeParameterTest.MyClass.h
axiom (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.h$Y: Ty, 
    this: ref, 
    s#0: Seq :: 
  { TypeParameterTest.MyClass.h#requires(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, s#0) } 
  this != null
       && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
       && $Is(s#0, TSeq(TInt))
     ==> TypeParameterTest.MyClass.h#requires(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, s#0)
       == TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
        Tclass._System.Tuple3(TypeParameterTest.MyClass$X, 
          TInt, 
          Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y)), 
        this, 
        s#0));

// definition axiom for TypeParameterTest.MyClass.h (revealed)
axiom {:id "id385"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.h$Y: Ty, 
    this: ref, 
    s#0: Seq :: 
  { TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, s#0) } 
  TypeParameterTest.MyClass.h#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, s#0)
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt))
         && TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
          Tclass._System.Tuple3(TypeParameterTest.MyClass$X, 
            TInt, 
            Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y)), 
          this, 
          s#0))
     ==> TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X, 
        Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y), 
        this, 
        s#0)
       && TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, s#0)
         == TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, 
          Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y), 
          this, 
          s#0));

// definition axiom for TypeParameterTest.MyClass.h for decreasing-related literals (revealed)
axiom {:id "id386"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.h$Y: Ty, 
    this: ref, 
    s#0: Seq :: 
  {:weight 3} { TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, Lit(s#0)) } 
  TypeParameterTest.MyClass.h#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, Lit(s#0))
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt))
         && TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
          Tclass._System.Tuple3(TypeParameterTest.MyClass$X, 
            TInt, 
            Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y)), 
          this, 
          Lit(s#0)))
     ==> TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X, 
        Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y), 
        this, 
        Lit(s#0))
       && TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, this, Lit(s#0))
         == TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, 
          Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y), 
          this, 
          Lit(s#0)));

// definition axiom for TypeParameterTest.MyClass.h for all literals (revealed)
axiom {:id "id387"} (forall TypeParameterTest.MyClass$X: Ty, 
    TypeParameterTest.MyClass.h$Y: Ty, 
    this: ref, 
    s#0: Seq :: 
  {:weight 3} { TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, Lit(this), Lit(s#0)) } 
  TypeParameterTest.MyClass.h#canCall(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, Lit(this), Lit(s#0))
       || (
        this != null
         && $Is(this, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
         && $Is(s#0, TSeq(TInt))
         && Lit(TypeParameterTest.MyClass.P(TypeParameterTest.MyClass$X, 
            Tclass._System.Tuple3(TypeParameterTest.MyClass$X, 
              TInt, 
              Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y)), 
            Lit(this), 
            Lit(s#0))))
     ==> TypeParameterTest.MyClass.g#canCall(TypeParameterTest.MyClass$X, 
        Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y), 
        Lit(this), 
        Lit(s#0))
       && TypeParameterTest.MyClass.h(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y, Lit(this), Lit(s#0))
         == Lit(TypeParameterTest.MyClass.g(TypeParameterTest.MyClass$X, 
            Tclass._System.Tuple2(TypeParameterTest.MyClass$X, TypeParameterTest.MyClass.h$Y), 
            Lit(this), 
            Lit(s#0))));

// $Is axiom for non-null type TypeParameterTest.MyClass
axiom (forall TypeParameterTest.MyClass$X: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X)) } 
    { $Is(c#0, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X)) } 
  $Is(c#0, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X))
     <==> $Is(c#0, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeParameterTest.MyClass
axiom (forall TypeParameterTest.MyClass$X: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X), $h) } 
    { $IsAlloc(c#0, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X), $h) } 
  $IsAlloc(c#0, Tclass.TypeParameterTest.MyClass(TypeParameterTest.MyClass$X), $h)
     <==> $IsAlloc(c#0, Tclass.TypeParameterTest.MyClass?(TypeParameterTest.MyClass$X), $h));

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

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$TheType: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;