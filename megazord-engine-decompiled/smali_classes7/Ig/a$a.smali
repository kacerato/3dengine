.class public final LIg/a$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.stream.StreamFlow"
    f = "Stream.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1a
    }
    m = "collect"
    n = {
        "this",
        "collector"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIg/a;->a(LBg/j;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LIg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIg/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(LIg/a;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIg/a<",
            "TT;>;",
            "LQf/f<",
            "-",
            "LIg/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LIg/a$a;->f:LIg/a;

    invoke-direct {p0, p2}, LTf/d;-><init>(LQf/f;)V

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

    iput-object p1, p0, LIg/a$a;->e:Ljava/lang/Object;

    iget p1, p0, LIg/a$a;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LIg/a$a;->g:I

    iget-object p1, p0, LIg/a$a;->f:LIg/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LIg/a;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
