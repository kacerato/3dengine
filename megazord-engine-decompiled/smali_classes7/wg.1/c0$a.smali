.class public final Lwg/c0$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.DelayKt"
    f = "Delay.kt"
    i = {}
    l = {
        0xa3
    }
    m = "awaitCancellation"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/c0;->a(LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "Lwg/c0$a;",
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

    iput-object p1, p0, Lwg/c0$a;->b:Ljava/lang/Object;

    iget p1, p0, Lwg/c0$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwg/c0$a;->c:I

    invoke-static {p0}, Lwg/c0;->a(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
