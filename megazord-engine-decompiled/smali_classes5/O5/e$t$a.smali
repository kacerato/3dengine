.class public LO5/e$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY7/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e$t;-><init>(LO5/e;Landroidx/documentfile/provider/DocumentFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/e;

.field public final synthetic b:LO5/e$t;


# direct methods
.method public constructor <init>(LO5/e$t;LO5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO5/e$t$a;->b:LO5/e$t;

    iput-object p2, p0, LO5/e$t$a;->a:LO5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LY7/e$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, LO5/e$k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LO5/e$t$a;->b:LO5/e$t;

    iput-boolean v0, p1, LO5/e$t;->n:Z

    invoke-virtual {p1, v0}, LO5/e$t;->x(Z)Z

    iget-object p1, p0, LO5/e$t$a;->b:LO5/e$t;

    iget-object p1, p1, LO5/e$t;->q:LO5/e;

    invoke-static {p1}, LO5/e;->o1(LO5/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LO5/e$t$a;->b:LO5/e$t;

    const/4 v0, 0x0

    iput-boolean v0, p1, LO5/e$t;->n:Z

    invoke-virtual {p1, v0}, LO5/e$t;->x(Z)Z

    iget-object p1, p0, LO5/e$t$a;->b:LO5/e$t;

    iget-object p1, p1, LO5/e$t;->q:LO5/e;

    invoke-static {p1}, LO5/e;->o1(LO5/e;)V

    :goto_0
    return-void
.end method

.method public getState()LY7/e$d;
    .locals 1

    iget-object v0, p0, LO5/e$t$a;->b:LO5/e$t;

    iget-object v0, v0, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LO5/e$t$a;->b:LO5/e$t;

    iget-boolean v0, v0, LO5/e$t;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, LY7/e$d;->FullSelected:LY7/e$d;

    return-object v0

    :cond_0
    sget-object v0, LY7/e$d;->Unselected:LY7/e$d;

    return-object v0

    :cond_1
    iget-object v0, p0, LO5/e$t$a;->b:LO5/e$t;

    invoke-virtual {v0}, LO5/e$t;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LY7/e$d;->FullSelected:LY7/e$d;

    return-object v0

    :cond_2
    iget-object v0, p0, LO5/e$t$a;->b:LO5/e$t;

    invoke-virtual {v0}, LO5/e$t;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LY7/e$d;->PartiallySelected:LY7/e$d;

    return-object v0

    :cond_3
    sget-object v0, LY7/e$d;->Unselected:LY7/e$d;

    return-object v0
.end method
