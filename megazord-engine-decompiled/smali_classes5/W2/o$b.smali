.class public final enum LW2/o$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LW2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LW2/o$b;",
        ">;",
        "LW2/n<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LW2/o$b;

.field public static final enum INSTANCE:LW2/o$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW2/o$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LW2/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW2/o$b;->INSTANCE:LW2/o$b;

    invoke-static {}, LW2/o$b;->a()[LW2/o$b;

    move-result-object v0

    sput-object v0, LW2/o$b;->$VALUES:[LW2/o$b;

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

.method public static synthetic a()[LW2/o$b;
    .locals 1

    sget-object v0, LW2/o$b;->INSTANCE:LW2/o$b;

    filled-new-array {v0}, [LW2/o$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LW2/o$b;
    .locals 1

    const-class v0, LW2/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/o$b;

    return-object p0
.end method

.method public static values()[LW2/o$b;
    .locals 1

    sget-object v0, LW2/o$b;->$VALUES:[LW2/o$b;

    invoke-virtual {v0}, [LW2/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/o$b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic K3(Ljava/lang/Object;LW2/G;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, LW2/o$b;->b(Ljava/lang/Integer;LW2/G;)V

    return-void
.end method

.method public b(Ljava/lang/Integer;LW2/G;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, LW2/G;->putInt(I)LW2/G;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Funnels.integerFunnel()"

    return-object v0
.end method
