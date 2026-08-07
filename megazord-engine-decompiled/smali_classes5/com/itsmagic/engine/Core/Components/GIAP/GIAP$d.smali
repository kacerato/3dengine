.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->R(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

.field public final synthetic b:LI7/a;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$purchase",
            "val$loadingPanel",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->b:LI7/a;

    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GIAP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->v()V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->b:LI7/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LI7/a;->o1()V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    sget-object p1, Lo8/b;->f:LU8/a;

    iget-object p1, p1, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->i0()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lxd/f;->a(Ljava/lang/String;Landroid/content/Context;Lr7/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-static {p1}, LAd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-static {p1, v1}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x00010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->b()V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->g()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->b:LI7/a;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->n(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$d;->b:LI7/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LI7/a;->o1()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to request purchase at server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ops!"

    invoke-static {v0, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
