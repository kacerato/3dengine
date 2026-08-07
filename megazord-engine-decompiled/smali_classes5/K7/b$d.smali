.class public LK7/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK7/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK7/b;->t1(LK7/c;)LK7/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LK7/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LK7/c;

.field public final synthetic b:LK7/b;


# direct methods
.method public constructor <init>(LK7/b;LK7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK7/b$d;->b:LK7/b;

    iput-object p2, p0, LK7/b$d;->a:LK7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LK7/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LK7/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LK7/b$d;->b:LK7/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LK7/b$d;->b:LK7/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, LK7/b$d;->b:LK7/b;

    invoke-static {v0}, LK7/b;->o1(LK7/b;)LHf/m;

    move-result-object v0

    invoke-virtual {v0}, LHf/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK7/b$d;->b:LK7/b;

    invoke-static {v0}, LK7/b;->o1(LK7/b;)LHf/m;

    move-result-object v1

    iget-object v2, p0, LK7/b$d;->b:LK7/b;

    invoke-static {v2}, LK7/b;->o1(LK7/b;)LHf/m;

    move-result-object v2

    invoke-virtual {v2}, LHf/h;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, LHf/h;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK7/c;

    invoke-static {v0, v1}, LK7/b;->p1(LK7/b;LK7/c;)V

    :cond_0
    return-void
.end method

.method public d(LK7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    iget-object v0, p0, LK7/b$d;->b:LK7/b;

    invoke-static {v0, p1}, LK7/b;->r1(LK7/b;LK7/c;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object v0, p0, LK7/b$d;->a:LK7/c;

    invoke-virtual {v0, p1}, LK7/c;->e(Ljava/lang/String;)LK7/c;

    move-result-object p1

    iget-object v0, p0, LK7/b$d;->b:LK7/b;

    invoke-static {v0, p1}, LK7/b;->r1(LK7/b;LK7/c;)V

    return-void
.end method
