.class public Lji/a$b;
.super Lri/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lji/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

    invoke-interface {p1}, Lri/h;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p2}, Lri/g;->a()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lri/h;->getIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lji/a;->h(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lji/a;->i(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, Lji/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lji/a;-><init>(Ljava/util/List;Ljava/util/List;Lji/a$a;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lri/d;

    const/4 v0, 0x0

    aput-object v1, p2, v0

    invoke-static {p2}, Lri/f;->d([Lri/d;)Lri/f;

    move-result-object p2

    invoke-interface {p1}, Lri/h;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Lri/f;->b(I)Lri/f;

    move-result-object p1

    invoke-virtual {p1}, Lri/f;->e()Lri/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lri/f;->c()Lri/f;

    move-result-object p1

    return-object p1
.end method
