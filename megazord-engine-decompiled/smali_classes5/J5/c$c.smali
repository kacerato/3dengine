.class public LJ5/c$c;
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

    iput-object p1, p0, LJ5/c$c;->b:LJ5/c;

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

    iget-object p1, p0, LJ5/c$c;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->o1(LJ5/c;)I

    move-result p1

    iget-object v0, p0, LJ5/c$c;->b:LJ5/c;

    invoke-static {v0}, LJ5/c;->s1(LJ5/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, LJ5/c$c;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->s1(LJ5/c;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, LJ5/c$c;->b:LJ5/c;

    invoke-static {v0}, LJ5/c;->o1(LJ5/c;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK5/a;

    invoke-virtual {p1}, LK5/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LJ5/c$c;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->p1(LJ5/c;)I

    iget-object p1, p0, LJ5/c$c;->b:LJ5/c;

    invoke-static {p1}, LJ5/c;->r1(LJ5/c;)V

    :cond_0
    return-void
.end method
