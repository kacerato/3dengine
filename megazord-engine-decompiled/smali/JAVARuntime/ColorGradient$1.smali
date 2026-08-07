.class LJAVARuntime/ColorGradient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh9/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ColorGradient;->genericInterface()Lh9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$thisClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$thisClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ColorGradient$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCls()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ColorGradient$1;->val$thisClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ColorGradient$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInspector(Landroid/content/Context;Lh9/k;Ljava/lang/String;Lh9/q;)LW5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "constructor",
            "tittle",
            "userPointer"
        }
    .end annotation

    invoke-interface {p2}, Lh9/k;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJAVARuntime/ColorGradient;

    if-eqz p2, :cond_0

    iget-object p2, p2, LJAVARuntime/ColorGradient;->instance:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-static {p3, p2, p1}, Lfa/a;->a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;)LW5/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, LW5/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (null)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-direct {p1, p2, p3}, LW5/b;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lh9/q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    new-instance p1, LJAVARuntime/ColorGradient;

    invoke-direct {p1}, LJAVARuntime/ColorGradient;-><init>()V

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;Lh9/q;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->z(Ljava/lang/String;Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->F()LJAVARuntime/ColorGradient;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;Lh9/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation

    check-cast p2, LJAVARuntime/ColorGradient;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object p2, p2, LJAVARuntime/ColorGradient;->instance:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object p3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object p2
.end method
