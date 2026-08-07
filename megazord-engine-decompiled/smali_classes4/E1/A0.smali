.class public final synthetic LE1/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/t;


# direct methods
.method public constructor <init>(LE1/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/A0;->a:LE1/t;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LE1/A0;->a:LE1/t;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    new-instance v1, LE1/B0;

    invoke-direct {v1, p2}, LE1/B0;-><init>(LQ1/l;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, LB1/A;->H0(LE1/t;Lcom/google/android/gms/common/api/internal/b$b;Ljava/lang/String;)V

    return-void
.end method
