.class public final LVe/i;
.super LVe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LVe/f<",
        "LCi/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = -0x9cfc6416eb4a343L


# direct methods
.method public constructor <init>(LCi/d;)V
    .locals 0

    invoke-direct {p0, p1}, LVe/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build LUe/f;
        .end annotation
    .end param

    check-cast p1, LCi/d;

    invoke-virtual {p0, p1}, LVe/i;->b(LCi/d;)V

    return-void
.end method

.method public b(LCi/d;)V
    .locals 0
    .param p1    # LCi/d;
        .annotation build LUe/f;
        .end annotation
    .end param

    invoke-interface {p1}, LCi/d;->cancel()V

    return-void
.end method
