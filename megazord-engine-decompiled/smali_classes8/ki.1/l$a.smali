.class public Lki/l$a;
.super Lri/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lri/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lri/h;Lri/g;)Lri/f;
    .locals 2

    invoke-interface {p1}, Lri/h;->c()I

    move-result p2

    sget v0, Loi/d;->k:I

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, Lri/h;->a()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lri/h;->e()Lri/d;

    move-result-object p2

    invoke-interface {p2}, Lri/d;->getBlock()Lpi/b;

    move-result-object p2

    instance-of p2, p2, Lpi/x;

    if-nez p2, :cond_0

    new-instance p2, Lki/l;

    invoke-direct {p2}, Lki/l;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lri/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p2

    invoke-interface {p1}, Lri/h;->getColumn()I

    move-result p1

    sget v0, Loi/d;->k:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lri/f;->a(I)Lri/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1
.end method
