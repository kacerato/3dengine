.class public LTc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LId/h<",
        "LTc/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTc/b;->b()LTc/a;

    move-result-object v0

    return-object v0
.end method

.method public b()LTc/a;
    .locals 1

    new-instance v0, LTc/a;

    invoke-direct {v0}, LTc/a;-><init>()V

    return-object v0
.end method
