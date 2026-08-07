.class public LJ5/a$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ5/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LJ5/a;


# direct methods
.method public constructor <init>(LJ5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ5/a$c;->b:LJ5/a;

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

    iget-object p1, p0, LJ5/a$c;->b:LJ5/a;

    invoke-static {p1}, LJ5/a;->o1(LJ5/a;)I

    move-result p1

    iget-object v0, p0, LJ5/a$c;->b:LJ5/a;

    invoke-static {v0}, LJ5/a;->s1(LJ5/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, LJ5/a$c;->b:LJ5/a;

    invoke-static {p1}, LJ5/a;->s1(LJ5/a;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, LJ5/a$c;->b:LJ5/a;

    invoke-static {v0}, LJ5/a;->o1(LJ5/a;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK5/a;

    invoke-virtual {p1}, LK5/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LJ5/a$c;->b:LJ5/a;

    invoke-static {p1}, LJ5/a;->p1(LJ5/a;)I

    iget-object p1, p0, LJ5/a$c;->b:LJ5/a;

    invoke-static {p1}, LJ5/a;->r1(LJ5/a;)V

    :cond_0
    return-void
.end method
