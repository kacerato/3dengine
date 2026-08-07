.class public LEi/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "LEi/B;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, LEi/D;

    invoke-direct {v1}, LEi/D;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    return-void
.end method

.method public static synthetic a(LEi/B;LEi/B;)I
    .locals 0

    invoke-static {p0, p1}, LEi/E;->d(LEi/B;LEi/B;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(LEi/B;LEi/B;)I
    .locals 0

    iget p0, p0, LEi/B;->d:F

    iget p1, p1, LEi/B;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public e(LEi/B;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()LEi/B;
    .locals 1

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEi/B;

    return-object v0
.end method

.method public g(LEi/B;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()LEi/B;
    .locals 1

    iget-object v0, p0, LEi/E;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEi/B;

    return-object v0
.end method
