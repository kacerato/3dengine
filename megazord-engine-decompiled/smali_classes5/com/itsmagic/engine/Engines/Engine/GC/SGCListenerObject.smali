.class public Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.super Lbd/m;
.source "SourceFile"


# instance fields
.field private destroyListeners:[Lea/a;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbd/m;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestroyListeners()[Lea/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyListeners:[Lea/a;

    return-object v0
.end method

.method public setDestroyListeners([Lea/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destroyListeners"
        }
    .end annotation

    sget-object v0, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyListeners:[Lea/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Double define of destroy listeners"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyListeners:[Lea/a;

    return-void
.end method
