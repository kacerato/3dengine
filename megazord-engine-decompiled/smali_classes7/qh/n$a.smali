.class public final enum Lqh/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqh/n$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lqh/n$a;

.field public static final enum HORIZONTAL:Lqh/n$a;

.field public static final enum VERTICAL:Lqh/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqh/n$a;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqh/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqh/n$a;->HORIZONTAL:Lqh/n$a;

    new-instance v0, Lqh/n$a;

    const-string v1, "VERTICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lqh/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqh/n$a;->VERTICAL:Lqh/n$a;

    invoke-static {}, Lqh/n$a;->a()[Lqh/n$a;

    move-result-object v0

    sput-object v0, Lqh/n$a;->$VALUES:[Lqh/n$a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lqh/n$a;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lqh/n$a;
    .locals 2

    sget-object v0, Lqh/n$a;->HORIZONTAL:Lqh/n$a;

    sget-object v1, Lqh/n$a;->VERTICAL:Lqh/n$a;

    filled-new-array {v0, v1}, [Lqh/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lqh/n$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lqh/n$a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqh/n$a;
    .locals 1

    const-class v0, Lqh/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqh/n$a;

    return-object p0
.end method

.method public static values()[Lqh/n$a;
    .locals 1

    sget-object v0, Lqh/n$a;->$VALUES:[Lqh/n$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqh/n$a;

    return-object v0
.end method
