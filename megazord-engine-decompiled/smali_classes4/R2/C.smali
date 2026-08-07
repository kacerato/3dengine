.class public abstract LR2/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build LQ2/b;
    serializable = true
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation runtime Ld3/f;
    value = "Use Optional.of(value) or Optional.absent()"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LR2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/C<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LR2/a;->n()LR2/C;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)LR2/C;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LR2/C<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, LR2/C;->a()LR2/C;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, LR2/K;

    invoke-direct {v0, p0}, LR2/K;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/Object;)LR2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LR2/C<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/K;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, LR2/K;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation build LQ2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LR2/C<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR2/C$a;

    invoke-direct {v0, p0}, LR2/C$a;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract e()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method

.method public abstract g(LR2/C;)LR2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/C<",
            "+TT;>;)",
            "LR2/C<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract h(LR2/Q;)Ljava/lang/Object;
    .annotation build LQ2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/Q<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract i(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract j()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract l(LR2/t;)LR2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "-TT;TV;>;)",
            "LR2/C<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
