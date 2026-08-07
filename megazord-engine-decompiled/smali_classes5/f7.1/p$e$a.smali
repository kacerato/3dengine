.class public Lf7/p$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/p$e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf7/p$e;


# direct methods
.method public constructor <init>(Lf7/p$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lf7/p$e$a;->a:Lf7/p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/p$e$a;->a:Lf7/p$e;

    iget-object v0, v0, Lf7/p$e;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lf7/p$e$a;->a:Lf7/p$e;

    iget-object v0, v0, Lf7/p$e;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->P(Ljava/lang/String;)V

    iget-object p1, p0, Lf7/p$e$a;->a:Lf7/p$e;

    iget-object p1, p1, Lf7/p$e;->b:Lf7/p;

    invoke-static {p1}, Lf7/p;->p(Lf7/p;)V

    iget-object p1, p0, Lf7/p$e$a;->a:Lf7/p$e;

    iget-object p1, p1, Lf7/p$e;->b:Lf7/p;

    invoke-virtual {p1}, Lf7/p;->f0()V

    iget-object p1, p0, Lf7/p$e$a;->a:Lf7/p$e;

    iget-object p1, p1, Lf7/p$e;->b:Lf7/p;

    invoke-static {p1}, Lf7/p;->m(Lf7/p;)Lf7/H;

    move-result-object p1

    invoke-virtual {p1}, Lf7/H;->b0()V

    return-void
.end method
