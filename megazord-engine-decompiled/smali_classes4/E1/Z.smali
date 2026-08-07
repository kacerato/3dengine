.class public final synthetic LE1/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/Z;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LE1/Z;->a:Ljava/util/List;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    new-instance v1, LE1/a0;

    invoke-direct {v1, p2}, LE1/a0;-><init>(LQ1/l;)V

    invoke-virtual {p1, v0, v1}, LB1/A;->Q0(Ljava/util/List;Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method
