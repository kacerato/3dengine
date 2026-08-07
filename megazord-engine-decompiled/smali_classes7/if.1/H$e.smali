.class public final enum Lif/H$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LXe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lif/H$e;",
        ">;",
        "LXe/o<",
        "LTe/Q;",
        "LTe/B;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lif/H$e;

.field public static final enum INSTANCE:Lif/H$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lif/H$e;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lif/H$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lif/H$e;->INSTANCE:Lif/H$e;

    filled-new-array {v0}, [Lif/H$e;

    move-result-object v0

    sput-object v0, Lif/H$e;->$VALUES:[Lif/H$e;

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

.method public static valueOf(Ljava/lang/String;)Lif/H$e;
    .locals 1

    const-class v0, Lif/H$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lif/H$e;

    return-object p0
.end method

.method public static values()[Lif/H$e;
    .locals 1

    sget-object v0, Lif/H$e;->$VALUES:[Lif/H$e;

    invoke-virtual {v0}, [Lif/H$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lif/H$e;

    return-object v0
.end method


# virtual methods
.method public a(LTe/Q;)LTe/B;
    .locals 1

    new-instance v0, Lif/W;

    invoke-direct {v0, p1}, Lif/W;-><init>(LTe/Q;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LTe/Q;

    invoke-virtual {p0, p1}, Lif/H$e;->a(LTe/Q;)LTe/B;

    move-result-object p1

    return-object p1
.end method
