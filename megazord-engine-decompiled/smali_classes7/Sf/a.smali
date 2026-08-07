.class public final enum LSf/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LSf/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LSf/a;

.field public static final enum COROUTINE_SUSPENDED:LSf/a;

.field public static final enum RESUMED:LSf/a;

.field public static final enum UNDECIDED:LSf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LSf/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LSf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSf/a;->COROUTINE_SUSPENDED:LSf/a;

    new-instance v0, LSf/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LSf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSf/a;->UNDECIDED:LSf/a;

    new-instance v0, LSf/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LSf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSf/a;->RESUMED:LSf/a;

    invoke-static {}, LSf/a;->a()[LSf/a;

    move-result-object v0

    sput-object v0, LSf/a;->$VALUES:[LSf/a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LSf/a;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LSf/a;
    .locals 3

    sget-object v0, LSf/a;->COROUTINE_SUSPENDED:LSf/a;

    sget-object v1, LSf/a;->UNDECIDED:LSf/a;

    sget-object v2, LSf/a;->RESUMED:LSf/a;

    filled-new-array {v0, v1, v2}, [LSf/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LSf/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LSf/a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LSf/a;
    .locals 1

    const-class v0, LSf/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LSf/a;

    return-object p0
.end method

.method public static values()[LSf/a;
    .locals 1

    sget-object v0, LSf/a;->$VALUES:[LSf/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LSf/a;

    return-object v0
.end method
