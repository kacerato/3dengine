.class public final enum Lwf/b$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwf/b$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwf/b$e;

.field public static final enum COLLAPSE_COST:Lwf/b$e;

.field public static final enum CONSTANT:Lwf/b$e;

.field public static final enum PROPORTIONAL:Lwf/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lwf/b$e;

    const-string v1, "PROPORTIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwf/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwf/b$e;->PROPORTIONAL:Lwf/b$e;

    new-instance v0, Lwf/b$e;

    const-string v1, "CONSTANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwf/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwf/b$e;->CONSTANT:Lwf/b$e;

    new-instance v0, Lwf/b$e;

    const-string v1, "COLLAPSE_COST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lwf/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwf/b$e;->COLLAPSE_COST:Lwf/b$e;

    invoke-static {}, Lwf/b$e;->a()[Lwf/b$e;

    move-result-object v0

    sput-object v0, Lwf/b$e;->$VALUES:[Lwf/b$e;

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
            null,
            null
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

.method public static synthetic a()[Lwf/b$e;
    .locals 3

    sget-object v0, Lwf/b$e;->PROPORTIONAL:Lwf/b$e;

    sget-object v1, Lwf/b$e;->CONSTANT:Lwf/b$e;

    sget-object v2, Lwf/b$e;->COLLAPSE_COST:Lwf/b$e;

    filled-new-array {v0, v1, v2}, [Lwf/b$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lwf/b$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lwf/b$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwf/b$e;

    return-object p0
.end method

.method public static values()[Lwf/b$e;
    .locals 1

    sget-object v0, Lwf/b$e;->$VALUES:[Lwf/b$e;

    invoke-virtual {v0}, [Lwf/b$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwf/b$e;

    return-object v0
.end method
