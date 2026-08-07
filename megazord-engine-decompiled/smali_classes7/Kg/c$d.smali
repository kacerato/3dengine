.class public final LKg/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKg/c;->j(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQ1/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lwg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LKg/c$d;->a:Lwg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LQ1/k;)V
    .locals 2
    .param p1    # LQ1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQ1/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LQ1/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LKg/c$d;->a:Lwg/p;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lwg/p$a;->a(Lwg/p;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LKg/c$d;->a:Lwg/p;

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    invoke-virtual {p1}, LQ1/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LKg/c$d;->a:Lwg/p;

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    invoke-static {v0}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
