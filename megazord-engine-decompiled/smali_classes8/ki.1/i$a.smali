.class public Lki/i$a;
.super Lri/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/i;
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

    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lri/h;->d()I

    move-result v0

    invoke-interface {p1}, Lri/h;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lki/i;->h(Ljava/lang/CharSequence;II)Lki/i;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Lri/d;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {p2}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p2

    invoke-static {p1}, Lki/i;->i(Lki/i;)Lpi/k;

    move-result-object p1

    invoke-virtual {p1}, Lpi/k;->s()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lri/f;->b(I)Lri/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1
.end method
