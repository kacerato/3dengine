.class public final synthetic LE1/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/c;


# instance fields
.field public final a:LQ1/l;


# direct methods
.method public constructor <init>(LQ1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/G;->a:LQ1/l;

    return-void
.end method


# virtual methods
.method public final a(LQ1/k;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LE1/G;->a:LQ1/l;

    invoke-virtual {p1}, LQ1/k;->v()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, LQ1/l;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LQ1/l;->e(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, LQ1/l;->a()LQ1/k;

    move-result-object p1

    return-object p1
.end method
