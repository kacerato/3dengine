.class public Lki/t$a;
.super Lri/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/t;
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

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lri/h;->d()I

    move-result p2

    invoke-interface {p1}, Lri/h;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Lki/t;->h(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lki/t;

    invoke-direct {p2}, Lki/t;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lri/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lri/f;->b(I)Lri/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1
.end method
