.class public final enum LPf/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation build LPf/f;
.end annotation

.annotation build LWf/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LPf/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LPf/i;

.field public static final enum AT_LEAST_ONCE:LPf/i;
    .annotation build LWf/b;
    .end annotation
.end field

.field public static final enum AT_MOST_ONCE:LPf/i;
    .annotation build LWf/b;
    .end annotation
.end field

.field public static final enum EXACTLY_ONCE:LPf/i;
    .annotation build LWf/b;
    .end annotation
.end field

.field public static final enum UNKNOWN:LPf/i;
    .annotation build LWf/b;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LPf/i;

    const-string v1, "AT_MOST_ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LPf/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPf/i;->AT_MOST_ONCE:LPf/i;

    new-instance v0, LPf/i;

    const-string v1, "AT_LEAST_ONCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LPf/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPf/i;->AT_LEAST_ONCE:LPf/i;

    new-instance v0, LPf/i;

    const-string v1, "EXACTLY_ONCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LPf/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPf/i;->EXACTLY_ONCE:LPf/i;

    new-instance v0, LPf/i;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LPf/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPf/i;->UNKNOWN:LPf/i;

    invoke-static {}, LPf/i;->a()[LPf/i;

    move-result-object v0

    sput-object v0, LPf/i;->$VALUES:[LPf/i;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LPf/i;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LPf/i;
    .locals 4

    sget-object v0, LPf/i;->AT_MOST_ONCE:LPf/i;

    sget-object v1, LPf/i;->AT_LEAST_ONCE:LPf/i;

    sget-object v2, LPf/i;->EXACTLY_ONCE:LPf/i;

    sget-object v3, LPf/i;->UNKNOWN:LPf/i;

    filled-new-array {v0, v1, v2, v3}, [LPf/i;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LPf/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LPf/i;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LPf/i;
    .locals 1

    const-class v0, LPf/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LPf/i;

    return-object p0
.end method

.method public static values()[LPf/i;
    .locals 1

    sget-object v0, LPf/i;->$VALUES:[LPf/i;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LPf/i;

    return-object v0
.end method
