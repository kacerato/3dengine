.class public final enum Lxc/h$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxc/h$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxc/h$c;

.field public static final enum FRAG:Lxc/h$c;

.field public static final enum SUBMAT:Lxc/h$c;

.field public static final enum VERTEX:Lxc/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lxc/h$c;

    const-string v1, "FRAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxc/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/h$c;->FRAG:Lxc/h$c;

    new-instance v0, Lxc/h$c;

    const-string v1, "VERTEX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lxc/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/h$c;->VERTEX:Lxc/h$c;

    new-instance v0, Lxc/h$c;

    const-string v1, "SUBMAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lxc/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/h$c;->SUBMAT:Lxc/h$c;

    invoke-static {}, Lxc/h$c;->a()[Lxc/h$c;

    move-result-object v0

    sput-object v0, Lxc/h$c;->$VALUES:[Lxc/h$c;

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

.method public static synthetic a()[Lxc/h$c;
    .locals 3

    sget-object v0, Lxc/h$c;->FRAG:Lxc/h$c;

    sget-object v1, Lxc/h$c;->VERTEX:Lxc/h$c;

    sget-object v2, Lxc/h$c;->SUBMAT:Lxc/h$c;

    filled-new-array {v0, v1, v2}, [Lxc/h$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lxc/h$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lxc/h$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc/h$c;

    return-object p0
.end method

.method public static values()[Lxc/h$c;
    .locals 1

    sget-object v0, Lxc/h$c;->$VALUES:[Lxc/h$c;

    invoke-virtual {v0}, [Lxc/h$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc/h$c;

    return-object v0
.end method
