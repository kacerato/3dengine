.class public LD5/c$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/c$c;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:LD5/c$c;


# direct methods
.method public constructor <init>(LD5/c$c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LD5/c$c$b;->b:LD5/c$c;

    iput-object p2, p0, LD5/c$c$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LD5/c$c$b;->b:LD5/c$c;

    iget-object v0, v0, LD5/c$c;->a:La5/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/c$c$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LD5/c$c$b;->b:LD5/c$c;

    iget-object v1, p0, LD5/c$c$b;->a:Ljava/util/List;

    invoke-static {v0, v1}, LD5/c$c;->a(LD5/c$c;Ljava/util/List;)V

    iget-object v0, p0, LD5/c$c$b;->b:LD5/c$c;

    iget-object v0, v0, LD5/c$c;->a:La5/c;

    iget-object v1, p0, LD5/c$c$b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, La5/c;->u1(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LD5/c$c$b;->b:LD5/c$c;

    iget-object v0, v0, LD5/c$c;->a:La5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    iget-object v0, p0, LD5/c$c$b;->b:LD5/c$c;

    const/4 v1, 0x0

    iput-object v1, v0, LD5/c$c;->a:La5/c;

    :cond_0
    return-void
.end method
