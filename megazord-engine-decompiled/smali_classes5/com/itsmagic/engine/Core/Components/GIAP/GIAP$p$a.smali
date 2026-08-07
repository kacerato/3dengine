.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;->a:Lcom/itsmagic/engine/Core/Components/GIAP/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/a;->a()V

    :cond_0
    return-void
.end method
