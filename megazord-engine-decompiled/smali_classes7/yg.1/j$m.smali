.class public final Lyg/j$m;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xbf0
    }
    m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk"
    n = {
        "this",
        "segment",
        "index",
        "r"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "J$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/j;->a1(Lyg/q;IJLQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lyg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/j<",
            "TE;>;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Lyg/j;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/j<",
            "TE;>;",
            "LQf/f<",
            "-",
            "Lyg/j$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/j$m;->g:Lyg/j;

    invoke-direct {p0, p2}, LTf/d;-><init>(LQf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lyg/j$m;->f:Ljava/lang/Object;

    iget p1, p0, Lyg/j$m;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyg/j$m;->h:I

    iget-object v0, p0, Lyg/j$m;->g:Lyg/j;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lyg/j;->B(Lyg/j;Lyg/q;IJLQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lyg/p;->b(Ljava/lang/Object;)Lyg/p;

    move-result-object p1

    return-object p1
.end method
