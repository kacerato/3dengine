.class public Lki/g;
.super Lri/a;
.source "SourceFile"


# instance fields
.field public final a:Lpi/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lri/a;-><init>()V

    new-instance v0, Lpi/i;

    invoke-direct {v0}, Lpi/i;-><init>()V

    iput-object v0, p0, Lki/g;->a:Lpi/i;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lri/h;)Lri/c;
    .locals 0

    invoke-interface {p1}, Lri/h;->getIndex()I

    move-result p1

    invoke-static {p1}, Lri/c;->b(I)Lri/c;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public f(Lpi/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getBlock()Lpi/b;
    .locals 1

    invoke-virtual {p0}, Lki/g;->h()Lpi/i;

    move-result-object v0

    return-object v0
.end method

.method public h()Lpi/i;
    .locals 1

    iget-object v0, p0, Lki/g;->a:Lpi/i;

    return-object v0
.end method
