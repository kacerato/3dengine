.class public Li7/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/a;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li7/a;


# direct methods
.method public constructor <init>(Li7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li7/a$a;->b:Li7/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Li7/a$a;->b:Li7/a;

    invoke-static {v0}, Li7/a;->o1(Li7/a;)V

    iget-object v0, p0, Li7/a$a;->b:Li7/a;

    invoke-static {v0, p1}, Li7/a;->p1(Li7/a;Landroid/view/View;)V

    iget-object p1, p0, Li7/a$a;->b:Li7/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    new-instance p1, Lma/f;

    iget-object v0, p0, Li7/a$a;->b:Li7/a;

    invoke-static {v0}, Li7/a;->q1(Li7/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lma/f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(Lec/c;)V

    return-void
.end method
