.class public final enum LV5/c$r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LV5/c$r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LV5/c$r;

.field public static final enum Components:LV5/c$r;

.field public static final enum Options:LV5/c$r;

.field public static final enum Physics:LV5/c$r;

.field public static final enum Transform:LV5/c$r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LV5/c$r;

    const-string v1, "Transform"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LV5/c$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LV5/c$r;->Transform:LV5/c$r;

    new-instance v0, LV5/c$r;

    const-string v1, "Components"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LV5/c$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LV5/c$r;->Components:LV5/c$r;

    new-instance v0, LV5/c$r;

    const-string v1, "Physics"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LV5/c$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LV5/c$r;->Physics:LV5/c$r;

    new-instance v0, LV5/c$r;

    const-string v1, "Options"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LV5/c$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LV5/c$r;->Options:LV5/c$r;

    invoke-static {}, LV5/c$r;->a()[LV5/c$r;

    move-result-object v0

    sput-object v0, LV5/c$r;->$VALUES:[LV5/c$r;

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

.method public static synthetic a()[LV5/c$r;
    .locals 4

    sget-object v0, LV5/c$r;->Transform:LV5/c$r;

    sget-object v1, LV5/c$r;->Components:LV5/c$r;

    sget-object v2, LV5/c$r;->Physics:LV5/c$r;

    sget-object v3, LV5/c$r;->Options:LV5/c$r;

    filled-new-array {v0, v1, v2, v3}, [LV5/c$r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LV5/c$r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LV5/c$r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LV5/c$r;

    return-object p0
.end method

.method public static values()[LV5/c$r;
    .locals 1

    sget-object v0, LV5/c$r;->$VALUES:[LV5/c$r;

    invoke-virtual {v0}, [LV5/c$r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV5/c$r;

    return-object v0
.end method
