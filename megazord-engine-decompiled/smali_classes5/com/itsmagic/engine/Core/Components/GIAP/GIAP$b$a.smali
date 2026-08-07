.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$b;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a$a;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, LI7/a;->t1(ZLI7/a$d;)V

    :goto_0
    return-void
.end method
