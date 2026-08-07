.class public LFa/e;
.super LFa/a;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "GetSunriseFactor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LFa/e$a;

    invoke-direct {v0}, LFa/e$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "GetSunriseFactor"

    invoke-direct {p0, v0}, LFa/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    invoke-static {p1}, LFa/b;->e(F)F

    move-result p1

    return p1
.end method

.method public H0()Ljava/lang/String;
    .locals 1

    const-string v0, "Get Sunrise Factor"

    return-object v0
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, LFa/a;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lya/B;
    .locals 1

    invoke-super {p0}, LFa/a;->M()Lya/B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-super {p0, p1}, LFa/a;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m0()V
    .locals 0

    invoke-super {p0}, LFa/a;->m0()V

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_SUNRISE_FACTOR:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
