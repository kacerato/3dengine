.class public Ly6/E$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/E;->a1(Landroid/view/View;ILya/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lya/H;

.field public final synthetic d:Ly6/E;


# direct methods
.method public constructor <init>(Ly6/E;IILya/H;)V
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

    iput-object p1, p0, Ly6/E$k;->d:Ly6/E;

    iput p2, p0, Ly6/E$k;->a:I

    iput p3, p0, Ly6/E$k;->b:I

    iput-object p4, p0, Ly6/E$k;->c:Lya/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ly6/E$k;->d:Ly6/E;

    iget v3, p0, Ly6/E$k;->b:I

    invoke-static {v2, v3}, Ly6/E;->w(Ly6/E;I)F

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
    iget-object v0, p0, Ly6/E$k;->d:Ly6/E;

    invoke-static {v0}, Ly6/E;->r(Ly6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    iget v1, p0, Ly6/E$k;->a:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->r(IF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    iget-object p1, p0, Ly6/E$k;->d:Ly6/E;

    iget v0, p0, Ly6/E$k;->b:I

    iget-object v1, p0, Ly6/E$k;->c:Lya/H;

    invoke-static {p1, v0, v1}, Ly6/E;->s(Ly6/E;ILya/H;)V

    iget-object p1, p0, Ly6/E$k;->d:Ly6/E;

    invoke-static {p1}, Ly6/E;->v(Ly6/E;)Ly6/X;

    move-result-object p1

    invoke-virtual {p1}, Ly6/X;->i0()V

    return-void
.end method
