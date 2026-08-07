.class public final enum Lw/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw/b;

.field public static final enum THUMB_PRESSED:Lw/b;

.field public static final enum THUMB_RELEASED:Lw/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw/b;

    const-string v1, "THUMB_PRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw/b;->THUMB_PRESSED:Lw/b;

    new-instance v1, Lw/b;

    const-string v2, "THUMB_RELEASED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lw/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw/b;->THUMB_RELEASED:Lw/b;

    filled-new-array {v0, v1}, [Lw/b;

    move-result-object v0

    sput-object v0, Lw/b;->$VALUES:[Lw/b;

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

.method public static valueOf(Ljava/lang/String;)Lw/b;
    .locals 1

    const-class v0, Lw/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw/b;

    return-object p0
.end method

.method public static values()[Lw/b;
    .locals 1

    sget-object v0, Lw/b;->$VALUES:[Lw/b;

    invoke-virtual {v0}, [Lw/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw/b;

    return-object v0
.end method
