.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->F(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$purchase",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->b:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b$a;-><init>(Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$b;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
