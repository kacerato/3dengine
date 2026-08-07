.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ5/c$n0<",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;Lma/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;->e(Lma/e;)V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lma/e;)V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->W0(Lma/e;)V

    return-void
.end method

.method public f(Lma/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lma/r;

    invoke-direct {v0, p0, p1}, Lma/r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;Lma/e;)V

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

    check-cast p1, Lma/e;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;->f(Lma/e;)V

    return-void
.end method
