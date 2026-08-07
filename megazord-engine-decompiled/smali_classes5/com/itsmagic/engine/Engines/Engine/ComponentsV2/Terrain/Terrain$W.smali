.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "W"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

.field public static final enum Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

.field public static final enum Paint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

.field public static final enum Raise:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

.field public static final enum Smooth:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    const-string v1, "Raise"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Raise:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    const-string v1, "Smooth"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Smooth:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    const-string v1, "Paint"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Paint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    const-string v1, "Level"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Raise:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Smooth:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Paint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    filled-new-array {v0, v1, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    return-object v0
.end method
