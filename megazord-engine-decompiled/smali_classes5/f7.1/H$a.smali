.class public Lf7/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf7/H;


# direct methods
.method public constructor <init>(Lf7/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lf7/H$a;->b:Lf7/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lf7/H$a;->b:Lf7/H;

    invoke-static {v0}, Lf7/H;->k(Lf7/H;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf7/H$a;->b:Lf7/H;

    invoke-static {v0}, Lf7/H;->k(Lf7/H;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    :cond_0
    iget-object v0, p0, Lf7/H$a;->b:Lf7/H;

    invoke-static {v0}, Lf7/H;->l(Lf7/H;)V

    return-void
.end method
