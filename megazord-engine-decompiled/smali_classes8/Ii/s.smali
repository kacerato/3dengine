.class public final synthetic LIi/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:LIi/t;

.field public final synthetic c:LEi/A;

.field public final synthetic d:LIi/m;


# direct methods
.method public synthetic constructor <init>(LIi/t;LEi/A;LIi/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIi/s;->b:LIi/t;

    iput-object p2, p0, LIi/s;->c:LEi/A;

    iput-object p3, p0, LIi/s;->d:LIi/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LIi/s;->b:LIi/t;

    iget-object v1, p0, LIi/s;->c:LEi/A;

    iget-object v2, p0, LIi/s;->d:LIi/m;

    check-cast p1, [F

    check-cast p2, Ljava/lang/Float;

    invoke-static {v0, v1, v2, p1, p2}, LIi/t;->e(LIi/t;LEi/A;LIi/m;[FLjava/lang/Float;)LEi/U;

    move-result-object p1

    return-object p1
.end method
