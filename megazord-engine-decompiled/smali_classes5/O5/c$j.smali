.class public LO5/c$j;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/c;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO5/c;


# direct methods
.method public constructor <init>(LO5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO5/c$j;->b:LO5/c;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, LO5/c$j;->b:LO5/c;

    invoke-static {p1}, LO5/c;->q1(LO5/c;)V

    iget-object p1, p0, LO5/c$j;->b:LO5/c;

    invoke-static {p1}, LO5/c;->r1(LO5/c;)LO5/c$s;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LO5/c$s;->a(Ljava/util/List;)V

    iget-object p1, p0, LO5/c$j;->b:LO5/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method
