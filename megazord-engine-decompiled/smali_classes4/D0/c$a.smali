.class public final enum LD0/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LD0/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LD0/c$a;

.field public static final enum CHECK:LD0/c$a;

.field public static final enum DONT_CHECK:LD0/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LD0/c$a;

    const-string v1, "CHECK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LD0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD0/c$a;->CHECK:LD0/c$a;

    new-instance v0, LD0/c$a;

    const-string v1, "DONT_CHECK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LD0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD0/c$a;->DONT_CHECK:LD0/c$a;

    invoke-static {}, LD0/c$a;->a()[LD0/c$a;

    move-result-object v0

    sput-object v0, LD0/c$a;->$VALUES:[LD0/c$a;

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

.method public static synthetic a()[LD0/c$a;
    .locals 2

    sget-object v0, LD0/c$a;->CHECK:LD0/c$a;

    sget-object v1, LD0/c$a;->DONT_CHECK:LD0/c$a;

    filled-new-array {v0, v1}, [LD0/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LD0/c$a;
    .locals 1

    const-class v0, LD0/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LD0/c$a;

    return-object p0
.end method

.method public static values()[LD0/c$a;
    .locals 1

    sget-object v0, LD0/c$a;->$VALUES:[LD0/c$a;

    invoke-virtual {v0}, [LD0/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LD0/c$a;

    return-object v0
.end method
