.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->x(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$purchase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$f;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Subscript knowledge error"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$f;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->j(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Subscript knowledge success"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
