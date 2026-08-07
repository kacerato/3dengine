.class public final Lyg/u$A;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x1b2,
        0x1b4
    }
    m = "minWith"
    n = {
        "comparator",
        "$this$consume$iv",
        "iterator",
        "comparator",
        "$this$consume$iv",
        "iterator",
        "min"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/u;->N(Lyg/D;Ljava/util/Comparator;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LTf/d;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "Lyg/u$A;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTf/d;-><init>(LQf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lyg/u$A;->f:Ljava/lang/Object;

    iget p1, p0, Lyg/u$A;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyg/u$A;->g:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lyg/r;->S(Lyg/D;Ljava/util/Comparator;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
