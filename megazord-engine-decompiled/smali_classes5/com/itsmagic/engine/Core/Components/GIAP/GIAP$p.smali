.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->y(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/GIAP/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$downloadListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;->a:Lcom/itsmagic/engine/Core/Components/GIAP/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "billingResult",
            "productDetailsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/b;

    invoke-direct {v1, p2}, Lcom/itsmagic/engine/Core/Components/GIAP/b;-><init>(Lcom/android/billingclient/api/ProductDetails;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d()V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;->a:Lcom/itsmagic/engine/Core/Components/GIAP/a;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p$a;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;)V

    invoke-static {p1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
