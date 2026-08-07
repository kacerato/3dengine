.class public LZ5/c$l$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c$l;->onCreate(Landroid/view/View;Landroid/content/Context;LW5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ5/c$l;


# direct methods
.method public constructor <init>(LZ5/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ5/c$l$a;->b:LZ5/c$l;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, LZ5/c$l$a;->b:LZ5/c$l;

    iget-boolean v0, p1, LZ5/c$l;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, LZ5/c$l;->c:Z

    invoke-static {p1}, LZ5/c$l;->c(LZ5/c$l;)V

    iget-object p1, p0, LZ5/c$l$a;->b:LZ5/c$l;

    iget-boolean v0, p1, LZ5/c$l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, LZ5/c$l;->e:LZ5/c$o0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, LZ5/c$o0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, LZ5/c$l;->d:Ljava/util/List;

    :cond_0
    iget-object p1, p0, LZ5/c$l$a;->b:LZ5/c$l;

    invoke-virtual {p1}, LZ5/c$l;->d()V

    return-void
.end method
