.class public LP/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LP/e<",
        "LO/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;LB/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "LO/c;",
            ">;",
            "LB/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO/c;

    invoke-virtual {p1}, LO/c;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, LL/b;

    invoke-static {p1}, LX/a;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, LL/b;-><init>([B)V

    return-object p2
.end method
