.class public final enum Ls0/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lr0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls0/n$a;",
        ">;",
        "Lr0/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ls0/n$a;

.field public static final enum INSTANCE:Ls0/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/n$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls0/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls0/n$a;->INSTANCE:Ls0/n$a;

    filled-new-array {v0}, [Ls0/n$a;

    move-result-object v0

    sput-object v0, Ls0/n$a;->$VALUES:[Ls0/n$a;

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

.method public static valueOf(Ljava/lang/String;)Ls0/n$a;
    .locals 1

    const-class v0, Ls0/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls0/n$a;

    return-object p0
.end method

.method public static values()[Ls0/n$a;
    .locals 1

    sget-object v0, Ls0/n$a;->$VALUES:[Ls0/n$a;

    invoke-virtual {v0}, [Ls0/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls0/n$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Cannot inject members into a null reference"

    invoke-static {p1, v0}, Ls0/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
