.class public final enum Lvc/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvc/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvc/e;

.field public static final enum Vertex:Lvc/e;

.field public static final enum World:Lvc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lvc/e;

    const-string v1, "Vertex"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvc/e;->Vertex:Lvc/e;

    new-instance v0, Lvc/e;

    const-string v1, "World"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lvc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvc/e;->World:Lvc/e;

    invoke-static {}, Lvc/e;->a()[Lvc/e;

    move-result-object v0

    sput-object v0, Lvc/e;->$VALUES:[Lvc/e;

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

.method public static synthetic a()[Lvc/e;
    .locals 2

    sget-object v0, Lvc/e;->Vertex:Lvc/e;

    sget-object v1, Lvc/e;->World:Lvc/e;

    filled-new-array {v0, v1}, [Lvc/e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvc/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lvc/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvc/e;

    return-object p0
.end method

.method public static values()[Lvc/e;
    .locals 1

    sget-object v0, Lvc/e;->$VALUES:[Lvc/e;

    invoke-virtual {v0}, [Lvc/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvc/e;

    return-object v0
.end method
