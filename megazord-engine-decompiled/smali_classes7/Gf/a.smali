.class public final enum LGf/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LGf/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LGf/a;

.field public static final enum BINARY:LGf/a;

.field public static final enum RUNTIME:LGf/a;

.field public static final enum SOURCE:LGf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LGf/a;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LGf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/a;->SOURCE:LGf/a;

    new-instance v0, LGf/a;

    const-string v1, "BINARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LGf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/a;->BINARY:LGf/a;

    new-instance v0, LGf/a;

    const-string v1, "RUNTIME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LGf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/a;->RUNTIME:LGf/a;

    invoke-static {}, LGf/a;->a()[LGf/a;

    move-result-object v0

    sput-object v0, LGf/a;->$VALUES:[LGf/a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LGf/a;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LGf/a;
    .locals 3

    sget-object v0, LGf/a;->SOURCE:LGf/a;

    sget-object v1, LGf/a;->BINARY:LGf/a;

    sget-object v2, LGf/a;->RUNTIME:LGf/a;

    filled-new-array {v0, v1, v2}, [LGf/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LGf/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LGf/a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LGf/a;
    .locals 1

    const-class v0, LGf/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGf/a;

    return-object p0
.end method

.method public static values()[LGf/a;
    .locals 1

    sget-object v0, LGf/a;->$VALUES:[LGf/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGf/a;

    return-object v0
.end method
