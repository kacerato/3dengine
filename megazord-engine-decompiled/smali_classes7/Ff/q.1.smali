.class public final enum LFf/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LFf/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LFf/q;

.field public static final enum ERROR:LFf/q;

.field public static final enum HIDDEN:LFf/q;

.field public static final enum WARNING:LFf/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LFf/q;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LFf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/q;->WARNING:LFf/q;

    new-instance v0, LFf/q;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LFf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/q;->ERROR:LFf/q;

    new-instance v0, LFf/q;

    const-string v1, "HIDDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LFf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/q;->HIDDEN:LFf/q;

    invoke-static {}, LFf/q;->a()[LFf/q;

    move-result-object v0

    sput-object v0, LFf/q;->$VALUES:[LFf/q;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LFf/q;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LFf/q;
    .locals 3

    sget-object v0, LFf/q;->WARNING:LFf/q;

    sget-object v1, LFf/q;->ERROR:LFf/q;

    sget-object v2, LFf/q;->HIDDEN:LFf/q;

    filled-new-array {v0, v1, v2}, [LFf/q;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LFf/q;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LFf/q;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LFf/q;
    .locals 1

    const-class v0, LFf/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LFf/q;

    return-object p0
.end method

.method public static values()[LFf/q;
    .locals 1

    sget-object v0, LFf/q;->$VALUES:[LFf/q;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFf/q;

    return-object v0
.end method
