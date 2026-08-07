.class public final synthetic LIi/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEi/I;


# instance fields
.field public final synthetic a:LEi/A;

.field public final synthetic b:[F

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:F

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(LEi/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIi/r;->a:LEi/A;

    iput-object p2, p0, LIi/r;->b:[F

    iput-object p3, p0, LIi/r;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput p4, p0, LIi/r;->d:F

    iput-object p5, p0, LIi/r;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(LEi/s;LEi/G;J)V
    .locals 9

    iget-object v0, p0, LIi/r;->a:LEi/A;

    iget-object v1, p0, LIi/r;->b:[F

    iget-object v2, p0, LIi/r;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, LIi/r;->d:F

    iget-object v4, p0, LIi/r;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, LIi/t;->d(LEi/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;LEi/s;LEi/G;J)V

    return-void
.end method
