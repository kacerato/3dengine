.class public LW2/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LR2/Q<",
        "LW2/y;",
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
.method public a()LW2/y;
    .locals 1

    new-instance v0, LW2/A;

    invoke-direct {v0}, LW2/A;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LW2/z$a;->a()LW2/y;

    move-result-object v0

    return-object v0
.end method
