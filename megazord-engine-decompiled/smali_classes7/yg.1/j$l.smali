.class public final Lyg/j$l;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    i = {}
    l = {
        0x2e3
    }
    m = "receiveCatching-JP2dKIU$suspendImpl"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/j;->Z0(Lyg/j;LQf/f;)Ljava/lang/Object;
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
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/j<",
            "TE;>;"
        }
    .end annotation
.end field

.field public d:I


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
            "Lyg/j$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/j$l;->c:Lyg/j;

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

    iput-object p1, p0, Lyg/j$l;->b:Ljava/lang/Object;

    iget p1, p0, Lyg/j$l;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyg/j$l;->d:I

    iget-object p1, p0, Lyg/j$l;->c:Lyg/j;

    invoke-static {p1, p0}, Lyg/j;->Z0(Lyg/j;LQf/f;)Ljava/lang/Object;

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
