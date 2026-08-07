.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$finalDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->o()Z

    move-result v0

    const-string v1, "]COMPLETED"

    const-string v2, "BUY["

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->l()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->c:Landroid/content/Context;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->b:LI7/a;

    invoke-static {v1, v0, v2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->n(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;LI7/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a$a;->c:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;->a:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->c:Landroid/content/Context;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->h(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    return-void
.end method
