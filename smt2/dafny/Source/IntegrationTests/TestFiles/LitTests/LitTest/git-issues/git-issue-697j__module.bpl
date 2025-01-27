// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy

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

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(4,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id416"} Call$$Tests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(6,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id417"} Call$$AnotherTest.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(8,28)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id418"} Call$$SubsetTypeSubsetType.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(9,25)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id419"} Call$$SubsetTypeNewtype.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(10,25)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id420"} Call$$NewtypeSubsetType.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(11,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id421"} Call$$NewtypeNewtype.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(13,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id422"} Call$$MoreNativeTypes.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(15,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id423"} Call$$Regressions.__default.Test0();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(16,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id424"} Call$$Regressions.__default.Test1();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-697j.dfy(18,27)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id425"} Call$$EvolvingNativeTypes.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



const unique class.Tests.__default: ClassName;

// function declaration for Tests._default.P
function Tests.__default.P(x#0: int) : bool;

function Tests.__default.P#canCall(x#0: int) : bool;

function Tests.__default.P#requires(int) : bool;

// #requires axiom for Tests.__default.P
axiom (forall x#0: int :: 
  { Tests.__default.P#requires(x#0) } 
  Tests.__default.P#requires(x#0) == true);

// definition axiom for Tests.__default.P (revealed)
axiom {:id "id426"} (forall x#0: int :: 
  { Tests.__default.P(x#0) } 
  Tests.__default.P(x#0) == (x#0 != 3));

// definition axiom for Tests.__default.P for all literals (revealed)
axiom {:id "id427"} (forall x#0: int :: 
  {:weight 3} { Tests.__default.P(LitInt(x#0)) } 
  Tests.__default.P(LitInt(x#0)) == Lit(x#0 != 3));

procedure {:verboseName "Tests.Test (well-formedness)"} CheckWellFormed$$Tests.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Tests.Test (call)"} Call$$Tests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.Tests.PInt() : Ty
uses {
// Tclass.Tests.PInt Tag
axiom Tag(Tclass.Tests.PInt()) == Tagclass.Tests.PInt
   && TagFamily(Tclass.Tests.PInt()) == tytagFamily$PInt;
}

const unique Tagclass.Tests.PInt: TyTag;

// Box/unbox axiom for Tclass.Tests.PInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.PInt()) } 
  $IsBox(bx, Tclass.Tests.PInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Tests.PInt()));

// $Is axiom for subset type Tests.PInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Tests.PInt()) } 
  $Is(x#0, Tclass.Tests.PInt()) <==> Tests.__default.P(x#0));

// $IsAlloc axiom for subset type Tests.PInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Tests.PInt(), $h) } 
  $IsAlloc(x#0, Tclass.Tests.PInt(), $h));

function Tclass.Tests.PNat() : Ty
uses {
// Tclass.Tests.PNat Tag
axiom Tag(Tclass.Tests.PNat()) == Tagclass.Tests.PNat
   && TagFamily(Tclass.Tests.PNat()) == tytagFamily$PNat;
}

const unique Tagclass.Tests.PNat: TyTag;

// Box/unbox axiom for Tclass.Tests.PNat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.PNat()) } 
  $IsBox(bx, Tclass.Tests.PNat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Tests.PNat()));

// $Is axiom for subset type Tests.PNat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Tests.PNat()) } 
  $Is(x#0, Tclass.Tests.PNat()) <==> LitInt(0) <= x#0 && Tests.__default.P(x#0));

// $IsAlloc axiom for subset type Tests.PNat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Tests.PNat(), $h) } 
  $IsAlloc(x#0, Tclass.Tests.PNat(), $h));

function Tclass.Tests.MyPlainInt() : Ty
uses {
// Tclass.Tests.MyPlainInt Tag
axiom Tag(Tclass.Tests.MyPlainInt()) == Tagclass.Tests.MyPlainInt
   && TagFamily(Tclass.Tests.MyPlainInt()) == tytagFamily$MyPlainInt;
}

const unique Tagclass.Tests.MyPlainInt: TyTag;

// Box/unbox axiom for Tclass.Tests.MyPlainInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.MyPlainInt()) } 
  $IsBox(bx, Tclass.Tests.MyPlainInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Tests.MyPlainInt()));

// $Is axiom for newtype Tests.MyPlainInt
axiom (forall c4#0: int :: 
  { $Is(c4#0, Tclass.Tests.MyPlainInt()) } 
  $Is(c4#0, Tclass.Tests.MyPlainInt()) <==> Lit(true));

// $IsAlloc axiom for newtype Tests.MyPlainInt
axiom (forall c5#0: int, $h: Heap :: 
  { $IsAlloc(c5#0, Tclass.Tests.MyPlainInt(), $h) } 
  $IsAlloc(c5#0, Tclass.Tests.MyPlainInt(), $h));

const unique class.Tests.MyPlainInt: ClassName;

function Tclass.Tests.MyPInt() : Ty
uses {
// Tclass.Tests.MyPInt Tag
axiom Tag(Tclass.Tests.MyPInt()) == Tagclass.Tests.MyPInt
   && TagFamily(Tclass.Tests.MyPInt()) == tytagFamily$MyPInt;
}

const unique Tagclass.Tests.MyPInt: TyTag;

// Box/unbox axiom for Tclass.Tests.MyPInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.MyPInt()) } 
  $IsBox(bx, Tclass.Tests.MyPInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Tests.MyPInt()));

// $Is axiom for newtype Tests.MyPInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Tests.MyPInt()) } 
  $Is(x#0, Tclass.Tests.MyPInt()) <==> Tests.__default.P(x#0));

// $IsAlloc axiom for newtype Tests.MyPInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Tests.MyPInt(), $h) } 
  $IsAlloc(x#0, Tclass.Tests.MyPInt(), $h));

const unique class.Tests.MyPInt: ClassName;

function Tclass.Tests.MyPNat() : Ty
uses {
// Tclass.Tests.MyPNat Tag
axiom Tag(Tclass.Tests.MyPNat()) == Tagclass.Tests.MyPNat
   && TagFamily(Tclass.Tests.MyPNat()) == tytagFamily$MyPNat;
}

const unique Tagclass.Tests.MyPNat: TyTag;

// Box/unbox axiom for Tclass.Tests.MyPNat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.MyPNat()) } 
  $IsBox(bx, Tclass.Tests.MyPNat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Tests.MyPNat()));

// $Is axiom for newtype Tests.MyPNat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Tests.MyPNat()) } 
  $Is(x#0, Tclass.Tests.MyPNat()) <==> LitInt(0) <= x#0 && Tests.__default.P(x#0));

// $IsAlloc axiom for newtype Tests.MyPNat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Tests.MyPNat(), $h) } 
  $IsAlloc(x#0, Tclass.Tests.MyPNat(), $h));

const unique class.Tests.MyPNat: ClassName;

const unique class.Tests.Cell?: ClassName;

function Tclass.Tests.Cell?() : Ty
uses {
// Tclass.Tests.Cell? Tag
axiom Tag(Tclass.Tests.Cell?()) == Tagclass.Tests.Cell?
   && TagFamily(Tclass.Tests.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass.Tests.Cell?: TyTag;

// Box/unbox axiom for Tclass.Tests.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.Cell?()) } 
  $IsBox(bx, Tclass.Tests.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Tests.Cell?()));

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Tests.Cell?()) } 
  $Is($o, Tclass.Tests.Cell?())
     <==> $o == null || dtype($o) == Tclass.Tests.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Tests.Cell?(), $h) } 
  $IsAlloc($o, Tclass.Tests.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tests.Cell.k(this: ref) : int;

// Cell.k: Type axiom
axiom (forall $o: ref :: 
  { Tests.Cell.k($o) } 
  $o != null && dtype($o) == Tclass.Tests.Cell?() ==> $Is(Tests.Cell.k($o), TInt));

// Cell.k: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { Tests.Cell.k($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Tests.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(Tests.Cell.k($o), TInt, $h));

function Tclass.Tests.Cell() : Ty
uses {
// Tclass.Tests.Cell Tag
axiom Tag(Tclass.Tests.Cell()) == Tagclass.Tests.Cell
   && TagFamily(Tclass.Tests.Cell()) == tytagFamily$Cell;
}

const unique Tagclass.Tests.Cell: TyTag;

// Box/unbox axiom for Tclass.Tests.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.Cell()) } 
  $IsBox(bx, Tclass.Tests.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Tests.Cell()));

// $Is axiom for non-null type Tests.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Tests.Cell()) } { $Is(c#0, Tclass.Tests.Cell?()) } 
  $Is(c#0, Tclass.Tests.Cell()) <==> $Is(c#0, Tclass.Tests.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type Tests.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Tests.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass.Tests.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass.Tests.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass.Tests.Cell?(), $h));

function Tclass.Tests.Cell5() : Ty
uses {
// Tclass.Tests.Cell5 Tag
axiom Tag(Tclass.Tests.Cell5()) == Tagclass.Tests.Cell5
   && TagFamily(Tclass.Tests.Cell5()) == tytagFamily$Cell5;
}

const unique Tagclass.Tests.Cell5: TyTag;

// Box/unbox axiom for Tclass.Tests.Cell5
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Tests.Cell5()) } 
  $IsBox(bx, Tclass.Tests.Cell5())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Tests.Cell5()));

// $Is axiom for subset type Tests.Cell5
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Tests.Cell5()) } 
  $Is(c#0, Tclass.Tests.Cell5())
     <==> $Is(c#0, Tclass.Tests.Cell()) && Tests.Cell.k(c#0) == LitInt(5));

// $IsAlloc axiom for subset type Tests.Cell5
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Tests.Cell5(), $h) } 
  $IsAlloc(c#0, Tclass.Tests.Cell5(), $h)
     <==> $IsAlloc(c#0, Tclass.Tests.Cell(), $h));

const unique class.AnotherTest.__default: ClassName;

// function declaration for AnotherTest._default.P
function AnotherTest.__default.P(s#0: Seq) : bool;

function AnotherTest.__default.P#canCall(s#0: Seq) : bool;

function AnotherTest.__default.P#requires(Seq) : bool;

// #requires axiom for AnotherTest.__default.P
axiom (forall s#0: Seq :: 
  { AnotherTest.__default.P#requires(s#0) } 
  $Is(s#0, TSeq(TInt)) ==> AnotherTest.__default.P#requires(s#0) == true);

// definition axiom for AnotherTest.__default.P (revealed)
axiom {:id "id428"} (forall s#0: Seq :: 
  { AnotherTest.__default.P(s#0) } 
  AnotherTest.__default.P#canCall(s#0) || $Is(s#0, TSeq(TInt))
     ==> AnotherTest.__default.P(s#0) == (Seq#Length(s#0) <= LitInt(1)));

// definition axiom for AnotherTest.__default.P for all literals (revealed)
axiom {:id "id429"} (forall s#0: Seq :: 
  {:weight 3} { AnotherTest.__default.P(Lit(s#0)) } 
  AnotherTest.__default.P#canCall(Lit(s#0)) || $Is(s#0, TSeq(TInt))
     ==> AnotherTest.__default.P(Lit(s#0)) == (Seq#Length(Lit(s#0)) <= LitInt(1)));

procedure {:verboseName "AnotherTest.Test (well-formedness)"} CheckWellFormed$$AnotherTest.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AnotherTest.Test (call)"} Call$$AnotherTest.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.AnotherTest.SST() : Ty
uses {
// Tclass.AnotherTest.SST Tag
axiom Tag(Tclass.AnotherTest.SST()) == Tagclass.AnotherTest.SST
   && TagFamily(Tclass.AnotherTest.SST()) == tytagFamily$SST;
}

const unique Tagclass.AnotherTest.SST: TyTag;

// Box/unbox axiom for Tclass.AnotherTest.SST
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AnotherTest.SST()) } 
  $IsBox(bx, Tclass.AnotherTest.SST())
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, Tclass.AnotherTest.SST()));

// $Is axiom for subset type AnotherTest.SST
axiom (forall s#0: Seq :: 
  { $Is(s#0, Tclass.AnotherTest.SST()) } 
  $Is(s#0, Tclass.AnotherTest.SST())
     <==> $Is(s#0, TSeq(TInt)) && AnotherTest.__default.P(s#0));

// $IsAlloc axiom for subset type AnotherTest.SST
axiom (forall s#0: Seq, $h: Heap :: 
  { $IsAlloc(s#0, Tclass.AnotherTest.SST(), $h) } 
  $IsAlloc(s#0, Tclass.AnotherTest.SST(), $h) <==> $IsAlloc(s#0, TSeq(TInt), $h));

const unique class.SubsetTypeSubsetType.__default: ClassName;

// function declaration for SubsetTypeSubsetType._default.P
function SubsetTypeSubsetType.__default.P(x#0: int) : bool;

function SubsetTypeSubsetType.__default.P#canCall(x#0: int) : bool;

function SubsetTypeSubsetType.__default.P#requires(int) : bool;

// #requires axiom for SubsetTypeSubsetType.__default.P
axiom (forall x#0: int :: 
  { SubsetTypeSubsetType.__default.P#requires(x#0) } 
  SubsetTypeSubsetType.__default.P#requires(x#0) == true);

// definition axiom for SubsetTypeSubsetType.__default.P (revealed)
axiom {:id "id430"} (forall x#0: int :: 
  { SubsetTypeSubsetType.__default.P(x#0) } 
  SubsetTypeSubsetType.__default.P(x#0) == (x#0 != 3));

// definition axiom for SubsetTypeSubsetType.__default.P for all literals (revealed)
axiom {:id "id431"} (forall x#0: int :: 
  {:weight 3} { SubsetTypeSubsetType.__default.P(LitInt(x#0)) } 
  SubsetTypeSubsetType.__default.P(LitInt(x#0)) == Lit(x#0 != 3));

// function declaration for SubsetTypeSubsetType._default.Q
function SubsetTypeSubsetType.__default.Q(x#0: int) : bool;

function SubsetTypeSubsetType.__default.Q#canCall(x#0: int) : bool;

function SubsetTypeSubsetType.__default.Q#requires(int) : bool;

// #requires axiom for SubsetTypeSubsetType.__default.Q
axiom (forall x#0: int :: 
  { SubsetTypeSubsetType.__default.Q#requires(x#0) } 
  SubsetTypeSubsetType.__default.Q#requires(x#0) == true);

// definition axiom for SubsetTypeSubsetType.__default.Q (revealed)
axiom {:id "id432"} (forall x#0: int :: 
  { SubsetTypeSubsetType.__default.Q(x#0) } 
  SubsetTypeSubsetType.__default.Q(x#0) == (x#0 != 5));

// definition axiom for SubsetTypeSubsetType.__default.Q for all literals (revealed)
axiom {:id "id433"} (forall x#0: int :: 
  {:weight 3} { SubsetTypeSubsetType.__default.Q(LitInt(x#0)) } 
  SubsetTypeSubsetType.__default.Q(LitInt(x#0)) == Lit(x#0 != 5));

procedure {:verboseName "SubsetTypeSubsetType.Test (well-formedness)"} CheckWellFormed$$SubsetTypeSubsetType.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SubsetTypeSubsetType.Test (call)"} Call$$SubsetTypeSubsetType.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.SubsetTypeSubsetType.NonCompilableTest() : Ty
uses {
// Tclass.SubsetTypeSubsetType.NonCompilableTest Tag
axiom Tag(Tclass.SubsetTypeSubsetType.NonCompilableTest())
     == Tagclass.SubsetTypeSubsetType.NonCompilableTest
   && TagFamily(Tclass.SubsetTypeSubsetType.NonCompilableTest())
     == tytagFamily$NonCompilableTest;
}

const unique Tagclass.SubsetTypeSubsetType.NonCompilableTest: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.NonCompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.NonCompilableTest()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.NonCompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.NonCompilableTest()));

// $Is axiom for subset type SubsetTypeSubsetType.NonCompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTest()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTest())
     <==> SubsetTypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for subset type SubsetTypeSubsetType.NonCompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTest(), $h));

function Tclass.SubsetTypeSubsetType.NonCompilableTestInt32() : Ty
uses {
// Tclass.SubsetTypeSubsetType.NonCompilableTestInt32 Tag
axiom Tag(Tclass.SubsetTypeSubsetType.NonCompilableTestInt32())
     == Tagclass.SubsetTypeSubsetType.NonCompilableTestInt32
   && TagFamily(Tclass.SubsetTypeSubsetType.NonCompilableTestInt32())
     == tytagFamily$NonCompilableTestInt32;
}

const unique Tagclass.SubsetTypeSubsetType.NonCompilableTestInt32: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.NonCompilableTestInt32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32()));

// $Is axiom for subset type SubsetTypeSubsetType.NonCompilableTestInt32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && SubsetTypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for subset type SubsetTypeSubsetType.NonCompilableTestInt32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.NonCompilableTestInt32(), $h));

function Tclass.SubsetTypeSubsetType.Type0() : Ty
uses {
// Tclass.SubsetTypeSubsetType.Type0 Tag
axiom Tag(Tclass.SubsetTypeSubsetType.Type0()) == Tagclass.SubsetTypeSubsetType.Type0
   && TagFamily(Tclass.SubsetTypeSubsetType.Type0()) == tytagFamily$Type0;
}

const unique Tagclass.SubsetTypeSubsetType.Type0: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.Type0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.Type0()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.Type0())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.Type0()));

// $Is axiom for subset type SubsetTypeSubsetType.Type0
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.Type0()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.Type0())
     <==> SubsetTypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for subset type SubsetTypeSubsetType.Type0
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type0(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type0(), $h));

function Tclass.SubsetTypeSubsetType.Type2() : Ty
uses {
// Tclass.SubsetTypeSubsetType.Type2 Tag
axiom Tag(Tclass.SubsetTypeSubsetType.Type2()) == Tagclass.SubsetTypeSubsetType.Type2
   && TagFamily(Tclass.SubsetTypeSubsetType.Type2()) == tytagFamily$Type2;
}

const unique Tagclass.SubsetTypeSubsetType.Type2: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.Type2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.Type2()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.Type2())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.Type2()));

// $Is axiom for subset type SubsetTypeSubsetType.Type2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.Type2()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.Type2())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && SubsetTypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for subset type SubsetTypeSubsetType.Type2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type2(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type2(), $h));

function Tclass.SubsetTypeSubsetType.CompilableTest() : Ty
uses {
// Tclass.SubsetTypeSubsetType.CompilableTest Tag
axiom Tag(Tclass.SubsetTypeSubsetType.CompilableTest())
     == Tagclass.SubsetTypeSubsetType.CompilableTest
   && TagFamily(Tclass.SubsetTypeSubsetType.CompilableTest())
     == tytagFamily$CompilableTest;
}

const unique Tagclass.SubsetTypeSubsetType.CompilableTest: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.CompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.CompilableTest()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.CompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.CompilableTest()));

// $Is axiom for subset type SubsetTypeSubsetType.CompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.CompilableTest()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.CompilableTest())
     <==> SubsetTypeSubsetType.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for subset type SubsetTypeSubsetType.CompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.CompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.CompilableTest(), $h));

function Tclass.SubsetTypeSubsetType.Type4() : Ty
uses {
// Tclass.SubsetTypeSubsetType.Type4 Tag
axiom Tag(Tclass.SubsetTypeSubsetType.Type4()) == Tagclass.SubsetTypeSubsetType.Type4
   && TagFamily(Tclass.SubsetTypeSubsetType.Type4()) == tytagFamily$Type4;
}

const unique Tagclass.SubsetTypeSubsetType.Type4: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.Type4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.Type4()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.Type4())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.Type4()));

// $Is axiom for subset type SubsetTypeSubsetType.Type4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.Type4()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.Type4())
     <==> SubsetTypeSubsetType.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for subset type SubsetTypeSubsetType.Type4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type4(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type4(), $h));

function Tclass.SubsetTypeSubsetType.Type6() : Ty
uses {
// Tclass.SubsetTypeSubsetType.Type6 Tag
axiom Tag(Tclass.SubsetTypeSubsetType.Type6()) == Tagclass.SubsetTypeSubsetType.Type6
   && TagFamily(Tclass.SubsetTypeSubsetType.Type6()) == tytagFamily$Type6;
}

const unique Tagclass.SubsetTypeSubsetType.Type6: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeSubsetType.Type6
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeSubsetType.Type6()) } 
  $IsBox(bx, Tclass.SubsetTypeSubsetType.Type6())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeSubsetType.Type6()));

// $Is axiom for subset type SubsetTypeSubsetType.Type6
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeSubsetType.Type6()) } 
  $Is(x#0, Tclass.SubsetTypeSubsetType.Type6())
     <==> SubsetTypeSubsetType.__default.Q(x#0) && x#0 < 8 && LitInt(0) <= x#0);

// $IsAlloc axiom for subset type SubsetTypeSubsetType.Type6
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type6(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeSubsetType.Type6(), $h));

const unique class.SubsetTypeNewtype.__default: ClassName;

// function declaration for SubsetTypeNewtype._default.P
function SubsetTypeNewtype.__default.P(x#0: int) : bool;

function SubsetTypeNewtype.__default.P#canCall(x#0: int) : bool;

function SubsetTypeNewtype.__default.P#requires(int) : bool;

// #requires axiom for SubsetTypeNewtype.__default.P
axiom (forall x#0: int :: 
  { SubsetTypeNewtype.__default.P#requires(x#0) } 
  SubsetTypeNewtype.__default.P#requires(x#0) == true);

// definition axiom for SubsetTypeNewtype.__default.P (revealed)
axiom {:id "id434"} (forall x#0: int :: 
  { SubsetTypeNewtype.__default.P(x#0) } 
  SubsetTypeNewtype.__default.P(x#0) == (x#0 != 3));

// definition axiom for SubsetTypeNewtype.__default.P for all literals (revealed)
axiom {:id "id435"} (forall x#0: int :: 
  {:weight 3} { SubsetTypeNewtype.__default.P(LitInt(x#0)) } 
  SubsetTypeNewtype.__default.P(LitInt(x#0)) == Lit(x#0 != 3));

// function declaration for SubsetTypeNewtype._default.Q
function SubsetTypeNewtype.__default.Q(x#0: int) : bool;

function SubsetTypeNewtype.__default.Q#canCall(x#0: int) : bool;

function SubsetTypeNewtype.__default.Q#requires(int) : bool;

// #requires axiom for SubsetTypeNewtype.__default.Q
axiom (forall x#0: int :: 
  { SubsetTypeNewtype.__default.Q#requires(x#0) } 
  SubsetTypeNewtype.__default.Q#requires(x#0) == true);

// definition axiom for SubsetTypeNewtype.__default.Q (revealed)
axiom {:id "id436"} (forall x#0: int :: 
  { SubsetTypeNewtype.__default.Q(x#0) } 
  SubsetTypeNewtype.__default.Q(x#0) == (x#0 != 5));

// definition axiom for SubsetTypeNewtype.__default.Q for all literals (revealed)
axiom {:id "id437"} (forall x#0: int :: 
  {:weight 3} { SubsetTypeNewtype.__default.Q(LitInt(x#0)) } 
  SubsetTypeNewtype.__default.Q(LitInt(x#0)) == Lit(x#0 != 5));

procedure {:verboseName "SubsetTypeNewtype.Test (well-formedness)"} CheckWellFormed$$SubsetTypeNewtype.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SubsetTypeNewtype.Test (call)"} Call$$SubsetTypeNewtype.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.SubsetTypeNewtype.NonCompilableTest() : Ty
uses {
// Tclass.SubsetTypeNewtype.NonCompilableTest Tag
axiom Tag(Tclass.SubsetTypeNewtype.NonCompilableTest())
     == Tagclass.SubsetTypeNewtype.NonCompilableTest
   && TagFamily(Tclass.SubsetTypeNewtype.NonCompilableTest())
     == tytagFamily$NonCompilableTest;
}

const unique Tagclass.SubsetTypeNewtype.NonCompilableTest: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.NonCompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.NonCompilableTest()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.NonCompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.NonCompilableTest()));

// $Is axiom for subset type SubsetTypeNewtype.NonCompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.NonCompilableTest()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.NonCompilableTest())
     <==> SubsetTypeNewtype.__default.P(x#0));

// $IsAlloc axiom for subset type SubsetTypeNewtype.NonCompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.NonCompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.NonCompilableTest(), $h));

function Tclass.SubsetTypeNewtype.NonCompilableTestInt32() : Ty
uses {
// Tclass.SubsetTypeNewtype.NonCompilableTestInt32 Tag
axiom Tag(Tclass.SubsetTypeNewtype.NonCompilableTestInt32())
     == Tagclass.SubsetTypeNewtype.NonCompilableTestInt32
   && TagFamily(Tclass.SubsetTypeNewtype.NonCompilableTestInt32())
     == tytagFamily$NonCompilableTestInt32;
}

const unique Tagclass.SubsetTypeNewtype.NonCompilableTestInt32: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.NonCompilableTestInt32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.NonCompilableTestInt32()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.NonCompilableTestInt32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.NonCompilableTestInt32()));

// $Is axiom for subset type SubsetTypeNewtype.NonCompilableTestInt32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.NonCompilableTestInt32()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.NonCompilableTestInt32())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && SubsetTypeNewtype.__default.P(x#0));

// $IsAlloc axiom for subset type SubsetTypeNewtype.NonCompilableTestInt32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.NonCompilableTestInt32(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.NonCompilableTestInt32(), $h));

function Tclass.SubsetTypeNewtype.Type0() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type0 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type0()) == Tagclass.SubsetTypeNewtype.Type0
   && TagFamily(Tclass.SubsetTypeNewtype.Type0()) == tytagFamily$Type0;
}

const unique Tagclass.SubsetTypeNewtype.Type0: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type0()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type0())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type0()));

// $Is axiom for newtype SubsetTypeNewtype.Type0
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.Type0()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.Type0())
     <==> SubsetTypeNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type0
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type0(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type0(), $h));

const unique class.SubsetTypeNewtype.Type0: ClassName;

function Tclass.SubsetTypeNewtype.Type1() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type1 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type1()) == Tagclass.SubsetTypeNewtype.Type1
   && TagFamily(Tclass.SubsetTypeNewtype.Type1()) == tytagFamily$Type1;
}

const unique Tagclass.SubsetTypeNewtype.Type1: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type1()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type1())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type1()));

// $Is axiom for newtype SubsetTypeNewtype.Type1
axiom (forall c6#0: int :: 
  { $Is(c6#0, Tclass.SubsetTypeNewtype.Type1()) } 
  $Is(c6#0, Tclass.SubsetTypeNewtype.Type1())
     <==> SubsetTypeNewtype.__default.P(c6#0));

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type1
axiom (forall c7#0: int, $h: Heap :: 
  { $IsAlloc(c7#0, Tclass.SubsetTypeNewtype.Type1(), $h) } 
  $IsAlloc(c7#0, Tclass.SubsetTypeNewtype.Type1(), $h));

const unique class.SubsetTypeNewtype.Type1: ClassName;

function Tclass.SubsetTypeNewtype.Type2() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type2 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type2()) == Tagclass.SubsetTypeNewtype.Type2
   && TagFamily(Tclass.SubsetTypeNewtype.Type2()) == tytagFamily$Type2;
}

const unique Tagclass.SubsetTypeNewtype.Type2: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type2()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type2())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type2()));

// $Is axiom for newtype SubsetTypeNewtype.Type2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.Type2()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.Type2())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && SubsetTypeNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type2(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type2(), $h));

const unique class.SubsetTypeNewtype.Type2: ClassName;

function Tclass.SubsetTypeNewtype.Type3() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type3 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type3()) == Tagclass.SubsetTypeNewtype.Type3
   && TagFamily(Tclass.SubsetTypeNewtype.Type3()) == tytagFamily$Type3;
}

const unique Tagclass.SubsetTypeNewtype.Type3: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type3()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type3())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type3()));

// $Is axiom for newtype SubsetTypeNewtype.Type3
axiom (forall c10#0: int :: 
  { $Is(c10#0, Tclass.SubsetTypeNewtype.Type3()) } 
  $Is(c10#0, Tclass.SubsetTypeNewtype.Type3())
     <==> LitInt(-2147483648) <= c10#0
       && c10#0 < 2147483648
       && SubsetTypeNewtype.__default.P(c10#0));

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type3
axiom (forall c11#0: int, $h: Heap :: 
  { $IsAlloc(c11#0, Tclass.SubsetTypeNewtype.Type3(), $h) } 
  $IsAlloc(c11#0, Tclass.SubsetTypeNewtype.Type3(), $h));

const unique class.SubsetTypeNewtype.Type3: ClassName;

function Tclass.SubsetTypeNewtype.CompilableTest() : Ty
uses {
// Tclass.SubsetTypeNewtype.CompilableTest Tag
axiom Tag(Tclass.SubsetTypeNewtype.CompilableTest())
     == Tagclass.SubsetTypeNewtype.CompilableTest
   && TagFamily(Tclass.SubsetTypeNewtype.CompilableTest())
     == tytagFamily$CompilableTest;
}

const unique Tagclass.SubsetTypeNewtype.CompilableTest: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.CompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.CompilableTest()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.CompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.CompilableTest()));

// $Is axiom for subset type SubsetTypeNewtype.CompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.CompilableTest()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.CompilableTest())
     <==> SubsetTypeNewtype.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for subset type SubsetTypeNewtype.CompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.CompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.CompilableTest(), $h));

function Tclass.SubsetTypeNewtype.Type4() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type4 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type4()) == Tagclass.SubsetTypeNewtype.Type4
   && TagFamily(Tclass.SubsetTypeNewtype.Type4()) == tytagFamily$Type4;
}

const unique Tagclass.SubsetTypeNewtype.Type4: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type4()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type4())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type4()));

// $Is axiom for newtype SubsetTypeNewtype.Type4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.Type4()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.Type4())
     <==> SubsetTypeNewtype.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type4(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type4(), $h));

const unique class.SubsetTypeNewtype.Type4: ClassName;

function Tclass.SubsetTypeNewtype.Type5() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type5 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type5()) == Tagclass.SubsetTypeNewtype.Type5
   && TagFamily(Tclass.SubsetTypeNewtype.Type5()) == tytagFamily$Type5;
}

const unique Tagclass.SubsetTypeNewtype.Type5: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type5
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type5()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type5())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type5()));

// $Is axiom for newtype SubsetTypeNewtype.Type5
axiom (forall c16#0: int :: 
  { $Is(c16#0, Tclass.SubsetTypeNewtype.Type5()) } 
  $Is(c16#0, Tclass.SubsetTypeNewtype.Type5())
     <==> SubsetTypeNewtype.__default.Q(c16#0) && c16#0 < 8);

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type5
axiom (forall c17#0: int, $h: Heap :: 
  { $IsAlloc(c17#0, Tclass.SubsetTypeNewtype.Type5(), $h) } 
  $IsAlloc(c17#0, Tclass.SubsetTypeNewtype.Type5(), $h));

const unique class.SubsetTypeNewtype.Type5: ClassName;

function Tclass.SubsetTypeNewtype.Type6() : Ty
uses {
// Tclass.SubsetTypeNewtype.Type6 Tag
axiom Tag(Tclass.SubsetTypeNewtype.Type6()) == Tagclass.SubsetTypeNewtype.Type6
   && TagFamily(Tclass.SubsetTypeNewtype.Type6()) == tytagFamily$Type6;
}

const unique Tagclass.SubsetTypeNewtype.Type6: TyTag;

// Box/unbox axiom for Tclass.SubsetTypeNewtype.Type6
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.SubsetTypeNewtype.Type6()) } 
  $IsBox(bx, Tclass.SubsetTypeNewtype.Type6())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.SubsetTypeNewtype.Type6()));

// $Is axiom for newtype SubsetTypeNewtype.Type6
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.SubsetTypeNewtype.Type6()) } 
  $Is(x#0, Tclass.SubsetTypeNewtype.Type6())
     <==> SubsetTypeNewtype.__default.Q(x#0) && x#0 < 8 && LitInt(0) <= x#0);

// $IsAlloc axiom for newtype SubsetTypeNewtype.Type6
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type6(), $h) } 
  $IsAlloc(x#0, Tclass.SubsetTypeNewtype.Type6(), $h));

const unique class.SubsetTypeNewtype.Type6: ClassName;

const unique class.NewtypeSubsetType.__default: ClassName;

// function declaration for NewtypeSubsetType._default.P
function NewtypeSubsetType.__default.P(x#0: int) : bool;

function NewtypeSubsetType.__default.P#canCall(x#0: int) : bool;

function NewtypeSubsetType.__default.P#requires(int) : bool;

// #requires axiom for NewtypeSubsetType.__default.P
axiom (forall x#0: int :: 
  { NewtypeSubsetType.__default.P#requires(x#0) } 
  NewtypeSubsetType.__default.P#requires(x#0) == true);

// definition axiom for NewtypeSubsetType.__default.P (revealed)
axiom {:id "id438"} (forall x#0: int :: 
  { NewtypeSubsetType.__default.P(x#0) } 
  NewtypeSubsetType.__default.P(x#0) == (x#0 != 3));

// definition axiom for NewtypeSubsetType.__default.P for all literals (revealed)
axiom {:id "id439"} (forall x#0: int :: 
  {:weight 3} { NewtypeSubsetType.__default.P(LitInt(x#0)) } 
  NewtypeSubsetType.__default.P(LitInt(x#0)) == Lit(x#0 != 3));

// function declaration for NewtypeSubsetType._default.Q
function NewtypeSubsetType.__default.Q(x#0: int) : bool;

function NewtypeSubsetType.__default.Q#canCall(x#0: int) : bool;

function NewtypeSubsetType.__default.Q#requires(int) : bool;

// #requires axiom for NewtypeSubsetType.__default.Q
axiom (forall x#0: int :: 
  { NewtypeSubsetType.__default.Q#requires(x#0) } 
  NewtypeSubsetType.__default.Q#requires(x#0) == true);

// definition axiom for NewtypeSubsetType.__default.Q (revealed)
axiom {:id "id440"} (forall x#0: int :: 
  { NewtypeSubsetType.__default.Q(x#0) } 
  NewtypeSubsetType.__default.Q(x#0) == (x#0 != 5));

// definition axiom for NewtypeSubsetType.__default.Q for all literals (revealed)
axiom {:id "id441"} (forall x#0: int :: 
  {:weight 3} { NewtypeSubsetType.__default.Q(LitInt(x#0)) } 
  NewtypeSubsetType.__default.Q(LitInt(x#0)) == Lit(x#0 != 5));

procedure {:verboseName "NewtypeSubsetType.Test (well-formedness)"} CheckWellFormed$$NewtypeSubsetType.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewtypeSubsetType.Test (call)"} Call$$NewtypeSubsetType.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.NewtypeSubsetType.NonCompilableTest() : Ty
uses {
// Tclass.NewtypeSubsetType.NonCompilableTest Tag
axiom Tag(Tclass.NewtypeSubsetType.NonCompilableTest())
     == Tagclass.NewtypeSubsetType.NonCompilableTest
   && TagFamily(Tclass.NewtypeSubsetType.NonCompilableTest())
     == tytagFamily$NonCompilableTest;
}

const unique Tagclass.NewtypeSubsetType.NonCompilableTest: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.NonCompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.NonCompilableTest()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.NonCompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.NonCompilableTest()));

// $Is axiom for newtype NewtypeSubsetType.NonCompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.NonCompilableTest()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.NonCompilableTest())
     <==> NewtypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for newtype NewtypeSubsetType.NonCompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.NonCompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.NonCompilableTest(), $h));

const unique class.NewtypeSubsetType.NonCompilableTest: ClassName;

function Tclass.NewtypeSubsetType.NonCompilableTestInt32() : Ty
uses {
// Tclass.NewtypeSubsetType.NonCompilableTestInt32 Tag
axiom Tag(Tclass.NewtypeSubsetType.NonCompilableTestInt32())
     == Tagclass.NewtypeSubsetType.NonCompilableTestInt32
   && TagFamily(Tclass.NewtypeSubsetType.NonCompilableTestInt32())
     == tytagFamily$NonCompilableTestInt32;
}

const unique Tagclass.NewtypeSubsetType.NonCompilableTestInt32: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.NonCompilableTestInt32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.NonCompilableTestInt32()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.NonCompilableTestInt32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.NonCompilableTestInt32()));

// $Is axiom for newtype NewtypeSubsetType.NonCompilableTestInt32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.NonCompilableTestInt32()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.NonCompilableTestInt32())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && NewtypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for newtype NewtypeSubsetType.NonCompilableTestInt32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.NonCompilableTestInt32(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.NonCompilableTestInt32(), $h));

const unique class.NewtypeSubsetType.NonCompilableTestInt32: ClassName;

function Tclass.NewtypeSubsetType.Type0() : Ty
uses {
// Tclass.NewtypeSubsetType.Type0 Tag
axiom Tag(Tclass.NewtypeSubsetType.Type0()) == Tagclass.NewtypeSubsetType.Type0
   && TagFamily(Tclass.NewtypeSubsetType.Type0()) == tytagFamily$Type0;
}

const unique Tagclass.NewtypeSubsetType.Type0: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.Type0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.Type0()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.Type0())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.Type0()));

// $Is axiom for subset type NewtypeSubsetType.Type0
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.Type0()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.Type0())
     <==> NewtypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for subset type NewtypeSubsetType.Type0
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type0(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type0(), $h));

function Tclass.NewtypeSubsetType.Type2() : Ty
uses {
// Tclass.NewtypeSubsetType.Type2 Tag
axiom Tag(Tclass.NewtypeSubsetType.Type2()) == Tagclass.NewtypeSubsetType.Type2
   && TagFamily(Tclass.NewtypeSubsetType.Type2()) == tytagFamily$Type2;
}

const unique Tagclass.NewtypeSubsetType.Type2: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.Type2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.Type2()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.Type2())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.Type2()));

// $Is axiom for subset type NewtypeSubsetType.Type2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.Type2()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.Type2())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && NewtypeSubsetType.__default.P(x#0));

// $IsAlloc axiom for subset type NewtypeSubsetType.Type2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type2(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type2(), $h));

function Tclass.NewtypeSubsetType.CompilableTest() : Ty
uses {
// Tclass.NewtypeSubsetType.CompilableTest Tag
axiom Tag(Tclass.NewtypeSubsetType.CompilableTest())
     == Tagclass.NewtypeSubsetType.CompilableTest
   && TagFamily(Tclass.NewtypeSubsetType.CompilableTest())
     == tytagFamily$CompilableTest;
}

const unique Tagclass.NewtypeSubsetType.CompilableTest: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.CompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.CompilableTest()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.CompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.CompilableTest()));

// $Is axiom for newtype NewtypeSubsetType.CompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.CompilableTest()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.CompilableTest())
     <==> NewtypeSubsetType.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for newtype NewtypeSubsetType.CompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.CompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.CompilableTest(), $h));

const unique class.NewtypeSubsetType.CompilableTest: ClassName;

function Tclass.NewtypeSubsetType.Type4() : Ty
uses {
// Tclass.NewtypeSubsetType.Type4 Tag
axiom Tag(Tclass.NewtypeSubsetType.Type4()) == Tagclass.NewtypeSubsetType.Type4
   && TagFamily(Tclass.NewtypeSubsetType.Type4()) == tytagFamily$Type4;
}

const unique Tagclass.NewtypeSubsetType.Type4: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.Type4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.Type4()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.Type4())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.Type4()));

// $Is axiom for subset type NewtypeSubsetType.Type4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.Type4()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.Type4())
     <==> NewtypeSubsetType.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for subset type NewtypeSubsetType.Type4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type4(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type4(), $h));

function Tclass.NewtypeSubsetType.Type6() : Ty
uses {
// Tclass.NewtypeSubsetType.Type6 Tag
axiom Tag(Tclass.NewtypeSubsetType.Type6()) == Tagclass.NewtypeSubsetType.Type6
   && TagFamily(Tclass.NewtypeSubsetType.Type6()) == tytagFamily$Type6;
}

const unique Tagclass.NewtypeSubsetType.Type6: TyTag;

// Box/unbox axiom for Tclass.NewtypeSubsetType.Type6
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeSubsetType.Type6()) } 
  $IsBox(bx, Tclass.NewtypeSubsetType.Type6())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeSubsetType.Type6()));

// $Is axiom for subset type NewtypeSubsetType.Type6
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeSubsetType.Type6()) } 
  $Is(x#0, Tclass.NewtypeSubsetType.Type6())
     <==> NewtypeSubsetType.__default.Q(x#0) && x#0 < 8 && LitInt(0) <= x#0);

// $IsAlloc axiom for subset type NewtypeSubsetType.Type6
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type6(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeSubsetType.Type6(), $h));

const unique class.NewtypeNewtype.__default: ClassName;

// function declaration for NewtypeNewtype._default.P
function NewtypeNewtype.__default.P(x#0: int) : bool;

function NewtypeNewtype.__default.P#canCall(x#0: int) : bool;

function NewtypeNewtype.__default.P#requires(int) : bool;

// #requires axiom for NewtypeNewtype.__default.P
axiom (forall x#0: int :: 
  { NewtypeNewtype.__default.P#requires(x#0) } 
  NewtypeNewtype.__default.P#requires(x#0) == true);

// definition axiom for NewtypeNewtype.__default.P (revealed)
axiom {:id "id442"} (forall x#0: int :: 
  { NewtypeNewtype.__default.P(x#0) } 
  NewtypeNewtype.__default.P(x#0) == (x#0 != 3));

// definition axiom for NewtypeNewtype.__default.P for all literals (revealed)
axiom {:id "id443"} (forall x#0: int :: 
  {:weight 3} { NewtypeNewtype.__default.P(LitInt(x#0)) } 
  NewtypeNewtype.__default.P(LitInt(x#0)) == Lit(x#0 != 3));

// function declaration for NewtypeNewtype._default.Q
function NewtypeNewtype.__default.Q(x#0: int) : bool;

function NewtypeNewtype.__default.Q#canCall(x#0: int) : bool;

function NewtypeNewtype.__default.Q#requires(int) : bool;

// #requires axiom for NewtypeNewtype.__default.Q
axiom (forall x#0: int :: 
  { NewtypeNewtype.__default.Q#requires(x#0) } 
  NewtypeNewtype.__default.Q#requires(x#0) == true);

// definition axiom for NewtypeNewtype.__default.Q (revealed)
axiom {:id "id444"} (forall x#0: int :: 
  { NewtypeNewtype.__default.Q(x#0) } 
  NewtypeNewtype.__default.Q(x#0) == (x#0 != 5));

// definition axiom for NewtypeNewtype.__default.Q for all literals (revealed)
axiom {:id "id445"} (forall x#0: int :: 
  {:weight 3} { NewtypeNewtype.__default.Q(LitInt(x#0)) } 
  NewtypeNewtype.__default.Q(LitInt(x#0)) == Lit(x#0 != 5));

procedure {:verboseName "NewtypeNewtype.Test (well-formedness)"} CheckWellFormed$$NewtypeNewtype.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewtypeNewtype.Test (call)"} Call$$NewtypeNewtype.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.NewtypeNewtype.NonCompilableTest() : Ty
uses {
// Tclass.NewtypeNewtype.NonCompilableTest Tag
axiom Tag(Tclass.NewtypeNewtype.NonCompilableTest())
     == Tagclass.NewtypeNewtype.NonCompilableTest
   && TagFamily(Tclass.NewtypeNewtype.NonCompilableTest())
     == tytagFamily$NonCompilableTest;
}

const unique Tagclass.NewtypeNewtype.NonCompilableTest: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.NonCompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.NonCompilableTest()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.NonCompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.NonCompilableTest()));

// $Is axiom for newtype NewtypeNewtype.NonCompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.NonCompilableTest()) } 
  $Is(x#0, Tclass.NewtypeNewtype.NonCompilableTest())
     <==> NewtypeNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype NewtypeNewtype.NonCompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.NonCompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.NonCompilableTest(), $h));

const unique class.NewtypeNewtype.NonCompilableTest: ClassName;

function Tclass.NewtypeNewtype.NonCompilableTestInt32() : Ty
uses {
// Tclass.NewtypeNewtype.NonCompilableTestInt32 Tag
axiom Tag(Tclass.NewtypeNewtype.NonCompilableTestInt32())
     == Tagclass.NewtypeNewtype.NonCompilableTestInt32
   && TagFamily(Tclass.NewtypeNewtype.NonCompilableTestInt32())
     == tytagFamily$NonCompilableTestInt32;
}

const unique Tagclass.NewtypeNewtype.NonCompilableTestInt32: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.NonCompilableTestInt32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.NonCompilableTestInt32()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.NonCompilableTestInt32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.NonCompilableTestInt32()));

// $Is axiom for newtype NewtypeNewtype.NonCompilableTestInt32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.NonCompilableTestInt32()) } 
  $Is(x#0, Tclass.NewtypeNewtype.NonCompilableTestInt32())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && NewtypeNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype NewtypeNewtype.NonCompilableTestInt32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.NonCompilableTestInt32(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.NonCompilableTestInt32(), $h));

const unique class.NewtypeNewtype.NonCompilableTestInt32: ClassName;

function Tclass.NewtypeNewtype.Type0() : Ty
uses {
// Tclass.NewtypeNewtype.Type0 Tag
axiom Tag(Tclass.NewtypeNewtype.Type0()) == Tagclass.NewtypeNewtype.Type0
   && TagFamily(Tclass.NewtypeNewtype.Type0()) == tytagFamily$Type0;
}

const unique Tagclass.NewtypeNewtype.Type0: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type0()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type0())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type0()));

// $Is axiom for newtype NewtypeNewtype.Type0
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.Type0()) } 
  $Is(x#0, Tclass.NewtypeNewtype.Type0()) <==> NewtypeNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype NewtypeNewtype.Type0
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.Type0(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.Type0(), $h));

const unique class.NewtypeNewtype.Type0: ClassName;

function Tclass.NewtypeNewtype.Type1() : Ty
uses {
// Tclass.NewtypeNewtype.Type1 Tag
axiom Tag(Tclass.NewtypeNewtype.Type1()) == Tagclass.NewtypeNewtype.Type1
   && TagFamily(Tclass.NewtypeNewtype.Type1()) == tytagFamily$Type1;
}

const unique Tagclass.NewtypeNewtype.Type1: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type1()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type1())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type1()));

// $Is axiom for newtype NewtypeNewtype.Type1
axiom (forall c6#0: int :: 
  { $Is(c6#0, Tclass.NewtypeNewtype.Type1()) } 
  $Is(c6#0, Tclass.NewtypeNewtype.Type1()) <==> NewtypeNewtype.__default.P(c6#0));

// $IsAlloc axiom for newtype NewtypeNewtype.Type1
axiom (forall c7#0: int, $h: Heap :: 
  { $IsAlloc(c7#0, Tclass.NewtypeNewtype.Type1(), $h) } 
  $IsAlloc(c7#0, Tclass.NewtypeNewtype.Type1(), $h));

const unique class.NewtypeNewtype.Type1: ClassName;

function Tclass.NewtypeNewtype.Type2() : Ty
uses {
// Tclass.NewtypeNewtype.Type2 Tag
axiom Tag(Tclass.NewtypeNewtype.Type2()) == Tagclass.NewtypeNewtype.Type2
   && TagFamily(Tclass.NewtypeNewtype.Type2()) == tytagFamily$Type2;
}

const unique Tagclass.NewtypeNewtype.Type2: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type2()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type2())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type2()));

// $Is axiom for newtype NewtypeNewtype.Type2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.Type2()) } 
  $Is(x#0, Tclass.NewtypeNewtype.Type2())
     <==> LitInt(-2147483648) <= x#0
       && x#0 < 2147483648
       && NewtypeNewtype.__default.P(x#0));

// $IsAlloc axiom for newtype NewtypeNewtype.Type2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.Type2(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.Type2(), $h));

const unique class.NewtypeNewtype.Type2: ClassName;

function Tclass.NewtypeNewtype.Type3() : Ty
uses {
// Tclass.NewtypeNewtype.Type3 Tag
axiom Tag(Tclass.NewtypeNewtype.Type3()) == Tagclass.NewtypeNewtype.Type3
   && TagFamily(Tclass.NewtypeNewtype.Type3()) == tytagFamily$Type3;
}

const unique Tagclass.NewtypeNewtype.Type3: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type3()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type3())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type3()));

// $Is axiom for newtype NewtypeNewtype.Type3
axiom (forall c10#0: int :: 
  { $Is(c10#0, Tclass.NewtypeNewtype.Type3()) } 
  $Is(c10#0, Tclass.NewtypeNewtype.Type3())
     <==> LitInt(-2147483648) <= c10#0
       && c10#0 < 2147483648
       && NewtypeNewtype.__default.P(c10#0));

// $IsAlloc axiom for newtype NewtypeNewtype.Type3
axiom (forall c11#0: int, $h: Heap :: 
  { $IsAlloc(c11#0, Tclass.NewtypeNewtype.Type3(), $h) } 
  $IsAlloc(c11#0, Tclass.NewtypeNewtype.Type3(), $h));

const unique class.NewtypeNewtype.Type3: ClassName;

function Tclass.NewtypeNewtype.CompilableTest() : Ty
uses {
// Tclass.NewtypeNewtype.CompilableTest Tag
axiom Tag(Tclass.NewtypeNewtype.CompilableTest())
     == Tagclass.NewtypeNewtype.CompilableTest
   && TagFamily(Tclass.NewtypeNewtype.CompilableTest()) == tytagFamily$CompilableTest;
}

const unique Tagclass.NewtypeNewtype.CompilableTest: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.CompilableTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.CompilableTest()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.CompilableTest())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.CompilableTest()));

// $Is axiom for newtype NewtypeNewtype.CompilableTest
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.CompilableTest()) } 
  $Is(x#0, Tclass.NewtypeNewtype.CompilableTest())
     <==> NewtypeNewtype.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for newtype NewtypeNewtype.CompilableTest
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.CompilableTest(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.CompilableTest(), $h));

const unique class.NewtypeNewtype.CompilableTest: ClassName;

function Tclass.NewtypeNewtype.Type4() : Ty
uses {
// Tclass.NewtypeNewtype.Type4 Tag
axiom Tag(Tclass.NewtypeNewtype.Type4()) == Tagclass.NewtypeNewtype.Type4
   && TagFamily(Tclass.NewtypeNewtype.Type4()) == tytagFamily$Type4;
}

const unique Tagclass.NewtypeNewtype.Type4: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type4()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type4())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type4()));

// $Is axiom for newtype NewtypeNewtype.Type4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.Type4()) } 
  $Is(x#0, Tclass.NewtypeNewtype.Type4())
     <==> NewtypeNewtype.__default.Q(x#0) && x#0 < 8);

// $IsAlloc axiom for newtype NewtypeNewtype.Type4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.Type4(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.Type4(), $h));

const unique class.NewtypeNewtype.Type4: ClassName;

function Tclass.NewtypeNewtype.Type5() : Ty
uses {
// Tclass.NewtypeNewtype.Type5 Tag
axiom Tag(Tclass.NewtypeNewtype.Type5()) == Tagclass.NewtypeNewtype.Type5
   && TagFamily(Tclass.NewtypeNewtype.Type5()) == tytagFamily$Type5;
}

const unique Tagclass.NewtypeNewtype.Type5: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type5
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type5()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type5())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type5()));

// $Is axiom for newtype NewtypeNewtype.Type5
axiom (forall c16#0: int :: 
  { $Is(c16#0, Tclass.NewtypeNewtype.Type5()) } 
  $Is(c16#0, Tclass.NewtypeNewtype.Type5())
     <==> NewtypeNewtype.__default.Q(c16#0) && c16#0 < 8);

// $IsAlloc axiom for newtype NewtypeNewtype.Type5
axiom (forall c17#0: int, $h: Heap :: 
  { $IsAlloc(c17#0, Tclass.NewtypeNewtype.Type5(), $h) } 
  $IsAlloc(c17#0, Tclass.NewtypeNewtype.Type5(), $h));

const unique class.NewtypeNewtype.Type5: ClassName;

function Tclass.NewtypeNewtype.Type6() : Ty
uses {
// Tclass.NewtypeNewtype.Type6 Tag
axiom Tag(Tclass.NewtypeNewtype.Type6()) == Tagclass.NewtypeNewtype.Type6
   && TagFamily(Tclass.NewtypeNewtype.Type6()) == tytagFamily$Type6;
}

const unique Tagclass.NewtypeNewtype.Type6: TyTag;

// Box/unbox axiom for Tclass.NewtypeNewtype.Type6
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewtypeNewtype.Type6()) } 
  $IsBox(bx, Tclass.NewtypeNewtype.Type6())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.NewtypeNewtype.Type6()));

// $Is axiom for newtype NewtypeNewtype.Type6
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.NewtypeNewtype.Type6()) } 
  $Is(x#0, Tclass.NewtypeNewtype.Type6())
     <==> NewtypeNewtype.__default.Q(x#0) && x#0 < 8 && LitInt(0) <= x#0);

// $IsAlloc axiom for newtype NewtypeNewtype.Type6
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.NewtypeNewtype.Type6(), $h) } 
  $IsAlloc(x#0, Tclass.NewtypeNewtype.Type6(), $h));

const unique class.NewtypeNewtype.Type6: ClassName;

const unique class.MoreNativeTypes.__default: ClassName;

procedure {:verboseName "MoreNativeTypes.Test (well-formedness)"} CheckWellFormed$$MoreNativeTypes.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreNativeTypes.Test (call)"} Call$$MoreNativeTypes.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.MoreNativeTypes.LoSubset() : Ty
uses {
// Tclass.MoreNativeTypes.LoSubset Tag
axiom Tag(Tclass.MoreNativeTypes.LoSubset()) == Tagclass.MoreNativeTypes.LoSubset
   && TagFamily(Tclass.MoreNativeTypes.LoSubset()) == tytagFamily$LoSubset;
}

const unique Tagclass.MoreNativeTypes.LoSubset: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.LoSubset
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.LoSubset()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.LoSubset())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.LoSubset()));

// $Is axiom for subset type MoreNativeTypes.LoSubset
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.LoSubset()) } 
  $Is(x#0, Tclass.MoreNativeTypes.LoSubset()) <==> LitInt(-2147483648) <= x#0);

// $IsAlloc axiom for subset type MoreNativeTypes.LoSubset
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.LoSubset(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.LoSubset(), $h));

function Tclass.MoreNativeTypes.LoNewtype() : Ty
uses {
// Tclass.MoreNativeTypes.LoNewtype Tag
axiom Tag(Tclass.MoreNativeTypes.LoNewtype()) == Tagclass.MoreNativeTypes.LoNewtype
   && TagFamily(Tclass.MoreNativeTypes.LoNewtype()) == tytagFamily$LoNewtype;
}

const unique Tagclass.MoreNativeTypes.LoNewtype: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.LoNewtype
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.LoNewtype()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.LoNewtype())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.LoNewtype()));

// $Is axiom for newtype MoreNativeTypes.LoNewtype
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.LoNewtype()) } 
  $Is(x#0, Tclass.MoreNativeTypes.LoNewtype()) <==> LitInt(-2147483648) <= x#0);

// $IsAlloc axiom for newtype MoreNativeTypes.LoNewtype
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.LoNewtype(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.LoNewtype(), $h));

const unique class.MoreNativeTypes.LoNewtype: ClassName;

function Tclass.MoreNativeTypes.Int32a() : Ty
uses {
// Tclass.MoreNativeTypes.Int32a Tag
axiom Tag(Tclass.MoreNativeTypes.Int32a()) == Tagclass.MoreNativeTypes.Int32a
   && TagFamily(Tclass.MoreNativeTypes.Int32a()) == tytagFamily$Int32a;
}

const unique Tagclass.MoreNativeTypes.Int32a: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.Int32a
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.Int32a()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.Int32a())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.Int32a()));

// $Is axiom for newtype MoreNativeTypes.Int32a
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.Int32a()) } 
  $Is(x#0, Tclass.MoreNativeTypes.Int32a())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648);

// $IsAlloc axiom for newtype MoreNativeTypes.Int32a
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32a(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32a(), $h));

const unique class.MoreNativeTypes.Int32a: ClassName;

function Tclass.MoreNativeTypes.Int32b() : Ty
uses {
// Tclass.MoreNativeTypes.Int32b Tag
axiom Tag(Tclass.MoreNativeTypes.Int32b()) == Tagclass.MoreNativeTypes.Int32b
   && TagFamily(Tclass.MoreNativeTypes.Int32b()) == tytagFamily$Int32b;
}

const unique Tagclass.MoreNativeTypes.Int32b: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.Int32b
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.Int32b()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.Int32b())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.Int32b()));

// $Is axiom for newtype MoreNativeTypes.Int32b
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.Int32b()) } 
  $Is(x#0, Tclass.MoreNativeTypes.Int32b())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648);

// $IsAlloc axiom for newtype MoreNativeTypes.Int32b
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32b(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32b(), $h));

const unique class.MoreNativeTypes.Int32b: ClassName;

function Tclass.MoreNativeTypes.Int32c() : Ty
uses {
// Tclass.MoreNativeTypes.Int32c Tag
axiom Tag(Tclass.MoreNativeTypes.Int32c()) == Tagclass.MoreNativeTypes.Int32c
   && TagFamily(Tclass.MoreNativeTypes.Int32c()) == tytagFamily$Int32c;
}

const unique Tagclass.MoreNativeTypes.Int32c: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.Int32c
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.Int32c()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.Int32c())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.Int32c()));

// $Is axiom for subset type MoreNativeTypes.Int32c
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.Int32c()) } 
  $Is(x#0, Tclass.MoreNativeTypes.Int32c())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648 && x#0 != 3);

// $IsAlloc axiom for subset type MoreNativeTypes.Int32c
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32c(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32c(), $h));

function Tclass.MoreNativeTypes.Int32d() : Ty
uses {
// Tclass.MoreNativeTypes.Int32d Tag
axiom Tag(Tclass.MoreNativeTypes.Int32d()) == Tagclass.MoreNativeTypes.Int32d
   && TagFamily(Tclass.MoreNativeTypes.Int32d()) == tytagFamily$Int32d;
}

const unique Tagclass.MoreNativeTypes.Int32d: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.Int32d
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.Int32d()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.Int32d())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.Int32d()));

// $Is axiom for subset type MoreNativeTypes.Int32d
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.Int32d()) } 
  $Is(x#0, Tclass.MoreNativeTypes.Int32d())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648 && x#0 != 3);

// $IsAlloc axiom for subset type MoreNativeTypes.Int32d
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32d(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32d(), $h));

function Tclass.MoreNativeTypes.Int32e() : Ty
uses {
// Tclass.MoreNativeTypes.Int32e Tag
axiom Tag(Tclass.MoreNativeTypes.Int32e()) == Tagclass.MoreNativeTypes.Int32e
   && TagFamily(Tclass.MoreNativeTypes.Int32e()) == tytagFamily$Int32e;
}

const unique Tagclass.MoreNativeTypes.Int32e: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.Int32e
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.Int32e()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.Int32e())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.Int32e()));

// $Is axiom for newtype MoreNativeTypes.Int32e
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.Int32e()) } 
  $Is(x#0, Tclass.MoreNativeTypes.Int32e())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648 && x#0 != 3);

// $IsAlloc axiom for newtype MoreNativeTypes.Int32e
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32e(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32e(), $h));

const unique class.MoreNativeTypes.Int32e: ClassName;

function Tclass.MoreNativeTypes.Int32f() : Ty
uses {
// Tclass.MoreNativeTypes.Int32f Tag
axiom Tag(Tclass.MoreNativeTypes.Int32f()) == Tagclass.MoreNativeTypes.Int32f
   && TagFamily(Tclass.MoreNativeTypes.Int32f()) == tytagFamily$Int32f;
}

const unique Tagclass.MoreNativeTypes.Int32f: TyTag;

// Box/unbox axiom for Tclass.MoreNativeTypes.Int32f
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreNativeTypes.Int32f()) } 
  $IsBox(bx, Tclass.MoreNativeTypes.Int32f())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreNativeTypes.Int32f()));

// $Is axiom for newtype MoreNativeTypes.Int32f
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreNativeTypes.Int32f()) } 
  $Is(x#0, Tclass.MoreNativeTypes.Int32f())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648 && x#0 != 3);

// $IsAlloc axiom for newtype MoreNativeTypes.Int32f
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32f(), $h) } 
  $IsAlloc(x#0, Tclass.MoreNativeTypes.Int32f(), $h));

const unique class.MoreNativeTypes.Int32f: ClassName;

const unique class.Regressions.__default: ClassName;

// function declaration for Regressions._default.P
function Regressions.__default.P(x#0: int) : bool;

function Regressions.__default.P#canCall(x#0: int) : bool;

function Regressions.__default.P#requires(int) : bool;

// #requires axiom for Regressions.__default.P
axiom (forall x#0: int :: 
  { Regressions.__default.P#requires(x#0) } 
  Regressions.__default.P#requires(x#0) == true);

// definition axiom for Regressions.__default.P (revealed)
axiom {:id "id446"} (forall x#0: int :: 
  { Regressions.__default.P(x#0) } 
  Regressions.__default.P(x#0) == (x#0 == LitInt(7) || x#0 == LitInt(9)));

// definition axiom for Regressions.__default.P for all literals (revealed)
axiom {:id "id447"} (forall x#0: int :: 
  {:weight 3} { Regressions.__default.P(LitInt(x#0)) } 
  Regressions.__default.P(LitInt(x#0))
     == (LitInt(x#0) == LitInt(7) || LitInt(x#0) == LitInt(9)));

procedure {:verboseName "Regressions.Test0 (well-formedness)"} CheckWellFormed$$Regressions.__default.Test0();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regressions.Test0 (call)"} Call$$Regressions.__default.Test0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for Regressions._default.Filter
function Regressions.__default.Filter(x#0: int) : bool;

function Regressions.__default.Filter#canCall(x#0: int) : bool;

function Regressions.__default.Filter#requires(int) : bool;

// #requires axiom for Regressions.__default.Filter
axiom (forall x#0: int :: 
  { Regressions.__default.Filter#requires(x#0) } 
  Regressions.__default.Filter#requires(x#0) == true);

// definition axiom for Regressions.__default.Filter (revealed)
axiom {:id "id448"} (forall x#0: int :: 
  { Regressions.__default.Filter(x#0) } 
  Regressions.__default.Filter(x#0)
     == (Mod(x#0, LitInt(2)) == LitInt(1) && x#0 < 10));

// definition axiom for Regressions.__default.Filter for all literals (revealed)
axiom {:id "id449"} (forall x#0: int :: 
  {:weight 3} { Regressions.__default.Filter(LitInt(x#0)) } 
  Regressions.__default.Filter(LitInt(x#0))
     == (LitInt(Mod(x#0, LitInt(2))) == LitInt(1) && x#0 < 10));

procedure {:verboseName "Regressions.Test1 (well-formedness)"} CheckWellFormed$$Regressions.__default.Test1();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regressions.Test1 (call)"} Call$$Regressions.__default.Test1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.Regressions.byte() : Ty
uses {
// Tclass.Regressions.byte Tag
axiom Tag(Tclass.Regressions.byte()) == Tagclass.Regressions.byte
   && TagFamily(Tclass.Regressions.byte()) == tytagFamily$byte;
}

const unique Tagclass.Regressions.byte: TyTag;

// Box/unbox axiom for Tclass.Regressions.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regressions.byte()) } 
  $IsBox(bx, Tclass.Regressions.byte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Regressions.byte()));

// $Is axiom for subset type Regressions.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Regressions.byte()) } 
  $Is(x#0, Tclass.Regressions.byte())
     <==> x#0 < 256 && x#0 != 7 && LitInt(0) <= x#0);

// $IsAlloc axiom for subset type Regressions.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Regressions.byte(), $h) } 
  $IsAlloc(x#0, Tclass.Regressions.byte(), $h));

function Tclass.Regressions.NewByte() : Ty
uses {
// Tclass.Regressions.NewByte Tag
axiom Tag(Tclass.Regressions.NewByte()) == Tagclass.Regressions.NewByte
   && TagFamily(Tclass.Regressions.NewByte()) == tytagFamily$NewByte;
}

const unique Tagclass.Regressions.NewByte: TyTag;

// Box/unbox axiom for Tclass.Regressions.NewByte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regressions.NewByte()) } 
  $IsBox(bx, Tclass.Regressions.NewByte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.Regressions.NewByte()));

// $Is axiom for newtype Regressions.NewByte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Regressions.NewByte()) } 
  $Is(x#0, Tclass.Regressions.NewByte())
     <==> x#0 < 256 && x#0 != 7 && LitInt(0) <= x#0);

// $IsAlloc axiom for newtype Regressions.NewByte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Regressions.NewByte(), $h) } 
  $IsAlloc(x#0, Tclass.Regressions.NewByte(), $h));

const unique class.Regressions.NewByte: ClassName;

function Tclass.Regressions.ByteBase() : Ty
uses {
// Tclass.Regressions.ByteBase Tag
axiom Tag(Tclass.Regressions.ByteBase()) == Tagclass.Regressions.ByteBase
   && TagFamily(Tclass.Regressions.ByteBase()) == tytagFamily$ByteBase;
}

const unique Tagclass.Regressions.ByteBase: TyTag;

// Box/unbox axiom for Tclass.Regressions.ByteBase
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regressions.ByteBase()) } 
  $IsBox(bx, Tclass.Regressions.ByteBase())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.Regressions.ByteBase()));

// $Is axiom for newtype Regressions.ByteBase
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Regressions.ByteBase()) } 
  $Is(x#0, Tclass.Regressions.ByteBase()) <==> x#0 != 7);

// $IsAlloc axiom for newtype Regressions.ByteBase
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Regressions.ByteBase(), $h) } 
  $IsAlloc(x#0, Tclass.Regressions.ByteBase(), $h));

const unique class.Regressions.ByteBase: ClassName;

function Tclass.Regressions.Byyyte() : Ty
uses {
// Tclass.Regressions.Byyyte Tag
axiom Tag(Tclass.Regressions.Byyyte()) == Tagclass.Regressions.Byyyte
   && TagFamily(Tclass.Regressions.Byyyte()) == tytagFamily$Byyyte;
}

const unique Tagclass.Regressions.Byyyte: TyTag;

// Box/unbox axiom for Tclass.Regressions.Byyyte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regressions.Byyyte()) } 
  $IsBox(bx, Tclass.Regressions.Byyyte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Regressions.Byyyte()));

// $Is axiom for subset type Regressions.Byyyte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Regressions.Byyyte()) } 
  $Is(x#0, Tclass.Regressions.Byyyte())
     <==> x#0 != 7 && x#0 < 256 && LitInt(0) <= x#0);

// $IsAlloc axiom for subset type Regressions.Byyyte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Regressions.Byyyte(), $h) } 
  $IsAlloc(x#0, Tclass.Regressions.Byyyte(), $h));

const unique class.EvolvingNativeTypes.__default: ClassName;

// function declaration for EvolvingNativeTypes._default.R
function EvolvingNativeTypes.__default.R(x#0: int) : bool;

function EvolvingNativeTypes.__default.R#canCall(x#0: int) : bool;

function EvolvingNativeTypes.__default.R#requires(int) : bool;

// #requires axiom for EvolvingNativeTypes.__default.R
axiom (forall x#0: int :: 
  { EvolvingNativeTypes.__default.R#requires(x#0) } 
  EvolvingNativeTypes.__default.R#requires(x#0) == true);

// definition axiom for EvolvingNativeTypes.__default.R (revealed)
axiom {:id "id450"} (forall x#0: int :: 
  { EvolvingNativeTypes.__default.R(x#0) } 
  EvolvingNativeTypes.__default.R(x#0)
     == (if x#0 == LitInt(5)
       then true
       else (if x#0 == LitInt(1)
         then true
         else (if x#0 == LitInt(3)
           then true
           else (if x#0 == LitInt(7) then true else (if x#0 == LitInt(9) then true else false))))));

// definition axiom for EvolvingNativeTypes.__default.R for all literals (revealed)
axiom {:id "id451"} (forall x#0: int :: 
  {:weight 3} { EvolvingNativeTypes.__default.R(LitInt(x#0)) } 
  EvolvingNativeTypes.__default.R(LitInt(x#0))
     == (if LitInt(x#0) == LitInt(5)
       then true
       else (if LitInt(x#0) == LitInt(1)
         then true
         else (if LitInt(x#0) == LitInt(3)
           then true
           else (if LitInt(x#0) == LitInt(7)
             then true
             else (if LitInt(x#0) == LitInt(9) then true else false))))));

procedure {:verboseName "EvolvingNativeTypes.Test (well-formedness)"} CheckWellFormed$$EvolvingNativeTypes.__default.Test();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EvolvingNativeTypes.Test (call)"} Call$$EvolvingNativeTypes.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.EvolvingNativeTypes.Nat() : Ty
uses {
// Tclass.EvolvingNativeTypes.Nat Tag
axiom Tag(Tclass.EvolvingNativeTypes.Nat()) == Tagclass.EvolvingNativeTypes.Nat
   && TagFamily(Tclass.EvolvingNativeTypes.Nat()) == tytagFamily$Nat;
}

const unique Tagclass.EvolvingNativeTypes.Nat: TyTag;

// Box/unbox axiom for Tclass.EvolvingNativeTypes.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EvolvingNativeTypes.Nat()) } 
  $IsBox(bx, Tclass.EvolvingNativeTypes.Nat())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EvolvingNativeTypes.Nat()));

// $Is axiom for newtype EvolvingNativeTypes.Nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EvolvingNativeTypes.Nat()) } 
  $Is(x#0, Tclass.EvolvingNativeTypes.Nat()) <==> LitInt(0) <= x#0 && x#0 != 1);

// $IsAlloc axiom for newtype EvolvingNativeTypes.Nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EvolvingNativeTypes.Nat(), $h) } 
  $IsAlloc(x#0, Tclass.EvolvingNativeTypes.Nat(), $h));

const unique class.EvolvingNativeTypes.Nat: ClassName;

function Tclass.EvolvingNativeTypes.uint32() : Ty
uses {
// Tclass.EvolvingNativeTypes.uint32 Tag
axiom Tag(Tclass.EvolvingNativeTypes.uint32()) == Tagclass.EvolvingNativeTypes.uint32
   && TagFamily(Tclass.EvolvingNativeTypes.uint32()) == tytagFamily$uint32;
}

const unique Tagclass.EvolvingNativeTypes.uint32: TyTag;

// Box/unbox axiom for Tclass.EvolvingNativeTypes.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EvolvingNativeTypes.uint32()) } 
  $IsBox(bx, Tclass.EvolvingNativeTypes.uint32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EvolvingNativeTypes.uint32()));

// $Is axiom for newtype EvolvingNativeTypes.uint32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EvolvingNativeTypes.uint32()) } 
  $Is(x#0, Tclass.EvolvingNativeTypes.uint32())
     <==> LitInt(0) <= x#0 && x#0 != 1 && x#0 < 4294967296 && x#0 != 3);

// $IsAlloc axiom for newtype EvolvingNativeTypes.uint32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EvolvingNativeTypes.uint32(), $h) } 
  $IsAlloc(x#0, Tclass.EvolvingNativeTypes.uint32(), $h));

const unique class.EvolvingNativeTypes.uint32: ClassName;

function Tclass.EvolvingNativeTypes.byte() : Ty
uses {
// Tclass.EvolvingNativeTypes.byte Tag
axiom Tag(Tclass.EvolvingNativeTypes.byte()) == Tagclass.EvolvingNativeTypes.byte
   && TagFamily(Tclass.EvolvingNativeTypes.byte()) == tytagFamily$byte;
}

const unique Tagclass.EvolvingNativeTypes.byte: TyTag;

// Box/unbox axiom for Tclass.EvolvingNativeTypes.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EvolvingNativeTypes.byte()) } 
  $IsBox(bx, Tclass.EvolvingNativeTypes.byte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EvolvingNativeTypes.byte()));

// $Is axiom for newtype EvolvingNativeTypes.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EvolvingNativeTypes.byte()) } 
  $Is(x#0, Tclass.EvolvingNativeTypes.byte())
     <==> LitInt(0) <= x#0
       && x#0 != 1
       && 
      x#0 < 4294967296
       && x#0 != 3
       && 
      x#0 < 256
       && x#0 != 5);

// $IsAlloc axiom for newtype EvolvingNativeTypes.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EvolvingNativeTypes.byte(), $h) } 
  $IsAlloc(x#0, Tclass.EvolvingNativeTypes.byte(), $h));

const unique class.EvolvingNativeTypes.byte: ClassName;

function Tclass.EvolvingNativeTypes.Not7Either() : Ty
uses {
// Tclass.EvolvingNativeTypes.Not7Either Tag
axiom Tag(Tclass.EvolvingNativeTypes.Not7Either())
     == Tagclass.EvolvingNativeTypes.Not7Either
   && TagFamily(Tclass.EvolvingNativeTypes.Not7Either()) == tytagFamily$Not7Either;
}

const unique Tagclass.EvolvingNativeTypes.Not7Either: TyTag;

// Box/unbox axiom for Tclass.EvolvingNativeTypes.Not7Either
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EvolvingNativeTypes.Not7Either()) } 
  $IsBox(bx, Tclass.EvolvingNativeTypes.Not7Either())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EvolvingNativeTypes.Not7Either()));

// $Is axiom for newtype EvolvingNativeTypes.Not7Either
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EvolvingNativeTypes.Not7Either()) } 
  $Is(x#0, Tclass.EvolvingNativeTypes.Not7Either())
     <==> LitInt(0) <= x#0
       && x#0 != 1
       && 
      x#0 < 4294967296
       && x#0 != 3
       && 
      x#0 < 256
       && x#0 != 5
       && x#0 != 7);

// $IsAlloc axiom for newtype EvolvingNativeTypes.Not7Either
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EvolvingNativeTypes.Not7Either(), $h) } 
  $IsAlloc(x#0, Tclass.EvolvingNativeTypes.Not7Either(), $h));

const unique class.EvolvingNativeTypes.Not7Either: ClassName;

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

const unique tytagFamily$PInt: TyTagFamily;

const unique tytagFamily$PNat: TyTagFamily;

const unique tytagFamily$MyPlainInt: TyTagFamily;

const unique tytagFamily$MyPInt: TyTagFamily;

const unique tytagFamily$MyPNat: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$Cell5: TyTagFamily;

const unique tytagFamily$SST: TyTagFamily;

const unique tytagFamily$NonCompilableTest: TyTagFamily;

const unique tytagFamily$NonCompilableTestInt32: TyTagFamily;

const unique tytagFamily$Type0: TyTagFamily;

const unique tytagFamily$Type2: TyTagFamily;

const unique tytagFamily$CompilableTest: TyTagFamily;

const unique tytagFamily$Type4: TyTagFamily;

const unique tytagFamily$Type6: TyTagFamily;

const unique tytagFamily$Type1: TyTagFamily;

const unique tytagFamily$Type3: TyTagFamily;

const unique tytagFamily$Type5: TyTagFamily;

const unique tytagFamily$LoSubset: TyTagFamily;

const unique tytagFamily$LoNewtype: TyTagFamily;

const unique tytagFamily$Int32a: TyTagFamily;

const unique tytagFamily$Int32b: TyTagFamily;

const unique tytagFamily$Int32c: TyTagFamily;

const unique tytagFamily$Int32d: TyTagFamily;

const unique tytagFamily$Int32e: TyTagFamily;

const unique tytagFamily$Int32f: TyTagFamily;

const unique tytagFamily$byte: TyTagFamily;

const unique tytagFamily$NewByte: TyTagFamily;

const unique tytagFamily$ByteBase: TyTagFamily;

const unique tytagFamily$Byyyte: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$Not7Either: TyTagFamily;
