.class public LO5/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e;->p2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO5/e;


# direct methods
.method public constructor <init>(LO5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO5/e$i;->b:LO5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LO5/e$i;->b:LO5/e;

    invoke-virtual {v0}, LO5/e;->Z1()LO5/e$u;

    move-result-object v0

    iget-object v1, p0, LO5/e$i;->b:LO5/e;

    invoke-static {v1, v0}, LO5/e;->B1(LO5/e;LO5/e$u;)LO5/e$u;

    iget-object v1, p0, LO5/e$i;->b:LO5/e;

    invoke-static {v1, v0}, LO5/e;->D1(LO5/e;LO5/e$u;)V

    iget-object v0, p0, LO5/e$i;->b:LO5/e;

    new-instance v1, LO5/e$i$a;

    invoke-direct {v1, p0}, LO5/e$i$a;-><init>(LO5/e$i;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T0(Ljava/lang/Runnable;)V

    return-void
.end method
