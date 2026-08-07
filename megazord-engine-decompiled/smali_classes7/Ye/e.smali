.class public final enum LYe/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laf/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LYe/e;",
        ">;",
        "Laf/j<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LYe/e;

.field public static final enum INSTANCE:LYe/e;

.field public static final enum NEVER:LYe/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LYe/e;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LYe/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYe/e;->INSTANCE:LYe/e;

    new-instance v1, LYe/e;

    const-string v2, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LYe/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, LYe/e;->NEVER:LYe/e;

    filled-new-array {v0, v1}, [LYe/e;

    move-result-object v0

    sput-object v0, LYe/e;->$VALUES:[LYe/e;

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

.method public static a(LTe/f;)V
    .locals 1

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p0, v0}, LTe/f;->e(LVe/c;)V

    invoke-interface {p0}, LTe/f;->a()V

    return-void
.end method

.method public static b(LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p0, v0}, LTe/v;->e(LVe/c;)V

    invoke-interface {p0}, LTe/v;->a()V

    return-void
.end method

.method public static c(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p0, v0}, LTe/I;->e(LVe/c;)V

    invoke-interface {p0}, LTe/I;->a()V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;LTe/f;)V
    .locals 1

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    invoke-interface {p1, p0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Ljava/lang/Throwable;LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LTe/v<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    invoke-interface {p1, p0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static h(Ljava/lang/Throwable;LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LTe/I<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    invoke-interface {p1, p0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/Throwable;LTe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LTe/N<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    invoke-interface {p1, p0}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LYe/e;
    .locals 1

    const-class v0, LYe/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LYe/e;

    return-object p0
.end method

.method public static values()[LYe/e;
    .locals 1

    sget-object v0, LYe/e;->$VALUES:[LYe/e;

    invoke-virtual {v0}, [LYe/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LYe/e;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
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
