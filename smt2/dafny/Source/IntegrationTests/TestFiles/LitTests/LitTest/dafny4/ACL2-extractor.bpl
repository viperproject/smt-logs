// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy

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

const reveal__module._default.nth: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.length
function _module.__default.length(_module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.length
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.length(_module._default.length$_T0, $ly, xs#0) } 
    _module.__default.length#canCall(_module._default.length$_T0, xs#0)
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.length$_T0)))
       ==> LitInt(0) <= _module.__default.length(_module._default.length$_T0, $ly, xs#0));
// definition axiom for _module.__default.length (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0) } 
    _module.__default.length#canCall(_module._default.length$_T0, xs#0)
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.length$_T0)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var rest#1 := _module.List.tail(xs#0); 
            _module.__default.length#canCall(_module._default.length$_T0, rest#1)))
         && _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then 0
             else (var rest#0 := _module.List.tail(xs#0); 
              1 + _module.__default.length(_module._default.length$_T0, $ly, rest#0))));
// definition axiom for _module.__default.length for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.length(_module._default.length$_T0, $LS($ly), Lit(xs#0)) } 
    _module.__default.length#canCall(_module._default.length$_T0, Lit(xs#0))
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.length$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var rest#3 := Lit(_module.List.tail(Lit(xs#0))); 
            _module.__default.length#canCall(_module._default.length$_T0, rest#3)))
         && _module.__default.length(_module._default.length$_T0, $LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then 0
             else (var rest#2 := Lit(_module.List.tail(Lit(xs#0))); 
              LitInt(1 + _module.__default.length(_module._default.length$_T0, $LS($ly), rest#2)))));
}

function _module.__default.length#canCall(_module._default.length$_T0: Ty, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0) } 
  _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0)
     == _module.__default.length(_module._default.length$_T0, $ly, xs#0));

// fuel synonym axiom
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.length(_module._default.length$_T0, AsFuelBottom($ly), xs#0) } 
  _module.__default.length(_module._default.length$_T0, $ly, xs#0)
     == _module.__default.length(_module._default.length$_T0, $LZ, xs#0));

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

function _module.__default.length#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.length
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.length#requires(_module._default.length$_T0, $ly, xs#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.length$_T0))
     ==> _module.__default.length#requires(_module._default.length$_T0, $ly, xs#0)
       == true);

procedure {:verboseName "length (well-formedness)"} CheckWellformed$$_module.__default.length(_module._default.length$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.length$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "length (well-formedness)"} CheckWellformed$$_module.__default.length(_module._default.length$_T0: Ty, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0)
           <= _module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assert {:id "id7"} $Is(LitInt(0), Tclass._System.nat());
            assume {:id "id8"} _module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0)
               == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0), 
              Tclass._System.nat());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.length$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.length$_T0));
            havoc rest#Z#0;
            assume {:id "id2"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.length$_T0));
            assume {:id "id3"} rest#Z#0 == let#0#0#0;
            ##xs#0 := rest#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.length$_T0), $Heap);
            assert {:id "id4"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.length#canCall(_module._default.length$_T0, rest#Z#0);
            assert {:id "id5"} $Is(1 + _module.__default.length(_module._default.length$_T0, $LS($LZ), rest#Z#0), 
              Tclass._System.nat());
            assume {:id "id6"} _module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0)
               == 1 + _module.__default.length(_module._default.length$_T0, $LS($LZ), rest#Z#0);
            assume _module.__default.length#canCall(_module._default.length$_T0, rest#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0), 
              Tclass._System.nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.nth
function _module.__default.nth(_module._default.nth$T: Ty, $reveal: bool, n#0: int, xs#0: DatatypeType) : Box
uses {
// consequence axiom for _module.__default.nth
axiom 3 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $reveal: bool, n#0: int, xs#0: DatatypeType :: 
    { _module.__default.nth(_module._default.nth$T, $reveal, n#0, xs#0) } 
    _module.__default.nth#canCall(_module._default.nth$T, n#0, xs#0)
         || (3 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.nth$T)))
       ==> $IsBox(_module.__default.nth(_module._default.nth$T, $reveal, n#0, xs#0), 
        _module._default.nth$T));
// alloc consequence axiom for _module.__default.nth
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.nth$T: Ty, 
      $reveal: bool, 
      n#0: int, 
      xs#0: DatatypeType :: 
    { $IsAllocBox(_module.__default.nth(_module._default.nth$T, $reveal, n#0, xs#0), 
        _module._default.nth$T, 
        $Heap) } 
    (_module.__default.nth#canCall(_module._default.nth$T, n#0, xs#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass._module.List(_module._default.nth$T))
             && $IsAlloc(xs#0, Tclass._module.List(_module._default.nth$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.nth(_module._default.nth$T, $reveal, n#0, xs#0), 
        _module._default.nth$T, 
        $Heap));
// definition axiom for _module.__default.nth (revealed)
axiom {:id "id9"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $Heap: Heap, n#0: int, xs#0: DatatypeType :: 
    { _module.__default.nth(_module._default.nth$T, true, n#0, xs#0), $IsGoodHeap($Heap) } 
    _module.__default.nth#canCall(_module._default.nth$T, n#0, xs#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(xs#0, Tclass._module.List(_module._default.nth$T)))
       ==> (LitInt(0) <= n#0
           ==> _module.__default.length#canCall(_module._default.nth$T, xs#0))
         && (LitInt(0) <= n#0
             && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), xs#0)
           ==> _module.__default.nthWorker#canCall(_module._default.nth$T, n#0, xs#0))
         && (!(LitInt(0) <= n#0
             && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), xs#0))
           ==> $let#0$canCall(_module._default.nth$T))
         && _module.__default.nth(_module._default.nth$T, true, n#0, xs#0)
           == (if LitInt(0) <= n#0
               && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), xs#0)
             then _module.__default.nthWorker(_module._default.nth$T, $LS($LZ), n#0, xs#0)
             else (var t#0 := $let#0_t(_module._default.nth$T); t#0)));
// definition axiom for _module.__default.nth for all literals (revealed)
axiom {:id "id10"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $Heap: Heap, n#0: int, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.nth(_module._default.nth$T, true, LitInt(n#0), Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.nth#canCall(_module._default.nth$T, LitInt(n#0), Lit(xs#0))
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(xs#0, Tclass._module.List(_module._default.nth$T)))
       ==> (LitInt(0) <= LitInt(n#0)
           ==> _module.__default.length#canCall(_module._default.nth$T, Lit(xs#0)))
         && (LitInt(0) <= LitInt(n#0)
             && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), Lit(xs#0))
           ==> _module.__default.nthWorker#canCall(_module._default.nth$T, LitInt(n#0), Lit(xs#0)))
         && (!(LitInt(0) <= LitInt(n#0)
             && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), Lit(xs#0)))
           ==> $let#0$canCall(_module._default.nth$T))
         && _module.__default.nth(_module._default.nth$T, true, LitInt(n#0), Lit(xs#0))
           == (if LitInt(0) <= LitInt(n#0)
               && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), Lit(xs#0))
             then _module.__default.nthWorker(_module._default.nth$T, $LS($LZ), LitInt(n#0), Lit(xs#0))
             else (var t#1 := $let#0_t(_module._default.nth$T); t#1)));
}

function _module.__default.nth#canCall(_module._default.nth$T: Ty, n#0: int, xs#0: DatatypeType) : bool;

function _module.__default.nth#requires(Ty, int, DatatypeType) : bool;

// #requires axiom for _module.__default.nth
axiom (forall _module._default.nth$T: Ty, $Heap: Heap, n#0: int, xs#0: DatatypeType :: 
  { _module.__default.nth#requires(_module._default.nth$T, n#0, xs#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(xs#0, Tclass._module.List(_module._default.nth$T))
     ==> _module.__default.nth#requires(_module._default.nth$T, n#0, xs#0) == true);

function $let#0_t(_module._default.nth$T: Ty) : Box;

function $let#0$canCall(_module._default.nth$T: Ty) : bool;

axiom (forall _module._default.nth$T: Ty :: 
  { $let#0_t(_module._default.nth$T) } 
  $let#0$canCall(_module._default.nth$T) ==> Lit(true));

procedure {:verboseName "nth (well-formedness)"} CheckWellformed$$_module.__default.nth(_module._default.nth$T: Ty, 
    n#0: int, 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List(_module._default.nth$T)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nth (well-formedness)"} CheckWellformed$$_module.__default.nth(_module._default.nth$T: Ty, n#0: int, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##xs#0: DatatypeType;
  var ##n#0: int;
  var ##xs#1: DatatypeType;
  var t#2: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.__default.nth(_module._default.nth$T, reveal__module._default.nth, n#0, xs#0), 
          _module._default.nth$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (LitInt(0) <= n#0)
        {
            ##xs#0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.nth$T), $Heap);
            assume _module.__default.length#canCall(_module._default.nth$T, xs#0);
        }

        if (LitInt(0) <= n#0
           && n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), xs#0))
        {
            ##n#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            ##xs#1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1, Tclass._module.List(_module._default.nth$T), $Heap);
            assert {:id "id11"} {:subsumption 0} LitInt(0) <= ##n#0;
            assert {:id "id12"} {:subsumption 0} ##n#0 < _module.__default.length(_module._default.nth$T, $LS($LS($LZ)), ##xs#1);
            assume LitInt(0) <= ##n#0
               && ##n#0 < _module.__default.length(_module._default.nth$T, $LS($LZ), ##xs#1);
            assume _module.__default.nthWorker#canCall(_module._default.nth$T, n#0, xs#0);
            assume {:id "id13"} _module.__default.nth(_module._default.nth$T, reveal__module._default.nth, n#0, xs#0)
               == _module.__default.nthWorker(_module._default.nth$T, $LS($LZ), n#0, xs#0);
            assume _module.__default.nthWorker#canCall(_module._default.nth$T, n#0, xs#0);
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.nth(_module._default.nth$T, reveal__module._default.nth, n#0, xs#0), 
              _module._default.nth$T);
            return;
        }
        else
        {
            havoc t#2;
            if ($IsBox(t#2, _module._default.nth$T)
               && $IsAllocBox(t#2, _module._default.nth$T, $Heap))
            {
            }

            assert {:id "id14"} Lit(true);
            assume $IsBox(t#2, _module._default.nth$T)
               && $IsAllocBox(t#2, _module._default.nth$T, $Heap);
            assume true;
            assume $let#0$canCall(_module._default.nth$T);
            assume {:id "id15"} _module.__default.nth(_module._default.nth$T, reveal__module._default.nth, n#0, xs#0)
               == t#2;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.nth(_module._default.nth$T, reveal__module._default.nth, n#0, xs#0), 
              _module._default.nth$T);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.nthWorker
function _module.__default.nthWorker(_module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType)
   : Box
uses {
// consequence axiom for _module.__default.nthWorker
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType :: 
    { _module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0, xs#0) } 
    _module.__default.nthWorker#canCall(_module._default.nthWorker$T, n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.nthWorker$T))
           && 
          LitInt(0) <= n#0
           && n#0 < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), xs#0))
       ==> $IsBox(_module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0, xs#0), 
        _module._default.nthWorker$T));
// alloc consequence axiom for _module.__default.nthWorker
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.nthWorker$T: Ty, 
      $ly: LayerType, 
      n#0: int, 
      xs#0: DatatypeType :: 
    { $IsAllocBox(_module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0, xs#0), 
        _module._default.nthWorker$T, 
        $Heap) } 
    (_module.__default.nthWorker#canCall(_module._default.nthWorker$T, n#0, xs#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass._module.List(_module._default.nthWorker$T))
             && $IsAlloc(xs#0, Tclass._module.List(_module._default.nthWorker$T), $Heap)
             && 
            LitInt(0) <= n#0
             && n#0 < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), xs#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0, xs#0), 
        _module._default.nthWorker$T, 
        $Heap));
// definition axiom for _module.__default.nthWorker (revealed)
axiom {:id "id16"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType :: 
    { _module.__default.nthWorker(_module._default.nthWorker$T, $LS($ly), n#0, xs#0) } 
    _module.__default.nthWorker#canCall(_module._default.nthWorker$T, n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.nthWorker$T))
           && 
          LitInt(0) <= n#0
           && n#0 < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), xs#0))
       ==> (n#0 != LitInt(0)
           ==> _module.__default.nthWorker#canCall(_module._default.nthWorker$T, n#0 - 1, _module.List.tail(xs#0)))
         && _module.__default.nthWorker(_module._default.nthWorker$T, $LS($ly), n#0, xs#0)
           == (if n#0 == LitInt(0)
             then _module.List.head(xs#0)
             else _module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0 - 1, _module.List.tail(xs#0))));
// definition axiom for _module.__default.nthWorker for all literals (revealed)
axiom {:id "id17"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.nthWorker(_module._default.nthWorker$T, $LS($ly), LitInt(n#0), Lit(xs#0)) } 
    _module.__default.nthWorker#canCall(_module._default.nthWorker$T, LitInt(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.nthWorker$T))
           && 
          LitInt(0) <= LitInt(n#0)
           && n#0
             < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), Lit(xs#0)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.nthWorker#canCall(_module._default.nthWorker$T, LitInt(n#0 - 1), Lit(_module.List.tail(Lit(xs#0)))))
         && _module.__default.nthWorker(_module._default.nthWorker$T, $LS($ly), LitInt(n#0), Lit(xs#0))
           == (if LitInt(n#0) == LitInt(0)
             then _module.List.head(Lit(xs#0))
             else _module.__default.nthWorker(_module._default.nthWorker$T, 
              $LS($ly), 
              LitInt(n#0 - 1), 
              Lit(_module.List.tail(Lit(xs#0))))));
}

function _module.__default.nthWorker#canCall(_module._default.nthWorker$T: Ty, n#0: int, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType :: 
  { _module.__default.nthWorker(_module._default.nthWorker$T, $LS($ly), n#0, xs#0) } 
  _module.__default.nthWorker(_module._default.nthWorker$T, $LS($ly), n#0, xs#0)
     == _module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall _module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType :: 
  { _module.__default.nthWorker(_module._default.nthWorker$T, AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.nthWorker(_module._default.nthWorker$T, $ly, n#0, xs#0)
     == _module.__default.nthWorker(_module._default.nthWorker$T, $LZ, n#0, xs#0));

function _module.__default.nthWorker#requires(Ty, LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.nthWorker
axiom (forall _module._default.nthWorker$T: Ty, $ly: LayerType, n#0: int, xs#0: DatatypeType :: 
  { _module.__default.nthWorker#requires(_module._default.nthWorker$T, $ly, n#0, xs#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.nthWorker$T))
     ==> _module.__default.nthWorker#requires(_module._default.nthWorker$T, $ly, n#0, xs#0)
       == (LitInt(0) <= n#0
         && n#0 < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), xs#0)));

procedure {:verboseName "nthWorker (well-formedness)"} CheckWellformed$$_module.__default.nthWorker(_module._default.nthWorker$T: Ty, 
    n#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.nthWorker$T)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nthWorker (well-formedness)"} CheckWellformed$$_module.__default.nthWorker(_module._default.nthWorker$T: Ty, n#0: int, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##xs#0: DatatypeType;
  var ##n#0: int;
  var ##xs#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (LitInt(0) <= n#0)
    {
        ##xs#0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.nthWorker$T), $Heap);
        assume _module.__default.length#canCall(_module._default.nthWorker$T, xs#0);
    }

    assume {:id "id18"} LitInt(0) <= n#0
       && n#0 < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), xs#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.__default.nthWorker(_module._default.nthWorker$T, $LS($LZ), n#0, xs#0), 
          _module._default.nthWorker$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assert {:id "id19"} _module.List.Cons_q(xs#0);
            assume {:id "id20"} _module.__default.nthWorker(_module._default.nthWorker$T, $LS($LZ), n#0, xs#0)
               == _module.List.head(xs#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.nthWorker(_module._default.nthWorker$T, $LS($LZ), n#0, xs#0), 
              _module._default.nthWorker$T);
            return;
        }
        else
        {
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assert {:id "id21"} _module.List.Cons_q(xs#0);
            ##xs#1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1, Tclass._module.List(_module._default.nthWorker$T), $Heap);
            assert {:id "id22"} {:subsumption 0} LitInt(0) <= ##n#0;
            assert {:id "id23"} {:subsumption 0} ##n#0
               < _module.__default.length(_module._default.nthWorker$T, $LS($LS($LZ)), ##xs#1);
            assume LitInt(0) <= ##n#0
               && ##n#0 < _module.__default.length(_module._default.nthWorker$T, $LS($LZ), ##xs#1);
            assert {:id "id24"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id25"} ##n#0 < n#0 || (##n#0 == n#0 && DtRank(##xs#1) < DtRank(xs#0));
            assume _module.__default.nthWorker#canCall(_module._default.nthWorker$T, n#0 - 1, _module.List.tail(xs#0));
            assume {:id "id26"} _module.__default.nthWorker(_module._default.nthWorker$T, $LS($LZ), n#0, xs#0)
               == _module.__default.nthWorker(_module._default.nthWorker$T, $LS($LZ), n#0 - 1, _module.List.tail(xs#0));
            assume _module.__default.nthWorker#canCall(_module._default.nthWorker$T, n#0 - 1, _module.List.tail(xs#0));
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.nthWorker(_module._default.nthWorker$T, $LS($LZ), n#0, xs#0), 
              _module._default.nthWorker$T);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.append
function _module.__default.append(_module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.append
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { _module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0) } 
    _module.__default.append#canCall(_module._default.append$_T0, xs#0, ys#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
           && $Is(ys#0, Tclass._module.List(_module._default.append$_T0)))
       ==> $Is(_module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0), 
        Tclass._module.List(_module._default.append$_T0)));
// alloc consequence axiom for _module.__default.append
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { $IsAlloc(_module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0), 
        Tclass._module.List(_module._default.append$_T0), 
        $Heap) } 
    (_module.__default.append#canCall(_module._default.append$_T0, xs#0, ys#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
             && $IsAlloc(xs#0, Tclass._module.List(_module._default.append$_T0), $Heap)
             && 
            $Is(ys#0, Tclass._module.List(_module._default.append$_T0))
             && $IsAlloc(ys#0, Tclass._module.List(_module._default.append$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0), 
        Tclass._module.List(_module._default.append$_T0), 
        $Heap));
// definition axiom for _module.__default.append (revealed)
axiom {:id "id27"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0) } 
    _module.__default.append#canCall(_module._default.append$_T0, xs#0, ys#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
           && $Is(ys#0, Tclass._module.List(_module._default.append$_T0)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var rest#1 := _module.List.tail(xs#0); 
            _module.__default.append#canCall(_module._default.append$_T0, rest#1, ys#0)))
         && _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0)
           == (if _module.List.Nil_q(xs#0)
             then ys#0
             else (var rest#0 := _module.List.tail(xs#0); 
              (var x#0 := _module.List.head(xs#0); 
                #_module.List.Cons(x#0, _module.__default.append(_module._default.append$_T0, $ly, rest#0, ys#0))))));
// definition axiom for _module.__default.append for all literals (revealed)
axiom {:id "id28"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    {:weight 3} { _module.__default.append(_module._default.append$_T0, $LS($ly), Lit(xs#0), Lit(ys#0)) } 
    _module.__default.append#canCall(_module._default.append$_T0, Lit(xs#0), Lit(ys#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
           && $Is(ys#0, Tclass._module.List(_module._default.append$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var rest#3 := Lit(_module.List.tail(Lit(xs#0))); 
            _module.__default.append#canCall(_module._default.append$_T0, rest#3, Lit(ys#0))))
         && _module.__default.append(_module._default.append$_T0, $LS($ly), Lit(xs#0), Lit(ys#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then ys#0
             else (var rest#2 := Lit(_module.List.tail(Lit(xs#0))); 
              (var x#2 := Lit(_module.List.head(Lit(xs#0))); 
                Lit(#_module.List.Cons(x#2, 
                    Lit(_module.__default.append(_module._default.append$_T0, $LS($ly), rest#2, Lit(ys#0)))))))));
}

function _module.__default.append#canCall(_module._default.append$_T0: Ty, xs#0: DatatypeType, ys#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0) } 
  _module.__default.append(_module._default.append$_T0, $LS($ly), xs#0, ys#0)
     == _module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0));

// fuel synonym axiom
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { _module.__default.append(_module._default.append$_T0, AsFuelBottom($ly), xs#0, ys#0) } 
  _module.__default.append(_module._default.append$_T0, $ly, xs#0, ys#0)
     == _module.__default.append(_module._default.append$_T0, $LZ, xs#0, ys#0));

function _module.__default.append#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.append
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { _module.__default.append#requires(_module._default.append$_T0, $ly, xs#0, ys#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.append$_T0))
       && $Is(ys#0, Tclass._module.List(_module._default.append$_T0))
     ==> _module.__default.append#requires(_module._default.append$_T0, $ly, xs#0, ys#0)
       == true);

procedure {:verboseName "append (well-formedness)"} CheckWellformed$$_module.__default.append(_module._default.append$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.append$_T0)), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.append$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "append (well-formedness)"} CheckWellformed$$_module.__default.append(_module._default.append$_T0: Ty, xs#0: DatatypeType, ys#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##xs#0: DatatypeType;
  var ##ys#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0), 
          Tclass._module.List(_module._default.append$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id35"} _module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0)
               == ys#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0), 
              Tclass._module.List(_module._default.append$_T0));
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.append$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.append$_T0));
            havoc rest#Z#0;
            assume {:id "id29"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.append$_T0));
            assume {:id "id30"} rest#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id31"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.append$_T0);
            assume {:id "id32"} x#Z#0 == let#1#0#0;
            ##xs#0 := rest#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.append$_T0), $Heap);
            ##ys#0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass._module.List(_module._default.append$_T0), $Heap);
            assert {:id "id33"} DtRank(##xs#0) < DtRank(xs#0)
               || (DtRank(##xs#0) == DtRank(xs#0) && DtRank(##ys#0) < DtRank(ys#0));
            assume _module.__default.append#canCall(_module._default.append$_T0, rest#Z#0, ys#0);
            assume {:id "id34"} _module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0)
               == #_module.List.Cons(x#Z#0, 
                _module.__default.append(_module._default.append$_T0, $LS($LZ), rest#Z#0, ys#0));
            assume _module.__default.append#canCall(_module._default.append$_T0, rest#Z#0, ys#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.append(_module._default.append$_T0, $LS($LZ), xs#0, ys#0), 
              Tclass._module.List(_module._default.append$_T0));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.rev
function _module.__default.rev(_module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.rev
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.rev(_module._default.rev$_T0, $ly, xs#0) } 
    _module.__default.rev#canCall(_module._default.rev$_T0, xs#0)
         || (2 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.rev$_T0)))
       ==> $Is(_module.__default.rev(_module._default.rev$_T0, $ly, xs#0), 
        Tclass._module.List(_module._default.rev$_T0)));
// alloc consequence axiom for _module.__default.rev
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { $IsAlloc(_module.__default.rev(_module._default.rev$_T0, $ly, xs#0), 
        Tclass._module.List(_module._default.rev$_T0), 
        $Heap) } 
    (_module.__default.rev#canCall(_module._default.rev$_T0, xs#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass._module.List(_module._default.rev$_T0))
             && $IsAlloc(xs#0, Tclass._module.List(_module._default.rev$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.rev(_module._default.rev$_T0, $ly, xs#0), 
        Tclass._module.List(_module._default.rev$_T0), 
        $Heap));
// definition axiom for _module.__default.rev (revealed)
axiom {:id "id36"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.rev(_module._default.rev$_T0, $LS($ly), xs#0) } 
    _module.__default.rev#canCall(_module._default.rev$_T0, xs#0)
         || (2 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.rev$_T0)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var rest#1 := _module.List.tail(xs#0); 
            (var x#1 := _module.List.head(xs#0); 
              _module.__default.rev#canCall(_module._default.rev$_T0, rest#1)
                 && _module.__default.append#canCall(_module._default.rev$_T0, 
                  _module.__default.rev(_module._default.rev$_T0, $ly, rest#1), 
                  #_module.List.Cons(x#1, Lit(#_module.List.Nil()))))))
         && _module.__default.rev(_module._default.rev$_T0, $LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var rest#0 := _module.List.tail(xs#0); 
              (var x#0 := _module.List.head(xs#0); 
                _module.__default.append(_module._default.rev$_T0, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.rev$_T0, $ly, rest#0), 
                  #_module.List.Cons(x#0, Lit(#_module.List.Nil())))))));
// definition axiom for _module.__default.rev for all literals (revealed)
axiom {:id "id37"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.rev(_module._default.rev$_T0, $LS($ly), Lit(xs#0)) } 
    _module.__default.rev#canCall(_module._default.rev$_T0, Lit(xs#0))
         || (2 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.rev$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var rest#3 := Lit(_module.List.tail(Lit(xs#0))); 
            (var x#3 := Lit(_module.List.head(Lit(xs#0))); 
              _module.__default.rev#canCall(_module._default.rev$_T0, rest#3)
                 && _module.__default.append#canCall(_module._default.rev$_T0, 
                  _module.__default.rev(_module._default.rev$_T0, $LS($ly), rest#3), 
                  #_module.List.Cons(x#3, Lit(#_module.List.Nil()))))))
         && _module.__default.rev(_module._default.rev$_T0, $LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var rest#2 := Lit(_module.List.tail(Lit(xs#0))); 
              (var x#2 := Lit(_module.List.head(Lit(xs#0))); 
                Lit(_module.__default.append(_module._default.rev$_T0, 
                    $LS($LZ), 
                    Lit(_module.__default.rev(_module._default.rev$_T0, $LS($ly), rest#2)), 
                    Lit(#_module.List.Cons(x#2, Lit(#_module.List.Nil())))))))));
}

function _module.__default.rev#canCall(_module._default.rev$_T0: Ty, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.rev(_module._default.rev$_T0, $LS($ly), xs#0) } 
  _module.__default.rev(_module._default.rev$_T0, $LS($ly), xs#0)
     == _module.__default.rev(_module._default.rev$_T0, $ly, xs#0));

// fuel synonym axiom
axiom (forall _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.rev(_module._default.rev$_T0, AsFuelBottom($ly), xs#0) } 
  _module.__default.rev(_module._default.rev$_T0, $ly, xs#0)
     == _module.__default.rev(_module._default.rev$_T0, $LZ, xs#0));

function _module.__default.rev#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.rev
axiom (forall _module._default.rev$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.rev#requires(_module._default.rev$_T0, $ly, xs#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.rev$_T0))
     ==> _module.__default.rev#requires(_module._default.rev$_T0, $ly, xs#0) == true);

procedure {:verboseName "rev (well-formedness)"} CheckWellformed$$_module.__default.rev(_module._default.rev$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.rev$_T0)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "rev (well-formedness)"} CheckWellformed$$_module.__default.rev(_module._default.rev$_T0: Ty, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##xs#0: DatatypeType;
  var ##xs#1: DatatypeType;
  var ##ys#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.rev(_module._default.rev$_T0, $LS($LZ), xs#0), 
          Tclass._module.List(_module._default.rev$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id44"} _module.__default.rev(_module._default.rev$_T0, $LS($LZ), xs#0)
               == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.rev(_module._default.rev$_T0, $LS($LZ), xs#0), 
              Tclass._module.List(_module._default.rev$_T0));
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.rev$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.rev$_T0));
            havoc rest#Z#0;
            assume {:id "id38"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.rev$_T0));
            assume {:id "id39"} rest#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id40"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.rev$_T0);
            assume {:id "id41"} x#Z#0 == let#1#0#0;
            ##xs#1 := rest#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1, Tclass._module.List(_module._default.rev$_T0), $Heap);
            assert {:id "id42"} DtRank(##xs#1) < DtRank(xs#0);
            assume _module.__default.rev#canCall(_module._default.rev$_T0, rest#Z#0);
            ##xs#0 := _module.__default.rev(_module._default.rev$_T0, $LS($LZ), rest#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.rev$_T0), $Heap);
            ##ys#0 := #_module.List.Cons(x#Z#0, Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass._module.List(_module._default.rev$_T0), $Heap);
            assume _module.__default.append#canCall(_module._default.rev$_T0, 
              _module.__default.rev(_module._default.rev$_T0, $LS($LZ), rest#Z#0), 
              #_module.List.Cons(x#Z#0, Lit(#_module.List.Nil())));
            assume {:id "id43"} _module.__default.rev(_module._default.rev$_T0, $LS($LZ), xs#0)
               == _module.__default.append(_module._default.rev$_T0, 
                $LS($LZ), 
                _module.__default.rev(_module._default.rev$_T0, $LS($LZ), rest#Z#0), 
                #_module.List.Cons(x#Z#0, Lit(#_module.List.Nil())));
            assume _module.__default.rev#canCall(_module._default.rev$_T0, rest#Z#0)
               && _module.__default.append#canCall(_module._default.rev$_T0, 
                _module.__default.rev(_module._default.rev$_T0, $LS($LZ), rest#Z#0), 
                #_module.List.Cons(x#Z#0, Lit(#_module.List.Nil())));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.rev(_module._default.rev$_T0, $LS($LZ), xs#0), 
              Tclass._module.List(_module._default.rev$_T0));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.nats
function _module.__default.nats($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.nats
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.nats($ly, n#0) } 
    _module.__default.nats#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.nats($ly, n#0), Tclass._module.List(TInt)));
// definition axiom for _module.__default.nats (revealed)
axiom {:id "id45"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.nats($LS($ly), n#0) } 
    _module.__default.nats#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0) ==> _module.__default.nats#canCall(n#0 - 1))
         && _module.__default.nats($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.Cons($Box(n#0 - 1), _module.__default.nats($ly, n#0 - 1))));
// definition axiom for _module.__default.nats for all literals (revealed)
axiom {:id "id46"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.nats($LS($ly), LitInt(n#0)) } 
    _module.__default.nats#canCall(LitInt(n#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0) ==> _module.__default.nats#canCall(LitInt(n#0 - 1)))
         && _module.__default.nats($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.Cons($Box(LitInt(n#0 - 1)), Lit(_module.__default.nats($LS($ly), LitInt(n#0 - 1))))));
}

function _module.__default.nats#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.nats($LS($ly), n#0) } 
  _module.__default.nats($LS($ly), n#0) == _module.__default.nats($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.nats(AsFuelBottom($ly), n#0) } 
  _module.__default.nats($ly, n#0) == _module.__default.nats($LZ, n#0));

function _module.__default.nats#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.nats
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.nats#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.nats#requires($ly, n#0) == true);

procedure {:verboseName "nats (well-formedness)"} CheckWellformed$$_module.__default.nats(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nats (well-formedness)"} CheckWellformed$$_module.__default.nats(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.nats($LS($LZ), n#0), Tclass._module.List(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id47"} _module.__default.nats($LS($LZ), n#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.nats($LS($LZ), n#0), Tclass._module.List(TInt));
            return;
        }
        else
        {
            assert {:id "id48"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id49"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id50"} ##n#0 < n#0;
            assume _module.__default.nats#canCall(n#0 - 1);
            assume {:id "id51"} _module.__default.nats($LS($LZ), n#0)
               == #_module.List.Cons($Box(n#0 - 1), _module.__default.nats($LS($LZ), n#0 - 1));
            assume _module.__default.nats#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.nats($LS($LZ), n#0), Tclass._module.List(TInt));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.xtr
function _module.__default.xtr(_module._default.xtr$T: Ty, 
    $ly: LayerType, 
    mp#0: DatatypeType, 
    lst#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.xtr
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.xtr$T: Ty, 
      $ly: LayerType, 
      mp#0: DatatypeType, 
      lst#0: DatatypeType :: 
    { _module.__default.xtr(_module._default.xtr$T, $ly, mp#0, lst#0) } 
    _module.__default.xtr#canCall(_module._default.xtr$T, mp#0, lst#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(mp#0, Tclass._module.List(TInt))
           && $Is(lst#0, Tclass._module.List(_module._default.xtr$T)))
       ==> $Is(_module.__default.xtr(_module._default.xtr$T, $ly, mp#0, lst#0), 
        Tclass._module.List(_module._default.xtr$T)));
// alloc consequence axiom for _module.__default.xtr
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.xtr$T: Ty, 
      $ly: LayerType, 
      mp#0: DatatypeType, 
      lst#0: DatatypeType :: 
    { $IsAlloc(_module.__default.xtr(_module._default.xtr$T, $ly, mp#0, lst#0), 
        Tclass._module.List(_module._default.xtr$T), 
        $Heap) } 
    (_module.__default.xtr#canCall(_module._default.xtr$T, mp#0, lst#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(mp#0, Tclass._module.List(TInt))
             && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
             && 
            $Is(lst#0, Tclass._module.List(_module._default.xtr$T))
             && $IsAlloc(lst#0, Tclass._module.List(_module._default.xtr$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.xtr(_module._default.xtr$T, $ly, mp#0, lst#0), 
        Tclass._module.List(_module._default.xtr$T), 
        $Heap));
// definition axiom for _module.__default.xtr (revealed)
axiom {:id "id52"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.xtr$T: Ty, 
      $ly: LayerType, 
      mp#0: DatatypeType, 
      lst#0: DatatypeType :: 
    { _module.__default.xtr(_module._default.xtr$T, $LS($ly), mp#0, lst#0) } 
    _module.__default.xtr#canCall(_module._default.xtr$T, mp#0, lst#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(mp#0, Tclass._module.List(TInt))
           && $Is(lst#0, Tclass._module.List(_module._default.xtr$T)))
       ==> (!_module.List.Nil_q(mp#0)
           ==> (var rest#1 := _module.List.tail(mp#0); 
            (var n#1 := $Unbox(_module.List.head(mp#0)): int; 
              _module.__default.nth#canCall(_module._default.xtr$T, n#1, lst#0)
                 && _module.__default.xtr#canCall(_module._default.xtr$T, rest#1, lst#0))))
         && _module.__default.xtr(_module._default.xtr$T, $LS($ly), mp#0, lst#0)
           == (if _module.List.Nil_q(mp#0)
             then #_module.List.Nil()
             else (var rest#0 := _module.List.tail(mp#0); 
              (var n#0 := $Unbox(_module.List.head(mp#0)): int; 
                #_module.List.Cons(_module.__default.nth(_module._default.xtr$T, reveal__module._default.nth, n#0, lst#0), 
                  _module.__default.xtr(_module._default.xtr$T, $ly, rest#0, lst#0))))));
// definition axiom for _module.__default.xtr for all literals (revealed)
axiom {:id "id53"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.xtr$T: Ty, 
      $ly: LayerType, 
      mp#0: DatatypeType, 
      lst#0: DatatypeType :: 
    {:weight 3} { _module.__default.xtr(_module._default.xtr$T, $LS($ly), Lit(mp#0), Lit(lst#0)) } 
    _module.__default.xtr#canCall(_module._default.xtr$T, Lit(mp#0), Lit(lst#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(mp#0, Tclass._module.List(TInt))
           && $Is(lst#0, Tclass._module.List(_module._default.xtr$T)))
       ==> (!Lit(_module.List.Nil_q(Lit(mp#0)))
           ==> (var rest#3 := Lit(_module.List.tail(Lit(mp#0))); 
            (var n#3 := LitInt($Unbox(_module.List.head(Lit(mp#0))): int); 
              _module.__default.nth#canCall(_module._default.xtr$T, n#3, Lit(lst#0))
                 && _module.__default.xtr#canCall(_module._default.xtr$T, rest#3, Lit(lst#0)))))
         && _module.__default.xtr(_module._default.xtr$T, $LS($ly), Lit(mp#0), Lit(lst#0))
           == (if _module.List.Nil_q(Lit(mp#0))
             then #_module.List.Nil()
             else (var rest#2 := Lit(_module.List.tail(Lit(mp#0))); 
              (var n#2 := LitInt($Unbox(_module.List.head(Lit(mp#0))): int); 
                #_module.List.Cons(_module.__default.nth(_module._default.xtr$T, reveal__module._default.nth, n#2, Lit(lst#0)), 
                  Lit(_module.__default.xtr(_module._default.xtr$T, $LS($ly), rest#2, Lit(lst#0))))))));
}

function _module.__default.xtr#canCall(_module._default.xtr$T: Ty, mp#0: DatatypeType, lst#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.xtr$T: Ty, 
    $ly: LayerType, 
    mp#0: DatatypeType, 
    lst#0: DatatypeType :: 
  { _module.__default.xtr(_module._default.xtr$T, $LS($ly), mp#0, lst#0) } 
  _module.__default.xtr(_module._default.xtr$T, $LS($ly), mp#0, lst#0)
     == _module.__default.xtr(_module._default.xtr$T, $ly, mp#0, lst#0));

// fuel synonym axiom
axiom (forall _module._default.xtr$T: Ty, 
    $ly: LayerType, 
    mp#0: DatatypeType, 
    lst#0: DatatypeType :: 
  { _module.__default.xtr(_module._default.xtr$T, AsFuelBottom($ly), mp#0, lst#0) } 
  _module.__default.xtr(_module._default.xtr$T, $ly, mp#0, lst#0)
     == _module.__default.xtr(_module._default.xtr$T, $LZ, mp#0, lst#0));

function _module.__default.xtr#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.xtr
axiom (forall _module._default.xtr$T: Ty, 
    $ly: LayerType, 
    mp#0: DatatypeType, 
    lst#0: DatatypeType :: 
  { _module.__default.xtr#requires(_module._default.xtr$T, $ly, mp#0, lst#0) } 
  $Is(mp#0, Tclass._module.List(TInt))
       && $Is(lst#0, Tclass._module.List(_module._default.xtr$T))
     ==> _module.__default.xtr#requires(_module._default.xtr$T, $ly, mp#0, lst#0) == true);

procedure {:verboseName "xtr (well-formedness)"} CheckWellformed$$_module.__default.xtr(_module._default.xtr$T: Ty, 
    mp#0: DatatypeType where $Is(mp#0, Tclass._module.List(TInt)), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.xtr$T)));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "xtr (well-formedness)"} CheckWellformed$$_module.__default.xtr(_module._default.xtr$T: Ty, mp#0: DatatypeType, lst#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var n#Z#0: int;
  var let#1#0#0: int;
  var ##n#0: int;
  var ##xs#0: DatatypeType;
  var ##mp#0: DatatypeType;
  var ##lst#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.xtr(_module._default.xtr$T, $LS($LZ), mp#0, lst#0), 
          Tclass._module.List(_module._default.xtr$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (mp#0 == #_module.List.Nil())
        {
            assume {:id "id60"} _module.__default.xtr(_module._default.xtr$T, $LS($LZ), mp#0, lst#0)
               == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.xtr(_module._default.xtr$T, $LS($LZ), mp#0, lst#0), 
              Tclass._module.List(_module._default.xtr$T));
            return;
        }
        else if (mp#0 == #_module.List.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List(TInt));
            havoc rest#Z#0;
            assume {:id "id54"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(TInt));
            assume {:id "id55"} rest#Z#0 == let#0#0#0;
            havoc n#Z#0;
            assume {:id "id56"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id57"} n#Z#0 == let#1#0#0;
            ##n#0 := n#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            ##xs#0 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.xtr$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.xtr$T, n#Z#0, lst#0);
            ##mp#0 := rest#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##mp#0, Tclass._module.List(TInt), $Heap);
            ##lst#0 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##lst#0, Tclass._module.List(_module._default.xtr$T), $Heap);
            assert {:id "id58"} DtRank(##mp#0) < DtRank(mp#0)
               || (DtRank(##mp#0) == DtRank(mp#0) && DtRank(##lst#0) < DtRank(lst#0));
            assume _module.__default.xtr#canCall(_module._default.xtr$T, rest#Z#0, lst#0);
            assume {:id "id59"} _module.__default.xtr(_module._default.xtr$T, $LS($LZ), mp#0, lst#0)
               == #_module.List.Cons(_module.__default.nth(_module._default.xtr$T, reveal__module._default.nth, n#Z#0, lst#0), 
                _module.__default.xtr(_module._default.xtr$T, $LS($LZ), rest#Z#0, lst#0));
            assume _module.__default.nth#canCall(_module._default.xtr$T, n#Z#0, lst#0)
               && _module.__default.xtr#canCall(_module._default.xtr$T, rest#Z#0, lst#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.xtr(_module._default.xtr$T, $LS($LZ), mp#0, lst#0), 
              Tclass._module.List(_module._default.xtr$T));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "ExtractorTheorem (well-formedness)"} CheckWellFormed$$_module.__default.ExtractorTheorem(_module._default.ExtractorTheorem$T: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ExtractorTheorem$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap)
         && $IsA#_module.List(xs#0));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ExtractorTheorem (call)"} Call$$_module.__default.ExtractorTheorem(_module._default.ExtractorTheorem$T: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ExtractorTheorem$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap)
         && $IsA#_module.List(xs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.xtr(_module._default.ExtractorTheorem$T, 
        $LS($LZ), 
        _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
        xs#0))
     && $IsA#_module.List(_module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
     && 
    _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0)
     && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
     && _module.__default.xtr#canCall(_module._default.ExtractorTheorem$T, 
      _module.__default.nats($LS($LZ), 
        _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
      xs#0)
     && _module.__default.rev#canCall(_module._default.ExtractorTheorem$T, xs#0);
  ensures {:id "id62"} _module.List#Equal(_module.__default.xtr(_module._default.ExtractorTheorem$T, 
      $LS($LS($LZ)), 
      _module.__default.nats($LS($LS($LZ)), 
        _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0)), 
      xs#0), 
    _module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ExtractorTheorem (correctness)"} Impl$$_module.__default.ExtractorTheorem(_module._default.ExtractorTheorem$T: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ExtractorTheorem$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap)
         && $IsA#_module.List(xs#0))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.xtr(_module._default.ExtractorTheorem$T, 
        $LS($LZ), 
        _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
        xs#0))
     && $IsA#_module.List(_module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
     && 
    _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0)
     && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
     && _module.__default.xtr#canCall(_module._default.ExtractorTheorem$T, 
      _module.__default.nats($LS($LZ), 
        _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
      xs#0)
     && _module.__default.rev#canCall(_module._default.ExtractorTheorem$T, xs#0);
  ensures {:id "id63"} _module.List#Equal(_module.__default.xtr(_module._default.ExtractorTheorem$T, 
      $LS($LS($LZ)), 
      _module.__default.nats($LS($LS($LZ)), 
        _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0)), 
      xs#0), 
    _module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExtractorTheorem (correctness)"} Impl$$_module.__default.ExtractorTheorem(_module._default.ExtractorTheorem$T: Ty, xs#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.List(_module._default.ExtractorTheorem$T))
       && $IsAlloc(a#0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
  var b#0: DatatypeType
     where $Is(b#0, Tclass._module.List(_module._default.ExtractorTheorem$T))
       && $IsAlloc(b#0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
  var $rhs#0: DatatypeType;
  var ##mp#1: DatatypeType;
  var ##n#1: int;
  var ##xs#2: DatatypeType;
  var ##lst#1: DatatypeType;
  var $rhs#1: DatatypeType;
  var ##xs#3: DatatypeType;
  var ##xs#0_0_0: DatatypeType;
  var ##n#0_0_0: int;
  var ##xs#0_0_1: DatatypeType;
  var n##0_0_0: int;
  var ##xs#0_0_2: DatatypeType;
  var ##xs#0_0_3: DatatypeType;
  var ##xs#0_1_0: DatatypeType;
  var mp##0_1_0: DatatypeType;
  var ##n#0_1_0: int;
  var ##xs#0_1_1: DatatypeType;
  var lst##0_1_0: DatatypeType;
  var ##xs#0_1_2: DatatypeType;
  var ##n#0_1_1: int;
  var ##xs#0_1_3: DatatypeType;
  var ##xs#0_0: DatatypeType;
  var ##xs#1_0_0: DatatypeType;
  var xs##1_0_0: DatatypeType;
  var ##xs#1_0_1: DatatypeType;
  var ##xs#1_0: DatatypeType;
  var i#2_0: int;
  var ##xs#2_0: DatatypeType;
  var ##n#2_0: int;
  var ##xs#2_1: DatatypeType;
  var ##n#2_1: int;
  var ##xs#2_2: DatatypeType;
  var i##2_0: int;
  var xs##2_0: DatatypeType;
  var xs##0: DatatypeType;
  var ys##0: DatatypeType;

    // AddMethodImpl: ExtractorTheorem, Impl$$_module.__default.ExtractorTheorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType :: 
      { _module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LZ), $ih#xs0#0) } 
        { _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), $ih#xs0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.ExtractorTheorem$T))
           && Lit(true)
           && DtRank($ih#xs0#0) < DtRank(xs#0)
         ==> _module.List#Equal(_module.__default.xtr(_module._default.ExtractorTheorem$T, 
            $LS($LZ), 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), $ih#xs0#0)), 
            $ih#xs0#0), 
          _module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LZ), $ih#xs0#0)));
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(62,12)
    assume true;
    assume true;
    ##xs#2 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#2, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
    assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
    ##n#1 := _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
    ##mp#1 := _module.__default.nats($LS($LZ), 
      _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##mp#1, Tclass._module.List(TInt), $Heap);
    ##lst#1 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lst#1, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
    assume _module.__default.xtr#canCall(_module._default.ExtractorTheorem$T, 
      _module.__default.nats($LS($LZ), 
        _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
      xs#0);
    assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0)
       && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
       && _module.__default.xtr#canCall(_module._default.ExtractorTheorem$T, 
        _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
        xs#0);
    $rhs#0 := _module.__default.xtr(_module._default.ExtractorTheorem$T, 
      $LS($LZ), 
      _module.__default.nats($LS($LZ), 
        _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)), 
      xs#0);
    ##xs#3 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#3, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
    assume _module.__default.rev#canCall(_module._default.ExtractorTheorem$T, xs#0);
    assume _module.__default.rev#canCall(_module._default.ExtractorTheorem$T, xs#0);
    $rhs#1 := _module.__default.rev(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        ##xs#0_0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, a#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, a#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        ##xs#0_1_0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, a#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, a#0);
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        push;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(65,16)
        // TrCallStmt: Before ProcessCallStmt
        ##xs#0_1_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_1, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        ##n#0_1_0 := _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_0, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        // ProcessCallStmt: CheckSubrange
        mp##0_1_0 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        assume true;
        // ProcessCallStmt: CheckSubrange
        lst##0_1_0 := xs#0;
        call {:id "id70"} Call$$_module.__default.XtrLength(_module._default.ExtractorTheorem$T, mp##0_1_0, lst##0_1_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        ##xs#0_1_3 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_3, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        ##n#0_1_1 := _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_1, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        ##xs#0_1_2 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_2, Tclass._module.List(TInt), $Heap);
        assume _module.__default.length#canCall(TInt, 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)));
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
           && _module.__default.length#canCall(TInt, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)));
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        assert {:id "id71"} {:subsumption 0} _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), a#0)
           == _module.__default.length(TInt, 
            $LS($LS($LZ)), 
            _module.__default.nats($LS($LS($LZ)), 
              _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        ##xs#0_0_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_1, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        ##n#0_0_0 := _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        ##xs#0_0_0 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_0, Tclass._module.List(TInt), $Heap);
        assume _module.__default.length#canCall(TInt, 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)));
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0))
           && _module.__default.length#canCall(TInt, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)));
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        push;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(67,17)
        // TrCallStmt: Before ProcessCallStmt
        ##xs#0_0_2 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_2, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        // ProcessCallStmt: CheckSubrange
        n##0_0_0 := _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
        call {:id "id68"} Call$$_module.__default.NatsLength(n##0_0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        ##xs#0_0_3 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_3, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(63,3)
        assert {:id "id69"} {:subsumption 0} _module.__default.length(TInt, 
            $LS($LS($LZ)), 
            _module.__default.nats($LS($LS($LZ)), 
              _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0)))
           == _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0);
        assume false;
    }

    assume {:id "id72"} _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), a#0)
       == _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(70,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(70,3)
        ##xs#1_0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(70,3)
        ##xs#1_0_0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_0_0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(70,3)
        push;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(72,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        xs##1_0_0 := xs#0;
        call {:id "id73"} Call$$_module.__default.RevLength(_module._default.ExtractorTheorem$T, xs##1_0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(70,3)
        ##xs#1_0_1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_0_1, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, b#0);
        assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, b#0);
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(70,3)
        assert {:id "id74"} {:subsumption 0} _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), xs#0)
           == _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LS($LZ)), b#0);
        assume false;
    }

    assume {:id "id75"} _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)
       == _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), b#0);
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(75,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#2_0;
        assume true;
        if (LitInt(0) <= i#2_0)
        {
            ##xs#2_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#2_0, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
            assume _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        }

        assume LitInt(0) <= i#2_0
           ==> _module.__default.length#canCall(_module._default.ExtractorTheorem$T, xs#0);
        assume {:id "id76"} LitInt(0) <= i#2_0
           && i#2_0
             < _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0);
        if (*)
        {
            ##n#2_0 := i#2_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2_0, TInt, $Heap);
            ##xs#2_1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#2_1, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.ExtractorTheorem$T, i#2_0, a#0);
            ##n#2_1 := i#2_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2_1, TInt, $Heap);
            ##xs#2_2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#2_2, Tclass._module.List(_module._default.ExtractorTheorem$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.ExtractorTheorem$T, i#2_0, b#0);
            assume _module.__default.nth#canCall(_module._default.ExtractorTheorem$T, i#2_0, a#0)
               && _module.__default.nth#canCall(_module._default.ExtractorTheorem$T, i#2_0, b#0);
            assume {:id "id77"} _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_0, a#0)
               == _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_0, b#0);
            assume false;
        }

        push;
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(78,5)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(78,12)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id78"} Call$$_module.__default.reveal__nth();
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(79,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##2_0 := i#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        xs##2_0 := xs#0;
        call {:id "id79"} Call$$_module.__default.ExtractorLemma(_module._default.ExtractorTheorem$T, i##2_0, xs##2_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        assert {:id "id80"} _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_0, a#0)
           == _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_0, b#0);
        assume false;
    }
    else
    {
        assume (forall i#2_1: int :: 
          { _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_1, b#0) } 
            { _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_1, a#0) } 
          LitInt(0) <= i#2_1
               && i#2_1
                 < _module.__default.length(_module._default.ExtractorTheorem$T, $LS($LZ), xs#0)
             ==> _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_1, a#0)
               == _module.__default.nth(_module._default.ExtractorTheorem$T, reveal__module._default.nth, i#2_1, b#0));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(81,30)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    xs##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    ys##0 := b#0;
    call {:id "id81"} Call$$_module.__default.EqualElementsMakeEqualLists(_module._default.ExtractorTheorem$T, xs##0, ys##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "XtrLength (well-formedness)"} CheckWellFormed$$_module.__default.XtrLength(_module._default.XtrLength$T: Ty, 
    mp#0: DatatypeType
       where $Is(mp#0, Tclass._module.List(TInt))
         && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(mp#0), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.XtrLength$T))
         && $IsAlloc(lst#0, Tclass._module.List(_module._default.XtrLength$T), $Heap)
         && $IsA#_module.List(lst#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "XtrLength (call)"} Call$$_module.__default.XtrLength(_module._default.XtrLength$T: Ty, 
    mp#0: DatatypeType
       where $Is(mp#0, Tclass._module.List(TInt))
         && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(mp#0), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.XtrLength$T))
         && $IsAlloc(lst#0, Tclass._module.List(_module._default.XtrLength$T), $Heap)
         && $IsA#_module.List(lst#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.xtr#canCall(_module._default.XtrLength$T, mp#0, lst#0)
     && _module.__default.length#canCall(_module._default.XtrLength$T, 
      _module.__default.xtr(_module._default.XtrLength$T, $LS($LZ), mp#0, lst#0))
     && _module.__default.length#canCall(TInt, mp#0);
  ensures {:id "id83"} _module.__default.length(_module._default.XtrLength$T, 
      $LS($LS($LZ)), 
      _module.__default.xtr(_module._default.XtrLength$T, $LS($LS($LZ)), mp#0, lst#0))
     == _module.__default.length(TInt, $LS($LS($LZ)), mp#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "XtrLength (correctness)"} Impl$$_module.__default.XtrLength(_module._default.XtrLength$T: Ty, 
    mp#0: DatatypeType
       where $Is(mp#0, Tclass._module.List(TInt))
         && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(mp#0), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.XtrLength$T))
         && $IsAlloc(lst#0, Tclass._module.List(_module._default.XtrLength$T), $Heap)
         && $IsA#_module.List(lst#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.xtr#canCall(_module._default.XtrLength$T, mp#0, lst#0)
     && _module.__default.length#canCall(_module._default.XtrLength$T, 
      _module.__default.xtr(_module._default.XtrLength$T, $LS($LZ), mp#0, lst#0))
     && _module.__default.length#canCall(TInt, mp#0);
  ensures {:id "id84"} _module.__default.length(_module._default.XtrLength$T, 
      $LS($LS($LZ)), 
      _module.__default.xtr(_module._default.XtrLength$T, $LS($LS($LZ)), mp#0, lst#0))
     == _module.__default.length(TInt, $LS($LS($LZ)), mp#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "XtrLength (correctness)"} Impl$$_module.__default.XtrLength(_module._default.XtrLength$T: Ty, mp#0: DatatypeType, lst#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: XtrLength, Impl$$_module.__default.XtrLength
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(mp#0);
    assume $IsA#_module.List(lst#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#mp0#0: DatatypeType, $ih#lst0#0: DatatypeType :: 
      { _module.__default.xtr(_module._default.XtrLength$T, $LS($LZ), $ih#mp0#0, $ih#lst0#0) } 
      $Is($ih#mp0#0, Tclass._module.List(TInt))
           && $Is($ih#lst0#0, Tclass._module.List(_module._default.XtrLength$T))
           && Lit(true)
           && (DtRank($ih#mp0#0) < DtRank(mp#0)
             || (DtRank($ih#mp0#0) == DtRank(mp#0) && DtRank($ih#lst0#0) < DtRank(lst#0)))
         ==> _module.__default.length(_module._default.XtrLength$T, 
            $LS($LZ), 
            _module.__default.xtr(_module._default.XtrLength$T, $LS($LZ), $ih#mp0#0, $ih#lst0#0))
           == _module.__default.length(TInt, $LS($LZ), $ih#mp0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "NatsLength (well-formedness)"} CheckWellFormed$$_module.__default.NatsLength(n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NatsLength (call)"} Call$$_module.__default.NatsLength(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.nats#canCall(n#0)
     && _module.__default.length#canCall(TInt, _module.__default.nats($LS($LZ), n#0));
  ensures {:id "id86"} _module.__default.length(TInt, $LS($LS($LZ)), _module.__default.nats($LS($LS($LZ)), n#0))
     == n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatsLength (correctness)"} Impl$$_module.__default.NatsLength(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.nats#canCall(n#0)
     && _module.__default.length#canCall(TInt, _module.__default.nats($LS($LZ), n#0));
  ensures {:id "id87"} _module.__default.length(TInt, $LS($LS($LZ)), _module.__default.nats($LS($LS($LZ)), n#0))
     == n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NatsLength (correctness)"} Impl$$_module.__default.NatsLength(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: NatsLength, Impl$$_module.__default.NatsLength
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { _module.__default.nats($LS($LZ), $ih#n0#0) } 
      LitInt(0) <= $ih#n0#0 && Lit(true) && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> _module.__default.length(TInt, $LS($LZ), _module.__default.nats($LS($LZ), $ih#n0#0))
           == $ih#n0#0);
    $_reverifyPost := false;
}



procedure {:verboseName "AppendLength (well-formedness)"} CheckWellFormed$$_module.__default.AppendLength(_module._default.AppendLength$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.AppendLength$_T0))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.AppendLength$_T0), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.AppendLength$_T0))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.AppendLength$_T0), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AppendLength (call)"} Call$$_module.__default.AppendLength(_module._default.AppendLength$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.AppendLength$_T0))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.AppendLength$_T0), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.AppendLength$_T0))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.AppendLength$_T0), $Heap)
         && $IsA#_module.List(ys#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(_module._default.AppendLength$_T0, xs#0, ys#0)
     && _module.__default.length#canCall(_module._default.AppendLength$_T0, 
      _module.__default.append(_module._default.AppendLength$_T0, $LS($LZ), xs#0, ys#0))
     && 
    _module.__default.length#canCall(_module._default.AppendLength$_T0, xs#0)
     && _module.__default.length#canCall(_module._default.AppendLength$_T0, ys#0);
  ensures {:id "id89"} _module.__default.length(_module._default.AppendLength$_T0, 
      $LS($LS($LZ)), 
      _module.__default.append(_module._default.AppendLength$_T0, $LS($LS($LZ)), xs#0, ys#0))
     == _module.__default.length(_module._default.AppendLength$_T0, $LS($LS($LZ)), xs#0)
       + _module.__default.length(_module._default.AppendLength$_T0, $LS($LS($LZ)), ys#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AppendLength (correctness)"} Impl$$_module.__default.AppendLength(_module._default.AppendLength$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.AppendLength$_T0))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.AppendLength$_T0), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.AppendLength$_T0))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.AppendLength$_T0), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(_module._default.AppendLength$_T0, xs#0, ys#0)
     && _module.__default.length#canCall(_module._default.AppendLength$_T0, 
      _module.__default.append(_module._default.AppendLength$_T0, $LS($LZ), xs#0, ys#0))
     && 
    _module.__default.length#canCall(_module._default.AppendLength$_T0, xs#0)
     && _module.__default.length#canCall(_module._default.AppendLength$_T0, ys#0);
  ensures {:id "id90"} _module.__default.length(_module._default.AppendLength$_T0, 
      $LS($LS($LZ)), 
      _module.__default.append(_module._default.AppendLength$_T0, $LS($LS($LZ)), xs#0, ys#0))
     == _module.__default.length(_module._default.AppendLength$_T0, $LS($LS($LZ)), xs#0)
       + _module.__default.length(_module._default.AppendLength$_T0, $LS($LS($LZ)), ys#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AppendLength (correctness)"} Impl$$_module.__default.AppendLength(_module._default.AppendLength$_T0: Ty, xs#0: DatatypeType, ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: AppendLength, Impl$$_module.__default.AppendLength
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    assume $IsA#_module.List(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { _module.__default.append(_module._default.AppendLength$_T0, $LS($LZ), $ih#xs0#0, $ih#ys0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.AppendLength$_T0))
           && $Is($ih#ys0#0, Tclass._module.List(_module._default.AppendLength$_T0))
           && Lit(true)
           && (DtRank($ih#xs0#0) < DtRank(xs#0)
             || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))
         ==> _module.__default.length(_module._default.AppendLength$_T0, 
            $LS($LZ), 
            _module.__default.append(_module._default.AppendLength$_T0, $LS($LZ), $ih#xs0#0, $ih#ys0#0))
           == _module.__default.length(_module._default.AppendLength$_T0, $LS($LZ), $ih#xs0#0)
             + _module.__default.length(_module._default.AppendLength$_T0, $LS($LZ), $ih#ys0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "RevLength (well-formedness)"} CheckWellFormed$$_module.__default.RevLength(_module._default.RevLength$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.RevLength$_T0))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.RevLength$_T0), $Heap)
         && $IsA#_module.List(xs#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "RevLength (call)"} Call$$_module.__default.RevLength(_module._default.RevLength$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.RevLength$_T0))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.RevLength$_T0), $Heap)
         && $IsA#_module.List(xs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.rev#canCall(_module._default.RevLength$_T0, xs#0)
     && _module.__default.length#canCall(_module._default.RevLength$_T0, 
      _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), xs#0))
     && _module.__default.length#canCall(_module._default.RevLength$_T0, xs#0);
  ensures {:id "id92"} _module.__default.length(_module._default.RevLength$_T0, 
      $LS($LS($LZ)), 
      _module.__default.rev(_module._default.RevLength$_T0, $LS($LS($LZ)), xs#0))
     == _module.__default.length(_module._default.RevLength$_T0, $LS($LS($LZ)), xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "RevLength (correctness)"} Impl$$_module.__default.RevLength(_module._default.RevLength$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.RevLength$_T0))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.RevLength$_T0), $Heap)
         && $IsA#_module.List(xs#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.rev#canCall(_module._default.RevLength$_T0, xs#0)
     && _module.__default.length#canCall(_module._default.RevLength$_T0, 
      _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), xs#0))
     && _module.__default.length#canCall(_module._default.RevLength$_T0, xs#0);
  ensures {:id "id93"} _module.__default.length(_module._default.RevLength$_T0, 
      $LS($LS($LZ)), 
      _module.__default.rev(_module._default.RevLength$_T0, $LS($LS($LZ)), xs#0))
     == _module.__default.length(_module._default.RevLength$_T0, $LS($LS($LZ)), xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "RevLength (correctness)"} Impl$$_module.__default.RevLength(_module._default.RevLength$_T0: Ty, xs#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var rest#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: Box;
  var let#0_1#0#0: Box;
  var ##xs#0_0_0_0: DatatypeType;
  var ##xs#0_0_0_1: DatatypeType;
  var ##xs#0_0_0_2: DatatypeType;
  var ##xs#0_0_0_3: DatatypeType;
  var ##xs#0_0_0_4: DatatypeType;
  var ##xs#0_0_1_0: DatatypeType;
  var ##xs#0_0_1_1: DatatypeType;
  var ##xs#0_0_1_2: DatatypeType;
  var ##ys#0_0_1_0: DatatypeType;
  var xs##0_0_1_0: DatatypeType;
  var ##xs#0_0_1_3: DatatypeType;
  var ys##0_0_1_0: DatatypeType;
  var ##xs#0_0_1_4: DatatypeType;
  var ##xs#0_0_1_5: DatatypeType;
  var ##xs#0_0_1_6: DatatypeType;
  var ##xs#0_0_0: DatatypeType;
  var ##xs#0_0_1: DatatypeType;
  var ##xs#0_0_2: DatatypeType;
  var ##ys#0_0_0: DatatypeType;

    // AddMethodImpl: RevLength, Impl$$_module.__default.RevLength
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType :: 
      { _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), $ih#xs0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.RevLength$_T0))
           && Lit(true)
           && DtRank($ih#xs0#0) < DtRank(xs#0)
         ==> _module.__default.length(_module._default.RevLength$_T0, 
            $LS($LZ), 
            _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), $ih#xs0#0))
           == _module.__default.length(_module._default.RevLength$_T0, $LS($LZ), $ih#xs0#0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
    }
    else if (xs#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module._default.RevLength$_T0);
        assume $Is(_mcc#1#0_0, Tclass._module.List(_module._default.RevLength$_T0));
        havoc rest#0_0;
        assume $Is(rest#0_0, Tclass._module.List(_module._default.RevLength$_T0))
           && $IsAlloc(rest#0_0, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
        assume {:id "id94"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(_module._default.RevLength$_T0));
        assume {:id "id95"} rest#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume $IsBox(x#0_0, _module._default.RevLength$_T0)
           && $IsAllocBox(x#0_0, _module._default.RevLength$_T0, $Heap);
        assume {:id "id96"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, _module._default.RevLength$_T0);
        assume {:id "id97"} x#0_0 == let#0_1#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            ##xs#0_0_2 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            ##xs#0_0_1 := _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            ##ys#0_0_0 := #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.append#canCall(_module._default.RevLength$_T0, 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            ##xs#0_0_0 := _module.__default.append(_module._default.RevLength$_T0, 
              $LS($LZ), 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              _module.__default.append(_module._default.RevLength$_T0, 
                $LS($LZ), 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
                #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()))));
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0)
               && _module.__default.append#canCall(_module._default.RevLength$_T0, 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
                #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())))
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                _module.__default.append(_module._default.RevLength$_T0, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
                  #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            ##xs#0_0_1_2 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_2, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            ##xs#0_0_1_1 := _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_1, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            ##ys#0_0_1_0 := #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1_0, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.append#canCall(_module._default.RevLength$_T0, 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            ##xs#0_0_1_0 := _module.__default.append(_module._default.RevLength$_T0, 
              $LS($LZ), 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_0, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              _module.__default.append(_module._default.RevLength$_T0, 
                $LS($LZ), 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
                #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()))));
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0)
               && _module.__default.append#canCall(_module._default.RevLength$_T0, 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
                #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())))
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                _module.__default.append(_module._default.RevLength$_T0, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
                  #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()))));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(111,23)
            // TrCallStmt: Before ProcessCallStmt
            ##xs#0_0_1_3 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_3, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            // ProcessCallStmt: CheckSubrange
            xs##0_0_1_0 := _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            ys##0_0_1_0 := #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()));
            call {:id "id99"} Call$$_module.__default.AppendLength(_module._default.RevLength$_T0, xs##0_0_1_0, ys##0_0_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            ##xs#0_0_1_5 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_5, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            ##xs#0_0_1_4 := _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_4, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0));
            ##xs#0_0_1_6 := #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_6, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0)
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0))
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            assert {:id "id100"} {:subsumption 0} _module.__default.length(_module._default.RevLength$_T0, 
                $LS($LS($LZ)), 
                _module.__default.append(_module._default.RevLength$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.RevLength$_T0, $LS($LS($LZ)), rest#0_0), 
                  #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()))))
               == _module.__default.length(_module._default.RevLength$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.RevLength$_T0, $LS($LS($LZ)), rest#0_0))
                 + _module.__default.length(_module._default.RevLength$_T0, 
                  $LS($LS($LZ)), 
                  #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            ##xs#0_0_0_1 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_1, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            ##xs#0_0_0_0 := _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_0, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0));
            ##xs#0_0_0_2 := #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_2, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0)
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0))
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            ##xs#0_0_0_4 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_4, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0);
            ##xs#0_0_0_3 := _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_3, Tclass._module.List(_module._default.RevLength$_T0), $Heap);
            assume _module.__default.length#canCall(_module._default.RevLength$_T0, 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0));
            assume _module.__default.rev#canCall(_module._default.RevLength$_T0, rest#0_0)
               && _module.__default.length#canCall(_module._default.RevLength$_T0, 
                _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(109,7)
            assert {:id "id98"} {:subsumption 0} _module.__default.length(_module._default.RevLength$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.RevLength$_T0, $LS($LS($LZ)), rest#0_0))
                 + _module.__default.length(_module._default.RevLength$_T0, 
                  $LS($LS($LZ)), 
                  #_module.List.Cons(x#0_0, Lit(#_module.List.Nil())))
               == _module.__default.length(_module._default.RevLength$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.RevLength$_T0, $LS($LS($LZ)), rest#0_0))
                 + 1;
            assume false;
        }

        assume {:id "id101"} _module.__default.length(_module._default.RevLength$_T0, 
            $LS($LZ), 
            _module.__default.append(_module._default.RevLength$_T0, 
              $LS($LZ), 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0), 
              #_module.List.Cons(x#0_0, Lit(#_module.List.Nil()))))
           == _module.__default.length(_module._default.RevLength$_T0, 
              $LS($LZ), 
              _module.__default.rev(_module._default.RevLength$_T0, $LS($LZ), rest#0_0))
             + 1;
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "EqualElementsMakeEqualLists (well-formedness)"} CheckWellFormed$$_module.__default.EqualElementsMakeEqualLists(_module._default.EqualElementsMakeEqualLists$T: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EqualElementsMakeEqualLists (call)"} Call$$_module.__default.EqualElementsMakeEqualLists(_module._default.EqualElementsMakeEqualLists$T: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id108"} _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LS($LZ)), xs#0)
     == _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LS($LZ)), ys#0);
  requires {:id "id109"} (forall i#1: int :: 
    { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
        reveal__module._default.nth, 
        i#1, 
        ys#0) } 
      { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
        reveal__module._default.nth, 
        i#1, 
        xs#0) } 
    LitInt(0) <= i#1
         && i#1
           < _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LS($LZ)), xs#0)
       ==> _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
          reveal__module._default.nth, 
          i#1, 
          xs#0)
         == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
          reveal__module._default.nth, 
          i#1, 
          ys#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(xs#0) && $IsA#_module.List(ys#0);
  ensures {:id "id110"} _module.List#Equal(xs#0, ys#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EqualElementsMakeEqualLists (correctness)"} Impl$$_module.__default.EqualElementsMakeEqualLists(_module._default.EqualElementsMakeEqualLists$T: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id111"} _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LS($LZ)), xs#0)
     == _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LS($LZ)), ys#0);
  free requires {:id "id112"} (forall i#1: int :: 
    { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
        reveal__module._default.nth, 
        i#1, 
        ys#0) } 
      { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
        reveal__module._default.nth, 
        i#1, 
        xs#0) } 
    LitInt(0) <= i#1
         && i#1
           < _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LZ), xs#0)
       ==> _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
          reveal__module._default.nth, 
          i#1, 
          xs#0)
         == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
          reveal__module._default.nth, 
          i#1, 
          ys#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(xs#0) && $IsA#_module.List(ys#0);
  ensures {:id "id113"} _module.List#Equal(xs#0, ys#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EqualElementsMakeEqualLists (correctness)"} Impl$$_module.__default.EqualElementsMakeEqualLists(_module._default.EqualElementsMakeEqualLists$T: Ty, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var rest#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: Box;
  var let#0_1#0#0: Box;
  var ##n#0_0: int;
  var ##xs#0_0: DatatypeType;
  var ##n#0_1: int;
  var ##xs#0_1: DatatypeType;
  var i#0_0_0: int;
  var ##xs#0_0_0: DatatypeType;
  var ##n#0_0_0: int;
  var ##xs#0_0_1: DatatypeType;
  var ##n#0_0_1: int;
  var ##xs#0_0_2: DatatypeType;
  var ##n#0_0_2: int;
  var ##xs#0_0_3: DatatypeType;
  var ##n#0_0_3: int;
  var ##xs#0_0_4: DatatypeType;
  var ##n#0_0_0_0_0: int;
  var ##xs#0_0_0_0_0: DatatypeType;
  var ##n#0_0_0_0_1: int;
  var ##xs#0_0_0_0_1: DatatypeType;
  var ##n#0_0_0_0_2: int;
  var ##xs#0_0_0_0_2: DatatypeType;
  var ##n#0_0_0_0_3: int;
  var ##xs#0_0_0_0_3: DatatypeType;
  var ##n#0_0_0_1_0: int;
  var ##xs#0_0_0_1_0: DatatypeType;
  var ##n#0_0_0_1_1: int;
  var ##xs#0_0_0_1_1: DatatypeType;
  var ##n#0_0_0_1_2: int;
  var ##xs#0_0_0_1_2: DatatypeType;
  var ##n#0_0_0_1_3: int;
  var ##xs#0_0_0_1_3: DatatypeType;
  var ##n#0_0_0_0: int;
  var ##xs#0_0_0_0: DatatypeType;
  var ##n#0_0_0_1: int;
  var ##xs#0_0_0_1: DatatypeType;

    // AddMethodImpl: EqualElementsMakeEqualLists, Impl$$_module.__default.EqualElementsMakeEqualLists
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    assume $IsA#_module.List(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LZ), $ih#ys0#0), _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LZ), $ih#xs0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
           && $Is($ih#ys0#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
           && 
          _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LZ), $ih#xs0#0)
             == _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LZ), $ih#ys0#0)
           && (forall i#2: int :: 
            { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#2, 
                $ih#ys0#0) } 
              { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#2, 
                $ih#xs0#0) } 
            LitInt(0) <= i#2
                 && i#2
                   < _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, $LS($LZ), $ih#xs0#0)
               ==> _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                  reveal__module._default.nth, 
                  i#2, 
                  $ih#xs0#0)
                 == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                  reveal__module._default.nth, 
                  i#2, 
                  $ih#ys0#0))
           && (DtRank($ih#xs0#0) < DtRank(xs#0)
             || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))
         ==> _module.List#Equal($ih#xs0#0, $ih#ys0#0));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(125,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(125,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id114"} Call$$_module.__default.reveal__nth();
    // TrCallStmt: After ProcessCallStmt
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
    }
    else if (xs#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module._default.EqualElementsMakeEqualLists$T);
        assume $Is(_mcc#1#0_0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T));
        havoc rest#0_0;
        assume $Is(rest#0_0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T))
           && $IsAlloc(rest#0_0, 
            Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
            $Heap);
        assume {:id "id115"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T));
        assume {:id "id116"} rest#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume $IsBox(x#0_0, _module._default.EqualElementsMakeEqualLists$T)
           && $IsAllocBox(x#0_0, _module._default.EqualElementsMakeEqualLists$T, $Heap);
        assume {:id "id117"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, _module._default.EqualElementsMakeEqualLists$T);
        assume {:id "id118"} x#0_0 == let#0_1#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(129,7)
        ##n#0_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, TInt, $Heap);
        ##xs#0_0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0, 
          Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
          $Heap);
        assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, LitInt(0), xs#0);
        ##n#0_1 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1, TInt, $Heap);
        ##xs#0_1 := ys#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1, 
          Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
          $Heap);
        assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, LitInt(0), ys#0);
        assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, LitInt(0), xs#0)
           && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, LitInt(0), ys#0);
        assert {:id "id119"} _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
            reveal__module._default.nth, 
            LitInt(0), 
            xs#0)
           == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
            reveal__module._default.nth, 
            LitInt(0), 
            ys#0);
        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(130,7)
        if (*)
        {
            // Assume Fuel Constant
            havoc i#0_0_0;
            assume true;
            if (LitInt(0) <= i#0_0_0)
            {
                assert {:id "id120"} _module.List.Cons_q(xs#0);
                ##xs#0_0_0 := _module.List.tail(xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.length#canCall(_module._default.EqualElementsMakeEqualLists$T, _module.List.tail(xs#0));
            }

            assume LitInt(0) <= i#0_0_0
               ==> _module.__default.length#canCall(_module._default.EqualElementsMakeEqualLists$T, _module.List.tail(xs#0));
            assume {:id "id121"} LitInt(0) <= i#0_0_0
               && i#0_0_0
                 < _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, 
                  $LS($LZ), 
                  _module.List.tail(xs#0));
            if (*)
            {
                ##n#0_0_0 := i#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0, TInt, $Heap);
                assert {:id "id122"} _module.List.Cons_q(xs#0);
                ##xs#0_0_1 := _module.List.tail(xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_1, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(xs#0));
                ##n#0_0_1 := i#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_1, TInt, $Heap);
                assert {:id "id123"} _module.List.Cons_q(ys#0);
                ##xs#0_0_2 := _module.List.tail(ys#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_2, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(ys#0));
                ##n#0_0_2 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_2, TInt, $Heap);
                ##xs#0_0_3 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_3, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, xs#0);
                ##n#0_0_3 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_3, TInt, $Heap);
                ##xs#0_0_4 := ys#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_4, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, ys#0);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(xs#0))
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(ys#0))
                   && 
                  _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, xs#0)
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, ys#0);
                assume {:id "id124"} (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0, 
                    _module.List.tail(xs#0))
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0, 
                    _module.List.tail(ys#0)))
                   == 
                  (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    xs#0)
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    ys#0));
                assume false;
            }

            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                ##n#0_0_0_0 := i#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_0, TInt, $Heap);
                assert {:id "id137"} _module.List.Cons_q(xs#0);
                ##xs#0_0_0_0 := _module.List.tail(xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_0, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(xs#0));
                ##n#0_0_0_1 := i#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_1, TInt, $Heap);
                assert {:id "id138"} _module.List.Cons_q(ys#0);
                ##xs#0_0_0_1 := _module.List.tail(ys#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_1, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(ys#0));
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(xs#0))
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(ys#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                ##n#0_0_0_1_0 := i#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_1_0, TInt, $Heap);
                assume {:id "id130"} _module.List.Cons_q(xs#0);
                ##xs#0_0_0_1_0 := _module.List.tail(xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_1_0, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(xs#0));
                ##n#0_0_0_1_1 := i#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_1_1, TInt, $Heap);
                assume {:id "id131"} _module.List.Cons_q(ys#0);
                ##xs#0_0_0_1_1 := _module.List.tail(ys#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_1_1, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(ys#0));
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(xs#0))
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0, _module.List.tail(ys#0));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                ##n#0_0_0_1_2 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_1_2, TInt, $Heap);
                assert {:id "id132"} _module.List.Cons_q(xs#0);
                assert {:id "id133"} _module.List.Cons_q(xs#0);
                ##xs#0_0_0_1_2 := #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_1_2, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                  i#0_0_0 + 1, 
                  #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0)));
                ##n#0_0_0_1_3 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_1_3, TInt, $Heap);
                assert {:id "id134"} _module.List.Cons_q(ys#0);
                assert {:id "id135"} _module.List.Cons_q(ys#0);
                ##xs#0_0_0_1_3 := #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_1_3, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                  i#0_0_0 + 1, 
                  #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0)));
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0)))
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0)));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                assert {:id "id136"} {:subsumption 0} (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0, 
                    _module.List.tail(xs#0))
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0, 
                    _module.List.tail(ys#0)))
                   == 
                  (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0)))
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                ##n#0_0_0_0_0 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_0_0, TInt, $Heap);
                assume {:id "id125"} _module.List.Cons_q(xs#0);
                assume {:id "id126"} _module.List.Cons_q(xs#0);
                ##xs#0_0_0_0_0 := #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_0_0, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                  i#0_0_0 + 1, 
                  #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0)));
                ##n#0_0_0_0_1 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_0_1, TInt, $Heap);
                assume {:id "id127"} _module.List.Cons_q(ys#0);
                assume {:id "id128"} _module.List.Cons_q(ys#0);
                ##xs#0_0_0_0_1 := #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_0_1, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                  i#0_0_0 + 1, 
                  #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0)));
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0)))
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0)));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                ##n#0_0_0_0_2 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_0_2, TInt, $Heap);
                ##xs#0_0_0_0_2 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_0_2, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, xs#0);
                ##n#0_0_0_0_3 := i#0_0_0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_0_3, TInt, $Heap);
                ##xs#0_0_0_0_3 := ys#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0_0_0_0_3, 
                  Tclass._module.List(_module._default.EqualElementsMakeEqualLists$T), 
                  $Heap);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, ys#0);
                assume _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, xs#0)
                   && _module.__default.nth#canCall(_module._default.EqualElementsMakeEqualLists$T, i#0_0_0 + 1, ys#0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(132,9)
                assert {:id "id129"} {:subsumption 0} (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(xs#0), _module.List.tail(xs#0)))
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    #_module.List.Cons(_module.List.head(ys#0), _module.List.tail(ys#0))))
                   == 
                  (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    xs#0)
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_0 + 1, 
                    ys#0));
                assume false;
            }

            assume {:id "id139"} (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0, 
                _module.List.tail(xs#0))
               == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0, 
                _module.List.tail(ys#0)))
               == 
              (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0 + 1, 
                xs#0)
               == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0 + 1, 
                ys#0));
            assert {:id "id140"} (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0, 
                _module.List.tail(xs#0))
               == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0, 
                _module.List.tail(ys#0)))
               == 
              (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0 + 1, 
                xs#0)
               == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                reveal__module._default.nth, 
                i#0_0_0 + 1, 
                ys#0));
            assume false;
        }
        else
        {
            assume (forall i#0_0_1: int :: 
              { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                  reveal__module._default.nth, 
                  i#0_0_1, 
                  _module.List.tail(ys#0)) } 
                { _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                  reveal__module._default.nth, 
                  i#0_0_1, 
                  _module.List.tail(xs#0)) } 
              LitInt(0) <= i#0_0_1
                   && i#0_0_1
                     < _module.__default.length(_module._default.EqualElementsMakeEqualLists$T, 
                      $LS($LZ), 
                      _module.List.tail(xs#0))
                 ==> (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_1, 
                    _module.List.tail(xs#0))
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_1, 
                    _module.List.tail(ys#0)))
                   == 
                  (_module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_1 + 1, 
                    xs#0)
                   == _module.__default.nth(_module._default.EqualElementsMakeEqualLists$T, 
                    reveal__module._default.nth, 
                    i#0_0_1 + 1, 
                    ys#0)));
        }
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "ExtractorLemma (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.__default.ExtractorLemma(_module._default.ExtractorLemma$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ExtractorLemma$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap)
         && $IsA#_module.List(xs#0));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ExtractorLemma (call)"} {:vcs_split_on_every_assert} Call$$_module.__default.ExtractorLemma(_module._default.ExtractorLemma$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ExtractorLemma$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap)
         && $IsA#_module.List(xs#0));
  // user-defined preconditions
  requires {:id "id143"} LitInt(0) <= i#0;
  requires {:id "id144"} i#0
     < _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
     && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0))
     && _module.__default.xtr#canCall(_module._default.ExtractorLemma$T, 
      _module.__default.nats($LS($LZ), 
        _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
      xs#0)
     && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
      i#0, 
      _module.__default.xtr(_module._default.ExtractorLemma$T, 
        $LS($LZ), 
        _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
        xs#0))
     && 
    _module.__default.rev#canCall(_module._default.ExtractorLemma$T, xs#0)
     && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
      i#0, 
      _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
  ensures {:id "id145"} _module.__default.nth(_module._default.ExtractorLemma$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.xtr(_module._default.ExtractorLemma$T, 
        $LS($LS($LZ)), 
        _module.__default.nats($LS($LS($LZ)), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)), 
        xs#0))
     == _module.__default.nth(_module._default.ExtractorLemma$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ExtractorLemma (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.__default.ExtractorLemma(_module._default.ExtractorLemma$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ExtractorLemma$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap)
         && $IsA#_module.List(xs#0))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id146"} LitInt(0) <= i#0;
  requires {:id "id147"} i#0
     < _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
     && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0))
     && _module.__default.xtr#canCall(_module._default.ExtractorLemma$T, 
      _module.__default.nats($LS($LZ), 
        _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
      xs#0)
     && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
      i#0, 
      _module.__default.xtr(_module._default.ExtractorLemma$T, 
        $LS($LZ), 
        _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
        xs#0))
     && 
    _module.__default.rev#canCall(_module._default.ExtractorLemma$T, xs#0)
     && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
      i#0, 
      _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
  ensures {:id "id148"} _module.__default.nth(_module._default.ExtractorLemma$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.xtr(_module._default.ExtractorLemma$T, 
        $LS($LS($LZ)), 
        _module.__default.nats($LS($LS($LZ)), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)), 
        xs#0))
     == _module.__default.nth(_module._default.ExtractorLemma$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExtractorLemma (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.__default.ExtractorLemma(_module._default.ExtractorLemma$T: Ty, i#0: int, xs#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##n#0_0_0: int;
  var ##xs#0_0_0: DatatypeType;
  var ##xs#0_0_1: DatatypeType;
  var xs##0_0_0: DatatypeType;
  var i##0_0_0: int;
  var xs##0_0_1: DatatypeType;
  var ##n#0_0_1: int;
  var ##xs#0_0_2: DatatypeType;
  var ##xs#0_0_3: DatatypeType;
  var ##n#0_1_0: int;
  var ##n#0_1_1: int;
  var ##xs#0_1_0: DatatypeType;
  var ##n#0_1_2: int;
  var ##xs#0_1_1: DatatypeType;
  var ##xs#0_1_2: DatatypeType;
  var i##0_1_0: int;
  var n##0_1_0: int;
  var ##xs#0_1_3: DatatypeType;
  var ##n#0_1_3: int;
  var ##xs#0_1_4: DatatypeType;
  var ##xs#0_1_5: DatatypeType;
  var ##n#0_2_0: int;
  var ##xs#0_2_0: DatatypeType;
  var ##mp#0_2_0: DatatypeType;
  var ##n#0_2_1: int;
  var ##xs#0_2_1: DatatypeType;
  var ##lst#0_2_0: DatatypeType;
  var n##0_2_0: int;
  var ##xs#0_2_2: DatatypeType;
  var i##0_2_0: int;
  var mp##0_2_0: DatatypeType;
  var ##n#0_2_2: int;
  var ##xs#0_2_3: DatatypeType;
  var lst##0_2_0: DatatypeType;
  var ##n#0_2_3: int;
  var ##n#0_2_4: int;
  var ##xs#0_2_4: DatatypeType;
  var ##n#0_2_5: int;
  var ##xs#0_2_5: DatatypeType;
  var ##xs#0_2_6: DatatypeType;
  var ##n#0_0: int;
  var ##xs#0_0: DatatypeType;
  var ##mp#0_0: DatatypeType;
  var ##n#0_1: int;
  var ##xs#0_1: DatatypeType;
  var ##lst#0_0: DatatypeType;

    // AddMethodImpl: ExtractorLemma, Impl$$_module.__default.ExtractorLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType :: 
      { _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), $ih#xs0#0) } 
        { _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), $ih#xs0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.ExtractorLemma$T))
           && 
          LitInt(0) <= i#0
           && i#0
             < _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), $ih#xs0#0)
           && ((0 <= i#0 && i#0 < i#0) || (i#0 == i#0 && DtRank($ih#xs0#0) < DtRank(xs#0)))
         ==> _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.xtr(_module._default.ExtractorLemma$T, 
              $LS($LZ), 
              _module.__default.nats($LS($LZ), 
                _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), $ih#xs0#0)), 
              $ih#xs0#0))
           == _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), $ih#xs0#0)));
    $_reverifyPost := false;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##n#0_0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, TInt, $Heap);
        ##xs#0_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_1 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        ##mp#0_0 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##mp#0_0, Tclass._module.List(TInt), $Heap);
        ##lst#0_0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##lst#0_0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.xtr#canCall(_module._default.ExtractorLemma$T, 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
          xs#0);
        ##xs#0_0 := _module.__default.xtr(_module._default.ExtractorLemma$T, 
          $LS($LZ), 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
          xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          i#0, 
          _module.__default.xtr(_module._default.ExtractorLemma$T, 
            $LS($LZ), 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
            xs#0));
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0))
           && _module.__default.xtr#canCall(_module._default.ExtractorLemma$T, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
            xs#0)
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            i#0, 
            _module.__default.xtr(_module._default.ExtractorLemma$T, 
              $LS($LZ), 
              _module.__default.nats($LS($LZ), 
                _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
              xs#0));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##n#0_2_0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_0, TInt, $Heap);
        ##xs#0_2_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_1, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_2_1 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_1, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        ##mp#0_2_0 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##mp#0_2_0, Tclass._module.List(TInt), $Heap);
        ##lst#0_2_0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##lst#0_2_0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.xtr#canCall(_module._default.ExtractorLemma$T, 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
          xs#0);
        ##xs#0_2_0 := _module.__default.xtr(_module._default.ExtractorLemma$T, 
          $LS($LZ), 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
          xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          i#0, 
          _module.__default.xtr(_module._default.ExtractorLemma$T, 
            $LS($LZ), 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
            xs#0));
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0))
           && _module.__default.xtr#canCall(_module._default.ExtractorLemma$T, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
            xs#0)
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            i#0, 
            _module.__default.xtr(_module._default.ExtractorLemma$T, 
              $LS($LZ), 
              _module.__default.nats($LS($LZ), 
                _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
              xs#0));
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(150,17)
        // TrCallStmt: Before ProcessCallStmt
        ##xs#0_2_2 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_2, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        // ProcessCallStmt: CheckSubrange
        n##0_2_0 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        call {:id "id155"} Call$$_module.__default.NatsLength(n##0_2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(151,13)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##0_2_0 := i#0;
        ##xs#0_2_3 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_3, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_2_2 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_2, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        // ProcessCallStmt: CheckSubrange
        mp##0_2_0 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        assume true;
        // ProcessCallStmt: CheckSubrange
        lst##0_2_0 := xs#0;
        call {:id "id156"} Call$$_module.__default.NthXtr(_module._default.ExtractorLemma$T, i##0_2_0, mp##0_2_0, lst##0_2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##n#0_2_4 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_4, TInt, $Heap);
        ##xs#0_2_5 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_5, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_2_5 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_5, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        ##xs#0_2_4 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_4, Tclass._module.List(TInt), $Heap);
        assume _module.__default.nth#canCall(TInt, 
          i#0, 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)));
        ##n#0_2_3 := $Unbox(_module.__default.nth(TInt, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))): int;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_3, TInt, $Heap);
        ##xs#0_2_6 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_6, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          $Unbox(_module.__default.nth(TInt, 
              reveal__module._default.nth, 
              i#0, 
              _module.__default.nats($LS($LZ), 
                _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))): int, 
          xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0))
           && _module.__default.nth#canCall(TInt, 
            i#0, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            $Unbox(_module.__default.nth(TInt, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.nats($LS($LZ), 
                  _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))): int, 
            xs#0);
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        assert {:id "id157"} {:subsumption 0} _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.xtr(_module._default.ExtractorLemma$T, 
              $LS($LS($LZ)), 
              _module.__default.nats($LS($LS($LZ)), 
                _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)), 
              xs#0))
           == _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            $Unbox(_module.__default.nth(TInt, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.nats($LS($LS($LZ)), 
                  _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)))): int, 
            xs#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##n#0_1_1 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_1, TInt, $Heap);
        ##xs#0_1_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_1, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_1_2 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_2, Tclass._System.nat(), $Heap);
        assume _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        ##xs#0_1_0 := _module.__default.nats($LS($LZ), 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_0, Tclass._module.List(TInt), $Heap);
        assume _module.__default.nth#canCall(TInt, 
          i#0, 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)));
        ##n#0_1_0 := $Unbox(_module.__default.nth(TInt, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))): int;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_0, TInt, $Heap);
        ##xs#0_1_2 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_2, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          $Unbox(_module.__default.nth(TInt, 
              reveal__module._default.nth, 
              i#0, 
              _module.__default.nats($LS($LZ), 
                _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))): int, 
          xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nats#canCall(_module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0))
           && _module.__default.nth#canCall(TInt, 
            i#0, 
            _module.__default.nats($LS($LZ), 
              _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            $Unbox(_module.__default.nth(TInt, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.nats($LS($LZ), 
                  _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)))): int, 
            xs#0);
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(153,14)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##0_1_0 := i#0;
        ##xs#0_1_3 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_3, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        // ProcessCallStmt: CheckSubrange
        n##0_1_0 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        call {:id "id153"} Call$$_module.__default.NthNats(i##0_1_0, n##0_1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##xs#0_1_4 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_4, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_1_3 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)
           - 1
           - i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_3, TInt, $Heap);
        ##xs#0_1_5 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_5, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)
             - 1
             - i#0, 
          xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)
               - 1
               - i#0, 
            xs#0);
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        assert {:id "id154"} {:subsumption 0} _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            $Unbox(_module.__default.nth(TInt, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.nats($LS($LS($LZ)), 
                  _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)))): int, 
            xs#0)
           == _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)
               - 1
               - i#0, 
            xs#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##xs#0_0_0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_0, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##n#0_0_0 := _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)
           - 1
           - i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_0, TInt, $Heap);
        ##xs#0_0_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_1, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)
             - 1
             - i#0, 
          xs#0);
        assume _module.__default.length#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)
               - 1
               - i#0, 
            xs#0);
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(155,7)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(155,14)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id149"} Call$$_module.__default.reveal__nth();
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(155,30)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        xs##0_0_0 := xs#0;
        call {:id "id150"} Call$$_module.__default.RevLength(_module._default.ExtractorLemma$T, xs##0_0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(155,42)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##0_0_0 := i#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        xs##0_0_1 := xs#0;
        call {:id "id151"} Call$$_module.__default.NthRev(_module._default.ExtractorLemma$T, i##0_0_0, xs##0_0_1);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        ##n#0_0_1 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_1, TInt, $Heap);
        ##xs#0_0_3 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_3, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.rev#canCall(_module._default.ExtractorLemma$T, xs#0);
        ##xs#0_0_2 := _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_2, Tclass._module.List(_module._default.ExtractorLemma$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
          i#0, 
          _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        assume _module.__default.rev#canCall(_module._default.ExtractorLemma$T, xs#0)
           && _module.__default.nth#canCall(_module._default.ExtractorLemma$T, 
            i#0, 
            _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(148,3)
        assert {:id "id152"} {:subsumption 0} _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0)
               - 1
               - i#0, 
            xs#0)
           == _module.__default.nth(_module._default.ExtractorLemma$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LS($LZ)), xs#0));
        assume false;
    }

    assume {:id "id158"} _module.__default.nth(_module._default.ExtractorLemma$T, 
        reveal__module._default.nth, 
        i#0, 
        _module.__default.xtr(_module._default.ExtractorLemma$T, 
          $LS($LZ), 
          _module.__default.nats($LS($LZ), 
            _module.__default.length(_module._default.ExtractorLemma$T, $LS($LZ), xs#0)), 
          xs#0))
       == _module.__default.nth(_module._default.ExtractorLemma$T, 
        reveal__module._default.nth, 
        i#0, 
        _module.__default.rev(_module._default.ExtractorLemma$T, $LS($LZ), xs#0));
}



procedure {:verboseName "NthXtr (well-formedness)"} CheckWellFormed$$_module.__default.NthXtr(_module._default.NthXtr$T: Ty, 
    i#0: int, 
    mp#0: DatatypeType
       where $Is(mp#0, Tclass._module.List(TInt))
         && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(mp#0), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.NthXtr$T))
         && $IsAlloc(lst#0, Tclass._module.List(_module._default.NthXtr$T), $Heap)
         && $IsA#_module.List(lst#0));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NthXtr (call)"} Call$$_module.__default.NthXtr(_module._default.NthXtr$T: Ty, 
    i#0: int, 
    mp#0: DatatypeType
       where $Is(mp#0, Tclass._module.List(TInt))
         && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(mp#0), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.NthXtr$T))
         && $IsAlloc(lst#0, Tclass._module.List(_module._default.NthXtr$T), $Heap)
         && $IsA#_module.List(lst#0));
  // user-defined preconditions
  requires {:id "id161"} LitInt(0) <= i#0;
  requires {:id "id162"} i#0 < _module.__default.length(TInt, $LS($LS($LZ)), mp#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0)
     && _module.__default.nth#canCall(_module._default.NthXtr$T, 
      i#0, 
      _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0))
     && 
    _module.__default.nth#canCall(TInt, i#0, mp#0)
     && _module.__default.nth#canCall(_module._default.NthXtr$T, 
      $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0, mp#0)): int, 
      lst#0);
  ensures {:id "id163"} _module.__default.nth(_module._default.NthXtr$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), mp#0, lst#0))
     == _module.__default.nth(_module._default.NthXtr$T, 
      reveal__module._default.nth, 
      $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0, mp#0)): int, 
      lst#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NthXtr (correctness)"} Impl$$_module.__default.NthXtr(_module._default.NthXtr$T: Ty, 
    i#0: int, 
    mp#0: DatatypeType
       where $Is(mp#0, Tclass._module.List(TInt))
         && $IsAlloc(mp#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(mp#0), 
    lst#0: DatatypeType
       where $Is(lst#0, Tclass._module.List(_module._default.NthXtr$T))
         && $IsAlloc(lst#0, Tclass._module.List(_module._default.NthXtr$T), $Heap)
         && $IsA#_module.List(lst#0))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id164"} LitInt(0) <= i#0;
  requires {:id "id165"} i#0 < _module.__default.length(TInt, $LS($LS($LZ)), mp#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0)
     && _module.__default.nth#canCall(_module._default.NthXtr$T, 
      i#0, 
      _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0))
     && 
    _module.__default.nth#canCall(TInt, i#0, mp#0)
     && _module.__default.nth#canCall(_module._default.NthXtr$T, 
      $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0, mp#0)): int, 
      lst#0);
  ensures {:id "id166"} _module.__default.nth(_module._default.NthXtr$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), mp#0, lst#0))
     == _module.__default.nth(_module._default.NthXtr$T, 
      reveal__module._default.nth, 
      $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0, mp#0)): int, 
      lst#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthXtr (correctness)"} Impl$$_module.__default.NthXtr(_module._default.NthXtr$T: Ty, i#0: int, mp#0: DatatypeType, lst#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var mp##0: DatatypeType;
  var lst##0: DatatypeType;
  var ##n#3: int;
  var ##xs#4: DatatypeType;
  var ##mp#1: DatatypeType;
  var ##lst#1: DatatypeType;
  var ##n#4: int;
  var ##xs#5: DatatypeType;
  var ##mp#2: DatatypeType;
  var ##lst#2: DatatypeType;
  var ##n#1_0_0_0: int;
  var ##xs#1_0_0_0: DatatypeType;
  var ##mp#1_0_0_0: DatatypeType;
  var ##lst#1_0_0_0: DatatypeType;
  var i##1_0_0_0: int;
  var mp##1_0_0_0: DatatypeType;
  var lst##1_0_0_0: DatatypeType;
  var ##n#1_0_0_1: int;
  var ##n#1_0_0_2: int;
  var ##xs#1_0_0_1: DatatypeType;
  var ##xs#1_0_0_2: DatatypeType;
  var ##n#1_0_1_0: int;
  var ##xs#1_0_1_0: DatatypeType;
  var ##mp#1_0_1_0: DatatypeType;
  var ##lst#1_0_1_0: DatatypeType;
  var ##n#1_0_1_1: int;
  var ##xs#1_0_1_1: DatatypeType;
  var ##mp#1_0_1_1: DatatypeType;
  var ##lst#1_0_1_1: DatatypeType;
  var ##n#1_0_0: int;
  var ##xs#1_0_0: DatatypeType;
  var ##mp#1_0_0: DatatypeType;
  var ##lst#1_0_0: DatatypeType;

    // AddMethodImpl: NthXtr, Impl$$_module.__default.NthXtr
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(mp#0);
    assume $IsA#_module.List(lst#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#mp0#0: DatatypeType, $ih#lst0#0: DatatypeType :: 
      { _module.__default.nth(_module._default.NthXtr$T, 
          reveal__module._default.nth, 
          $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0, $ih#mp0#0)): int, 
          $ih#lst0#0) } 
        { _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), $ih#mp0#0, $ih#lst0#0) } 
      $Is($ih#mp0#0, Tclass._module.List(TInt))
           && $Is($ih#lst0#0, Tclass._module.List(_module._default.NthXtr$T))
           && 
          LitInt(0) <= i#0
           && i#0 < _module.__default.length(TInt, $LS($LZ), $ih#mp0#0)
           && ((0 <= i#0 && i#0 < i#0)
             || (i#0 == i#0
               && (DtRank($ih#mp0#0) < DtRank(mp#0)
                 || (DtRank($ih#mp0#0) == DtRank(mp#0) && DtRank($ih#lst0#0) < DtRank(lst#0)))))
         ==> _module.__default.nth(_module._default.NthXtr$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), $ih#mp0#0, $ih#lst0#0))
           == _module.__default.nth(_module._default.NthXtr$T, 
            reveal__module._default.nth, 
            $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0, $ih#mp0#0)): int, 
            $ih#lst0#0));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(166,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(166,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id167"} Call$$_module.__default.reveal__nth();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(167,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    mp##0 := mp#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    lst##0 := lst#0;
    call {:id "id168"} Call$$_module.__default.XtrLength(_module._default.NthXtr$T, mp##0, lst##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(168,3)
    ##n#3 := i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, TInt, $Heap);
    ##mp#1 := mp#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##mp#1, Tclass._module.List(TInt), $Heap);
    ##lst#1 := lst#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lst#1, Tclass._module.List(_module._default.NthXtr$T), $Heap);
    assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0);
    ##xs#4 := _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#4, Tclass._module.List(_module._default.NthXtr$T), $Heap);
    assume _module.__default.nth#canCall(_module._default.NthXtr$T, 
      i#0, 
      _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
    ##n#4 := i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, TInt, $Heap);
    ##mp#2 := mp#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##mp#2, Tclass._module.List(TInt), $Heap);
    ##lst#2 := lst#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lst#2, Tclass._module.List(_module._default.NthXtr$T), $Heap);
    assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0);
    ##xs#5 := _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#5, Tclass._module.List(_module._default.NthXtr$T), $Heap);
    assert {:id "id169"} {:subsumption 0} LitInt(0) <= ##n#4;
    assert {:id "id170"} {:subsumption 0} ##n#4
       < _module.__default.length(_module._default.NthXtr$T, $LS($LS($LZ)), ##xs#5);
    assume _module.__default.nthWorker#canCall(_module._default.NthXtr$T, 
      i#0, 
      _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
    assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0)
       && _module.__default.nth#canCall(_module._default.NthXtr$T, 
        i#0, 
        _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0))
       && 
      _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0)
       && _module.__default.nthWorker#canCall(_module._default.NthXtr$T, 
        i#0, 
        _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
    assert {:id "id171"} {:subsumption 0} _module.__default.nth(_module._default.NthXtr$T, 
        reveal__module._default.nth, 
        i#0, 
        _module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), mp#0, lst#0))
       == _module.__default.nthWorker(_module._default.NthXtr$T, 
        $LS($LS($LZ)), 
        i#0, 
        _module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), mp#0, lst#0));
    assume {:id "id172"} _module.__default.nth(_module._default.NthXtr$T, 
        reveal__module._default.nth, 
        i#0, 
        _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0))
       == _module.__default.nthWorker(_module._default.NthXtr$T, 
        $LS($LZ), 
        i#0, 
        _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(169,3)
    assume true;
    if (i#0 == LitInt(0))
    {
    }
    else
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            ##n#1_0_0 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0, TInt, $Heap);
            ##mp#1_0_0 := mp#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##mp#1_0_0, Tclass._module.List(TInt), $Heap);
            ##lst#1_0_0 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##lst#1_0_0, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0);
            assert {:id "id183"} _module.List.Cons_q(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
            ##xs#1_0_0 := _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthXtr$T, 
              i#0 - 1, 
              _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0)));
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0)
               && _module.__default.nth#canCall(_module._default.NthXtr$T, 
                i#0 - 1, 
                _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            ##n#1_0_1_0 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, TInt, $Heap);
            ##mp#1_0_1_0 := mp#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##mp#1_0_1_0, Tclass._module.List(TInt), $Heap);
            ##lst#1_0_1_0 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##lst#1_0_1_0, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0);
            assume {:id "id180"} _module.List.Cons_q(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
            ##xs#1_0_1_0 := _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_0, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthXtr$T, 
              i#0 - 1, 
              _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0)));
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, mp#0, lst#0)
               && _module.__default.nth#canCall(_module._default.NthXtr$T, 
                i#0 - 1, 
                _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0)));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            ##n#1_0_1_1 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, TInt, $Heap);
            assert {:id "id181"} _module.List.Cons_q(mp#0);
            ##mp#1_0_1_1 := _module.List.tail(mp#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##mp#1_0_1_1, Tclass._module.List(TInt), $Heap);
            ##lst#1_0_1_1 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##lst#1_0_1_1, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, _module.List.tail(mp#0), lst#0);
            ##xs#1_0_1_1 := _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), _module.List.tail(mp#0), lst#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_1, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthXtr$T, 
              i#0 - 1, 
              _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), _module.List.tail(mp#0), lst#0));
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, _module.List.tail(mp#0), lst#0)
               && _module.__default.nth#canCall(_module._default.NthXtr$T, 
                i#0 - 1, 
                _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), _module.List.tail(mp#0), lst#0));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            assert {:id "id182"} {:subsumption 0} _module.__default.nth(_module._default.NthXtr$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), mp#0, lst#0)))
               == _module.__default.nth(_module._default.NthXtr$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), _module.List.tail(mp#0), lst#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            ##n#1_0_0_0 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, TInt, $Heap);
            assume {:id "id173"} _module.List.Cons_q(mp#0);
            ##mp#1_0_0_0 := _module.List.tail(mp#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##mp#1_0_0_0, Tclass._module.List(TInt), $Heap);
            ##lst#1_0_0_0 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##lst#1_0_0_0, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, _module.List.tail(mp#0), lst#0);
            ##xs#1_0_0_0 := _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), _module.List.tail(mp#0), lst#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_0, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthXtr$T, 
              i#0 - 1, 
              _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), _module.List.tail(mp#0), lst#0));
            assume _module.__default.xtr#canCall(_module._default.NthXtr$T, _module.List.tail(mp#0), lst#0)
               && _module.__default.nth#canCall(_module._default.NthXtr$T, 
                i#0 - 1, 
                _module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), _module.List.tail(mp#0), lst#0));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(175,15)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            i##1_0_0_0 := i#0 - 1;
            assert {:id "id174"} _module.List.Cons_q(mp#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            mp##1_0_0_0 := _module.List.tail(mp#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            lst##1_0_0_0 := lst#0;
            assert {:id "id175"} 0 <= i#0 || i##1_0_0_0 == i#0;
            assert {:id "id176"} i##1_0_0_0 < i#0
               || (i##1_0_0_0 == i#0
                 && (DtRank(mp##1_0_0_0) < DtRank(mp#0)
                   || (DtRank(mp##1_0_0_0) == DtRank(mp#0) && DtRank(lst##1_0_0_0) < DtRank(lst#0))));
            call {:id "id177"} Call$$_module.__default.NthXtr(_module._default.NthXtr$T, i##1_0_0_0, mp##1_0_0_0, lst##1_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            ##n#1_0_0_2 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_2, TInt, $Heap);
            assert {:id "id178"} _module.List.Cons_q(mp#0);
            ##xs#1_0_0_1 := _module.List.tail(mp#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_1, Tclass._module.List(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, i#0 - 1, _module.List.tail(mp#0));
            ##n#1_0_0_1 := $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0 - 1, _module.List.tail(mp#0))): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, TInt, $Heap);
            ##xs#1_0_0_2 := lst#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_2, Tclass._module.List(_module._default.NthXtr$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthXtr$T, 
              $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0 - 1, _module.List.tail(mp#0))): int, 
              lst#0);
            assume _module.__default.nth#canCall(TInt, i#0 - 1, _module.List.tail(mp#0))
               && _module.__default.nth#canCall(_module._default.NthXtr$T, 
                $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0 - 1, _module.List.tail(mp#0))): int, 
                lst#0);
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(171,5)
            assert {:id "id179"} {:subsumption 0} _module.__default.nth(_module._default.NthXtr$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.__default.xtr(_module._default.NthXtr$T, $LS($LS($LZ)), _module.List.tail(mp#0), lst#0))
               == _module.__default.nth(_module._default.NthXtr$T, 
                reveal__module._default.nth, 
                $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0 - 1, _module.List.tail(mp#0))): int, 
                lst#0);
            assume false;
        }

        assume {:id "id184"} _module.__default.nth(_module._default.NthXtr$T, 
            reveal__module._default.nth, 
            i#0 - 1, 
            _module.List.tail(_module.__default.xtr(_module._default.NthXtr$T, $LS($LZ), mp#0, lst#0)))
           == _module.__default.nth(_module._default.NthXtr$T, 
            reveal__module._default.nth, 
            $Unbox(_module.__default.nth(TInt, reveal__module._default.nth, i#0 - 1, _module.List.tail(mp#0))): int, 
            lst#0);
    }
}



procedure {:verboseName "NthNats (well-formedness)"} CheckWellFormed$$_module.__default.NthNats(i#0: int, n#0: int where LitInt(0) <= n#0);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NthNats (call)"} Call$$_module.__default.NthNats(i#0: int, n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id187"} LitInt(0) <= i#0;
  requires {:id "id188"} i#0 < n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.nats#canCall(n#0)
     && _module.__default.nth#canCall(TInt, i#0, _module.__default.nats($LS($LZ), n#0));
  ensures {:id "id189"} $Unbox(_module.__default.nth(TInt, 
        reveal__module._default.nth, 
        i#0, 
        _module.__default.nats($LS($LS($LZ)), n#0))): int
     == n#0 - 1 - i#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NthNats (correctness)"} Impl$$_module.__default.NthNats(i#0: int, n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id190"} LitInt(0) <= i#0;
  requires {:id "id191"} i#0 < n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.nats#canCall(n#0)
     && _module.__default.nth#canCall(TInt, i#0, _module.__default.nats($LS($LZ), n#0));
  ensures {:id "id192"} $Unbox(_module.__default.nth(TInt, 
        reveal__module._default.nth, 
        i#0, 
        _module.__default.nats($LS($LS($LZ)), n#0))): int
     == n#0 - 1 - i#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthNats (correctness)"} Impl$$_module.__default.NthNats(i#0: int, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n##0: int;
  var i##0: int;
  var n##1: int;

    // AddMethodImpl: NthNats, Impl$$_module.__default.NthNats
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { _module.__default.nats($LS($LZ), $ih#n0#0) } 
      LitInt(0) <= $ih#n0#0
           && 
          LitInt(0) <= i#0
           && i#0 < $ih#n0#0
           && ((0 <= i#0 && i#0 < i#0) || (i#0 == i#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#0))
         ==> $Unbox(_module.__default.nth(TInt, 
              reveal__module._default.nth, 
              i#0, 
              _module.__default.nats($LS($LZ), $ih#n0#0))): int
           == $ih#n0#0 - 1 - i#0);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(185,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(185,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id193"} Call$$_module.__default.reveal__nth();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(186,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    call {:id "id194"} Call$$_module.__default.NatsLength(n##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(187,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##0 := i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := n#0;
    call {:id "id195"} Call$$_module.__default.NthNatsWorker(i##0, n##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "NthNatsWorker (well-formedness)"} CheckWellFormed$$_module.__default.NthNatsWorker(i#0: int, n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthNatsWorker (well-formedness)"} CheckWellFormed$$_module.__default.NthNatsWorker(i#0: int, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##xs#0: DatatypeType;
  var ##n#0: int;
  var ##n#1: int;
  var ##xs#1: DatatypeType;
  var ##n#2: int;


    // AddMethodImpl: NthNatsWorker, CheckWellFormed$$_module.__default.NthNatsWorker
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= i#0)
    {
    }

    assume {:id "id196"} LitInt(0) <= i#0 && i#0 < n#0;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.nats#canCall(n#0);
    ##xs#0 := _module.__default.nats($LS($LZ), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#0, Tclass._module.List(TInt), $Heap);
    assume _module.__default.length#canCall(TInt, _module.__default.nats($LS($LZ), n#0));
    assume {:id "id197"} _module.__default.length(TInt, $LS($LZ), _module.__default.nats($LS($LZ), n#0))
       == n#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#1 := i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    ##n#2 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.nats#canCall(n#0);
    ##xs#1 := _module.__default.nats($LS($LZ), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#1, Tclass._module.List(TInt), $Heap);
    assert {:id "id198"} {:subsumption 0} LitInt(0) <= ##n#1;
    assert {:id "id199"} {:subsumption 0} ##n#1 < _module.__default.length(TInt, $LS($LS($LZ)), ##xs#1);
    assume LitInt(0) <= ##n#1 && ##n#1 < _module.__default.length(TInt, $LS($LZ), ##xs#1);
    assume _module.__default.nthWorker#canCall(TInt, i#0, _module.__default.nats($LS($LZ), n#0));
    assume {:id "id200"} $Unbox(_module.__default.nthWorker(TInt, $LS($LZ), i#0, _module.__default.nats($LS($LZ), n#0))): int
       == n#0 - 1 - i#0;
}



procedure {:verboseName "NthNatsWorker (call)"} Call$$_module.__default.NthNatsWorker(i#0: int, n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id201"} LitInt(0) <= i#0;
  requires {:id "id202"} i#0 < n#0;
  requires {:id "id203"} _module.__default.length(TInt, $LS($LS($LZ)), _module.__default.nats($LS($LS($LZ)), n#0))
     == n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.nats#canCall(n#0)
     && _module.__default.nthWorker#canCall(TInt, i#0, _module.__default.nats($LS($LZ), n#0));
  ensures {:id "id204"} $Unbox(_module.__default.nthWorker(TInt, $LS($LS($LZ)), i#0, _module.__default.nats($LS($LS($LZ)), n#0))): int
     == n#0 - 1 - i#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NthNatsWorker (correctness)"} Impl$$_module.__default.NthNatsWorker(i#0: int, n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id205"} LitInt(0) <= i#0;
  requires {:id "id206"} i#0 < n#0;
  requires {:id "id207"} _module.__default.length(TInt, $LS($LS($LZ)), _module.__default.nats($LS($LS($LZ)), n#0))
     == n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.nats#canCall(n#0)
     && _module.__default.nthWorker#canCall(TInt, i#0, _module.__default.nats($LS($LZ), n#0));
  ensures {:id "id208"} $Unbox(_module.__default.nthWorker(TInt, $LS($LS($LZ)), i#0, _module.__default.nats($LS($LS($LZ)), n#0))): int
     == n#0 - 1 - i#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthNatsWorker (correctness)"} Impl$$_module.__default.NthNatsWorker(i#0: int, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: NthNatsWorker, Impl$$_module.__default.NthNatsWorker
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#i0#0: int, $ih#n0#0: int :: 
      { $Unbox(_module.__default.nthWorker(TInt, $LS($LZ), $ih#i0#0, _module.__default.nats($LS($LZ), $ih#n0#0))): int } 
      LitInt(0) <= $ih#n0#0
           && 
          LitInt(0) <= $ih#i0#0
           && $ih#i0#0 < $ih#n0#0
           && _module.__default.length(TInt, $LS($LZ), _module.__default.nats($LS($LZ), $ih#n0#0))
             == $ih#n0#0
           && ((0 <= $ih#i0#0 && $ih#i0#0 < i#0)
             || ($ih#i0#0 == i#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#0))
         ==> $Unbox(_module.__default.nthWorker(TInt, $LS($LZ), $ih#i0#0, _module.__default.nats($LS($LZ), $ih#n0#0))): int
           == $ih#n0#0 - 1 - $ih#i0#0);
    $_reverifyPost := false;
}



procedure {:verboseName "NthRev (well-formedness)"} CheckWellFormed$$_module.__default.NthRev(_module._default.NthRev$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthRev$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthRev$T), $Heap)
         && $IsA#_module.List(xs#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthRev (well-formedness)"} CheckWellFormed$$_module.__default.NthRev(_module._default.NthRev$T: Ty, i#0: int, xs#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##xs#0: DatatypeType;
  var ##xs#1: DatatypeType;
  var ##xs#2: DatatypeType;
  var ##xs#3: DatatypeType;
  var ##n#0: int;
  var ##xs#4: DatatypeType;
  var ##xs#5: DatatypeType;
  var ##n#1: int;
  var ##xs#6: DatatypeType;
  var ##xs#7: DatatypeType;


    // AddMethodImpl: NthRev, CheckWellFormed$$_module.__default.NthRev
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= i#0)
    {
        ##xs#0 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
    }

    if (LitInt(0) <= i#0
       && i#0 < _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0))
    {
        ##xs#1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
        ##xs#3 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#3, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
        ##xs#2 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#2, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.length#canCall(_module._default.NthRev$T, 
          _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
    }

    assume {:id "id209"} LitInt(0) <= i#0
       && i#0 < _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
       && _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
         == _module.__default.length(_module._default.NthRev$T, 
          $LS($LZ), 
          _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    ##xs#5 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#5, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
    ##xs#4 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#4, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assert {:id "id210"} {:subsumption 0} LitInt(0) <= ##n#0;
    assert {:id "id211"} {:subsumption 0} ##n#0
       < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#4);
    assume LitInt(0) <= ##n#0
       && ##n#0 < _module.__default.length(_module._default.NthRev$T, $LS($LZ), ##xs#4);
    assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
      i#0, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
    ##xs#6 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#6, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
    ##n#1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    ##xs#7 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#7, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assert {:id "id212"} {:subsumption 0} LitInt(0) <= ##n#1;
    assert {:id "id213"} {:subsumption 0} ##n#1
       < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#7);
    assume LitInt(0) <= ##n#1
       && ##n#1 < _module.__default.length(_module._default.NthRev$T, $LS($LZ), ##xs#7);
    assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
      _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
      xs#0);
    assume {:id "id214"} _module.__default.nthWorker(_module._default.NthRev$T, 
        $LS($LZ), 
        i#0, 
        _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
       == _module.__default.nthWorker(_module._default.NthRev$T, 
        $LS($LZ), 
        _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
        xs#0);
}



procedure {:verboseName "NthRev (call)"} Call$$_module.__default.NthRev(_module._default.NthRev$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthRev$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthRev$T), $Heap)
         && $IsA#_module.List(xs#0));
  // user-defined preconditions
  requires {:id "id215"} LitInt(0) <= i#0;
  requires {:id "id216"} i#0 < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0);
  requires {:id "id217"} _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
     == _module.__default.length(_module._default.NthRev$T, 
      $LS($LS($LZ)), 
      _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
     && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
      i#0, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
     && 
    _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
     && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
      _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
      xs#0);
  ensures {:id "id218"} _module.__default.nthWorker(_module._default.NthRev$T, 
      $LS($LS($LZ)), 
      i#0, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0))
     == _module.__default.nthWorker(_module._default.NthRev$T, 
      $LS($LS($LZ)), 
      _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
         - 1
         - i#0, 
      xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NthRev (correctness)"} Impl$$_module.__default.NthRev(_module._default.NthRev$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthRev$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthRev$T), $Heap)
         && $IsA#_module.List(xs#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id219"} LitInt(0) <= i#0;
  requires {:id "id220"} i#0 < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0);
  requires {:id "id221"} _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
     == _module.__default.length(_module._default.NthRev$T, 
      $LS($LS($LZ)), 
      _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
     && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
      i#0, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
     && 
    _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
     && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
      _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
      xs#0);
  ensures {:id "id222"} _module.__default.nthWorker(_module._default.NthRev$T, 
      $LS($LS($LZ)), 
      i#0, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0))
     == _module.__default.nthWorker(_module._default.NthRev$T, 
      $LS($LS($LZ)), 
      _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
         - 1
         - i#0, 
      xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthRev (correctness)"} Impl$$_module.__default.NthRev(_module._default.NthRev$T: Ty, i#0: int, xs#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##xs#8: DatatypeType;
  var ##xs#9: DatatypeType;
  var ##xs#10: DatatypeType;
  var xs##0: DatatypeType;
  var ##xs#11: DatatypeType;
  var ##xs#12: DatatypeType;
  var ##n#0_0_0_0: int;
  var ##xs#0_0_0_0: DatatypeType;
  var ##xs#0_0_0_1: DatatypeType;
  var ##n#0_0_0_1: int;
  var ##xs#0_0_0_2: DatatypeType;
  var ##xs#0_0_0_3: DatatypeType;
  var ##n#0_0_1_0: int;
  var ##xs#0_0_1_0: DatatypeType;
  var ##xs#0_0_1_1: DatatypeType;
  var ##n#0_0_1_1: int;
  var ##xs#0_0_1_2: DatatypeType;
  var ##xs#0_0_1_3: DatatypeType;
  var ##n#0_0_2_0: int;
  var ##xs#0_0_2_0: DatatypeType;
  var ##xs#0_0_2_1: DatatypeType;
  var i##0_0_2_0: int;
  var xs##0_0_2_0: DatatypeType;
  var ##n#0_0_2_1: int;
  var ##xs#0_0_2_2: DatatypeType;
  var ##xs#0_0_2_3: DatatypeType;
  var ##n#0_0_3_0: int;
  var ##xs#0_0_3_0: DatatypeType;
  var ##xs#0_0_3_1: DatatypeType;
  var ##xs#0_0_3_2: DatatypeType;
  var ##ys#0_0_3_0: DatatypeType;
  var i##0_0_3_0: int;
  var xs##0_0_3_0: DatatypeType;
  var ##xs#0_0_3_3: DatatypeType;
  var ys##0_0_3_0: DatatypeType;
  var ##n#0_0_3_1: int;
  var ##xs#0_0_3_4: DatatypeType;
  var ##xs#0_0_3_5: DatatypeType;
  var ##n#0_0_4_0: int;
  var ##xs#0_0_4_0: DatatypeType;
  var ##xs#0_0_4_1: DatatypeType;
  var ##n#0_0_4_1: int;
  var ##xs#0_0_4_2: DatatypeType;
  var ##xs#0_0_4_3: DatatypeType;
  var ##xs#0_0_4_4: DatatypeType;
  var ##ys#0_0_4_0: DatatypeType;
  var ##n#0_0_5_0: int;
  var ##xs#0_0_5_0: DatatypeType;
  var ##xs#0_0_5_1: DatatypeType;
  var ##n#0_0_5_1: int;
  var ##xs#0_0_5_2: DatatypeType;
  var ##xs#0_0_5_3: DatatypeType;
  var ##n#0_0_0: int;
  var ##xs#0_0_0: DatatypeType;
  var ##xs#0_0_1: DatatypeType;
  var ##xs#1_0: DatatypeType;
  var ##xs#1_1: DatatypeType;
  var ##n#1_0_0_0: int;
  var ##xs#1_0_0_0: DatatypeType;
  var ##xs#1_0_0_1: DatatypeType;
  var ##xs#1_0_0_2: DatatypeType;
  var ##xs#1_0_0_3: DatatypeType;
  var ##n#1_0_0_1: int;
  var ##xs#1_0_0_4: DatatypeType;
  var ##xs#1_0_0_5: DatatypeType;
  var ##n#1_0_1_0: int;
  var ##xs#1_0_1_0: DatatypeType;
  var ##xs#1_0_1_1: DatatypeType;
  var ##xs#1_0_1_2: DatatypeType;
  var ##xs#1_0_1_3: DatatypeType;
  var ##n#1_0_1_1: int;
  var ##xs#1_0_1_4: DatatypeType;
  var ##xs#1_0_1_5: DatatypeType;
  var ##xs#1_0_1_6: DatatypeType;
  var ##xs#1_0_1_7: DatatypeType;
  var ##n#1_0_2_0: int;
  var ##xs#1_0_2_0: DatatypeType;
  var ##xs#1_0_2_1: DatatypeType;
  var ##xs#1_0_2_2: DatatypeType;
  var xs##1_0_2_0: DatatypeType;
  var ##n#1_0_2_1: int;
  var ##xs#1_0_2_3: DatatypeType;
  var ##xs#1_0_2_4: DatatypeType;
  var ##xs#1_0_2_5: DatatypeType;
  var ##xs#1_0_2_6: DatatypeType;
  var ##n#1_0_3_0: int;
  var ##xs#1_0_3_0: DatatypeType;
  var ##n#1_0_3_1: int;
  var ##xs#1_0_3_1: DatatypeType;
  var ##xs#1_0_3_2: DatatypeType;
  var ##xs#1_0_3_3: DatatypeType;
  var ##n#1_0_4_0: int;
  var ##xs#1_0_4_0: DatatypeType;
  var ##n#1_0_4_1: int;
  var ##xs#1_0_4_1: DatatypeType;
  var ##n#1_0_5_0: int;
  var ##xs#1_0_5_0: DatatypeType;
  var ##xs#1_0_5_1: DatatypeType;
  var ##xs#1_0_5_2: DatatypeType;
  var ##n#1_0_5_1: int;
  var ##xs#1_0_5_3: DatatypeType;
  var ##n#1_0_6_0: int;
  var ##xs#1_0_6_0: DatatypeType;
  var ##xs#1_0_6_1: DatatypeType;
  var ##xs#1_0_6_2: DatatypeType;
  var ##ys#1_0_6_0: DatatypeType;
  var i##1_0_6_0: int;
  var xs##1_0_6_0: DatatypeType;
  var ##xs#1_0_6_3: DatatypeType;
  var ys##1_0_6_0: DatatypeType;
  var ##n#1_0_6_1: int;
  var ##xs#1_0_6_4: DatatypeType;
  var ##xs#1_0_6_5: DatatypeType;
  var ##xs#1_0_6_6: DatatypeType;
  var ##n#1_0_7_0: int;
  var ##xs#1_0_7_0: DatatypeType;
  var ##xs#1_0_7_1: DatatypeType;
  var ##n#1_0_7_1: int;
  var ##xs#1_0_7_2: DatatypeType;
  var ##xs#1_0_7_3: DatatypeType;
  var ##xs#1_0_7_4: DatatypeType;
  var ##ys#1_0_7_0: DatatypeType;
  var ##n#1_0_8_0: int;
  var ##xs#1_0_8_0: DatatypeType;
  var ##xs#1_0_8_1: DatatypeType;
  var ##n#1_0_8_1: int;
  var ##xs#1_0_8_2: DatatypeType;
  var ##xs#1_0_8_3: DatatypeType;
  var ##n#1_0_0: int;
  var ##xs#1_0_0: DatatypeType;
  var ##xs#1_0_1: DatatypeType;

    // AddMethodImpl: NthRev, Impl$$_module.__default.NthRev
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#i0#0: int, $ih#xs0#0: DatatypeType :: 
      { _module.__default.nthWorker(_module._default.NthRev$T, 
          $LS($LZ), 
          $ih#i0#0, 
          _module.__default.rev(_module._default.NthRev$T, $LS($LZ), $ih#xs0#0)) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.NthRev$T))
           && 
          LitInt(0) <= $ih#i0#0
           && $ih#i0#0
             < _module.__default.length(_module._default.NthRev$T, $LS($LZ), $ih#xs0#0)
           && _module.__default.length(_module._default.NthRev$T, $LS($LZ), $ih#xs0#0)
             == _module.__default.length(_module._default.NthRev$T, 
              $LS($LZ), 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), $ih#xs0#0))
           && ((0 <= $ih#i0#0 && $ih#i0#0 < i#0)
             || ($ih#i0#0 == i#0 && DtRank($ih#xs0#0) < DtRank(xs#0)))
         ==> _module.__default.nthWorker(_module._default.NthRev$T, 
            $LS($LZ), 
            $ih#i0#0, 
            _module.__default.rev(_module._default.NthRev$T, $LS($LZ), $ih#xs0#0))
           == _module.__default.nthWorker(_module._default.NthRev$T, 
            $LS($LZ), 
            _module.__default.length(_module._default.NthRev$T, $LS($LZ), $ih#xs0#0)
               - 1
               - $ih#i0#0, 
            $ih#xs0#0));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(200,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(200,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id223"} Call$$_module.__default.reveal__nth();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(201,3)
    assume true;
    assert {:id "id224"} _module.List.Cons_q(xs#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(202,3)
    ##xs#9 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#9, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
    ##xs#8 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#8, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assume _module.__default.length#canCall(_module._default.NthRev$T, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
    if (LitInt(1)
       <= _module.__default.length(_module._default.NthRev$T, 
        $LS($LZ), 
        _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0)))
    {
        ##xs#10 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#10, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
    }

    assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
       && _module.__default.length#canCall(_module._default.NthRev$T, 
        _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
       && (LitInt(1)
           <= _module.__default.length(_module._default.NthRev$T, 
            $LS($LZ), 
            _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
         ==> _module.__default.rev#canCall(_module._default.NthRev$T, xs#0));
    assert {:id "id225"} {:subsumption 0} LitInt(1)
       <= _module.__default.length(_module._default.NthRev$T, 
        $LS($LS($LZ)), 
        _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0));
    assert {:id "id226"} {:subsumption 0} _module.List.Cons_q(_module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0));
    assume {:id "id227"} LitInt(1)
         <= _module.__default.length(_module._default.NthRev$T, 
          $LS($LZ), 
          _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
       && _module.List.Cons_q(_module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(203,12)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id228"} _module.List.Cons_q(xs#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    xs##0 := _module.List.tail(xs#0);
    call {:id "id229"} Call$$_module.__default.RevLength(_module._default.NthRev$T, xs##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(204,3)
    assert {:id "id230"} _module.List.Cons_q(xs#0);
    ##xs#12 := _module.List.tail(xs#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#12, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
    ##xs#11 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#11, Tclass._module.List(_module._default.NthRev$T), $Heap);
    assume _module.__default.length#canCall(_module._default.NthRev$T, 
      _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
    assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
       && _module.__default.length#canCall(_module._default.NthRev$T, 
        _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
    if (i#0
       < _module.__default.length(_module._default.NthRev$T, 
        $LS($LZ), 
        _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))))
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0, TInt, $Heap);
            ##xs#0_0_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#0_0_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_5_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_0, TInt, $Heap);
            ##xs#0_0_5_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#0_0_5_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_5_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_1, TInt, $Heap);
            ##xs#0_0_5_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#0_0_5_2 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_5_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id275"} {:subsumption 0} LitInt(0) <= ##n#0_0_5_1;
            assert {:id "id276"} {:subsumption 0} ##n#0_0_5_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_5_2);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id277"} {:subsumption 0} _module.__default.nth(_module._default.NthRev$T, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_4_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_0, TInt, $Heap);
            ##xs#0_0_4_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_4_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#0_0_4_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_4_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id268"} {:subsumption 0} LitInt(0) <= ##n#0_0_4_0;
            assume {:id "id269"} {:subsumption 0} ##n#0_0_4_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_4_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_4_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_1, TInt, $Heap);
            assert {:id "id270"} _module.List.Cons_q(xs#0);
            ##xs#0_0_4_4 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_4_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#0_0_4_3 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_4_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id271"} _module.List.Cons_q(xs#0);
            ##ys#0_0_4_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_4_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            ##xs#0_0_4_2 := _module.__default.append(_module._default.NthRev$T, 
              $LS($LZ), 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_4_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id272"} {:subsumption 0} LitInt(0) <= ##n#0_0_4_1;
            assert {:id "id273"} {:subsumption 0} ##n#0_0_4_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_4_2);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.append(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.append#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id274"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_3_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_0, TInt, $Heap);
            assume {:id "id257"} _module.List.Cons_q(xs#0);
            ##xs#0_0_3_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#0_0_3_1 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id258"} _module.List.Cons_q(xs#0);
            ##ys#0_0_3_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_3_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            ##xs#0_0_3_0 := _module.__default.append(_module._default.NthRev$T, 
              $LS($LZ), 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id259"} {:subsumption 0} LitInt(0) <= ##n#0_0_3_0;
            assume {:id "id260"} {:subsumption 0} ##n#0_0_3_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_3_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.append(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.append#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(210,19)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            i##0_0_3_0 := i#0;
            assert {:id "id261"} _module.List.Cons_q(xs#0);
            ##xs#0_0_3_3 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            // ProcessCallStmt: CheckSubrange
            xs##0_0_3_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            assert {:id "id262"} _module.List.Cons_q(xs#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            ys##0_0_3_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            call {:id "id263"} Call$$_module.__default.NthAppendA(_module._default.NthRev$T, i##0_0_3_0, xs##0_0_3_0, ys##0_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_3_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_1, TInt, $Heap);
            assert {:id "id264"} _module.List.Cons_q(xs#0);
            ##xs#0_0_3_5 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_5, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#0_0_3_4 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id265"} {:subsumption 0} LitInt(0) <= ##n#0_0_3_1;
            assert {:id "id266"} {:subsumption 0} ##n#0_0_3_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_3_4);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id267"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##n#0_0_2_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_0, TInt, $Heap);
            assume {:id "id245"} _module.List.Cons_q(xs#0);
            ##xs#0_0_2_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#0_0_2_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id246"} {:subsumption 0} LitInt(0) <= ##n#0_0_2_0;
            assume {:id "id247"} {:subsumption 0} ##n#0_0_2_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_2_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(212,15)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            i##0_0_2_0 := i#0;
            assert {:id "id248"} _module.List.Cons_q(xs#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##0_0_2_0 := _module.List.tail(xs#0);
            assert {:id "id249"} 0 <= i#0 || i##0_0_2_0 == i#0;
            assert {:id "id250"} i##0_0_2_0 < i#0 || (i##0_0_2_0 == i#0 && DtRank(xs##0_0_2_0) < DtRank(xs#0));
            call {:id "id251"} Call$$_module.__default.NthRev(_module._default.NthRev$T, i##0_0_2_0, xs##0_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id252"} _module.List.Cons_q(xs#0);
            ##xs#0_0_2_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##n#0_0_2_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
               - 1
               - i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_1, TInt, $Heap);
            assert {:id "id253"} _module.List.Cons_q(xs#0);
            ##xs#0_0_2_3 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id254"} {:subsumption 0} LitInt(0) <= ##n#0_0_2_1;
            assert {:id "id255"} {:subsumption 0} ##n#0_0_2_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_2_3);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                 - 1
                 - i#0, 
              _module.List.tail(xs#0));
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                   - 1
                   - i#0, 
                _module.List.tail(xs#0));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id256"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))
                   - 1
                   - i#0, 
                _module.List.tail(xs#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assume {:id "id237"} _module.List.Cons_q(xs#0);
            ##xs#0_0_1_0 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##n#0_0_1_0 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
               - 1
               - i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_0, TInt, $Heap);
            assume {:id "id238"} _module.List.Cons_q(xs#0);
            ##xs#0_0_1_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id239"} {:subsumption 0} LitInt(0) <= ##n#0_0_1_0;
            assume {:id "id240"} {:subsumption 0} ##n#0_0_1_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_1_1);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                 - 1
                 - i#0, 
              _module.List.tail(xs#0));
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                   - 1
                   - i#0, 
                _module.List.tail(xs#0));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id241"} _module.List.Cons_q(xs#0);
            ##xs#0_0_1_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##n#0_0_1_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                 - 1
                 - i#0
               + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_1, TInt, $Heap);
            ##xs#0_0_1_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id242"} {:subsumption 0} LitInt(0) <= ##n#0_0_1_1;
            assert {:id "id243"} {:subsumption 0} ##n#0_0_1_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_1_3);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                   - 1
                   - i#0
                 + 1, 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                     - 1
                     - i#0
                   + 1, 
                xs#0);
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id244"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))
                   - 1
                   - i#0, 
                _module.List.tail(xs#0))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))
                     - 1
                     - i#0
                   + 1, 
                xs#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assume {:id "id231"} _module.List.Cons_q(xs#0);
            ##xs#0_0_0_0 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##n#0_0_0_0 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                 - 1
                 - i#0
               + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_0, TInt, $Heap);
            ##xs#0_0_0_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id232"} {:subsumption 0} LitInt(0) <= ##n#0_0_0_0;
            assume {:id "id233"} {:subsumption 0} ##n#0_0_0_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_0_1);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                   - 1
                   - i#0
                 + 1, 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))
                     - 1
                     - i#0
                   + 1, 
                xs#0);
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            ##xs#0_0_0_2 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            ##n#0_0_0_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_1, TInt, $Heap);
            ##xs#0_0_0_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id234"} {:subsumption 0} LitInt(0) <= ##n#0_0_0_1;
            assert {:id "id235"} {:subsumption 0} ##n#0_0_0_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#0_0_0_3);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
                xs#0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(205,5)
            assert {:id "id236"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))
                     - 1
                     - i#0
                   + 1, 
                xs#0)
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - i#0, 
                xs#0);
            assume false;
        }

        assume {:id "id278"} _module.__default.nth(_module._default.NthRev$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
           == _module.__default.nthWorker(_module._default.NthRev$T, 
            $LS($LZ), 
            _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
            xs#0);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(219,5)
        assert {:id "id279"} _module.List.Cons_q(xs#0);
        ##xs#1_1 := _module.List.tail(xs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
        ##xs#1_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
        assume _module.__default.length#canCall(_module._default.NthRev$T, 
          _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
        assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
           && _module.__default.length#canCall(_module._default.NthRev$T, 
            _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
        assert {:id "id280"} {:subsumption 0} i#0
           == _module.__default.length(_module._default.NthRev$T, 
            $LS($LS($LZ)), 
            _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)));
        assume {:id "id281"} i#0
           == _module.__default.length(_module._default.NthRev$T, 
            $LS($LZ), 
            _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0, TInt, $Heap);
            ##xs#1_0_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#1_0_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_8_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_8_0, TInt, $Heap);
            ##xs#1_0_8_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_8_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#1_0_8_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_8_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_8_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_8_1, TInt, $Heap);
            ##xs#1_0_8_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_8_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#1_0_8_2 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_8_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id337"} {:subsumption 0} LitInt(0) <= ##n#1_0_8_1;
            assert {:id "id338"} {:subsumption 0} ##n#1_0_8_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_8_2);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id339"} {:subsumption 0} _module.__default.nth(_module._default.NthRev$T, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_7_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_7_0, TInt, $Heap);
            ##xs#1_0_7_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_7_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0);
            ##xs#1_0_7_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_7_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id330"} {:subsumption 0} LitInt(0) <= ##n#1_0_7_0;
            assume {:id "id331"} {:subsumption 0} ##n#1_0_7_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_7_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_7_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_7_1, TInt, $Heap);
            assert {:id "id332"} _module.List.Cons_q(xs#0);
            ##xs#1_0_7_4 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_7_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_7_3 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_7_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id333"} _module.List.Cons_q(xs#0);
            ##ys#1_0_7_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_7_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            ##xs#1_0_7_2 := _module.__default.append(_module._default.NthRev$T, 
              $LS($LZ), 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_7_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id334"} {:subsumption 0} LitInt(0) <= ##n#1_0_7_1;
            assert {:id "id335"} {:subsumption 0} ##n#1_0_7_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_7_2);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.append(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.append#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id336"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), xs#0))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_6_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_6_0, TInt, $Heap);
            assume {:id "id318"} _module.List.Cons_q(xs#0);
            ##xs#1_0_6_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_6_1 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id319"} _module.List.Cons_q(xs#0);
            ##ys#1_0_6_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_6_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            ##xs#1_0_6_0 := _module.__default.append(_module._default.NthRev$T, 
              $LS($LZ), 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id320"} {:subsumption 0} LitInt(0) <= ##n#1_0_6_0;
            assume {:id "id321"} {:subsumption 0} ##n#1_0_6_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_6_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0, 
              _module.__default.append(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.append#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(225,19)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            i##1_0_6_0 := i#0;
            assert {:id "id322"} _module.List.Cons_q(xs#0);
            ##xs#1_0_6_3 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            // ProcessCallStmt: CheckSubrange
            xs##1_0_6_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            assert {:id "id323"} _module.List.Cons_q(xs#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            ys##1_0_6_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            call {:id "id324"} Call$$_module.__default.NthAppendB(_module._default.NthRev$T, i##1_0_6_0, xs##1_0_6_0, ys##1_0_6_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id325"} _module.List.Cons_q(xs#0);
            ##xs#1_0_6_5 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_5, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_6_4 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            ##n#1_0_6_1 := i#0
               - _module.__default.length(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_6_1, TInt, $Heap);
            assert {:id "id326"} _module.List.Cons_q(xs#0);
            ##xs#1_0_6_6 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_6, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id327"} {:subsumption 0} LitInt(0) <= ##n#1_0_6_1;
            assert {:id "id328"} {:subsumption 0} ##n#1_0_6_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_6_6);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0
                 - _module.__default.length(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.length#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LZ), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id329"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0, 
                _module.__default.append(_module._default.NthRev$T, 
                  $LS($LS($LZ)), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)), 
                  #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()))))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LS($LZ)), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assume {:id "id310"} _module.List.Cons_q(xs#0);
            ##xs#1_0_5_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_5_0 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            ##n#1_0_5_0 := i#0
               - _module.__default.length(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_5_0, TInt, $Heap);
            assume {:id "id311"} _module.List.Cons_q(xs#0);
            ##xs#1_0_5_2 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id312"} {:subsumption 0} LitInt(0) <= ##n#1_0_5_0;
            assume {:id "id313"} {:subsumption 0} ##n#1_0_5_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_5_2);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              i#0
                 - _module.__default.length(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.length#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                i#0
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LZ), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_5_1 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_5_1, TInt, $Heap);
            assert {:id "id314"} _module.List.Cons_q(xs#0);
            ##xs#1_0_5_3 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id315"} {:subsumption 0} LitInt(0) <= ##n#1_0_5_1;
            assert {:id "id316"} {:subsumption 0} ##n#1_0_5_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_5_3);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              LitInt(0), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              LitInt(0), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id317"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                i#0
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LS($LZ)), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())))
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                LitInt(0), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_4_0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_4_0, TInt, $Heap);
            assume {:id "id304"} _module.List.Cons_q(xs#0);
            ##xs#1_0_4_0 := #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id305"} {:subsumption 0} LitInt(0) <= ##n#1_0_4_0;
            assume {:id "id306"} {:subsumption 0} ##n#1_0_4_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_4_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              LitInt(0), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              LitInt(0), 
              #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_4_1 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_4_1, TInt, $Heap);
            ##xs#1_0_4_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id307"} {:subsumption 0} LitInt(0) <= ##n#1_0_4_1;
            assert {:id "id308"} {:subsumption 0} ##n#1_0_4_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_4_1);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, LitInt(0), xs#0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, LitInt(0), xs#0);
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id309"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                LitInt(0), 
                #_module.List.Cons(_module.List.head(xs#0), Lit(#_module.List.Nil())))
               == _module.__default.nthWorker(_module._default.NthRev$T, $LS($LS($LZ)), LitInt(0), xs#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##n#1_0_3_0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_0, TInt, $Heap);
            ##xs#1_0_3_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id298"} {:subsumption 0} LitInt(0) <= ##n#1_0_3_0;
            assume {:id "id299"} {:subsumption 0} ##n#1_0_3_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_3_0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, LitInt(0), xs#0);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, LitInt(0), xs#0);
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_3_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            assert {:id "id300"} _module.List.Cons_q(xs#0);
            ##xs#1_0_3_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##n#1_0_3_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
               - 1
               - _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_1, TInt, $Heap);
            ##xs#1_0_3_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id301"} {:subsumption 0} LitInt(0) <= ##n#1_0_3_1;
            assert {:id "id302"} {:subsumption 0} ##n#1_0_3_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_3_3);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                 - 1
                 - _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                xs#0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id303"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, $LS($LS($LZ)), LitInt(0), xs#0)
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)), 
                xs#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_2_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            assume {:id "id289"} _module.List.Cons_q(xs#0);
            ##xs#1_0_2_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##n#1_0_2_0 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
               - 1
               - _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_0, TInt, $Heap);
            ##xs#1_0_2_2 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id290"} {:subsumption 0} LitInt(0) <= ##n#1_0_2_0;
            assume {:id "id291"} {:subsumption 0} ##n#1_0_2_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_2_2);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                 - 1
                 - _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.length#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)), 
                xs#0);
            // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(230,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id292"} _module.List.Cons_q(xs#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##1_0_2_0 := _module.List.tail(xs#0);
            call {:id "id293"} Call$$_module.__default.RevLength(_module._default.NthRev$T, xs##1_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_2_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            assert {:id "id294"} _module.List.Cons_q(xs#0);
            ##xs#1_0_2_5 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_5, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_2_4 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            ##n#1_0_2_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
               - 1
               - _module.__default.length(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_1, TInt, $Heap);
            ##xs#1_0_2_6 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_6, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assert {:id "id295"} {:subsumption 0} LitInt(0) <= ##n#1_0_2_1;
            assert {:id "id296"} {:subsumption 0} ##n#1_0_2_1
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_2_6);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                 - 1
                 - _module.__default.length(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && 
              _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.length#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LZ), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
                xs#0);
            // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id297"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0)), 
                xs#0)
               == _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LS($LZ)), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))), 
                xs#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_1_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            assume {:id "id284"} _module.List.Cons_q(xs#0);
            ##xs#1_0_1_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_1_1 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            ##n#1_0_1_0 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
               - 1
               - _module.__default.length(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, TInt, $Heap);
            ##xs#1_0_1_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume {:id "id285"} {:subsumption 0} LitInt(0) <= ##n#1_0_1_0;
            assume {:id "id286"} {:subsumption 0} ##n#1_0_1_0
               < _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), ##xs#1_0_1_3);
            assume _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                 - 1
                 - _module.__default.length(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && 
              _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.length#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)))
               && _module.__default.nthWorker#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LZ), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
                xs#0);
            // ----- Hint7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_1_4 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            assert {:id "id287"} _module.List.Cons_q(xs#0);
            ##xs#1_0_1_6 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_6, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_1_5 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_5, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            ##n#1_0_1_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
               - 1
               - _module.__default.length(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, TInt, $Heap);
            ##xs#1_0_1_7 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_7, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                 - 1
                 - _module.__default.length(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && 
              _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.length#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)))
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LZ), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
                xs#0);
            // ----- assert line7 == line8 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id288"} {:subsumption 0} _module.__default.nthWorker(_module._default.NthRev$T, 
                $LS($LS($LZ)), 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LS($LZ)), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))), 
                xs#0)
               == _module.__default.nth(_module._default.NthRev$T, 
                reveal__module._default.nth, 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LS($LZ)), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))), 
                xs#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_0_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_0, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            assume {:id "id282"} _module.List.Cons_q(xs#0);
            ##xs#1_0_0_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_2, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0));
            ##xs#1_0_0_1 := _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_1, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, 
              _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            ##n#1_0_0_0 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
               - 1
               - _module.__default.length(_module._default.NthRev$T, 
                $LS($LZ), 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, TInt, $Heap);
            ##xs#1_0_0_3 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_3, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                 - 1
                 - _module.__default.length(_module._default.NthRev$T, 
                  $LS($LZ), 
                  _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && 
              _module.__default.rev#canCall(_module._default.NthRev$T, _module.List.tail(xs#0))
               && _module.__default.length#canCall(_module._default.NthRev$T, 
                _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0)))
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LZ), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LZ), _module.List.tail(xs#0))), 
                xs#0);
            // ----- Hint8 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            ##xs#1_0_0_4 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_4, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0);
            ##n#1_0_0_1 := _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, TInt, $Heap);
            ##xs#1_0_0_5 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_5, Tclass._module.List(_module._default.NthRev$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthRev$T, 
              _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
              xs#0);
            assume _module.__default.length#canCall(_module._default.NthRev$T, xs#0)
               && _module.__default.nth#canCall(_module._default.NthRev$T, 
                _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
                xs#0);
            // ----- assert line8 == line9 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(220,5)
            assert {:id "id283"} {:subsumption 0} _module.__default.nth(_module._default.NthRev$T, 
                reveal__module._default.nth, 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - _module.__default.length(_module._default.NthRev$T, 
                    $LS($LS($LZ)), 
                    _module.__default.rev(_module._default.NthRev$T, $LS($LS($LZ)), _module.List.tail(xs#0))), 
                xs#0)
               == _module.__default.nth(_module._default.NthRev$T, 
                reveal__module._default.nth, 
                _module.__default.length(_module._default.NthRev$T, $LS($LS($LZ)), xs#0)
                   - 1
                   - i#0, 
                xs#0);
            assume false;
        }

        assume {:id "id340"} _module.__default.nth(_module._default.NthRev$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.rev(_module._default.NthRev$T, $LS($LZ), xs#0))
           == _module.__default.nth(_module._default.NthRev$T, 
            reveal__module._default.nth, 
            _module.__default.length(_module._default.NthRev$T, $LS($LZ), xs#0) - 1 - i#0, 
            xs#0);
    }
}



procedure {:verboseName "NthAppendA (well-formedness)"} CheckWellFormed$$_module.__default.NthAppendA(_module._default.NthAppendA$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthAppendA$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthAppendA$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.NthAppendA$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.NthAppendA$T), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NthAppendA (call)"} Call$$_module.__default.NthAppendA(_module._default.NthAppendA$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthAppendA$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthAppendA$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.NthAppendA$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.NthAppendA$T), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id343"} LitInt(0) <= i#0;
  requires {:id "id344"} i#0
     < _module.__default.length(_module._default.NthAppendA$T, $LS($LS($LZ)), xs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0)
     && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
      i#0, 
      _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0))
     && _module.__default.nth#canCall(_module._default.NthAppendA$T, i#0, xs#0);
  ensures {:id "id345"} _module.__default.nth(_module._default.NthAppendA$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), xs#0, ys#0))
     == _module.__default.nth(_module._default.NthAppendA$T, reveal__module._default.nth, i#0, xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NthAppendA (correctness)"} Impl$$_module.__default.NthAppendA(_module._default.NthAppendA$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthAppendA$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthAppendA$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.NthAppendA$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.NthAppendA$T), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id346"} LitInt(0) <= i#0;
  requires {:id "id347"} i#0
     < _module.__default.length(_module._default.NthAppendA$T, $LS($LS($LZ)), xs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0)
     && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
      i#0, 
      _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0))
     && _module.__default.nth#canCall(_module._default.NthAppendA$T, i#0, xs#0);
  ensures {:id "id348"} _module.__default.nth(_module._default.NthAppendA$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), xs#0, ys#0))
     == _module.__default.nth(_module._default.NthAppendA$T, reveal__module._default.nth, i#0, xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthAppendA (correctness)"} Impl$$_module.__default.NthAppendA(_module._default.NthAppendA$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##n#0_0_0_0: int;
  var ##xs#0_0_0_0: DatatypeType;
  var ##xs#0_0_0_1: DatatypeType;
  var ##ys#0_0_0_0: DatatypeType;
  var ##n#0_0_1_0: int;
  var ##xs#0_0_1_0: DatatypeType;
  var ##xs#0_0_1_1: DatatypeType;
  var ##ys#0_0_1_0: DatatypeType;
  var ##n#0_0_1_1: int;
  var ##xs#0_0_1_2: DatatypeType;
  var ##xs#0_0_1_3: DatatypeType;
  var ##ys#0_0_1_1: DatatypeType;
  var ##n#0_0_0: int;
  var ##xs#0_0_0: DatatypeType;
  var ##xs#0_0_1: DatatypeType;
  var ##ys#0_0_0: DatatypeType;
  var ##n#1_0_0_0: int;
  var ##xs#1_0_0_0: DatatypeType;
  var ##xs#1_0_0_1: DatatypeType;
  var ##ys#1_0_0_0: DatatypeType;
  var i##1_0_0_0: int;
  var xs##1_0_0_0: DatatypeType;
  var ys##1_0_0_0: DatatypeType;
  var ##n#1_0_0_1: int;
  var ##xs#1_0_0_2: DatatypeType;
  var ##n#1_0_1_0: int;
  var ##xs#1_0_1_0: DatatypeType;
  var ##xs#1_0_1_1: DatatypeType;
  var ##ys#1_0_1_0: DatatypeType;
  var ##n#1_0_1_1: int;
  var ##xs#1_0_1_2: DatatypeType;
  var ##xs#1_0_1_3: DatatypeType;
  var ##ys#1_0_1_1: DatatypeType;
  var ##n#1_0_2_0: int;
  var ##xs#1_0_2_0: DatatypeType;
  var ##xs#1_0_2_1: DatatypeType;
  var ##ys#1_0_2_0: DatatypeType;
  var ##n#1_0_2_1: int;
  var ##xs#1_0_2_2: DatatypeType;
  var ##xs#1_0_2_3: DatatypeType;
  var ##ys#1_0_2_1: DatatypeType;
  var ##n#1_0_0: int;
  var ##xs#1_0_0: DatatypeType;
  var ##xs#1_0_1: DatatypeType;
  var ##ys#1_0_0: DatatypeType;

    // AddMethodImpl: NthAppendA, Impl$$_module.__default.NthAppendA
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    assume $IsA#_module.List(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), $ih#xs0#0, $ih#ys0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.NthAppendA$T))
           && $Is($ih#ys0#0, Tclass._module.List(_module._default.NthAppendA$T))
           && 
          LitInt(0) <= i#0
           && i#0
             < _module.__default.length(_module._default.NthAppendA$T, $LS($LZ), $ih#xs0#0)
           && ((0 <= i#0 && i#0 < i#0)
             || (i#0 == i#0
               && (DtRank($ih#xs0#0) < DtRank(xs#0)
                 || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))))
         ==> _module.__default.nth(_module._default.NthAppendA$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), $ih#xs0#0, $ih#ys0#0))
           == _module.__default.nth(_module._default.NthAppendA$T, reveal__module._default.nth, i#0, $ih#xs0#0));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(242,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(242,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id349"} Call$$_module.__default.reveal__nth();
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(243,3)
    assume true;
    if (i#0 == LitInt(0))
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            ##n#0_0_0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0, TInt, $Heap);
            ##xs#0_0_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0);
            ##xs#0_0_0 := _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              LitInt(0), 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                LitInt(0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            ##n#0_0_1_0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_0, TInt, $Heap);
            ##xs#0_0_1_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#0_0_1_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0);
            ##xs#0_0_1_0 := _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              LitInt(0), 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                LitInt(0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            ##n#0_0_1_1 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_1, TInt, $Heap);
            assert {:id "id354"} _module.List.Cons_q(xs#0);
            assert {:id "id355"} _module.List.Cons_q(xs#0);
            ##xs#0_0_1_3 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_3, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#0_0_1_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0);
            ##xs#0_0_1_2 := #_module.List.Cons(_module.List.head(xs#0), 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_2, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              LitInt(0), 
              #_module.List.Cons(_module.List.head(xs#0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                LitInt(0), 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            assert {:id "id356"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                LitInt(0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), xs#0, ys#0))
               == _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                LitInt(0), 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), _module.List.tail(xs#0), ys#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            ##n#0_0_0_0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_0, TInt, $Heap);
            assume {:id "id350"} _module.List.Cons_q(xs#0);
            assume {:id "id351"} _module.List.Cons_q(xs#0);
            ##xs#0_0_0_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#0_0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0);
            ##xs#0_0_0_0 := #_module.List.Cons(_module.List.head(xs#0), 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              LitInt(0), 
              #_module.List.Cons(_module.List.head(xs#0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                LitInt(0), 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            assert {:id "id352"} _module.List.Cons_q(xs#0);
            assume true;
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(244,5)
            assert {:id "id353"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                LitInt(0), 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), _module.List.tail(xs#0), ys#0)))
               == _module.List.head(xs#0);
            assume false;
        }

        assume {:id "id357"} _module.__default.nth(_module._default.NthAppendA$T, 
            reveal__module._default.nth, 
            LitInt(0), 
            _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0))
           == _module.List.head(xs#0);
    }
    else
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0, TInt, $Heap);
            ##xs#1_0_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#1_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0);
            ##xs#1_0_0 := _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              i#0, 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                i#0, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_2_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_0, TInt, $Heap);
            ##xs#1_0_2_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#1_0_2_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0);
            ##xs#1_0_2_0 := _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              i#0, 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, xs#0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                i#0, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_2_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_1, TInt, $Heap);
            assert {:id "id369"} _module.List.Cons_q(xs#0);
            assert {:id "id370"} _module.List.Cons_q(xs#0);
            ##xs#1_0_2_3 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_3, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#1_0_2_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0);
            ##xs#1_0_2_2 := #_module.List.Cons(_module.List.head(xs#0), 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_2, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              i#0, 
              #_module.List.Cons(_module.List.head(xs#0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                i#0, 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            assert {:id "id371"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), xs#0, ys#0))
               == _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                i#0, 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), _module.List.tail(xs#0), ys#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_1_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, TInt, $Heap);
            assume {:id "id365"} _module.List.Cons_q(xs#0);
            assume {:id "id366"} _module.List.Cons_q(xs#0);
            ##xs#1_0_1_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#1_0_1_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_1_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0);
            ##xs#1_0_1_0 := #_module.List.Cons(_module.List.head(xs#0), 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              i#0, 
              #_module.List.Cons(_module.List.head(xs#0), 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                i#0, 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_1_1 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, TInt, $Heap);
            assert {:id "id367"} _module.List.Cons_q(xs#0);
            ##xs#1_0_1_3 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_3, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#1_0_1_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_1_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0);
            ##xs#1_0_1_2 := _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_2, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              i#0 - 1, 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            assert {:id "id368"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                i#0, 
                #_module.List.Cons(_module.List.head(xs#0), 
                  _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), _module.List.tail(xs#0), ys#0)))
               == _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), _module.List.tail(xs#0), ys#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_0_0 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, TInt, $Heap);
            assume {:id "id358"} _module.List.Cons_q(xs#0);
            ##xs#1_0_0_1 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_1, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            ##ys#1_0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0);
            ##xs#1_0_0_0 := _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_0, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, 
              i#0 - 1, 
              _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendA$T, _module.List.tail(xs#0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendA$T, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), _module.List.tail(xs#0), ys#0));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(254,19)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            i##1_0_0_0 := i#0 - 1;
            assert {:id "id359"} _module.List.Cons_q(xs#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##1_0_0_0 := _module.List.tail(xs#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            ys##1_0_0_0 := ys#0;
            assert {:id "id360"} 0 <= i#0 || i##1_0_0_0 == i#0;
            assert {:id "id361"} i##1_0_0_0 < i#0
               || (i##1_0_0_0 == i#0
                 && (DtRank(xs##1_0_0_0) < DtRank(xs#0)
                   || (DtRank(xs##1_0_0_0) == DtRank(xs#0) && DtRank(ys##1_0_0_0) < DtRank(ys#0))));
            call {:id "id362"} Call$$_module.__default.NthAppendA(_module._default.NthAppendA$T, i##1_0_0_0, xs##1_0_0_0, ys##1_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            ##n#1_0_0_1 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, TInt, $Heap);
            assert {:id "id363"} _module.List.Cons_q(xs#0);
            ##xs#1_0_0_2 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_2, Tclass._module.List(_module._default.NthAppendA$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, i#0 - 1, _module.List.tail(xs#0));
            assume _module.__default.nth#canCall(_module._default.NthAppendA$T, i#0 - 1, _module.List.tail(xs#0));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(250,5)
            assert {:id "id364"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendA$T, $LS($LS($LZ)), _module.List.tail(xs#0), ys#0))
               == _module.__default.nth(_module._default.NthAppendA$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.List.tail(xs#0));
            assume false;
        }

        assume {:id "id372"} _module.__default.nth(_module._default.NthAppendA$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.append(_module._default.NthAppendA$T, $LS($LZ), xs#0, ys#0))
           == _module.__default.nth(_module._default.NthAppendA$T, 
            reveal__module._default.nth, 
            i#0 - 1, 
            _module.List.tail(xs#0));
    }
}



procedure {:verboseName "NthAppendB (well-formedness)"} CheckWellFormed$$_module.__default.NthAppendB(_module._default.NthAppendB$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthAppendB$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthAppendB$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.NthAppendB$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.NthAppendB$T), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NthAppendB (call)"} Call$$_module.__default.NthAppendB(_module._default.NthAppendB$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthAppendB$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthAppendB$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.NthAppendB$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.NthAppendB$T), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id375"} _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0)
     <= i#0;
  requires {:id "id376"} i#0
     < _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0)
       + _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), ys#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0)
     && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
      i#0, 
      _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0))
     && 
    _module.__default.length#canCall(_module._default.NthAppendB$T, xs#0)
     && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
      i#0 - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), xs#0), 
      ys#0);
  ensures {:id "id377"} _module.__default.nth(_module._default.NthAppendB$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0, ys#0))
     == _module.__default.nth(_module._default.NthAppendB$T, 
      reveal__module._default.nth, 
      i#0
         - _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0), 
      ys#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NthAppendB (correctness)"} Impl$$_module.__default.NthAppendB(_module._default.NthAppendB$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.NthAppendB$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.NthAppendB$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.NthAppendB$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.NthAppendB$T), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id378"} _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0)
     <= i#0;
  requires {:id "id379"} i#0
     < _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0)
       + _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), ys#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0)
     && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
      i#0, 
      _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0))
     && 
    _module.__default.length#canCall(_module._default.NthAppendB$T, xs#0)
     && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
      i#0 - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), xs#0), 
      ys#0);
  ensures {:id "id380"} _module.__default.nth(_module._default.NthAppendB$T, 
      reveal__module._default.nth, 
      i#0, 
      _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0, ys#0))
     == _module.__default.nth(_module._default.NthAppendB$T, 
      reveal__module._default.nth, 
      i#0
         - _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0), 
      ys#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NthAppendB (correctness)"} Impl$$_module.__default.NthAppendB(_module._default.NthAppendB$T: Ty, 
    i#0: int, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var xs##0: DatatypeType;
  var ys##0: DatatypeType;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var rest#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: Box;
  var let#0_1#0#0: Box;
  var ##n#0_0_0_0: int;
  var ##xs#0_0_0_0: DatatypeType;
  var ##xs#0_0_0_1: DatatypeType;
  var ##ys#0_0_0_0: DatatypeType;
  var i##0_0_0_0: int;
  var xs##0_0_0_0: DatatypeType;
  var ys##0_0_0_0: DatatypeType;
  var ##n#0_0_0_1: int;
  var ##xs#0_0_0_2: DatatypeType;
  var ##xs#0_0_0_3: DatatypeType;
  var ##n#0_0_1_0: int;
  var ##xs#0_0_1_0: DatatypeType;
  var ##xs#0_0_1_1: DatatypeType;
  var ##ys#0_0_1_0: DatatypeType;
  var ##n#0_0_1_1: int;
  var ##xs#0_0_1_2: DatatypeType;
  var ##xs#0_0_1_3: DatatypeType;
  var ##ys#0_0_1_1: DatatypeType;
  var ##n#0_0_2_0: int;
  var ##xs#0_0_2_0: DatatypeType;
  var ##xs#0_0_2_1: DatatypeType;
  var ##ys#0_0_2_0: DatatypeType;
  var ##n#0_0_2_1: int;
  var ##xs#0_0_2_2: DatatypeType;
  var ##xs#0_0_2_3: DatatypeType;
  var ##ys#0_0_2_1: DatatypeType;
  var ##n#0_0_3_0: int;
  var ##xs#0_0_3_0: DatatypeType;
  var ##xs#0_0_3_1: DatatypeType;
  var ##ys#0_0_3_0: DatatypeType;
  var ##n#0_0_3_1: int;
  var ##xs#0_0_3_2: DatatypeType;
  var ##xs#0_0_3_3: DatatypeType;
  var ##ys#0_0_3_1: DatatypeType;
  var ##n#0_0_0: int;
  var ##xs#0_0_0: DatatypeType;
  var ##xs#0_0_1: DatatypeType;
  var ##ys#0_0_0: DatatypeType;
  var ##n#1_0: int;
  var ##xs#1_0: DatatypeType;
  var ##xs#1_1: DatatypeType;
  var ##ys#1_0: DatatypeType;
  var ##n#1_1: int;
  var ##xs#1_2: DatatypeType;

    // AddMethodImpl: NthAppendB, Impl$$_module.__default.NthAppendB
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    assume $IsA#_module.List(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), $ih#xs0#0, $ih#ys0#0) } 
        { _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), $ih#ys0#0), _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), $ih#xs0#0) } 
      $Is($ih#xs0#0, Tclass._module.List(_module._default.NthAppendB$T))
           && $Is($ih#ys0#0, Tclass._module.List(_module._default.NthAppendB$T))
           && 
          _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), $ih#xs0#0)
             <= i#0
           && i#0
             < _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), $ih#xs0#0)
               + _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), $ih#ys0#0)
           && ((0 <= i#0 && i#0 < i#0)
             || (i#0 == i#0
               && (DtRank($ih#xs0#0) < DtRank(xs#0)
                 || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))))
         ==> _module.__default.nth(_module._default.NthAppendB$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), $ih#xs0#0, $ih#ys0#0))
           == _module.__default.nth(_module._default.NthAppendB$T, 
            reveal__module._default.nth, 
            i#0
               - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), $ih#xs0#0), 
            $ih#ys0#0));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(264,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(264,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id381"} Call$$_module.__default.reveal__nth();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(265,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    xs##0 := xs#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    ys##0 := ys#0;
    call {:id "id382"} Call$$_module.__default.AppendLength(_module._default.NthAppendB$T, xs##0, ys##0);
    // TrCallStmt: After ProcessCallStmt
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(268,7)
        ##n#1_0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1_0, TInt, $Heap);
        ##xs#1_1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
        ##ys#1_0 := ys#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##ys#1_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
        assume _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0);
        ##xs#1_0 := _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
          i#0, 
          _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0));
        ##n#1_1 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1_1, TInt, $Heap);
        ##xs#1_2 := ys#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1_2, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
        assume _module.__default.nth#canCall(_module._default.NthAppendB$T, i#0, ys#0);
        assume _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0)
           && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
            i#0, 
            _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0))
           && _module.__default.nth#canCall(_module._default.NthAppendB$T, i#0, ys#0);
        assert {:id "id395"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendB$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0, ys#0))
           == _module.__default.nth(_module._default.NthAppendB$T, reveal__module._default.nth, i#0, ys#0);
        assume {:id "id396"} _module.__default.nth(_module._default.NthAppendB$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0))
           == _module.__default.nth(_module._default.NthAppendB$T, reveal__module._default.nth, i#0, ys#0);
    }
    else if (xs#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module._default.NthAppendB$T);
        assume $Is(_mcc#1#0_0, Tclass._module.List(_module._default.NthAppendB$T));
        havoc rest#0_0;
        assume $Is(rest#0_0, Tclass._module.List(_module._default.NthAppendB$T))
           && $IsAlloc(rest#0_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
        assume {:id "id383"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(_module._default.NthAppendB$T));
        assume {:id "id384"} rest#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume $IsBox(x#0_0, _module._default.NthAppendB$T)
           && $IsAllocBox(x#0_0, _module._default.NthAppendB$T, $Heap);
        assume {:id "id385"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, _module._default.NthAppendB$T);
        assume {:id "id386"} x#0_0 == let#0_1#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0, TInt, $Heap);
            ##xs#0_0_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0);
            ##xs#0_0_0 := _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0, 
              _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_3_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_0, TInt, $Heap);
            ##xs#0_0_3_1 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_3_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_3_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0);
            ##xs#0_0_3_0 := _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0, 
              _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, xs#0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_3_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_1, TInt, $Heap);
            ##xs#0_0_3_3 := #_module.List.Cons(x#0_0, rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_3, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_3_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_3_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, #_module.List.Cons(x#0_0, rest#0_0), ys#0);
            ##xs#0_0_3_2 := _module.__default.append(_module._default.NthAppendB$T, 
              $LS($LZ), 
              #_module.List.Cons(x#0_0, rest#0_0), 
              ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_2, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0, 
              _module.__default.append(_module._default.NthAppendB$T, 
                $LS($LZ), 
                #_module.List.Cons(x#0_0, rest#0_0), 
                ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, #_module.List.Cons(x#0_0, rest#0_0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, 
                  $LS($LZ), 
                  #_module.List.Cons(x#0_0, rest#0_0), 
                  ys#0));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            assert {:id "id393"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), xs#0, ys#0))
               == _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, 
                  $LS($LS($LZ)), 
                  #_module.List.Cons(x#0_0, rest#0_0), 
                  ys#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_2_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_0, TInt, $Heap);
            ##xs#0_0_2_1 := #_module.List.Cons(x#0_0, rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_2_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_2_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, #_module.List.Cons(x#0_0, rest#0_0), ys#0);
            ##xs#0_0_2_0 := _module.__default.append(_module._default.NthAppendB$T, 
              $LS($LZ), 
              #_module.List.Cons(x#0_0, rest#0_0), 
              ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0, 
              _module.__default.append(_module._default.NthAppendB$T, 
                $LS($LZ), 
                #_module.List.Cons(x#0_0, rest#0_0), 
                ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, #_module.List.Cons(x#0_0, rest#0_0), ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, 
                  $LS($LZ), 
                  #_module.List.Cons(x#0_0, rest#0_0), 
                  ys#0));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_2_1 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_1, TInt, $Heap);
            ##xs#0_0_2_3 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_3, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_2_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_2_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0);
            ##xs#0_0_2_2 := #_module.List.Cons(x#0_0, 
              _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_2, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0, 
              #_module.List.Cons(x#0_0, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0)));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0, 
                #_module.List.Cons(x#0_0, 
                  _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0)));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            assert {:id "id392"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0, 
                _module.__default.append(_module._default.NthAppendB$T, 
                  $LS($LS($LZ)), 
                  #_module.List.Cons(x#0_0, rest#0_0), 
                  ys#0))
               == _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0, 
                #_module.List.Cons(x#0_0, 
                  _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), rest#0_0, ys#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_1_0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_0, TInt, $Heap);
            ##xs#0_0_1_1 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_1_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0);
            ##xs#0_0_1_0 := #_module.List.Cons(x#0_0, 
              _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0, 
              #_module.List.Cons(x#0_0, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0)));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0, 
                #_module.List.Cons(x#0_0, 
                  _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0)));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_1_1 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_1, TInt, $Heap);
            ##xs#0_0_1_3 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_3, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_1_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0);
            ##xs#0_0_1_2 := _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_2, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0 - 1, 
              _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            assert {:id "id391"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0, 
                #_module.List.Cons(x#0_0, 
                  _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), rest#0_0, ys#0)))
               == _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), rest#0_0, ys#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##n#0_0_0_0 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_0, TInt, $Heap);
            ##xs#0_0_0_1 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_1, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            ##ys#0_0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0);
            ##xs#0_0_0_0 := _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_0, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0 - 1, 
              _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0));
            assume _module.__default.append#canCall(_module._default.NthAppendB$T, rest#0_0, ys#0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), rest#0_0, ys#0));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(276,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            i##0_0_0_0 := i#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##0_0_0_0 := rest#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            ys##0_0_0_0 := ys#0;
            assert {:id "id387"} 0 <= i#0 || i##0_0_0_0 == i#0;
            assert {:id "id388"} i##0_0_0_0 < i#0
               || (i##0_0_0_0 == i#0
                 && (DtRank(xs##0_0_0_0) < DtRank(xs#0)
                   || (DtRank(xs##0_0_0_0) == DtRank(xs#0) && DtRank(ys##0_0_0_0) < DtRank(ys#0))));
            call {:id "id389"} Call$$_module.__default.NthAppendB(_module._default.NthAppendB$T, i##0_0_0_0, xs##0_0_0_0, ys##0_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            ##xs#0_0_0_2 := rest#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_2, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.length#canCall(_module._default.NthAppendB$T, rest#0_0);
            ##n#0_0_0_1 := i#0
               - 1
               - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), rest#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_1, TInt, $Heap);
            ##xs#0_0_0_3 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_3, Tclass._module.List(_module._default.NthAppendB$T), $Heap);
            assume _module.__default.nth#canCall(_module._default.NthAppendB$T, 
              i#0
                 - 1
                 - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), rest#0_0), 
              ys#0);
            assume _module.__default.length#canCall(_module._default.NthAppendB$T, rest#0_0)
               && _module.__default.nth#canCall(_module._default.NthAppendB$T, 
                i#0
                   - 1
                   - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), rest#0_0), 
                ys#0);
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ACL2-extractor.dfy(270,7)
            assert {:id "id390"} {:subsumption 0} _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0 - 1, 
                _module.__default.append(_module._default.NthAppendB$T, $LS($LS($LZ)), rest#0_0, ys#0))
               == _module.__default.nth(_module._default.NthAppendB$T, 
                reveal__module._default.nth, 
                i#0
                   - 1
                   - _module.__default.length(_module._default.NthAppendB$T, $LS($LS($LZ)), rest#0_0), 
                ys#0);
            assume false;
        }

        assume {:id "id394"} _module.__default.nth(_module._default.NthAppendB$T, 
            reveal__module._default.nth, 
            i#0, 
            _module.__default.append(_module._default.NthAppendB$T, $LS($LZ), xs#0, ys#0))
           == _module.__default.nth(_module._default.NthAppendB$T, 
            reveal__module._default.nth, 
            i#0
               - 1
               - _module.__default.length(_module._default.NthAppendB$T, $LS($LZ), rest#0_0), 
            ys#0);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "reveal_nth (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__nth();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_nth (call)"} {:verify false} Call$$_module.__default.reveal__nth();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.nth;



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
