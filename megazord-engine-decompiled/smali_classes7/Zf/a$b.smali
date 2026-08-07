.class public final enum LZf/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "2.0"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZf/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LZf/a$b;

.field public static final enum ABSENT:LZf/a$b;

.field public static final enum ABSENT_OPTIONAL:LZf/a$b;

.field public static final enum PRESENT:LZf/a$b;

.field public static final enum PRESENT_OPTIONAL:LZf/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZf/a$b;

    const-string v1, "PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LZf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZf/a$b;->PRESENT:LZf/a$b;

    new-instance v0, LZf/a$b;

    const-string v1, "ABSENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LZf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZf/a$b;->ABSENT:LZf/a$b;

    new-instance v0, LZf/a$b;

    const-string v1, "PRESENT_OPTIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LZf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZf/a$b;->PRESENT_OPTIONAL:LZf/a$b;

    new-instance v0, LZf/a$b;

    const-string v1, "ABSENT_OPTIONAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LZf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZf/a$b;->ABSENT_OPTIONAL:LZf/a$b;

    invoke-static {}, LZf/a$b;->a()[LZf/a$b;

    move-result-object v0

    sput-object v0, LZf/a$b;->$VALUES:[LZf/a$b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LZf/a$b;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LZf/a$b;
    .locals 4

    sget-object v0, LZf/a$b;->PRESENT:LZf/a$b;

    sget-object v1, LZf/a$b;->ABSENT:LZf/a$b;

    sget-object v2, LZf/a$b;->PRESENT_OPTIONAL:LZf/a$b;

    sget-object v3, LZf/a$b;->ABSENT_OPTIONAL:LZf/a$b;

    filled-new-array {v0, v1, v2, v3}, [LZf/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LZf/a$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LZf/a$b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LZf/a$b;
    .locals 1

    const-class v0, LZf/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZf/a$b;

    return-object p0
.end method

.method public static values()[LZf/a$b;
    .locals 1

    sget-object v0, LZf/a$b;->$VALUES:[LZf/a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZf/a$b;

    return-object v0
.end method
