.class public Lya/y$b;
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
        "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1}, Lya/y$b;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
