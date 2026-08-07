.class public final enum LYc/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LYc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LYc/e$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LYc/e$b;

.field public static final enum PAUSED:LYc/e$b;

.field public static final enum PLAYING:LYc/e$b;

.field public static final enum STOPPED:LYc/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LYc/e$b;

    const-string v1, "PLAYING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LYc/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/e$b;->PLAYING:LYc/e$b;

    new-instance v0, LYc/e$b;

    const-string v1, "PAUSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LYc/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/e$b;->PAUSED:LYc/e$b;

    new-instance v0, LYc/e$b;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LYc/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/e$b;->STOPPED:LYc/e$b;

    invoke-static {}, LYc/e$b;->a()[LYc/e$b;

    move-result-object v0

    sput-object v0, LYc/e$b;->$VALUES:[LYc/e$b;

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

.method public static synthetic a()[LYc/e$b;
    .locals 3

    sget-object v0, LYc/e$b;->PLAYING:LYc/e$b;

    sget-object v1, LYc/e$b;->PAUSED:LYc/e$b;

    sget-object v2, LYc/e$b;->STOPPED:LYc/e$b;

    filled-new-array {v0, v1, v2}, [LYc/e$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LYc/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LYc/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LYc/e$b;

    return-object p0
.end method

.method public static values()[LYc/e$b;
    .locals 1

    sget-object v0, LYc/e$b;->$VALUES:[LYc/e$b;

    invoke-virtual {v0}, [LYc/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LYc/e$b;

    return-object v0
.end method
