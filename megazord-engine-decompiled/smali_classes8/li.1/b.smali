.class public abstract Lli/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi/a;


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lli/b;->a:C

    return-void
.end method


# virtual methods
.method public a()C
    .locals 1

    iget-char v0, p0, Lli/b;->a:C

    return v0
.end method

.method public b(Lpi/A;Lpi/A;I)V
    .locals 2

    invoke-virtual {p0}, Lli/b;->d()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    new-instance p3, Lpi/j;

    invoke-direct {p3, v0}, Lpi/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lpi/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lpi/z;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {v0}, Lpi/v;->g()Lpi/v;

    move-result-object v1

    invoke-virtual {p3, v0}, Lpi/v;->d(Lpi/v;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p3}, Lpi/v;->j(Lpi/v;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()C
    .locals 1

    iget-char v0, p0, Lli/b;->a:C

    return v0
.end method

.method public e(Lsi/b;Lsi/b;)I
    .locals 2

    invoke-interface {p1}, Lsi/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lsi/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2}, Lsi/b;->b()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lsi/b;->b()I

    move-result v0

    invoke-interface {p2}, Lsi/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Lsi/b;->length()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    invoke-interface {p2}, Lsi/b;->length()I

    move-result p1

    if-lt p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
