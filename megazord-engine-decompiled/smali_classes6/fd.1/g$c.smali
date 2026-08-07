.class public final enum Lfd/g$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfd/g$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfd/g$c;

.field public static final enum FIXED_THREADS:Lfd/g$c;

.field public static final enum HALF_THREADS:Lfd/g$c;

.field public static final enum MAX_LESS_ONE:Lfd/g$c;

.field public static final enum MAX_LESS_TWO:Lfd/g$c;

.field public static final enum MAX_THREADS:Lfd/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfd/g$c;

    const-string v1, "FIXED_THREADS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfd/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd/g$c;->FIXED_THREADS:Lfd/g$c;

    new-instance v0, Lfd/g$c;

    const-string v1, "HALF_THREADS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfd/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd/g$c;->HALF_THREADS:Lfd/g$c;

    new-instance v0, Lfd/g$c;

    const-string v1, "MAX_THREADS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfd/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    new-instance v0, Lfd/g$c;

    const-string v1, "MAX_LESS_ONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lfd/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd/g$c;->MAX_LESS_ONE:Lfd/g$c;

    new-instance v0, Lfd/g$c;

    const-string v1, "MAX_LESS_TWO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lfd/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd/g$c;->MAX_LESS_TWO:Lfd/g$c;

    invoke-static {}, Lfd/g$c;->a()[Lfd/g$c;

    move-result-object v0

    sput-object v0, Lfd/g$c;->$VALUES:[Lfd/g$c;

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

.method public static synthetic a()[Lfd/g$c;
    .locals 5

    sget-object v0, Lfd/g$c;->FIXED_THREADS:Lfd/g$c;

    sget-object v1, Lfd/g$c;->HALF_THREADS:Lfd/g$c;

    sget-object v2, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    sget-object v3, Lfd/g$c;->MAX_LESS_ONE:Lfd/g$c;

    sget-object v4, Lfd/g$c;->MAX_LESS_TWO:Lfd/g$c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lfd/g$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfd/g$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lfd/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfd/g$c;

    return-object p0
.end method

.method public static values()[Lfd/g$c;
    .locals 1

    sget-object v0, Lfd/g$c;->$VALUES:[Lfd/g$c;

    invoke-virtual {v0}, [Lfd/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfd/g$c;

    return-object v0
.end method
