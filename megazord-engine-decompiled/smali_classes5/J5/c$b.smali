.class public LJ5/c$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ5/c;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LJ5/c;


# direct methods
.method public constructor <init>(LJ5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ5/c$b;->b:LJ5/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LJ5/c$b;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->o1(LJ5/c;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, LJ5/c$b;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->q1(LJ5/c;)I

    iget-object p1, p0, LJ5/c$b;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->r1(LJ5/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJ5/c$b;->b:LJ5/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    :goto_0
    return-void
.end method
