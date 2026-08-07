.class public Lki/c$a;
.super Lri/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/c;
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
    .locals 3

    const/4 p2, 0x1

    invoke-interface {p1}, Lri/h;->d()I

    move-result v0

    invoke-static {p1, v0}, Lki/c;->h(Lri/h;I)Z

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

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Loi/d;->i(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v2, v1, 0x2

    :cond_0
    new-instance p1, Lki/c;

    invoke-direct {p1}, Lki/c;-><init>()V

    new-array p2, p2, [Lri/d;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lri/f;->a(I)Lri/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1
.end method
