.class public final enum Lma/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lma/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lma/d;

.field public static final enum Linear:Lma/d;

.field public static final enum Radial:Lma/d;

.field public static final enum Solid:Lma/d;

.field public static final enum Sweep:Lma/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lma/d;

    const-string v1, "Solid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lma/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/d;->Solid:Lma/d;

    new-instance v0, Lma/d;

    const-string v1, "Linear"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lma/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/d;->Linear:Lma/d;

    new-instance v0, Lma/d;

    const-string v1, "Radial"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lma/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/d;->Radial:Lma/d;

    new-instance v0, Lma/d;

    const-string v1, "Sweep"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lma/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/d;->Sweep:Lma/d;

    invoke-static {}, Lma/d;->a()[Lma/d;

    move-result-object v0

    sput-object v0, Lma/d;->$VALUES:[Lma/d;

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

.method public static synthetic a()[Lma/d;
    .locals 4

    sget-object v0, Lma/d;->Solid:Lma/d;

    sget-object v1, Lma/d;->Linear:Lma/d;

    sget-object v2, Lma/d;->Radial:Lma/d;

    sget-object v3, Lma/d;->Sweep:Lma/d;

    filled-new-array {v0, v1, v2, v3}, [Lma/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lma/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lma/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lma/d;

    return-object p0
.end method

.method public static values()[Lma/d;
    .locals 1

    sget-object v0, Lma/d;->$VALUES:[Lma/d;

    invoke-virtual {v0}, [Lma/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lma/d;

    return-object v0
.end method
