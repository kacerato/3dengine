.class public final enum LG3/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LG3/d$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LG3/d$b;

.field public static final enum BAD_CONFIG:LG3/d$b;

.field public static final enum OK:LG3/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/d$b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG3/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/d$b;->OK:LG3/d$b;

    new-instance v0, LG3/d$b;

    const-string v1, "BAD_CONFIG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LG3/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/d$b;->BAD_CONFIG:LG3/d$b;

    invoke-static {}, LG3/d$b;->a()[LG3/d$b;

    move-result-object v0

    sput-object v0, LG3/d$b;->$VALUES:[LG3/d$b;

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

.method public static synthetic a()[LG3/d$b;
    .locals 2

    sget-object v0, LG3/d$b;->OK:LG3/d$b;

    sget-object v1, LG3/d$b;->BAD_CONFIG:LG3/d$b;

    filled-new-array {v0, v1}, [LG3/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LG3/d$b;
    .locals 1

    const-class v0, LG3/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/d$b;

    return-object p0
.end method

.method public static values()[LG3/d$b;
    .locals 1

    sget-object v0, LG3/d$b;->$VALUES:[LG3/d$b;

    invoke-virtual {v0}, [LG3/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/d$b;

    return-object v0
.end method
