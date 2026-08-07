.class public LTa/r;
.super LTa/q;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "QuitGame"


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTa/r$a;

    invoke-direct {v0}, LTa/r$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LTa/q;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v0, p0, LTa/r;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "QuitGame"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LTa/r;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lya/B;
    .locals 1

    sget-object v0, Lya/B;->BOTH:Lya/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Quit Game"

    return-object p1
.end method

.method public a(ILya/H;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 1

    :try_start_0
    invoke-static {}, LJAVARuntime/GameController;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    throw v0
.end method
