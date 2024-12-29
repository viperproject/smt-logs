// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy

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

// function declaration for _module._default.P
function _module.__default.P(s#0: Seq) : bool;

function _module.__default.P#canCall(s#0: Seq) : bool;

function _module.__default.P#requires(Seq) : bool;

// #requires axiom for _module.__default.P
axiom (forall s#0: Seq :: 
  { _module.__default.P#requires(s#0) } 
  $Is(s#0, TSeq(TInt)) ==> _module.__default.P#requires(s#0) == true);

procedure {:verboseName "P (well-formedness)"} CheckWellformed$$_module.__default.P(s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q
function _module.__default.Q($heap: Heap, a#0: ref) : bool;

function _module.__default.Q#canCall($heap: Heap, a#0: ref) : bool;

// frame axiom for _module.__default.Q
axiom (forall $h0: Heap, $h1: Heap, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.Q($h1, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.Q#canCall($h0, a#0) || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == a#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.Q($h0, a#0) == _module.__default.Q($h1, a#0));

function _module.__default.Q#requires(Heap, ref) : bool;

// #requires axiom for _module.__default.Q
axiom (forall $Heap: Heap, a#0: ref :: 
  { _module.__default.Q#requires($Heap, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.__default.Q#requires($Heap, a#0) == true);

procedure {:verboseName "Q (well-formedness)"} CheckWellformed$$_module.__default.Q(a#0: ref where $Is(a#0, Tclass._System.array(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.C() : Ty
uses {
// Tclass._module.C Tag
axiom Tag(Tclass._module.C()) == Tagclass._module.C
   && TagFamily(Tclass._module.C()) == tytagFamily$C;
}

const unique Tagclass._module.C: TyTag;

// Box/unbox axiom for Tclass._module.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C()) } 
  $IsBox(bx, Tclass._module.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C()));

procedure {:verboseName "TestsNoReads (well-formedness)"} CheckWellFormed$$_module.__default.TestsNoReads(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestsNoReads (call)"} Call$$_module.__default.TestsNoReads(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestsNoReads (correctness)"} Impl$$_module.__default.TestsNoReads(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestsNoReads (correctness)"} Impl$$_module.__default.TestsNoReads(c#0: ref, s#0: Seq, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: bool;
  var ##s#0: Seq;
  var ##s#1: Seq;
  var ##s#2: Seq;
  var ##s#3: Seq;
  var ##a#0: ref;
  var ##a#1: ref;
  var ##a#2: ref;
  var ##a#3: ref;
  var ##y#0: int;
  var ##y#1: int;

    // AddMethodImpl: TestsNoReads, Impl$$_module.__default.TestsNoReads
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc b#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(49,5)
    assume true;
    ##s#0 := s#0;
    assert {:id "id21"} $IsAlloc(s#0, TSeq(TInt), old($Heap));
    assume _module.__default.P#canCall(s#0);
    assume _module.__default.P#canCall(s#0);
    b#0 := _module.__default.P(s#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(50,5)
    assume true;
    assert {:id "id23"} c#0 != null;
    ##s#1 := s#0;
    assert {:id "id24"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assert {:id "id25"} $IsAlloc(s#0, TSeq(TInt), old($Heap));
    assume _module.C.PInClass#canCall(c#0, s#0);
    assume _module.C.PInClass#canCall(c#0, s#0);
    b#0 := _module.C.PInClass(c#0, s#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(51,5)
    assume true;
    ##s#2 := s#0;
    assert {:id "id27"} $IsAlloc(s#0, TSeq(TInt), old($Heap));
    assume _module.C.StaticPInClass#canCall(s#0);
    assume _module.C.StaticPInClass#canCall(s#0);
    b#0 := _module.C.StaticPInClass(s#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(52,5)
    assume true;
    ##s#3 := s#0;
    assert {:id "id29"} $IsAlloc(s#0, TSeq(TInt), old($Heap));
    assume _module.C.StaticPInClass#canCall(s#0);
    assume _module.C.StaticPInClass#canCall(s#0);
    b#0 := _module.C.StaticPInClass(s#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(54,5)
    assume true;
    ##a#0 := a#0;
    assert {:id "id31"} $IsAlloc(a#0, Tclass._System.array(TInt), old($Heap));
    assume _module.__default.Q#canCall(old($Heap), a#0);
    assume _module.__default.Q#canCall(old($Heap), a#0);
    b#0 := _module.__default.Q(old($Heap), a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(55,5)
    assume true;
    assert {:id "id33"} c#0 != null;
    ##a#1 := a#0;
    assert {:id "id34"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assert {:id "id35"} $IsAlloc(a#0, Tclass._System.array(TInt), old($Heap));
    assume _module.C.QInClass#canCall(old($Heap), c#0, a#0);
    assume _module.C.QInClass#canCall(old($Heap), c#0, a#0);
    b#0 := _module.C.QInClass(old($Heap), c#0, a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(56,5)
    assume true;
    ##a#2 := a#0;
    assert {:id "id37"} $IsAlloc(a#0, Tclass._System.array(TInt), old($Heap));
    assume _module.C.StaticQInClass#canCall(old($Heap), a#0);
    assume _module.C.StaticQInClass#canCall(old($Heap), a#0);
    b#0 := _module.C.StaticQInClass(old($Heap), a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(57,5)
    assume true;
    ##a#3 := a#0;
    assert {:id "id39"} $IsAlloc(a#0, Tclass._System.array(TInt), old($Heap));
    assume _module.C.StaticQInClass#canCall(old($Heap), a#0);
    assume _module.C.StaticQInClass#canCall(old($Heap), a#0);
    b#0 := _module.C.StaticQInClass(old($Heap), a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(59,5)
    assume true;
    assert {:id "id41"} c#0 != null;
    ##y#0 := LitInt(3);
    assert {:id "id42"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume _module.C.R#canCall(old($Heap), c#0, LitInt(3));
    assume _module.C.R#canCall(old($Heap), c#0, LitInt(3));
    b#0 := _module.C.R(old($Heap), c#0, LitInt(3));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(60,5)
    assume true;
    assert {:id "id44"} c#0 != null;
    ##y#1 := $Unbox(read(old($Heap), c#0, _module.C.x)): int;
    assert {:id "id45"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume _module.C.R#canCall(old($Heap), c#0, $Unbox(read(old($Heap), c#0, _module.C.x)): int);
    assume _module.C.R#canCall(old($Heap), c#0, $Unbox(read(old($Heap), c#0, _module.C.x)): int);
    b#0 := _module.C.R(old($Heap), c#0, $Unbox(read(old($Heap), c#0, _module.C.x)): int);
}



procedure {:verboseName "Trigger (well-formedness)"} CheckWellFormed$$_module.__default.Trigger();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trigger (well-formedness)"} CheckWellFormed$$_module.__default.Trigger()
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq;
  var ##s#0: Seq;
  var ##s#1: Seq;
  var s#2: Seq;
  var ##s#2: Seq;
  var ##s#3: Seq;


    // AddMethodImpl: Trigger, CheckWellFormed$$_module.__default.Trigger
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc s#0;
    assume $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSeq(TInt), $Heap);
    assume _module.__default.P#canCall(s#0);
    ##s#1 := s#0;
    assert {:id "id47"} $IsAlloc(s#0, TSeq(TInt), old($Heap));
    assume _module.__default.P#canCall(s#0);
    assume {:id "id48"} _module.__default.P(s#0) == _module.__default.P(s#0);
    assume {:id "id49"} (forall s#1: Seq :: 
      { _module.__default.P(s#1) } { _module.__default.P(s#1) } 
      $Is(s#1, TSeq(TInt)) ==> _module.__default.P(s#1) == _module.__default.P(s#1));
    havoc s#2;
    assume $Is(s#2, TSeq(TInt)) && $IsAlloc(s#2, TSeq(TInt), $Heap);
    ##s#2 := s#2;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, TSeq(TInt), $Heap);
    assume _module.__default.P#canCall(s#2);
    ##s#3 := s#2;
    assert {:id "id50"} $IsAlloc(s#2, TSeq(TInt), old($Heap));
    assume _module.__default.P#canCall(s#2);
    assume {:id "id51"} _module.__default.P(s#2) == _module.__default.P(s#2);
    assume {:id "id52"} (forall s#3: Seq :: 
      { _module.__default.P(s#3) } 
      $Is(s#3, TSeq(TInt)) ==> _module.__default.P(s#3) == _module.__default.P(s#3));
}



procedure {:verboseName "Trigger (call)"} Call$$_module.__default.Trigger();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall s#1: Seq :: 
    { _module.__default.P(s#1) } { _module.__default.P(s#1) } 
    $Is(s#1, TSeq(TInt))
       ==> _module.__default.P#canCall(s#1) && _module.__default.P#canCall(s#1));
  ensures {:id "id53"} (forall s#1: Seq :: 
    { _module.__default.P(s#1) } { _module.__default.P(s#1) } 
    $Is(s#1, TSeq(TInt)) ==> _module.__default.P(s#1) == _module.__default.P(s#1));
  free ensures (forall s#3: Seq :: 
    { _module.__default.P(s#3) } 
    $Is(s#3, TSeq(TInt))
       ==> _module.__default.P#canCall(s#3) && _module.__default.P#canCall(s#3));
  ensures {:id "id54"} (forall s#3: Seq :: 
    { _module.__default.P(s#3) } 
    $Is(s#3, TSeq(TInt)) ==> _module.__default.P(s#3) == _module.__default.P(s#3));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Trigger (correctness)"} Impl$$_module.__default.Trigger() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall s#1: Seq :: 
    { _module.__default.P(s#1) } { _module.__default.P(s#1) } 
    $Is(s#1, TSeq(TInt))
       ==> _module.__default.P#canCall(s#1) && _module.__default.P#canCall(s#1));
  ensures {:id "id55"} (forall s#1: Seq :: 
    { _module.__default.P(s#1) } { _module.__default.P(s#1) } 
    $Is(s#1, TSeq(TInt)) ==> _module.__default.P(s#1) == _module.__default.P(s#1));
  free ensures (forall s#3: Seq :: 
    { _module.__default.P(s#3) } 
    $Is(s#3, TSeq(TInt))
       ==> _module.__default.P#canCall(s#3) && _module.__default.P#canCall(s#3));
  ensures {:id "id56"} (forall s#3: Seq :: 
    { _module.__default.P(s#3) } 
    $Is(s#3, TSeq(TInt)) ==> _module.__default.P(s#3) == _module.__default.P(s#3));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trigger (correctness)"} Impl$$_module.__default.Trigger() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Trigger, Impl$$_module.__default.Trigger
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "StaticLemmaWithoutPrecondition (well-formedness)"} CheckWellFormed$$_module.__default.StaticLemmaWithoutPrecondition(y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StaticLemmaWithoutPrecondition (call)"} Call$$_module.__default.StaticLemmaWithoutPrecondition(y#0: int);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StaticLemmaWithoutPrecondition (correctness)"} Impl$$_module.__default.StaticLemmaWithoutPrecondition(y#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



function Tclass._module.D() : Ty
uses {
// Tclass._module.D Tag
axiom Tag(Tclass._module.D()) == Tagclass._module.D
   && TagFamily(Tclass._module.D()) == tytagFamily$D;
}

const unique Tagclass._module.D: TyTag;

// Box/unbox axiom for Tclass._module.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.D()) } 
  $IsBox(bx, Tclass._module.D())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.D()));

procedure {:verboseName "StmtExpr (well-formedness)"} CheckWellFormed$$_module.__default.StmtExpr(d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StmtExpr (well-formedness)"} CheckWellFormed$$_module.__default.StmtExpr(d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: StmtExpr, CheckWellFormed$$_module.__default.StmtExpr
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == d#0);
    assert {:id "id57"} d#0 != null;
    assume {:id "id58"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(3);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == d#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "StmtExpr (call)"} Call$$_module.__default.StmtExpr(d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), $Heap));
  // user-defined preconditions
  requires {:id "id59"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StmtExpr (correctness)"} Impl$$_module.__default.StmtExpr(d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id60"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StmtExpr (correctness)"} Impl$$_module.__default.StmtExpr(d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var $rhs#0: int;
  var y##0_0: int;
  var Heap$StmtExpr#1_0: Heap;
  var y##1_0: int;
  var Heap$StmtExpr#2_0: Heap;
  var y##2_0: int;
  var Heap$StmtExpr#3_0: Heap;

    // AddMethodImpl: StmtExpr, Impl$$_module.__default.StmtExpr
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == d#0);
    $_reverifyPost := false;
    havoc a#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(147,10)
    assert {:id "id61"} d#0 != null;
    assume true;
    assert {:id "id62"} $_ModifiesFrame[d#0, _module.D.data];
    assume true;
    $rhs#0 := LitInt(100);
    $Heap := update($Heap, d#0, _module.D.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(148,3)
    if (*)
    {
        assume true;
        assume {:id "id85"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(150,7)
        assume true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(150,10)
        assert {:id "id86"} {:subsumption 0} d#0 != null;
        assume true;
        assert {:id "id87"} $Unbox(read($Heap, d#0, _module.D.data)): int < 5;
        assume true;
        a#0 := LitInt(10);
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id80"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(152,7)
        assume true;
        Heap$StmtExpr#3_0 := $Heap;
        $Heap := old($Heap);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(152,19)
        assert {:id "id81"} {:subsumption 0} d#0 != null;
        assert {:id "id82"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
        assume true;
        assert {:id "id83"} $Unbox(read(old($Heap), d#0, _module.D.data)): int < 5;
        $Heap := Heap$StmtExpr#3_0;
        assume true;
        a#0 := LitInt(20 + 10);
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id75"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(154,7)
        assume true;
        Heap$StmtExpr#2_0 := $Heap;
        $Heap := old($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(154,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id76"} d#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##2_0 := LitInt(3);
        assert {:id "id77"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
        call {:id "id78"} Call$$_module.D.Lemma(d#0, y##2_0);
        // TrCallStmt: After ProcessCallStmt
        $Heap := Heap$StmtExpr#2_0;
        assume true;
        a#0 := LitInt(10);
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id70"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(156,7)
        assume true;
        Heap$StmtExpr#1_0 := $Heap;
        $Heap := old($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(156,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id71"} d#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##1_0 := LitInt(100);
        assert {:id "id72"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
        call {:id "id73"} Call$$_module.D.Lemma(d#0, y##1_0);
        // TrCallStmt: After ProcessCallStmt
        $Heap := Heap$StmtExpr#1_0;
        assume true;
        a#0 := LitInt(10);
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id66"} true;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(158,7)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(158,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id67"} d#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_0 := LitInt(100);
        call {:id "id68"} Call$$_module.D.Lemma(d#0, y##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume true;
        a#0 := LitInt(10);
        pop;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id65"} false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(160,5)
    assume true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(160,8)
    assert {:id "id89"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id90"} $Unbox(read($Heap, d#0, _module.D.data)): int < 105;
    assume true;
    a#0 := LitInt(0);
}



procedure {:verboseName "CalcStmtExpr (well-formedness)"} CheckWellFormed$$_module.__default.CalcStmtExpr(d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CalcStmtExpr (well-formedness)"} CheckWellFormed$$_module.__default.CalcStmtExpr(d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: CalcStmtExpr, CheckWellFormed$$_module.__default.CalcStmtExpr
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == d#0);
    assert {:id "id92"} d#0 != null;
    assume {:id "id93"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(3);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == d#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "CalcStmtExpr (call)"} Call$$_module.__default.CalcStmtExpr(d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), $Heap));
  // user-defined preconditions
  requires {:id "id94"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CalcStmtExpr (correctness)"} Impl$$_module.__default.CalcStmtExpr(d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id95"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CalcStmtExpr (correctness)"} Impl$$_module.__default.CalcStmtExpr(d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var $rhs#0: int;
  var Heap$StmtExpr#0_0: Heap;
  var y##0_0_0_0: int;
  var Heap$StmtExpr#1_0: Heap;
  var y##1_0_0_0: int;
  var Heap$StmtExpr#2_0: Heap;
  var y##2_0_0_0: int;
  var Heap$StmtExpr#3_0: Heap;
  var Heap$StmtExpr#4_0: Heap;
  var Heap$StmtExpr#5_0: Heap;

    // AddMethodImpl: CalcStmtExpr, Impl$$_module.__default.CalcStmtExpr
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == d#0);
    $_reverifyPost := false;
    havoc a#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(168,10)
    assert {:id "id96"} d#0 != null;
    assume true;
    assert {:id "id97"} $_ModifiesFrame[d#0, _module.D.data];
    assume true;
    $rhs#0 := LitInt(100);
    $Heap := update($Heap, d#0, _module.D.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(169,3)
    if (*)
    {
        assume true;
        assume {:id "id134"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(171,7)
        assume true;
        Heap$StmtExpr#5_0 := $Heap;
        $Heap := old($Heap);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(171,14)
        // Assume Fuel Constant
        $Heap := Heap$StmtExpr#5_0;
        assume true;
        a#0 := LitInt(10);
    }
    else if (*)
    {
        assume true;
        assume {:id "id127"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,7)
        assume true;
        Heap$StmtExpr#4_0 := $Heap;
        $Heap := old($Heap);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,14)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,14)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,14)
            assume true;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,14)
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(175,11)
            assert {:id "id128"} {:subsumption 0} d#0 != null;
            assert {:id "id129"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
            assume true;
            assert {:id "id130"} $Unbox(read(old($Heap), d#0, _module.D.data)): int == LitInt(3);
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,14)
            assume true;
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(173,14)
            assert {:id "id131"} {:subsumption 0} LitInt(2) == LitInt(2);
            assume false;
        }

        assume {:id "id132"} LitInt(2) == LitInt(2);
        $Heap := Heap$StmtExpr#4_0;
        assume true;
        a#0 := LitInt(10);
    }
    else if (*)
    {
        assume true;
        assume {:id "id120"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,7)
        assume true;
        Heap$StmtExpr#3_0 := $Heap;
        $Heap := old($Heap);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,14)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,14)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,14)
            assume true;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,14)
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(181,11)
            assert {:id "id121"} {:subsumption 0} d#0 != null;
            assert {:id "id122"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
            assume true;
            assert {:id "id123"} $Unbox(read(old($Heap), d#0, _module.D.data)): int == LitInt(100);
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,14)
            assume true;
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(179,14)
            assert {:id "id124"} {:subsumption 0} LitInt(2) == LitInt(2);
            assume false;
        }

        assume {:id "id125"} LitInt(2) == LitInt(2);
        $Heap := Heap$StmtExpr#3_0;
        assume true;
        a#0 := LitInt(10);
    }
    else if (*)
    {
        assume true;
        assume {:id "id113"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,7)
        assume true;
        Heap$StmtExpr#2_0 := $Heap;
        $Heap := old($Heap);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,14)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,14)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,14)
            assume true;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,14)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(187,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assert {:id "id114"} d#0 != null;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##2_0_0_0 := LitInt(3);
            assert {:id "id115"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
            call {:id "id116"} Call$$_module.D.Lemma(d#0, y##2_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,14)
            assume true;
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(185,14)
            assert {:id "id117"} {:subsumption 0} LitInt(2) == LitInt(2);
            assume false;
        }

        assume {:id "id118"} LitInt(2) == LitInt(2);
        $Heap := Heap$StmtExpr#2_0;
        assume true;
        a#0 := LitInt(10);
    }
    else if (*)
    {
        assume true;
        assume {:id "id108"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,7)
        assume true;
        Heap$StmtExpr#1_0 := $Heap;
        $Heap := old($Heap);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,14)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,14)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,14)
            assume true;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,14)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(193,41)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_0_0 := LitInt(3);
            call {:id "id109"} Call$$_module.__default.StaticLemmaWithoutPrecondition(y##1_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,14)
            assume true;
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(191,14)
            assert {:id "id110"} {:subsumption 0} LitInt(2) == LitInt(2);
            assume false;
        }

        assume {:id "id111"} LitInt(2) == LitInt(2);
        $Heap := Heap$StmtExpr#1_0;
        assume true;
        a#0 := LitInt(10);
    }
    else if (*)
    {
        assume true;
        assume {:id "id101"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,7)
        assume true;
        Heap$StmtExpr#0_0 := $Heap;
        $Heap := old($Heap);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,14)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,14)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,14)
            assume true;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,14)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(199,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assert {:id "id102"} d#0 != null;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##0_0_0_0 := LitInt(100);
            assert {:id "id103"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
            call {:id "id104"} Call$$_module.D.Lemma(d#0, y##0_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,14)
            assume true;
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(197,14)
            assert {:id "id105"} {:subsumption 0} LitInt(2) == LitInt(2);
            assume false;
        }

        assume {:id "id106"} LitInt(2) == LitInt(2);
        $Heap := Heap$StmtExpr#0_0;
        assume true;
        a#0 := LitInt(10);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id100"} false;
    }
}



// function declaration for _module._default.CalcStmtExprFunction
function _module.__default.CalcStmtExprFunction($prevHeap: Heap, $heap: Heap, d#0: ref, selector#0: int) : int
uses {
// definition axiom for _module.__default.CalcStmtExprFunction (revealed)
axiom {:id "id136"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, d#0: ref, selector#0: int :: 
    { _module.__default.CalcStmtExprFunction($prevHeap, $Heap, d#0, selector#0), $IsGoodHeap($Heap) } 
    _module.__default.CalcStmtExprFunction#canCall($prevHeap, $Heap, d#0, selector#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(d#0, Tclass._module.D())
           && 
          $Unbox(read($prevHeap, d#0, _module.D.data)): int == LitInt(3)
           && $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(100))
       ==> _module.__default.CalcStmtExprFunction($prevHeap, $Heap, d#0, selector#0)
         == (if selector#0 == LitInt(0)
           then 10
           else (if selector#0 == LitInt(1)
             then 10
             else (if selector#0 == LitInt(2)
               then 10
               else (if selector#0 == LitInt(3)
                 then 10
                 else (if selector#0 == LitInt(4) then 10 else 10))))));
}

function _module.__default.CalcStmtExprFunction#canCall($prevHeap: Heap, $heap: Heap, d#0: ref, selector#0: int) : bool;

// frame axiom for _module.__default.CalcStmtExprFunction
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, d#0: ref, selector#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.CalcStmtExprFunction($prevHeap, $h1, d#0, selector#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.CalcStmtExprFunction#canCall($prevHeap, $h0, d#0, selector#0)
         || $Is(d#0, Tclass._module.D()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == d#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.CalcStmtExprFunction($prevHeap, $h0, d#0, selector#0)
       == _module.__default.CalcStmtExprFunction($prevHeap, $h1, d#0, selector#0));

function _module.__default.CalcStmtExprFunction#requires(Heap, Heap, ref, int) : bool;

// #requires axiom for _module.__default.CalcStmtExprFunction
axiom (forall $prevHeap: Heap, $Heap: Heap, d#0: ref, selector#0: int :: 
  { _module.__default.CalcStmtExprFunction#requires($prevHeap, $Heap, d#0, selector#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(d#0, Tclass._module.D())
     ==> _module.__default.CalcStmtExprFunction#requires($prevHeap, $Heap, d#0, selector#0)
       == (
        $IsAlloc(d#0, Tclass._module.D(), $prevHeap)
         && $IsAlloc(selector#0, TInt, $prevHeap)
         && 
        $Unbox(read($prevHeap, d#0, _module.D.data)): int == LitInt(3)
         && $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(100)));

procedure {:verboseName "CalcStmtExprFunction (well-formedness)"} CheckWellformed$$_module.__default.CalcStmtExprFunction(previous$Heap: Heap, 
    current$Heap: Heap, 
    d#0: ref
       where $Is(d#0, Tclass._module.D()) && $IsAlloc(d#0, Tclass._module.D(), previous$Heap), 
    selector#0: int);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CalcStmtExprFunction (well-formedness)"} CheckWellformed$$_module.__default.CalcStmtExprFunction(previous$Heap: Heap, current$Heap: Heap, d#0: ref, selector#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var Heap$StmtExpr#0: Heap;
  var Heap$StmtExpr#1: Heap;
  var Heap$StmtExpr#2: Heap;
  var Heap$StmtExpr#3: Heap;
  var y##3_0_0: int;
  var Heap$StmtExpr#4: Heap;
  var y##4_0_0: int;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == d#0);
    // Check well-formedness of preconditions, and then assume them
    assert {:id "id137"} d#0 != null;
    assert {:id "id138"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
    assume {:id "id139"} $Unbox(read(old($Heap), d#0, _module.D.data)): int == LitInt(3);
    assert {:id "id140"} d#0 != null;
    b$reqreads#0 := $_ReadsFrame[d#0, _module.D.data];
    assume {:id "id141"} $Unbox(read($Heap, d#0, _module.D.data)): int == LitInt(100);
    assert {:id "id142"} b$reqreads#0;
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
        if (selector#0 == LitInt(0))
        {
            Heap$StmtExpr#0 := $Heap;
            $Heap := old($Heap);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(211,9)
            // Assume Fuel Constant
            $Heap := Heap$StmtExpr#0;
            assume {:id "id143"} _module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0)
               == LitInt(10);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0), TInt);
            return;
        }
        else
        {
            if (selector#0 == LitInt(1))
            {
                Heap$StmtExpr#1 := $Heap;
                $Heap := old($Heap);
                // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(213,9)
                // Assume Fuel Constant
                if (*)
                {
                    // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(213,9)
                    assume true;
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(213,9)
                    assume true;
                    // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(213,9)
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(215,11)
                    assert {:id "id144"} {:subsumption 0} d#0 != null;
                    assert {:id "id145"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
                    assert {:id "id146"} {:subsumption 0} $_ReadsFrame[d#0, _module.D.data];
                    assume true;
                    assert {:id "id147"} $Unbox(read(old($Heap), d#0, _module.D.data)): int == LitInt(3);
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(213,9)
                    assume true;
                    // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(213,9)
                    assert {:id "id148"} {:subsumption 0} LitInt(2) == LitInt(2);
                    assume false;
                }

                assume {:id "id149"} LitInt(2) == LitInt(2);
                $Heap := Heap$StmtExpr#1;
                assume {:id "id150"} _module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0)
                   == LitInt(10);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0), TInt);
                return;
            }
            else
            {
                if (selector#0 == LitInt(2))
                {
                    Heap$StmtExpr#2 := $Heap;
                    $Heap := old($Heap);
                    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(219,9)
                    // Assume Fuel Constant
                    if (*)
                    {
                        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(219,9)
                        assume true;
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(219,9)
                        assume true;
                        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(219,9)
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(221,11)
                        assert {:id "id151"} {:subsumption 0} d#0 != null;
                        assert {:id "id152"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
                        assert {:id "id153"} {:subsumption 0} $_ReadsFrame[d#0, _module.D.data];
                        assume true;
                        assert {:id "id154"} $Unbox(read(old($Heap), d#0, _module.D.data)): int == LitInt(100);
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(219,9)
                        assume true;
                        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(219,9)
                        assert {:id "id155"} {:subsumption 0} LitInt(2) == LitInt(2);
                        assume false;
                    }

                    assume {:id "id156"} LitInt(2) == LitInt(2);
                    $Heap := Heap$StmtExpr#2;
                    assume {:id "id157"} _module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0)
                       == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0), TInt);
                    return;
                }
                else
                {
                    if (selector#0 == LitInt(3))
                    {
                        Heap$StmtExpr#3 := $Heap;
                        $Heap := old($Heap);
                        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(225,9)
                        // Assume Fuel Constant
                        if (*)
                        {
                            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(225,9)
                            assume true;
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(225,9)
                            assume true;
                            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(225,9)
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(227,18)
                            // TrCallStmt: Before ProcessCallStmt
                            assume true;
                            assert {:id "id158"} d#0 != null;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            y##3_0_0 := LitInt(3);
                            assert {:id "id159"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
                            call {:id "id160"} Call$$_module.D.Lemma(d#0, y##3_0_0);
                            // TrCallStmt: After ProcessCallStmt
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(225,9)
                            assume true;
                            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(225,9)
                            assert {:id "id161"} {:subsumption 0} LitInt(2) == LitInt(2);
                            assume false;
                        }

                        assume {:id "id162"} LitInt(2) == LitInt(2);
                        $Heap := Heap$StmtExpr#3;
                        assume {:id "id163"} _module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0)
                           == LitInt(10);
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0), TInt);
                        return;
                    }
                    else
                    {
                        if (selector#0 == LitInt(4))
                        {
                            Heap$StmtExpr#4 := $Heap;
                            $Heap := old($Heap);
                            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(231,9)
                            // Assume Fuel Constant
                            if (*)
                            {
                                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(231,9)
                                assume true;
                                assume false;
                            }
                            else if (*)
                            {
                                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(231,9)
                                assume true;
                                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(231,9)
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(233,18)
                                // TrCallStmt: Before ProcessCallStmt
                                assume true;
                                assert {:id "id164"} d#0 != null;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                y##4_0_0 := LitInt(100);
                                assert {:id "id165"} $IsAlloc(d#0, Tclass._module.D(), old($Heap));
                                call {:id "id166"} Call$$_module.D.Lemma(d#0, y##4_0_0);
                                // TrCallStmt: After ProcessCallStmt
                                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(231,9)
                                assume true;
                                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(231,9)
                                assert {:id "id167"} {:subsumption 0} LitInt(2) == LitInt(2);
                                assume false;
                            }

                            assume {:id "id168"} LitInt(2) == LitInt(2);
                            $Heap := Heap$StmtExpr#4;
                            assume {:id "id169"} _module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0)
                               == LitInt(10);
                            assume true;
                            // CheckWellformedWithResult: any expression
                            assume $Is(_module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0), TInt);
                            return;
                        }
                        else
                        {
                            assume {:id "id170"} _module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0)
                               == LitInt(10);
                            assume true;
                            // CheckWellformedWithResult: any expression
                            assume $Is(_module.__default.CalcStmtExprFunction(old($Heap), $Heap, d#0, selector#0), TInt);
                            return;
                        }
                    }
                }
            }
        }

        assume false;
    }
}



const unique class._module.C?: ClassName;

function Tclass._module.C?() : Ty
uses {
// Tclass._module.C? Tag
axiom Tag(Tclass._module.C?()) == Tagclass._module.C?
   && TagFamily(Tclass._module.C?()) == tytagFamily$C;
}

const unique Tagclass._module.C?: TyTag;

// Box/unbox axiom for Tclass._module.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C?()) } 
  $IsBox(bx, Tclass._module.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C?()) } 
  $Is($o, Tclass._module.C?()) <==> $o == null || dtype($o) == Tclass._module.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C?(), $h) } 
  $IsAlloc($o, Tclass._module.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.C.x: Field
uses {
axiom FDim(_module.C.x) == 0
   && FieldOfDecl(class._module.C?, field$x) == _module.C.x
   && !$IsGhostField(_module.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.x)): int, TInt, $h));

// function declaration for _module.C.PInClass
function _module.C.PInClass(this: ref, s#0: Seq) : bool;

function _module.C.PInClass#canCall(this: ref, s#0: Seq) : bool;

function _module.C.PInClass#requires(ref, Seq) : bool;

// #requires axiom for _module.C.PInClass
axiom (forall this: ref, s#0: Seq :: 
  { _module.C.PInClass#requires(this, s#0) } 
  this != null && $Is(this, Tclass._module.C()) && $Is(s#0, TSeq(TInt))
     ==> _module.C.PInClass#requires(this, s#0) == true);

procedure {:verboseName "C.PInClass (well-formedness)"} CheckWellformed$$_module.C.PInClass(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.C.StaticPInClass
function _module.C.StaticPInClass(s#0: Seq) : bool;

function _module.C.StaticPInClass#canCall(s#0: Seq) : bool;

function _module.C.StaticPInClass#requires(Seq) : bool;

// #requires axiom for _module.C.StaticPInClass
axiom (forall s#0: Seq :: 
  { _module.C.StaticPInClass#requires(s#0) } 
  $Is(s#0, TSeq(TInt)) ==> _module.C.StaticPInClass#requires(s#0) == true);

procedure {:verboseName "C.StaticPInClass (well-formedness)"} CheckWellformed$$_module.C.StaticPInClass(s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.C.QInClass
function _module.C.QInClass($heap: Heap, this: ref, a#0: ref) : bool;

function _module.C.QInClass#canCall($heap: Heap, this: ref, a#0: ref) : bool;

// frame axiom for _module.C.QInClass
axiom (forall $h0: Heap, $h1: Heap, this: ref, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.C.QInClass($h1, this, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.C())
       && (_module.C.QInClass#canCall($h0, this, a#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == a#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.C.QInClass($h0, this, a#0) == _module.C.QInClass($h1, this, a#0));

function _module.C.QInClass#requires(Heap, ref, ref) : bool;

// #requires axiom for _module.C.QInClass
axiom (forall $Heap: Heap, this: ref, a#0: ref :: 
  { _module.C.QInClass#requires($Heap, this, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.C())
       && $IsAlloc(this, Tclass._module.C(), $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.C.QInClass#requires($Heap, this, a#0) == true);

procedure {:verboseName "C.QInClass (well-formedness)"} CheckWellformed$$_module.C.QInClass(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    a#0: ref where $Is(a#0, Tclass._System.array(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.C.StaticQInClass
function _module.C.StaticQInClass($heap: Heap, a#0: ref) : bool;

function _module.C.StaticQInClass#canCall($heap: Heap, a#0: ref) : bool;

// frame axiom for _module.C.StaticQInClass
axiom (forall $h0: Heap, $h1: Heap, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.C.StaticQInClass($h1, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.C.StaticQInClass#canCall($h0, a#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == a#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.C.StaticQInClass($h0, a#0) == _module.C.StaticQInClass($h1, a#0));

function _module.C.StaticQInClass#requires(Heap, ref) : bool;

// #requires axiom for _module.C.StaticQInClass
axiom (forall $Heap: Heap, a#0: ref :: 
  { _module.C.StaticQInClass#requires($Heap, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.C.StaticQInClass#requires($Heap, a#0) == true);

procedure {:verboseName "C.StaticQInClass (well-formedness)"} CheckWellformed$$_module.C.StaticQInClass(a#0: ref where $Is(a#0, Tclass._System.array(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.C.R
function _module.C.R($heap: Heap, this: ref, y#0: int) : bool;

function _module.C.R#canCall($heap: Heap, this: ref, y#0: int) : bool;

// frame axiom for _module.C.R
axiom (forall $h0: Heap, $h1: Heap, this: ref, y#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.C.R($h1, this, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.C.R($h0, this, y#0) == _module.C.R($h1, this, y#0));

function _module.C.R#requires(Heap, ref, int) : bool;

// #requires axiom for _module.C.R
axiom (forall $Heap: Heap, this: ref, y#0: int :: 
  { _module.C.R#requires($Heap, this, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.C())
       && $IsAlloc(this, Tclass._module.C(), $Heap)
     ==> _module.C.R#requires($Heap, this, y#0) == true);

procedure {:verboseName "C.R (well-formedness)"} CheckWellformed$$_module.C.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.R (well-formedness)"} CheckWellformed$$_module.C.R(this: ref, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    b$reqreads#0 := $_ReadsFrame[this, _module.C.x];
    assume true;
    assert {:id "id171"} b$reqreads#0;
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
        assume false;
    }
}



// $Is axiom for non-null type _module.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C()) } { $Is(c#0, Tclass._module.C?()) } 
  $Is(c#0, Tclass._module.C()) <==> $Is(c#0, Tclass._module.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C?(), $h));

const unique class._module.Iter?: ClassName;

function Tclass._module.Iter?() : Ty
uses {
// Tclass._module.Iter? Tag
axiom Tag(Tclass._module.Iter?()) == Tagclass._module.Iter?
   && TagFamily(Tclass._module.Iter?()) == tytagFamily$Iter;
}

const unique Tagclass._module.Iter?: TyTag;

// Box/unbox axiom for Tclass._module.Iter?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Iter?()) } 
  $IsBox(bx, Tclass._module.Iter?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Iter?()));

// $Is axiom for iterator Iter
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Iter?()) } 
  $Is($o, Tclass._module.Iter?())
     <==> $o == null || dtype($o) == Tclass._module.Iter?());

// $IsAlloc axiom for iterator Iter
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Iter?(), $h) } 
  $IsAlloc($o, Tclass._module.Iter?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.Iter.__reads(ref) : Set;

// Iter._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.Iter.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.Iter?()
     ==> $Is(_module.Iter.__reads($o), TSet(Tclass._System.object?())));

// Iter._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.Iter.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Iter.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.Iter.__modifies(ref) : Set;

// Iter._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.Iter.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.Iter?()
     ==> $Is(_module.Iter.__modifies($o), TSet(Tclass._System.object?())));

// Iter._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.Iter.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Iter.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.Iter.__new: Field
uses {
axiom FDim(_module.Iter.__new) == 0
   && FieldOfDecl(class._module.Iter?, field$_new) == _module.Iter.__new
   && $IsGhostField(_module.Iter.__new);
}

// Iter._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Iter?()
     ==> $Is($Unbox(read($h, $o, _module.Iter.__new)): Set, TSet(Tclass._System.object?())));

// Iter._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Iter.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

procedure {:verboseName "Iter._ctor (well-formedness)"} CheckWellFormed$$_module.Iter.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Iter() : Ty
uses {
// Tclass._module.Iter Tag
axiom Tag(Tclass._module.Iter()) == Tagclass._module.Iter
   && TagFamily(Tclass._module.Iter()) == tytagFamily$Iter;
}

const unique Tagclass._module.Iter: TyTag;

// Box/unbox axiom for Tclass._module.Iter
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Iter()) } 
  $IsBox(bx, Tclass._module.Iter())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Iter()));

procedure {:verboseName "Iter._ctor (call)"} Call$$_module.Iter.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter())
         && $IsAlloc(this, Tclass._module.Iter(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Iter.Valid#canCall($Heap, this);
  ensures {:id "id176"} _module.Iter.Valid($Heap, this);
  free ensures true;
  ensures {:id "id177"} Set#Equal(_module.Iter.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id178"} Set#Equal(_module.Iter.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id179"} Set#Equal($Unbox(read($Heap, this, _module.Iter.__new)): Set, Set#Empty(): Set);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Iter.Valid
function _module.Iter.Valid($heap: Heap, this: ref) : bool;

function _module.Iter.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Iter.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Iter.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Iter())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.Iter.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.Iter.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Iter.Valid($h0, this) == _module.Iter.Valid($h1, this));

function _module.Iter.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Iter.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Iter.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Iter())
       && $IsAlloc(this, Tclass._module.Iter(), $Heap)
     ==> _module.Iter.Valid#requires($Heap, this) == true);

procedure {:verboseName "Iter.Valid (well-formedness)"} CheckWellformed$$_module.Iter.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter())
         && $IsAlloc(this, Tclass._module.Iter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Iter.Valid (well-formedness)"} CheckWellformed$$_module.Iter.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.Iter.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Iter.__new];
    assert {:id "id180"} b$reqreads#0;
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



procedure {:verboseName "Iter.MoveNext (call)"} Call$$_module.Iter.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter())
         && $IsAlloc(this, Tclass._module.Iter(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id181"} _module.Iter.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id182"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Iter.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Iter.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id183"} !Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.Iter.Valid#canCall($Heap, this);
  ensures {:id "id184"} more#0 ==> _module.Iter.Valid($Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.Iter.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Iter.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Iter
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Iter()) } { $Is(c#0, Tclass._module.Iter?()) } 
  $Is(c#0, Tclass._module.Iter())
     <==> $Is(c#0, Tclass._module.Iter?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Iter
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Iter(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Iter?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Iter(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Iter?(), $h));

procedure {:verboseName "Iter (well-formedness)"} CheckWellFormed$$_module.Iter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter())
         && $IsAlloc(this, Tclass._module.Iter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Iter (correctness)"} Impl$$_module.Iter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter())
         && $IsAlloc(this, Tclass._module.Iter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class._module.D?: ClassName;

function Tclass._module.D?() : Ty
uses {
// Tclass._module.D? Tag
axiom Tag(Tclass._module.D?()) == Tagclass._module.D?
   && TagFamily(Tclass._module.D?()) == tytagFamily$D;
}

const unique Tagclass._module.D?: TyTag;

// Box/unbox axiom for Tclass._module.D?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.D?()) } 
  $IsBox(bx, Tclass._module.D?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.D?()));

// $Is axiom for class D
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.D?()) } 
  $Is($o, Tclass._module.D?()) <==> $o == null || dtype($o) == Tclass._module.D?());

// $IsAlloc axiom for class D
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.D?(), $h) } 
  $IsAlloc($o, Tclass._module.D?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.D.data: Field
uses {
axiom FDim(_module.D.data) == 0
   && FieldOfDecl(class._module.D?, field$data) == _module.D.data
   && !$IsGhostField(_module.D.data);
}

// D.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.D.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.D?()
     ==> $Is($Unbox(read($h, $o, _module.D.data)): int, TInt));

// D.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.D.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.D?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.D.data)): int, TInt, $h));

function _module.D.N(this: ref) : int
uses {
// D.N: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.D.N($o) } 
    $o != null && dtype($o) == Tclass._module.D?() ==> $Is(_module.D.N($o), TInt));
// D.N: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.D.N($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.D?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.D.N($o), TInt, $h));
}

const _module.D.arr: Field
uses {
axiom FDim(_module.D.arr) == 0
   && FieldOfDecl(class._module.D?, field$arr) == _module.D.arr
   && !$IsGhostField(_module.D.arr);
}

// D.arr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.D.arr)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.D?()
     ==> $Is($Unbox(read($h, $o, _module.D.arr)): ref, Tclass._System.array(TReal)));

// D.arr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.D.arr)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.D?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.D.arr)): ref, Tclass._System.array(TReal), $h));

procedure {:verboseName "D.TestFields (well-formedness)"} CheckWellFormed$$_module.D.TestFields(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.TestFields (well-formedness)"} CheckWellFormed$$_module.D.TestFields(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: TestFields, CheckWellFormed$$_module.D.TestFields
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id194"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assume {:id "id195"} $Unbox(read($Heap, this, _module.D.data)): int
       == $Unbox(read(old($Heap), this, _module.D.data)): int;
    assert {:id "id196"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assume {:id "id197"} _module.D.N(this) == _module.D.N(this);
}



procedure {:verboseName "D.TestFields (call)"} Call$$_module.D.TestFields(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id198"} $Unbox(read($Heap, this, _module.D.data)): int
     == $Unbox(read(old($Heap), this, _module.D.data)): int;
  free ensures true;
  ensures {:id "id199"} _module.D.N(this) == _module.D.N(this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "D.TestFields (correctness)"} Impl$$_module.D.TestFields(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id200"} $Unbox(read($Heap, this, _module.D.data)): int
     == $Unbox(read(old($Heap), this, _module.D.data)): int;
  free ensures true;
  ensures {:id "id201"} _module.D.N(this) == _module.D.N(this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.TestFields (correctness)"} Impl$$_module.D.TestFields(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestFields, Impl$$_module.D.TestFields
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "D.TestArrayElements (well-formedness)"} CheckWellFormed$$_module.D.TestArrayElements(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    j#0: int where LitInt(0) <= j#0, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TReal))
         && $IsAlloc(a#0, Tclass._System.array(TReal), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.TestArrayElements (well-formedness)"} CheckWellFormed$$_module.D.TestArrayElements(this: ref, j#0: int, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: TestArrayElements, CheckWellFormed$$_module.D.TestArrayElements
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id202"} a#0 != null;
    assume {:id "id203"} j#0 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id204"} a#0 != null;
    assert {:id "id205"} a#0 != null;
    assert {:id "id206"} $IsAlloc(a#0, Tclass._System.array(TReal), old($Heap));
    assume {:id "id207"} _System.array.Length(a#0) == _System.array.Length(a#0);
    assert {:id "id208"} a#0 != null;
    assert {:id "id209"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id210"} a#0 != null;
    assert {:id "id211"} $IsAlloc(a#0, Tclass._System.array?(TReal), old($Heap));
    assert {:id "id212"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume {:id "id213"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
       == $Unbox(read(old($Heap), a#0, IndexField(j#0))): real;
    assert {:id "id214"} a#0 != null;
    assert {:id "id215"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id216"} a#0 != null;
    assert {:id "id217"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume {:id "id218"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
       == $Unbox(read($Heap, a#0, IndexField(j#0))): real;
    assert {:id "id219"} a#0 != null;
    assert {:id "id220"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id221"} a#0 != null;
    assert {:id "id222"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume {:id "id223"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
       == $Unbox(read($Heap, a#0, IndexField(j#0))): real;
}



procedure {:verboseName "D.TestArrayElements (call)"} Call$$_module.D.TestArrayElements(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    j#0: int where LitInt(0) <= j#0, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TReal))
         && $IsAlloc(a#0, Tclass._System.array(TReal), $Heap));
  // user-defined preconditions
  requires {:id "id224"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id225"} _System.array.Length(a#0) == _System.array.Length(a#0);
  free ensures true;
  ensures {:id "id226"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): real;
  free ensures true;
  ensures {:id "id227"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
     == $Unbox(read($Heap, a#0, IndexField(j#0))): real;
  free ensures true;
  ensures {:id "id228"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
     == $Unbox(read($Heap, a#0, IndexField(j#0))): real;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "D.TestArrayElements (correctness)"} Impl$$_module.D.TestArrayElements(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    j#0: int where LitInt(0) <= j#0, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TReal))
         && $IsAlloc(a#0, Tclass._System.array(TReal), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id229"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id230"} _System.array.Length(a#0) == _System.array.Length(a#0);
  free ensures true;
  ensures {:id "id231"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): real;
  free ensures true;
  ensures {:id "id232"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
     == $Unbox(read($Heap, a#0, IndexField(j#0))): real;
  free ensures true;
  ensures {:id "id233"} $Unbox(read($Heap, a#0, IndexField(j#0))): real
     == $Unbox(read($Heap, a#0, IndexField(j#0))): real;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.TestArrayElements (correctness)"} Impl$$_module.D.TestArrayElements(this: ref, j#0: int, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestArrayElements, Impl$$_module.D.TestArrayElements
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "D.MoreArrays (well-formedness)"} CheckWellFormed$$_module.D.MoreArrays(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TReal))
         && $IsAlloc(b#0, Tclass._System.array(TReal), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.MoreArrays (well-formedness)"} CheckWellFormed$$_module.D.MoreArrays(this: ref, b#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#Z#0: ref;
  var j#Z#0: int;
  var let#0#0#0: ref;
  var let#0#1#0: int;


    // AddMethodImpl: MoreArrays, CheckWellFormed$$_module.D.MoreArrays
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == $Unbox(read($Heap, this, _module.D.arr)): ref);
    assume {:id "id234"} LitInt(0) <= $Unbox(read($Heap, this, _module.D.data)): int;
    assert {:id "id235"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
    if ($Unbox(read($Heap, this, _module.D.data)): int + 1
       < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref))
    {
        assert {:id "id236"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        assert {:id "id237"} b#0 != null;
    }

    assume {:id "id238"} $Unbox(read($Heap, this, _module.D.data)): int + 1
         < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref)
       && _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref)
         == _System.array.Length(b#0);
    assert {:id "id239"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
    assert {:id "id240"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
       && $Unbox(read($Heap, this, _module.D.data)): int
         < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    if (LitReal(1e0)
       <= $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.D.arr)): ref, 
          IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real)
    {
        assert {:id "id241"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        assert {:id "id242"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
           && $Unbox(read($Heap, this, _module.D.data)): int
             < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
        assert {:id "id243"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        assert {:id "id244"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int + 1
           && $Unbox(read($Heap, this, _module.D.data)): int + 1
             < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    }

    if (LitReal(1e0)
         <= $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       && $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
         < $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real)
    {
        assert {:id "id245"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        assert {:id "id246"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int + 1
           && $Unbox(read($Heap, this, _module.D.data)): int + 1
             < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    }

    assume {:id "id247"} LitReal(1e0)
         <= $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       && $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
         < $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
       && $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.D.arr)): ref, 
            IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
         < 2e0;
    assert {:id "id248"} b#0 != null;
    assert {:id "id249"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
       && $Unbox(read($Heap, this, _module.D.data)): int < _System.array.Length(b#0);
    if (LitReal(4e0)
       <= $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real)
    {
        assert {:id "id250"} b#0 != null;
        assert {:id "id251"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
           && $Unbox(read($Heap, this, _module.D.data)): int < _System.array.Length(b#0);
        assert {:id "id252"} b#0 != null;
        assert {:id "id253"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int + 1
           && $Unbox(read($Heap, this, _module.D.data)): int + 1 < _System.array.Length(b#0);
    }

    if (LitReal(4e0)
         <= $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       && $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
         < $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real)
    {
        assert {:id "id254"} b#0 != null;
        assert {:id "id255"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int + 1
           && $Unbox(read($Heap, this, _module.D.data)): int + 1 < _System.array.Length(b#0);
    }

    assume {:id "id256"} LitReal(4e0)
         <= $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       && $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
         < $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
       && $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
         < 5e0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == this
           || $o == $Unbox(read(old($Heap), this, _module.D.arr)): ref);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id257"} $Unbox(read($Heap, this, _module.D.arr)): ref == b#0;
    assert {:id "id258"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assume {:id "id259"} $Unbox(read($Heap, this, _module.D.data)): int
       == $Unbox(read(old($Heap), this, _module.D.data)): int + 1;
    assert {:id "id260"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
    assert {:id "id261"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
       && $Unbox(read($Heap, this, _module.D.data)): int
         < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    assert {:id "id262"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assert {:id "id263"} $Unbox(read(old($Heap), this, _module.D.arr)): ref != null;
    assert {:id "id264"} $IsAlloc($Unbox(read(old($Heap), this, _module.D.arr)): ref, 
      Tclass._System.array?(TReal), 
      old($Heap));
    assert {:id "id265"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assert {:id "id266"} 0 <= $Unbox(read(old($Heap), this, _module.D.data)): int
       && $Unbox(read(old($Heap), this, _module.D.data)): int
         < _System.array.Length($Unbox(read(old($Heap), this, _module.D.arr)): ref);
    assume {:id "id267"} $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.D.arr)): ref, 
          IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       != $Unbox(read(old($Heap), 
          $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
          IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real;
    assert {:id "id268"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
    assert {:id "id269"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
       && $Unbox(read($Heap, this, _module.D.data)): int
         < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    assert {:id "id270"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assert {:id "id271"} $Unbox(read(old($Heap), this, _module.D.arr)): ref != null;
    assert {:id "id272"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
       && $Unbox(read($Heap, this, _module.D.data)): int
         < _System.array.Length($Unbox(read(old($Heap), this, _module.D.arr)): ref);
    assume {:id "id273"} $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.D.arr)): ref, 
          IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       != $Unbox(read($Heap, 
          $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
          IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
    assert {:id "id274"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
    assert {:id "id275"} 0 <= $Unbox(read($Heap, this, _module.D.data)): int
       && $Unbox(read($Heap, this, _module.D.data)): int
         < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    assert {:id "id276"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
    assert {:id "id277"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assert {:id "id278"} 0 <= $Unbox(read(old($Heap), this, _module.D.data)): int
       && $Unbox(read(old($Heap), this, _module.D.data)): int
         < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
    assume {:id "id279"} $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.D.arr)): ref, 
          IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
       != $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.D.arr)): ref, 
          IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real;
    havoc a#Z#0;
    havoc j#Z#0;
    assume {:id "id280"} let#0#0#0 == $Unbox(read($Heap, this, _module.D.arr)): ref;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._System.array(TReal));
    assume {:id "id281"} a#Z#0 == let#0#0#0;
    assume {:id "id282"} let#0#1#0 == $Unbox(read($Heap, this, _module.D.data)): int;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#1#0, TInt);
    assume {:id "id283"} j#Z#0 == let#0#1#0;
    assert {:id "id284"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assert {:id "id285"} $Unbox(read(old($Heap), this, _module.D.arr)): ref != null;
    assert {:id "id286"} $IsAlloc($Unbox(read(old($Heap), this, _module.D.arr)): ref, 
      Tclass._System.array?(TReal), 
      old($Heap));
    assert {:id "id287"} $IsAlloc(this, Tclass._module.D(), old($Heap));
    assert {:id "id288"} 0 <= $Unbox(read(old($Heap), this, _module.D.data)): int
       && $Unbox(read(old($Heap), this, _module.D.data)): int
         < _System.array.Length($Unbox(read(old($Heap), this, _module.D.arr)): ref);
    assert {:id "id289"} a#Z#0 != null;
    assert {:id "id290"} $IsAlloc(a#Z#0, Tclass._System.array?(TReal), old($Heap));
    assert {:id "id291"} 0 <= j#Z#0 && j#Z#0 < _System.array.Length(a#Z#0);
    assume {:id "id292"} (var a#0, j#0 := $Unbox(read($Heap, this, _module.D.arr)): ref, 
        $Unbox(read($Heap, this, _module.D.data)): int; 
      $Unbox(read(old($Heap), 
            $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
            IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real
         != $Unbox(read(old($Heap), a#0, IndexField(j#0))): real);
}



procedure {:verboseName "D.MoreArrays (call)"} Call$$_module.D.MoreArrays(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TReal))
         && $IsAlloc(b#0, Tclass._System.array(TReal), $Heap));
  // user-defined preconditions
  requires {:id "id293"} LitInt(0) <= $Unbox(read($Heap, this, _module.D.data)): int;
  requires {:id "id294"} $Unbox(read($Heap, this, _module.D.data)): int + 1
     < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
  requires {:id "id295"} _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref)
     == _System.array.Length(b#0);
  requires {:id "id296"} LitReal(1e0)
     <= $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
  requires {:id "id297"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     < $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real;
  requires {:id "id298"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
     < 2e0;
  requires {:id "id299"} LitReal(4e0)
     <= $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
  requires {:id "id300"} $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     < $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real;
  requires {:id "id301"} $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
     < 5e0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id302"} $Unbox(read($Heap, this, _module.D.arr)): ref == b#0;
  ensures {:id "id303"} $Unbox(read($Heap, this, _module.D.data)): int
     == $Unbox(read(old($Heap), this, _module.D.data)): int + 1;
  free ensures true;
  ensures {:id "id304"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     != $Unbox(read(old($Heap), 
        $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
        IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real;
  free ensures true;
  ensures {:id "id305"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     != $Unbox(read($Heap, 
        $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
  free ensures true;
  ensures {:id "id306"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     != $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real;
  free ensures true;
  ensures {:id "id307"} (var a#0, j#0 := $Unbox(read($Heap, this, _module.D.arr)): ref, 
      $Unbox(read($Heap, this, _module.D.data)): int; 
    $Unbox(read(old($Heap), 
          $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
          IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real
       != $Unbox(read(old($Heap), a#0, IndexField(j#0))): real);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || $o == $Unbox(read(old($Heap), this, _module.D.arr)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "D.MoreArrays (correctness)"} Impl$$_module.D.MoreArrays(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TReal))
         && $IsAlloc(b#0, Tclass._System.array(TReal), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id308"} LitInt(0) <= $Unbox(read($Heap, this, _module.D.data)): int;
  requires {:id "id309"} $Unbox(read($Heap, this, _module.D.data)): int + 1
     < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
  requires {:id "id310"} _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref)
     == _System.array.Length(b#0);
  requires {:id "id311"} LitReal(1e0)
     <= $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
  requires {:id "id312"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     < $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real;
  requires {:id "id313"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
     < 2e0;
  requires {:id "id314"} LitReal(4e0)
     <= $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
  requires {:id "id315"} $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     < $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real;
  requires {:id "id316"} $Unbox(read($Heap, b#0, IndexField($Unbox(read($Heap, this, _module.D.data)): int + 1))): real
     < 5e0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id317"} $Unbox(read($Heap, this, _module.D.arr)): ref == b#0;
  ensures {:id "id318"} $Unbox(read($Heap, this, _module.D.data)): int
     == $Unbox(read(old($Heap), this, _module.D.data)): int + 1;
  free ensures true;
  ensures {:id "id319"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     != $Unbox(read(old($Heap), 
        $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
        IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real;
  free ensures true;
  ensures {:id "id320"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     != $Unbox(read($Heap, 
        $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real;
  free ensures true;
  ensures {:id "id321"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read($Heap, this, _module.D.data)): int))): real
     != $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.D.arr)): ref, 
        IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real;
  free ensures true;
  ensures {:id "id322"} (var a#0, j#0 := $Unbox(read($Heap, this, _module.D.arr)): ref, 
      $Unbox(read($Heap, this, _module.D.data)): int; 
    $Unbox(read(old($Heap), 
          $Unbox(read(old($Heap), this, _module.D.arr)): ref, 
          IndexField($Unbox(read(old($Heap), this, _module.D.data)): int))): real
       != $Unbox(read(old($Heap), a#0, IndexField(j#0))): real);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || $o == $Unbox(read(old($Heap), this, _module.D.arr)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.MoreArrays (correctness)"} Impl$$_module.D.MoreArrays(this: ref, b#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var $rhs#0: ref;
  var $rhs#1: int;

    // AddMethodImpl: MoreArrays, Impl$$_module.D.MoreArrays
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == $Unbox(read($Heap, this, _module.D.arr)): ref);
    $_reverifyPost := false;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(113,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
            assert {:id "id323"} {:subsumption 0} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        }

        assume true;
        assume LitInt(0) <= i#0_0
           && i#0_0 < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
        assert {:id "id324"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        assert {:id "id325"} {:subsumption 0} 0 <= i#0_0
           && i#0_0 < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
        assume true;
        assert {:id "id326"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.D.arr)): ref, IndexField(i#0_0)];
        assert {:id "id327"} $Unbox(read($Heap, this, _module.D.arr)): ref != null;
        assert {:id "id328"} {:subsumption 0} 0 <= i#0_0
           && i#0_0 < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
        assume true;
        havoc i#0_1;
        assume true;
        assume LitInt(0) <= i#0_1
           && i#0_1 < _System.array.Length($Unbox(read($Heap, this, _module.D.arr)): ref);
        assume i#0_0 != i#0_1;
        assert {:id "id329"} $Unbox(read($Heap, this, _module.D.arr)): ref
             != $Unbox(read($Heap, this, _module.D.arr)): ref
           || IndexField(i#0_0) != IndexField(i#0_1)
           || 2e0
               * $Unbox(read($Heap, $Unbox(read($Heap, this, _module.D.arr)): ref, IndexField(i#0_0))): real
             == 2e0
               * $Unbox(read($Heap, $Unbox(read($Heap, this, _module.D.arr)): ref, IndexField(i#0_1))): real;
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
                 && i#0_2 < _System.array.Length($Unbox(read($prevHeap, this, _module.D.arr)): ref)
                 && $o == $Unbox(read($prevHeap, this, _module.D.arr)): ref
                 && $f == IndexField(i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, $Unbox(read($prevHeap, this, _module.D.arr)): ref, IndexField(i#inv#0_0)) } 
          LitInt(0) <= i#inv#0_0
               && i#inv#0_0
                 < _System.array.Length($Unbox(read($prevHeap, this, _module.D.arr)): ref)
             ==> read($Heap, $Unbox(read($prevHeap, this, _module.D.arr)): ref, IndexField(i#inv#0_0))
               == $Box(2e0
                   * $Unbox(read($prevHeap, 
                      $Unbox(read($prevHeap, this, _module.D.arr)): ref, 
                      IndexField(i#inv#0_0))): real));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(116,9)
    assume true;
    assert {:id "id330"} $_ModifiesFrame[this, _module.D.arr];
    assume true;
    $rhs#0 := b#0;
    $Heap := update($Heap, this, _module.D.arr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-1989.dfy(117,10)
    assume true;
    assert {:id "id333"} $_ModifiesFrame[this, _module.D.data];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.D.data)): int + 1;
    $Heap := update($Heap, this, _module.D.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "D.TestMatrixElements (well-formedness)"} CheckWellFormed$$_module.D.TestMatrixElements(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(TReal))
         && $IsAlloc(m#0, Tclass._System.array2(TReal), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.TestMatrixElements (well-formedness)"} CheckWellFormed$$_module.D.TestMatrixElements(this: ref, i#0: int, j#0: int, m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: TestMatrixElements, CheckWellFormed$$_module.D.TestMatrixElements
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id336"} m#0 != null;
    assume {:id "id337"} i#0 < _System.array2.Length0(m#0);
    assert {:id "id338"} m#0 != null;
    assume {:id "id339"} j#0 < _System.array2.Length1(m#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id340"} m#0 != null;
    assert {:id "id341"} m#0 != null;
    assert {:id "id342"} $IsAlloc(m#0, Tclass._System.array2(TReal), old($Heap));
    assume {:id "id343"} _System.array2.Length0(m#0) == _System.array2.Length1(m#0);
    assert {:id "id344"} m#0 != null;
    assert {:id "id345"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
    assert {:id "id346"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    assert {:id "id347"} m#0 != null;
    assert {:id "id348"} $IsAlloc(m#0, Tclass._System.array2(TReal), old($Heap));
    assert {:id "id349"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
    assert {:id "id350"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    assume {:id "id351"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
       == $Unbox(read(old($Heap), m#0, MultiIndexField(IndexField(i#0), j#0))): real;
    assert {:id "id352"} m#0 != null;
    assert {:id "id353"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
    assert {:id "id354"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    assert {:id "id355"} m#0 != null;
    assert {:id "id356"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
    assert {:id "id357"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    assume {:id "id358"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
       == $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real;
    assert {:id "id359"} m#0 != null;
    assert {:id "id360"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
    assert {:id "id361"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    assert {:id "id362"} m#0 != null;
    assert {:id "id363"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
    assert {:id "id364"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    assume {:id "id365"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
       == $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real;
}



procedure {:verboseName "D.TestMatrixElements (call)"} Call$$_module.D.TestMatrixElements(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(TReal))
         && $IsAlloc(m#0, Tclass._System.array2(TReal), $Heap));
  // user-defined preconditions
  requires {:id "id366"} i#0 < _System.array2.Length0(m#0);
  requires {:id "id367"} j#0 < _System.array2.Length1(m#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id368"} _System.array2.Length0(m#0) == _System.array2.Length1(m#0);
  free ensures true;
  ensures {:id "id369"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
     == $Unbox(read(old($Heap), m#0, MultiIndexField(IndexField(i#0), j#0))): real;
  free ensures true;
  ensures {:id "id370"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
     == $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real;
  free ensures true;
  ensures {:id "id371"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
     == $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "D.TestMatrixElements (correctness)"} Impl$$_module.D.TestMatrixElements(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(TReal))
         && $IsAlloc(m#0, Tclass._System.array2(TReal), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id372"} i#0 < _System.array2.Length0(m#0);
  requires {:id "id373"} j#0 < _System.array2.Length1(m#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id374"} _System.array2.Length0(m#0) == _System.array2.Length1(m#0);
  free ensures true;
  ensures {:id "id375"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
     == $Unbox(read(old($Heap), m#0, MultiIndexField(IndexField(i#0), j#0))): real;
  free ensures true;
  ensures {:id "id376"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
     == $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real;
  free ensures true;
  ensures {:id "id377"} $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real
     == $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): real;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "D.TestMatrixElements (correctness)"} Impl$$_module.D.TestMatrixElements(this: ref, i#0: int, j#0: int, m#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMatrixElements, Impl$$_module.D.TestMatrixElements
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "D.Lemma (well-formedness)"} CheckWellFormed$$_module.D.Lemma(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "D.Lemma (call)"} Call$$_module.D.Lemma(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    y#0: int);
  // user-defined preconditions
  requires {:id "id379"} $Unbox(read($Heap, this, _module.D.data)): int == y#0;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "D.Lemma (correctness)"} Impl$$_module.D.Lemma(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.D())
         && $IsAlloc(this, Tclass._module.D(), $Heap), 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id380"} $Unbox(read($Heap, this, _module.D.data)): int == y#0;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// $Is axiom for non-null type _module.D
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.D()) } { $Is(c#0, Tclass._module.D?()) } 
  $Is(c#0, Tclass._module.D()) <==> $Is(c#0, Tclass._module.D?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.D
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.D(), $h) } 
    { $IsAlloc(c#0, Tclass._module.D?(), $h) } 
  $IsAlloc(c#0, Tclass._module.D(), $h)
     <==> $IsAlloc(c#0, Tclass._module.D?(), $h));

const unique class.Test.__default: ClassName;

// function declaration for Test._default.arrSet
function Test.__default.arrSet($heap: Heap, a#0: ref) : Set;

function Test.__default.arrSet#canCall($heap: Heap, a#0: ref) : bool;

function Tclass.Test.C() : Ty
uses {
// Tclass.Test.C Tag
axiom Tag(Tclass.Test.C()) == Tagclass.Test.C
   && TagFamily(Tclass.Test.C()) == tytagFamily$C;
}

const unique Tagclass.Test.C: TyTag;

// Box/unbox axiom for Tclass.Test.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Test.C()) } 
  $IsBox(bx, Tclass.Test.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Test.C()));

// frame axiom for Test.__default.arrSet
axiom (forall $h0: Heap, $h1: Heap, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Test.__default.arrSet($h1, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Test.__default.arrSet#canCall($h0, a#0)
         || $Is(a#0, Tclass._System.array(Tclass.Test.C())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == a#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Test.__default.arrSet($h0, a#0) == Test.__default.arrSet($h1, a#0));

// consequence axiom for Test.__default.arrSet
axiom (forall $Heap: Heap, a#0: ref :: 
  { Test.__default.arrSet($Heap, a#0) } 
  Test.__default.arrSet#canCall($Heap, a#0)
       || ($IsGoodHeap($Heap)
         && 
        $Is(a#0, Tclass._System.array(Tclass.Test.C()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass.Test.C()), $Heap))
     ==> $Is(Test.__default.arrSet($Heap, a#0), TSet(Tclass._System.object())));

// alloc consequence axiom for Test.__default.arrSet
axiom (forall $Heap: Heap, a#0: ref :: 
  { $IsAlloc(Test.__default.arrSet($Heap, a#0), TSet(Tclass._System.object()), $Heap) } 
  Test.__default.arrSet#canCall($Heap, a#0)
       || ($IsGoodHeap($Heap)
         && 
        $Is(a#0, Tclass._System.array(Tclass.Test.C()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass.Test.C()), $Heap))
     ==> $IsAlloc(Test.__default.arrSet($Heap, a#0), TSet(Tclass._System.object()), $Heap));

function Test.__default.arrSet#requires(Heap, ref) : bool;

// #requires axiom for Test.__default.arrSet
axiom (forall $Heap: Heap, a#0: ref :: 
  { Test.__default.arrSet#requires($Heap, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(a#0, Tclass._System.array(Tclass.Test.C()))
     ==> Test.__default.arrSet#requires($Heap, a#0) == true);

// definition axiom for Test.__default.arrSet (revealed)
axiom {:id "id381"} (forall $Heap: Heap, a#0: ref :: 
  { Test.__default.arrSet($Heap, a#0), $IsGoodHeap($Heap) } 
  Test.__default.arrSet#canCall($Heap, a#0)
       || ($IsGoodHeap($Heap) && $Is(a#0, Tclass._System.array(Tclass.Test.C())))
     ==> Test.__default.arrSet($Heap, a#0)
       == Set#FromBoogieMap((lambda $y#3: Box :: 
          (exists i#3: int :: 
            { $Unbox(read($Heap, a#0, IndexField(i#3))): ref } 
            LitInt(0) <= i#3
               && i#3 < _System.array.Length(a#0)
               && $y#3 == read($Heap, a#0, IndexField(i#3))))));

const unique class.Test.C?: ClassName;

function Tclass.Test.C?() : Ty
uses {
// Tclass.Test.C? Tag
axiom Tag(Tclass.Test.C?()) == Tagclass.Test.C?
   && TagFamily(Tclass.Test.C?()) == tytagFamily$C;
}

const unique Tagclass.Test.C?: TyTag;

// Box/unbox axiom for Tclass.Test.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Test.C?()) } 
  $IsBox(bx, Tclass.Test.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Test.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Test.C?()) } 
  $Is($o, Tclass.Test.C?()) <==> $o == null || dtype($o) == Tclass.Test.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Test.C?(), $h) } 
  $IsAlloc($o, Tclass.Test.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type Test.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Test.C()) } { $Is(c#0, Tclass.Test.C?()) } 
  $Is(c#0, Tclass.Test.C()) <==> $Is(c#0, Tclass.Test.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type Test.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Test.C(), $h) } { $IsAlloc(c#0, Tclass.Test.C?(), $h) } 
  $IsAlloc(c#0, Tclass.Test.C(), $h) <==> $IsAlloc(c#0, Tclass.Test.C?(), $h));

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

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$D: TyTagFamily;

const unique tytagFamily$Iter: TyTagFamily;

const unique field$x: NameFamily;

const unique field$data: NameFamily;

const unique field$_new: NameFamily;

const unique field$arr: NameFamily;
