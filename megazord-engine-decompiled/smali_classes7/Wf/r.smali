.class public final enum LWf/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "1.2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LWf/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LWf/r;

.field public static final enum API_VERSION:LWf/r;

.field public static final enum COMPILER_VERSION:LWf/r;

.field public static final enum LANGUAGE_VERSION:LWf/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LWf/r;

    const-string v1, "LANGUAGE_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LWf/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/r;->LANGUAGE_VERSION:LWf/r;

    new-instance v0, LWf/r;

    const-string v1, "COMPILER_VERSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LWf/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/r;->COMPILER_VERSION:LWf/r;

    new-instance v0, LWf/r;

    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LWf/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/r;->API_VERSION:LWf/r;

    invoke-static {}, LWf/r;->a()[LWf/r;

    move-result-object v0

    sput-object v0, LWf/r;->$VALUES:[LWf/r;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LWf/r;->$ENTRIES:LUf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[LWf/r;
    .locals 3

    sget-object v0, LWf/r;->LANGUAGE_VERSION:LWf/r;

    sget-object v1, LWf/r;->COMPILER_VERSION:LWf/r;

    sget-object v2, LWf/r;->API_VERSION:LWf/r;

    filled-new-array {v0, v1, v2}, [LWf/r;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LWf/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LWf/r;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LWf/r;
    .locals 1

    const-class v0, LWf/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LWf/r;

    return-object p0
.end method

.method public static values()[LWf/r;
    .locals 1

    sget-object v0, LWf/r;->$VALUES:[LWf/r;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWf/r;

    return-object v0
.end method
