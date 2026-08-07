.class public final synthetic LEi/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:LEi/A;

.field public final synthetic c:[F

.field public final synthetic d:[F

.field public final synthetic e:LEi/L;

.field public final synthetic f:LEi/I;


# direct methods
.method public synthetic constructor <init>(LEi/A;[F[FLEi/L;LEi/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEi/z;->b:LEi/A;

    iput-object p2, p0, LEi/z;->c:[F

    iput-object p3, p0, LEi/z;->d:[F

    iput-object p4, p0, LEi/z;->e:LEi/L;

    iput-object p5, p0, LEi/z;->f:LEi/I;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LEi/z;->b:LEi/A;

    iget-object v1, p0, LEi/z;->c:[F

    iget-object v2, p0, LEi/z;->d:[F

    iget-object v3, p0, LEi/z;->e:LEi/L;

    iget-object v4, p0, LEi/z;->f:LEi/I;

    move-object v5, p1

    check-cast v5, LEi/s;

    invoke-static/range {v0 .. v5}, LEi/A;->a(LEi/A;[F[FLEi/L;LEi/I;LEi/s;)V

    return-void
.end method
