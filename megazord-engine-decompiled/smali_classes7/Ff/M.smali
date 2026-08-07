.class public final enum LFf/M;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LFf/M;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LFf/M;

.field public static final enum NONE:LFf/M;

.field public static final enum PUBLICATION:LFf/M;

.field public static final enum SYNCHRONIZED:LFf/M;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LFf/M;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LFf/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/M;->SYNCHRONIZED:LFf/M;

    new-instance v0, LFf/M;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LFf/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/M;->PUBLICATION:LFf/M;

    new-instance v0, LFf/M;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LFf/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/M;->NONE:LFf/M;

    invoke-static {}, LFf/M;->a()[LFf/M;

    move-result-object v0

    sput-object v0, LFf/M;->$VALUES:[LFf/M;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LFf/M;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LFf/M;
    .locals 3

    sget-object v0, LFf/M;->SYNCHRONIZED:LFf/M;

    sget-object v1, LFf/M;->PUBLICATION:LFf/M;

    sget-object v2, LFf/M;->NONE:LFf/M;

    filled-new-array {v0, v1, v2}, [LFf/M;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LFf/M;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LFf/M;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LFf/M;
    .locals 1

    const-class v0, LFf/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LFf/M;

    return-object p0
.end method

.method public static values()[LFf/M;
    .locals 1

    sget-object v0, LFf/M;->$VALUES:[LFf/M;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFf/M;

    return-object v0
.end method
