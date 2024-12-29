// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy

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

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
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
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.Subst
function _module.__default.Subst($ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Subst
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    { _module.__default.Subst($ly, e#0, v#0, val#0) } 
    _module.__default.Subst#canCall(e#0, v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expr()))
       ==> $Is(_module.__default.Subst($ly, e#0, v#0, val#0), Tclass._module.Expr()));
// definition axiom for _module.__default.Subst (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    { _module.__default.Subst($LS($ly), e#0, v#0, val#0) } 
    _module.__default.Subst#canCall(e#0, v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expr()))
       ==> (!_module.Expr.Const_q(e#0)
           ==> 
          !_module.Expr.Var_q(e#0)
           ==> (var args#1 := _module.Expr._h5(e#0); 
            _module.__default.SubstList#canCall(args#1, v#0, val#0)))
         && _module.__default.Subst($LS($ly), e#0, v#0, val#0)
           == (if _module.Expr.Const_q(e#0)
             then (var c#0 := _module.Expr._h2(e#0); e#0)
             else (if _module.Expr.Var_q(e#0)
               then (var x#0 := _module.Expr._h3(e#0); 
                (if x#0 == v#0 then #_module.Expr.Const(val#0) else e#0))
               else (var args#0 := _module.Expr._h5(e#0); 
                (var op#0 := _module.Expr._h4(e#0); 
                  #_module.Expr.Nary(op#0, _module.__default.SubstList($ly, args#0, v#0, val#0)))))));
// definition axiom for _module.__default.Subst for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    {:weight 3} { _module.__default.Subst($LS($ly), Lit(e#0), LitInt(v#0), LitInt(val#0)) } 
    _module.__default.Subst#canCall(Lit(e#0), LitInt(v#0), LitInt(val#0))
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expr()))
       ==> (!Lit(_module.Expr.Const_q(Lit(e#0)))
           ==> 
          !Lit(_module.Expr.Var_q(Lit(e#0)))
           ==> (var args#3 := Lit(_module.Expr._h5(Lit(e#0))); 
            _module.__default.SubstList#canCall(args#3, LitInt(v#0), LitInt(val#0))))
         && _module.__default.Subst($LS($ly), Lit(e#0), LitInt(v#0), LitInt(val#0))
           == (if _module.Expr.Const_q(Lit(e#0))
             then (var c#2 := LitInt(_module.Expr._h2(Lit(e#0))); Lit(e#0))
             else (if _module.Expr.Var_q(Lit(e#0))
               then (var x#2 := LitInt(_module.Expr._h3(Lit(e#0))); 
                (if x#2 == LitInt(v#0) then #_module.Expr.Const(LitInt(val#0)) else e#0))
               else (var args#2 := Lit(_module.Expr._h5(Lit(e#0))); 
                (var op#2 := LitInt(_module.Expr._h4(Lit(e#0))); 
                  Lit(#_module.Expr.Nary(op#2, 
                      Lit(_module.__default.SubstList($LS($ly), args#2, LitInt(v#0), LitInt(val#0))))))))));
}

function _module.__default.Subst#canCall(e#0: DatatypeType, v#0: int, val#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.Subst($LS($ly), e#0, v#0, val#0) } 
  _module.__default.Subst($LS($ly), e#0, v#0, val#0)
     == _module.__default.Subst($ly, e#0, v#0, val#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.Subst(AsFuelBottom($ly), e#0, v#0, val#0) } 
  _module.__default.Subst($ly, e#0, v#0, val#0)
     == _module.__default.Subst($LZ, e#0, v#0, val#0));

function Tclass._module.Expr() : Ty
uses {
// Tclass._module.Expr Tag
axiom Tag(Tclass._module.Expr()) == Tagclass._module.Expr
   && TagFamily(Tclass._module.Expr()) == tytagFamily$Expr;
}

const unique Tagclass._module.Expr: TyTag;

// Box/unbox axiom for Tclass._module.Expr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Expr()) } 
  $IsBox(bx, Tclass._module.Expr())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Expr()));

function _module.__default.Subst#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.Subst
axiom (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.Subst#requires($ly, e#0, v#0, val#0) } 
  $Is(e#0, Tclass._module.Expr())
     ==> _module.__default.Subst#requires($ly, e#0, v#0, val#0) == true);

procedure {:verboseName "Subst (well-formedness)"} CheckWellformed$$_module.__default.Subst(e#0: DatatypeType where $Is(e#0, Tclass._module.Expr()), v#0: int, val#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.List() : Ty
uses {
// Tclass._module.List Tag
axiom Tag(Tclass._module.List()) == Tagclass._module.List
   && TagFamily(Tclass._module.List()) == tytagFamily$List;
}

const unique Tagclass._module.List: TyTag;

// Box/unbox axiom for Tclass._module.List
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.List()) } 
  $IsBox(bx, Tclass._module.List())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Subst (well-formedness)"} CheckWellformed$$_module.__default.Subst(e#0: DatatypeType, v#0: int, val#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: int;
  var _mcc#3#0: DatatypeType;
  var args#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var op#Z#0: int;
  var let#1#0#0: int;
  var ##l#0: DatatypeType;
  var ##v#0: int;
  var ##val#0: int;
  var _mcc#1#0: int;
  var x#Z#0: int;
  var let#2#0#0: int;
  var _mcc#0#0: int;
  var c#Z#0: int;
  var let#3#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), Tclass._module.Expr());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (e#0 == #_module.Expr.Const(_mcc#0#0))
        {
            havoc c#Z#0;
            assume {:id "id14"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TInt);
            assume {:id "id15"} c#Z#0 == let#3#0#0;
            assume {:id "id16"} _module.__default.Subst($LS($LZ), e#0, v#0, val#0) == e#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), Tclass._module.Expr());
            return;
        }
        else if (e#0 == #_module.Expr.Var(_mcc#1#0))
        {
            havoc x#Z#0;
            assume {:id "id10"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id11"} x#Z#0 == let#2#0#0;
            if (x#Z#0 == v#0)
            {
                assume {:id "id12"} _module.__default.Subst($LS($LZ), e#0, v#0, val#0) == #_module.Expr.Const(val#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), Tclass._module.Expr());
                return;
            }
            else
            {
                assume {:id "id13"} _module.__default.Subst($LS($LZ), e#0, v#0, val#0) == e#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), Tclass._module.Expr());
                return;
            }
        }
        else if (e#0 == #_module.Expr.Nary(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#3#0, Tclass._module.List());
            havoc args#Z#0;
            assume {:id "id2"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id3"} args#Z#0 == let#0#0#0;
            havoc op#Z#0;
            assume {:id "id4"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id5"} op#Z#0 == let#1#0#0;
            ##l#0 := args#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##l#0, Tclass._module.List(), $Heap);
            ##v#0 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#0, TInt, $Heap);
            ##val#0 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#0, TInt, $Heap);
            assert {:id "id6"} 0 <= v#0 || DtRank(##l#0) < DtRank(e#0) || ##v#0 == v#0;
            assert {:id "id7"} 0 <= val#0 || DtRank(##l#0) < DtRank(e#0) || ##v#0 < v#0 || ##val#0 == val#0;
            assert {:id "id8"} DtRank(##l#0) < DtRank(e#0)
               || (DtRank(##l#0) == DtRank(e#0)
                 && (##v#0 < v#0 || (##v#0 == v#0 && ##val#0 < val#0)));
            assume _module.__default.SubstList#canCall(args#Z#0, v#0, val#0);
            assume {:id "id9"} _module.__default.Subst($LS($LZ), e#0, v#0, val#0)
               == #_module.Expr.Nary(op#Z#0, _module.__default.SubstList($LS($LZ), args#Z#0, v#0, val#0));
            assume _module.__default.SubstList#canCall(args#Z#0, v#0, val#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), Tclass._module.Expr());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.SubstList
function _module.__default.SubstList($ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.SubstList
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int :: 
    { _module.__default.SubstList($ly, l#0, v#0, val#0) } 
    _module.__default.SubstList#canCall(l#0, v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(l#0, Tclass._module.List()))
       ==> $Is(_module.__default.SubstList($ly, l#0, v#0, val#0), Tclass._module.List()));
// definition axiom for _module.__default.SubstList (revealed)
axiom {:id "id17"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int :: 
    { _module.__default.SubstList($LS($ly), l#0, v#0, val#0) } 
    _module.__default.SubstList#canCall(l#0, v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(l#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(l#0)
           ==> (var tail#1 := _module.List._h1(l#0); 
            (var e#1 := _module.List._h0(l#0); 
              _module.__default.Subst#canCall(e#1, v#0, val#0)
                 && _module.__default.SubstList#canCall(tail#1, v#0, val#0))))
         && _module.__default.SubstList($LS($ly), l#0, v#0, val#0)
           == (if _module.List.Nil_q(l#0)
             then l#0
             else (var tail#0 := _module.List._h1(l#0); 
              (var e#0 := _module.List._h0(l#0); 
                #_module.List.Cons(_module.__default.Subst($ly, e#0, v#0, val#0), 
                  _module.__default.SubstList($ly, tail#0, v#0, val#0))))));
// definition axiom for _module.__default.SubstList for all literals (revealed)
axiom {:id "id18"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int :: 
    {:weight 3} { _module.__default.SubstList($LS($ly), Lit(l#0), LitInt(v#0), LitInt(val#0)) } 
    _module.__default.SubstList#canCall(Lit(l#0), LitInt(v#0), LitInt(val#0))
         || (1 < $FunctionContextHeight && $Is(l#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(l#0)))
           ==> (var tail#3 := Lit(_module.List._h1(Lit(l#0))); 
            (var e#3 := Lit(_module.List._h0(Lit(l#0))); 
              _module.__default.Subst#canCall(e#3, LitInt(v#0), LitInt(val#0))
                 && _module.__default.SubstList#canCall(tail#3, LitInt(v#0), LitInt(val#0)))))
         && _module.__default.SubstList($LS($ly), Lit(l#0), LitInt(v#0), LitInt(val#0))
           == (if _module.List.Nil_q(Lit(l#0))
             then l#0
             else (var tail#2 := Lit(_module.List._h1(Lit(l#0))); 
              (var e#2 := Lit(_module.List._h0(Lit(l#0))); 
                Lit(#_module.List.Cons(Lit(_module.__default.Subst($LS($ly), e#2, LitInt(v#0), LitInt(val#0))), 
                    Lit(_module.__default.SubstList($LS($ly), tail#2, LitInt(v#0), LitInt(val#0)))))))));
}

function _module.__default.SubstList#canCall(l#0: DatatypeType, v#0: int, val#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.SubstList($LS($ly), l#0, v#0, val#0) } 
  _module.__default.SubstList($LS($ly), l#0, v#0, val#0)
     == _module.__default.SubstList($ly, l#0, v#0, val#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.SubstList(AsFuelBottom($ly), l#0, v#0, val#0) } 
  _module.__default.SubstList($ly, l#0, v#0, val#0)
     == _module.__default.SubstList($LZ, l#0, v#0, val#0));

function _module.__default.SubstList#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.SubstList
axiom (forall $ly: LayerType, l#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.SubstList#requires($ly, l#0, v#0, val#0) } 
  $Is(l#0, Tclass._module.List())
     ==> _module.__default.SubstList#requires($ly, l#0, v#0, val#0) == true);

procedure {:verboseName "SubstList (well-formedness)"} CheckWellformed$$_module.__default.SubstList(l#0: DatatypeType where $Is(l#0, Tclass._module.List()), v#0: int, val#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SubstList (well-formedness)"} CheckWellformed$$_module.__default.SubstList(l#0: DatatypeType, v#0: int, val#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var e#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##e#0: DatatypeType;
  var ##v#0: int;
  var ##val#0: int;
  var ##l#0: DatatypeType;
  var ##v#1: int;
  var ##val#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (l#0 == #_module.List.Nil())
        {
            assume {:id "id30"} _module.__default.SubstList($LS($LZ), l#0, v#0, val#0) == l#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0), Tclass._module.List());
            return;
        }
        else if (l#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Expr());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc tail#Z#0;
            assume {:id "id19"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id20"} tail#Z#0 == let#0#0#0;
            havoc e#Z#0;
            assume {:id "id21"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Expr());
            assume {:id "id22"} e#Z#0 == let#1#0#0;
            ##e#0 := e#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0, Tclass._module.Expr(), $Heap);
            ##v#0 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#0, TInt, $Heap);
            ##val#0 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#0, TInt, $Heap);
            assert {:id "id23"} 0 <= v#0 || DtRank(##e#0) < DtRank(l#0) || ##v#0 == v#0;
            assert {:id "id24"} 0 <= val#0 || DtRank(##e#0) < DtRank(l#0) || ##v#0 < v#0 || ##val#0 == val#0;
            assert {:id "id25"} DtRank(##e#0) < DtRank(l#0)
               || (DtRank(##e#0) == DtRank(l#0)
                 && (##v#0 < v#0 || (##v#0 == v#0 && ##val#0 < val#0)));
            assume _module.__default.Subst#canCall(e#Z#0, v#0, val#0);
            ##l#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##l#0, Tclass._module.List(), $Heap);
            ##v#1 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#1, TInt, $Heap);
            ##val#1 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#1, TInt, $Heap);
            assert {:id "id26"} 0 <= v#0 || DtRank(##l#0) < DtRank(l#0) || ##v#1 == v#0;
            assert {:id "id27"} 0 <= val#0 || DtRank(##l#0) < DtRank(l#0) || ##v#1 < v#0 || ##val#1 == val#0;
            assert {:id "id28"} DtRank(##l#0) < DtRank(l#0)
               || (DtRank(##l#0) == DtRank(l#0)
                 && (##v#1 < v#0 || (##v#1 == v#0 && ##val#1 < val#0)));
            assume _module.__default.SubstList#canCall(tail#Z#0, v#0, val#0);
            assume {:id "id29"} _module.__default.SubstList($LS($LZ), l#0, v#0, val#0)
               == #_module.List.Cons(_module.__default.Subst($LS($LZ), e#Z#0, v#0, val#0), 
                _module.__default.SubstList($LS($LZ), tail#Z#0, v#0, val#0));
            assume _module.__default.Subst#canCall(e#Z#0, v#0, val#0)
               && _module.__default.SubstList#canCall(tail#Z#0, v#0, val#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0), Tclass._module.List());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "Theorem (well-formedness)"} CheckWellFormed$$_module.__default.Theorem(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Expr())
         && $IsAlloc(e#0, Tclass._module.Expr(), $Heap)
         && $IsA#_module.Expr(e#0), 
    v#0: int, 
    val#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem (call)"} Call$$_module.__default.Theorem(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Expr())
         && $IsAlloc(e#0, Tclass._module.Expr(), $Heap)
         && $IsA#_module.Expr(e#0), 
    v#0: int, 
    val#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Expr(_module.__default.Subst($LS($LZ), _module.__default.Subst($LS($LZ), e#0, v#0, val#0), v#0, val#0))
     && $IsA#_module.Expr(_module.__default.Subst($LS($LZ), e#0, v#0, val#0))
     && 
    _module.__default.Subst#canCall(e#0, v#0, val#0)
     && _module.__default.Subst#canCall(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), v#0, val#0)
     && _module.__default.Subst#canCall(e#0, v#0, val#0);
  ensures {:id "id32"} _module.Expr#Equal(_module.__default.Subst($LS($LS($LZ)), 
      _module.__default.Subst($LS($LS($LZ)), e#0, v#0, val#0), 
      v#0, 
      val#0), 
    _module.__default.Subst($LS($LS($LZ)), e#0, v#0, val#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem (correctness)"} Impl$$_module.__default.Theorem(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Expr())
         && $IsAlloc(e#0, Tclass._module.Expr(), $Heap)
         && $IsA#_module.Expr(e#0), 
    v#0: int, 
    val#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Expr(_module.__default.Subst($LS($LZ), _module.__default.Subst($LS($LZ), e#0, v#0, val#0), v#0, val#0))
     && $IsA#_module.Expr(_module.__default.Subst($LS($LZ), e#0, v#0, val#0))
     && 
    _module.__default.Subst#canCall(e#0, v#0, val#0)
     && _module.__default.Subst#canCall(_module.__default.Subst($LS($LZ), e#0, v#0, val#0), v#0, val#0)
     && _module.__default.Subst#canCall(e#0, v#0, val#0);
  ensures {:id "id33"} _module.Expr#Equal(_module.__default.Subst($LS($LS($LZ)), 
      _module.__default.Subst($LS($LS($LZ)), e#0, v#0, val#0), 
      v#0, 
      val#0), 
    _module.__default.Subst($LS($LS($LZ)), e#0, v#0, val#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem (correctness)"} Impl$$_module.__default.Theorem(e#0: DatatypeType, v#0: int, val#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0_0: int;
  var _mcc#3#0_0: DatatypeType;
  var args#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var op#0_0: int;
  var let#0_1#0#0: int;
  var l##0_0: DatatypeType;
  var v##0_0: int;
  var val##0_0: int;
  var _mcc#1#1_0: int;
  var _mcc#0#2_0: int;

    // AddMethodImpl: Theorem, Impl$$_module.__default.Theorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Expr(e#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#e0#0: DatatypeType, $ih#v0#0: int, $ih#val0#0: int :: 
      { _module.__default.Subst($LS($LZ), 
          _module.__default.Subst($LS($LZ), $ih#e0#0, $ih#v0#0, $ih#val0#0), 
          $ih#v0#0, 
          $ih#val0#0) } 
      $Is($ih#e0#0, Tclass._module.Expr())
           && Lit(true)
           && (DtRank($ih#e0#0) < DtRank(e#0)
             || (DtRank($ih#e0#0) == DtRank(e#0)
               && ((0 <= $ih#v0#0 && $ih#v0#0 < v#0)
                 || ($ih#v0#0 == v#0 && 0 <= $ih#val0#0 && $ih#val0#0 < val#0))))
         ==> _module.Expr#Equal(_module.__default.Subst($LS($LZ), 
            _module.__default.Subst($LS($LZ), $ih#e0#0, $ih#v0#0, $ih#val0#0), 
            $ih#v0#0, 
            $ih#val0#0), 
          _module.__default.Subst($LS($LZ), $ih#e0#0, $ih#v0#0, $ih#val0#0)));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#2#0_0, _mcc#3#0_0;
    havoc _mcc#1#1_0;
    havoc _mcc#0#2_0;
    if (e#0 == #_module.Expr.Const(_mcc#0#2_0))
    {
    }
    else if (e#0 == #_module.Expr.Var(_mcc#1#1_0))
    {
    }
    else if (e#0 == #_module.Expr.Nary(_mcc#2#0_0, _mcc#3#0_0))
    {
        assume $Is(_mcc#3#0_0, Tclass._module.List());
        havoc args#0_0;
        assume $Is(args#0_0, Tclass._module.List())
           && $IsAlloc(args#0_0, Tclass._module.List(), $Heap);
        assume {:id "id34"} let#0_0#0#0 == _mcc#3#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List());
        assume {:id "id35"} args#0_0 == let#0_0#0#0;
        havoc op#0_0;
        assume {:id "id36"} let#0_1#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id37"} op#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(33,12)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        l##0_0 := args#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##0_0 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_0 := val#0;
        assert {:id "id38"} 0 <= v#0 || DtRank(l##0_0) < DtRank(e#0) || v##0_0 == v#0;
        assert {:id "id39"} 0 <= val#0 || DtRank(l##0_0) < DtRank(e#0) || v##0_0 < v#0 || val##0_0 == val#0;
        assert {:id "id40"} DtRank(l##0_0) < DtRank(e#0)
           || (DtRank(l##0_0) == DtRank(e#0)
             && (v##0_0 < v#0 || (v##0_0 == v#0 && val##0_0 < val#0)));
        call {:id "id41"} Call$$_module.__default.Lemma(l##0_0, v##0_0, val##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Lemma (well-formedness)"} CheckWellFormed$$_module.__default.Lemma(l#0: DatatypeType
       where $Is(l#0, Tclass._module.List())
         && $IsAlloc(l#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(l#0), 
    v#0: int, 
    val#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma (call)"} Call$$_module.__default.Lemma(l#0: DatatypeType
       where $Is(l#0, Tclass._module.List())
         && $IsAlloc(l#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(l#0), 
    v#0: int, 
    val#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.SubstList($LS($LZ), _module.__default.SubstList($LS($LZ), l#0, v#0, val#0), v#0, val#0))
     && $IsA#_module.List(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0))
     && 
    _module.__default.SubstList#canCall(l#0, v#0, val#0)
     && _module.__default.SubstList#canCall(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0), v#0, val#0)
     && _module.__default.SubstList#canCall(l#0, v#0, val#0);
  ensures {:id "id43"} _module.List#Equal(_module.__default.SubstList($LS($LS($LZ)), 
      _module.__default.SubstList($LS($LS($LZ)), l#0, v#0, val#0), 
      v#0, 
      val#0), 
    _module.__default.SubstList($LS($LS($LZ)), l#0, v#0, val#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma (correctness)"} Impl$$_module.__default.Lemma(l#0: DatatypeType
       where $Is(l#0, Tclass._module.List())
         && $IsAlloc(l#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(l#0), 
    v#0: int, 
    val#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.SubstList($LS($LZ), _module.__default.SubstList($LS($LZ), l#0, v#0, val#0), v#0, val#0))
     && $IsA#_module.List(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0))
     && 
    _module.__default.SubstList#canCall(l#0, v#0, val#0)
     && _module.__default.SubstList#canCall(_module.__default.SubstList($LS($LZ), l#0, v#0, val#0), v#0, val#0)
     && _module.__default.SubstList#canCall(l#0, v#0, val#0);
  ensures {:id "id44"} _module.List#Equal(_module.__default.SubstList($LS($LS($LZ)), 
      _module.__default.SubstList($LS($LS($LZ)), l#0, v#0, val#0), 
      v#0, 
      val#0), 
    _module.__default.SubstList($LS($LS($LZ)), l#0, v#0, val#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma (correctness)"} Impl$$_module.__default.Lemma(l#0: DatatypeType, v#0: int, val#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: DatatypeType;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var e#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var e##0_0: DatatypeType;
  var v##0_0: int;
  var val##0_0: int;
  var l##0_0: DatatypeType;
  var v##0_1: int;
  var val##0_1: int;

    // AddMethodImpl: Lemma, Impl$$_module.__default.Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(l#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#l0#0: DatatypeType, $ih#v0#0: int, $ih#val0#0: int :: 
      { _module.__default.SubstList($LS($LZ), 
          _module.__default.SubstList($LS($LZ), $ih#l0#0, $ih#v0#0, $ih#val0#0), 
          $ih#v0#0, 
          $ih#val0#0) } 
      $Is($ih#l0#0, Tclass._module.List())
           && Lit(true)
           && (DtRank($ih#l0#0) < DtRank(l#0)
             || (DtRank($ih#l0#0) == DtRank(l#0)
               && ((0 <= $ih#v0#0 && $ih#v0#0 < v#0)
                 || ($ih#v0#0 == v#0 && 0 <= $ih#val0#0 && $ih#val0#0 < val#0))))
         ==> _module.List#Equal(_module.__default.SubstList($LS($LZ), 
            _module.__default.SubstList($LS($LZ), $ih#l0#0, $ih#v0#0, $ih#val0#0), 
            $ih#v0#0, 
            $ih#val0#0), 
          _module.__default.SubstList($LS($LZ), $ih#l0#0, $ih#v0#0, $ih#val0#0)));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (l#0 == #_module.List.Nil())
    {
    }
    else if (l#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Expr());
        assume $Is(_mcc#1#0_0, Tclass._module.List());
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.List())
           && $IsAlloc(tail#0_0, Tclass._module.List(), $Heap);
        assume {:id "id45"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List());
        assume {:id "id46"} tail#0_0 == let#0_0#0#0;
        havoc e#0_0;
        assume $Is(e#0_0, Tclass._module.Expr())
           && $IsAlloc(e#0_0, Tclass._module.Expr(), $Heap);
        assume {:id "id47"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Expr());
        assume {:id "id48"} e#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(43,14)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##0_0 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_0 := val#0;
        assert {:id "id49"} 0 <= v#0 || DtRank(e##0_0) < DtRank(l#0) || v##0_0 == v#0;
        assert {:id "id50"} 0 <= val#0 || DtRank(e##0_0) < DtRank(l#0) || v##0_0 < v#0 || val##0_0 == val#0;
        assert {:id "id51"} DtRank(e##0_0) < DtRank(l#0)
           || (DtRank(e##0_0) == DtRank(l#0)
             && (v##0_0 < v#0 || (v##0_0 == v#0 && val##0_0 < val#0)));
        call {:id "id52"} Call$$_module.__default.Theorem(e##0_0, v##0_0, val##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(44,12)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        l##0_0 := tail#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##0_1 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_1 := val#0;
        assert {:id "id53"} 0 <= v#0 || DtRank(l##0_0) < DtRank(l#0) || v##0_1 == v#0;
        assert {:id "id54"} 0 <= val#0 || DtRank(l##0_0) < DtRank(l#0) || v##0_1 < v#0 || val##0_1 == val#0;
        assert {:id "id55"} DtRank(l##0_0) < DtRank(l#0)
           || (DtRank(l##0_0) == DtRank(l#0)
             && (v##0_1 < v#0 || (v##0_1 == v#0 && val##0_1 < val#0)));
        call {:id "id56"} Call$$_module.__default.Lemma(l##0_0, v##0_1, val##0_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.Substitute
function _module.__default.Substitute($ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Substitute
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    { _module.__default.Substitute($ly, e#0, v#0, val#0) } 
    _module.__default.Substitute#canCall(e#0, v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expression()))
       ==> $Is(_module.__default.Substitute($ly, e#0, v#0, val#0), Tclass._module.Expression()));
// definition axiom for _module.__default.Substitute (revealed)
axiom {:id "id57"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    { _module.__default.Substitute($LS($ly), e#0, v#0, val#0) } 
    _module.__default.Substitute#canCall(e#0, v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expression()))
       ==> (!_module.Expression.Const_q(e#0)
           ==> 
          !_module.Expression.Var_q(e#0)
           ==> (var args#1 := _module.Expression._h9(e#0); 
            _module.__default.SubstSeq#canCall(e#0, args#1, v#0, val#0)))
         && _module.__default.Substitute($LS($ly), e#0, v#0, val#0)
           == (if _module.Expression.Const_q(e#0)
             then (var c#0 := _module.Expression._h6(e#0); e#0)
             else (if _module.Expression.Var_q(e#0)
               then (var x#0 := _module.Expression._h7(e#0); 
                (if x#0 == v#0 then #_module.Expression.Const(val#0) else e#0))
               else (var args#0 := _module.Expression._h9(e#0); 
                (var op#0 := _module.Expression._h8(e#0); 
                  #_module.Expression.Nary(op#0, _module.__default.SubstSeq($ly, e#0, args#0, v#0, val#0)))))));
// definition axiom for _module.__default.Substitute for decreasing-related literals (revealed)
axiom {:id "id58"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    {:weight 3} { _module.__default.Substitute($LS($ly), Lit(e#0), v#0, val#0) } 
    _module.__default.Substitute#canCall(Lit(e#0), v#0, val#0)
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expression()))
       ==> (!Lit(_module.Expression.Const_q(Lit(e#0)))
           ==> 
          !Lit(_module.Expression.Var_q(Lit(e#0)))
           ==> (var args#3 := Lit(_module.Expression._h9(Lit(e#0))); 
            _module.__default.SubstSeq#canCall(Lit(e#0), args#3, v#0, val#0)))
         && _module.__default.Substitute($LS($ly), Lit(e#0), v#0, val#0)
           == (if _module.Expression.Const_q(Lit(e#0))
             then (var c#2 := LitInt(_module.Expression._h6(Lit(e#0))); Lit(e#0))
             else (if _module.Expression.Var_q(Lit(e#0))
               then (var x#2 := LitInt(_module.Expression._h7(Lit(e#0))); 
                (if x#2 == v#0 then #_module.Expression.Const(val#0) else e#0))
               else (var args#2 := Lit(_module.Expression._h9(Lit(e#0))); 
                (var op#2 := LitInt(_module.Expression._h8(Lit(e#0))); 
                  #_module.Expression.Nary(op#2, _module.__default.SubstSeq($LS($ly), Lit(e#0), args#2, v#0, val#0)))))));
// definition axiom for _module.__default.Substitute for all literals (revealed)
axiom {:id "id59"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
    {:weight 3} { _module.__default.Substitute($LS($ly), Lit(e#0), LitInt(v#0), LitInt(val#0)) } 
    _module.__default.Substitute#canCall(Lit(e#0), LitInt(v#0), LitInt(val#0))
         || (1 < $FunctionContextHeight && $Is(e#0, Tclass._module.Expression()))
       ==> (!Lit(_module.Expression.Const_q(Lit(e#0)))
           ==> 
          !Lit(_module.Expression.Var_q(Lit(e#0)))
           ==> (var args#5 := Lit(_module.Expression._h9(Lit(e#0))); 
            _module.__default.SubstSeq#canCall(Lit(e#0), args#5, LitInt(v#0), LitInt(val#0))))
         && _module.__default.Substitute($LS($ly), Lit(e#0), LitInt(v#0), LitInt(val#0))
           == (if _module.Expression.Const_q(Lit(e#0))
             then (var c#4 := LitInt(_module.Expression._h6(Lit(e#0))); Lit(e#0))
             else (if _module.Expression.Var_q(Lit(e#0))
               then (var x#4 := LitInt(_module.Expression._h7(Lit(e#0))); 
                (if x#4 == LitInt(v#0) then #_module.Expression.Const(LitInt(val#0)) else e#0))
               else (var args#4 := Lit(_module.Expression._h9(Lit(e#0))); 
                (var op#4 := LitInt(_module.Expression._h8(Lit(e#0))); 
                  Lit(#_module.Expression.Nary(op#4, 
                      Lit(_module.__default.SubstSeq($LS($ly), Lit(e#0), args#4, LitInt(v#0), LitInt(val#0))))))))));
}

function _module.__default.Substitute#canCall(e#0: DatatypeType, v#0: int, val#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.Substitute($LS($ly), e#0, v#0, val#0) } 
  _module.__default.Substitute($LS($ly), e#0, v#0, val#0)
     == _module.__default.Substitute($ly, e#0, v#0, val#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.Substitute(AsFuelBottom($ly), e#0, v#0, val#0) } 
  _module.__default.Substitute($ly, e#0, v#0, val#0)
     == _module.__default.Substitute($LZ, e#0, v#0, val#0));

function Tclass._module.Expression() : Ty
uses {
// Tclass._module.Expression Tag
axiom Tag(Tclass._module.Expression()) == Tagclass._module.Expression
   && TagFamily(Tclass._module.Expression()) == tytagFamily$Expression;
}

const unique Tagclass._module.Expression: TyTag;

// Box/unbox axiom for Tclass._module.Expression
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Expression()) } 
  $IsBox(bx, Tclass._module.Expression())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Expression()));

function _module.__default.Substitute#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.Substitute
axiom (forall $ly: LayerType, e#0: DatatypeType, v#0: int, val#0: int :: 
  { _module.__default.Substitute#requires($ly, e#0, v#0, val#0) } 
  $Is(e#0, Tclass._module.Expression())
     ==> _module.__default.Substitute#requires($ly, e#0, v#0, val#0) == true);

procedure {:verboseName "Substitute (well-formedness)"} CheckWellformed$$_module.__default.Substitute(e#0: DatatypeType where $Is(e#0, Tclass._module.Expression()), 
    v#0: int, 
    val#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Substitute (well-formedness)"} CheckWellformed$$_module.__default.Substitute(e#0: DatatypeType, v#0: int, val#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: int;
  var _mcc#3#0: Seq;
  var args#Z#0: Seq;
  var let#0#0#0: Seq;
  var op#Z#0: int;
  var let#1#0#0: int;
  var ##parent#0: DatatypeType;
  var ##q#0: Seq;
  var ##v#0: int;
  var ##val#0: int;
  var _mcc#1#0: int;
  var x#Z#0: int;
  var let#2#0#0: int;
  var _mcc#0#0: int;
  var c#Z#0: int;
  var let#3#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), 
          Tclass._module.Expression());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (e#0 == #_module.Expression.Const(_mcc#0#0))
        {
            havoc c#Z#0;
            assume {:id "id71"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TInt);
            assume {:id "id72"} c#Z#0 == let#3#0#0;
            assume {:id "id73"} _module.__default.Substitute($LS($LZ), e#0, v#0, val#0) == e#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), 
              Tclass._module.Expression());
            return;
        }
        else if (e#0 == #_module.Expression.Var(_mcc#1#0))
        {
            havoc x#Z#0;
            assume {:id "id67"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id68"} x#Z#0 == let#2#0#0;
            if (x#Z#0 == v#0)
            {
                assume {:id "id69"} _module.__default.Substitute($LS($LZ), e#0, v#0, val#0)
                   == #_module.Expression.Const(val#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), 
                  Tclass._module.Expression());
                return;
            }
            else
            {
                assume {:id "id70"} _module.__default.Substitute($LS($LZ), e#0, v#0, val#0) == e#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), 
                  Tclass._module.Expression());
                return;
            }
        }
        else if (e#0 == #_module.Expression.Nary(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#3#0, TSeq(Tclass._module.Expression()));
            havoc args#Z#0;
            assume {:id "id60"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TSeq(Tclass._module.Expression()));
            assume {:id "id61"} args#Z#0 == let#0#0#0;
            havoc op#Z#0;
            assume {:id "id62"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id63"} op#Z#0 == let#1#0#0;
            ##parent#0 := e#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##parent#0, Tclass._module.Expression(), $Heap);
            ##q#0 := args#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##q#0, TSeq(Tclass._module.Expression()), $Heap);
            ##v#0 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#0, TInt, $Heap);
            ##val#0 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#0, TInt, $Heap);
            assert {:id "id64"} {:subsumption 0} (forall a#0: DatatypeType :: 
              { Seq#Contains(##q#0, $Box(a#0)) } 
              $Is(a#0, Tclass._module.Expression())
                 ==> 
                Seq#Contains(##q#0, $Box(a#0))
                 ==> DtRank(a#0) < DtRank(##parent#0));
            assume (forall a#0: DatatypeType :: 
              { Seq#Contains(##q#0, $Box(a#0)) } 
              $Is(a#0, Tclass._module.Expression())
                 ==> 
                Seq#Contains(##q#0, $Box(a#0))
                 ==> DtRank(a#0) < DtRank(##parent#0));
            assert {:id "id65"} DtRank(##parent#0) <= DtRank(e#0);
            assume _module.__default.SubstSeq#canCall(e#0, args#Z#0, v#0, val#0);
            assume {:id "id66"} _module.__default.Substitute($LS($LZ), e#0, v#0, val#0)
               == #_module.Expression.Nary(op#Z#0, _module.__default.SubstSeq($LS($LZ), e#0, args#Z#0, v#0, val#0));
            assume _module.__default.SubstSeq#canCall(e#0, args#Z#0, v#0, val#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), 
              Tclass._module.Expression());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.SubstSeq
function _module.__default.SubstSeq($ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int) : Seq
uses {
// consequence axiom for _module.__default.SubstSeq
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
    { _module.__default.SubstSeq($ly, parent#0, q#0, v#0, val#0) } 
    _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(parent#0, Tclass._module.Expression())
           && $Is(q#0, TSeq(Tclass._module.Expression()))
           && (forall a#0: DatatypeType :: 
            { Seq#Contains(q#0, $Box(a#0)) } 
            $Is(a#0, Tclass._module.Expression())
               ==> 
              Seq#Contains(q#0, $Box(a#0))
               ==> DtRank(a#0) < DtRank(parent#0)))
       ==> $Is(_module.__default.SubstSeq($ly, parent#0, q#0, v#0, val#0), 
        TSeq(Tclass._module.Expression())));
// definition axiom for _module.__default.SubstSeq (revealed)
axiom {:id "id74"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
    { _module.__default.SubstSeq($LS($ly), parent#0, q#0, v#0, val#0) } 
    _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(parent#0, Tclass._module.Expression())
           && $Is(q#0, TSeq(Tclass._module.Expression()))
           && (forall a#1: DatatypeType :: 
            { Seq#Contains(q#0, $Box(a#1)) } 
            $Is(a#1, Tclass._module.Expression())
               ==> 
              Seq#Contains(q#0, $Box(a#1))
               ==> DtRank(a#1) < DtRank(parent#0)))
       ==> (!Seq#Equal(q#0, Seq#Empty(): Seq)
           ==> _module.__default.SubstSeq#canCall(parent#0, Seq#Take(q#0, Seq#Length(q#0) - 1), v#0, val#0)
             && _module.__default.Substitute#canCall($Unbox(Seq#Index(q#0, Seq#Length(q#0) - 1)): DatatypeType, v#0, val#0))
         && _module.__default.SubstSeq($LS($ly), parent#0, q#0, v#0, val#0)
           == (if Seq#Equal(q#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else Seq#Append(_module.__default.SubstSeq($ly, parent#0, Seq#Take(q#0, Seq#Length(q#0) - 1), v#0, val#0), 
              Seq#Build(Seq#Empty(): Seq, 
                $Box(_module.__default.Substitute($ly, $Unbox(Seq#Index(q#0, Seq#Length(q#0) - 1)): DatatypeType, v#0, val#0))))));
// definition axiom for _module.__default.SubstSeq for decreasing-related literals (revealed)
axiom {:id "id75"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
    {:weight 3} { _module.__default.SubstSeq($LS($ly), Lit(parent#0), Lit(q#0), v#0, val#0) } 
    _module.__default.SubstSeq#canCall(Lit(parent#0), Lit(q#0), v#0, val#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(parent#0, Tclass._module.Expression())
           && $Is(q#0, TSeq(Tclass._module.Expression()))
           && (forall a#2: DatatypeType :: 
            { Seq#Contains(q#0, $Box(a#2)) } 
            $Is(a#2, Tclass._module.Expression())
               ==> 
              Seq#Contains(q#0, $Box(a#2))
               ==> DtRank(a#2) < DtRank(parent#0)))
       ==> (!Seq#Equal(q#0, Seq#Empty(): Seq)
           ==> _module.__default.SubstSeq#canCall(Lit(parent#0), Seq#Take(Lit(q#0), Seq#Length(Lit(q#0)) - 1), v#0, val#0)
             && _module.__default.Substitute#canCall($Unbox(Seq#Index(Lit(q#0), Seq#Length(Lit(q#0)) - 1)): DatatypeType, v#0, val#0))
         && _module.__default.SubstSeq($LS($ly), Lit(parent#0), Lit(q#0), v#0, val#0)
           == (if Seq#Equal(q#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else Seq#Append(_module.__default.SubstSeq($LS($ly), 
                Lit(parent#0), 
                Seq#Take(Lit(q#0), Seq#Length(Lit(q#0)) - 1), 
                v#0, 
                val#0), 
              Seq#Build(Seq#Empty(): Seq, 
                $Box(_module.__default.Substitute($LS($ly), 
                    $Unbox(Seq#Index(Lit(q#0), Seq#Length(Lit(q#0)) - 1)): DatatypeType, 
                    v#0, 
                    val#0))))));
// definition axiom for _module.__default.SubstSeq for all literals (revealed)
axiom {:id "id76"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
    {:weight 3} { _module.__default.SubstSeq($LS($ly), Lit(parent#0), Lit(q#0), LitInt(v#0), LitInt(val#0)) } 
    _module.__default.SubstSeq#canCall(Lit(parent#0), Lit(q#0), LitInt(v#0), LitInt(val#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(parent#0, Tclass._module.Expression())
           && $Is(q#0, TSeq(Tclass._module.Expression()))
           && (forall a#3: DatatypeType :: 
            { Seq#Contains(q#0, $Box(a#3)) } 
            $Is(a#3, Tclass._module.Expression())
               ==> 
              Seq#Contains(q#0, $Box(a#3))
               ==> DtRank(a#3) < DtRank(parent#0)))
       ==> (!Seq#Equal(q#0, Seq#Empty(): Seq)
           ==> _module.__default.SubstSeq#canCall(Lit(parent#0), 
              Seq#Take(Lit(q#0), Seq#Length(Lit(q#0)) - 1), 
              LitInt(v#0), 
              LitInt(val#0))
             && _module.__default.Substitute#canCall($Unbox(Seq#Index(Lit(q#0), Seq#Length(Lit(q#0)) - 1)): DatatypeType, 
              LitInt(v#0), 
              LitInt(val#0)))
         && _module.__default.SubstSeq($LS($ly), Lit(parent#0), Lit(q#0), LitInt(v#0), LitInt(val#0))
           == (if Seq#Equal(q#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else Seq#Append(_module.__default.SubstSeq($LS($ly), 
                Lit(parent#0), 
                Seq#Take(Lit(q#0), Seq#Length(Lit(q#0)) - 1), 
                LitInt(v#0), 
                LitInt(val#0)), 
              Seq#Build(Seq#Empty(): Seq, 
                $Box(_module.__default.Substitute($LS($ly), 
                    $Unbox(Seq#Index(Lit(q#0), Seq#Length(Lit(q#0)) - 1)): DatatypeType, 
                    LitInt(v#0), 
                    LitInt(val#0)))))));
}

function _module.__default.SubstSeq#canCall(parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
  { _module.__default.SubstSeq($LS($ly), parent#0, q#0, v#0, val#0) } 
  _module.__default.SubstSeq($LS($ly), parent#0, q#0, v#0, val#0)
     == _module.__default.SubstSeq($ly, parent#0, q#0, v#0, val#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
  { _module.__default.SubstSeq(AsFuelBottom($ly), parent#0, q#0, v#0, val#0) } 
  _module.__default.SubstSeq($ly, parent#0, q#0, v#0, val#0)
     == _module.__default.SubstSeq($LZ, parent#0, q#0, v#0, val#0));

function _module.__default.SubstSeq#requires(LayerType, DatatypeType, Seq, int, int) : bool;

// #requires axiom for _module.__default.SubstSeq
axiom (forall $ly: LayerType, parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int :: 
  { _module.__default.SubstSeq#requires($ly, parent#0, q#0, v#0, val#0) } 
  $Is(parent#0, Tclass._module.Expression())
       && $Is(q#0, TSeq(Tclass._module.Expression()))
     ==> _module.__default.SubstSeq#requires($ly, parent#0, q#0, v#0, val#0)
       == (forall a#1: DatatypeType :: 
        { Seq#Contains(q#0, $Box(a#1)) } 
        $Is(a#1, Tclass._module.Expression())
           ==> 
          Seq#Contains(q#0, $Box(a#1))
           ==> DtRank(a#1) < DtRank(parent#0)));

procedure {:verboseName "SubstSeq (well-formedness)"} CheckWellformed$$_module.__default.SubstSeq(parent#0: DatatypeType where $Is(parent#0, Tclass._module.Expression()), 
    q#0: Seq where $Is(q#0, TSeq(Tclass._module.Expression())), 
    v#0: int, 
    val#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SubstSeq (well-formedness)"} CheckWellformed$$_module.__default.SubstSeq(parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var a#4: DatatypeType;
  var ##parent#0: DatatypeType;
  var ##q#0: Seq;
  var ##v#0: int;
  var ##val#0: int;
  var ##e#0: DatatypeType;
  var ##v#1: int;
  var ##val#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Begin Comprehension WF check
    havoc a#4;
    if ($Is(a#4, Tclass._module.Expression())
       && $IsAlloc(a#4, Tclass._module.Expression(), $Heap))
    {
        if (Seq#Contains(q#0, $Box(a#4)))
        {
        }
    }

    // End Comprehension WF check
    assume {:id "id77"} (forall a#0: DatatypeType :: 
      { Seq#Contains(q#0, $Box(a#0)) } 
      $Is(a#0, Tclass._module.Expression())
         ==> 
        Seq#Contains(q#0, $Box(a#0))
         ==> DtRank(a#0) < DtRank(parent#0));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), 
          TSeq(Tclass._module.Expression()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Seq#Equal(q#0, Seq#Empty(): Seq))
        {
            assume {:id "id78"} _module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0)
               == Lit(Seq#Empty(): Seq);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), 
              TSeq(Tclass._module.Expression()));
            return;
        }
        else
        {
            ##parent#0 := parent#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##parent#0, Tclass._module.Expression(), $Heap);
            assert {:id "id79"} 0 <= Seq#Length(q#0) - 1 && Seq#Length(q#0) - 1 <= Seq#Length(q#0);
            ##q#0 := Seq#Take(q#0, Seq#Length(q#0) - 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##q#0, TSeq(Tclass._module.Expression()), $Heap);
            ##v#0 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#0, TInt, $Heap);
            ##val#0 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#0, TInt, $Heap);
            assert {:id "id80"} {:subsumption 0} (forall a#5: DatatypeType :: 
              { Seq#Contains(##q#0, $Box(a#5)) } 
              $Is(a#5, Tclass._module.Expression())
                 ==> 
                Seq#Contains(##q#0, $Box(a#5))
                 ==> DtRank(a#5) < DtRank(##parent#0));
            assume (forall a#5: DatatypeType :: 
              { Seq#Contains(##q#0, $Box(a#5)) } 
              $Is(a#5, Tclass._module.Expression())
                 ==> 
                Seq#Contains(##q#0, $Box(a#5))
                 ==> DtRank(a#5) < DtRank(##parent#0));
            assert {:id "id81"} DtRank(##parent#0) < DtRank(parent#0)
               || (DtRank(##parent#0) == DtRank(parent#0) && Seq#Rank(##q#0) < Seq#Rank(q#0));
            assume _module.__default.SubstSeq#canCall(parent#0, Seq#Take(q#0, Seq#Length(q#0) - 1), v#0, val#0);
            assert {:id "id82"} 0 <= Seq#Length(q#0) - 1 && Seq#Length(q#0) - 1 < Seq#Length(q#0);
            ##e#0 := $Unbox(Seq#Index(q#0, Seq#Length(q#0) - 1)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0, Tclass._module.Expression(), $Heap);
            ##v#1 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#1, TInt, $Heap);
            ##val#1 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#1, TInt, $Heap);
            assert {:id "id83"} DtRank(##e#0) < DtRank(parent#0);
            assume _module.__default.Substitute#canCall($Unbox(Seq#Index(q#0, Seq#Length(q#0) - 1)): DatatypeType, v#0, val#0);
            assume {:id "id84"} _module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0)
               == Seq#Append(_module.__default.SubstSeq($LS($LZ), parent#0, Seq#Take(q#0, Seq#Length(q#0) - 1), v#0, val#0), 
                Seq#Build(Seq#Empty(): Seq, 
                  $Box(_module.__default.Substitute($LS($LZ), $Unbox(Seq#Index(q#0, Seq#Length(q#0) - 1)): DatatypeType, v#0, val#0))));
            assume _module.__default.SubstSeq#canCall(parent#0, Seq#Take(q#0, Seq#Length(q#0) - 1), v#0, val#0)
               && _module.__default.Substitute#canCall($Unbox(Seq#Index(q#0, Seq#Length(q#0) - 1)): DatatypeType, v#0, val#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), 
              TSeq(Tclass._module.Expression()));
            return;
        }

        assume false;
    }
}



procedure {:verboseName "TheoremSeq (well-formedness)"} CheckWellFormed$$_module.__default.TheoremSeq(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Expression())
         && $IsAlloc(e#0, Tclass._module.Expression(), $Heap)
         && $IsA#_module.Expression(e#0), 
    v#0: int, 
    val#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TheoremSeq (call)"} Call$$_module.__default.TheoremSeq(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Expression())
         && $IsAlloc(e#0, Tclass._module.Expression(), $Heap)
         && $IsA#_module.Expression(e#0), 
    v#0: int, 
    val#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Expression(_module.__default.Substitute($LS($LZ), _module.__default.Substitute($LS($LZ), e#0, v#0, val#0), v#0, val#0))
     && $IsA#_module.Expression(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0))
     && 
    _module.__default.Substitute#canCall(e#0, v#0, val#0)
     && _module.__default.Substitute#canCall(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), v#0, val#0)
     && _module.__default.Substitute#canCall(e#0, v#0, val#0);
  ensures {:id "id86"} _module.Expression#Equal(_module.__default.Substitute($LS($LS($LZ)), 
      _module.__default.Substitute($LS($LS($LZ)), e#0, v#0, val#0), 
      v#0, 
      val#0), 
    _module.__default.Substitute($LS($LS($LZ)), e#0, v#0, val#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TheoremSeq (correctness)"} Impl$$_module.__default.TheoremSeq(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Expression())
         && $IsAlloc(e#0, Tclass._module.Expression(), $Heap)
         && $IsA#_module.Expression(e#0), 
    v#0: int, 
    val#0: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Expression(_module.__default.Substitute($LS($LZ), _module.__default.Substitute($LS($LZ), e#0, v#0, val#0), v#0, val#0))
     && $IsA#_module.Expression(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0))
     && 
    _module.__default.Substitute#canCall(e#0, v#0, val#0)
     && _module.__default.Substitute#canCall(_module.__default.Substitute($LS($LZ), e#0, v#0, val#0), v#0, val#0)
     && _module.__default.Substitute#canCall(e#0, v#0, val#0);
  ensures {:id "id87"} _module.Expression#Equal(_module.__default.Substitute($LS($LS($LZ)), 
      _module.__default.Substitute($LS($LS($LZ)), e#0, v#0, val#0), 
      v#0, 
      val#0), 
    _module.__default.Substitute($LS($LS($LZ)), e#0, v#0, val#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TheoremSeq (correctness)"} Impl$$_module.__default.TheoremSeq(e#0: DatatypeType, v#0: int, val#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0_0: int;
  var _mcc#3#0_0: Seq;
  var args#0_0: Seq;
  var let#0_0#0#0: Seq;
  var op#0_0: int;
  var let#0_1#0#0: int;
  var seArgs#0_0: Seq
     where $Is(seArgs#0_0, TSeq(Tclass._module.Expression()))
       && $IsAlloc(seArgs#0_0, TSeq(Tclass._module.Expression()), $Heap);
  var ##parent#0_0: DatatypeType;
  var ##q#0_0: Seq;
  var ##v#0_0: int;
  var ##val#0_0: int;
  var parent##0_0: DatatypeType;
  var q##0_0: Seq;
  var v##0_0: int;
  var val##0_0: int;
  var se#0_0: DatatypeType
     where $Is(se#0_0, Tclass._module.Expression())
       && $IsAlloc(se#0_0, Tclass._module.Expression(), $Heap);
  var ##e#0_0: DatatypeType;
  var ##v#0_1: int;
  var ##val#0_1: int;
  var seArgs2#0_0: Seq
     where $Is(seArgs2#0_0, TSeq(Tclass._module.Expression()))
       && $IsAlloc(seArgs2#0_0, TSeq(Tclass._module.Expression()), $Heap);
  var ##parent#0_1: DatatypeType;
  var ##q#0_1: Seq;
  var ##v#0_2: int;
  var ##val#0_2: int;
  var parent##0_1: DatatypeType;
  var q##0_1: Seq;
  var v##0_1: int;
  var val##0_1: int;
  var N#0_0: int;
  var j#0_0: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var k#0_0: int;
  var $decr$loop#0_00: int;
  var e##0_0_0: DatatypeType;
  var v##0_0_0: int;
  var val##0_0_0: int;
  var _mcc#1#1_0: int;
  var _mcc#0#2_0: int;

    // AddMethodImpl: TheoremSeq, Impl$$_module.__default.TheoremSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Expression(e#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#e0#0: DatatypeType, $ih#v0#0: int, $ih#val0#0: int :: 
      { _module.__default.Substitute($LS($LZ), 
          _module.__default.Substitute($LS($LZ), $ih#e0#0, $ih#v0#0, $ih#val0#0), 
          $ih#v0#0, 
          $ih#val0#0) } 
      $Is($ih#e0#0, Tclass._module.Expression())
           && Lit(true)
           && (DtRank($ih#e0#0) < DtRank(e#0)
             || (DtRank($ih#e0#0) == DtRank(e#0)
               && ((0 <= $ih#v0#0 && $ih#v0#0 < v#0)
                 || ($ih#v0#0 == v#0 && 0 <= $ih#val0#0 && $ih#val0#0 < val#0))))
         ==> _module.Expression#Equal(_module.__default.Substitute($LS($LZ), 
            _module.__default.Substitute($LS($LZ), $ih#e0#0, $ih#v0#0, $ih#val0#0), 
            $ih#v0#0, 
            $ih#val0#0), 
          _module.__default.Substitute($LS($LZ), $ih#e0#0, $ih#v0#0, $ih#val0#0)));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#2#0_0, _mcc#3#0_0;
    havoc _mcc#1#1_0;
    havoc _mcc#0#2_0;
    if (e#0 == #_module.Expression.Const(_mcc#0#2_0))
    {
    }
    else if (e#0 == #_module.Expression.Var(_mcc#1#1_0))
    {
    }
    else if (e#0 == #_module.Expression.Nary(_mcc#2#0_0, _mcc#3#0_0))
    {
        assume $Is(_mcc#3#0_0, TSeq(Tclass._module.Expression()));
        havoc args#0_0;
        assume $Is(args#0_0, TSeq(Tclass._module.Expression()))
           && $IsAlloc(args#0_0, TSeq(Tclass._module.Expression()), $Heap);
        assume {:id "id88"} let#0_0#0#0 == _mcc#3#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, TSeq(Tclass._module.Expression()));
        assume {:id "id89"} args#0_0 == let#0_0#0#0;
        havoc op#0_0;
        assume {:id "id90"} let#0_1#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id91"} op#0_0 == let#0_1#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(80,24)
        assume true;
        ##parent#0_0 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##parent#0_0, Tclass._module.Expression(), $Heap);
        ##q#0_0 := args#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##q#0_0, TSeq(Tclass._module.Expression()), $Heap);
        ##v#0_0 := v#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##v#0_0, TInt, $Heap);
        ##val#0_0 := val#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##val#0_0, TInt, $Heap);
        assert {:id "id92"} {:subsumption 0} (forall a#0_0: DatatypeType :: 
          { Seq#Contains(##q#0_0, $Box(a#0_0)) } 
          $Is(a#0_0, Tclass._module.Expression())
             ==> 
            Seq#Contains(##q#0_0, $Box(a#0_0))
             ==> DtRank(a#0_0) < DtRank(##parent#0_0));
        assume (forall a#0_0: DatatypeType :: 
          { Seq#Contains(##q#0_0, $Box(a#0_0)) } 
          $Is(a#0_0, Tclass._module.Expression())
             ==> 
            Seq#Contains(##q#0_0, $Box(a#0_0))
             ==> DtRank(a#0_0) < DtRank(##parent#0_0));
        assume _module.__default.SubstSeq#canCall(e#0, args#0_0, v#0, val#0);
        assume _module.__default.SubstSeq#canCall(e#0, args#0_0, v#0, val#0);
        seArgs#0_0 := _module.__default.SubstSeq($LS($LZ), e#0, args#0_0, v#0, val#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(81,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        parent##0_0 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        q##0_0 := args#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##0_0 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_0 := val#0;
        call {:id "id94"} Call$$_module.__default.LemmaSeq(parent##0_0, q##0_0, v##0_0, val##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(83,20)
        assume true;
        ##e#0_0 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0_0, Tclass._module.Expression(), $Heap);
        ##v#0_1 := v#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##v#0_1, TInt, $Heap);
        ##val#0_1 := val#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##val#0_1, TInt, $Heap);
        assume _module.__default.Substitute#canCall(e#0, v#0, val#0);
        assume _module.__default.Substitute#canCall(e#0, v#0, val#0);
        se#0_0 := _module.__default.Substitute($LS($LZ), e#0, v#0, val#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(84,25)
        assume true;
        ##parent#0_1 := se#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##parent#0_1, Tclass._module.Expression(), $Heap);
        ##q#0_1 := seArgs#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##q#0_1, TSeq(Tclass._module.Expression()), $Heap);
        ##v#0_2 := v#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##v#0_2, TInt, $Heap);
        ##val#0_2 := val#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##val#0_2, TInt, $Heap);
        assert {:id "id96"} {:subsumption 0} (forall a#0_1: DatatypeType :: 
          { Seq#Contains(##q#0_1, $Box(a#0_1)) } 
          $Is(a#0_1, Tclass._module.Expression())
             ==> 
            Seq#Contains(##q#0_1, $Box(a#0_1))
             ==> DtRank(a#0_1) < DtRank(##parent#0_1));
        assume (forall a#0_1: DatatypeType :: 
          { Seq#Contains(##q#0_1, $Box(a#0_1)) } 
          $Is(a#0_1, Tclass._module.Expression())
             ==> 
            Seq#Contains(##q#0_1, $Box(a#0_1))
             ==> DtRank(a#0_1) < DtRank(##parent#0_1));
        assume _module.__default.SubstSeq#canCall(se#0_0, seArgs#0_0, v#0, val#0);
        assume _module.__default.SubstSeq#canCall(se#0_0, seArgs#0_0, v#0, val#0);
        seArgs2#0_0 := _module.__default.SubstSeq($LS($LZ), se#0_0, seArgs#0_0, v#0, val#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(85,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        parent##0_1 := se#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        q##0_1 := seArgs#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##0_1 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_1 := val#0;
        call {:id "id98"} Call$$_module.__default.LemmaSeq(parent##0_1, q##0_1, v##0_1, val##0_1);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(87,13)
        assume true;
        assume true;
        N#0_0 := Seq#Length(args#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(88,13)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(89,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := N#0_0 - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id102"} $w$loop#0_0 ==> j#0_0 <= N#0_0;
          free invariant $w$loop#0_0
             ==> (forall k#0_1: int :: 
              { $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType } 
                { $Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType } 
              LitInt(0) <= k#0_1
                 ==> 
                k#0_1 < j#0_0
                 ==> $IsA#_module.Expression($Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType)
                   && $IsA#_module.Expression($Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType));
          invariant {:id "id106"} $w$loop#0_0
             ==> (forall k#0_1: int :: 
              { $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType } 
                { $Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType } 
              LitInt(0) <= k#0_1 && k#0_1 < j#0_0
                 ==> _module.Expression#Equal($Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType, 
                  $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType));
          free invariant $PreLoopHeap$loop#0_0 == $Heap;
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant N#0_0 - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume {:id "id101"} j#0_0 <= N#0_0;
                // Begin Comprehension WF check
                havoc k#0_0;
                if (true)
                {
                    if (LitInt(0) <= k#0_0)
                    {
                    }

                    if (LitInt(0) <= k#0_0 && k#0_0 < j#0_0)
                    {
                        assert {:id "id103"} {:subsumption 0} 0 <= k#0_0 && k#0_0 < Seq#Length(seArgs2#0_0);
                        assert {:id "id104"} {:subsumption 0} 0 <= k#0_0 && k#0_0 < Seq#Length(seArgs#0_0);
                    }
                }

                // End Comprehension WF check
                assume (forall k#0_1: int :: 
                  { $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType } 
                    { $Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType } 
                  LitInt(0) <= k#0_1
                     ==> 
                    k#0_1 < j#0_0
                     ==> $IsA#_module.Expression($Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType)
                       && $IsA#_module.Expression($Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType));
                assume {:id "id105"} (forall k#0_1: int :: 
                  { $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType } 
                    { $Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType } 
                  LitInt(0) <= k#0_1 && k#0_1 < j#0_0
                     ==> _module.Expression#Equal($Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType, 
                      $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType));
                assume true;
                assume false;
            }

            assume true;
            if (N#0_0 <= j#0_0)
            {
                break;
            }

            $decr$loop#0_00 := N#0_0 - j#0_0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(93,19)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id107"} 0 <= j#0_0 && j#0_0 < Seq#Length(args#0_0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##0_0_0 := $Unbox(Seq#Index(args#0_0, j#0_0)): DatatypeType;
            assume true;
            // ProcessCallStmt: CheckSubrange
            v##0_0_0 := v#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            val##0_0_0 := val#0;
            assert {:id "id108"} 0 <= v#0 || DtRank(e##0_0_0) < DtRank(e#0) || v##0_0_0 == v#0;
            assert {:id "id109"} 0 <= val#0
               || DtRank(e##0_0_0) < DtRank(e#0)
               || v##0_0_0 < v#0
               || val##0_0_0 == val#0;
            assert {:id "id110"} DtRank(e##0_0_0) < DtRank(e#0)
               || (DtRank(e##0_0_0) == DtRank(e#0)
                 && (v##0_0_0 < v#0 || (v##0_0_0 == v#0 && val##0_0_0 < val#0)));
            call {:id "id111"} Call$$_module.__default.TheoremSeq(e##0_0_0, v##0_0_0, val##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(94,11)
            assume true;
            assume true;
            j#0_0 := j#0_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(89,7)
            assert {:id "id113"} 0 <= $decr$loop#0_00 || N#0_0 - j#0_0 == $decr$loop#0_00;
            assert {:id "id114"} N#0_0 - j#0_0 < $decr$loop#0_00;
            assume j#0_0 <= N#0_0
               ==> (forall k#0_1: int :: 
                { $Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType } 
                  { $Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType } 
                LitInt(0) <= k#0_1
                   ==> 
                  k#0_1 < j#0_0
                   ==> $IsA#_module.Expression($Unbox(Seq#Index(seArgs2#0_0, k#0_1)): DatatypeType)
                     && $IsA#_module.Expression($Unbox(Seq#Index(seArgs#0_0, k#0_1)): DatatypeType));
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(96,7)
        assume true;
        assert {:id "id115"} Seq#Equal(seArgs#0_0, seArgs2#0_0);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "LemmaSeq (well-formedness)"} CheckWellFormed$$_module.__default.LemmaSeq(parent#0: DatatypeType
       where $Is(parent#0, Tclass._module.Expression())
         && $IsAlloc(parent#0, Tclass._module.Expression(), $Heap)
         && $IsA#_module.Expression(parent#0), 
    q#0: Seq
       where $Is(q#0, TSeq(Tclass._module.Expression()))
         && $IsAlloc(q#0, TSeq(Tclass._module.Expression()), $Heap), 
    v#0: int, 
    val#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LemmaSeq (well-formedness)"} CheckWellFormed$$_module.__default.LemmaSeq(parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType;
  var ##parent#0: DatatypeType;
  var ##q#0: Seq;
  var ##v#0: int;
  var ##val#0: int;
  var k#0: int;
  var ##parent#1: DatatypeType;
  var ##q#1: Seq;
  var ##v#1: int;
  var ##val#1: int;
  var ##e#0: DatatypeType;
  var ##v#2: int;
  var ##val#2: int;


    // AddMethodImpl: LemmaSeq, CheckWellFormed$$_module.__default.LemmaSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Begin Comprehension WF check
    havoc a#0;
    if ($Is(a#0, Tclass._module.Expression())
       && $IsAlloc(a#0, Tclass._module.Expression(), $Heap))
    {
        if (Seq#Contains(q#0, $Box(a#0)))
        {
        }
    }

    // End Comprehension WF check
    assume {:id "id116"} (forall a#1: DatatypeType :: 
      { Seq#Contains(q#0, $Box(a#1)) } 
      $Is(a#1, Tclass._module.Expression())
         ==> 
        Seq#Contains(q#0, $Box(a#1))
         ==> DtRank(a#1) < DtRank(parent#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##parent#0 := parent#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##parent#0, Tclass._module.Expression(), $Heap);
    ##q#0 := q#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##q#0, TSeq(Tclass._module.Expression()), $Heap);
    ##v#0 := v#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##v#0, TInt, $Heap);
    ##val#0 := val#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##val#0, TInt, $Heap);
    assert {:id "id117"} {:subsumption 0} (forall a#2: DatatypeType :: 
      { Seq#Contains(##q#0, $Box(a#2)) } 
      $Is(a#2, Tclass._module.Expression())
         ==> 
        Seq#Contains(##q#0, $Box(a#2))
         ==> DtRank(a#2) < DtRank(##parent#0));
    assume (forall a#2: DatatypeType :: 
      { Seq#Contains(##q#0, $Box(a#2)) } 
      $Is(a#2, Tclass._module.Expression())
         ==> 
        Seq#Contains(##q#0, $Box(a#2))
         ==> DtRank(a#2) < DtRank(##parent#0));
    assume _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0);
    assume {:id "id118"} Seq#Length(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0))
       == Seq#Length(q#0);
    // Begin Comprehension WF check
    havoc k#0;
    if (true)
    {
        if (LitInt(0) <= k#0)
        {
        }

        if (LitInt(0) <= k#0 && k#0 < Seq#Length(q#0))
        {
            ##parent#1 := parent#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##parent#1, Tclass._module.Expression(), $Heap);
            ##q#1 := q#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##q#1, TSeq(Tclass._module.Expression()), $Heap);
            ##v#1 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#1, TInt, $Heap);
            ##val#1 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#1, TInt, $Heap);
            assert {:id "id119"} {:subsumption 0} (forall a#3: DatatypeType :: 
              { Seq#Contains(##q#1, $Box(a#3)) } 
              $Is(a#3, Tclass._module.Expression())
                 ==> 
                Seq#Contains(##q#1, $Box(a#3))
                 ==> DtRank(a#3) < DtRank(##parent#1));
            assume (forall a#3: DatatypeType :: 
              { Seq#Contains(##q#1, $Box(a#3)) } 
              $Is(a#3, Tclass._module.Expression())
                 ==> 
                Seq#Contains(##q#1, $Box(a#3))
                 ==> DtRank(a#3) < DtRank(##parent#1));
            assume _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0);
            assert {:id "id120"} 0 <= k#0
               && k#0
                 < Seq#Length(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0));
            assert {:id "id121"} 0 <= k#0 && k#0 < Seq#Length(q#0);
            ##e#0 := $Unbox(Seq#Index(q#0, k#0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0, Tclass._module.Expression(), $Heap);
            ##v#2 := v#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##v#2, TInt, $Heap);
            ##val#2 := val#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#2, TInt, $Heap);
            assume _module.__default.Substitute#canCall($Unbox(Seq#Index(q#0, k#0)): DatatypeType, v#0, val#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id122"} (forall k#1: int :: 
      { $Unbox(Seq#Index(q#0, k#1)): DatatypeType } 
        { $Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType } 
      LitInt(0) <= k#1 && k#1 < Seq#Length(q#0)
         ==> _module.Expression#Equal($Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType, 
          _module.__default.Substitute($LS($LZ), $Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0)));
}



procedure {:verboseName "LemmaSeq (call)"} Call$$_module.__default.LemmaSeq(parent#0: DatatypeType
       where $Is(parent#0, Tclass._module.Expression())
         && $IsAlloc(parent#0, Tclass._module.Expression(), $Heap)
         && $IsA#_module.Expression(parent#0), 
    q#0: Seq
       where $Is(q#0, TSeq(Tclass._module.Expression()))
         && $IsAlloc(q#0, TSeq(Tclass._module.Expression()), $Heap), 
    v#0: int, 
    val#0: int);
  // user-defined preconditions
  requires {:id "id123"} (forall a#1: DatatypeType :: 
    { Seq#Contains(q#0, $Box(a#1)) } 
    $Is(a#1, Tclass._module.Expression())
       ==> 
      Seq#Contains(q#0, $Box(a#1))
       ==> DtRank(a#1) < DtRank(parent#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0);
  ensures {:id "id124"} Seq#Length(_module.__default.SubstSeq($LS($LS($LZ)), parent#0, q#0, v#0, val#0))
     == Seq#Length(q#0);
  free ensures (forall k#1: int :: 
    { $Unbox(Seq#Index(q#0, k#1)): DatatypeType } 
      { $Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType } 
    LitInt(0) <= k#1
       ==> 
      k#1 < Seq#Length(q#0)
       ==> $IsA#_module.Expression($Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType)
         && $IsA#_module.Expression(_module.__default.Substitute($LS($LZ), $Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0))
         && 
        _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0)
         && _module.__default.Substitute#canCall($Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0));
  free ensures {:id "id125"} (forall k#1: int :: 
    { $Unbox(Seq#Index(q#0, k#1)): DatatypeType } 
      { $Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType } 
    LitInt(0) <= k#1 && k#1 < Seq#Length(q#0)
       ==> _module.Expression#Equal($Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType, 
        _module.__default.Substitute($LS($LZ), $Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "LemmaSeq (correctness)"} Impl$$_module.__default.LemmaSeq(parent#0: DatatypeType
       where $Is(parent#0, Tclass._module.Expression())
         && $IsAlloc(parent#0, Tclass._module.Expression(), $Heap)
         && $IsA#_module.Expression(parent#0), 
    q#0: Seq
       where $Is(q#0, TSeq(Tclass._module.Expression()))
         && $IsAlloc(q#0, TSeq(Tclass._module.Expression()), $Heap), 
    v#0: int, 
    val#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id126"} (forall a#1: DatatypeType :: 
    { Seq#Contains(q#0, $Box(a#1)) } 
    $Is(a#1, Tclass._module.Expression())
       ==> 
      Seq#Contains(q#0, $Box(a#1))
       ==> DtRank(a#1) < DtRank(parent#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0);
  ensures {:id "id127"} Seq#Length(_module.__default.SubstSeq($LS($LS($LZ)), parent#0, q#0, v#0, val#0))
     == Seq#Length(q#0);
  free ensures (forall k#1: int :: 
    { $Unbox(Seq#Index(q#0, k#1)): DatatypeType } 
      { $Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType } 
    LitInt(0) <= k#1
       ==> 
      k#1 < Seq#Length(q#0)
       ==> $IsA#_module.Expression($Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), parent#0, q#0, v#0, val#0), k#1)): DatatypeType)
         && $IsA#_module.Expression(_module.__default.Substitute($LS($LZ), $Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0))
         && 
        _module.__default.SubstSeq#canCall(parent#0, q#0, v#0, val#0)
         && _module.__default.Substitute#canCall($Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0));
  ensures {:id "id128"} (forall k#1: int :: 
    { $Unbox(Seq#Index(q#0, k#1)): DatatypeType } 
      { $Unbox(Seq#Index(_module.__default.SubstSeq($LS($LS($LZ)), parent#0, q#0, v#0, val#0), k#1)): DatatypeType } 
    LitInt(0) <= k#1 && k#1 < Seq#Length(q#0)
       ==> _module.Expression#Equal($Unbox(Seq#Index(_module.__default.SubstSeq($LS($LS($LZ)), parent#0, q#0, v#0, val#0), k#1)): DatatypeType, 
        _module.__default.Substitute($LS($LS($LZ)), $Unbox(Seq#Index(q#0, k#1)): DatatypeType, v#0, val#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LemmaSeq (correctness)"} Impl$$_module.__default.LemmaSeq(parent#0: DatatypeType, q#0: Seq, v#0: int, val#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var parent##1_0: DatatypeType;
  var q##1_0: Seq;
  var v##1_0: int;
  var val##1_0: int;

    // AddMethodImpl: LemmaSeq, Impl$$_module.__default.LemmaSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Expression(parent#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#parent0#0: DatatypeType, $ih#q0#0: Seq, $ih#v0#0: int, $ih#val0#0: int :: 
      { _module.__default.SubstSeq($LS($LZ), $ih#parent0#0, $ih#q0#0, $ih#v0#0, $ih#val0#0) } 
      $Is($ih#parent0#0, Tclass._module.Expression())
           && $Is($ih#q0#0, TSeq(Tclass._module.Expression()))
           && (forall a#4: DatatypeType :: 
            { Seq#Contains($ih#q0#0, $Box(a#4)) } 
            $Is(a#4, Tclass._module.Expression())
               ==> 
              Seq#Contains($ih#q0#0, $Box(a#4))
               ==> DtRank(a#4) < DtRank($ih#parent0#0))
           && (DtRank($ih#parent0#0) < DtRank(parent#0)
             || (DtRank($ih#parent0#0) == DtRank(parent#0)
               && (Seq#Rank($ih#q0#0) < Seq#Rank(q#0)
                 || (Seq#Rank($ih#q0#0) == Seq#Rank(q#0)
                   && ((0 <= $ih#v0#0 && $ih#v0#0 < v#0)
                     || ($ih#v0#0 == v#0 && 0 <= $ih#val0#0 && $ih#val0#0 < val#0))))))
         ==> Seq#Length(_module.__default.SubstSeq($LS($LZ), $ih#parent0#0, $ih#q0#0, $ih#v0#0, $ih#val0#0))
             == Seq#Length($ih#q0#0)
           && (forall k#2: int :: 
            { $Unbox(Seq#Index($ih#q0#0, k#2)): DatatypeType } 
              { $Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), $ih#parent0#0, $ih#q0#0, $ih#v0#0, $ih#val0#0), 
                  k#2)): DatatypeType } 
            LitInt(0) <= k#2 && k#2 < Seq#Length($ih#q0#0)
               ==> _module.Expression#Equal($Unbox(Seq#Index(_module.__default.SubstSeq($LS($LZ), $ih#parent0#0, $ih#q0#0, $ih#v0#0, $ih#val0#0), 
                    k#2)): DatatypeType, 
                _module.__default.Substitute($LS($LZ), $Unbox(Seq#Index($ih#q0#0, k#2)): DatatypeType, $ih#v0#0, $ih#val0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(106,3)
    assume true;
    if (Seq#Equal(q#0, Seq#Empty(): Seq))
    {
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Substitution.dfy(108,13)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        parent##1_0 := parent#0;
        assert {:id "id129"} 0 <= Seq#Length(q#0) - 1 && Seq#Length(q#0) - 1 <= Seq#Length(q#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        q##1_0 := Seq#Take(q#0, Seq#Length(q#0) - 1);
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##1_0 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##1_0 := val#0;
        assert {:id "id130"} 0 <= v#0
           || DtRank(parent##1_0) < DtRank(parent#0)
           || Seq#Rank(q##1_0) < Seq#Rank(q#0)
           || v##1_0 == v#0;
        assert {:id "id131"} 0 <= val#0
           || DtRank(parent##1_0) < DtRank(parent#0)
           || Seq#Rank(q##1_0) < Seq#Rank(q#0)
           || v##1_0 < v#0
           || val##1_0 == val#0;
        assert {:id "id132"} DtRank(parent##1_0) < DtRank(parent#0)
           || (DtRank(parent##1_0) == DtRank(parent#0)
             && (Seq#Rank(q##1_0) < Seq#Rank(q#0)
               || (Seq#Rank(q##1_0) == Seq#Rank(q#0)
                 && (v##1_0 < v#0 || (v##1_0 == v#0 && val##1_0 < val#0)))));
        call {:id "id133"} Call$$_module.__default.LemmaSeq(parent##1_0, q##1_0, v##1_0, val##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor $Is
axiom $Is(#_module.List.Nil(), Tclass._module.List());
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

// Constructor function declaration
function #_module.List.Cons(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: DatatypeType :: 
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
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall a#6#0#0: DatatypeType, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List()) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List())
     <==> $Is(a#6#0#0, Tclass._module.Expr()) && $Is(a#6#1#0, Tclass._module.List()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List._h0(d), Tclass._module.Expr(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List._h0(d), Tclass._module.Expr(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List._h1(d), Tclass._module.List(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List._h1(d), Tclass._module.List(), $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List._h0(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  DtRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List._h1(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: DatatypeType :: 
  { #_module.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.List.Cons(a#11#0#0, a#11#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.List(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.List())
     ==> $IsAlloc(d, Tclass._module.List(), $h));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List()) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List()) } 
  $Is(d, Tclass._module.List())
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
       <==> _module.Expr#Equal(_module.List._h0(a), _module.List._h0(b))
         && _module.List#Equal(_module.List._h1(a), _module.List._h1(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.Expr.Const(int) : DatatypeType;

const unique ##_module.Expr.Const: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: int :: 
  { #_module.Expr.Const(a#12#0#0) } 
  DatatypeCtorId(#_module.Expr.Const(a#12#0#0)) == ##_module.Expr.Const);
}

function _module.Expr.Const_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Expr.Const_q(d) } 
  _module.Expr.Const_q(d) <==> DatatypeCtorId(d) == ##_module.Expr.Const);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Expr.Const_q(d) } 
  _module.Expr.Const_q(d)
     ==> (exists a#13#0#0: int :: d == #_module.Expr.Const(a#13#0#0)));

// Constructor $Is
axiom (forall a#14#0#0: int :: 
  { $Is(#_module.Expr.Const(a#14#0#0), Tclass._module.Expr()) } 
  $Is(#_module.Expr.Const(a#14#0#0), Tclass._module.Expr())
     <==> $Is(a#14#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expr._h2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expr.Const_q(d)
       && $IsAlloc(d, Tclass._module.Expr(), $h)
     ==> $IsAlloc(_module.Expr._h2(d), TInt, $h));

// Constructor literal
axiom (forall a#15#0#0: int :: 
  { #_module.Expr.Const(LitInt(a#15#0#0)) } 
  #_module.Expr.Const(LitInt(a#15#0#0)) == Lit(#_module.Expr.Const(a#15#0#0)));

function _module.Expr._h2(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#16#0#0: int :: 
  { #_module.Expr.Const(a#16#0#0) } 
  _module.Expr._h2(#_module.Expr.Const(a#16#0#0)) == a#16#0#0);

// Constructor function declaration
function #_module.Expr.Var(int) : DatatypeType;

const unique ##_module.Expr.Var: DtCtorId
uses {
// Constructor identifier
axiom (forall a#17#0#0: int :: 
  { #_module.Expr.Var(a#17#0#0) } 
  DatatypeCtorId(#_module.Expr.Var(a#17#0#0)) == ##_module.Expr.Var);
}

function _module.Expr.Var_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Expr.Var_q(d) } 
  _module.Expr.Var_q(d) <==> DatatypeCtorId(d) == ##_module.Expr.Var);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Expr.Var_q(d) } 
  _module.Expr.Var_q(d)
     ==> (exists a#18#0#0: int :: d == #_module.Expr.Var(a#18#0#0)));

// Constructor $Is
axiom (forall a#19#0#0: int :: 
  { $Is(#_module.Expr.Var(a#19#0#0), Tclass._module.Expr()) } 
  $Is(#_module.Expr.Var(a#19#0#0), Tclass._module.Expr()) <==> $Is(a#19#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expr._h3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expr.Var_q(d)
       && $IsAlloc(d, Tclass._module.Expr(), $h)
     ==> $IsAlloc(_module.Expr._h3(d), TInt, $h));

// Constructor literal
axiom (forall a#20#0#0: int :: 
  { #_module.Expr.Var(LitInt(a#20#0#0)) } 
  #_module.Expr.Var(LitInt(a#20#0#0)) == Lit(#_module.Expr.Var(a#20#0#0)));

function _module.Expr._h3(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#21#0#0: int :: 
  { #_module.Expr.Var(a#21#0#0) } 
  _module.Expr._h3(#_module.Expr.Var(a#21#0#0)) == a#21#0#0);

// Constructor function declaration
function #_module.Expr.Nary(int, DatatypeType) : DatatypeType;

const unique ##_module.Expr.Nary: DtCtorId
uses {
// Constructor identifier
axiom (forall a#22#0#0: int, a#22#1#0: DatatypeType :: 
  { #_module.Expr.Nary(a#22#0#0, a#22#1#0) } 
  DatatypeCtorId(#_module.Expr.Nary(a#22#0#0, a#22#1#0)) == ##_module.Expr.Nary);
}

function _module.Expr.Nary_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Expr.Nary_q(d) } 
  _module.Expr.Nary_q(d) <==> DatatypeCtorId(d) == ##_module.Expr.Nary);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Expr.Nary_q(d) } 
  _module.Expr.Nary_q(d)
     ==> (exists a#23#0#0: int, a#23#1#0: DatatypeType :: 
      d == #_module.Expr.Nary(a#23#0#0, a#23#1#0)));

// Constructor $Is
axiom (forall a#24#0#0: int, a#24#1#0: DatatypeType :: 
  { $Is(#_module.Expr.Nary(a#24#0#0, a#24#1#0), Tclass._module.Expr()) } 
  $Is(#_module.Expr.Nary(a#24#0#0, a#24#1#0), Tclass._module.Expr())
     <==> $Is(a#24#0#0, TInt) && $Is(a#24#1#0, Tclass._module.List()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expr._h4(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expr.Nary_q(d)
       && $IsAlloc(d, Tclass._module.Expr(), $h)
     ==> $IsAlloc(_module.Expr._h4(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expr._h5(d), Tclass._module.List(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expr.Nary_q(d)
       && $IsAlloc(d, Tclass._module.Expr(), $h)
     ==> $IsAlloc(_module.Expr._h5(d), Tclass._module.List(), $h));

// Constructor literal
axiom (forall a#25#0#0: int, a#25#1#0: DatatypeType :: 
  { #_module.Expr.Nary(LitInt(a#25#0#0), Lit(a#25#1#0)) } 
  #_module.Expr.Nary(LitInt(a#25#0#0), Lit(a#25#1#0))
     == Lit(#_module.Expr.Nary(a#25#0#0, a#25#1#0)));

function _module.Expr._h4(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#26#0#0: int, a#26#1#0: DatatypeType :: 
  { #_module.Expr.Nary(a#26#0#0, a#26#1#0) } 
  _module.Expr._h4(#_module.Expr.Nary(a#26#0#0, a#26#1#0)) == a#26#0#0);

function _module.Expr._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#27#0#0: int, a#27#1#0: DatatypeType :: 
  { #_module.Expr.Nary(a#27#0#0, a#27#1#0) } 
  _module.Expr._h5(#_module.Expr.Nary(a#27#0#0, a#27#1#0)) == a#27#1#0);

// Inductive rank
axiom (forall a#28#0#0: int, a#28#1#0: DatatypeType :: 
  { #_module.Expr.Nary(a#28#0#0, a#28#1#0) } 
  DtRank(a#28#1#0) < DtRank(#_module.Expr.Nary(a#28#0#0, a#28#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Expr(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Expr())
     ==> $IsAlloc(d, Tclass._module.Expr(), $h));

// Depth-one case-split function
function $IsA#_module.Expr(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Expr(d) } 
  $IsA#_module.Expr(d)
     ==> _module.Expr.Const_q(d) || _module.Expr.Var_q(d) || _module.Expr.Nary_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Expr.Nary_q(d), $Is(d, Tclass._module.Expr()) } 
    { _module.Expr.Var_q(d), $Is(d, Tclass._module.Expr()) } 
    { _module.Expr.Const_q(d), $Is(d, Tclass._module.Expr()) } 
  $Is(d, Tclass._module.Expr())
     ==> _module.Expr.Const_q(d) || _module.Expr.Var_q(d) || _module.Expr.Nary_q(d));

// Datatype extensional equality declaration
function _module.Expr#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Expr.Const
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expr#Equal(a, b), _module.Expr.Const_q(a) } 
    { _module.Expr#Equal(a, b), _module.Expr.Const_q(b) } 
  _module.Expr.Const_q(a) && _module.Expr.Const_q(b)
     ==> (_module.Expr#Equal(a, b) <==> _module.Expr._h2(a) == _module.Expr._h2(b)));

// Datatype extensional equality definition: #_module.Expr.Var
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expr#Equal(a, b), _module.Expr.Var_q(a) } 
    { _module.Expr#Equal(a, b), _module.Expr.Var_q(b) } 
  _module.Expr.Var_q(a) && _module.Expr.Var_q(b)
     ==> (_module.Expr#Equal(a, b) <==> _module.Expr._h3(a) == _module.Expr._h3(b)));

// Datatype extensional equality definition: #_module.Expr.Nary
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expr#Equal(a, b), _module.Expr.Nary_q(a) } 
    { _module.Expr#Equal(a, b), _module.Expr.Nary_q(b) } 
  _module.Expr.Nary_q(a) && _module.Expr.Nary_q(b)
     ==> (_module.Expr#Equal(a, b)
       <==> _module.Expr._h4(a) == _module.Expr._h4(b)
         && _module.List#Equal(_module.Expr._h5(a), _module.Expr._h5(b))));

// Datatype extensionality axiom: _module.Expr
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expr#Equal(a, b) } 
  _module.Expr#Equal(a, b) <==> a == b);

const unique class._module.Expr: ClassName;

// Constructor function declaration
function #_module.Expression.Const(int) : DatatypeType;

const unique ##_module.Expression.Const: DtCtorId
uses {
// Constructor identifier
axiom (forall a#29#0#0: int :: 
  { #_module.Expression.Const(a#29#0#0) } 
  DatatypeCtorId(#_module.Expression.Const(a#29#0#0))
     == ##_module.Expression.Const);
}

function _module.Expression.Const_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Expression.Const_q(d) } 
  _module.Expression.Const_q(d)
     <==> DatatypeCtorId(d) == ##_module.Expression.Const);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Expression.Const_q(d) } 
  _module.Expression.Const_q(d)
     ==> (exists a#30#0#0: int :: d == #_module.Expression.Const(a#30#0#0)));

// Constructor $Is
axiom (forall a#31#0#0: int :: 
  { $Is(#_module.Expression.Const(a#31#0#0), Tclass._module.Expression()) } 
  $Is(#_module.Expression.Const(a#31#0#0), Tclass._module.Expression())
     <==> $Is(a#31#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expression._h6(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expression.Const_q(d)
       && $IsAlloc(d, Tclass._module.Expression(), $h)
     ==> $IsAlloc(_module.Expression._h6(d), TInt, $h));

// Constructor literal
axiom (forall a#32#0#0: int :: 
  { #_module.Expression.Const(LitInt(a#32#0#0)) } 
  #_module.Expression.Const(LitInt(a#32#0#0))
     == Lit(#_module.Expression.Const(a#32#0#0)));

function _module.Expression._h6(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#33#0#0: int :: 
  { #_module.Expression.Const(a#33#0#0) } 
  _module.Expression._h6(#_module.Expression.Const(a#33#0#0)) == a#33#0#0);

// Constructor function declaration
function #_module.Expression.Var(int) : DatatypeType;

const unique ##_module.Expression.Var: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: int :: 
  { #_module.Expression.Var(a#34#0#0) } 
  DatatypeCtorId(#_module.Expression.Var(a#34#0#0)) == ##_module.Expression.Var);
}

function _module.Expression.Var_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Expression.Var_q(d) } 
  _module.Expression.Var_q(d) <==> DatatypeCtorId(d) == ##_module.Expression.Var);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Expression.Var_q(d) } 
  _module.Expression.Var_q(d)
     ==> (exists a#35#0#0: int :: d == #_module.Expression.Var(a#35#0#0)));

// Constructor $Is
axiom (forall a#36#0#0: int :: 
  { $Is(#_module.Expression.Var(a#36#0#0), Tclass._module.Expression()) } 
  $Is(#_module.Expression.Var(a#36#0#0), Tclass._module.Expression())
     <==> $Is(a#36#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expression._h7(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expression.Var_q(d)
       && $IsAlloc(d, Tclass._module.Expression(), $h)
     ==> $IsAlloc(_module.Expression._h7(d), TInt, $h));

// Constructor literal
axiom (forall a#37#0#0: int :: 
  { #_module.Expression.Var(LitInt(a#37#0#0)) } 
  #_module.Expression.Var(LitInt(a#37#0#0))
     == Lit(#_module.Expression.Var(a#37#0#0)));

function _module.Expression._h7(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#38#0#0: int :: 
  { #_module.Expression.Var(a#38#0#0) } 
  _module.Expression._h7(#_module.Expression.Var(a#38#0#0)) == a#38#0#0);

// Constructor function declaration
function #_module.Expression.Nary(int, Seq) : DatatypeType;

const unique ##_module.Expression.Nary: DtCtorId
uses {
// Constructor identifier
axiom (forall a#39#0#0: int, a#39#1#0: Seq :: 
  { #_module.Expression.Nary(a#39#0#0, a#39#1#0) } 
  DatatypeCtorId(#_module.Expression.Nary(a#39#0#0, a#39#1#0))
     == ##_module.Expression.Nary);
}

function _module.Expression.Nary_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Expression.Nary_q(d) } 
  _module.Expression.Nary_q(d) <==> DatatypeCtorId(d) == ##_module.Expression.Nary);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Expression.Nary_q(d) } 
  _module.Expression.Nary_q(d)
     ==> (exists a#40#0#0: int, a#40#1#0: Seq :: 
      d == #_module.Expression.Nary(a#40#0#0, a#40#1#0)));

// Constructor $Is
axiom (forall a#41#0#0: int, a#41#1#0: Seq :: 
  { $Is(#_module.Expression.Nary(a#41#0#0, a#41#1#0), Tclass._module.Expression()) } 
  $Is(#_module.Expression.Nary(a#41#0#0, a#41#1#0), Tclass._module.Expression())
     <==> $Is(a#41#0#0, TInt) && $Is(a#41#1#0, TSeq(Tclass._module.Expression())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expression._h8(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expression.Nary_q(d)
       && $IsAlloc(d, Tclass._module.Expression(), $h)
     ==> $IsAlloc(_module.Expression._h8(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Expression._h9(d), TSeq(Tclass._module.Expression()), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Expression.Nary_q(d)
       && $IsAlloc(d, Tclass._module.Expression(), $h)
     ==> $IsAlloc(_module.Expression._h9(d), TSeq(Tclass._module.Expression()), $h));

// Constructor literal
axiom (forall a#42#0#0: int, a#42#1#0: Seq :: 
  { #_module.Expression.Nary(LitInt(a#42#0#0), Lit(a#42#1#0)) } 
  #_module.Expression.Nary(LitInt(a#42#0#0), Lit(a#42#1#0))
     == Lit(#_module.Expression.Nary(a#42#0#0, a#42#1#0)));

function _module.Expression._h8(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#43#0#0: int, a#43#1#0: Seq :: 
  { #_module.Expression.Nary(a#43#0#0, a#43#1#0) } 
  _module.Expression._h8(#_module.Expression.Nary(a#43#0#0, a#43#1#0)) == a#43#0#0);

function _module.Expression._h9(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#44#0#0: int, a#44#1#0: Seq :: 
  { #_module.Expression.Nary(a#44#0#0, a#44#1#0) } 
  _module.Expression._h9(#_module.Expression.Nary(a#44#0#0, a#44#1#0)) == a#44#1#0);

// Inductive seq element rank
axiom (forall a#45#0#0: int, a#45#1#0: Seq, i: int :: 
  { Seq#Index(a#45#1#0, i), #_module.Expression.Nary(a#45#0#0, a#45#1#0) } 
  0 <= i && i < Seq#Length(a#45#1#0)
     ==> DtRank($Unbox(Seq#Index(a#45#1#0, i)): DatatypeType)
       < DtRank(#_module.Expression.Nary(a#45#0#0, a#45#1#0)));

// Inductive seq rank
axiom (forall a#46#0#0: int, a#46#1#0: Seq :: 
  { #_module.Expression.Nary(a#46#0#0, a#46#1#0) } 
  Seq#Rank(a#46#1#0) < DtRank(#_module.Expression.Nary(a#46#0#0, a#46#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Expression(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Expression())
     ==> $IsAlloc(d, Tclass._module.Expression(), $h));

// Depth-one case-split function
function $IsA#_module.Expression(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Expression(d) } 
  $IsA#_module.Expression(d)
     ==> _module.Expression.Const_q(d)
       || _module.Expression.Var_q(d)
       || _module.Expression.Nary_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Expression.Nary_q(d), $Is(d, Tclass._module.Expression()) } 
    { _module.Expression.Var_q(d), $Is(d, Tclass._module.Expression()) } 
    { _module.Expression.Const_q(d), $Is(d, Tclass._module.Expression()) } 
  $Is(d, Tclass._module.Expression())
     ==> _module.Expression.Const_q(d)
       || _module.Expression.Var_q(d)
       || _module.Expression.Nary_q(d));

// Datatype extensional equality declaration
function _module.Expression#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Expression.Const
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expression#Equal(a, b), _module.Expression.Const_q(a) } 
    { _module.Expression#Equal(a, b), _module.Expression.Const_q(b) } 
  _module.Expression.Const_q(a) && _module.Expression.Const_q(b)
     ==> (_module.Expression#Equal(a, b)
       <==> _module.Expression._h6(a) == _module.Expression._h6(b)));

// Datatype extensional equality definition: #_module.Expression.Var
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expression#Equal(a, b), _module.Expression.Var_q(a) } 
    { _module.Expression#Equal(a, b), _module.Expression.Var_q(b) } 
  _module.Expression.Var_q(a) && _module.Expression.Var_q(b)
     ==> (_module.Expression#Equal(a, b)
       <==> _module.Expression._h7(a) == _module.Expression._h7(b)));

// Datatype extensional equality definition: #_module.Expression.Nary
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expression#Equal(a, b), _module.Expression.Nary_q(a) } 
    { _module.Expression#Equal(a, b), _module.Expression.Nary_q(b) } 
  _module.Expression.Nary_q(a) && _module.Expression.Nary_q(b)
     ==> (_module.Expression#Equal(a, b)
       <==> _module.Expression._h8(a) == _module.Expression._h8(b)
         && Seq#Equal(_module.Expression._h9(a), _module.Expression._h9(b))));

// Datatype extensionality axiom: _module.Expression
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Expression#Equal(a, b) } 
  _module.Expression#Equal(a, b) <==> a == b);

const unique class._module.Expression: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Expr: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Expression: TyTagFamily;
