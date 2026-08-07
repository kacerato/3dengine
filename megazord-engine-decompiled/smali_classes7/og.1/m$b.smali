.class public final enum Log/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Log/m$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Log/m$b;

.field public static final enum CONTEXT:Log/m$b;
    .annotation build LFf/u;
    .end annotation
.end field

.field public static final enum EXTENSION_RECEIVER:Log/m$b;

.field public static final enum INSTANCE:Log/m$b;

.field public static final enum VALUE:Log/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Log/m$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Log/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/m$b;->INSTANCE:Log/m$b;

    new-instance v0, Log/m$b;

    const-string v1, "CONTEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Log/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/m$b;->CONTEXT:Log/m$b;

    new-instance v0, Log/m$b;

    const-string v1, "EXTENSION_RECEIVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Log/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/m$b;->EXTENSION_RECEIVER:Log/m$b;

    new-instance v0, Log/m$b;

    const-string v1, "VALUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Log/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/m$b;->VALUE:Log/m$b;

    invoke-static {}, Log/m$b;->a()[Log/m$b;

    move-result-object v0

    sput-object v0, Log/m$b;->$VALUES:[Log/m$b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Log/m$b;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Log/m$b;
    .locals 4

    sget-object v0, Log/m$b;->INSTANCE:Log/m$b;

    sget-object v1, Log/m$b;->CONTEXT:Log/m$b;

    sget-object v2, Log/m$b;->EXTENSION_RECEIVER:Log/m$b;

    sget-object v3, Log/m$b;->VALUE:Log/m$b;

    filled-new-array {v0, v1, v2, v3}, [Log/m$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Log/m$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Log/m$b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Log/m$b;
    .locals 1

    const-class v0, Log/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Log/m$b;

    return-object p0
.end method

.method public static values()[Log/m$b;
    .locals 1

    sget-object v0, Log/m$b;->$VALUES:[Log/m$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Log/m$b;

    return-object v0
.end method
