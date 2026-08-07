.class public final enum Lag/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/T0;
    markerClass = {
        Lag/f;
    }
.end annotation

.annotation build LFf/l0;
    version = "2.1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lag/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lag/p;

.field public static final enum BREADTH_FIRST:Lag/p;

.field public static final enum FOLLOW_LINKS:Lag/p;

.field public static final enum INCLUDE_DIRECTORIES:Lag/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lag/p;

    const-string v1, "INCLUDE_DIRECTORIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lag/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag/p;->INCLUDE_DIRECTORIES:Lag/p;

    new-instance v0, Lag/p;

    const-string v1, "BREADTH_FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lag/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag/p;->BREADTH_FIRST:Lag/p;

    new-instance v0, Lag/p;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lag/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag/p;->FOLLOW_LINKS:Lag/p;

    invoke-static {}, Lag/p;->a()[Lag/p;

    move-result-object v0

    sput-object v0, Lag/p;->$VALUES:[Lag/p;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lag/p;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lag/p;
    .locals 3

    sget-object v0, Lag/p;->INCLUDE_DIRECTORIES:Lag/p;

    sget-object v1, Lag/p;->BREADTH_FIRST:Lag/p;

    sget-object v2, Lag/p;->FOLLOW_LINKS:Lag/p;

    filled-new-array {v0, v1, v2}, [Lag/p;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lag/p;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lag/p;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lag/p;
    .locals 1

    const-class v0, Lag/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lag/p;

    return-object p0
.end method

.method public static values()[Lag/p;
    .locals 1

    sget-object v0, Lag/p;->$VALUES:[Lag/p;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lag/p;

    return-object v0
.end method
