.class public final Lr1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lr1/r;

.field public b:Landroid/net/Uri;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lr1/h;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lr1/h;

    iget-object v1, p0, Lr1/h$a;->a:Lr1/r;

    iget-object v2, p0, Lr1/h$a;->b:Landroid/net/Uri;

    iget-object v3, p0, Lr1/h$a;->c:[B

    invoke-direct {v0, v1, v2, v3}, Lr1/h;-><init>(Lr1/r;Landroid/net/Uri;[B)V

    return-object v0
.end method

.method public b([B)Lr1/h$a;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lr1/h;->K0([B)[B

    iput-object p1, p0, Lr1/h$a;->c:[B

    return-object p0
.end method

.method public c(Landroid/net/Uri;)Lr1/h$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lr1/h;->J0(Landroid/net/Uri;)Landroid/net/Uri;

    iput-object p1, p0, Lr1/h$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public d(Lr1/r;)Lr1/h$a;
    .locals 0
    .param p1    # Lr1/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr1/r;

    iput-object p1, p0, Lr1/h$a;->a:Lr1/r;

    return-object p0
.end method
