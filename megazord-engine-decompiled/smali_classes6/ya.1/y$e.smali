.class public Lya/y$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/y$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lya/y$i<",
        "Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;",
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
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, p1}, Lya/y$e;->b(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->i0()V

    return-void
.end method
