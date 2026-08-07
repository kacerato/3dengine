.class public final enum Lxc/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxc/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxc/a;

.field public static final enum ADD:Lxc/a;

.field public static final enum FADE:Lxc/a;

.field public static final enum MASKED:Lxc/a;

.field public static final enum MULTIPLY:Lxc/a;

.field public static final enum OPAQUE:Lxc/a;

.field public static final enum TRANSPARENT:Lxc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lxc/a;

    const-string v1, "OPAQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a;->OPAQUE:Lxc/a;

    new-instance v0, Lxc/a;

    const-string v1, "TRANSPARENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lxc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a;->TRANSPARENT:Lxc/a;

    new-instance v0, Lxc/a;

    const-string v1, "ADD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lxc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a;->ADD:Lxc/a;

    new-instance v0, Lxc/a;

    const-string v1, "MASKED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lxc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a;->MASKED:Lxc/a;

    new-instance v0, Lxc/a;

    const-string v1, "FADE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lxc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a;->FADE:Lxc/a;

    new-instance v0, Lxc/a;

    const-string v1, "MULTIPLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lxc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a;->MULTIPLY:Lxc/a;

    invoke-static {}, Lxc/a;->a()[Lxc/a;

    move-result-object v0

    sput-object v0, Lxc/a;->$VALUES:[Lxc/a;

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

.method public static synthetic a()[Lxc/a;
    .locals 6

    sget-object v0, Lxc/a;->OPAQUE:Lxc/a;

    sget-object v1, Lxc/a;->TRANSPARENT:Lxc/a;

    sget-object v2, Lxc/a;->ADD:Lxc/a;

    sget-object v3, Lxc/a;->MASKED:Lxc/a;

    sget-object v4, Lxc/a;->FADE:Lxc/a;

    sget-object v5, Lxc/a;->MULTIPLY:Lxc/a;

    filled-new-array/range {v0 .. v5}, [Lxc/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lxc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lxc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc/a;

    return-object p0
.end method

.method public static values()[Lxc/a;
    .locals 1

    sget-object v0, Lxc/a;->$VALUES:[Lxc/a;

    invoke-virtual {v0}, [Lxc/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc/a;

    return-object v0
.end method
