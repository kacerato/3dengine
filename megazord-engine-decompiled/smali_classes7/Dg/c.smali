.class public final synthetic LDg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Leg/p;


# direct methods
.method public synthetic constructor <init>(Leg/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDg/c;->b:Leg/p;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LDg/c;->b:Leg/p;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, LDg/e;->a(Leg/p;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
