.class public LK7/b$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK7/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LK7/b;


# direct methods
.method public constructor <init>(LK7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LK7/b$a;->b:LK7/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LK7/b$a;->b:LK7/b;

    invoke-static {p1}, LK7/b;->o1(LK7/b;)LHf/m;

    move-result-object p1

    invoke-virtual {p1}, LHf/m;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LK7/b$a;->b:LK7/b;

    invoke-static {p1}, LK7/b;->o1(LK7/b;)LHf/m;

    move-result-object v0

    iget-object v1, p0, LK7/b$a;->b:LK7/b;

    invoke-static {v1}, LK7/b;->o1(LK7/b;)LHf/m;

    move-result-object v1

    invoke-virtual {v1}, LHf/h;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LHf/h;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK7/c;

    invoke-static {p1, v0}, LK7/b;->p1(LK7/b;LK7/c;)V

    :cond_0
    return-void
.end method
