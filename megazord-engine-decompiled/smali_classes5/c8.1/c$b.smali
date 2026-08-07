.class public final enum Lc8/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc8/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lc8/c$b;

.field public static final enum LEFT:Lc8/c$b;

.field public static final enum RIGHT:Lc8/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc8/c$b;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc8/c$b;->LEFT:Lc8/c$b;

    new-instance v0, Lc8/c$b;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc8/c$b;->RIGHT:Lc8/c$b;

    invoke-static {}, Lc8/c$b;->a()[Lc8/c$b;

    move-result-object v0

    sput-object v0, Lc8/c$b;->$VALUES:[Lc8/c$b;

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

.method public static synthetic a()[Lc8/c$b;
    .locals 2

    sget-object v0, Lc8/c$b;->LEFT:Lc8/c$b;

    sget-object v1, Lc8/c$b;->RIGHT:Lc8/c$b;

    filled-new-array {v0, v1}, [Lc8/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lc8/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lc8/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc8/c$b;

    return-object p0
.end method

.method public static values()[Lc8/c$b;
    .locals 1

    sget-object v0, Lc8/c$b;->$VALUES:[Lc8/c$b;

    invoke-virtual {v0}, [Lc8/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc8/c$b;

    return-object v0
.end method
