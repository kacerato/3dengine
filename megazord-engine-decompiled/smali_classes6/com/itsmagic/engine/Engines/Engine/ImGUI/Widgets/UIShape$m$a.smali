.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b(Ljava/util/List;)Ljava/util/List;
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
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;Lma/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;->e(Lma/d;)V

    return-void
.end method

.method private synthetic e(Lma/d;)V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;->setGradientMode(Lma/d;)V

    return-void
.end method


# virtual methods
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

    new-instance v0, Lpa/z;

    invoke-direct {v0, p0, p1}, Lpa/z;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;Lma/d;)V

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;->f(Lma/d;)V

    return-void
.end method
