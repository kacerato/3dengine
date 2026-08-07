.class public final Lz1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/f$b;
.implements LP2/f$a;


# instance fields
.field public final a:LP2/f$b;

.field public final b:LP2/f$a;


# direct methods
.method public synthetic constructor <init>(LP2/f$b;LP2/f$a;Lz1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/y;->a:LP2/f$b;

    iput-object p2, p0, Lz1/y;->b:LP2/f$a;

    return-void
.end method


# virtual methods
.method public final a(LP2/e;)V
    .locals 1

    iget-object v0, p0, Lz1/y;->b:LP2/f$a;

    invoke-interface {v0, p1}, LP2/f$a;->a(LP2/e;)V

    return-void
.end method

.method public final b(LP2/b;)V
    .locals 1

    iget-object v0, p0, Lz1/y;->a:LP2/f$b;

    invoke-interface {v0, p1}, LP2/f$b;->b(LP2/b;)V

    return-void
.end method
