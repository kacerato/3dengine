.class public final enum Lya/B;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lya/B;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lya/B;

.field public static final enum BOTH:Lya/B;

.field public static final enum FRAGMENT:Lya/B;

.field public static final enum VERTEX:Lya/B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lya/B;

    const-string v1, "VERTEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lya/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lya/B;->VERTEX:Lya/B;

    new-instance v0, Lya/B;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lya/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lya/B;->FRAGMENT:Lya/B;

    new-instance v0, Lya/B;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lya/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lya/B;->BOTH:Lya/B;

    invoke-static {}, Lya/B;->a()[Lya/B;

    move-result-object v0

    sput-object v0, Lya/B;->$VALUES:[Lya/B;

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

.method public static synthetic a()[Lya/B;
    .locals 3

    sget-object v0, Lya/B;->VERTEX:Lya/B;

    sget-object v1, Lya/B;->FRAGMENT:Lya/B;

    sget-object v2, Lya/B;->BOTH:Lya/B;

    filled-new-array {v0, v1, v2}, [Lya/B;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lya/B;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lya/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lya/B;

    return-object p0
.end method

.method public static values()[Lya/B;
    .locals 1

    sget-object v0, Lya/B;->$VALUES:[Lya/B;

    invoke-virtual {v0}, [Lya/B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lya/B;

    return-object v0
.end method
