.class public final LE1/T;
.super LE1/V;
.source "SourceFile"


# instance fields
.field public final f:LE1/U;


# direct methods
.method public constructor <init>(LQ1/l;LE1/U;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQ1/l<",
            "Ljava/lang/Void;",
            ">;",
            "LE1/U;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LE1/V;-><init>(LQ1/l;)V

    iput-object p2, p0, LE1/T;->f:LE1/U;

    return-void
.end method


# virtual methods
.method public final O1()V
    .locals 1

    iget-object v0, p0, LE1/T;->f:LE1/U;

    invoke-interface {v0}, LE1/U;->zza()V

    return-void
.end method
