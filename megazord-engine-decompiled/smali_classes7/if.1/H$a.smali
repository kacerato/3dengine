.class public final enum Lif/H$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lif/H$a;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/NoSuchElementException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lif/H$a;

.field public static final enum INSTANCE:Lif/H$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lif/H$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lif/H$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lif/H$a;->INSTANCE:Lif/H$a;

    filled-new-array {v0}, [Lif/H$a;

    move-result-object v0

    sput-object v0, Lif/H$a;->$VALUES:[Lif/H$a;

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

.method public static valueOf(Ljava/lang/String;)Lif/H$a;
    .locals 1

    const-class v0, Lif/H$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lif/H$a;

    return-object p0
.end method

.method public static values()[Lif/H$a;
    .locals 1

    sget-object v0, Lif/H$a;->$VALUES:[Lif/H$a;

    invoke-virtual {v0}, [Lif/H$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lif/H$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/NoSuchElementException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lif/H$a;->a()Ljava/util/NoSuchElementException;

    move-result-object v0

    return-object v0
.end method
