.class public Lf7/p$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/p;->l0(Landroid/view/View;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public final synthetic d:Lf7/p;


# direct methods
.method public constructor <init>(Lf7/p;IILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$actualIndex",
            "val$inputIndex",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf7/p$u;->d:Lf7/p;

    iput p2, p0, Lf7/p$u;->a:I

    iput p3, p0, Lf7/p$u;->b:I

    iput-object p4, p0, Lf7/p$u;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lf7/p$u;->d:Lf7/p;

    iget v3, p0, Lf7/p$u;->b:I

    invoke-static {v2, v3}, Lf7/p;->n(Lf7/p;I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf7/p$u;->d:Lf7/p;

    invoke-static {v0}, Lf7/p;->k(Lf7/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    iget v1, p0, Lf7/p$u;->a:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->g(IF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;)V

    iget-object p1, p0, Lf7/p$u;->d:Lf7/p;

    iget v0, p0, Lf7/p$u;->b:I

    iget-object v1, p0, Lf7/p$u;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, v0, v1}, Lf7/p;->l(Lf7/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    iget-object p1, p0, Lf7/p$u;->d:Lf7/p;

    invoke-static {p1}, Lf7/p;->m(Lf7/p;)Lf7/H;

    move-result-object p1

    invoke-virtual {p1}, Lf7/H;->b0()V

    return-void
.end method
