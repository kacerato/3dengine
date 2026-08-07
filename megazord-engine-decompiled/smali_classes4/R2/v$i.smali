.class public final enum LR2/v$i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LR2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LR2/v$i;",
        ">;",
        "LR2/t<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LR2/v$i;

.field public static final enum INSTANCE:LR2/v$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR2/v$i;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR2/v$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR2/v$i;->INSTANCE:LR2/v$i;

    invoke-static {}, LR2/v$i;->a()[LR2/v$i;

    move-result-object v0

    sput-object v0, LR2/v$i;->$VALUES:[LR2/v$i;

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

.method public static synthetic a()[LR2/v$i;
    .locals 1

    sget-object v0, LR2/v$i;->INSTANCE:LR2/v$i;

    filled-new-array {v0}, [LR2/v$i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LR2/v$i;
    .locals 1

    const-class v0, LR2/v$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR2/v$i;

    return-object p0
.end method

.method public static values()[LR2/v$i;
    .locals 1

    sget-object v0, LR2/v$i;->$VALUES:[LR2/v$i;

    invoke-virtual {v0}, [LR2/v$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR2/v$i;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LR2/v$i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Functions.toStringFunction()"

    return-object v0
.end method
