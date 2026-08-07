.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".giap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {}, Lp8/a;->m()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->m(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;)Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    :try_start_2
    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->m(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;)Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->l()Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$i;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->m(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;)Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->l()Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->l()Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;->pendingPurchasesForLogin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lo8/b;->f:LU8/a;

    iget-object v2, v2, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->l()Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;->pendingPurchasesForLogin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-static {v1, v4, v3}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->n(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->l()Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;->pendingPurchasesForLogin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->o()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->b0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lh6/a;->D1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
