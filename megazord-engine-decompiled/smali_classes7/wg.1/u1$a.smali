.class public final Lwg/u1$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.TimeoutKt"
    f = "Timeout.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x68
    }
    m = "withTimeoutOrNull"
    n = {
        "block",
        "coroutine",
        "timeMillis"
    }
    s = {
        "L$0",
        "L$1",
        "J$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/u1;->e(JLeg/p;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTf/d;"
    }
.end annotation


# instance fields
.field public b:J

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public f:I


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "Lwg/u1$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTf/d;-><init>(LQf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lwg/u1$a;->e:Ljava/lang/Object;

    iget p1, p0, Lwg/u1$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwg/u1$a;->f:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p0}, Lwg/u1;->e(JLeg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
