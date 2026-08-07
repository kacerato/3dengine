.class Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedData"
.end annotation


# instance fields
.field final pendingPurchasesForLogin:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;->pendingPurchasesForLogin:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;-><init>()V

    return-void
.end method
