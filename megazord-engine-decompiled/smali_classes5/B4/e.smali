.class public final synthetic LB4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:LB4/f;


# direct methods
.method public synthetic constructor <init>(LB4/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB4/e;->b:LB4/f;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LB4/e;->b:LB4/f;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, LB4/f;->a(LB4/f;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
