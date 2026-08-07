.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->v(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$connectListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 1

    const-string v0, "BillingClient disconnected"

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->q(Z)Z

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billingResult"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GIAP RESPONSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BillingClient connected successfully"

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->q(Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->r(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->s(I)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->q(Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BillingClient connected error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;->a()V

    :goto_0
    return-void
.end method
