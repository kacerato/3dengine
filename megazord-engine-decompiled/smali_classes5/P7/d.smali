.class public final synthetic LP7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:LP7/j;


# direct methods
.method public synthetic constructor <init>(LP7/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP7/d;->b:LP7/j;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LP7/d;->b:LP7/j;

    check-cast p1, LP7/a;

    invoke-static {v0, p1}, LP7/f;->b(LP7/j;LP7/a;)Z

    move-result p1

    return p1
.end method
