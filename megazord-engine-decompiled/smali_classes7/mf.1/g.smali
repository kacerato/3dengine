.class public final enum Lmf/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laf/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmf/g;",
        ">;",
        "Laf/l<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmf/g;

.field public static final enum INSTANCE:Lmf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmf/g;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf/g;->INSTANCE:Lmf/g;

    filled-new-array {v0}, [Lmf/g;

    move-result-object v0

    sput-object v0, Lmf/g;->$VALUES:[Lmf/g;

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

.method public static a(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lmf/g;->INSTANCE:Lmf/g;

    invoke-interface {p0, v0}, LCi/c;->h(LCi/d;)V

    invoke-interface {p0}, LCi/c;->a()V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LCi/c<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lmf/g;->INSTANCE:Lmf/g;

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-interface {p1, p0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmf/g;
    .locals 1

    const-class v0, Lmf/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmf/g;

    return-object p0
.end method

.method public static values()[Lmf/g;
    .locals 1

    sget-object v0, Lmf/g;->$VALUES:[Lmf/g;

    invoke-virtual {v0}, [Lmf/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/g;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySubscription"

    return-object v0
.end method
