.class public final enum Lma/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lma/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lma/b;

.field public static final enum Bevel:Lma/b;

.field public static final enum InvertedRound:Lma/b;

.field public static final enum Notch:Lma/b;

.field public static final enum Round:Lma/b;

.field public static final enum Sharp:Lma/b;

.field public static final enum Squircle:Lma/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lma/b;

    const-string v1, "Sharp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lma/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b;->Sharp:Lma/b;

    new-instance v0, Lma/b;

    const-string v1, "Round"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lma/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b;->Round:Lma/b;

    new-instance v0, Lma/b;

    const-string v1, "InvertedRound"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lma/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b;->InvertedRound:Lma/b;

    new-instance v0, Lma/b;

    const-string v1, "Bevel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lma/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b;->Bevel:Lma/b;

    new-instance v0, Lma/b;

    const-string v1, "Notch"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lma/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b;->Notch:Lma/b;

    new-instance v0, Lma/b;

    const-string v1, "Squircle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lma/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b;->Squircle:Lma/b;

    invoke-static {}, Lma/b;->a()[Lma/b;

    move-result-object v0

    sput-object v0, Lma/b;->$VALUES:[Lma/b;

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

.method public static synthetic a()[Lma/b;
    .locals 6

    sget-object v0, Lma/b;->Sharp:Lma/b;

    sget-object v1, Lma/b;->Round:Lma/b;

    sget-object v2, Lma/b;->InvertedRound:Lma/b;

    sget-object v3, Lma/b;->Bevel:Lma/b;

    sget-object v4, Lma/b;->Notch:Lma/b;

    sget-object v5, Lma/b;->Squircle:Lma/b;

    filled-new-array/range {v0 .. v5}, [Lma/b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lma/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lma/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lma/b;

    return-object p0
.end method

.method public static values()[Lma/b;
    .locals 1

    sget-object v0, Lma/b;->$VALUES:[Lma/b;

    invoke-virtual {v0}, [Lma/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lma/b;

    return-object v0
.end method
