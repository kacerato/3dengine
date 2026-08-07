.class public Lki/c;
.super Lri/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lki/c$a;
    }
.end annotation


# instance fields
.field public final a:Lpi/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lri/a;-><init>()V

    new-instance v0, Lpi/c;

    invoke-direct {v0}, Lpi/c;-><init>()V

    iput-object v0, p0, Lki/c;->a:Lpi/c;

    return-void
.end method

.method public static synthetic h(Lri/h;I)Z
    .locals 0

    invoke-static {p0, p1}, Lki/c;->j(Lri/h;I)Z

    move-result p0

    return p0
.end method

.method public static j(Lri/h;I)Z
    .locals 2

    invoke-interface {p0}, Lri/h;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0}, Lri/h;->c()I

    move-result p0

    sget v1, Loi/d;->k:I

    if-ge p0, v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x3e

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lri/h;)Lri/c;
    .locals 3

    invoke-interface {p1}, Lri/h;->d()I

    move-result v0

    invoke-static {p1, v0}, Lki/c;->j(Lri/h;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lri/h;->getColumn()I

    move-result v1

    invoke-interface {p1}, Lri/h;->c()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Lri/h;->b()Ljava/lang/CharSequence;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Loi/d;->i(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v2, v1, 0x2

    :cond_0
    invoke-static {v2}, Lri/c;->a(I)Lri/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lri/c;->d()Lri/c;

    move-result-object p1

    return-object p1
.end method

.method public f(Lpi/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getBlock()Lpi/b;
    .locals 1

    invoke-virtual {p0}, Lki/c;->i()Lpi/c;

    move-result-object v0

    return-object v0
.end method

.method public i()Lpi/c;
    .locals 1

    iget-object v0, p0, Lki/c;->a:Lpi/c;

    return-object v0
.end method
