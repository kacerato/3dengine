.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;,
        Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;,
        Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static final b:I = 0x5

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

.field public static final f:Ljava/lang/Object;

.field public static g:Z

.field public static h:I

.field public static i:Lcom/android/billingclient/api/BillingClient;

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->a:Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->f:Ljava/lang/Object;

    sput-boolean v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method public static B()I
    .locals 1

    sget v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->h:I

    return v0
.end method

.method public static C()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static D()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static E()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static F(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "purchase"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    invoke-direct {v0, p1, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Landroid/content/Context;)V

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static G(Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "purchases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase json "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->K(Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v12

    move-object v5, v3

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v5 .. v11}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/GIAP/c;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/d;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->y(Z)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->q(Z)V

    :cond_0
    invoke-static {p0, v3}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->F(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purchase state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->K(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static H(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$i;

    invoke-direct {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$j;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$j;-><init>()V

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->v(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V

    return-void
.end method

.method public static I()Z
    .locals 1

    sget-boolean v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g:Z

    return v0
.end method

.method public static J()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$k;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$k;-><init>()V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static K(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "GIAP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static L(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->O(Landroid/content/Context;)V

    return-void
.end method

.method public static M()V
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Core/Components/GIAP/c;->b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    sget-object v3, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Core/Components/GIAP/b;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static N()V
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Core/Components/GIAP/c;->b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Core/Components/GIAP/b;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static O(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$m;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$n;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public static P()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$e;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$e;-><init>()V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Q(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static R(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "purchase",
            "loadingPanel"
        }
    .end annotation

    sget-object v0, Lo8/b;->f:LU8/a;

    iget-object v0, v0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$c;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$c;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;

    invoke-direct {v1, p1, p2, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$c;->a(Ljava/util/HashMap;LAd/d;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, LI7/a;->o1()V

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->U(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->x(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    :goto_0
    return-void
.end method

.method public static S(Landroid/app/Activity;Lcom/itsmagic/engine/Core/Components/GIAP/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "product"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/g1;->w(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lud/a;

    const-string v0, "Something went wrong :("

    const-string v1, "Algo deu errado :("

    invoke-direct {p1, v0, v1}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lud/a;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Use startBuySubscription instead"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static T(Landroid/app/Activity;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "product",
            "subPlan"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/g1;->w(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2, p0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lud/a;

    const-string p2, "Something went wrong :("

    const-string v0, "Algo deu errado :("

    invoke-direct {p1, p2, v0}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lud/a;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Use startBuy instead"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static U(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purchase"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "STORING PURCHASE FOR LATER LOGIN"

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->K(Ljava/lang/String;)V

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$i;)V

    sput-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;->pendingPurchasesForLogin:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->P()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->J()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->G(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->M()V

    return-void
.end method

.method public static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->N()V

    return-void
.end method

.method public static synthetic g()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->j:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic h(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->u(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    return-void
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->x(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    return-void
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->w(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->Q(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    return-object v0
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;)Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;
    .locals 0

    sput-object p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    return-object p0
.end method

.method public static synthetic n(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->R(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V

    return-void
.end method

.method public static synthetic o()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->P()V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->K(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q(Z)Z
    .locals 0

    sput-boolean p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g:Z

    return p0
.end method

.method public static synthetic r(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->L(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic s(I)I
    .locals 0

    sput p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->h:I

    return p0
.end method

.method public static t(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "purchase",
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    :cond_0
    return-void
.end method

.method public static u(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "purchase"
        }
    .end annotation

    sget-object p0, Lo8/b;->f:LU8/a;

    iget-object v0, p0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/c;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COINS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->s(I)V

    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "connectListener"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g:Z

    if-nez v0, :cond_0

    const-string v0, "CONNECTING GIAP"

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->K(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$l;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_0
    return-void
.end method

.method public static w(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purchase"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->a()V

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p0

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$g;

    invoke-direct {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$g;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    :cond_0
    return-void
.end method

.method public static x(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purchase"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->l()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$f;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->t(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->w(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static y(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadListener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/a;->a()V

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->I()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$o;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$o;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->v(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/c;->b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$p;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->O(Landroid/content/Context;)V

    return-void
.end method

.method public static z(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadListener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/a;->a()V

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->I()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->v(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/c;->b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    const-string v5, "subs"

    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$a;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$a;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->O(Landroid/content/Context;)V

    return-void
.end method
