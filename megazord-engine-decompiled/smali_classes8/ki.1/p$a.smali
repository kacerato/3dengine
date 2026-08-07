.class public Lki/p$a;
.super Lri/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/p;
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
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2}, Lri/g;->b()Lri/d;

    move-result-object v2

    invoke-interface {p1}, Lri/h;->c()I

    move-result v3

    sget v4, Loi/d;->k:I

    if-lt v3, v4, :cond_0

    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lri/h;->d()I

    move-result v3

    invoke-interface {p1}, Lri/h;->getColumn()I

    move-result v4

    invoke-interface {p1}, Lri/h;->c()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {p2}, Lri/g;->a()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-interface {p1}, Lri/h;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v3, v4, p2}, Lki/p;->h(Ljava/lang/CharSequence;IIZ)Lki/p$b;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1

    :cond_2
    iget v3, p2, Lki/p$b;->b:I

    new-instance v4, Lki/q;

    invoke-interface {p1}, Lri/h;->getColumn()I

    move-result p1

    sub-int p1, v3, p1

    invoke-direct {v4, p1}, Lki/q;-><init>(I)V

    instance-of p1, v2, Lki/p;

    if-eqz p1, :cond_4

    invoke-interface {v2}, Lri/d;->getBlock()Lpi/b;

    move-result-object p1

    check-cast p1, Lpi/t;

    iget-object v2, p2, Lki/p$b;->a:Lpi/t;

    invoke-static {p1, v2}, Lki/p;->i(Lpi/t;Lpi/t;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, v1, [Lri/d;

    aput-object v4, p1, v0

    invoke-static {p1}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lri/f;->a(I)Lri/f;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, Lki/p;

    iget-object v2, p2, Lki/p$b;->a:Lpi/t;

    invoke-direct {p1, v2}, Lki/p;-><init>(Lpi/t;)V

    iget-object p2, p2, Lki/p$b;->a:Lpi/t;

    invoke-virtual {p2, v1}, Lpi/t;->r(Z)V

    const/4 p2, 0x2

    new-array p2, p2, [Lri/d;

    aput-object p1, p2, v0

    aput-object v4, p2, v1

    invoke-static {p2}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lri/f;->a(I)Lri/f;

    move-result-object p1

    return-object p1
.end method
