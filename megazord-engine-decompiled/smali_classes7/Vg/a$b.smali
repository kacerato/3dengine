.class public final enum LVg/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LVg/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LVg/a$b;

.field public static final enum BUSY:LVg/a$b;

.field public static final enum READY:LVg/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LVg/a$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LVg/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVg/a$b;->READY:LVg/a$b;

    new-instance v1, LVg/a$b;

    const-string v2, "BUSY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LVg/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, LVg/a$b;->BUSY:LVg/a$b;

    filled-new-array {v0, v1}, [LVg/a$b;

    move-result-object v0

    sput-object v0, LVg/a$b;->$VALUES:[LVg/a$b;

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

.method public static valueOf(Ljava/lang/String;)LVg/a$b;
    .locals 1

    const-class v0, LVg/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVg/a$b;

    return-object p0
.end method

.method public static values()[LVg/a$b;
    .locals 1

    sget-object v0, LVg/a$b;->$VALUES:[LVg/a$b;

    invoke-virtual {v0}, [LVg/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVg/a$b;

    return-object v0
.end method
