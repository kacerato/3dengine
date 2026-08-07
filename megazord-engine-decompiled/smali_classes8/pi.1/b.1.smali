.class public abstract Lpi/b;
.super Lpi/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpi/v;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic h()Lpi/v;
    .locals 1

    invoke-virtual {p0}, Lpi/b;->p()Lpi/b;

    move-result-object v0

    return-object v0
.end method

.method public m(Lpi/v;)V
    .locals 1

    instance-of v0, p1, Lpi/b;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lpi/v;->m(Lpi/v;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent of block must also be block (can not be inline)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p()Lpi/b;
    .locals 1

    invoke-super {p0}, Lpi/v;->h()Lpi/v;

    move-result-object v0

    check-cast v0, Lpi/b;

    return-object v0
.end method
