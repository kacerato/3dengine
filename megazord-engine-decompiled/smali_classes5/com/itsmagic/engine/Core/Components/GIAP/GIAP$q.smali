.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->z(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$downloadListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;->b:Lcom/itsmagic/engine/Core/Components/GIAP/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$q;->b:Lcom/itsmagic/engine/Core/Components/GIAP/a;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->z(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V

    return-void
.end method
