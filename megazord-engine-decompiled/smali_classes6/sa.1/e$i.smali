.class public Lsa/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/e;->L(Lsa/c;Z)Lsa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lsa/a;

.field public final synthetic c:Lsa/c;

.field public final synthetic d:Lsa/e;


# direct methods
.method public constructor <init>(Lsa/e;Lsa/a;Lsa/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$hit",
            "val$ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lsa/e$i;->d:Lsa/e;

    iput-object p2, p0, Lsa/e$i;->b:Lsa/a;

    iput-object p3, p0, Lsa/e$i;->c:Lsa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, LJAVARuntime/GizmoPath;

    invoke-direct {v0}, LJAVARuntime/GizmoPath;-><init>()V

    iget-object v1, p0, Lsa/e$i;->b:Lsa/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsa/e$i;->d:Lsa/e;

    invoke-static {v1}, Lsa/e;->q(Lsa/e;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsa/e$i;->d:Lsa/e;

    invoke-static {v1}, Lsa/e;->r(Lsa/e;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    :goto_0
    iget-object v1, p0, Lsa/e$i;->b:Lsa/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lsa/e$i;->c:Lsa/c;

    iget-object v1, v1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    iget-object v2, p0, Lsa/e$i;->b:Lsa/a;

    invoke-virtual {v2}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lsa/e;->s()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lsa/e$i;->c:Lsa/c;

    iget-object v2, v2, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lsa/e$i;->c:Lsa/c;

    iget v2, v2, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p0, Lsa/e$i;->c:Lsa/c;

    iget-object v3, v3, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lsa/e$i;->c:Lsa/c;

    iget v3, v3, Lsa/c;->c:F

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lsa/e$i;->c:Lsa/c;

    iget-object v1, v1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p0, Lsa/e$i;->c:Lsa/c;

    iget-object v3, v3, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, 0x497423f0    # 999999.0f

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lsa/e$i;->c:Lsa/c;

    iget-object v1, v1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :goto_2
    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {v0}, Lnc/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
