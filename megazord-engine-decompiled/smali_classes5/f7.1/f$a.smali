.class public Lf7/f$a;
.super Lr7/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/f;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

.field public final synthetic b:Lf7/f;


# direct methods
.method public constructor <init>(Lf7/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$a"
        }
    .end annotation

    iput-object p1, p0, Lf7/f$a;->b:Lf7/f;

    iput-object p2, p0, Lf7/f$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    iget-object p1, p0, Lf7/f$a;->b:Lf7/f;

    invoke-static {p1}, Lf7/f;->u1(Lf7/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf7/f$a;->b:Lf7/f;

    invoke-static {p1}, Lf7/f;->u1(Lf7/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf7/f$a;->b:Lf7/f;

    invoke-static {p1}, Lf7/f;->u1(Lf7/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    iget-object v0, p0, Lf7/f$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lf7/f$a;->b:Lf7/f;

    invoke-static {p1}, Lf7/f;->v1(Lf7/f;)Lf7/H;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf7/f$a;->b:Lf7/f;

    invoke-static {p1}, Lf7/f;->v1(Lf7/f;)Lf7/H;

    move-result-object p1

    invoke-virtual {p1}, Lf7/H;->b0()V

    :cond_1
    iget-object p1, p0, Lf7/f$a;->b:Lf7/f;

    invoke-static {p1}, Lf7/f;->w1(Lf7/f;)V

    return-void
.end method
