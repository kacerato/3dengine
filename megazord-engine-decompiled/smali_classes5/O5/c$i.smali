.class public LO5/c$i;
.super LX7/a;
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
.field public final synthetic a:LO5/c;


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

    iput-object p1, p0, LO5/c$i;->a:LO5/c;

    invoke-direct {p0}, LX7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LX7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/i;",
            ")",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LO5/c$i;->a:LO5/c;

    invoke-static {v0, p1}, LO5/c;->x1(LO5/c;LX7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LO5/c$i;->a:LO5/c;

    invoke-static {v0}, LO5/c;->y1(LO5/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(LX7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p1, LX7/i;->f:LX7/h;

    iget-boolean v0, v0, LX7/h;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LO5/c$i;->a:LO5/c;

    invoke-static {v0}, LO5/c;->z1(LO5/c;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->z(LX7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO5/c$i;->a:LO5/c;

    invoke-static {v0}, LO5/c;->z1(LO5/c;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->x(LX7/i;)V

    :goto_0
    return-void
.end method
