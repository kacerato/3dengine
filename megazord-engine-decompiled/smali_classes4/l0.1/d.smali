.class public abstract Ll0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/Object;)Ll0/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ll0/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll0/a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ll0/e;->DEFAULT:Ll0/e;

    invoke-direct {v0, p0, p1, v1}, Ll0/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ll0/e;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Ll0/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ll0/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll0/a;

    const/4 v1, 0x0

    sget-object v2, Ll0/e;->DEFAULT:Ll0/e;

    invoke-direct {v0, v1, p0, v2}, Ll0/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ll0/e;)V

    return-object v0
.end method

.method public static f(ILjava/lang/Object;)Ll0/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ll0/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll0/a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ll0/e;->VERY_LOW:Ll0/e;

    invoke-direct {v0, p0, p1, v1}, Ll0/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ll0/e;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Ll0/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ll0/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll0/a;

    const/4 v1, 0x0

    sget-object v2, Ll0/e;->VERY_LOW:Ll0/e;

    invoke-direct {v0, v1, p0, v2}, Ll0/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ll0/e;)V

    return-object v0
.end method

.method public static h(ILjava/lang/Object;)Ll0/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ll0/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll0/a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ll0/e;->HIGHEST:Ll0/e;

    invoke-direct {v0, p0, p1, v1}, Ll0/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ll0/e;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)Ll0/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ll0/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll0/a;

    const/4 v1, 0x0

    sget-object v2, Ll0/e;->HIGHEST:Ll0/e;

    invoke-direct {v0, v1, p0, v2}, Ll0/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ll0/e;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Ll0/e;
.end method
