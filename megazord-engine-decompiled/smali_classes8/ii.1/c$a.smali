.class public final enum Lii/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lii/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lii/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lii/c$a;

.field public static final enum CENTER:Lii/c$a;

.field public static final enum LEFT:Lii/c$a;

.field public static final enum RIGHT:Lii/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lii/c$a;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lii/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lii/c$a;->LEFT:Lii/c$a;

    new-instance v1, Lii/c$a;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lii/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lii/c$a;->CENTER:Lii/c$a;

    new-instance v2, Lii/c$a;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lii/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lii/c$a;->RIGHT:Lii/c$a;

    filled-new-array {v0, v1, v2}, [Lii/c$a;

    move-result-object v0

    sput-object v0, Lii/c$a;->$VALUES:[Lii/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lii/c$a;
    .locals 1

    const-class v0, Lii/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lii/c$a;

    return-object p0
.end method

.method public static values()[Lii/c$a;
    .locals 1

    sget-object v0, Lii/c$a;->$VALUES:[Lii/c$a;

    invoke-virtual {v0}, [Lii/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lii/c$a;

    return-object v0
.end method
