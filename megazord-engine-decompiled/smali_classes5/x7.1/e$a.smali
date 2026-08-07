.class public final enum Lx7/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx7/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lx7/e$a;

.field public static final enum BIGLONG:Lx7/e$a;

.field public static final enum LONG:Lx7/e$a;

.field public static final enum MEDIUM:Lx7/e$a;

.field public static final enum NO_AUTO_CANCEL:Lx7/e$a;

.field public static final enum SHORT:Lx7/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lx7/e$a;

    const-string v1, "SHORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx7/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/e$a;->SHORT:Lx7/e$a;

    new-instance v0, Lx7/e$a;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lx7/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/e$a;->MEDIUM:Lx7/e$a;

    new-instance v0, Lx7/e$a;

    const-string v1, "LONG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lx7/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/e$a;->LONG:Lx7/e$a;

    new-instance v0, Lx7/e$a;

    const-string v1, "BIGLONG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lx7/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/e$a;->BIGLONG:Lx7/e$a;

    new-instance v0, Lx7/e$a;

    const-string v1, "NO_AUTO_CANCEL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lx7/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/e$a;->NO_AUTO_CANCEL:Lx7/e$a;

    invoke-static {}, Lx7/e$a;->a()[Lx7/e$a;

    move-result-object v0

    sput-object v0, Lx7/e$a;->$VALUES:[Lx7/e$a;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static synthetic a()[Lx7/e$a;
    .locals 5

    sget-object v0, Lx7/e$a;->SHORT:Lx7/e$a;

    sget-object v1, Lx7/e$a;->MEDIUM:Lx7/e$a;

    sget-object v2, Lx7/e$a;->LONG:Lx7/e$a;

    sget-object v3, Lx7/e$a;->BIGLONG:Lx7/e$a;

    sget-object v4, Lx7/e$a;->NO_AUTO_CANCEL:Lx7/e$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lx7/e$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lx7/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lx7/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx7/e$a;

    return-object p0
.end method

.method public static values()[Lx7/e$a;
    .locals 1

    sget-object v0, Lx7/e$a;->$VALUES:[Lx7/e$a;

    invoke-virtual {v0}, [Lx7/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx7/e$a;

    return-object v0
.end method
