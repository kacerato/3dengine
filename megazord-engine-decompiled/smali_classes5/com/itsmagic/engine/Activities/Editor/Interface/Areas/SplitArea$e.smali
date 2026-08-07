.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LD4/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:LD4/a;

    return-object v0
.end method

.method public b()LD4/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:LD4/b;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v1, LD4/a;->None:LD4/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:LD4/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)LE4/d;

    move-result-object v0

    invoke-interface {v0}, LE4/d;->d()V

    return-void
.end method

.method public e()LD4/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)LE4/d;

    move-result-object v0

    invoke-interface {v0}, LE4/d;->b()LD4/b;

    move-result-object v0

    return-object v0
.end method

.method public f()LD4/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)LE4/d;

    move-result-object v0

    invoke-interface {v0}, LE4/d;->a()LD4/a;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)LE4/d;

    move-result-object v0

    invoke-interface {v0}, LE4/d;->isClosed()Z

    move-result v0

    return v0
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)LE4/d;

    move-result-object v0

    invoke-interface {v0}, LE4/d;->toggle()V

    return-void
.end method
