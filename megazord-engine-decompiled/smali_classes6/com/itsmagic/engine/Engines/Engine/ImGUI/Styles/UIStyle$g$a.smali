.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ5/c$n0<",
        "Lma/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;Lma/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;->e(Lma/d;)V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lma/d;)V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->M0(Lma/d;)V

    return-void
.end method

.method public f(Lma/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lma/u;

    invoke-direct {v0, p0, p1}, Lma/u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;Lma/d;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lma/d;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;->f(Lma/d;)V

    return-void
.end method
