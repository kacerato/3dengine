.class public final enum Luf/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luf/f$a;",
        ">;",
        "LTe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luf/f$a;

.field public static final enum INSTANCE:Luf/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Luf/f$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luf/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luf/f$a;->INSTANCE:Luf/f$a;

    filled-new-array {v0}, [Luf/f$a;

    move-result-object v0

    sput-object v0, Luf/f$a;->$VALUES:[Luf/f$a;

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

.method public static valueOf(Ljava/lang/String;)Luf/f$a;
    .locals 1

    const-class v0, Luf/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luf/f$a;

    return-object p0
.end method

.method public static values()[Luf/f$a;
    .locals 1

    sget-object v0, Luf/f$a;->$VALUES:[Luf/f$a;

    invoke-virtual {v0}, [Luf/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luf/f$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public h(LCi/d;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
